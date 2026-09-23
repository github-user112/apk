# -*- coding: utf-8 -*-
# patch_v20: _w122 -> _w123 (versionCode 123 / mod1.23)
#
# ===================== 为什么会有这一版 =====================
# 对照 CarLife5+ 直连流程后，一次修三处（方案 B）：
#
# 1) setDeviceName 分支极性写反（自 patch_v3 起，1.11~1.22 所有 APK 中招）
#    i.smali:100  if-lt v2, v1, :p2p_name_done
#      语义 = SDK_INT < 29 就跳过 = 只在 API>=29 调用
#      注释/AGENTS 类表写的却是「仅 API<29 调用」→ 完全相反。
#    车机 4.4.2 上 setDeviceName 从未执行；Android 10+ 反而调用会被拒。
#    修法: if-lt → if-ge（≥29 跳过，<29 才调用）。
#    影响面: 不阻断连接（有 THIS_DEVICE_CHANGED 广播兜底），属体验修复。
#
# 2) 心跳周期对齐 5+：2000ms → 1000ms
#    5+ ConnectionEstablishHandler 用 period=0x3e8(1s)；我们 1.15 起是 0x7d0(2s)。
#    超时 30s(0x7530) 两边一致，不动。只改 f.smali 两个 0x7d0 + 日志字符串。
#    （AGENTS 待办 #5「心跳周期调优」）
#
# 3) 失败分级透出界面（对齐 5+ m7/e0 四条中文提示）
#    车机上用户看不到 logcat，reason 分级只打在日志里没用。
#    新增 ConnLog 零参/带 reason 的静态方法，插到：
#      j$a.onFailure  createGroup 失败（不支持 / 系统繁忙）
#      h.onFailure    discoverPeers 失败（0/1/2/其他 四条，同 5+ e0 文案）
#    插桩只 invoke-static，不新占寄存器（血泪 12）。
#
# ===================== 涉及文件 =====================
#   smali/a/a/a/a/m/m/d/i.smali        if-lt -> if-ge
#   smali/a/a/a/a/m/m/e/f.smali        0x7d0 -> 0x3e8 ×2 + 日志 period 1000ms
#   smali/com/baidu/carlifevehicle/ConnLog.smali   +4 个提示方法
#   smali/a/a/a/a/m/m/d/j$a.smali      两处零参插桩
#   smali/a/a/a/a/m/m/d/h.smali        onFailure 入口插一行
#   apktool.yml                        versionCode 122 -> 123

import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
SRC = os.path.join(ROOT, "CarLife", "01_工程源码", "_w122")
DST = os.path.join(ROOT, "CarLife", "01_工程源码", "_w123")

I_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "d", "i.smali")
F_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "e", "f.smali")
JA_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "d", "j$a.smali")
H_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "d", "h.smali")
CLOG = os.path.join("smali", "com", "baidu", "carlifevehicle", "ConnLog.smali")


def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")


def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


if not os.path.isdir(DST):
    sys.exit("缺少 _w123（先 rsync 从 _w122 复制）")
if not os.path.isdir(SRC):
    sys.exit("缺少 _w122 参照树")


# ======================================================================
# 1) setDeviceName 极性: if-lt -> if-ge
# ======================================================================
print("=== 1) i.smali setDeviceName 极性 ===")
p = os.path.join(DST, I_SMALI)
s = read(p)
OLD = "    if-lt v2, v1, :p2p_name_done\n"
NEW = "    if-ge v2, v1, :p2p_name_done\n"
assert s.count(OLD) == 1, "锚点 if-lt 不唯一（%d 处）" % s.count(OLD)
s = s.replace(OLD, NEW)
# 注释补一行修正说明（不改原注释正文，避免破坏锚点）
note = (
    "    # --- 1.23: 修正极性。patch_v3 误写 if-lt( SDK<29 跳过 = 只在 API>=29 调用), ---\n"
    "    # --- 与上方注释「仅在低版本调用」相反; 改为 if-ge( SDK>=29 跳过 )。       ---\n"
    "    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I\n"
)
anchor = "    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I\n"
assert s.count(anchor) == 1, "SDK_INT 锚点不唯一"
s = s.replace(anchor, note, 1)
write(p, s)
print("  [OK] if-lt -> if-ge")


# ======================================================================
# 2) 心跳周期 2s -> 1s（对齐 5+）
# ======================================================================
print("=== 2) f.smali 心跳周期 ===")
p = os.path.join(DST, F_SMALI)
s = read(p)
assert s.count("    const-wide/16 v3, 0x7d0\n") == 1, "v3 period 锚点不唯一"
assert s.count("    const-wide/16 v5, 0x7d0\n") == 1, "v5 period 锚点不唯一"
s = s.replace("    const-wide/16 v3, 0x7d0\n", "    const-wide/16 v3, 0x3e8\n")
s = s.replace("    const-wide/16 v5, 0x7d0\n", "    const-wide/16 v5, 0x3e8\n")
OLD_LOG = '"heartbeat watchdog started (period 2000ms, timeout 30000ms)"'
NEW_LOG = '"heartbeat watchdog started (period 1000ms, timeout 30000ms)"'
assert s.count(OLD_LOG) == 1, "心跳启动日志锚点不唯一"
s = s.replace(OLD_LOG, NEW_LOG)
write(p, s)
print("  [OK] period 0x7d0 -> 0x3e8, 日志 -> 1000ms")


# ======================================================================
# 3) 失败分级透出界面（对齐 5+ m7/e0 文案）
# ======================================================================
print("=== 3) ConnLog + j$a + h 失败提示 ===")

# --- 3a) ConnLog 追加 4 个静态方法 ---
p = os.path.join(DST, CLOG)
s = read(p)
assert "logP2pUnsupported" not in s, "ConnLog 已有 logP2pUnsupported（重复打补丁？）"

METHODS = r'''
.method public static logP2pUnsupported()V
    .locals 1

    const-string v0, "⚠ 当前设备不支持WLAN直连，请改用热点或USB"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pBusy()V
    .locals 1

    const-string v0, "⚠ 系统繁忙，请稍后再试"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pDiscoverFail(I)V
    .locals 3

    if-nez p0, :check1

    const-string v0, "⚠ 操作失败，请检查网络设置"

    goto :emit

    :check1
    const/4 v1, 0x1

    if-ne p0, v1, :check2

    const-string v0, "⚠ 当前设备不支持WLAN直连"

    goto :emit

    :check2
    const/4 v1, 0x2

    if-ne p0, v1, :other

    const-string v0, "⚠ 系统繁忙，请稍后再试"

    goto :emit

    :other
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "⚠ 无法搜索附近设备(错误码:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :emit
    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pCreateFail(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p0, v0, :busy

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pUnsupported()V

    goto :done

    :busy
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pBusy()V

    :done
    return-void
.end method
'''
# 插在文件末尾
if not s.endswith("\n"):
    s += "\n"
s += METHODS
write(p, s)
print("  [OK] ConnLog +4 methods")

# --- 3b) j$a.onFailure 两处零参插桩 ---
p = os.path.join(DST, JA_SMALI)
s = read(p)
assert "logP2pCreateFail" not in s, "j$a 已插桩（重复？）"

# 不支持路径: 在 invoke-static Log 之后、iget j 之前
OLD_UNSUP = (
    '    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I\n'
    "\n"
    "    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;\n"
    "\n"
    "    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V\n"
)
NEW_UNSUP = (
    '    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I\n'
    "\n"
    "    # --- 1.23: 界面失败提示（对齐 5+ e0） ---\n"
    "    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V\n"
    "\n"
    "    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;\n"
    "\n"
    "    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V\n"
)
assert s.count(OLD_UNSUP) == 1, "j$a 不支持路径锚点不唯一（%d）" % s.count(OLD_UNSUP)
s = s.replace(OLD_UNSUP, NEW_UNSUP)

# BUSY 路径: 在 BUSY 日志之后
OLD_BUSY = (
    '    const-string v1, "BUSY -> removeGroup to release the state machine"\n'
    "\n"
    "    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n"
    "\n"
    "    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;\n"
)
NEW_BUSY = (
    '    const-string v1, "BUSY -> removeGroup to release the state machine"\n'
    "\n"
    "    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n"
    "\n"
    "    # --- 1.23: 界面失败提示（对齐 5+ e0） ---\n"
    "    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V\n"
    "\n"
    "    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;\n"
)
assert s.count(OLD_BUSY) == 1, "j$a BUSY 路径锚点不唯一（%d）" % s.count(OLD_BUSY)
s = s.replace(OLD_BUSY, NEW_BUSY)
write(p, s)
print("  [OK] j$a 两处插桩")

# --- 3c) h.onFailure 入口插桩（reason 仍是 int p1，尚未被覆盖） ---
p = os.path.join(DST, H_SMALI)
s = read(p)
assert "logP2pDiscoverFail" not in s, "h 已插桩（重复？）"
OLD_H = (
    ".method public onFailure(I)V\n"
    "    .locals 10\n"
    "\n"
    "    const/4 v0, 0x2\n"
)
NEW_H = (
    ".method public onFailure(I)V\n"
    "    .locals 10\n"
    "\n"
    "    # --- 1.23: 界面失败提示；必须在 p1 被 Integer.valueOf 覆盖之前 ---\n"
    "    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pDiscoverFail(I)V\n"
    "\n"
    "    const/4 v0, 0x2\n"
)
assert s.count(OLD_H) == 1, "h.onFailure 入口锚点不唯一（%d）" % s.count(OLD_H)
s = s.replace(OLD_H, NEW_H)
write(p, s)
print("  [OK] h.onFailure 入口插桩")


# ======================================================================
# 4) 版本号
# ======================================================================
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
assert "versionCode: 122" in yml, "apktool.yml versionCode 不是 122"
yml = yml.replace("versionCode: 122", "versionCode: 123")
assert "versionName: mod1.22" in yml, "apktool.yml versionName 不是 mod1.22"
yml = yml.replace("versionName: mod1.22", "versionName: mod1.23")
write(yml_p, yml)
print("\nOK apktool.yml: versionCode=123 versionName=mod1.23")


# ======================================================================
# 5) 自检
# ======================================================================
print("\n=== 自检 ===")

i = read(os.path.join(DST, I_SMALI))
f = read(os.path.join(DST, F_SMALI))
ja = read(os.path.join(DST, JA_SMALI))
h = read(os.path.join(DST, H_SMALI))
cl = read(os.path.join(DST, CLOG))
yml = read(yml_p)

# 1.23-1 极性
chk("i.smali 极性是 if-ge（不是 if-lt）",
    "if-ge v2, v1, :p2p_name_done" in i and "if-lt v2, v1, :p2p_name_done" not in i)
chk("i.smali setDeviceName 调用体仍在",
    "WifiP2pManager;->setDeviceName(" in i)
chk("i.smali :p2p_name_done 标签仍在", ":p2p_name_done" in i)

# 1.23-2 心跳
chk("f.smali period v3=0x3e8", "const-wide/16 v3, 0x3e8" in f)
chk("f.smali period v5=0x3e8", "const-wide/16 v5, 0x3e8" in f)
chk("f.smali 无残留 0x7d0 period", "const-wide/16 v3, 0x7d0" not in f and "const-wide/16 v5, 0x7d0" not in f)
chk("f.smali 日志 period 1000ms", "period 1000ms" in f)
fa = read(os.path.join(DST, "smali", "a", "a", "a", "a", "m", "m", "e", "f$a.smali"))
chk("f$a.smali 超时仍 0x7530", "0x7530" in fa)
chk("f.smali 协议号仍 0x20002", "0x20002" in f)

# 1.23-3 提示
for m in ("logP2pUnsupported", "logP2pBusy", "logP2pDiscoverFail", "logP2pCreateFail"):
    chk("ConnLog 有 %s" % m, ".method public static %s" % m in cl)
chk("ConnLog 文案含 WLAN直连", "不支持WLAN直连" in cl)
chk("ConnLog 文案含 系统繁忙", "系统繁忙" in cl)
chk("j$a 插桩 logP2pCreateFail ×2", ja.count("logP2pCreateFail") == 2)
chk("h.onFailure 插桩 logP2pDiscoverFail", "logP2pDiscoverFail(I)V" in h)
chk("h 插桩在 valueOf 之前",
    h.index("logP2pDiscoverFail") < h.index("Integer;->valueOf"))

# 回归：1.22 BtGuard / 1.21 uniqueName / 1.20 零参
da = read(os.path.join(DST, "smali", "a", "a", "a", "a", "m", "m", "d", "a.smali"))
chk("回归: BtGuard 插桩仍在", "BtGuard;->onSkipDecision" in da)
chk("回归: 阶段1 零参插桩仍在", "logBtStage1Entry" in da)
lh = read(os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer", "LogHttpServer.smali"))
chk("回归: LogHttpServer uniqueName 仍在", "uniqueName" in lh)

# 版本
chk("apktool.yml versionCode=123", "versionCode: 123" in yml)
chk("apktool.yml versionName=mod1.23", "versionName: mod1.23" in yml)

# 新插桩区不应引入 new-array（血泪 12 回归）
ins_region = ja[ja.index("logP2pCreateFail") - 200:ja.index("logP2pCreateFail") + 50]
chk("回归: j$a 插桩区无 new-array", "new-array" not in ins_region)

print("\n" + ("[DONE] _w123 就绪" if bad == 0 else "[FAIL] %d 项自检不通过" % bad))
sys.exit(1 if bad else 0)
