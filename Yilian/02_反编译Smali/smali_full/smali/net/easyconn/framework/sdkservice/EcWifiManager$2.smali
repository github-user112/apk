.class public Lnet/easyconn/framework/sdkservice/EcWifiManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/framework/sdkservice/EcWifiManager;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lnet/easyconn/framework/sdkservice/EcWifiManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;->b:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iput-object p2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcWifiManager onDeviceInfoAvailable wifiP2pDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "EcWifiManager WifiP2pReceiver wifiP2pDeviceName = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EcWifiManager WifiP2pReceiver wifiP2pDeviceName changeCarNavigatorName"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/ECSDK;->changeCarNavigatorName(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "EC_DEVICE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;->b:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    check-cast v0, Lf/a/k/i0;

    invoke-virtual {v0, v1}, Lf/a/k/i0;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$2;->b:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->z:Lnet/easyconn/framework/sdkservice/EasyConnectService$d;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    check-cast v0, Lf/a/k/i0;

    const-string v0, "important_log wifiP2pChanged deviceName = "

    .line 1
    invoke-static {v0, v1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "onDeviceInfoAvailable My Wi-Fi P2P name is : "

    .line 2
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
