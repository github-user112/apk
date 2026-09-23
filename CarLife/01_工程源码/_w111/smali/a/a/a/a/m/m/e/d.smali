.class public final La/a/a/a/m/m/e/d;
.super La/a/a/a/a/j/c;
.source ""


# instance fields
.field public final c:La/a/a/a/c;

.field public final d:Lc/a;

.field public final e:Lc/a;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V
    .locals 1

    const-string v0, "mCarLifeContext"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, La/a/a/a/a/j/c;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V

    iput-object p1, p0, La/a/a/a/m/m/e/d;->c:La/a/a/a/c;

    sget-object p1, La/a/a/a/m/m/e/d$b;->b:La/a/a/a/m/m/e/d$b;

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/e/d;->d:Lc/a;

    new-instance p1, La/a/a/a/m/m/e/d$a;

    invoke-direct {p1, p0}, La/a/a/a/m/m/e/d$a;-><init>(La/a/a/a/m/m/e/d;)V

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/e/d;->e:Lc/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "InstantProtocolTransport connect"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v2, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v1, p0, La/a/a/a/m/m/e/d;->e:Lc/a;

    invoke-interface {v1}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/m/m/d/e;

    .line 5
    iget-object v1, v1, La/a/a/a/m/m/d/e;->g:Lc/a;

    invoke-interface {v1}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/m/m/d/d;

    .line 6
    iput-boolean v0, v1, La/a/a/a/m/m/d/d;->h:Z

    iget-object v0, v1, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    iget-object v2, v1, La/a/a/a/m/m/d/d;->i:Lc/a;

    invoke-interface {v2}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v1, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()La/a/a/a/a/a/b;
    .locals 1

    invoke-virtual {p0}, La/a/a/a/m/m/e/d;->h()La/a/a/a/m/m/e/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/m/m/e/b;->c()La/a/a/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 10

    .line 1
    iget-object v0, p0, La/a/a/a/m/m/e/d;->e:Lc/a;

    invoke-interface {v0}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/m/m/d/e;

    .line 2
    iget-object v1, v0, La/a/a/a/m/m/d/e;->g:Lc/a;

    invoke-interface {v1}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/m/m/d/d;

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, La/a/a/a/m/m/d/d;->h:Z

    iget-object v1, v1, La/a/a/a/m/m/d/d;->g:La/a/a/a/a/j/f/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, La/a/a/a/a/j/f/a;->a()V

    .line 4
    :goto_0
    iget-object v0, v0, La/a/a/a/m/m/d/e;->c:La/a/a/a/m/m/d/i;

    # --- patchE: 停止 P2P 自举器 ---
    iget-object v1, v0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;

    if-eqz v1, :boot_stopped

    invoke-virtual {v1}, La/a/a/a/m/m/d/j;->b()V

    const/4 v2, 0x0

    iput-object v2, v0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;

    :boot_stopped


    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "WifiP2pManager terminate"

    aput-object v4, v3, v2

    const-string v4, "CarLife_SDK"

    const-string v5, "tag"

    .line 6
    invoke-static {v4, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v3, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v7, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v8, 0x3

    if-nez v7, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    array-length v9, v3

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v8, v4, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    iget-object v0, v0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v3, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v7, v0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    .line 12
    iget-object v3, v0, La/a/a/a/m/m/d/h;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, v0, La/a/a/a/m/m/d/h;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v7, La/a/a/a/m/m/d/g;

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

    invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 13
    invoke-virtual {p0}, La/a/a/a/m/m/e/d;->h()La/a/a/a/m/m/e/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/m/m/e/b;->a()V

    invoke-virtual {p0}, La/a/a/a/a/j/c;->c()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "InstantProtocolTransport terminate"

    aput-object v1, v0, v2

    .line 14
    invoke-static {v4, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v4, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public g(La/a/a/a/a/a/b;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/m/m/e/d;->h()La/a/a/a/m/m/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/a/m/m/e/b;->b(La/a/a/a/a/a/b;)V

    return-void
.end method

.method public final h()La/a/a/a/m/m/e/b;
    .locals 1

    iget-object v0, p0, La/a/a/a/m/m/e/d;->d:Lc/a;

    invoke-interface {v0}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/m/m/e/b;

    return-object v0
.end method
