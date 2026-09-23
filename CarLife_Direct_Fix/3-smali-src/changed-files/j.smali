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

.field public g:I

.field public h:Z

.field public i:Landroid/net/wifi/WifiManager$MulticastLock;


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

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

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
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "armed: if no P2P group in 8s, HU will createGroup() and become GO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # patchF-1: 停掉 CarLife 每秒一次的 discoverPeers 循环 (n/h.b -> Timer)
    # 真机实测: 该循环只 schedule 从不 cancel, discovery 永久进行中,
    # 导致 WifiP2pServiceImpl 的 mIsBusy/mDiscoveryStarted 一直被占,
    # 于是 discoverPeers 自己 BUSY、我们新加的 createGroup 也 BUSY(reason=2)。
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

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "CarLifeP2PBoot"

    const-string v2, "cancel discover loop failed (ignored)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
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

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "MulticastLock acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarLifeP2PBoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MulticastLock failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    iget-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :done

    :catch_0
    move-exception v0

    :done
    return-void
.end method
