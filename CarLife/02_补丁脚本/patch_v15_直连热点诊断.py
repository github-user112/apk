# -*- coding: utf-8 -*-
# patch_v15: _w117 -> _w118 (versionCode 118 / mod1.18)
#
# 车机 4.4.2 实测 1.17 报出三个问题，本版是「定位 + 修复」版：
#
#   问题1) 直连：组网成功(isGroupOwner=true, 192.168.49.1)但手机不加入, 最后"连接超时"
#      -> 根因: 阶段1 蓝牙 SPP 带外握手没做成。手机拿不到 SSID/PSK 就不会去 join 组。
#        代码里 BluetoothDeviceDiscover.run() (a/a/a/a/m/m/d/a.smali) 有三处**静默早退**,
#        不打任何日志:
#          a) 配了 CONFIG_TARGET_BLUETOOTH_NAME 但没有任何已配对设备名字匹配 -> 直接 return
#          b) getBondedDevices() 为空(车机没和手机配对过) -> 直接 return, 而且**永不重试**
#          c) 已配对设备全部 connect 失败且 d/d.h==0 -> 直接 return
#        因为 SDK 日志器 n/g.c() 已经桥接到 ConnLog 屏幕上, "屏幕上看不到蓝牙日志"
#        就等于"真的静默了"。所以本版给这三处补日志, 并让 (b) 每 5s 自动重试一次
#        (这样用户先打开 App 再去车机蓝牙设置配对, 也能自己接上, 不用重启 App)。
#
#   问题2) 点「热点」页签会卡死
#      -> ConnModeHelper.selectMode() 是在**点击回调 = UI 线程**上直接跑
#         m/d.i(mode) -> m/m/b.j()(停旧任务/removeGroup/停定时器) + V()(建新任务/绑 socket/起线程),
#         再加一句 SharedPreferences.commit() 的同步 fsync。弱车机上足够触发 ANR。
#        修复: 新增 ConnSwitchTask(Thread) 把 m/b;b() + i(mode) 挪到后台线程;
#        并把 commit() 换成 apply()(异步落盘)。
#
#   问题3) 热点连不上
#      -> 全仓没有 WifiManager.addNetwork / WifiConfiguration =>
#         车机端**不会自己连手机热点**, 必须用户先在车机 WLAN 设置里连上手机热点(或手机连车机AP)。
#        本版不改这个架构, 只补足日志把"卡在哪一步"暴露出来(建 socket 结果 / 等待广播)。
#
# 改动文件:
#   smali/a/a/a/a/m/m/d/a.smali        +蓝牙三处静默点日志, +空配对列表 5s 重试
#   smali/a/a/a/a/m/m/e/a.smali        +热点启动/监听线程/等待广播 三条日志
#   smali/com/baidu/carlifevehicle/ConnModeHelper.smali   切换异步化 + apply()
#   smali/com/baidu/carlifevehicle/ConnSwitchTask.smali   新增(Thread)
#   apktool.yml                        versionCode 117->118, versionName mod1.17->mod1.18

import os, shutil, subprocess, sys

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = r"C:\PJGG\apk\CarLife\01_工程源码\_w117"
DST = r"C:\PJGG\apk\CarLife\01_工程源码\_w118"

D_A = r"smali\a\a\a\a\m\m\d\a.smali"
E_A = r"smali\a\a\a\a\m\m\e\a.smali"
CMH = r"smali\com\baidu\carlifevehicle\ConnModeHelper.smali"
CST = r"smali\com\baidu\carlifevehicle\ConnSwitchTask.smali"

if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        shutil.rmtree(DST)
    r = subprocess.run(["robocopy", SRC, DST, "/E", "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS"],
                       capture_output=True)
    if r.returncode > 7:               # robocopy: 0/1 正常, >7 才是失败
        sys.exit("robocopy failed: %d" % r.returncode)


def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")


def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def patch(rel, old, new, tag, count=1):
    p = os.path.join(DST, rel)
    s = read(p)
    got = s.count(old)
    assert got == count, "%s: anchor 出现 %d 次(期望 %d): %s" % (tag, got, count, rel)
    write(p, s.replace(old, new))
    print("OK", tag)


# ======================================================================
# 1) a/a/a/a/m/m/d/a.smali —— 蓝牙阶段诊断
# ======================================================================

# 1.1 入口日志
patch(D_A,
      """    move-object/from16 v1, p0

    iget-object v2, v1, La/a/a/a/m/m/d/a;->b:La/a/a/a/m/m/d/d;
""",
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
      "d/a: 阶段1 入口日志")

# 1.2 配了 target 名但无匹配设备（原来静默 return）
patch(D_A,
      """    :goto_5
    if-eqz v0, :cond_1b
""",
      """    :goto_5
    if-nez v0, :bt_have_target

    # --- 1.18 diag: 有 target 名但无匹配的已配对设备 ---
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const-string v14, "⚠ [蓝牙] 未找到名为 CONFIG_TARGET_BLUETOOTH_NAME 的已配对设备, 跳过握手"

    aput-object v14, v12, v3

    invoke-static {v7, v12}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :bt_have_target
    if-eqz v0, :cond_1b
""",
      "d/a: target 名无匹配日志")

# 1.3 连接成功 / 失败
patch(D_A,
      """    :goto_8
    if-eqz v10, :cond_c
""",
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
    if-eqz v10, :cond_c
""",
      "d/a: 连接成功/失败日志")

# 1.4 cond_1a：空配对列表 → 提示 + 5s 重试；全部失败 → 提示
patch(D_A,
      """    :cond_1a
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    iget-boolean v0, v2, La/a/a/a/m/m/d/d;->h:Z

    if-eqz v0, :cond_1b
""",
      """    :cond_1a
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :bt_have_bonded

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
""",
      "d/a: 空配对列表重试 + 全失败日志")

# 1.5 :goto_14 之前补「全部失败」日志分支
patch(D_A,
      """    :goto_14
    iget-object v0, v2, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;
""",
      """    :bt_all_failed
    # --- 1.18 diag: 已配对设备全部连接失败 ---
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "⚠ [蓝牙] 已配对设备全部连不上(手机端 CarLife 打开了吗?)"

    aput-object v14, v12, v13

    invoke-static {v7, v12}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :cond_1b

    :goto_14
    iget-object v0, v2, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;
""",
      "d/a: 全部失败日志")


# ======================================================================
# 2) a/a/a/a/m/m/e/a.smali —— 热点(阶段4)诊断
# ======================================================================

patch(E_A,
      """    const/4 v5, 0x0

    :try_start_0
    new-array v6, v4, [Ljava/lang/Object;
""",
      """    const/4 v5, 0x0

    # --- 1.18 diag ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "==== [阶段4] 热点模式启动: 建 UDP 7999 监听 ===="

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-array v6, v4, [Ljava/lang/Object;
""",
      "e/a: 热点启动日志")

patch(E_A,
      """    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
""",
      """    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    # --- 1.18 diag ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "✔ 热点模式: UDP 7999 监听线程已启动"

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
""",
      "e/a: 监听线程已启动日志")

patch(E_A,
      """    invoke-static {v8}, La/a/a/a/m/m/e/e;->a(Landroid/content/Context;)V

    return-void
.end method
""",
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
      "e/a: 等待手机日志")


# ======================================================================
# 3) ConnModeHelper —— 切换异步化 + apply()
# ======================================================================

patch(CMH,
      """    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0, p0}, La/a/a/a/m/c;->i(I)V
""",
      """    # --- 1.18: 停旧任务/建新任务/起任务的整条链放到后台线程, 避免卡死 UI ---
    new-instance v0, Lcom/baidu/carlifevehicle/ConnSwitchTask;

    invoke-direct {v0, p0}, Lcom/baidu/carlifevehicle/ConnSwitchTask;-><init>(I)V

    invoke-virtual {v0}, Lcom/baidu/carlifevehicle/ConnSwitchTask;->start()V
""",
      "ConnModeHelper: 切换异步化")

patch(CMH,
      """    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
""",
      """    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
""",
      "ConnModeHelper: commit -> apply")


# ======================================================================
# 4) 新增 ConnSwitchTask.smali
# ======================================================================
CST_CODE = """.class public Lcom/baidu/carlifevehicle/ConnSwitchTask;
.super Ljava/lang/Thread;
.source "ConnSwitchTask.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p1, p0, Lcom/baidu/carlifevehicle/ConnSwitchTask;->a:I

    const-string v0, "CarLifeSwitch"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "模式切换(后台线程) 开始, CONNECT_TYPE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/carlifevehicle/ConnSwitchTask;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    iget v1, p0, Lcom/baidu/carlifevehicle/ConnSwitchTask;->a:I

    invoke-interface {v0, v1}, La/a/a/a/m/c;->i(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "模式切换(后台线程) 完成"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "⚠ 模式切换异常(见 logcat)"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
"""
write(os.path.join(DST, CST), CST_CODE)
print("OK 新增 ConnSwitchTask.smali")


# ======================================================================
# 5) 版本号
# ======================================================================
yml = read(os.path.join(DST, "apktool.yml"))
assert "versionCode: 117" in yml, "apktool.yml versionCode 不是 117"
yml = yml.replace("versionCode: 117", "versionCode: 118")
assert "versionName: mod1.17" in yml, "apktool.yml versionName 不是 mod1.17"
yml = yml.replace("versionName: mod1.17", "versionName: mod1.18")
write(os.path.join(DST, "apktool.yml"), yml)
print("OK apktool.yml: versionCode=118 versionName=mod1.18")


# ======================================================================
# 6) 自检
# ======================================================================
bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


da = read(os.path.join(DST, D_A))
ea = read(os.path.join(DST, E_A))
cm = read(os.path.join(DST, CMH))
cs = read(os.path.join(DST, CST))

chk("d/a run 仍是 .locals 16", "    .locals 16\n" in da)
chk("d/a 新增标签 bt_have_target", ":bt_have_target" in da)
chk("d/a 新增标签 bt_conn_fail", ":bt_conn_fail" in da)
chk("d/a 新增标签 bt_have_bonded", ":bt_have_bonded" in da)
chk("d/a 新增标签 bt_all_failed", ":bt_all_failed" in da)
chk("d/a 原 goto_14 仍在", ":goto_14" in da)
chk("d/a 5s 重试(0x1388)", "0x1388" in da)
chk("d/a 未破坏 cond_1b", da.count(":cond_1b") >= 3)
chk("d/a 新日志走 n/g$a", da.count("La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V") >= 5)

chk("e/a a() 仍是 .locals 9", "    .locals 9\n" in ea)
chk("e/a 阶段4 启动日志", "[阶段4] 热点模式启动" in ea)
chk("e/a 监听线程日志", "UDP 7999 监听线程已启动" in ea)
chk("e/a 等待手机日志", "等手机广播" in ea)

chk("CMH 已改成 ConnSwitchTask", "Lcom/baidu/carlifevehicle/ConnSwitchTask;->start()V" in cm)
# applyDefaultMode() 里本来就有一处同步 i(I)（开机恢复上次模式），只应剩它一处
chk("CMH selectMode 里的同步 i(I) 已移除",
    cm.count("La/a/a/a/m/c;->i(I)V") == 1)
chk("CMH commit 已换 apply",
    "SharedPreferences$Editor;->apply()V" in cm and "SharedPreferences$Editor;->commit()Z" not in cm)
chk("CMH selectMode 仍是 .locals 3", "    .locals 3\n" in cm)

chk("ConnSwitchTask 类头正确", ".super Ljava/lang/Thread;" in cs)
chk("ConnSwitchTask 调 m/b;b()", "La/a/a/a/m/b;->b()La/a/a/a/m/c;" in cs)
chk("ConnSwitchTask 调 i(I)V", "La/a/a/a/m/c;->i(I)V" in cs)
chk("ConnSwitchTask .locals 4", "    .locals 4\n" in cs)

chk("apktool.yml versionCode=118", "versionCode: 118" in yml)
chk("apktool.yml versionName=mod1.18", "versionName: mod1.18" in yml)

if bad:
    sys.exit("[FAIL] 自检未通过(%d 项)" % bad)
print("\n[DONE] _w118 ready (1.18 直连/热点 诊断与修复)")
