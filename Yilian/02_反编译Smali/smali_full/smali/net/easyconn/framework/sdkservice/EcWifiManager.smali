.class public Lnet/easyconn/framework/sdkservice/EcWifiManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/framework/sdkservice/EcWifiManager$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z

.field public e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Landroid/net/ConnectivityManager;

.field public g:Lf/a/i/i/q;

.field public h:Landroid/net/wifi/p2p/WifiP2pManager;

.field public i:Landroid/net/wifi/WifiManager;

.field public j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public p:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field public q:Z

.field public r:Lnet/easyconn/framework/sdkservice/EasyConnectService;

.field public s:Lf/a/f/a;

.field public t:Landroid/os/Handler;

.field public u:Ljava/lang/Runnable;

.field public v:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public w:Z

.field public x:Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

.field public y:Z

.field public z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/i/i/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->o:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-boolean v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->q:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    new-instance v1, Lnet/easyconn/framework/sdkservice/EcWifiManager$a;

    invoke-direct {v1, p0}, Lnet/easyconn/framework/sdkservice/EcWifiManager$a;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    iput-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->x:Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

    iput-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    move-object p2, p1

    check-cast p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iput-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->r:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->f:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b()V

    :cond_0
    return-void
.end method

.method public static a(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->n:Z

    iget-object p0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->o:Landroid/net/wifi/p2p/WifiP2pDevice;

    check-cast v0, Lf/a/k/i0;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "important_log wifiP2pConnectDeviceChange isConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , p2pDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lf/a/k/i0;->a:Lf/a/k/g0;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lf/a/k/i0;->a:Lf/a/k/g0;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lf/a/k/i0;->a:Lf/a/k/g0;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/m/g;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lf/a/i/m/g;->a:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-object v0, v0, Lf/a/k/i0;->a:Lf/a/k/g0;

    .line 3
    new-instance v2, Lf/a/k/q;

    invoke-direct {v2, v0, v1, p0}, Lf/a/k/q;-><init>(Lf/a/k/g0;ZLandroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p0, "notifyWifiP2pConnectDeviceChange fail because mWifiStateListener is null"

    .line 4
    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->p:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    if-nez v0, :cond_0

    new-instance v0, Lnet/easyconn/framework/sdkservice/EcWifiManager$b;

    invoke-direct {v0, p0}, Lnet/easyconn/framework/sdkservice/EcWifiManager$b;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->p:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->p:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "dealWifiP2pInfoWhenConnected wifiP2pInfo is null"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealWifiP2pInfoWhenConnected wifiP2pInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_1

    const-string p1, "dealWifiP2pInfoWhenConnected wifiP2pInfo reOpenWifiService"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dealWifiP2pInfoWhenConnected setWifiIpAddress address = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_WIFI:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eqz v0, :cond_2

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiIpAddress address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", transportType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "address"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x2d

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2
    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    if-eqz p1, :cond_4

    .line 3
    :goto_0
    invoke-virtual {p1}, Lf/a/i/i/q;->Y()I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 4
    throw p1

    :cond_3
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "dealWifiP2pInfoWhenConnected group not formed!!!"

    .line 5
    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 5

    const-string v0, "initP2pInfo version = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget-object v2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v2, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;

    invoke-direct {v2, p0, p1}, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "error\uff1ainitP2pInfo now android version is "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", need android version >= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "initP2pInfo mP2pManager is null, wifi p2p feature not supported on this device."

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 11

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "EcWifiManager mWifiManager is null"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EcWifiManager isWifiConnect wifiInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "EcWifiManager isWifiConnect standard ipAddress = "

    invoke-static {v2, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 v2, 0x1

    if-nez v0, :cond_7

    const-string v3, "wlan0"

    const/4 v4, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v3, "EcWifiManager Enumeration nis == null"

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :cond_2
    move-object v6, v4

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v3, "EcWifiManager Enumeration ias == null"

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    if-nez v8, :cond_5

    const-string v3, "EcWifiManager Enumeration ia == null"

    :goto_2
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EcWifiManager getIpAddressFromNetInterface ia = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le/e/a/g;->a(Ljava/lang/Object;)V

    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    move-object v4, v6

    goto :goto_4

    :catch_0
    move-exception v3

    move-object v4, v6

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_3
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    :goto_4
    const-string v3, "EcWifiManager getIpAddressFromNetInterface hostIp = "

    invoke-static {v3, v4}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    const-string v3, "EcWifiManager isWifiConnect ipAddress = "

    const-string v4, " , isWifiEnabled = "

    .line 2
    invoke-static {v3, v0, v4}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public synthetic f(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcWifiManager requestGroupInfo group = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lf/a/i/i/t;

    invoke-direct {v1, p0}, Lf/a/i/i/t;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public g(Lnet/easyconn/framework/sdkservice/EasyConnectService$d;)V
    .locals 2

    iput-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->y:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->y:Z

    .line 1
    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->x:Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;Lnet/easyconn/framework/sdkservice/EcWifiManager$a;)V

    iput-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->x:Lnet/easyconn/framework/sdkservice/EcWifiManager$c;

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "register wifiStatusBroadCastReceiver"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    const-string v0, "startP2pSearch() wifiManager is null, return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "startP2pSearch() step1, isWifiEnabled:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWifiP2pSearching is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; ecSdkManager.isTransportOpen() is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    .line 1
    iget-boolean v1, v1, Lf/a/i/i/q;->T:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForceStopped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->q:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    .line 3
    iget-boolean v0, v0, Lf/a/i/i/q;->T:Z

    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->q:Z

    if-nez v0, :cond_2

    const-string v0, "startP2pSearch() step2"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lf/a/i/i/u;

    invoke-direct {v2, p0}, Lf/a/i/i/u;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    return-void
.end method
