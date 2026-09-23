# -*- coding: utf-8 -*-
# patch_v16: _w118 -> _w119 (versionCode 119 / mod1.19)
#
# 用户反馈：「日志下载的还是不行，手机端打不开你给的二维码」
#
# ============================ 真机实测定位 ============================
# 设备：realme X7 Pro (RMX2121, Android 12)
#   收 集到的实况（adb shell ip -4 addr）—— 只有两张非回环网卡：
#       ccmni2 : 10.98.124.35/8     蜂窝数据      ifindex 4
#       ap0    : 192.168.227.155/24 本机热点      ifindex 36
#       （没有 wlan0，Wi-Fi 未连接：Supplicant state = DISCONNECTED）
#
#   NetworkInterface.getNetworkInterfaces() 按 ifindex 顺序返回，
#   ccmni2(4) 排在 ap0(36) 前面；而 1.18 的 localIps() 是
#   「所有非回环 IPv4 一律收录、不排序」，于是 urls[0] = 10.98.124.35:18080，
#   第一个二维码直接指向蜂窝内网地址 —— 任何对端设备都路由不到，
#   现象就是"扫码打不开"。
#
#   顺带确认：日志文件是有的，下载链路的数据源没问题 ——
#       /sdcard/Android/data/com.baidu.carlifevehicle/files/log/
#           └── 2026-09-21T10:44:56.179Z.log   1.3 MB
#   这正是 refreshFiles() 里 getExternalFilesDir(null)/log 的落点。
#   所以 1.19 只需修"地址怎么选"，不用动服务端和文件收集。
#
# ============================== 修什么 ==============================
# 只改 logxfer 三个文件，一行直连链路代码都不碰：
#
#   LogHttpServer.java
#     - localIps() 重写：排除蜂窝/隧道网卡（ccmni/rmnet/pdp/ppp/tun/...），
#       其余按「对端可达性」排序：直连 p2p > WiFi wlan > 热点 ap > 有线 eth。
#     - 单个网卡取值失败只跳过它自己。1.18 是」整轮 try/catch「，
#       一张网卡抛异常会把后面所有网卡一起丢掉（潜在 bug，一并修掉）。
#     - 新增 netSummary()：逐张网卡列出「类别 网卡名=IP」，被忽略的蜂窝也标出来。
#
#   LogDownloadActivity.java
#     - 标题下增加网卡摘要行。出问题时能一眼分辨是「地址选错了」还是「网络没通」，
#       而不是只看到"扫不开"三个字。
#     - 提示里补上本机自测入口 http://127.0.0.1:18080
#
#   assets/logxfer/logxfer.html
#     - 只给首选地址生成二维码，其余降级为小字备选。
#       1.18 是前 3 个地址各画一个二维码，扫到哪个全凭运气。
#
# ============================ 必须保持的不变量 ============================
#   - 端口仍 18080；路径仍 /、/f/<idx>、/all.zip
#   - LogDownloadActivity 仍然**不是** LAUNCHER（1.17 的设计决策），
#     仍由主界面「下载日志」按钮（id 0x7f090147）进入
#   - smali 由 logxfer_src/构建日志下载smali.py 产出，本脚本只负责搬运

import os
import shutil
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = r"C:\PJGG\apk\CarLife\01_工程源码\_w118"
DST = r"C:\PJGG\apk\CarLife\01_工程源码\_w119"

SMALI_SRC = os.path.join(HERE, "logxfer_src", "smali")
WEB_SRC = os.path.join(HERE, "logxfer_src", "assets", "logxfer")
SMALI_DST = os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer")
ASSET_DST = os.path.join(DST, "assets", "logxfer")

if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        shutil.rmtree(DST)
    # robocopy: 0/1 正常，>7 才算失败；/R:0 /W:0 关掉失败重试，避免卡住
    r = subprocess.run(["robocopy", SRC, DST, "/E", "/R:0", "/W:0",
                        "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS"],
                       capture_output=True)
    if r.returncode > 7:
        sys.exit("robocopy failed: %d" % r.returncode)


def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")


def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


# ======================================================================
# 1) 刷新 logxfer smali（整目录重建，避免残留旧类）
# ======================================================================
if not os.path.isdir(SMALI_SRC):
    sys.exit("缺少 %s，请先运行 logxfer_src/构建日志下载smali.py" % SMALI_SRC)
if os.path.isdir(SMALI_DST):
    shutil.rmtree(SMALI_DST)
os.makedirs(SMALI_DST)
n = 0
for fn in sorted(os.listdir(SMALI_SRC)):
    if fn.endswith(".smali"):
        shutil.copyfile(os.path.join(SMALI_SRC, fn), os.path.join(SMALI_DST, fn))
        n += 1
        print("  + smali/com/baidu/carlifevehicle/logxfer/" + fn)
assert n >= 6, "logxfer smali 文件数不足: %d" % n


# ======================================================================
# 2) 刷新 assets（logxfer.html 本次有改动）
# ======================================================================
if not os.path.isdir(ASSET_DST):
    os.makedirs(ASSET_DST)
for fn in ("logxfer.html", "qrcode.js"):
    src = os.path.join(WEB_SRC, fn)
    assert os.path.exists(src), "缺少 " + src
    shutil.copyfile(src, os.path.join(ASSET_DST, fn))
    print("  + assets/logxfer/" + fn)


# ======================================================================
# 3) 版本号
# ======================================================================
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
assert "versionCode: 118" in yml, "apktool.yml versionCode 不是 118"
yml = yml.replace("versionCode: 118", "versionCode: 119")
assert "versionName: mod1.18" in yml, "apktool.yml versionName 不是 mod1.18"
yml = yml.replace("versionName: mod1.18", "versionName: mod1.19")
write(yml_p, yml)
print("OK apktool.yml: versionCode=119 versionName=mod1.19")


# ======================================================================
# 4) 自检
# ======================================================================
bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


hs = read(os.path.join(SMALI_DST, "LogHttpServer.smali"))
act = read(os.path.join(SMALI_DST, "LogDownloadActivity.smali"))
html = read(os.path.join(ASSET_DST, "logxfer.html"))
mf = read(os.path.join(DST, "AndroidManifest.xml"))
cm = read(os.path.join(DST, "smali", "com", "baidu", "carlifevehicle",
                       "ConnModeHelper.smali"))
yml2 = read(yml_p)

# --- 新方法真的进了 smali（这是 1.19 的核心，必须逐个确认） ---
chk("LogHttpServer 有 netSummary", ".method public static netSummary()" in hs)
chk("LogHttpServer 有 isUnreachableIf", "isUnreachableIf(" in hs)
chk("LogHttpServer 有 prioOf", "prioOf(" in hs)
chk("LogHttpServer 有 firstIpv4", "firstIpv4(" in hs)
chk("LogHttpServer 有 usable", "usable(" in hs)
chk("LogHttpServer 保留 localIps", ".method public static localIps()" in hs)
chk("LogHttpServer 保留 baseUrls", ".method public static baseUrls()" in hs)
chk("LogHttpServer 保留 summary", ".method public static summary()" in hs)

# --- 蜂窝/网卡前缀常量确实在（排除逻辑不是空壳） ---
for pre in ("ccmni", "rmnet", "pdp", "p2p", "wlan", "ap"):
    chk("含网卡前缀 \"%s\"" % pre, '"%s"' % pre in hs)

# --- 不变量：端口、路径 ---
chk("端口仍 18080", "18080" in hs)
chk("路径 /all.zip 仍在", "/all.zip" in hs)
chk("路径 /f/ 仍在", '"/f/"' in hs)

# --- 界面：网卡摘要 + 自测入口 ---
chk("Activity 调用 netSummary", "->netSummary()" in act)
chk("Activity 提示 127.0.0.1 自测", "127.0.0.1" in act)

# --- 前端：只出一张二维码 ---
chk("html 只生成一个二维码", html.count("qrcode(0, 'M')") == 1)
chk("html 有备选区 #alts", 'id="alts"' in html)
chk("html 用首选地址 urls[0]", "urls[0]" in html)

# --- 不变量：Activity 仍不是 LAUNCHER，按钮 id 仍在 ---
chk("LogDownloadActivity 仍无 LAUNCHER",
    mf.count("android.intent.category.LAUNCHER") ==
    mf.count("com.baidu.carlifevehicle.CarlifeActivity"))
chk("主界面按钮 id 仍 0x7f090147", "0x7f090147" in read(os.path.join(SMALI_DST, "LogXferEntry.smali")))
chk("ConnModeHelper 仍绑 LogXferEntry",
    "logxfer/LogXferEntry;->bind" in cm)

# --- 版本号 ---
chk("versionCode 119", yml2.count("versionCode: 119") == 1)
chk("versionName mod1.19", yml2.count("versionName: mod1.19") == 1)
chk("doNotCompress 仍含 logxfer.html", "assets/logxfer/logxfer.html" in yml2)

print("\n" + ("[DONE] _w119 ready (1.19 日志地址修复)" if bad == 0
              else "[FAIL] 自检 %d 项未通过" % bad))
sys.exit(1 if bad else 0)
