# -*- coding: utf-8 -*-
# patch_v27: _w129 -> _w130 (versionCode 130 / mod1.30)
#
# ===================== 这一版是看用户 2026-09-24 三条需求改的 =====================
# 需求原文：
#   1) 「看一下生成日志的二维码，没有网的时候不生成，生成正确的，有时候生成的不正确」
#   2) 「每次启动生成一份新的日志，每份日志的大小超过 30kb，生成新的」
#   3) 「下载时候，按日期排序好」
#
# ---- 逐条对应到代码 ----
# 1) 二维码"有时候不正确" = 地址变了二维码没跟着变：
#    1.19/1.24 的地址只在 onCreate 里取一次，页面开着的时候网络通了/换了网卡
#    （WiFi 切热点、车机进车库 IP 变了），二维码还是旧地址，扫出来当然不正确。
#    修法：新增 NetWatch（BroadcastReceiver 监听 WiFi/P2P/以太网状态），
#    网络一变就重取地址、重载 WebView（logxfer.html 里 urls 为空时本来就
#    显示"未生成二维码：当前没有可用网络"，不再画死码）。
#
# 2) 每次启动新日志 + 30KB 滚动：
#    新增 SessionLog —— 每次进程启动生成 yyyyMMdd-HHmmss.log，超过 30KB 就
#    滚动成 .part2.log / .part3.log（最多 30 个 part，防止无限滚动），
#    旧会话文件保留（目录内最多 40 份，超了按修改时间删最旧的）。
#    落盘位置：files/log/session/。LogHttpServer 的列表会收集这个目录。
#    写入路径挂点：ConnLog.append(String) 是**唯一落盘点**（网络/SDK 日志都走
#    n/g$a.a -> ConnLog.logLine -> ConnLog.append），在那里插一行
#    SessionLog.append(line) 就能捕获屏幕上的全部日志，无需改 SDK 类。
#    启动时机：VehicleApplication.onCreate() 插一行 SessionLog.init(p0)（零寄存器操作）。
#
# 3) 下载按日期排序：
#    LogHttpServer.refreshFiles() 原来按 lastModified 倒序；改成按「文件名里
#    解析出的日期」优先（拷贝/解压/修复会改 mtime，文件名日期才是用户眼里的日期），
#    解析不出退回 lastModified。页面 HTML 文案改成"按日期倒序"。
#    zip 打包加 datePrefix（YYYYMMDD-HHMMSS_）前缀，解压后天然按日期排序。
#    session 日志名就是 yyyyMMdd-HHmmss[.partN].log，天然有序，和 datePrefix 自洽。
#
# ★ 关键：onSkipDecision 签名不变，d/a.smali 零手工改动；
#   VehicleApplication.onCreate 的插桩是**零参静态方法**（血泪 12：插桩一律走零参静态）。
#
# 涉及文件：
#   smali/com/baidu/carlifevehicle/logxfer/{SessionLog,NetWatch}.smali   ← 新增（Java 编译）
#   smali/com/baidu/carlifevehicle/logxfer/{BtGuard,LogHttpServer,LogDownloadActivity}.smali
#                                                                    ← 覆盖（Java 重编）
#   smali/com/baidu/carlifevehicle/ConnLog.smali                       ← append() 加一行 SessionLog.append
#   smali/com/baidu/carlifevehicle/VehicleApplication.smali            ← onCreate() 加一行 SessionLog.init
#   res/values/strings.xml                                             ← app_name 1.29 -> 1.30
#   apktool.yml                                                        versionCode 129 -> 130

import hashlib
import os
import re
import shutil
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
LOGSRC = os.path.join(HERE, "logxfer_src")
ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "01_工程源码")
SRC = os.path.join(ROOT, "_w129")
DST = os.path.join(ROOT, "_w130")

LOGXFER_SMALI_DST = "smali/com/baidu/carlifevehicle/logxfer"
CLOG = "smali/com/baidu/carlifevehicle/ConnLog.smali"
VAPP = "smali/com/baidu/carlifevehicle/VehicleApplication.smali"
STRINGS = "res/values/strings.xml"


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
print("=== 复制 _w129 -> _w130 ===")
if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        sys.exit("!!! 目标已存在，不覆盖: %s（本产线只做全新目录）" % DST)
    shutil.copytree(SRC, DST, ignore=shutil.ignore_patterns("build"))
    rc = 0
    if not os.path.isfile(os.path.join(DST, "apktool.yml")):
        sys.exit("!!! 复制失败: %s 不存在" % os.path.join(DST, "apktool.yml"))
    print("  [OK] 复制完成")
else:
    print("  [skip] SKIP_COPY=1，沿用已有 %s" % DST)

# ======================================================================
# 1) 覆盖 logxfer smali（含新增的 SessionLog/NetWatch + 重写的 BtGuard）
# ======================================================================
print("\n=== 覆盖 logxfer smali ===")
src_smali_dir = os.path.join(LOGSRC, "smali")
dst_smali_dir = os.path.join(DST, LOGXFER_SMALI_DST)
assert os.path.isdir(src_smali_dir), "缺少产物目录 %s（先跑 构建日志下载smali.py）" % src_smali_dir


def copy_lf(src_f, dst_f):
    """复制并**统一成 LF 行尾**（理由见 patch_v26 copy_lf 注释）。"""
    with open(src_f, "r", encoding="utf-8", newline="") as f:
        t = f.read()
    t = t.replace("\r\n", "\n")
    with open(dst_f, "w", encoding="utf-8", newline="\n") as f:
        f.write(t)


files = sorted(f for f in os.listdir(src_smali_dir) if f.endswith(".smali"))
assert len(files) >= 10, "logxfer smali 产物只有 %d 个文件" % len(files)
for must in ("BtGuard.smali", "SessionLog.smali", "NetWatch.smali", "LogHttpServer.smali"):
    assert must in files, "产物里没有 %s" % must
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
for must in ("SessionLog.smali", "NetWatch.smali"):
    assert must in chg or os.path.exists(os.path.join(dst_smali_dir, must)), \
        "%s 没同步" % must


# ======================================================================
# 2) ConnLog.append 挂 SessionLog（唯一落盘点）
# ======================================================================
print("\n=== ConnLog.append 挂 SessionLog ===")
cp = os.path.join(DST, CLOG)
c = read(cp)
if "SessionLog" in c:
    print("  [skip] 已挂过（幂等重跑）")
else:
    # 在 append() 的第一行（if-nez p0 检查通过后）插入 SessionLog.append(p0)
    old = '''    :cond_0
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->removePendingLocked()V
'''
    new = '''    :cond_0
    # 1.30: 落盘镜像到 SessionLog（每份 30KB 滚动）
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->append(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->removePendingLocked()V
'''
    c = sub_once(c, old, new, "ConnLog.append 插桩")
    write(cp, c)
    print("  [OK] ConnLog.append -> SessionLog.append")

# ======================================================================
# 3) VehicleApplication.onCreate 启动 SessionLog（零参静态）
# ======================================================================
print("\n=== VehicleApplication.onCreate 启动 SessionLog ===")
vp = os.path.join(DST, VAPP)
v = read(vp)
if "SessionLog" in v:
    print("  [skip] 已挂过（幂等重跑）")
else:
    # 在 invoke-super 之后、初始化 SDK 之前插一行 SessionLog.init(p0)
    old = '''    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, La/a/a/a/l/c;->c()V
'''
    new = '''    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    # 1.30: 本次启动的新会话日志（30KB 滚动）
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->init(Landroid/content/Context;)V

    invoke-static {}, La/a/a/a/l/c;->c()V
'''
    v = sub_once(v, old, new, "VehicleApplication.onCreate 插桩")
    write(vp, v)
    print("  [OK] VehicleApplication.onCreate -> SessionLog.init")

# ======================================================================
# 4) 版本号 + 图标名
# ======================================================================
print("\n=== 版本号 ===")
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
if "versionCode: 130" in yml:
    print("  [skip] 版本号已是 130（幂等重跑）")
else:
    yml = sub_once(yml, "versionCode: 129", "versionCode: 130", "apktool.yml versionCode")
    yml = sub_once(yml, "versionName: mod1.29", "versionName: mod1.30", "apktool.yml versionName")
    write(yml_p, yml)
m = re.search(r"versionName:\s*mod([\d.]+)", yml)
assert m, "无法从 apktool.yml 解析 versionName"
ver = m.group(1)
print("  [OK] versionCode=130 versionName=mod1.30 (展示版本号 %s)" % ver)

print("\n=== 桌面图标名 ===")
sp = os.path.join(DST, STRINGS)
s = read(sp)
old_name = "百度CarLife 1.29"
new_name = "百度CarLife %s" % ver
if 'app_name">%s<' % new_name in s:
    print("  [skip] app_name 已是 %s" % new_name)
else:
    s = sub_once(s, '<string name="app_name">%s</string>' % old_name,
                 '<string name="app_name">%s</string>' % new_name, "strings.xml app_name")
    write(sp, s)
    print("  [OK] app_name: %s -> %s" % (old_name, new_name))

# ======================================================================
# 5) 结构自检（血泪 16：手写 try/catch 三条硬规则 + 1.30 的关键串）
# ======================================================================
print("\n=== 结构自检 ===")

# 5.1 catch handler 首指令必须是 move-exception
#     只允许两类含 ":catch_" 的行：① .catch 指令（引用标签）② 标签定义行本身（:catch_x 结尾）。
#     其他任何"分支跳进 :catch_x"都是血泪 16 的违规。
bad_handler = []
for rel in (CLOG, VAPP, os.path.join(LOGXFER_SMALI_DST, "SessionLog.smali"),
            os.path.join(LOGXFER_SMALI_DST, "NetWatch.smali"),
            os.path.join(LOGXFER_SMALI_DST, "LogHttpServer.smali"),
            os.path.join(LOGXFER_SMALI_DST, "LogDownloadActivity.smali"),
            os.path.join(LOGXFER_SMALI_DST, "BtGuard.smali")):
    p = os.path.join(DST, rel)
    if not os.path.isfile(p):
        continue
    for i, line in enumerate(read(p).splitlines(), 1):
        st = line.strip()
        if ":catch_" not in st:
            continue
        if st.startswith(".catch"):
            continue                      # .catch 指令引用标签，合法
        if st.startswith(":catch_"):
            continue                      # 标签定义行（:catch_0 / :catch_1，无尾冒号）
        if "move-exception" in st:
            continue                      # handler 首指令，合法
        bad_handler.append("%s:%d %s" % (rel, i, st))
if bad_handler:
    sys.exit("!!! catch handler 结构违规（血泪 16）:\n  " + "\n  ".join(bad_handler))
print("  [OK] catch handler 结构全对")

# 5.2 1.30 关键串必须在产物里
merged = ""
for f in sorted(os.listdir(os.path.join(DST, LOGXFER_SMALI_DST))):
    if f.endswith(".smali"):
        merged += read(os.path.join(DST, LOGXFER_SMALI_DST, f))
merged += read(os.path.join(DST, CLOG))
merged += read(os.path.join(DST, VAPP))

checks = [
    ("SessionLog 落盘点已挂", "SessionLog;->append" in merged),
    ("SessionLog 启动已挂", "SessionLog;->init" in merged),
    ("NetWatch 已引入", "NetWatch" in merged),
    ("30KB 常量（30*1024）", "0x7800" in merged or "30720" in merged or "30L * 1024L" in merged),
    ("datePrefix 已加", "datePrefix" in merged or "uniqueNamePref" in merged),
    ("按日期倒序文案", ("u6309" + chr(92) + "u65e5" + chr(92) + "u671f" + chr(92) + "u5012" + chr(92) + "u5e8f") in merged),
    ("没网提示文案(HTML)", "未检测到可用网络地址" in open(os.path.join(DST, "assets", "logxfer", "logxfer.html"), "rb").read().decode("utf-8", "replace")),
    ("没网提示(Activity)", ("u672a" + chr(92) + "u68c0" + chr(92) + "u6d4b") in merged),
]
bad = 0
for name, ok in checks:
    print(("  [OK]   " if ok else "  [FAIL] ") + name)
    if not ok:
        bad += 1
if bad:
    sys.exit("!!! 自检未通过")

print("\n[DONE] _w130 就绪，可以构建")
