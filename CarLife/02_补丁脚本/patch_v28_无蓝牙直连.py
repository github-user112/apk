# -*- coding: utf-8 -*-
# patch_v28: _w130 -> _w140 (versionCode 140 / mod1.40)
#
# ===================== 1.40: 亿连式「无蓝牙直连」兜底 =====================
# 用户需求：直连必须开蓝牙才连得上，能不能像亿连(EasyConnect)一样完全不用蓝牙？
#
# 【定案依据】1.29 车机实机日志已实锤：
#   - P2P 组建成功：DIRECT-cH-CarLife-HU / GO 192.168.49.1 —— 它本身就是个 WPA2 热点
#   - 唯一堵点 = 车机 Android 蓝牙起不来(state 恒 10)，SSID/PSK 送不到手机 → 手机不 join
#   - 热点模式(UDP 7999 广播发现 → e/b.d(手机IP) → 7 条 TCP) 100% 可用
#
# 【方案】蓝牙判死后自动切「亿连式」无蓝牙路径：
#   1. 把热点传输 a/a/a/a/m/m/e/a（UDP 7999 监听体）挂进当前引擎传输列表并启动
#      —— 手机在 WLAN 手动连上直连网络后广播 UDP 7999，走热点模式原路完成建链，
#         m/m/b.b() 会自动 terminate 掉蓝牙传输，q(5) 起会话。
#   2. requestGroupInfo 轮询直连组，把 SSID/密码打到 ConnLog 日志区引导用户入组
#      （车机是 GO，getPassphrase() 就是该组真实 WPA2 口令）。
#
# 【关键坑：keepP2pGroup 闸门】
#   m/m/b.b(传输) 连上时会 f() 掉其它传输；e/d.f() 的 patchE 段有
#   cancelConnect/removeGroup/stopPeerDiscovery —— 不加闸门的话，兜底一连上
#   就把手机刚加入的组拆了。所以 e/d.f() 的 P2P 清理改成：
#     keepP2pGroup()==true 时跳过；抽成私有方法 p2pCleanup 消除共享标签的
#     寄存器合并（同 1.28 j.d()V 的手法）。组残留 BUSY 由自举器慢扫/patchK 兜底。
#
# ★ 蓝牙正常的设备（realme 等）完全不受影响：BtGuard 判死才触发兜底。
#
# 涉及文件：
#   smali/com/baidu/carlifevehicle/logxfer/{BtGuard,NoBtFallback,NoBtFallback$1,NoBtFallback$2}.smali ← 覆盖（Java 重编）
#   smali/a/a/a/a/m/m/e/d.smali   ← keepP2pGroup 闸门 + 私有方法 p2pCleanup
#   res/values/strings.xml        ← app_name 1.30 -> 1.40
#   apktool.yml                   ← versionCode 130 -> 140

import hashlib
import os
import re
import shutil
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
LOGSRC = os.path.join(HERE, "logxfer_src")
ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "01_工程源码")
SRC = os.path.join(ROOT, "_w130")
DST = os.path.join(ROOT, "_w140")

LOGXFER_SMALI_DST = "smali/com/baidu/carlifevehicle/logxfer"
ED = "smali/a/a/a/a/m/m/e/d.smali"
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
# 0) 复制工程（每轮全新目录，绝不删旧目录）
# ======================================================================
print("=== 复制 _w130 -> _w140 ===")
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
# 1) 覆盖 logxfer smali（BtGuard 改判死文案+触发兜底；新增 NoBtFallback×3）
# ======================================================================
print("\n=== 覆盖 logxfer smali ===")
src_smali_dir = os.path.join(LOGSRC, "smali")
dst_smali_dir = os.path.join(DST, LOGXFER_SMALI_DST)
assert os.path.isdir(src_smali_dir), "缺少产物目录 %s（先跑 构建日志下载smali.py）" % src_smali_dir


def copy_lf(src_f, dst_f):
    with open(src_f, "r", encoding="utf-8", newline="") as f:
        t = f.read()
    t = t.replace("\r\n", "\n")
    with open(dst_f, "w", encoding="utf-8", newline="\n") as f:
        f.write(t)


files = sorted(f for f in os.listdir(src_smali_dir) if f.endswith(".smali"))
assert len(files) >= 10, "logxfer smali 产物只有 %d 个文件" % len(files)
for must in ("BtGuard.smali", "NoBtFallback.smali", "NoBtFallback$1.smali", "NoBtFallback$2.smali"):
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

# ======================================================================
# 2) e/d.smali: keepP2pGroup 闸门 + 抽私有方法 p2pCleanup
# ======================================================================
print("\n=== e/d.smali 闸门改造 ===")
ed_p = os.path.join(DST, ED)
ed = read(ed_p)

TRIO_OLD = """    new-instance v7, La/a/a/a/m/m/d/g;

    invoke-direct {v7}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    # --- patchE: 参照亿连的清理习惯. 原来只 cancelConnect, 残留组会让下一次
    # ---  discoverPeers 一直返回 BUSY(真机日志中的 reason: 2), 补上 removeGroup
    # ---  与 stopPeerDiscovery, 保证下次进直连是干净状态。
    new-instance v7, La/a/a/a/m/m/d/g;

    invoke-direct {v7}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    new-instance v7, La/a/a/a/m/m/d/g;

    invoke-direct {v7}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V"""

TRIO_NEW = """    # --- patchE(1.28) + 1.40 闸门: 原本无条件 cancelConnect/removeGroup/stopPeerDiscovery
    # ---  清理 P2P 残留, 防止下一次 discoverPeers 一直 BUSY。
    # ---  但 1.40 无蓝牙兜底挂载后, P2P 组就是会话的承载网络 —— m/m/b.b(兜底传输)
    # ---  连上时会对本传输调 f(), 若此时再 removeGroup 会把手机刚加入的组拆掉。
    # ---  故 keepP2pGroup()==true 时跳过本段清理(组残留 BUSY 由自举器慢扫
    # ---  removeGroup / patchK 自愈兜底, 1.14/1.28 已有)。清理本体抽到 p2pCleanup,
    # ---  消除共享标签的寄存器合并(同 1.28 j.d()V 手法)。
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->keepP2pGroup()Z

    move-result v9

    if-nez v9, :cond_nobt_keep

    invoke-direct {p0, v3, v0}, La/a/a/a/m/m/e/d;->p2pCleanup(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :cond_nobt_keep"""

P2P_CLEANUP = """
.method private p2pCleanup(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2

    new-instance v0, La/a/a/a/m/m/d/g;

    invoke-direct {v0}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    new-instance v0, La/a/a/a/m/m/d/g;

    invoke-direct {v0}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    new-instance v0, La/a/a/a/m/m/d/g;

    invoke-direct {v0}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method
"""

if "keepP2pGroup()Z" in ed:
    print("  [skip] 闸门已存在（幂等重跑）")
else:
    if ed.count(TRIO_OLD) != 1:
        sys.exit("!!! patchE 清理段锚点匹配 %d 次（应为 1），e/d.smali 可能已变" % ed.count(TRIO_OLD))
    ed = ed.replace(TRIO_OLD, TRIO_NEW)
    assert ed.rstrip().endswith(".end method"), "e/d.smali 结尾异常"
    ed = ed.rstrip("\n") + "\n" + P2P_CLEANUP
    write(ed_p, ed)
    print("  [OK] 闸门 + p2pCleanup 已写入")

# ======================================================================
# 3) 版本号 + 图标名
# ======================================================================
print("\n=== 版本号 ===")
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
if "versionCode: 140" in yml:
    print("  [skip] 版本号已是 140（幂等重跑）")
else:
    yml = sub_once(yml, "versionCode: 130", "versionCode: 140", "apktool.yml versionCode")
    yml = sub_once(yml, "versionName: mod1.30", "versionName: mod1.40", "apktool.yml versionName")
    write(yml_p, yml)
m = re.search(r"versionName:\s*mod([\d.]+)", yml)
assert m, "无法从 apktool.yml 解析 versionName"
ver = m.group(1)
print("  [OK] versionCode=140 versionName=mod1.40 (展示版本号 %s)" % ver)

print("\n=== 桌面图标名 ===")
sp = os.path.join(DST, STRINGS)
s = read(sp)
old_name = "百度CarLife 1.30"
new_name = "百度CarLife %s" % ver
if '<string name="app_name">%s</string>' % new_name in s:
    print("  [skip] app_name 已是 %s（幂等重跑）" % new_name)
else:
    s = sub_once(s, '<string name="app_name">%s</string>' % old_name,
                 '<string name="app_name">%s</string>' % new_name, "strings.xml app_name")
    write(sp, s)
    print("  [OK] app_name: %s -> %s" % (old_name, new_name))

# ======================================================================
# 4) 自检
# ======================================================================
print("\n=== 自检 ===")
bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


ed = read(ed_p)
bt = read(os.path.join(DST, LOGXFER_SMALI_DST, "BtGuard.smali"))
nb = read(os.path.join(DST, LOGXFER_SMALI_DST, "NoBtFallback.smali"))
ymlv = read(yml_p)
sv = read(sp)
ed_src = read(os.path.join(SRC, ED))

# --- 本次改动: e/d.smali 闸门 ---
chk("e/d 闸门调用 keepP2pGroup()Z 恰好 1 处", ed.count("keepP2pGroup()Z") == 1)
chk("e/d 分支极性: if-nez v9(keep=true 跳过清理)", "if-nez v9, :cond_nobt_keep" in ed)
chk("e/d 分支极性反例不存在(if-eqz)", "if-eqz v9, :cond_nobt_keep" not in ed)
chk("e/d 调 p2pCleanup 传参 {p0, v3, v0}",
    "invoke-direct {p0, v3, v0}, La/a/a/a/m/m/e/d;->p2pCleanup(" in ed)
chk("e/d 定义私有 p2pCleanup 恰好 1 处",
    ed.count(".method private p2pCleanup(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V") == 1)
for op in ("cancelConnect", "removeGroup", "stopPeerDiscovery"):
    chk("e/d %s 恰好 1 处(已收进 p2pCleanup)" % op, ed.count(op + "(Landroid/net/wifi/p2p") == 1)
    chk("e/d 旧无条件清理段已移除(%s 与 v7 组合消失)" % op,
        ("invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->" + op) not in ed)
chk("e/d f() 的 .locals 10 未动", ".locals 10" in ed)
# 回归: patchE 之外 e/d 与上一版应只差本闸门段 + 末尾新增方法
ed_src_strip = ed_src.replace(TRIO_OLD, "@@GATE@@").rstrip("\n")
ed_nocleanup = ed.replace(P2P_CLEANUP, "")          # 先摘掉末尾新增的 p2pCleanup 方法
ed_dst_strip = ed_nocleanup.replace(TRIO_NEW, "@@GATE@@").rstrip("\n")
chk("e/d 除闸门外与 _w130 逐字一致", ed_src_strip == ed_dst_strip)

# --- 本次改动: logxfer ---
chk("BtGuard 判死调用 NoBtFallback.onBtDead 恰好 2 处",
    bt.count("NoBtFallback;->onBtDead()V") == 2)
chk("BtGuard onSkipDecision 签名未变",
    ".method public static onSkipDecision(ZLjava/lang/Runnable;)Z" in bt)
chk("BtGuard 文案含 无蓝牙直连(原文或 \\u 转义)",
    ("无蓝牙直连" in bt) or ("\\u65e0\\u84dd\\u7259\\u76f4\\u8fde" in bt))
chk("NoBtFallback 有 keepP2pGroup()Z / onBtDead()V",
    ".method public static keepP2pGroup()Z" in nb and ".method public static onBtDead()V" in nb)
chk("NoBtFallback 反射挂载 e/a 传输", "a.a.a.a.m.m.e.a" in nb)
chk("NoBtFallback 反射引擎/管理器/列表", "a.a.a.a.m.b" in nb and "a.a.a.a.m.d" in nb and "a.a.a.a.m.m.b" in nb)
chk("NoBtFallback 请求组信息 requestGroupInfo", "requestGroupInfo" in nb)
chk("NoBtFallback 取组名/口令", "getNetworkName" in nb and "getPassphrase" in nb)
chk("NoBtFallback 守护线程(不上主线程执行业务)",
    "setDaemon" in nb)

# --- 版本号 / 图标名 ---
chk("apktool.yml versionCode=140", "versionCode: 140" in ymlv)
chk("apktool.yml versionName=mod1.40", "versionName: mod1.40" in ymlv)
chk("strings.xml app_name=%s" % new_name,
    '<string name="app_name">%s</string>' % new_name in sv)
chk("strings.xml 旧名已不存在",
    '<string name="app_name">%s</string>' % old_name not in sv)

print("\n" + ("[DONE] _w140 就绪" if bad == 0 else "[FAIL] %d 项自检不通过" % bad))
sys.exit(1 if bad else 0)
