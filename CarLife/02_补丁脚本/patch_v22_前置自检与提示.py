# -*- coding: utf-8 -*-
# patch_v22: _w124 -> _w125 (versionCode 125 / mod1.25)
#
# ===================== 为什么会有这一版 =====================
# 对照 5+ m7/f0、m7/e0 与亿连 WifiManager.d()，修 5 处静态可修项
# （全部只透出到 ConnLog 日志区 / 不改主链路时序语义，除热点 IP 轮询会阻塞 ≤5s）：
#
# 1) 前置自检（对齐 5+ m7/f0）
#    j.a() arm 成功后检查 WiFi 是否打开 + CONFIG_WIFI_DIRECT_NAME 是否为空，
#    不通过只打日志不阻断（5+ 是阻断式，我们车机上用户看不到 logcat，
#    优先“提示到界面日志区”，避免自检本身把可自愈路径杀掉）。
#    实现：ConnLog.precheck(c) 单参静态方法，j.a() 在 armed 日志前一行插桩。
#
# 2) e0 补「未获取到直连名称」文案
#    i.smali setDeviceName 空名 fallback 到 CarLife-HU 的两处分支各插一行
#    零参 logNoDirectName()，对齐 5+ m7/e0 该句。
#
# 3) logP2pCreateFail 极性写反（1.23 引入）
#    原逻辑 if-ne reason, 2, :busy → reason==2 走 Unsupported、!=2 走 Busy，
#    与 j$a 注释约定（1=不支持 2=BUSY）完全相反。
#    改为 1→Unsupported / 2→Busy / 其他→操作失败。
#
# 4) 热点 IP 就绪轮询（照抄亿连 WifiManager.d）
#    m.m.e.a.a() 建 UDP socket 前调 ConnLog.awaitLocalIp()：
#    最多 10 次 × 500ms 轮询 NetworkInterface，等到可用 IPv4 再继续；
#    超时只打日志不失败。避免网卡还没拿到 IP 就发握手包。
#
# 5) 慢扫改无限（j$b）
#    慢速重扫原先 12 轮后 give up；改为无限重扫（删上限与 giveup 块）。
#    快试 6 次逻辑不动。
#
# 6) ConnLog 缓冲加大
#    appendTextLocked 超限 0x5dc0(24000)/截断 0x4e20(20000)
#      → 0xea60(60000)/0xc350(50000)，日志区少丢关键行。
#
# ===================== 涉及文件 =====================
#   smali/.../ConnLog.smali          +precheck +awaitLocalIp +logNoDirectName
#                                    +logWifiOff +修 createFail 极性 +缓冲加大
#   smali/.../m/m/d/j.smali          precheck 插桩（armed 日志前）
#   smali/.../m/m/d/i.smali          空名 fallback ×2 插桩
#   smali/.../m/m/d/j$b.smali        慢扫 12 轮上限 → 无限
#   smali/.../m/m/e/a.smali          awaitLocalIp 插桩（logHotspotStart 后）
#   apktool.yml                      versionCode 124 -> 125
#   verify_dalvik_合并点检查.py       TARGETS + ConnLog.smali

import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
SRC = os.path.join(ROOT, "CarLife", "01_工程源码", "_w124")
DST = os.path.join(ROOT, "CarLife", "01_工程源码", "_w125")

CLOG = os.path.join("smali", "com", "baidu", "carlifevehicle", "ConnLog.smali")
J_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "d", "j.smali")
JB_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "d", "j$b.smali")
I_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "d", "i.smali")
EA_SMALI = os.path.join("smali", "a", "a", "a", "a", "m", "m", "e", "a.smali")
VERIFY = os.path.join(HERE, "verify_dalvik_合并点检查.py")


def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")


def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def smali_text(s):
    """D8/apktool 会把中文写成 \\uXXXX；自检按解码后的文案比对。"""
    try:
        return s.encode("utf-8").decode("unicode_escape", errors="replace")
    except Exception:
        return s


bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


if not os.path.isdir(DST):
    sys.exit("缺少 _w125（先 rsync 从 _w124 复制）")
if not os.path.isdir(SRC):
    sys.exit("缺少 _w124 参照树")

# ======================================================================
# 1) ConnLog: 新方法 + 修 createFail 极性 + 缓冲加大
# ======================================================================
print("=== 1) ConnLog ===")
p = os.path.join(DST, CLOG)
s = read(p)
assert "awaitLocalIp" not in s, "ConnLog 已有 awaitLocalIp（重复打补丁？）"

# --- 1a) 缓冲加大 ---
OLD_MAX = "    const v2, 0x5dc0\n"
NEW_MAX = "    const v2, 0xea60\n"
OLD_DEL = "    const v2, 0x4e20\n"
NEW_DEL = "    const v2, 0xc350\n"
assert s.count(OLD_MAX) == 1, "缓冲上限锚点不唯一"
assert s.count(OLD_DEL) == 1, "截断锚点不唯一"
s = s.replace(OLD_MAX, NEW_MAX)
s = s.replace(OLD_DEL, NEW_DEL)

# --- 1b) 修 logP2pCreateFail 极性 ---
OLD_CF = (
    ".method public static logP2pCreateFail(I)V\n"
    "    .locals 2\n"
    "\n"
    "    const/4 v0, 0x2\n"
    "\n"
    "    if-ne p0, v0, :busy\n"
    "\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pUnsupported()V\n"
    "\n"
    "    goto :done\n"
    "\n"
    "    :busy\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pBusy()V\n"
    "\n"
    "    :done\n"
    "    return-void\n"
    ".end method"
)
NEW_CF = (
    ".method public static logP2pCreateFail(I)V\n"
    "    .locals 2\n"
    "\n"
    "    # --- 1.25: 修 1.23 极性写反。约定 1=不支持 2=BUSY（与 j$a 一致）。 ---\n"
    "    const/4 v0, 0x1\n"
    "\n"
    "    if-ne p0, v0, :check2\n"
    "\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pUnsupported()V\n"
    "\n"
    "    goto :done\n"
    "\n"
    "    :check2\n"
    "    const/4 v0, 0x2\n"
    "\n"
    "    if-ne p0, v0, :other\n"
    "\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pBusy()V\n"
    "\n"
    "    goto :done\n"
    "\n"
    "    :other\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pNetFail()V\n"
    "\n"
    "    :done\n"
    "    return-void\n"
    ".end method"
)
assert s.count(OLD_CF) == 1, "logP2pCreateFail 锚点不唯一（%d）" % s.count(OLD_CF)
s = s.replace(OLD_CF, NEW_CF)

# --- 1c) 追加新静态方法 ---
METHODS = r'''
.method public static logP2pNetFail()V
    .locals 1

    const-string v0, "⚠ 操作失败，请检查网络设置"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logWifiOff()V
    .locals 1

    const-string v0, "⚠ WiFi未开启，请先打开WiFi再连接"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logNoDirectName()V
    .locals 1

    const-string v0, "⚠ 未获取到直连名称，可能不支持"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static precheck(La/a/a/a/c;)V
    .locals 4

    # --- 1.25: 前置自检（对齐 5+ m7/f0）。只提示不阻断。 ---
    if-eqz p0, :done

    :try_start_0
    invoke-interface {p0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :check_name

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logWifiOff()V

    :check_name
    const-string v0, "CONFIG_WIFI_DIRECT_NAME"

    invoke-interface {p0, v0}, La/a/a/a/c;->I0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :log_name

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :done

    :log_name
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logNoDirectName()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :done

    :catch_0
    move-exception v0

    :done
    return-void
.end method

.method public static hasUsableLocalIp()Z
    .locals 6

    # --- 1.25: 扫网卡找可用 IPv4（排除环回 / 0.0.0.0 / 169.254 链路本地）。 ---
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :catch_0

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :catch_0

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x40

    if-ge v2, v3, :catch_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    if-nez v3, :goto_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :goto_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :goto_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    if-eqz v3, :goto_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :goto_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-nez v5, :goto_1

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :goto_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :goto_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :goto_1

    const-string v5, "0."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :goto_1

    const-string v5, "169.254."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :goto_1

    const/4 v0, 0x1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :ret

    :catch_0
    move-exception v4

    :ret
    return v0
.end method

.method public static awaitLocalIp()V
    .locals 6

    # --- 1.25: 热点 IP 就绪轮询（照抄亿连 WifiManager.d：500ms × 10）。 ---
    # ---  超时只打日志不失败；调用点须在非主线程（transport connect）。 ---
    const/4 v0, 0x0

    :loop
    const/16 v1, 0xa

    if-ge v0, v1, :timeout

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->hasUsableLocalIp()Z

    move-result v1

    if-nez v1, :ready

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :tick

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :tick
    add-int/lit8 v0, v0, 0x1

    goto :loop

    :ready
    if-nez v0, :ready_ok

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "✔ 网卡 IP 已就绪 (waited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f4

    mul-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void

    :ready_ok
    return-void

    :timeout
    const-string v1, "⚠ 等待网卡 IP 超时(5s)，可能影响热点握手（仍继续）"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method
'''
if not s.endswith("\n"):
    s += "\n"
s += METHODS
write(p, s)
print("  [OK] ConnLog: 缓冲加大 + createFail 极性 + 5 个新方法")


# ======================================================================
# 2) j.a() precheck 插桩（armed 日志前，零/单参 invoke-static）
# ======================================================================
print("=== 2) j.smali precheck 插桩 ===")
p = os.path.join(DST, J_SMALI)
s = read(p)
assert "precheck" not in s, "j 已插桩（重复？）"
OLD_J = (
    "    sput-boolean v0, La/a/a/a/m/m/d/j;->n:Z\n"
    "\n"
    '    const-string v0, "CarLifeP2PBoot"\n'
    "\n"
    '    const-string v1, "armed: HU will createGroup() and act as GO if no group appears"\n'
)
NEW_J = (
    "    sput-boolean v0, La/a/a/a/m/m/d/j;->n:Z\n"
    "\n"
    "    # --- 1.25: 前置自检（WiFi / 直连名），只提示不阻断 ---\n"
    "    iget-object v0, p0, La/a/a/a/m/m/d/j;->a:La/a/a/a/c;\n"
    "\n"
    "    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->precheck(La/a/a/a/c;)V\n"
    "\n"
    '    const-string v0, "CarLifeP2PBoot"\n'
    "\n"
    '    const-string v1, "armed: HU will createGroup() and act as GO if no group appears"\n'
)
assert s.count(OLD_J) == 1, "j.a() armed 锚点不唯一（%d）" % s.count(OLD_J)
s = s.replace(OLD_J, NEW_J)
write(p, s)
print("  [OK] j.a() precheck")


# ======================================================================
# 3) i.smali 空名 fallback ×2 插桩
# ======================================================================
print("=== 3) i.smali logNoDirectName ×2 ===")
p = os.path.join(DST, I_SMALI)
s = read(p)
assert "logNoDirectName" not in s, "i 已插桩（重复？）"

# 分支1: name == null → fallback
OLD_N = (
    "    if-nez v1, :p2p_name_len\n"
    "\n"
    '    const-string v1, "CarLife-HU"\n'
    "\n"
    "    goto :p2p_name_set\n"
)
NEW_N = (
    "    if-nez v1, :p2p_name_len\n"
    "\n"
    "    # --- 1.25: 对齐 5+ e0「未获取到直连名称」 ---\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logNoDirectName()V\n"
    "\n"
    '    const-string v1, "CarLife-HU"\n'
    "\n"
    "    goto :p2p_name_set\n"
)
assert s.count(OLD_N) == 1, "null fallback 锚点不唯一（%d）" % s.count(OLD_N)
s = s.replace(OLD_N, NEW_N)

# 分支2: length == 0 → fallback
OLD_E = (
    "    if-nez v2, :p2p_name_set\n"
    "\n"
    '    const-string v1, "CarLife-HU"\n'
    "\n"
    "    :p2p_name_set\n"
)
NEW_E = (
    "    if-nez v2, :p2p_name_set\n"
    "\n"
    "    # --- 1.25: 对齐 5+ e0「未获取到直连名称」 ---\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logNoDirectName()V\n"
    "\n"
    '    const-string v1, "CarLife-HU"\n'
    "\n"
    "    :p2p_name_set\n"
)
assert s.count(OLD_E) == 1, "empty fallback 锚点不唯一（%d）" % s.count(OLD_E)
s = s.replace(OLD_E, NEW_E)
write(p, s)
print("  [OK] i.smali 空名 ×2")


# ======================================================================
# 4) j$b 慢扫改无限
# ======================================================================
print("=== 4) j$b.smali 慢扫无限 ===")
p = os.path.join(DST, JB_SMALI)
s = read(p)
assert "give up after 12" in s, "j$b giveup 锚点缺失"
OLD_SLOW = (
    "    :slow\n"
    "    iget v1, v0, La/a/a/a/m/m/d/j;->l:I\n"
    "\n"
    "    const/16 v2, 0xc\n"
    "\n"
    "    if-ge v1, v2, :giveup\n"
    "\n"
    "    add-int/lit8 v1, v1, 0x1\n"
)
NEW_SLOW = (
    "    :slow\n"
    "    # --- 1.25: 慢扫改无限（原 12 轮 giveup 会静止链路）。快试 6 次不动。 ---\n"
    "    iget v1, v0, La/a/a/a/m/m/d/j;->l:I\n"
    "\n"
    "    add-int/lit8 v1, v1, 0x1\n"
)
assert s.count(OLD_SLOW) == 1, "slow 上限锚点不唯一（%d）" % s.count(OLD_SLOW)
s = s.replace(OLD_SLOW, NEW_SLOW)

# 删 giveup 死块
OLD_GIVEUP = (
    "    :giveup\n"
    '    const-string v1, "CarLifeP2PBoot"\n'
    "\n"
    '    const-string v2, "give up after 12 slow rescans: P2P not usable here, use hotspot or USB"\n'
    "\n"
    "    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I\n"
    "\n"
    "    return-void\n"
    "\n"
    "    :formed\n"
)
NEW_GIVEUP = (
    "    :formed\n"
)
assert s.count(OLD_GIVEUP) == 1, "giveup 块锚点不唯一（%d）" % s.count(OLD_GIVEUP)
s = s.replace(OLD_GIVEUP, NEW_GIVEUP)
write(p, s)
print("  [OK] j$b 无限慢扫")


# ======================================================================
# 5) m.m.e.a.a() awaitLocalIp 插桩
# ======================================================================
print("=== 5) m.m.e.a awaitLocalIp ===")
p = os.path.join(DST, EA_SMALI)
s = read(p)
assert "awaitLocalIp" not in s, "e/a 已插桩（重复？）"
OLD_A = (
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logHotspotStart()V\n"
    "\n"
    "    :try_start_0\n"
)
NEW_A = (
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logHotspotStart()V\n"
    "\n"
    "    # --- 1.25: 等网卡拿到合法 IP 再建 socket（亿连式 500ms 轮询，最多 5s） ---\n"
    "    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->awaitLocalIp()V\n"
    "\n"
    "    :try_start_0\n"
)
assert s.count(OLD_A) == 1, "e/a logHotspotStart 锚点不唯一（%d）" % s.count(OLD_A)
s = s.replace(OLD_A, NEW_A)
write(p, s)
print("  [OK] e/a awaitLocalIp")


# ======================================================================
# 6) verify TARGETS 补 ConnLog
# ======================================================================
print("=== 6) verify TARGETS + ConnLog ===")
v = read(VERIFY)
if "com/baidu/carlifevehicle/ConnLog.smali" not in v:
    old = "    'com/baidu/carlifevehicle/ConnModeHelper.smali',\n"
    new = (
        "    'com/baidu/carlifevehicle/ConnModeHelper.smali',\n"
        "    # 1.25: ConnLog 大量零参插桩目标，一并进合并点门禁\n"
        "    'com/baidu/carlifevehicle/ConnLog.smali',\n"
    )
    if old not in v:
        sys.exit("verify 脚本结构变了，找不到 ConnModeHelper 锚点")
    write(VERIFY, v.replace(old, new, 1))
    print("  [OK] TARGETS + ConnLog.smali")
else:
    print("  [OK] TARGETS 已含 ConnLog")


# ======================================================================
# 7) versionCode 124 -> 125
# ======================================================================
print("=== 7) apktool.yml ===")
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
if "versionCode: 125" in yml and "versionName: mod1.25" in yml:
    print("  [OK] versionCode=125 versionName=mod1.25（已是）")
elif "versionCode: 124" in yml:
    assert "versionName: mod1.24" in yml, "apktool.yml versionName 不是 mod1.24"
    yml = yml.replace("versionCode: 124", "versionCode: 125")
    yml = yml.replace("versionName: mod1.24", "versionName: mod1.25")
    write(yml_p, yml)
    print("  [OK] versionCode=125 versionName=mod1.25")
else:
    sys.exit("apktool.yml versionCode 既不是 124 也不是 125")


# ======================================================================
# 8) 自检
# ======================================================================
print("\n=== 自检 ===")

cl_raw = read(os.path.join(DST, CLOG))
cl = smali_text(cl_raw)
# 文案可能以字面 UTF-8 或 \uXXXX 两种形式存在，任一命中即可
def has_cn(text, needle):
    return needle in text or needle in smali_text(text)

j = read(os.path.join(DST, J_SMALI))
jb = read(os.path.join(DST, JB_SMALI))
ii = read(os.path.join(DST, I_SMALI))
ea = read(os.path.join(DST, EA_SMALI))
yml = read(yml_p)
v2 = read(VERIFY)

# 1) ConnLog 新方法
for m in ("precheck", "awaitLocalIp", "hasUsableLocalIp", "logWifiOff", "logNoDirectName", "logP2pNetFail"):
    chk("ConnLog 有 %s" % m, ".method public static %s" % m in cl)
chk("ConnLog 缓冲上限 0xea60", "const v2, 0xea60" in cl)
chk("ConnLog 截断 0xc350", "const v2, 0xc350" in cl)
chk("ConnLog 无残留旧缓冲 0x5dc0", "const v2, 0x5dc0" not in cl)

# 2) createFail 极性
chk("createFail 先判 1(不支持)", "const/4 v0, 0x1" in cl[cl.find("logP2pCreateFail"):cl.find("logP2pCreateFail")+400])
chk("createFail 不再 if-ne reason,2 :busy 旧极性",
    "if-ne p0, v0, :busy" not in cl[cl.find("logP2pCreateFail"):])

# 3) 文案
chk("文案: WiFi未开启", has_cn(cl_raw, "WiFi未开启"))
chk("文案: 未获取到直连名称", has_cn(cl_raw, "未获取到直连名称，可能不支持"))

# 4) 插桩
chk("j.a() 调 precheck", "ConnLog;->precheck(La/a/a/a/c;)V" in j)
chk("j.a() precheck 在 armed 日志前",
    j.index("precheck") < j.index("armed: HU will createGroup"))
chk("i.smali logNoDirectName ×2", ii.count("logNoDirectName()V") == 2)
chk("e/a awaitLocalIp", "awaitLocalIp()V" in ea)
# DatagramSocket 可能先出现在字段声明里，只比对 new-instance 构建点
chk("e/a 在 logHotspotStart 之后建 socket 前",
    ea.index("logHotspotStart") < ea.index("awaitLocalIp")
    and ea.index("awaitLocalIp") < ea.index("new-instance v6, Ljava/net/DatagramSocket;"))

# 5) 慢扫无限
chk("j$b 无 12 轮 giveup", "give up after 12" not in jb)
chk("j$b 无 :giveup 标签", ":giveup" not in jb)
chk("j$b 慢扫仍在", ":slow" in jb and "slow rescan" in jb)
chk("j$b 快试 6 次不动", "const/4 v2, 0x6" in jb)

# 6) 版本 / 门禁
chk("apktool.yml versionCode=125", "versionCode: 125" in yml)
chk("apktool.yml versionName=mod1.25", "versionName: mod1.25" in yml)
chk("verify TARGETS 含 ConnLog", "ConnLog.smali" in v2)

# 7) 回归
chk("回归: j$a 两处 logP2pCreateFail 仍在",
    read(os.path.join(DST, "smali", "a", "a", "a", "a", "m", "m", "d", "j$a.smali")).count("logP2pCreateFail") == 2)
chk("回归: BtGuard 仍在", "BtGuard;->onSkipDecision" in read(
    os.path.join(DST, "smali", "a", "a", "a", "a", "m", "m", "d", "a.smali")))
chk("回归: uniqueName 仍在", "uniqueName" in read(
    os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer", "LogHttpServer.smali")))
# 插桩区无 new-array（血泪 12）
region = j[j.index("precheck") - 80:j.index("precheck") + 80]
chk("回归: j 插桩区无 new-array", "new-array" not in region)

print()
if bad:
    print("[FAIL] %d 项自检不通过" % bad)
    sys.exit(1)
print("OK _w125 patch 全部自检通过")
