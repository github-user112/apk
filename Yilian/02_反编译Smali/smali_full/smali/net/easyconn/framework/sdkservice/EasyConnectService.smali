.class public Lnet/easyconn/framework/sdkservice/EasyConnectService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/framework/sdkservice/EasyConnectService$a;,
        Lnet/easyconn/framework/sdkservice/EasyConnectService$d;,
        Lnet/easyconn/framework/sdkservice/EasyConnectService$c;,
        Lnet/easyconn/framework/sdkservice/EasyConnectService$b;
    }
.end annotation


# instance fields
.field public volatile a:Lf/a/i/i/q;

.field public b:Landroid/content/Context;

.field public final c:Landroid/os/IBinder;

.field public d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

.field public e:Lf/a/i/c/a;

.field public f:Lnet/easyconn/framework/broadcast/BroadcastManager;

.field public g:Lf/a/i/e/a;

.field public h:Lnet/easyconn/framework/sdkservice/EasyConnectService$c;

.field public i:Lnet/easyconn/framework/sdkservice/EasyConnectService$a;

.field public j:Lf/a/i/p/e;

.field public volatile k:Z

.field public l:Z

.field public m:Landroid/content/ServiceConnection;

.field public n:Lnet/easyconn/netlink/service/NetLinkService;

.field public o:Lf/a/i/i/s;

.field public p:Lf/a/i/i/r;

.field public q:Lf/a/g/j;

.field public r:Lf/a/f/e;

.field public s:Lf/a/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lnet/easyconn/framework/sdkservice/EasyConnectService$b;

    invoke-direct {v0, p0}, Lnet/easyconn/framework/sdkservice/EasyConnectService$b;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->c:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->k:Z

    iput-boolean v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->l:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b()V

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    invoke-virtual {v0}, Lf/a/i/e/a;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AbstractLicenseManager"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->initialization(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/e/a;

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    invoke-virtual {v1}, Lf/a/i/e/a;->getUuid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "killNetlinkProcess begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {p0}, Lf/a/i/m/g;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->j:Lf/a/i/p/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/i/p/e;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/i/i/q;->p0(Z)Z

    :cond_1
    :goto_0
    const-string v0, "killNetlinkProcess end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->q:Lf/a/g/j;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BtHidManager notifyTransportOpen isTransportOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, v0, Lf/a/g/j;->h:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lf/a/g/j;->a()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->q:Lf/a/g/j;

    if-eqz v0, :cond_4

    const/16 v1, 0x1003

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BtHidManager setBtHidCheckResult isCorrect = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iput-boolean v2, v0, Lf/a/g/j;->o:Z

    goto :goto_1

    :cond_2
    iget-boolean p1, v0, Lf/a/g/j;->h:Z

    if-eqz p1, :cond_4

    iget p1, v0, Lf/a/g/j;->l:I

    if-ne p1, v2, :cond_4

    iput-boolean v3, v0, Lf/a/g/j;->o:Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "EasyConnectService openWifiService ip = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->j:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 3
    iget-boolean v0, v0, Lf/a/i/i/q;->T:Z

    if-nez v0, :cond_1

    const-string v0, "EasyConnectService onBleWifiConnected reOpenWifiService"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->E()I

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->W()I

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x41

    iput p1, v1, Landroid/os/Message;->what:I

    iget-object p1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 5

    const-string v0, "startEcWifiChannelScan"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 1
    iget-object v1, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->F(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "LIST_NET_CARD_MDNS_PUBLISH"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->H(Landroid/content/Context;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listNetCardMdnsPublish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->openWiFiService()I

    goto :goto_1

    :cond_2
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lnet/easyconn/ecsdk/ECSDK;->openWiFiService(Ljava/lang/String;Z)I

    .line 4
    :goto_1
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "startEcWifiChannelScan wifi direct not support"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-boolean v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->d:Z

    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 6
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_5

    const-string v0, "startP2pSearchForce() wifiManager is null, return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v1, "startP2pSearchForce() step1, isWifiEnabled:"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWifiP2pSearching is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->k:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; ecSdkManager.isTransportOpen() is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    .line 7
    iget-boolean v3, v3, Lf/a/i/i/q;->T:Z

    .line 8
    invoke-static {v1, v3}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iput-boolean v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->q:Z

    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->k:Z

    if-nez v1, :cond_7

    const-string v1, "startP2pSearchForce() step2"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lf/a/i/i/u;

    invoke-direct {v3, v0}, Lf/a/i/i/u;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    :cond_6
    const-string v0, "startEcWifiChannelScan wifi direct already group formed"

    .line 10
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public h()V
    .locals 4

    const-string v0, "stopEcWifiChannelScan"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 2
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    .line 3
    iget-boolean v1, v1, Lf/a/i/i/q;->T:Z

    if-eqz v1, :cond_1

    const-string v1, "stopP2pSearch(), removeCallbacks p2pScan postDelayed"

    .line 4
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    iget-object v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lf/a/i/i/v;

    invoke-direct {v3, v0}, Lf/a/i/i/v;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 6
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->closeWiFiService()V

    :goto_1
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "stopOTAUpdate"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECSDK;->stopOTAUpdate()V

    iget-object v0, v0, Lf/a/i/i/q;->C:Lf/a/i/h/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf/a/i/h/g;->c()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

.method public varargs initialization(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    const-class v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "initManager mate-data name is %s."

    invoke-static {v1, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p1, "onBind()"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->c:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "EasyConnectService onCreate()"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object p0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    .line 1
    invoke-virtual {p0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b()V

    .line 2
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    .line 3
    new-instance v1, Lf/a/i/i/q;

    invoke-direct {v1, v0}, Lf/a/i/i/q;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    new-instance v1, Lf/a/i/i/f;

    invoke-direct {v1, p0}, Lf/a/i/i/f;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    iget-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    invoke-virtual {v2}, Lf/a/i/e/a;->getEcAuthentication()Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    const-string v4, "sdkmanager init"

    .line 5
    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v1, v0, Lf/a/i/i/q;->u:Lf/a/i/i/q$c;

    const-string v1, "sn = "

    .line 6
    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "EasyConnectService"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lf/a/i/i/q;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lf/a/i/i/q$d;

    iget-object v4, v0, Lf/a/i/i/q;->e:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lf/a/i/i/q$d;-><init>(Lf/a/i/i/q;Landroid/os/Looper;)V

    iput-object v1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    iget-object v4, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    .line 7
    iput-object v1, v4, Lf/a/i/i/m;->e:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "EasyconnectPageListThread"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v4, Lf/a/i/i/m;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lf/a/i/i/m$e;

    iget-object v5, v4, Lf/a/i/i/m;->f:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lf/a/i/i/m$e;-><init>(Lf/a/i/i/m;Landroid/os/Looper;)V

    iput-object v1, v4, Lf/a/i/i/m;->g:Landroid/os/Handler;

    .line 8
    iget-object v1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EasyconnectNetworkThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lf/a/i/i/q;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lf/a/i/i/q$b;

    iget-object v2, v0, Lf/a/i/i/q;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf/a/i/i/q$b;-><init>(Lf/a/i/i/q;Landroid/os/Looper;)V

    iput-object v1, v0, Lf/a/i/i/q;->q:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EasyConnectTouchEventThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lf/a/i/i/q;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lf/a/i/i/o;

    iget-object v2, v0, Lf/a/i/i/q;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf/a/i/i/o;-><init>(Lf/a/i/i/q;Landroid/os/Looper;)V

    iput-object v1, v0, Lf/a/i/i/q;->s:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EasyConnectServiceForNonProcess"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lf/a/i/i/q;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lf/a/i/i/p;

    iget-object v2, v0, Lf/a/i/i/q;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf/a/i/i/p;-><init>(Lf/a/i/i/q;Landroid/os/Looper;)V

    iput-object v1, v0, Lf/a/i/i/q;->t:Landroid/os/Handler;

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "AbstractEcAudioManager"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    .line 9
    const-class v6, Lf/a/i/i/q;

    aput-object v6, v5, v4

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {p0, v1, v5}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->initialization(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    aput-object v5, v2, v4

    iget-object v5, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    aput-object v5, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/a;

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    const-string v1, "initEcAudioManager initialization success"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "initEcAudioManager initialization fail e = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;

    iget-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    iget-object v4, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;-><init>(Lf/a/i/i/q;Landroid/content/Context;)V

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    :goto_0
    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    invoke-virtual {v1}, Lf/a/i/c/a;->init()V

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    iget-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 10
    iget-object v1, v1, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v1, :cond_0

    .line 11
    iput-object v2, v1, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    .line 12
    :cond_0
    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-nez v1, :cond_1

    new-instance v1, Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    iget-object v4, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-direct {v1, v2, v4}, Lnet/easyconn/framework/sdkservice/EcWifiManager;-><init>(Landroid/content/Context;Lf/a/i/i/q;)V

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 13
    :cond_1
    new-instance v1, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;

    invoke-direct {v1, p0, v3}, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;Lf/a/i/i/f;)V

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->h:Lnet/easyconn/framework/sdkservice/EasyConnectService$c;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->h:Lnet/easyconn/framework/sdkservice/EasyConnectService$c;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    invoke-static {p0}, Lf/a/i/m/g;->x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v0, Lf/a/i/p/e;

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/a/i/p/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->j:Lf/a/i/p/e;

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->j:Lf/a/i/p/e;

    .line 16
    iput-object v1, v0, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    .line 17
    iput-object v0, v1, Lf/a/i/p/e;->c:Lf/a/i/h/f;

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {p0}, Lf/a/i/m/g;->y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance v1, Lf/a/i/i/g;

    invoke-direct {v1, p0}, Lf/a/i/i/g;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->m:Landroid/content/ServiceConnection;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lnet/easyconn/netlink/service/NetLinkService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->m:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v4, v0}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 20
    :cond_3
    :goto_1
    invoke-static {p0}, Lf/a/i/m/g;->I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    new-instance v0, Lf/a/i/i/s;

    new-instance v1, Lf/a/i/i/h;

    invoke-direct {v1, p0}, Lf/a/i/i/h;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    invoke-direct {v0, v1}, Lf/a/i/i/s;-><init>(Lf/a/i/i/s$a;)V

    .line 22
    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->o:Lf/a/i/i/s;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_USB_DEVICE_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->o:Lf/a/i/i/s;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "EasyConnectService initEcUsbAttachManager"

    .line 23
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Lf/a/i/i/r;

    invoke-direct {v0, p0}, Lf/a/i/i/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->p:Lf/a/i/i/r;

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {v0, v1}, Lf/a/i/i/r;->a(Lf/a/i/i/q;)V

    .line 24
    :cond_4
    invoke-static {p0}, Lf/a/i/m/g;->T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->q:Lf/a/g/j;

    if-nez v0, :cond_6

    new-instance v0, Lf/a/g/j;

    invoke-direct {v0, p0}, Lf/a/g/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->q:Lf/a/g/j;

    new-instance v1, Lf/a/i/i/i;

    invoke-direct {v1, p0}, Lf/a/i/i/i;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    .line 26
    iput-object v1, v0, Lf/a/g/j;->p:Lf/a/g/j$c;

    .line 27
    :cond_6
    :goto_2
    invoke-static {p0}, Lf/a/i/m/g;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    const-string v0, "The current SDK version does not support BLE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 28
    :cond_7
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->r:Lf/a/f/e;

    if-nez v0, :cond_8

    new-instance v0, Lf/a/f/e;

    invoke-direct {v0, p0}, Lf/a/f/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->r:Lf/a/f/e;

    .line 29
    :cond_8
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->r:Lf/a/f/e;

    new-instance v1, Lf/a/i/i/k;

    invoke-direct {v1, p0}, Lf/a/i/i/k;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    .line 30
    iput-object v1, v0, Lf/a/f/e;->i:Lf/a/f/e$b;

    .line 31
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 32
    new-instance v1, Lf/a/i/i/l;

    invoke-direct {v1, p0}, Lf/a/i/i/l;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    if-eqz v0, :cond_a

    const-string v2, "BleAP startBleApService"

    .line 33
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    if-nez v0, :cond_9

    new-instance v0, Lf/a/f/a;

    invoke-direct {v0, p0}, Lf/a/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    .line 35
    :cond_9
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    new-instance v1, Lf/a/i/i/j;

    invoke-direct {v1, p0}, Lf/a/i/i/j;-><init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    .line 36
    iput-object v1, v0, Lf/a/f/a;->e:Lf/a/f/a$c;

    goto :goto_3

    .line 37
    :cond_a
    throw v3

    :cond_b
    :goto_3
    return-void

    .line 38
    :cond_c
    throw v3
.end method

.method public onDestroy()V
    .locals 6

    const-string v0, "EasyConnectService onDestroy()"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_MAX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMirrorOutBroadcast()V

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->release()V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->unregisterAll()V

    :cond_1
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1
    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_3

    const-string v3, "stopP2pSearchForce(), removeCallbacks p2pScan postDelayed"

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->q:Z

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    iget-object v4, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lf/a/i/i/w;

    invoke-direct {v5, v0}, Lf/a/i/i/w;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2
    :cond_3
    :goto_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 3
    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->x:Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

    if-eqz v3, :cond_5

    const-string v3, "unregisterReceiver wifiStatusBroadCastReceiver isRegister = "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->y:Z

    invoke-static {v3, v4}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->y:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    iget-object v4, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->x:Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iput-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->y:Z

    iput-object v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->x:Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

    :cond_5
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_6
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lf/a/i/c/a;->release()V

    :cond_7
    const-string v0, "EasyConnectService closeDeviceWithoutUnbindTransportDevice start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->D()V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->Z()V

    :cond_8
    const-string v0, "EasyConnectService closeDeviceWithoutUnbindTransportDevice end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->m:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->h:Lnet/easyconn/framework/sdkservice/EasyConnectService$c;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->h:Lnet/easyconn/framework/sdkservice/EasyConnectService$c;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    invoke-static {p0}, Lf/a/i/m/g;->I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->p:Lf/a/i/i/r;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Lf/a/i/i/r;->a(Lf/a/i/i/q;)V

    iput-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->p:Lf/a/i/i/r;

    :cond_b
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->o:Lf/a/i/i/s;

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_c
    invoke-static {p0}, Lf/a/i/m/g;->T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->q:Lf/a/g/j;

    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0, v1}, Lf/a/g/j;->l(Z)V

    iget-object v3, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    :cond_d
    iget-object v3, v0, Lf/a/g/j;->d:Lf/a/g/j$b;

    if-eqz v3, :cond_e

    iget-object v4, v0, Lf/a/g/j;->b:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, v0, Lf/a/g/j;->d:Lf/a/g/j$b;

    .line 7
    :cond_e
    iget-object v0, v0, Lf/a/g/j;->a:Lf/a/g/h;

    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0}, Lf/a/g/h;->e()V

    iput-boolean v1, v0, Lf/a/g/h;->j:Z

    iput-boolean v1, v0, Lf/a/g/h;->k:Z

    iput-object v2, v0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    iput-object v2, v0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    iput-object v2, v0, Lf/a/g/h;->e:Landroid/bluetooth/BluetoothManager;

    .line 9
    :cond_f
    iput-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->q:Lf/a/g/j;

    :cond_10
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    if-eqz v0, :cond_12

    .line 10
    iget-object v1, v0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, v0, Lf/a/f/a;->e:Lf/a/f/a$c;

    invoke-virtual {v0}, Lf/a/f/a;->l()V

    const-string v1, "BleNetworkManager unRegisterReceiver()"

    .line 11
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lf/a/f/a;->r:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lf/a/f/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lf/a/f/a;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    :cond_11
    iput-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    :cond_12
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->r:Lf/a/f/e;

    if-eqz v0, :cond_13

    .line 13
    iget-object v0, v0, Lf/a/f/e;->b:Lf/a/f/e$c;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    iput-object v2, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->r:Lf/a/f/e;

    :cond_13
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "onStartCommand()"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "onUnbind()"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
