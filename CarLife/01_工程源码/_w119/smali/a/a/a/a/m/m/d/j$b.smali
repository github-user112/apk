.class public final La/a/a/a/m/m/d/j$b;
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

    # bug1 修复: i.f=true(组已形成) 才空闲; 原为 if-eqz 写反, 导致
    # 无组时被判"有组"永不建组、有组时反而 createGroup 必 BUSY
    if-nez v1, :formed

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
