.class public Lnet/easyconn/framework/sdkservice/EcWifiManager$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/sdkservice/EcWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EcWifiManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;Lnet/easyconn/framework/sdkservice/EcWifiManager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "wifi_state"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    goto/16 :goto_b

    :cond_0
    iput-boolean v4, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->c:Z

    :cond_1
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p1, :cond_37

    check-cast p1, Lf/a/k/i0;

    invoke-virtual {p1, v4}, Lf/a/k/i0;->e(Z)V

    goto/16 :goto_b

    :cond_2
    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->c:Z

    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->k:Z

    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->d:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    if-eqz p2, :cond_3

    .line 2
    iget-boolean p2, p2, Lf/a/i/i/q;->j:Z

    if-eqz p2, :cond_3

    const-string p2, "dealWifiStateChangedAction closeWifiService"

    .line 3
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    invoke-virtual {p2}, Lf/a/i/i/q;->E()I

    :cond_3
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p1, :cond_37

    check-cast p1, Lf/a/k/i0;

    invoke-virtual {p1, v1}, Lf/a/k/i0;->e(Z)V

    goto/16 :goto_b

    :cond_4
    throw v5

    .line 4
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 5
    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->f:Landroid/net/ConnectivityManager;

    if-nez p2, :cond_6

    goto/16 :goto_b

    :cond_6
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    const-string v0, "No network is available, please make sure you have open the Wi-Fi state."

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v4, :cond_c

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Current Wi-Fi connection is available."

    invoke-static {v0, p2}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->r:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 6
    iget-object p2, p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    .line 7
    iput-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    const-string p2, "mBleNetworkManager.mIsAndroidBleConnect:"

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lf/a/f/a;->p:Z

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    if-eqz p2, :cond_9

    iget-boolean p2, p2, Lf/a/f/a;->p:Z

    if-eqz p2, :cond_9

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    if-eqz p2, :cond_8

    const-string v0, "BleNetworkManager onWifiConnected inProgressOpenWifiAndConnectForBleAp = "

    .line 8
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p2, Lf/a/f/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAndroidBleConnect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p2, Lf/a/f/a;->p:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p2, Lf/a/f/a;->h:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p2, Lf/a/f/a;->p:Z

    if-eqz v0, :cond_b

    iget-object v0, p2, Lf/a/f/a;->d:Lf/a/f/a$d;

    new-instance v1, Lf/a/f/b;

    invoke-direct {v1, p2}, Lf/a/f/b;-><init>(Lf/a/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_8
    throw v5

    .line 9
    :cond_9
    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    if-eqz p2, :cond_a

    iput-boolean v1, p2, Lf/a/f/a;->h:Z

    :cond_a
    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    if-eqz p2, :cond_b

    const-string p2, "Current Wi-Fi connection is available reOpenWifiService"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    invoke-virtual {p2}, Lf/a/i/i/q;->Y()I

    :cond_b
    :goto_1
    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p2, :cond_37

    goto :goto_2

    :cond_c
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-nez p2, :cond_37

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Current 4G network is available."

    invoke-static {v0, p2}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p2, :cond_37

    goto :goto_2

    :cond_d
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p2}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    invoke-virtual {p2}, Lf/a/i/i/q;->E()I

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p2, :cond_37

    goto :goto_2

    :cond_e
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p2}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p2, :cond_37

    :goto_2
    iget-boolean p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b:Z

    check-cast p2, Lf/a/k/i0;

    invoke-virtual {p2, p1}, Lf/a/k/i0;->a(Z)V

    goto/16 :goto_b

    :cond_f
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0x12

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz p1, :cond_19

    const-string v0, "networkInfo"

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    const-string v2, "WiFiStatusManager action = WifiP2pManager.WIFI_P2P_CONNECTION_CHANGED_ACTION. isConnected is "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iput-boolean v4, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_15

    const-string v0, "wifiP2pInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    const-string v2, "p2pGroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz p2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiP2pGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_10
    if-nez v0, :cond_11

    const-string p1, "dealWifiP2pInfoWhenConnected wifiP2pInfo is null"

    .line 12
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealWifiP2pInfoWhenConnected wifiP2pInfo = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean p2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz p2, :cond_14

    iget-boolean p2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz p2, :cond_12

    const-string p2, "dealWifiP2pInfoWhenConnected wifiP2pInfo reOpenWifiService"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    if-eqz p1, :cond_18

    goto :goto_3

    :cond_12
    iget-object p2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dealWifiP2pInfoWhenConnected setWifiIpAddress address = "

    invoke-static {v0, p2}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_WIFI:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eqz v0, :cond_13

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiIpAddress address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iput-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x2d

    iput v1, p2, Landroid/os/Message;->what:I

    iget-object v0, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    if-eqz p1, :cond_18

    :goto_3
    invoke-virtual {p1}, Lf/a/i/i/q;->Y()I

    goto :goto_4

    .line 15
    :cond_13
    throw v5

    :cond_14
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "dealWifiP2pInfoWhenConnected group not formed!!!"

    .line 16
    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 17
    :cond_15
    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lf/a/i/i/d;

    invoke-direct {v1, p1}, Lf/a/i/i/d;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_4

    :cond_16
    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->d:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_17

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    :cond_17
    invoke-virtual {p1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h()V

    .line 18
    :cond_18
    :goto_4
    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {p1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b()V

    goto/16 :goto_b

    .line 19
    :cond_19
    throw v5

    :cond_1a
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz p1, :cond_1c

    const-string v0, "wifi_p2p_state"

    .line 21
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->l:Z

    const-string p2, "mWifiP2pEnabled change to "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->l:Z

    invoke-static {p2, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->l:Z

    if-nez p2, :cond_37

    const-string p2, "mWifiP2pEnabled change to false, removeCallbacks p2pScan postDelayed"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_1c
    throw v5

    :cond_1d
    const-string v0, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz p1, :cond_21

    const-string v0, "discoveryState"

    .line 23
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_1e

    const-string v0, "Discovery state change to STOPPED"

    goto :goto_5

    :cond_1e
    if-ne p2, v3, :cond_1f

    const-string v0, "Discovery state changed to STARTED"

    :goto_5
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1f
    if-ne p2, v3, :cond_20

    iput-boolean v4, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->k:Z

    goto/16 :goto_b

    :cond_20
    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->k:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    .line 24
    iget-boolean p2, p2, Lf/a/i/i/q;->T:Z

    if-nez p2, :cond_37

    const-string p2, "Discovery state p2pScan postDelayed 12000"

    .line 25
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2ee0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    :cond_21
    throw v5

    :cond_22
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 27
    iput-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string p1, "My Wi-Fi P2P name is : "

    .line 28
    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 29
    iget-object p2, p2, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 30
    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " address\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 31
    iget-object p2, p2, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 32
    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 33
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 34
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a:Landroid/content/Context;

    const-string p2, "EC_DEVICE_NAME"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 35
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 36
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p2, :cond_24

    .line 37
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 38
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    check-cast p2, Lf/a/k/i0;

    invoke-virtual {p2, p1}, Lf/a/k/i0;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_23
    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p2, :cond_24

    .line 39
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 40
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    check-cast p2, Lf/a/k/i0;

    const-string p2, "important_log wifiP2pChanged deviceName = "

    .line 41
    invoke-static {p2, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_24
    :goto_6
    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 43
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_b

    :cond_25
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz p1, :cond_2d

    .line 45
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_26

    const-string p1, "EcWifiManager Hotspot status is closing."

    goto :goto_7

    :cond_26
    const/16 v0, 0xb

    if-ne p2, v0, :cond_27

    const-string p2, "EcWifiManager Hotspot status is closed.."

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->w:Z

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p1, :cond_37

    check-cast p1, Lf/a/k/i0;

    invoke-virtual {p1, v1}, Lf/a/k/i0;->c(Z)V

    goto/16 :goto_b

    :cond_27
    const/16 v0, 0xc

    if-ne p2, v0, :cond_28

    const-string p1, "EcWifiManager Hotspot status is opening."

    :goto_7
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_28
    const/16 v0, 0xd

    if-ne p2, v0, :cond_37

    const-string p2, "EcWifiManager Hotspot status is opened.."

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v4, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->w:Z

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->r:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 46
    iget-object p2, p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    .line 47
    iput-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    const-string p2, "mBleNetworkManager.mIsIosBleConnect:"

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    if-eqz v0, :cond_29

    iget-boolean v0, v0, Lf/a/f/a;->q:Z

    goto :goto_8

    :cond_29
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    if-eqz p2, :cond_2a

    iget-boolean p2, p2, Lf/a/f/a;->q:Z

    if-eqz p2, :cond_2a

    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    invoke-virtual {p2}, Lf/a/f/a;->h()V

    goto :goto_9

    :cond_2a
    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->s:Lf/a/f/a;

    if-eqz p2, :cond_2b

    iput-boolean v1, p2, Lf/a/f/a;->i:Z

    .line 48
    :cond_2b
    iget-object p2, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lf/a/i/i/q;->Y()I

    .line 49
    :cond_2c
    :goto_9
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p1, :cond_37

    check-cast p1, Lf/a/k/i0;

    invoke-virtual {p1, v4}, Lf/a/k/i0;->c(Z)V

    goto/16 :goto_b

    :cond_2d
    throw v5

    :cond_2e
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz p1, :cond_32

    const-string v0, "wifiInfo"

    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiInfo;

    if-nez p2, :cond_30

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_30

    :cond_2f
    iget-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->i:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "dealWifiConnectStateChange getConnectionInfo2"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealWifiConnectStateChange wifiInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_31

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "wifiInfo null"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_31
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object p2

    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p2, v0, :cond_37

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p1, :cond_37

    check-cast p1, Lf/a/k/i0;

    invoke-virtual {p1, v4}, Lf/a/k/i0;->d(Z)V

    goto/16 :goto_b

    :cond_32
    throw v5

    :cond_33
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p1, "newState"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz p1, :cond_37

    check-cast p1, Lf/a/k/i0;

    invoke-virtual {p1, v1}, Lf/a/k/i0;->d(Z)V

    goto :goto_b

    :cond_34
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz p1, :cond_36

    const-string p1, "dealWifiP2PPeersChangeAction() begin"

    .line 53
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v6, :cond_35

    const-string p1, "wifiP2pDeviceList"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v0, "dealWifiP2PPeersChangeAction(), WifiP2pDevice deviceName = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " deviceAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-static {v0, p2}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    goto :goto_a

    :cond_35
    const-string p1, "dealWifiP2PPeersChangeAction() end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_36
    throw v5

    :cond_37
    :goto_b
    return-void
.end method
