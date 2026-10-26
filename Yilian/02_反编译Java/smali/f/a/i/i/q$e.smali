.class public Lf/a/i/i/q$e;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/i/q;


# direct methods
.method public constructor <init>(Lf/a/i/i/q;Lf/a/i/i/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiP2pReceiver onReceive: "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    iget-boolean v0, v0, Lf/a/i/i/q;->G:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1
    iput-object p2, p1, Lf/a/i/i/q;->F:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string p1, "WifiP2pReceiver wifiP2pDevice = "

    .line 2
    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    .line 3
    iget-object p2, p2, Lf/a/i/i/q;->F:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    .line 5
    iget-object p1, p1, Lf/a/i/i/q;->F:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "EcSdkManager WifiP2pReceiver wifiP2pDeviceName = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    .line 7
    iget-object p2, p2, Lf/a/i/i/q;->F:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 8
    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    iget-object p1, p1, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "EcSdkManager WifiP2pReceiver wifiP2pDeviceName changeCarNavigatorName"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    .line 9
    iget-object p2, p2, Lf/a/i/i/q;->F:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 10
    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->changeCarNavigatorName(Ljava/lang/String;)I

    iget-object p1, p0, Lf/a/i/i/q$e;->a:Lf/a/i/i/q;

    .line 11
    iget-object p2, p1, Lf/a/i/i/q;->F:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 12
    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "EcSdkManager putDeviceName = "

    .line 13
    invoke-static {v0, p2}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lf/a/i/i/q;->v:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "EC_DEVICE_NAME"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
