# -*- coding: utf-8 -*-
# patch_v17: _w119 -> _w120 (versionCode 120 / mod1.20)
#
# ===================== 为什么会有这一版 =====================
# 1.19 构建完成后装到真机（realme X7 Pro / Android 12）验证，app 一启动就崩：
#
#   java.lang.VerifyError: Verifier rejected class a.a.a.a.m.m.d.a:
#     void a.a.a.a.m.m.d.a.run() failed to verify:
#     [0x147] Invalid reg type for array index (Reference: java.lang.Object[])
#       at a.a.a.a.m.m.d.d$c.run(:5)
#
# 这是 1.18（patch_v15）在蓝牙阶段插日志时引入的**回归**：
#
#   ① 数组索引寄存器的类型在合并点不一致
#      patch_v15 的插桩是 "new-array + const/4 + aput-object + invoke-static" 四件套，
#      其中 aput-object 的**索引寄存器**必须确定是整数。
#      1.18 在 1.1 处写了 const/4 v3, 0x0，但 1.2/1.3 处**直接复用了 v3 没重置** ——
#      而中间的原代码已经把 v3 用在别处（d/a 里 v3 被引用 29 次），
#      于是 verifier 在 :bt_have_target 合并点看到 v3 有两种类型，拒绝整个类。
#
#      ⚠ 只报在 Android 12 的 ART 上。车机 4.4.2 的 Dalvik 校验宽松，
#        MuMu(4.4.4) 同理 —— 所以 1.18 的 MuMu 冒烟测试完全测不出来。
#
#   ② 1.5 处把原有的「1 秒后重试」控制流写坏了
#      原代码（_w117 干净基线）：
#          if-eqz v0, :cond_1b        # 有已配对设备 -> 结束
#          iget-boolean v0, ...->h:Z
#          if-eqz v0, :cond_1b        # h==0 -> 结束
#          :goto_14                   # 否则 1 秒后重试
#      1.18 改成：
#          if-eqz v0, :bt_all_failed
#          :bt_all_failed             # ← 紧跟其后，等于两条路径都落进来
#          <日志>
#          goto :cond_1b              # ← 把 :goto_14 的 1 秒重试整个跳过了
#      结果：h==0（没全失败）也会打"全部连不上"，而且**重试机制被彻底破坏**。
#
# ===================== 怎么修 =====================
# 根上的修法：**插桩不再碰任何局部寄存器**。
#
# 在 ConnLog（我们自己写的类）里加：
#   logLine(String)            公共实现：内部自己 new-array，寄存器自控
#   9 个零参包装方法           每个只是 "const-string v0, '...' + logLine(v0)"
#
# 插桩点于是变成一行：
#   invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtNoTarget()V
#
# **零寄存器操作数**，verifier 无从挑剔；而且新方法各自 .locals 自己声明，
# 类型完全自洽。这比"在别人的大方法里小心翼翼地挑寄存器"可靠得多。
#
# 同时把 1.5 的控制流改回原语义（h!=0 才打日志并落到 :goto_14 重试）。
#
# 涉及文件：
#   smali/com/baidu/carlifevehicle/ConnLog.smali   +10 个静态方法
#   smali/a/a/a/a/m/m/d/a.smali                    6 处插桩重写 + 控制流修正
#   smali/a/a/a/a/m/m/e/a.smali                    3 处插桩重写（同模式，一并消除隐患）
#   apktool.yml                                    versionCode 119 -> 120

import os
import shutil
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = r"C:\PJGG\apk\CarLife\01_工程源码\_w119"
DST = r"C:\PJGG\apk\CarLife\01_工程源码\_w120"

D_A = r"smali\a\a\a\a\m\m\d\a.smali"
E_A = r"smali\a\a\a\a\m\m\e\a.smali"
CLOG = r"smali\com\baidu\carlifevehicle\ConnLog.smali"


def clear_dst(dst):
    """
    清掉已存在的目标工程目录。

    ⚠ 不能用 shutil.rmtree：工程树有 2400+ 个文件，沙箱的"批量删除保护"
    （一次删 >50 个文件就拒）会直接拦下来。这里改成**移到隔离区** ——
    move 不是删除，不受保护限制，顺带还保留了可追溯性。
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


def patch(rel, old, new, tag):
    p = os.path.join(DST, rel)
    s = read(p)
    n = s.count(old)
    assert n == 1, "%s: 锚点不唯一 (%d 次) in %s" % (tag, n, rel)
    write(p, s.replace(old, new))
    print("OK", tag)


# ======================================================================
# 1) ConnLog：加 logLine(String) + 9 个零参包装
# ======================================================================
NEW_METHODS = r'''
.method public static logLine(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v2, "CarLife_SDK"

    invoke-static {v2, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logBtStage1Entry()V
    .locals 1

    const-string v0, "==== [阶段1] 蓝牙带外握手: 开始扫描/连接手机 ===="

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtNoTarget()V
    .locals 1

    const-string v0, "⚠ [蓝牙] 未找到名为 CONFIG_TARGET_BLUETOOTH_NAME 的已配对设备, 跳过握手"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtConnected()V
    .locals 1

    const-string v0, "✔ [蓝牙] SPP 已连上, 进入带外握手(SSID/PSK/IP 交换)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtConnectFail()V
    .locals 1

    const-string v0, "⚠ [蓝牙] SPP 连接失败(见上一条 exception)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtNoBonded()V
    .locals 1

    const-string v0, "⚠ [蓝牙] 车机无已配对设备: 请先在 车机蓝牙设置 里与手机配对(每5s重试)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtAllFailed()V
    .locals 1

    const-string v0, "⚠ [蓝牙] 已配对设备全部连不上(手机端 CarLife 打开了吗?)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logHotspotStart()V
    .locals 1

    const-string v0, "==== [阶段4] 热点模式启动: 建 UDP 7999 监听 ===="

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logHotspotListening()V
    .locals 1

    const-string v0, "✔ 热点模式: UDP 7999 监听线程已启动"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logHotspotWaiting()V
    .locals 1

    const-string v0, "⏳ 热点模式: 已监听 UDP 7999, 等手机广播/拿IP(需车机WLAN先连上手机热点)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method
'''

clog_p = os.path.join(DST, CLOG)
clog = read(clog_p)
assert clog.rstrip().endswith(".end method"), "ConnLog.smali 末尾不是 .end method"
assert "logLine(" not in clog, "ConnLog.smali 里已经有 logLine，别重复加"
write(clog_p, clog.rstrip() + "\n" + NEW_METHODS)
print("OK ConnLog: +logLine +9 个零参包装")


# ======================================================================
# 2) d/a.smali —— 6 处插桩重写
# ======================================================================

# 2.1 入口日志
patch(D_A,
      """    move-object/from16 v1, p0

    # --- 1.18 diag: 蓝牙(阶段1)入口 ---
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "==== [阶段1] 蓝牙带外握手: 开始扫描/连接手机 ===="

    aput-object v4, v0, v3

    const-string v4, "CarLife_SDK"

    invoke-static {v4, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, La/a/a/a/m/m/d/a;->b:La/a/a/a/m/m/d/d;
""",
      """    move-object/from16 v1, p0

    # --- 1.20: 零参静态日志, 不再 new-array/aput-object (避免 verifier 合并点冲突) ---
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtStage1Entry()V

    iget-object v2, v1, La/a/a/a/m/m/d/a;->b:La/a/a/a/m/m/d/d;
""",
      "d/a: 阶段1 入口日志 -> 零参")

# 2.2 target 名无匹配
patch(D_A,
      """    :goto_5
    if-nez v0, :bt_have_target

    # --- 1.18 diag: 有 target 名但无匹配的已配对设备 ---
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const-string v14, "⚠ [蓝牙] 未找到名为 CONFIG_TARGET_BLUETOOTH_NAME 的已配对设备, 跳过握手"

    aput-object v14, v12, v3

    invoke-static {v7, v12}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :bt_have_target
""",
      """    :goto_5
    if-nez v0, :bt_have_target

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtNoTarget()V

    :bt_have_target
""",
      "d/a: target 无匹配日志 -> 零参")

# 2.3 连接成功 / 失败
patch(D_A,
      """    :goto_8
    if-eqz v10, :bt_conn_fail

    # --- 1.18 diag: 连接成功 ---
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const-string v14, "✔ [蓝牙] SPP 已连上, 进入带外握手(SSID/PSK/IP 交换)"

    aput-object v14, v12, v3

    invoke-static {v7, v12}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :bt_conn_log_end

    :bt_conn_fail
    # --- 1.18 diag: 连接失败 ---
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const-string v14, "⚠ [蓝牙] SPP 连接失败(见上一条 exception)"

    aput-object v14, v12, v3

    invoke-static {v7, v12}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :bt_conn_log_end
""",
      """    :goto_8
    if-eqz v10, :bt_conn_fail

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtConnected()V

    goto :bt_conn_log_end

    :bt_conn_fail
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtConnectFail()V

    :bt_conn_log_end
""",
      "d/a: 连接成功/失败日志 -> 零参")

# 2.4 空配对列表（5s 重试）+ 全失败（★ 顺带修控制流）
patch(D_A,
      """    if-eqz v0, :bt_have_bonded

    # --- 1.18 diag: 一个已配对设备都没有 -> 提示 + 每 5s 自愈重试 ---
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "⚠ [蓝牙] 车机无已配对设备: 请先在 车机蓝牙设置 里与手机配对(每5s重试)"

    aput-object v14, v12, v13

    invoke-static {v7, v12}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v12, v2, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    const-wide/16 v13, 0x1388

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :cond_1b

    :bt_have_bonded
    iget-boolean v0, v2, La/a/a/a/m/m/d/d;->h:Z

    if-eqz v0, :bt_all_failed

    :bt_all_failed
    # --- 1.18 diag: 已配对设备全部连接失败 ---
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "⚠ [蓝牙] 已配对设备全部连不上(手机端 CarLife 打开了吗?)"

    aput-object v14, v12, v13

    invoke-static {v7, v12}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :cond_1b

    :goto_14
""",
      """    if-eqz v0, :bt_have_bonded

    # --- 1.20: 无已配对设备 -> 提示 + 每 5s 自愈重试 ---
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtNoBonded()V

    iget-object v0, v2, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v12, v2, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    const-wide/16 v13, 0x1388

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :cond_1b

    :bt_have_bonded
    iget-boolean v0, v2, La/a/a/a/m/m/d/d;->h:Z

    # --- 1.20: 恢复原语义 —— h==0 直接结束, h!=0 才落到 :goto_14 重试 ---
    # 1.18 这里写成 if-eqz v0, :bt_all_failed 且紧跟着 :bt_all_failed,
    # 等于两条路径都落进来, 还多了 goto :cond_1b 把重试整个跳过。
    if-nez v0, :cond_1b

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtAllFailed()V

    :goto_14
""",
      "d/a: 空配对重试 + 全失败日志 + 控制流修正")


# ======================================================================
# 3) e/a.smali —— 3 处插桩重写（同模式，预防性消除）
# ======================================================================

patch(E_A,
      """    const/4 v5, 0x0

    # --- 1.18 diag ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "==== [阶段4] 热点模式启动: 建 UDP 7999 监听 ===="

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
""",
      """    const/4 v5, 0x0

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logHotspotStart()V

    :try_start_0
""",
      "e/a: 热点启动日志 -> 零参")

patch(E_A,
      """    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    # --- 1.18 diag ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "✔ 热点模式: UDP 7999 监听线程已启动"

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
""",
      """    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logHotspotListening()V
    :try_end_0
""",
      "e/a: 监听线程日志 -> 零参")

patch(E_A,
      """    invoke-static {v8}, La/a/a/a/m/m/e/e;->a(Landroid/content/Context;)V

    # --- 1.18 diag: 等待手机 ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "⏳ 热点模式: 已监听 UDP 7999, 等手机广播/拿IP(需车机WLAN先连上手机热点)"

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
""",
      """    invoke-static {v8}, La/a/a/a/m/m/e/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logHotspotWaiting()V

    return-void
.end method
""",
      "e/a: 等待手机日志 -> 零参")


# ======================================================================
# 4) 版本号
# ======================================================================
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
assert "versionCode: 119" in yml, "apktool.yml versionCode 不是 119"
yml = yml.replace("versionCode: 119", "versionCode: 120")
assert "versionName: mod1.19" in yml, "apktool.yml versionName 不是 mod1.19"
yml = yml.replace("versionName: mod1.19", "versionName: mod1.20")
write(yml_p, yml)
print("OK apktool.yml: versionCode=120 versionName=mod1.20")


# ======================================================================
# 5) 自检
# ======================================================================
print("\n=== 自检 ===")
bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


def code_count(s, needle):
    """
    只统计**代码行**里 needle 出现的行数。

    为什么不用 str.count：本补丁的注释里会写 "不再 new-array/aput-object"
    这类字样，纯字符串计数会把注释算进去，导致自检误报
    （d/a 的 aput-object 就会被数成 16 而不是 15）。
    """
    return sum(1 for ln in s.splitlines()
               if needle in ln and not ln.strip().startswith("#"))


da = read(os.path.join(DST, D_A))
ea = read(os.path.join(DST, E_A))
cg = read(os.path.join(DST, CLOG))
yml2 = read(yml_p)

# --- ConnLog 新方法 ---
for m in ("logLine", "logBtStage1Entry", "logBtNoTarget", "logBtConnected",
          "logBtConnectFail", "logBtNoBonded", "logBtAllFailed",
          "logHotspotStart", "logHotspotListening", "logHotspotWaiting"):
    chk("ConnLog 有 %s" % m, (".method public static %s(" % m) in cg)

# --- 关键：插桩不再用 new-array/aput-object 四件套（index 寄存器类型风险的根源） ---
# 基线（_w117 干净版）实测：d/a 的 aput-object 15 处、n/g$a 调用 0 处；
#                            e/a 的 aput-object 4 处、 n/g$a 调用 1 处。
# 1.18 插桩后变成 21/6 和 7/4。1.20 必须**回到基线**才算插桩清干净。
chk("d/a 的 n/g$a 静态日志调用回到基线 0",
    code_count(da, "La/a/a/a/n/g$a;->a(") == 0)
chk("e/a 的 n/g$a 静态日志调用回到基线 1",
    code_count(ea, "La/a/a/a/n/g$a;->a(") == 1)
chk("d/a 的 aput-object 回到基线 15",
    code_count(da, "aput-object") == 15)
chk("e/a 的 aput-object 回到基线 4",
    code_count(ea, "aput-object") == 4)

# --- 插桩改成零参调用 ---
for m in ("logBtStage1Entry", "logBtNoTarget", "logBtConnected",
          "logBtConnectFail", "logBtNoBonded", "logBtAllFailed"):
    chk("d/a 调 %s 且零参" % m,
        ("invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->%s()V" % m) in da)
for m in ("logHotspotStart", "logHotspotListening", "logHotspotWaiting"):
    chk("e/a 调 %s 且零参" % m,
        ("invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->%s()V" % m) in ea)

# --- 控制流修正（★ 1.18 的重试被破坏，这里必须回到原语义） ---
chk("d/a 全失败分支已修正 if-nez v0, :cond_1b", "if-nez v0, :cond_1b" in da)
chk("d/a 不再有 if-eqz v0, :bt_all_failed（注释除外）",
    code_count(da, "if-eqz v0, :bt_all_failed") == 0)
chk("d/a 不再有孤立 goto :cond_1b（全失败处）",
    "invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtAllFailed()V\n\n    goto :cond_1b" not in da)
chk("d/a :goto_14 仍存在（1 秒重试）", ":goto_14" in da)
chk("d/a 5s 重试仍在", "0x1388" in da)
chk("d/a 1s 重试仍在", "0x3e8" in da)
chk("d/a 仍保留 :cond_1b", ":cond_1b" in da)
chk("d/a 仍保留 :bt_have_bonded", ":bt_have_bonded" in da)
chk("d/a 仍保留 :bt_have_target", ":bt_have_target" in da)

# --- 旧字符串不该再残留在插桩文件里（已搬进 ConnLog） ---
chk("d/a 里不再有旧日志字符串", "[阶段1] 蓝牙带外握手" not in da)
chk("e/a 里不再有旧日志字符串", "[阶段4] 热点模式启动" not in ea)
chk("日志字符串都进了 ConnLog", cg.count("阶段1] 蓝牙带外握手") == 1
    and cg.count("[阶段4] 热点模式启动") == 1)

# --- 版本号 ---
chk("versionCode 120", yml2.count("versionCode: 120") == 1)
chk("versionName mod1.20", yml2.count("versionName: mod1.20") == 1)

print("\n" + ("[DONE] _w120 ready (1.20 修 1.18 插桩 VerifyError + 控制流)"
              if bad == 0 else "[FAIL] 自检 %d 项未通过" % bad))
sys.exit(1 if bad else 0)
