# -*- coding: utf-8 -*-
# patch_v19: _w121 -> _w122 (versionCode 122 / mod1.22)
#
# ===================== 为什么会有这一版 =====================
# 车机 4.4.2 实测：直连模式下界面打出
#     【蓝牙】蓝牙未开启，跳过蓝牙通道
# 但用户明明已经在车机系统里把蓝牙连上了手机。
#
# 触发这一条的**唯一**条件（读 _w121/smali/a/a/a/a/m/m/d/a.smali 的 run() 得出）：
#     d.b() 拿到的 BluetoothAdapter 非 null  且  isEnabled() 返回 false
#     （adapter 为 null 时走的是另一支：Kotlin 的 `bluetoothAdapter?.isEnabled == false`
#       对 null 不成立，不会进这条）
# 而原代码在这时**直接 return** —— 蓝牙通道整条被跳过，
# P2P 组永远等不到手机来 join，表现就是"组网成功但进不去"。
#
# 车机上「isEnabled() 报 false 但蓝牙其实能用」只有三种可能：
#   A. 时序：App 启动时蓝牙还在 STATE_TURNING_ON；
#      1.18 加的 STATE_ON 广播重试只在"enable() 真触发了一次开机广播"时才有效，
#      蓝牙本来就 ON（或 ROM 不发广播）时，那条自愈链路根本不会被激活 → 一次判死。
#   B. ROM 双蓝牙：车机蓝牙电话/音乐走 MCU，Android 标准 BluetoothAdapter 一直 OFF。
#   C. 状态不同步：BluetoothManager.getAdapter()（CarLife 用的）与
#      BluetoothAdapter.getDefaultAdapter() 结论不一致。
#
# ===================== 怎么修 =====================
# 新增 com.baidu.carlifevehicle.logxfer.BtGuard（Java 源码在 logxfer_src，
#   已用 构建日志下载smali.py 编成 smali），在 run() 决定"要不要跳过"的那一刻接管：
#
#   · 蓝牙已开启        → 原样继续握手，等待计数清零
#   · 系统无适配器      → 打日志后放弃（真·没蓝牙硬件）
#   · 未开启            → 每秒重试一次，最多 30 次；每次顺手 enable()，
#                         并把等待进度打到界面日志区，30s 后仍 OFF 才放弃
#   · 两条获取路径结论不一致 → 单独打一行，直接区分情况 C
#
# 重试走 ScheduledExecutorService（工作线程），**不**挪到主线程 ——
#   后面 SPP connect 是阻塞调用，上主线程会 ANR。
#
# 插桩点只有一行 invoke-static，两个操作数都是现成寄存器（v0=是否跳过, v1=this/Runnable），
# 不新占寄存器、不改任何既有分支 → 遵守「血泪 12：插桩一律走静态方法」。
#
# 涉及文件：
#   smali/com/baidu/carlifevehicle/logxfer/BtGuard.smali      ← 新增（含 BtGuard$1）
#   smali/a/a/a/a/m/m/d/a.smali                               ← :goto_1 后插一行调用
#   apktool.yml                                               versionCode 121 -> 122

import hashlib
import os
import shutil
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
LOGSRC = os.path.join(HERE, "logxfer_src")
SRC = r"C:\PJGG\apk\CarLife\01_工程源码\_w121"
DST = r"C:\PJGG\apk\CarLife\01_工程源码\_w122"

LOGXFER_SMALI_DST = r"smali\com\baidu\carlifevehicle\logxfer"
ASSETS_DST = r"assets\logxfer"

D_A = r"smali\a\a\a\a\m\m\d\a.smali"
D_D = r"smali\a\a\a\a\m\m\d\d.smali"
CLOG = r"smali\com\baidu\carlifevehicle\ConnLog.smali"
LOGHTTP = os.path.join(LOGXFER_SMALI_DST, "LogHttpServer.smali")


def clear_dst(dst):
    """
    清掉已存在的目标工程目录。
    ⚠ 不能用 shutil.rmtree（沙箱批量删除保护会拦），改成移到隔离区。
    """
    if not os.path.exists(dst):
        return
    trash = os.path.join(r"C:\PJGG\_apk_清理隔离_20260923",
                         os.path.basename(dst) + "_" + time.strftime("%Y%m%d_%H%M%S"))
    if os.path.exists(trash):
        trash += "_1"
    shutil.move(dst, trash)
    print("[info] 旧目标工程已移到隔离区: " + trash)


if not os.environ.get("SKIP_COPY"):
    clear_dst(DST)
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


def md5(p):
    h = hashlib.md5()
    with open(p, "rb") as f:
        for chunk in iter(lambda: f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()


# ======================================================================
# 1) 用刚编译出来的 smali 覆盖 logxfer 全套（含新增的 BtGuard）
# ======================================================================
print("\n=== 覆盖 logxfer smali ===")
src_smali_dir = os.path.join(LOGSRC, "smali")
dst_smali_dir = os.path.join(DST, LOGXFER_SMALI_DST)
assert os.path.isdir(src_smali_dir), "缺少产物目录 %s（先跑 构建日志下载smali.py）" % src_smali_dir

files = sorted(f for f in os.listdir(src_smali_dir) if f.endswith(".smali"))
assert len(files) >= 8, "logxfer smali 产物只有 %d 个文件，不对劲（应含 BtGuard）" % len(files)
assert "BtGuard.smali" in files, "产物里没有 BtGuard.smali"
chg = []
for f in files:
    a = os.path.join(dst_smali_dir, f)
    b = os.path.join(src_smali_dir, f)
    before = md5(a) if os.path.exists(a) else "-"
    if before != md5(b):
        chg.append(f)
    shutil.copyfile(b, a)
    print("  copy %-34s %s" % (f, "changed" if before != "-" and f in chg else
                               ("new" if before == "-" else "same")))
print("[info] 内容有变化的文件: %s" % (", ".join(chg) if chg else "(无)"))

# assets 同步
print("\n=== 覆盖 logxfer assets ===")
src_assets = os.path.join(LOGSRC, "assets", "logxfer")
dst_assets = os.path.join(DST, ASSETS_DST)
if os.path.isdir(src_assets):
    if not os.path.isdir(dst_assets):
        os.makedirs(dst_assets)
    for f in sorted(os.listdir(src_assets)):
        if os.path.isfile(os.path.join(src_assets, f)):
            same = (os.path.exists(os.path.join(dst_assets, f))
                    and md5(os.path.join(dst_assets, f)) == md5(os.path.join(src_assets, f)))
            shutil.copyfile(os.path.join(src_assets, f), os.path.join(dst_assets, f))
            print("  copy %-24s %s" % (f, "same" if same else "changed"))
else:
    print("  [warn] 没有 %s，跳过" % src_assets)


# ======================================================================
# 2) d/a.run(): 蓝牙"未开启"不再一次判死，交给 BtGuard 等待 + 自愈
# ======================================================================
print("\n=== 插桩 d/a.smali (蓝牙等待自愈) ===")
p = os.path.join(DST, D_A)
s = read(p)

ANCHOR = "    :goto_1\n\n    # --- patchB:"
assert s.count(ANCHOR) == 1, ":goto_1 + patchB 锚点在 d/a.smali 里不是唯一（%d 处）" % s.count(ANCHOR)

INS = (
    "    :goto_1\n"
    "\n"
    "    # --- 1.22: 蓝牙未开启 -> 交给 BtGuard 等待+自愈, 不再一次性跳过 ---\n"
    "    #      v0=原结论(1=准备跳过)  v1=this(实现 Runnable, 重试时原样重跑)\n"
    "    invoke-static {v0, v1}, "
    "Lcom/baidu/carlifevehicle/logxfer/BtGuard;->onSkipDecision(ZLjava/lang/Runnable;)Z\n"
    "\n"
    "    move-result v0\n"
    "\n"
    "    # --- patchB:"
)
s = s.replace(ANCHOR, INS)
write(p, s)
print("  [OK] 已插入 BtGuard 调用（:goto_1 之后）")


# ======================================================================
# 3) 版本号
# ======================================================================
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
assert "versionCode: 121" in yml, "apktool.yml versionCode 不是 121"
yml = yml.replace("versionCode: 121", "versionCode: 122")
assert "versionName: mod1.21" in yml, "apktool.yml versionName 不是 mod1.21"
yml = yml.replace("versionName: mod1.21", "versionName: mod1.22")
write(yml_p, yml)
print("\nOK apktool.yml: versionCode=122 versionName=mod1.22")


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


da = read(os.path.join(DST, D_A))
bt = read(os.path.join(DST, os.path.join(LOGXFER_SMALI_DST, "BtGuard.smali")))
dd = read(os.path.join(DST, D_D))
cl = read(os.path.join(DST, CLOG))
lh = read(os.path.join(DST, LOGHTTP))

# --- 本次改动 ---
chk("BtGuard 有 onSkipDecision(ZLjava/lang/Runnable;)Z",
    ".method public static onSkipDecision(ZLjava/lang/Runnable;)Z" in bt)
chk("BtGuard 用 getDefaultAdapter 复核状态",
    "getDefaultAdapter" in bt)
chk("BtGuard 会请求 enable()", ";->enable()Z" in bt)
chk("BtGuard 重试走工作线程(ScheduledExecutorService)",
    "ScheduledExecutorService" in bt or "schedule(" in bt)
chk("BtGuard 不上主线程(无 MainLooper)",
    "getMainLooper" not in bt)
chk("d/a.smali 已插入调用",
    "BtGuard;->onSkipDecision(ZLjava/lang/Runnable;)Z" in da)
chk("d/a.smali 插入点紧随 :goto_1",
    "    :goto_1\n" in da and da.index("BtGuard;->onSkipDecision") > da.index("    :goto_1"))
chk("d/a.smali move-result 写回 v0",
    "BtGuard;->onSkipDecision(ZLjava/lang/Runnable;)Z\n\n    move-result v0" in da)

# --- 回归：1.20 修的 VerifyError（血泪 11） ---
# 注意：run() 里本来就有 11 处 new-array（SDK 原生的 varargs 日志），
# 1.20 修的是"我们插桩引入的那一套"。所以这里比的是**没变多**，
# 并且插桩区（:goto_1 之前）必须干净。
n_new_array_src = read(os.path.join(SRC, D_A)).count("new-array")
chk("回归: d/a.smali 未新增 new-array（%d == %d）" % (da.count("new-array"), n_new_array_src),
    da.count("new-array") == n_new_array_src)
# 只看真正的指令行：第 31 行的注释里就写着 "不再 new-array/aput-object"，
# 拿子串直接搜会把自己写的注释当成违规（本次踩到）。
head = da[:da.index("    :goto_1")]
ins_bad = [l for l in head.splitlines()
           if l.strip().startswith(("new-array", "aput-object"))]
chk("回归: 插桩区(:goto_1 之前)无 new-array/aput-object 指令",
    not ins_bad)
chk("回归: 阶段1 插桩仍是零参静态方法 logBtStage1Entry",
    "invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtStage1Entry()V" in da)

# --- 回归：1.18 的 1 秒重试（血泪 13） ---
chk("回归: d.smali 的 1s 重试 postDelayed(0x3e8) 还在",
    "const-wide/16 v8, 0x3e8" in dd and "postDelayed" in dd)
chk("回归: patchB 自动 enable 还在",
    ";->enable()Z" in da and "iput-boolean v6, v2, La/a/a/a/m/m/d/d;->h:Z" in da)

# --- 回归：1.21 的打包下载 ---
chk("回归: LogHttpServer 仍有 canonicalKey",
    "canonicalKey" in lh)
chk("回归: LogHttpServer 仍有 uniqueName",
    "uniqueName" in lh)

# --- 回归：日志区 6 条蓝牙插桩 ---
for m in ("logBtStage1Entry", "logBtNoTarget", "logBtConnected",
          "logBtConnectFail", "logBtNoBonded", "logBtAllFailed"):
    chk("回归: ConnLog 仍有 %s" % m, ".method public static %s()V" % m in cl)

# --- 版本号 ---
chk("apktool.yml versionCode=122", "versionCode: 122" in read(os.path.join(DST, "apktool.yml")))
chk("apktool.yml versionName=mod1.22", "versionName: mod1.22" in read(os.path.join(DST, "apktool.yml")))

print("\n" + ("[DONE] _w122 就绪" if bad == 0 else "[FAIL] %d 项自检不通过" % bad))
sys.exit(1 if bad else 0)
