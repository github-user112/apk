.class public Lnet/easyconn/ecsdk/d$f;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/d;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/d;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/easyconn/ecsdk/d;Lnet/easyconn/ecsdk/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/d$f;-><init>(Lnet/easyconn/ecsdk/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lnet/easyconn/ecsdk/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiP2pBroadcastReceiver action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    const-string v1, "wifiP2pInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-static {}, Lnet/easyconn/ecsdk/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, " networkInfo.isConnected "

    invoke-static {p1, v2}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lnet/easyconn/ecsdk/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, " wifiP2pInfo="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Landroid/net/wifi/p2p/WifiP2pInfo;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v0}, Lnet/easyconn/ecsdk/d;->d(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/easyconn/ecsdk/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wifiP2pInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mWifiP2pInfo="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {p2}, Lnet/easyconn/ecsdk/d;->d(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lnet/easyconn/ecsdk/d;->a(Lnet/easyconn/ecsdk/d;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object p2, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {p2}, Lnet/easyconn/ecsdk/d;->e(Lnet/easyconn/ecsdk/d;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    iget-object p1, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {p1}, Lnet/easyconn/ecsdk/d;->b(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    iget-object p2, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {p2}, Lnet/easyconn/ecsdk/d;->c(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p2

    iget-object v0, p0, Lnet/easyconn/ecsdk/d$f;->a:Lnet/easyconn/ecsdk/d;

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "wifi_p2p_state"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lnet/easyconn/ecsdk/d;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WIFI_P2P_STATE_CHANGED_ACTION state="

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
