#!/system/bin/sh
# 说明: 本文件由 PC 端 bash 执行（Git Bash），不是设备脚本
#
# inject_rule.sh —— 把一条规则安全地注入 BootTask 的 rules.xml
#
# 用法:
#   bash inject_rule.sh <serial> <action> <delay秒> <命令>
#   bash inject_rule.sh <serial> show                 # 只打印现有规则
#
# 为什么单独写一个脚本:
#   rules.xml 里的内容是「JSON 装进 XML 的 <string> 文本」，
#   命令里必然带 & > < 这些字符 —— 少转义一层，App 解析就会静默失败，
#   而且失败时没有任何提示（只会看到 rules=0）。所以这里用 Python 做双层转义。

set -u

# Git Bash(MSYS) 会把 adb 的远端路径参数 /data/local/tmp/x 自动转成
# C:/Program Files/.../PortableGit/data/local/tmp/x —— adb 于是报
# "remote No such file or directory"，push 静默失败。
# 实测：屏蔽转换后中文源路径也能正常 push，所以只需要关掉这一项。
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL='*'

SERIAL="${1:?用法: inject_rule.sh <serial> <action> <delay> <cmd>}"
ACTION="${2:-show}"
DELAY="${3:-0}"
CMD="${4:-}"

ADB="${ADB:-adb}"
PKG=com.boottask
HERE="$(cd "$(dirname "$0")" && pwd)"
TMP="$HERE/.tmp"
mkdir -p "$TMP"

sh_() { "$ADB" -s "$SERIAL" shell "$1" 2>&1 | tr -d '\r' | grep -v '^\* daemon'; }

"$ADB" start-server >/dev/null 2>&1

# 设备不在线时给出明确原因，别等到 push 失败才发现
if ! "$ADB" devices 2>/dev/null | tr -d '\r' | grep -q "^$SERIAL[[:space:]]\+device"; then
    echo "E10 设备 $SERIAL 不在线（USB 掉线 / 未上电 / adb 未连接）"
    echo "    当前 adb devices:"
    "$ADB" devices 2>&1 | tr -d '\r' | sed 's/^/      /'
    exit 10
fi

if [ "$ACTION" = "show" ]; then
    sh_ "busybox cat /data/data/$PKG/shared_prefs/rules.xml 2>&1"
    exit 0
fi

if [ "$ACTION" = "clear" ]; then
    printf '<?xml version='"'"'1.0'"'"' encoding='"'"'utf-8'"'"' standalone='"'"'yes'"'"' ?>\n<map>\n    <string name="list">[]</string>\n</map>\n' > "$TMP/rules.empty.xml"
    SRC="$TMP/rules.empty.xml"
else
    SRC="$TMP/rules.new.xml"
    python - "$ACTION" "$DELAY" "$CMD" "$(cygpath -w "$SRC")" <<'PY' || exit 1
import json, sys, xml.sax.saxutils as su

action, delay, cmd, outpath = sys.argv[1], int(sys.argv[2]), sys.argv[3], sys.argv[4]
rule = [{"event": "boot", "action": action, "delay": delay,
         "enabled": True, "arg": cmd}]
js = json.dumps(rule, ensure_ascii=False, separators=(",", ":"))
xml = ("<?xml version='1.0' encoding='utf-8' standalone='yes' ?>\n<map>\n"
       "    <string name=\"list\">" + su.escape(js) + "</string>\n</map>\n")
open(outpath, "w", encoding="utf-8").write(xml)
print("rule json: " + js)
PY
fi

"$ADB" -s "$SERIAL" push "$(cygpath -w "$SRC")" /data/local/tmp/rules.in.xml >/dev/null 2>&1 || {
    echo "PUSH FAILED"; exit 1; }

sh_ "D=/data/data/$PKG/shared_prefs
P=/data/data/$PKG
am force-stop $PKG
[ -f \$D/rules.xml ] && cp -f \$D/rules.xml /data/local/tmp/rules.prev.xml 2>/dev/null
# 属主必须用数字 uid:gid，不能解析 ls -l 文本：
# Android 的 ls 对目录行会省略 size 列，\$4 就变成日期了 —— chown root:2026-11-08
# 会把文件属主改成 'root 2026'，App 报 without permission、rules=0（静默失效）。
# Android 4.4 的系统 stat 不支持 -c，busybox 的也不一定带，所以直接问包管理器：
# App 的 uid 与 gid 在 Android 上同值，拼成 uid:uid 即可。
OWN=\$(dumpsys package $PKG | busybox grep -o 'userId=[0-9]*' | busybox head -1 | busybox cut -d= -f2)
[ -n \"\$OWN\" ] || OWN=1000
OWN=\$OWN:\$OWN
# 目录本身被历史操作改成 root:root 时一并修回来，否则 App 建 / 读都受限
chown \$OWN \$D 2>/dev/null
chmod 771 \$D
busybox cp -f /data/local/tmp/rules.in.xml \$D/rules.xml
chown \$OWN \$D/rules.xml 2>/dev/null
chmod 660 \$D/rules.xml
chown \$OWN \$D/* 2>/dev/null
echo \"owner=\$OWN rules_xml: \$(ls -l \$D/rules.xml)\"
busybox cat \$D/rules.xml"

echo ""
echo "---- 校验 App 能否解析（触发一次，看 rules=N）----"
sh_ "logcat -c 2>/dev/null; am startservice -n $PKG/.ExecService --es event boot >/dev/null 2>&1; sleep 8; logcat -d -v time 2>/dev/null | busybox grep -E 'rules=|rule matched|no rule|adbcmd' | busybox tail -6"
