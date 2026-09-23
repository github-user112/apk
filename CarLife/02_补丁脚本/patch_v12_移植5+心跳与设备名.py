# -*- coding: utf-8 -*-
# patch_v12: _w114 -> _w115 (versionCode 115 / mod1.15)
#
# 移植 5+ 版(牧野兔 v2026.01.06) 直连流程里 1.14 真正缺的两块:
#   阶段4 应用层心跳: 收包刷新时间戳, 30s 无收包判离线并 terminate 触发自愈;
#          保活期每 2s 发 MSG_VIDEO_HEARTBEAT(0x20002), 与 5+ 同协议号。
#   阶段0/3 设备名反向适配: THIS_DEVICE_CHANGED 广播读回系统 deviceName,
#          握手发 CarlifeWirlessTarget 时若配置为空则用系统名兜底。
# 已确认无需移植: IP 就绪轮询(1.6 e.smali :cond_6 已有 1s 重发),
#                stop-before-discover 串行队列(1.6 n/i/b + n/i/c/{b,a} 已有,
#                且 stop 失败转 onSuccess 降级也存在)。
#
# 新增类:
#   a/a/a/a/m/m/e/f.smali   心跳管理(静态): a()V=touch / a(d)V=start / b()V=stop / b(d)V=发心跳
#   a/a/a/a/m/m/e/f$a.smali 周期 Runnable: 超时判定 + 触发发送
#   a/a/a/a/m/m/d/m.smali   设备名兜底(静态): a(Intent)V=存系统名 / a(String)String=兜底取值
#
# 内联插桩 6 处:
#   e/b.smali c() 收包路径 -> f->a()V  (touch)
#   e/d.smali a() connect 尾部 -> f->a(Ld;)V (启动看门狗)
#   e/d.smali f() terminate 开头 -> f->b()V (停看门狗)
#   d/e.smali sswitch_2 两处 d 字段读取 -> m->a(String) 兜底
#   d/i.smali onReceive :cond_8 前插 THIS_DEVICE_CHANGED 分支 -> m->a(Intent)V

import os, shutil, subprocess, sys, re

SRC = r"C:\PJGG\apk\CarLife\01_工程源码\_w114"
DST = r"C:\PJGG\apk\CarLife\01_工程源码\_w115"

if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        shutil.rmtree(DST)
    # robocopy 退出码 1 = 成功
    r = subprocess.run(["robocopy", SRC, DST, "/E", "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS"],
                       capture_output=True)
    if r.returncode > 7:
        sys.exit("robocopy failed: %d" % r.returncode)

D = DST.replace("\\", "/")

def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")

def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)

def patch(path, old, new, tag):
    p = os.path.join(DST, path)
    s = read(p)
    assert s.count(old) == 1, "%s: anchor not unique (%d) in %s" % (tag, s.count(old), path)
    write(p, s.replace(old, new))
    print("OK", tag)

# ---------------------------------------------------------------- 新类 1: 心跳管理 f.smali
HEARTBEAT = '''.class public final La/a/a/a/m/m/e/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:J

.field public static b:Z

.field public static c:Z

.field public static d:Ljava/lang/Runnable;


# direct methods
.method public static a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, La/a/a/a/m/m/e/f;->a:J

    const/4 v0, 0x1

    sput-boolean v0, La/a/a/a/m/m/e/f;->c:Z

    return-void
.end method

.method public static a(La/a/a/a/m/m/e/d;)V
    .locals 7

    sget-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    if-eqz v0, :go

    return-void

    :go
    const/4 v0, 0x1

    sput-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, La/a/a/a/m/m/e/f;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, La/a/a/a/m/m/e/f;->a:J

    new-instance v2, La/a/a/a/m/m/e/f$a;

    invoke-direct {v2, p0}, La/a/a/a/m/m/e/f$a;-><init>(La/a/a/a/m/m/e/d;)V

    sput-object v2, La/a/a/a/m/m/e/f;->d:Ljava/lang/Runnable;

    sget-object v1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    const-string v0, "CarLifeHB"

    const-string v1, "heartbeat watchdog started (period 2000ms, timeout 30000ms)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    sget-object v1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    sget-object v2, La/a/a/a/m/m/e/f;->d:Ljava/lang/Runnable;

    if-eqz v2, :end

    invoke-virtual {v1, v2}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    :end
    const-string v0, "CarLifeHB"

    const-string v1, "heartbeat watchdog stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(La/a/a/a/m/m/e/d;)V
    .locals 5

    :try_start_0
    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v1, 0x20002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/m/m/e/d;->g(La/a/a/a/a/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :end

    :catch_0
    move-exception v0

    const-string v1, "CarLifeHB"

    const-string v2, "heartbeat send failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :end
    return-void
.end method
'''

HEARTBEAT_RUN = '''.class public final La/a/a/a/m/m/e/f$a;
.super Ljava/lang/Object;
.source ""


# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:La/a/a/a/m/m/e/d;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/e/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/e/f$a;->a:La/a/a/a/m/m/e/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    if-eqz v0, :alive_check

    goto :end

    :alive_check
    sget-boolean v0, La/a/a/a/m/m/e/f;->c:Z

    if-eqz v0, :end

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, La/a/a/a/m/m/e/f;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :send

    const-string v0, "CarLifeHB"

    const-string v1, "heartbeat timeout 30s, terminate transport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La/a/a/a/m/m/e/f;->b()V

    iget-object v4, p0, La/a/a/a/m/m/e/f$a;->a:La/a/a/a/m/m/e/d;

    invoke-virtual {v4}, La/a/a/a/m/m/e/d;->f()V

    goto :end

    :send
    iget-object v4, p0, La/a/a/a/m/m/e/f$a;->a:La/a/a/a/m/m/e/d;

    invoke-static {v4}, La/a/a/a/m/m/e/f;->b(La/a/a/a/m/m/e/d;)V

    :end
    return-void
.end method
'''

DEVNAME = '''.class public final La/a/a/a/m/m/d/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :end

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :end

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :end

    sput-object v0, La/a/a/a/m/m/d/m;->a:Ljava/lang/String;

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "system p2p deviceName captured as fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :end
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :fb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :fb

    return-object p0

    :fb
    sget-object v0, La/a/a/a/m/m/d/m;->a:Ljava/lang/String;

    return-object v0
.end method
'''

w = lambda rel, s: (os.makedirs(os.path.dirname(os.path.join(DST, rel)), exist_ok=True),
                    write(os.path.join(DST, rel), s), print("NEW", rel))
w(r"smali/a/a/a/a/m/m/e/f.smali", HEARTBEAT)
w(r"smali/a/a/a/a/m/m/e/f$a.smali", HEARTBEAT_RUN)
w(r"smali/a/a/a/a/m/m/d/m.smali", DEVNAME)

# ---------------------------------------------------------------- 插桩 1: 收包 touch (e/b.smali c())
patch(r"smali/a/a/a/a/m/m/e/b.smali",
"""    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
""",
"""    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    # --- patch_v12 heartbeat: any received message refreshes the watchdog ---
    invoke-static {}, La/a/a/a/m/m/e/f;->a()V

    return-object v0
""", "b.c() recv touch")

# ---------------------------------------------------------------- 插桩 2: connect 启动看门狗 (e/d.smali a())
patch(r"smali/a/a/a/a/m/m/e/d.smali",
"""    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
""",
"""    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    # --- patch_v12 heartbeat: start watchdog when direct transport connects ---
    invoke-static {p0}, La/a/a/a/m/m/e/f;->a(La/a/a/a/m/m/e/d;)V

    return-void
.end method
""", "d.a() start watchdog")

# ---------------------------------------------------------------- 插桩 3: terminate 停看门狗 (e/d.smali f())
patch(r"smali/a/a/a/a/m/m/e/d.smali",
""".method public f()V
    .locals 10

    .line 1
""",
""".method public f()V
    .locals 10

    # --- patch_v12 heartbeat: stop watchdog on terminate ---
    invoke-static {}, La/a/a/a/m/m/e/f;->b()V

    .line 1
""", "d.f() stop watchdog")

# ---------------------------------------------------------------- 插桩 4: 设备名兜底 A (d/e.smali sswitch_2 空值检查前)
patch(r"smali/a/a/a/a/m/m/d/e.smali",
"""    iget-object p2, p0, La/a/a/a/m/m/d/e;->d:Ljava/lang/String;

    if-nez p2, :cond_8
""",
"""    iget-object p2, p0, La/a/a/a/m/m/d/e;->d:Ljava/lang/String;

    # --- patch_v12: configured name empty -> use system deviceName captured from THIS_DEVICE_CHANGED ---
    invoke-static {p2}, La/a/a/a/m/m/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8
""", "e.sswitch_2 null-check fallback")

# ---------------------------------------------------------------- 插桩 5: 设备名兜底 B (d/e.smali setWifiDeviceName 实参)
patch(r"smali/a/a/a/a/m/m/d/e.smali",
"""    iget-object v1, p0, La/a/a/a/m/m/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setWifiDeviceName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
""",
"""    iget-object v1, p0, La/a/a/a/m/m/d/e;->d:Ljava/lang/String;

    # --- patch_v12: same fallback for the name actually sent to the phone ---
    invoke-static {v1}, La/a/a/a/m/m/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setWifiDeviceName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
""", "e.sswitch_2 setWifiDeviceName fallback")

# ---------------------------------------------------------------- 插桩 6: THIS_DEVICE_CHANGED 分支 (d/i.smali onReceive)
patch(r"smali/a/a/a/a/m/m/d/i.smali",
"""    :cond_8
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"
""",
"""    :cond_8
    # --- patch_v12: THIS_DEVICE_CHANGED -> capture system p2p deviceName as fallback ---
    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-static {v0, v2}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_state_chg

    invoke-static {p2}, La/a/a/a/m/m/d/m;->a(Landroid/content/Intent;)V

    goto :goto_4

    :cond_state_chg
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"
""", "i.onReceive THIS_DEVICE_CHANGED")

# ---------------------------------------------------------------- 版本号
yml = os.path.join(DST, "apktool.yml")
s = read(yml)
s = re.sub(r"versionCode: \S+", "versionCode: 115", s)
s = re.sub(r"versionName: \S+", "versionName: mod1.15", s)
write(yml, s)
print("OK versionCode=115 versionName=mod1.15")

# ---------------------------------------------------------------- 自检
def must(path, *subs):
    s = read(os.path.join(DST, path))
    for x in subs:
        assert x in s, "selfcheck missing %r in %s" % (x, path)

must(r"smali/a/a/a/a/m/m/e/b.smali", "La/a/a/a/m/m/e/f;->a()V")
must(r"smali/a/a/a/a/m/m/e/d.smali", "La/a/a/a/m/m/e/f;->a(La/a/a/a/m/m/e/d;)V",
     "La/a/a/a/m/m/e/f;->b()V")
must(r"smali/a/a/a/a/m/m/d/e.smali", "La/a/a/a/m/m/d/m;->a(Ljava/lang/String;)Ljava/lang/String;")
se = read(os.path.join(DST, r"smali/a/a/a/a/m/m/d/e.smali"))
assert se.count("La/a/a/a/m/m/d/m;->a(Ljava/lang/String;)Ljava/lang/String;") == 2, "e.smali fallback x2"
must(r"smali/a/a/a/a/m/m/d/i.smali", "THIS_DEVICE_CHANGED", "La/a/a/a/m/m/d/m;->a(Landroid/content/Intent;)V",
     ":cond_state_chg")
must(r"smali/a/a/a/a/m/m/e/f.smali", "0x20002", "0x7d0")
must(r"smali/a/a/a/a/m/m/e/f$a.smali", "0x7530", "if-ltz v0, :send")
must(r"smali/a/a/a/a/m/m/d/m.smali", "wifiP2pDevice")
must("apktool.yml", "versionCode: 115", "versionName: mod1.15")
# 分支方向断言: f$a 里 cmp-long 后必须是 if-ltz(小于30000才去发心跳, 否则 fall-through 判超时)
# m.smali 取值: if-eqz p0, :fb (配置为 null 才走兜底)
print("SELFCHECK PASS")
