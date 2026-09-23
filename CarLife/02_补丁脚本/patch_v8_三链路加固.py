# -*- coding: utf-8 -*-
"""
CarLife 车机端 (com.baidu.carlifevehicle) 三链路加固补丁 v8  ->  产出 1.11
基线: C:\\PJGG\\apk\\_w110   (已含 patchA/B/C/D/E/F/G)
产出: C:\\PJGG\\apk\\_w111

对照「亿连手机互联 V7.0.1」(net.easyconn, minSdk 16) 补足的短板:

  patchH  P2P 建组失败分级处理 + 慢速重扫 (改写 j / j$a / j$b)
      亿连: discoverPeers.onSuccess -> 直接 createGroup; 断线 -> clearLocalServices
            -> onSuccess -> 重新 addLocalService, 形成自愈闭环。
      CarLife v1.10: 失败一律 8s 重试 6 次后彻底放弃, 且 reason 不区分。
      本补丁:
        reason=1 (P2P_UNSUPPORTED) -> 认定驱动不支持, 立刻放弃并提示降级热点/USB
        reason=2 (BUSY)            -> 先 removeGroup 清干净, 再退避重试
        reason=0 (ERROR)           -> 退避重试
        退避间隔 4000 + attempt*2000 ms (4/6/8/10/12/14s), 不固定 8s
        6 次快试耗尽 -> 进入慢速重扫: removeGroup 后每 30s 重来一轮, 共 12 轮
        (合计约 7 分钟, 车机是常电设备, 比"48 秒后永久死"更符合实车场景)

  patchI  DNS-SD 本地服务发布 (j.c(), 新增)
      亿连用 WifiP2pDnsSdServiceInfo.newInstance("EC_MIRROR","_presence._tcp",txt)
      + addLocalService, 手机不依赖蓝牙也能发现车机。CarLife 完全没有。
      WifiP2pDnsSdServiceInfo / addLocalService 自 API 16 起可用 -> Android 4.4 可用。

  patchK  P2P 组丢失自愈 (新增 a/a/a/a/m/m/d/k.smali, 注入 i.smali)
      1.10 里 patchG 把 discoverPeers 整个抑制掉了(只打日志), 于是一旦组丢失,
      cond_5 分支调用 h.c.a() 实际什么都不做 -> 链路彻底静止, 只能重启 App。
      现在组丢失时若仍处于直连模式(9), 重新 arm 自举器, 带 15s 去抖防风暴。

  patchL  USB 权限弹窗去抖 (新增 a/a/a/a/m/m/c/f.smali, 注入 c/c.smali)
      亿连: requestUsbPermission 用静态 isPermissionRequesting 防重入, 且后台不弹。
      CarLife: UsbAccessoryScanner.run() 每秒 sleep(1000) 循环, 无权限就
      startActivity(UsbPermissionProxyActivity) -> 每秒弹一次窗, 用户根本点不完。
      现在 5 秒内只允许请求一次; 被抑制时在扫描线程里额外 sleep 4s, 等效 5s 一轮。

  patchM  无线(热点/直连) MulticastLock (新增 a/a/a/a/m/m/e/e.smali, 注入 e/a.smali)
      亿连整个 WifiManager 都持有 setReferenceCounted(false) 的 MulticastLock,
      并在 closeWifiService 里 release; 热点侧还靠 JmDNS 轮询等合法 IP。
      CarLife 的 WirlessProtocolTransport(UDP 7999) 完全没申请组播锁, 在相当多
      车机/手机上组播/广播被内核过滤 -> 热点模式握手包收不到。
      现在进无线传输时申请(非引用计数), 终止时释放。

  Android 4 兼容性: 新增代码只用 API 16+ 的
      WifiP2pManager.addLocalService / WifiP2pDnsSdServiceInfo.newInstance /
      WifiManager.createMulticastLock / SystemClock.uptimeMillis / Handler.postDelayed
  未使用任何 lambda、try-with-resources、Java 8 API; smali 寄存器严格 v0-v15。
"""
import os
import re
import shutil
import sys

# 路径相对本脚本定位: <root>/CarLife/02_补丁脚本/xxx.py -> <root>/CarLife/01_工程源码/_w111
_HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(_HERE, '..', '..'))         # C:\PJGG\apk
SRC = os.path.join(ROOT, '_w110')                                # 基线(补丁 A~G 已完成)
DST = os.path.join(ROOT, 'CarLife', '01_工程源码', '_w111')        # 产出工程

J = 'La/a/a/a/m/m/d/j;'
I = 'La/a/a/a/m/m/d/i;'
MGR = 'Landroid/net/wifi/p2p/WifiP2pManager;'
CH = 'Landroid/net/wifi/p2p/WifiP2pManager$Channel;'
AL = 'Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;'

errors = []


def log(m):
    print(m)


def err(m):
    errors.append(m)
    print('[ERROR] ' + m)


def rd(p):
    with open(p, 'r', encoding='utf-8', errors='replace') as f:
        return f.read().replace('\r\n', '\n')


def wr(p, t):
    os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, 'w', encoding='utf-8', newline='\n') as f:
        f.write(t)


def sub1(text, old, new, tag):
    """精确替换一次, 失败记错"""
    n = text.count(old)
    if n != 1:
        err('%s: 锚点出现 %d 次(期望 1)' % (tag, n))
        return text
    return text.replace(old, new, 1)


# ------------------------------------------------------------------ 0. 复制基线
if os.path.exists(DST):
    shutil.rmtree(DST)
shutil.copytree(SRC, DST)
log('[0] 基线复制 %s -> %s' % (SRC, DST))

S = os.path.join(DST, 'smali')
D_DIR = os.path.join(S, 'a', 'a', 'a', 'a', 'm', 'm', 'd')
C_DIR = os.path.join(S, 'a', 'a', 'a', 'a', 'm', 'm', 'c')
E_DIR = os.path.join(S, 'a', 'a', 'a', 'a', 'm', 'm', 'e')

# ================================================================== patchH/I: j.smali
J_SMALI = '''.class public final La/a/a/a/m/m/d/j;
.super Ljava/lang/Object;
.source "P2pBootstrap.java"


# instance fields
.field public final a:La/a/a/a/c;

.field public final b:Landroid/net/wifi/p2p/WifiP2pManager;

.field public final c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final d:La/a/a/a/m/m/d/i;

.field public final e:Landroid/os/Handler;

.field public final f:Ljava/lang/Runnable;

# g: 快速重试计数   h: 是否已 arm   i: 组播锁   k: 上次 arm 时刻   l: 慢速重扫轮数
.field public g:I

.field public h:Z

.field public i:Landroid/net/wifi/WifiManager$MulticastLock;

.field public k:J

.field public l:I

.field public m:Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

# n: 自举器是否已接管 P2P(静态开关, 供 h.onFailure 判断要不要再排发现循环)
.field public static n:Z


# direct methods
.method public constructor <init>(La/a/a/a/c;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;La/a/a/a/m/m/d/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/j;->a:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p3, p0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p4, p0, La/a/a/a/m/m/d/j;->d:La/a/a/a/m/m/d/i;

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/m/m/d/j;->g:I

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    iput v0, p0, La/a/a/a/m/m/d/j;->l:I

    const/4 v1, 0x0

    iput-object v1, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

    iput-object v1, p0, La/a/a/a/m/m/d/j;->m:Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, La/a/a/a/m/m/d/j;->k:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    new-instance v0, La/a/a/a/m/m/d/j$b;

    invoke-direct {v0, p0}, La/a/a/a/m/m/d/j$b;-><init>(La/a/a/a/m/m/d/j;)V

    iput-object v0, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    # --- patchH: 15 秒去抖, 防止广播风暴导致反复 arm ---
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, La/a/a/a/m/m/d/j;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v6, v2, v4

    if-ltz v6, :arm_skip

    iput-wide v0, p0, La/a/a/a/m/m/d/j;->k:J

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/m/m/d/j;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    # 静态开关置位: 告诉 WifiDirectDiscoverableTask 不要再排 1 秒发现循环
    sput-boolean v0, La/a/a/a/m/m/d/j;->n:Z

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "armed: HU will createGroup() and act as GO if no group appears"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # --- patchF-1: 停掉 CarLife 每秒一次的 discoverPeers 循环 ---
    :try_start_1
    iget-object v0, p0, La/a/a/a/m/m/d/j;->d:La/a/a/a/m/m/d/i;

    iget-object v0, v0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;

    iget-object v0, v0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    sget-object v1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    invoke-virtual {v1, v0}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "discover loop cancelled (free P2P state machine)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :dl_done

    :catch_1
    move-exception v0

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "cancel discover loop failed (ignored)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :dl_done

    # --- patchI: 组播锁 (参照亿连 setReferenceCounted(false)) ---
    :try_start_0
    iget-object v0, p0, La/a/a/a/m/m/d/j;->a:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "CarLifeP2P"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "MulticastLock acquired (non reference counted)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :mc_done

    :catch_0
    move-exception v0

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "MulticastLock failed (ignored)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :mc_done

    # --- patchI: 发布 DNS-SD 本地服务, 手机不依赖蓝牙也能发现车机 ---
    :try_start_2
    invoke-direct {p0}, La/a/a/a/m/m/d/j;->c()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :svc_done

    :catch_2
    move-exception v0

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "addLocalService failed (ignored)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :svc_done

    iget-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :arm_skip
    const-string v0, "CarLifeP2PBoot"

    const-string v1, "arm skipped (15s debounce)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    sput-boolean v0, La/a/a/a/m/m/d/j;->n:Z

    iget-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :clr_svc

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :clr_svc

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :clr_svc
    # 亿连 closeWifiDirect 里三连清: clearLocalServices + stopPeerDiscovery + removeGroup
    iget-object v0, p0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, La/a/a/a/m/m/d/g;

    invoke-direct {v2}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "disarmed: lock+service+group cleaned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :done

    :catch_0
    move-exception v0

    :done
    return-void
.end method

.method public final c()V
    .locals 6

    # --- patchI: 亿连式 DNS-SD 本地服务, API 16+ (Android 4.1 起) ---
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "n"

    const-string v2, "CarLife-HU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p"

    const-string v2, "7999"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "e"

    const-string v2, "CARLIFE_HU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CarLife-HU"

    const-string v2, "_presence._tcp"

    invoke-static {v1, v2, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/m/m/d/j;->m:Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, La/a/a/a/m/m/d/g;

    invoke-direct {v3}, La/a/a/a/m/m/d/g;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "local service published (_presence._tcp, instance=CarLife-HU)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e()V
    .locals 2

    # 组已建好: 停止重试循环, 但保留组播锁与已发布的服务
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    iget-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "settled: group up, keep lock and service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
'''

JA_SMALI = '''.class public final La/a/a/a/m/m/d/j$a;
.super Ljava/lang/Object;
.source "P2pBootstrap.java"


# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final a:La/a/a/a/m/m/d/j;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 8

    # --- patchH: 失败原因分级 ---
    #     0 = ERROR (内部错误)       -> 退避重试
    #     1 = P2P_UNSUPPORTED (驱动/固件不支持) -> 立即放弃, 提示降级
    #     2 = BUSY (状态机被占)      -> 先 removeGroup 清干净再退避重试
    const-string v0, "CarLifeP2PBoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroup failed, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :check_busy

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "P2P UNSUPPORTED by driver -> give up, please use hotspot or USB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V

    return-void

    :check_busy
    const/4 v0, 0x2

    if-eq p1, v0, :backoff

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "BUSY -> removeGroup to release the state machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :backoff
    # 退避: 4000 + attempt*2000 ms
    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    const/16 v1, 0xfa0

    iget v2, v0, La/a/a/a/m/m/d/j;->g:I

    const/16 v3, 0x7d0

    mul-int v2, v2, v3

    add-int v1, v1, v2

    int-to-long v4, v1

    iget-object v6, v0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v7, v0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "createGroup SUCCESS: HU is Group Owner, phone may join now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "hint: on the phone open CarLife and pick this HU in the Wi-Fi Direct list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->e()V

    return-void
.end method
'''

JB_SMALI = '''.class public final La/a/a/a/m/m/d/j$b;
.super Ljava/lang/Object;
.source "P2pBootstrap.java"


# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:La/a/a/a/m/m/d/j;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/j$b;->a:La/a/a/a/m/m/d/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, La/a/a/a/m/m/d/j$b;->a:La/a/a/a/m/m/d/j;

    # 未 arm -> 直接退出
    iget-boolean v1, v0, La/a/a/a/m/m/d/j;->h:Z

    if-eqz v1, :done

    # 组已形成 -> 空闲
    iget-object v1, v0, La/a/a/a/m/m/d/j;->d:La/a/a/a/m/m/d/i;

    iget-boolean v1, v1, La/a/a/a/m/m/d/i;->f:Z

    if-eqz v1, :formed

    # 快试阶段: g < 6
    iget v1, v0, La/a/a/a/m/m/d/j;->g:I

    const/4 v2, 0x6

    if-ge v1, v2, :slow

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, La/a/a/a/m/m/d/j;->g:I

    const-string v2, "CarLifeP2PBoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createGroup attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/6"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # patchF-2: 建组前显式停发现, 避免 discovery 进行中导致 BUSY
    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    new-instance v3, La/a/a/a/m/m/d/j$a;

    invoke-direct {v3, v0}, La/a/a/a/m/m/d/j$a;-><init>(La/a/a/a/m/m/d/j;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    # 慢速重扫阶段: 6 次快试耗尽后, removeGroup 清干净, 30 秒后再来一轮
    :slow
    iget v1, v0, La/a/a/a/m/m/d/j;->l:I

    const/16 v2, 0xc

    if-ge v1, v2, :giveup

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, La/a/a/a/m/m/d/j;->l:I

    const/4 v1, 0x0

    iput v1, v0, La/a/a/a/m/m/d/j;->g:I

    const-string v1, "CarLifeP2PBoot"

    const-string v2, "slow rescan: removeGroup + retry in 30s"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v1, v0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    const-wide/32 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :giveup
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "give up after 12 slow rescans: P2P not usable here, use hotspot or USB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :formed
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "P2P group detected, bootstrap idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :done
    return-void
.end method
'''

K_SMALI = '''.class public final La/a/a/a/m/m/d/k;
.super Ljava/lang/Object;
.source "P2pSelfHeal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public static a(La/a/a/a/m/m/d/i;)V
    .locals 5

    # --- patchK: P2P 组丢失后的自愈入口 ---
    # ---  i.smali onReceive 在 info==null 或 groupFormed==false 时走 :cond_5,
    # ---  那里原本只调 h.c.a() (discoverPeers 已被 patchG 抑制成只打日志),
    # ---  于是链路彻底静止。这里重新 arm 自举器 (内部有 15s 去抖)。
    :try_start_0
    iget-object v0, p0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;

    if-eqz v0, :has_boot

    new-instance v0, La/a/a/a/m/m/d/j;

    iget-object v1, p0, La/a/a/a/m/m/d/i;->a:La/a/a/a/c;

    iget-object v2, p0, La/a/a/a/m/m/d/i;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, v1, v2, v3, p0}, La/a/a/a/m/m/d/j;-><init>(La/a/a/a/c;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;La/a/a/a/m/m/d/i;)V

    iput-object v0, p0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;

    :has_boot
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "self-heal: P2P group lost, re-arm bootstrap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->a()V

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarLifeP2PBoot"

    const-string v2, "self-heal failed (ignored)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
'''

F_SMALI = '''.class public final La/a/a/a/m/m/c/f;
.super Ljava/lang/Object;
.source "UsbPermissionGuard.java"


# static fields
# a: 已发起的请求次数   b: 上次请求时刻(uptimeMillis)
.field public static a:I

.field public static b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public static a()Z
    .locals 8

    # --- patchL: USB 权限弹窗去抖 ---
    # ---  亿连用静态 isPermissionRequesting 防重入 + 后台不弹。
    # ---  CarLife 的 UsbAccessoryScanner 每秒一轮, 无权限就 startActivity,
    # ---  结果每秒弹一次 UsbPermissionProxyActivity, 用户根本来不及点。
    # ---  这里 5 秒内只允许一次; 被抑制时顺带在扫描线程 sleep 4s, 等效 5s 一轮。
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, La/a/a/a/m/m/c/f;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-ltz v6, :deny

    sput-wide v0, La/a/a/a/m/m/c/f;->b:J

    sget v0, La/a/a/a/m/m/c/f;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La/a/a/a/m/m/c/f;->a:I

    const-string v0, "CarLifeUsb"

    const-string v1, "usb permission request allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :deny
    const-string v0, "CarLifeUsb"

    const-string v1, "usb permission request suppressed (5s debounce)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    # 异常时放行, 避免把自己锁死
    const/4 v0, 0x1

    return v0
.end method
'''

EE_SMALI = '''.class public final La/a/a/a/m/m/e/e;
.super Ljava/lang/Object;
.source "WifiMulticastLock.java"


# static fields
.field public static a:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    # --- patchM: 无线(热点/直连)传输期间持有组播锁 ---
    # ---  亿连的 WifiManager 全程持有 setReferenceCounted(false) 的 MulticastLock,
    # ---  CarLife 的 WirlessProtocolTransport(UDP 7999) 完全没有, 在很多车机上
    # ---  组播/广播包会被内核丢弃, 表现为"连上了但握手没反应"。
    :try_start_0
    sget-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :do_acquire

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "CarLifeWifi"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    sput-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    :do_acquire
    sget-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const-string v0, "CarLifeWifi"

    const-string v1, "MulticastLock acquired for wireless transport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v0, "CarLifeWifi"

    const-string v1, "MulticastLock acquire failed (ignored)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()V
    .locals 2

    :try_start_0
    sget-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v0, "CarLifeWifi"

    const-string v1, "MulticastLock released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :done
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
'''

wr(os.path.join(D_DIR, 'j.smali'), J_SMALI)
wr(os.path.join(D_DIR, 'j$a.smali'), JA_SMALI)
wr(os.path.join(D_DIR, 'j$b.smali'), JB_SMALI)
wr(os.path.join(D_DIR, 'k.smali'), K_SMALI)
wr(os.path.join(C_DIR, 'f.smali'), F_SMALI)
wr(os.path.join(E_DIR, 'e.smali'), EE_SMALI)
log('[1] 新增/重写 6 个 smali: d/j, d/j$a, d/j$b, d/k, c/f, e/e')

# ================================================================== patchK: 注入 i.smali
p = os.path.join(D_DIR, 'i.smali')
t = rd(p)
old = """    invoke-virtual {p2}, La/a/a/a/n/i/b;->a()V

    :cond_6"""
new = """    invoke-virtual {p2}, La/a/a/a/n/i/b;->a()V

    # --- patchK: 组丢失后自愈 (不重新 arm 的话链路会彻底静止) ---
    invoke-static {p0}, La/a/a/a/m/m/d/k;->a(La/a/a/a/m/m/d/i;)V

    :cond_6"""
t = sub1(t, old, new, 'patchK 注入点')
wr(p, t)
log('[2] patchK 注入 i.smali')

# ================================================================== patchF-3: 永久抑制发现循环重排
p = os.path.join(D_DIR, 'h.smali')
t = rd(p)
t = sub1(t, '    .locals 9\n', '    .locals 10\n', 'h.smali .locals')
old = """    :goto_0
    sget-object v3, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v4, p0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    return-void
.end method"""
new = """    :goto_0
    # --- patchF-3: 自举器已接管时, 不再重排 1 秒 discoverPeers 循环 ---
    # ---  实测: patchF-1 只取消一次, 之后 h.c.a() 被再次调用就会重新排上,
    # ---  于是每秒 discoverPeers 又把 P2P 状态机占住, createGroup 继续 BUSY。
    sget-boolean v9, La/a/a/a/m/m/d/j;->n:Z

    # n==0 (自举器未接管) 才允许排循环; n!=0 走下面的 return-void 不排
    if-eqz v9, :keep_sched

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "discover loop not rescheduled (bootstrap owns P2P)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :keep_sched
    sget-object v3, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v4, p0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    return-void
.end method"""
t = sub1(t, old, new, 'patchF-3 注入点')
wr(p, t)
log('[2b] patchF-3 注入 h.smali (永久抑制发现循环重排)')

# ================================================================== patchL: 注入 c/c.smali
p = os.path.join(C_DIR, 'c.smali')
t = rd(p)
t = sub1(t, '    .locals 16\n', '    .locals 17\n', 'c/c.smali .locals')
old = """    :cond_1a
    new-instance v4, Landroid/content/Intent;"""
new = """    :cond_1a
    # --- patchL: 5 秒内只允许弹一次 USB 权限窗 ---
    invoke-static {}, La/a/a/a/m/m/c/f;->a()Z

    move-result v16

    if-eqz v16, :goto_13

    new-instance v4, Landroid/content/Intent;"""
t = sub1(t, old, new, 'patchL 注入点')
wr(p, t)
log('[3] patchL 注入 c/c.smali')

# ================================================================== patchM: 注入 e/a.smali
p = os.path.join(E_DIR, 'a.smali')
t = rd(p)
old = """    :cond_3
    :goto_1
    return-void
.end method"""
new = """    :cond_3
    :goto_1
    # --- patchM: 无线传输期间持有组播锁 ---
    iget-object v8, p0, La/a/a/a/m/m/e/a;->c:La/a/a/a/c;

    invoke-interface {v8}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, La/a/a/a/m/m/e/e;->a(Landroid/content/Context;)V

    return-void
.end method"""
t = sub1(t, old, new, 'patchM 注入点(a)')

old2 = """    invoke-virtual {p0}, La/a/a/a/a/j/c;->c()V

    const/4 v0, 0x1"""
new2 = """    invoke-virtual {p0}, La/a/a/a/a/j/c;->c()V

    # --- patchM: 释放组播锁 ---
    invoke-static {}, La/a/a/a/m/m/e/e;->b()V

    const/4 v0, 0x1"""
t = sub1(t, old2, new2, 'patchM 注入点(f)')
wr(p, t)
log('[4] patchM 注入 e/a.smali')

# ================================================================== 版本号
p = os.path.join(DST, 'apktool.yml')
t = rd(p)
t2 = t.replace('versionCode: 16', 'versionCode: 111')
t2 = t2.replace('versionName: 4.0.M1.3-mod1.6', 'versionName: 4.0.M1.3-mod1.11')
if t2 == t:
    err('apktool.yml 版本号未命中')
wr(p, t2)
log('[5] 版本号 -> versionCode=111 / versionName=4.0.M1.3-mod1.11')

# ================================================================== bdcf 说明
p = os.path.join(DST, 'assets', 'bdcf')
t = rd(p)
if 'CONFIG_WIFI_DIRECT_NAME' not in t:
    err('bdcf 缺少 CONFIG_WIFI_DIRECT_NAME (patchA 丢失?)')
t = t.rstrip('\n') + """

# ------------------------------------------------------------------
# 以下为 1.11 直连加固的可调项说明 (当前为编译期固定值, 改此处暂不生效)
#   P2P 自举等待: 进入直连 8s 仍无组 -> 车机主动 createGroup 当 GO
#   P2P 快试: 6 次, 退避 4/6/8/10/12/14s;  reason=1 判不支持立即放弃
#   P2P 慢扫: 12 轮, 每轮 removeGroup 后等 30s (合计约 7 分钟)
#   P2P 自愈: 组丢失自动重新 arm, 15s 去抖
#   DNS-SD : 发布 _presence._tcp / 实例名 CarLife-HU
#   USB    : 权限弹窗 5s 去抖
#   无线    : 全程持有 MulticastLock(非引用计数)
# ------------------------------------------------------------------
"""
wr(p, t)
log('[6] bdcf 追加说明')

# ================================================================== 编译期自检
log('[7] 编译期自检')
for f, must in [
    ('d/j.smali', ['.class public final La/a/a/a/m/m/d/j;', 'WifiP2pDnsSdServiceInfo', 'setReferenceCounted']),
    ('d/j$a.smali', ['P2P UNSUPPORTED', 'removeGroup']),
    ('d/j$b.smali', ['if-ge v1, v2, :slow', 'if-ge v1, v2, :giveup', '0x7530']),
    ('d/k.smali', ['self-heal']),
    ('c/f.smali', ['0x1388']),
    ('e/e.smali', ['MulticastLock']),
]:
    fp = os.path.join(S, 'a', 'a', 'a', 'a', 'm', 'm', f)
    txt = rd(fp)
    for m in must:
        if m not in txt:
            err('%s 缺少 %s' % (f, m))

# 寄存器越界自检: 非 /range 的 invoke-* 与 if-* 只能用 v0-v15
# (只查本次新增/改动的文件; 原有代码里的 /range 指令本来就可以超 v15)
TARGETS = [
    'a/a/a/a/m/m/d/j.smali', 'a/a/a/a/m/m/d/j$a.smali', 'a/a/a/a/m/m/d/j$b.smali',
    'a/a/a/a/m/m/d/k.smali', 'a/a/a/a/m/m/d/i.smali', 'a/a/a/a/m/m/d/h.smali',
    'a/a/a/a/m/m/c/f.smali', 'a/a/a/a/m/m/c/c.smali',
    'a/a/a/a/m/m/e/e.smali', 'a/a/a/a/m/m/e/a.smali',
]
for rel in TARGETS:
    fp = os.path.join(S, rel.replace('/', os.sep))
    txt = rd(fp)
    for mm in re.finditer(r'^\s*(invoke-|if-|cmp-|iget|iput|sget|sput|move|const|add-|mul-|sub-|int-to-)\S*', txt, re.M):
        line = mm.group(0)
        if '/range' in line:
            continue
        for r in re.findall(r'\bv(\d+)\b', line):
            if int(r) > 15:
                err('%s 寄存器越界 v%s: %s' % (rel, r, line.strip()))
log('    寄存器自检完成 (仅本补丁涉及的 %d 个文件)' % len(TARGETS))

# 分支方向自检: 防止又把 if-ge / if-nez 写反
jb = rd(os.path.join(D_DIR, 'j$b.smali'))
if 'if-ge v1, v2, :slow' not in jb:
    err('j$b 快试上限必须使用 if-ge')
if 'if-ge v1, v2, :giveup' not in jb:
    err('j$b 慢扫上限必须使用 if-ge')
if 'if-eqz v1, :done' not in jb:
    err('j$b 未 arm 判定必须是 if-eqz (h==0 -> 退出)')
if 'if-eqz v1, :formed' not in jb:
    err('j$b 组已形成判定必须是 if-eqz (f!=0 时应走 :formed, 由前一句 if-eqz 落空后到达)')
ja = rd(os.path.join(D_DIR, 'j$a.smali'))
if 'if-eq p1, v0, :check_busy' not in ja:
    err('j$a UNSUPPORTED 判定必须是 if-eq reason==1')
# patchF-3: n!=0(已接管) 必须落到"不排循环"分支, 所以这里必须是 if-eqz 跳去排循环
hh = rd(os.path.join(D_DIR, 'h.smali'))
if 'if-eqz v9, :keep_sched' not in hh:
    err('h.smali patchF-3 必须用 if-eqz v9, :keep_sched (n==0 才排循环)')
if 'if-nez v9, :keep_sched' in hh:
    err('h.smali patchF-3 分支写反了(if-nez 会变成"已接管仍排循环")')
log('    分支方向自检完成')

if errors:
    print('\n===== 失败 %d 项 =====' % len(errors))
    for e in errors:
        print(' - ' + e)
    sys.exit(1)
print('\n===== 补丁 v8 全部应用成功 =====')
