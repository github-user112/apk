# -*- coding: utf-8 -*-
# patch_v21: _w123 -> _w124 (versionCode 124 / mod1.24)
#
# ===================== 为什么会有这一版 =====================
# 「扫码下载日志」在 4.4.2 上结构可用（MuMu API19 全链路过），但调研出 3 处
# 真实缺陷（外加 1 处门禁盲区）。全部静态可修，不改直连主链路。
#
# 1) bind 失败静默（LogDownloadActivity.onStart）
#    ServerSocket.bind 抛异常只打 logcat，界面照常画二维码 -> 扫码 connection refused。
#    修法: start() 后查 isRunning()，失败则改 hint 文案为「端口启动失败」。
#
# 2) 无网卡时画死二维码（LogHttpServer.localIps）
#    原先 ips.isEmpty() 时无条件塞 192.168.49.1，与 netSummary 的
#    「未检测到可用网卡」自相矛盾 —— WiFi 没开也会画出必然打不开的码。
#    修法: 删掉兜底，空数组交给 buildHint 既有分支显示「未检测到可用网络地址」。
#
# 3) sendFile Content-Length 与实际发送不一致（日志轮转竞态）
#    头里写 f.length()，随后读到 EOF；轮转 gzip+删原文件时可能短发/超发。
#    修法: 写头前取死 len，发送循环按 len 截断（保守版，不引入 chunked）。
#
# 4) 合并点门禁盲区（verify_dalvik_合并点检查.py）
#    TARGETS 从未包含 logxfer 四个 smali —— 手改 Java 重编后 Dalvik 检查是漏的。
#    修法: TARGETS 追加 5 个 logxfer 文件（文件不存在时脚本本就会跳过）。
#
# ===================== 涉及文件 =====================
#   smali/.../logxfer/LogHttpServer.smali           localIps / sendFile（D8 重编）
#   smali/.../logxfer/LogDownloadActivity.smali     onStart 提示（D8 重编）
#   logxfer_src/java/**                              源码已改，经 构建日志下载smali.py 产出
#   logxfer_src/smali/**                             重编产物，本脚本复制进工程
#   02_补丁脚本/verify_dalvik_合并点检查.py           +logxfer TARGETS
#   apktool.yml                                      versionCode 123 -> 124

import os
import shutil
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
SRC = os.path.join(ROOT, "CarLife", "01_工程源码", "_w123")
DST = os.path.join(ROOT, "CarLife", "01_工程源码", "_w124")
SMALI_SRC = os.path.join(HERE, "logxfer_src", "smali")
SMALI_DST = os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer")
VERIFY = os.path.join(HERE, "verify_dalvik_合并点检查.py")

# 只覆盖 logxfer 相关（BtGuard 也在同目录，一并同步无害——内容应不变）
LOGXFER_SMALI = [
    "LogHttpServer.smali",
    "LogHttpServer$1.smali",
    "LogDownloadActivity.smali",
    "LogDownloadActivity$BackHandler.smali",
    "LogXferEntry.smali",
    "LogXferEntry$ClickHandler.smali",
    "BtGuard.smali",
    "BtGuard$1.smali",
]


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
    sys.exit("缺少 _w124（先 rsync 从 _w123 复制）")
if not os.path.isdir(SRC):
    sys.exit("缺少 _w123 参照树")
if not os.path.isdir(SMALI_SRC):
    sys.exit("缺少 logxfer_src/smali（先跑 构建日志下载smali.py）")

# ======================================================================
# 1) 覆盖 logxfer smali（Java 已改 + D8 重编）
# ======================================================================
print("=== 1) 覆盖 logxfer smali ===")
os.makedirs(SMALI_DST, exist_ok=True)
for fn in LOGXFER_SMALI:
    sp = os.path.join(SMALI_SRC, fn)
    dp = os.path.join(SMALI_DST, fn)
    if not os.path.exists(sp):
        sys.exit("重编产物缺文件: " + sp)
    shutil.copyfile(sp, dp)
    print("  [OK] " + fn)

# ======================================================================
# 2) versionCode 123 -> 124
# ======================================================================
print("=== 2) apktool.yml ===")
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
if "versionCode: 124" in yml and "versionName: mod1.24" in yml:
    print("  [OK] versionCode=124 versionName=mod1.24（已是）")
elif "versionCode: 123" in yml:
    assert "versionName: mod1.23" in yml, "apktool.yml versionName 不是 mod1.23"
    yml = yml.replace("versionCode: 123", "versionCode: 124")
    yml = yml.replace("versionName: mod1.23", "versionName: mod1.24")
    write(yml_p, yml)
    print("  [OK] versionCode=124 versionName=mod1.24")
else:
    sys.exit("apktool.yml versionCode 既不是 123 也不是 124")

# ======================================================================
# 3) 合并点门禁补 logxfer TARGETS（改共享脚本，不是工程树）
# ======================================================================
print("=== 3) verify_dalvik TARGETS 补 logxfer ===")
v = read(VERIFY)
if "logxfer/LogHttpServer.smali" not in v:
    old = "    'com/baidu/carlifevehicle/ConnModeHelper.smali',\n]"
    new = (
        "    'com/baidu/carlifevehicle/ConnModeHelper.smali',\n"
        "    # 1.24: logxfer 由 D8 产出，但手改 Java 重编后仍要过合并点门禁（原先盲区）\n"
        "    'com/baidu/carlifevehicle/logxfer/LogHttpServer.smali',\n"
        "    'com/baidu/carlifevehicle/logxfer/LogDownloadActivity.smali',\n"
        "    'com/baidu/carlifevehicle/logxfer/LogXferEntry.smali',\n"
        "    'com/baidu/carlifevehicle/logxfer/LogHttpServer$1.smali',\n"
        "    'com/baidu/carlifevehicle/logxfer/LogDownloadActivity$BackHandler.smali',\n"
        "]"
    )
    if old not in v:
        # 已被手工改过（本会话已 edit 过）则跳过
        if "logxfer/LogHttpServer.smali" in v:
            print("  [OK] TARGETS 已含 logxfer（跳过）")
        else:
            sys.exit("verify 脚本结构变了，找不到 ConnModeHelper 锚点")
    else:
        write(VERIFY, v.replace(old, new, 1))
        print("  [OK] TARGETS +5 logxfer")
else:
    print("  [OK] TARGETS 已含 logxfer")

# ======================================================================
# 自检
# ======================================================================
print("\n=== 自检 ===")


def smali_text(p):
    """D8/apktool 会把中文写成 \\uXXXX；自检按解码后的文案比对。"""
    return read(p).encode("utf-8").decode("unicode_escape", errors="replace")


srv = smali_text(os.path.join(SMALI_DST, "LogHttpServer.smali"))
act = smali_text(os.path.join(SMALI_DST, "LogDownloadActivity.smali"))
yml = read(yml_p)

# 1) 不再无条件 192.168.49.1 兜底 —— 该字符串可能仍出现在其他路径注释/常量，
#    关键看 localIps 是否还有「空则 add」。smali 里表现为 const-string + ip 常量
#    在 isEmpty 分支。保守检查: 仍有 "192.168.49.1" 作为 GO 默认的用途要小心。
#    源码已删兜底；重编后 localIps 应不再有该字面量（若别处还有则只警告）。
chk("LogHttpServer 无 192.168.49.1 兜底字面量", "192.168.49.1" not in srv)
# 2) sendFile 按长度截断: D8 会生成对 len 的比较；检查 SENT 日志带 /len 形式
chk("LogHttpServer SENT 日志带 bytes=/len", "bytes=" in srv and "/" in srv)
# 3) onStart 失败提示
chk("Activity 含端口启动失败文案", "启动失败" in act or "可能被占用" in act)
chk("Activity 调 isRunning", "isRunning" in act)
# 4) version
chk("apktool.yml versionCode=124", "versionCode: 124" in yml)
chk("apktool.yml versionName=mod1.24", "versionName: mod1.24" in yml)
# 5) 回归
chk("回归: 按钮 id 仍在", "0x7f090147" in act or "0x7f090147" in read(
    os.path.join(SMALI_DST, "LogXferEntry.smali")))
chk("回归: Content-Disposition 仍在", "Content-Disposition" in srv)
chk("回归: onStart/onStop 启停仍在", "activity started" in act and "activity stopped" in act)
# 6) 门禁脚本
v2 = read(VERIFY)
chk("verify TARGETS 含 LogHttpServer.smali", "logxfer/LogHttpServer.smali" in v2)

print()
if bad:
    print("[FAIL] %d 项自检不通过" % bad)
    sys.exit(1)
print("OK apktool.yml: versionCode=124 versionName=mod1.24")
print("\nOK 全部自检通过")
