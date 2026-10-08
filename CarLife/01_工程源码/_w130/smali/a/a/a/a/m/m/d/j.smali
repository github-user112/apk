.class public final La/a/a/a/m/m/d/j;
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

    # --- 1.25: 前置自检（WiFi / 直连名），只提示不阻断 ---
    iget-object v0, p0, La/a/a/a/m/m/d/j;->a:La/a/a/a/c;

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->precheck(La/a/a/a/c;)V

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
    invoke-virtual {p0}, La/a/a/a/m/m/d/j;->c()V
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

.method public final d()V
    .locals 7

    # --- 1.28: 从 j$a.onFailure 抽出来的退避重试（4000 + attempt*2000 ms）。 ---
    #     抽成方法是为了让 BUSY / ERROR 两个分支各自调用后直接 return，
    #     不共享 :backoff 标签 —— 共享会让 v0 在合并点一边是 j 引用一边是 int。
    const/16 v0, 0xfa0

    iget v1, p0, La/a/a/a/m/m/d/j;->g:I

    const/16 v2, 0x7d0

    mul-int v1, v1, v2

    add-int v0, v0, v1

    int-to-long v3, v0

    iget-object v5, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v6, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
