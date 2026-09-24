# -*- coding: utf-8 -*-
# patch_v26: _w128 -> _w129 (versionCode 129 / mod1.29)
#
# ===================== 这一版是看车机实机日志改出来的 =====================
# 日志：2026-09-20T19_43_02.056Z.log（含 mod1.6 / mod1.17 / mod1.28 三次会话）
#
# 【一句话结论】直连(WLAN直连)在这台车机上不可能连上，**唯一堵点是车机 Android 蓝牙**；
#               热点模式（CONNECT_TYPE=5）实测 100% 连得上。
#
# ---- 日志里的硬证据 ----
# 1) P2P 组其实建成功了（车机是 GO）：
#      WIFI_P2P_CONNECTION_CHANGED_ACTION info: groupFormed: true isGroupOwner: true
#      groupOwnerAddress: /192.168.49.1      network: DIRECT-cH-CarLife-HU
#    → 说明 1.28 修的 createGroup 三分、DNS-SD、自举器都正常工作，P2P 本身没问题。
#
# 2) 蓝牙从头到尾是 OFF，且 App 开不起来：
#      19:39:03.850 … [蓝牙] 未开启, 第 1/30 次等待(1s 后重试, 已请求 enable)
#      19:39:03.868 bluetoothAdapter?.isEnabled: false, so return
#      …… 连续 30 次 ……
#      19:39:34.103 ✖ [蓝牙] 已等待 30s 仍未开启, 放弃蓝牙通道
#    → 三个版本（1.6 / 1.17 / 1.28）表现完全一致，不是我们改出来的回归。
#
# 3) 手机永远不来 join：组里 GO: Device 是空的，没有 client。
#    → 直连的 SSID/PSK 只能靠蓝牙 SPP 送给手机（全仓无 getPassphrase/SSID 代码，
#      车机侧不发送凭据），蓝牙不通 = 手机拿不到凭据 = 不会加入车机的直连组。
#
# 4) 热点模式全程可用：
#      19:45:06.509 connect  packet:172.29.200.143  → 19:45:20.160 rate=100%
#      （mod1.6 / mod1.17 / mod1.28 三次会话都是热点连上的，无一例外）
#
# ---- 那还改什么 ----
# 蓝牙硬件/ROM 的事 App 改不了，但 1.22 的 BtGuard **没本事说清到底是哪种情况**，
# 只会反复打「未开启，第 N/30 次」，看不出 state 是 OFF 还是 TURNING_ON，
# 也看不出 enable() 到底返回 true 还是被 ROM 拒了 —— 日志拿到手依然无法定案。
#
# 本版重写 BtGuard（Java 源码 → D8 → smali），补 5 件事：
#   1. 深度诊断：state 码(10/11/12/13/15) + isEnabled + 地址/名 + 已配对数 +
#      enable() 返回值 + 异常 + Settings.Global(bluetooth_on)，分档打印不刷屏
#   2. 双路径开启（BluetoothManager 那条 + getDefaultAdapter）；
#      TURNING_ON(11/14) 时不重复 enable，免得打断状态机
#   3. 最后一招：等 12s/30s 还不开就试着把 Settings.Global(bluetooth_on) 写成 1
#      （部分 ROM 拿这个全局开关当闸门，enable() 被吞掉；无权限就记一行不赌）
#   4. 等待 30s → 45s；并且**判死一次就记住(sDead)**，不再出现
#      「等 30s → 放弃 → d$c 重试 → 再等 30s」的空转
#   5. 放弃时给确定性结论 + 可操作步骤（直连必需蓝牙 → 改走热点）
#
# ★ 关键：**onSkipDecision(ZLjava/lang/Runnable;)Z 签名不变**，
#   d/a.smali 的插桩点一行都不用动 —— 本版零手工 smali 编辑。
#
# 涉及文件：
#   smali/com/baidu/carlifevehicle/logxfer/BtGuard.smali   ← 覆盖（Java 重编）
#   res/values/strings.xml                                 ← app_name 1.28 -> 1.29
#   apktool.yml                                            versionCode 128 -> 129

import hashlib
import os
import re
import shutil
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
LOGSRC = os.path.join(HERE, "logxfer_src")
ROOT = r"C:\PJGG\apk\CarLife\01_工程源码"
SRC = os.path.join(ROOT, "_w128")
DST = os.path.join(ROOT, "_w129")

LOGXFER_SMALI_DST = r"smali\com\baidu\carlifevehicle\logxfer"
D_A = r"smali\a\a\a\a\m\m\d\a.smali"
D_JA = r"smali\a\a\a\a\m\m\d\j$a.smali"
D_J = r"smali\a\a\a\a\m\m\d\j.smali"
CLOG = r"smali\com\baidu\carlifevehicle\ConnLog.smali"
STRINGS = r"res\values\strings.xml"
BTGUARD = os.path.join(LOGXFER_SMALI_DST, "BtGuard.smali")


def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")


def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def md5(p):
    h = hashlib.md5()
    with open(p, "rb") as f:
        for chunk in iter(lambda: f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()


def sub_once(text, old, new, what):
    if text.count(old) != 1:
        sys.exit("!!! %s: 期望匹配 1 次，实际 %d 次\n---\n%s" % (what, text.count(old), old))
    return text.replace(old, new)


# ======================================================================
# 0) 复制工程（每轮全新目录，绝不删旧目录 —— 见「坑」第 8 条）
# ======================================================================
print("=== 复制 _w128 -> _w129 ===")
if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        sys.exit("!!! 目标已存在，不覆盖: %s（本产线只做全新目录）" % DST)
    rc = subprocess.run(
        ["robocopy", SRC, DST, "/E", "/XD", os.path.join(SRC, "build"),
         "/R:0", "/W:0", "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS", "/NP"],
        capture_output=True).returncode
    if rc > 7:
        sys.exit("!!! robocopy 失败 rc=%d" % rc)
    if not os.path.isfile(os.path.join(DST, "apktool.yml")):
        sys.exit("!!! 复制失败: %s 不存在" % os.path.join(DST, "apktool.yml"))
    print("  [OK] 复制完成")
else:
    print("  [skip] SKIP_COPY=1，沿用已有 %s" % DST)

# ======================================================================
# 1) 覆盖 logxfer smali（含重写后的 BtGuard）
# ======================================================================
print("\n=== 覆盖 logxfer smali ===")
src_smali_dir = os.path.join(LOGSRC, "smali")
dst_smali_dir = os.path.join(DST, LOGXFER_SMALI_DST)
assert os.path.isdir(src_smali_dir), "缺少产物目录 %s（先跑 构建日志下载smali.py）" % src_smali_dir

def copy_lf(src_f, dst_f):
    """
    复制并**统一成 LF 行尾**。

    apktool 在 Windows 上吐出来的是 CRLF，而工程里现存 smali 全是 LF
    （历史上规范化过）。不统一的话：① `校验并补齐工程.py` 会把 8 个 logxfer 文件
    全报成"内容不同"，真正的改动被噪声淹没；② 行尾漂移混进 diff 后，
    下一次条目级对比会彻底失去意义（见「坑」第 9 条）。
    """
    with open(src_f, "r", encoding="utf-8", newline="") as f:
        t = f.read()
    t = t.replace("\r\n", "\n")
    with open(dst_f, "w", encoding="utf-8", newline="\n") as f:
        f.write(t)


files = sorted(f for f in os.listdir(src_smali_dir) if f.endswith(".smali"))
assert len(files) >= 8, "logxfer smali 产物只有 %d 个文件" % len(files)
assert "BtGuard.smali" in files, "产物里没有 BtGuard.smali"
chg = []
for f in files:
    a = os.path.join(dst_smali_dir, f)
    b = os.path.join(src_smali_dir, f)
    before = md5(a) if os.path.exists(a) else "-"
    copy_lf(b, a)
    if before != md5(a):
        chg.append(f)
    print("  copy %-34s %s" % (f, "changed" if f in chg else "same"))
print("[info] 内容有变化的文件: %s" % (", ".join(chg) if chg else "(无)"))
# 幂等校验：不管变没变，DST 里的 BtGuard 必须与刚编出来的产物「除行尾外」完全一致
def _norm(p):
    with open(p, "r", encoding="utf-8", newline="") as f:
        return f.read().replace("\r\n", "\n")


assert _norm(os.path.join(dst_smali_dir, "BtGuard.smali")) == _norm(
    os.path.join(src_smali_dir, "BtGuard.smali")), "BtGuard.smali 没同步成最新产物"

# assets 同步
print("\n=== 覆盖 logxfer assets ===")
src_assets = os.path.join(LOGSRC, "assets", "logxfer")
dst_assets = os.path.join(DST, "assets", "logxfer")
if os.path.isdir(src_assets):
    if not os.path.isdir(dst_assets):
        os.makedirs(dst_assets)
    for f in sorted(os.listdir(src_assets)):
        if os.path.isfile(os.path.join(src_assets, f)):
            shutil.copyfile(os.path.join(src_assets, f), os.path.join(dst_assets, f))
            print("  copy %s" % f)
else:
    print("  [warn] 没有 %s，跳过" % src_assets)

# ======================================================================
# 2) 版本号 + 图标名
# ======================================================================
print("\n=== 版本号 ===")
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
if "versionCode: 129" in yml:
    print("  [skip] 版本号已是 129（幂等重跑）")
else:
    yml = sub_once(yml, "versionCode: 128", "versionCode: 129", "apktool.yml versionCode")
    yml = sub_once(yml, "versionName: mod1.28", "versionName: mod1.29", "apktool.yml versionName")
    write(yml_p, yml)
m = re.search(r"versionName:\s*mod([\d.]+)", yml)
assert m, "无法从 apktool.yml 解析 versionName"
ver = m.group(1)
print("  [OK] versionCode=129 versionName=mod1.29 (展示版本号 %s)" % ver)

print("\n=== 桌面图标名 ===")
sp = os.path.join(DST, STRINGS)
s = read(sp)
old_name = "百度CarLife 1.28"
new_name = "百度CarLife %s" % ver
if '<string name="app_name">%s</string>' % new_name in s:
    print("  [skip] app_name 已是 %s（幂等重跑）" % new_name)
else:
    s = sub_once(s, '<string name="app_name">%s</string>' % old_name,
                 '<string name="app_name">%s</string>' % new_name, "strings.xml app_name")
    write(sp, s)
    print("  [OK] app_name: %s -> %s" % (old_name, new_name))

# ======================================================================
# 3) 自检
# ======================================================================
print("\n=== 自检 ===")
bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


bt = read(os.path.join(DST, BTGUARD))
da = read(os.path.join(DST, D_A))
ja = read(os.path.join(DST, D_JA))
js = read(os.path.join(DST, D_J))
cl = read(os.path.join(DST, CLOG))
ymlv = read(yml_p)
sv = read(sp)

# --- 本次改动 ---
chk("BtGuard 签名未变 onSkipDecision(ZLjava/lang/Runnable;)Z",
    ".method public static onSkipDecision(ZLjava/lang/Runnable;)Z" in bt)
for s_, what in (("bluetooth_on", "读 Settings.Global(bluetooth_on)"),
                 ("putInt", "写 Settings.Global(bluetooth_on)"),
                 ("getState", "取 state 码"),
                 ("getBondedDevices", "取已配对设备数"),
                 ("getAddress", "取适配器地址")):
    chk("BtGuard %s" % what, s_ in bt)
chk("BtGuard 有 stateName(10/11/12/13/15)",
    "TURNING_ON" in bt and "BLE_ON" in bt)
chk("BtGuard 判死标记 sDead 生效（有 sDead 字段）", "sDead" in bt)
chk("BtGuard 等待上限 45", "0x2d" in bt or "45" in bt)
chk("BtGuard 会 enable()", ";->enable()Z" in bt)
chk("BtGuard 不上主线程(无 MainLooper)", "getMainLooper" not in bt)
chk("放弃时给可操作结论（直连不可用 + 改走热点）",
    "直连不可用" in bt or "\\u76f4\\u8fde\\u4e0d\\u53ef\\u7528" in bt)

# --- 回归：d/a.smali 插桩点必须原样（签名没变，一行都不改）---
chk("回归: d/a.smali 仍有 BtGuard 插桩",
    "BtGuard;->onSkipDecision(ZLjava/lang/Runnable;)Z" in da)
chk("回归: d/a.smali 插桩点紧随 :goto_1",
    "    :goto_1\n" in da and da.index("BtGuard;->onSkipDecision") > da.index("    :goto_1"))
chk("回归: d/a.smali 未新增 new-array（%d 处）" % da.count("new-array"),
    da.count("new-array") == read(os.path.join(SRC, D_A)).count("new-array"))
chk("回归: 阶段1 插桩仍是零参 logBtStage1Entry",
    "invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtStage1Entry()V" in da)
chk("回归: patchB 自动 enable 还在",
    ";->enable()Z" in da and "iput-boolean v6, v2, La/a/a/a/m/m/d/d;->h:Z" in da)

# --- 回归：1.28 的 P0 建组失败三分 ---
chk("回归: 1.28 j$a 三分退避还在", "logP2pError" in ja or "d()V" in ja)
chk("回归: 1.28 j.smali DNS-SD 修的 invoke-virtual 还在",
    "local service published" in js and "invoke-virtual" in js)

# --- 回归：1.26 的手写 try/catch 三条硬规则 ---
# 只看「跳转指令把正常流程带进 catch handler」这一种违规：
#   · `.catch ... :catch_x` 指令行            -> 合法，跳过
#   · 独占一行的 `:catch_x` 标签定义           -> 合法，跳过（smali 标签**不带**尾冒号）
#   · `move-exception`                        -> 合法，跳过
#   · `goto :catch_x` / `if-xxx :catch_x`     -> ✗ 违规（1.25 就是这么崩的）
import re as _re
_LABEL = _re.compile(r'^:catch_\w+$')
_BRANCH = _re.compile(r'^\s*(goto|goto/16|goto/32|if-\S+|packed-switch|sparse-switch)\s+:catch_\w+')
bad_handler = []
for rel in (CLOG, BTGUARD):
    p = os.path.join(DST, rel)
    for i, line in enumerate(read(p).splitlines(), 1):
        st = line.strip()
        if ":catch_" not in st:
            continue
        if st.startswith(".catch") or _LABEL.match(st) or "move-exception" in st:
            continue
        if _BRANCH.match(st):
            bad_handler.append("%s:%d %s" % (rel, i, st))
chk("回归: 无「正常分支跳进 catch handler」(%s)" % (bad_handler or "无"), not bad_handler)

# --- 回归：日志区 6 条蓝牙插桩 ---
for mn in ("logBtStage1Entry", "logBtNoTarget", "logBtConnected",
           "logBtConnectFail", "logBtNoBonded", "logBtAllFailed"):
    chk("回归: ConnLog 仍有 %s" % mn, ".method public static %s()V" % mn in cl)

# --- 版本号 / 图标名 ---
chk("apktool.yml versionCode=129", "versionCode: 129" in ymlv)
chk("apktool.yml versionName=mod1.29", "versionName: mod1.29" in ymlv)
chk("strings.xml app_name=%s" % new_name,
    '<string name="app_name">%s</string>' % new_name in sv)
chk("strings.xml 旧名已不存在",
    '<string name="app_name">%s</string>' % old_name not in sv)

print("\n" + ("[DONE] _w129 就绪" if bad == 0 else "[FAIL] %d 项自检不通过" % bad))
sys.exit(1 if bad else 0)
