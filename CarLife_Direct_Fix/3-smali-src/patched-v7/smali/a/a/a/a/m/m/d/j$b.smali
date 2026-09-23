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

    iget-boolean v1, v0, La/a/a/a/m/m/d/j;->h:Z

    if-eqz v1, :done

    iget-object v1, v0, La/a/a/a/m/m/d/j;->d:La/a/a/a/m/m/d/i;

    iget-boolean v1, v1, La/a/a/a/m/m/d/i;->f:Z

    if-nez v1, :formed

    iget v1, v0, La/a/a/a/m/m/d/j;->g:I

    const/4 v2, 0x6

    if-ge v1, v2, :giveup

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

    # patchF-2: createGroup 前先显式停发现, 避免 discovery 进行中导致 BUSY
    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-string v1, "CarLifeP2PBoot"

    const-string v2, "stopPeerDiscovery done, createGroup now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, La/a/a/a/m/m/d/j$a;

    invoke-direct {v3, v0}, La/a/a/a/m/m/d/j$a;-><init>(La/a/a/a/m/m/d/j;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    :formed
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "P2P group detected, bootstrap idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :giveup
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "give up after 6 createGroup attempts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :done
    return-void
.end method
