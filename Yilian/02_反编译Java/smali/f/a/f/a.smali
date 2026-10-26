.class public Lf/a/f/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/f/a$e;,
        Lf/a/f/a$d;,
        Lf/a/f/a$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;

.field public c:Landroid/content/Context;

.field public d:Lf/a/f/a$d;

.field public e:Lf/a/f/a$c;

.field public f:Landroid/net/wifi/WifiManager;

.field public g:Landroid/net/ConnectivityManager;

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Ljava/lang/String;

.field public volatile k:Ljava/lang/String;

.field public volatile l:Ljava/lang/String;

.field public m:Lf/a/f/a$e;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public volatile o:Z

.field public volatile p:Z

.field public volatile q:Z

.field public r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/f/a;->h:Z

    iput-boolean v0, p0, Lf/a/f/a;->i:Z

    iput-boolean v0, p0, Lf/a/f/a;->o:Z

    iput-boolean v0, p0, Lf/a/f/a;->p:Z

    iput-boolean v0, p0, Lf/a/f/a;->q:Z

    new-instance v1, Lf/a/f/a$a;

    invoke-direct {v1, p0}, Lf/a/f/a$a;-><init>(Lf/a/f/a;)V

    iput-object v1, p0, Lf/a/f/a;->r:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lf/a/f/a;->c:Landroid/content/Context;

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/a/f/a;->n:Ljava/util/List;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "ble_network_manager_msg_thread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lf/a/f/a$d;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lf/a/f/a$d;-><init>(Lf/a/f/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    iget-object p1, p0, Lf/a/f/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    iget-object p1, p0, Lf/a/f/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lf/a/f/a;->g:Landroid/net/ConnectivityManager;

    iget-object p1, p0, Lf/a/f/a;->c:Landroid/content/Context;

    const-string v1, "ble_android_ap_info"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf/a/f/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string p1, "BleNetworkManager registerReceiver()"

    .line 2
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lf/a/f/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lf/a/f/a;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "BleNetworkManager startAutoConnect"

    .line 3
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lf/a/f/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "ble_is_android_device"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BleNetworkManager startAutoConnect isLastBLEAndroidDevice"

    .line 5
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/f/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lf/a/f/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lf/a/f/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "BleNetworkManager startAutoConnect isLastBLEIosDevice"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lf/a/f/a;->i:Z

    invoke-virtual {p0, v0}, Lf/a/f/a;->m(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    const-string v0, "BleNetworkManager apEnabled enabled = "

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lf/a/f/a;->f()Z

    move-result p1

    const/4 v0, 0x3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lf/a/f/a;->h()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lf/a/f/a;->f()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lf/a/f/a;->g()V

    :goto_1
    return-void
.end method

.method public b()Z
    .locals 6

    const-string v0, "BleNetworkManager connectWifi ssid = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/f/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Build.VERSION.SDK_INT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    new-instance v2, Landroid/os/PatternMatcher;

    iget-object v3, p0, Lf/a/f/a;->j:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsidPattern(Landroid/os/PatternMatcher;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object v0

    iget-object v2, p0, Lf/a/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object v0

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lf/a/f/a$b;

    invoke-direct {v2, p0}, Lf/a/f/a$b;-><init>(Lf/a/f/a;)V

    iget-object v3, p0, Lf/a/f/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string v0, "BleNetworkManager connectWifi requestNetwork"

    goto/16 :goto_1

    :cond_0
    const-string v0, "BleNetworkManager wifiSanResultList size : "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lf/a/f/a;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/f/a;->n:Ljava/util/List;

    iget-object v3, p0, Lf/a/f/a;->j:Ljava/lang/String;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "BleNetworkManager connectWifi not found target ssid"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v2

    :cond_3
    iget-object v0, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lf/a/f/a;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "BleNetworkManager connectWifi isConnect, return"

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    :cond_5
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v3, "\""

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lf/a/f/a;->j:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lf/a/f/a;->k:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v3, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const-string v3, "BleNetworkManager connectWifi addNetwork networkId = "

    invoke-static {v3, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    iget-object v2, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    iget-object v2, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const-string v0, "BleNetworkManager connectWifi enableNetwork"

    .line 3
    :goto_1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v1

    :cond_6
    return v2
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lf/a/f/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "pwd"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lf/a/f/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "ssid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApConfiguration"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BleNetworkManager getApPassword Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public f()Z
    .locals 5

    iget-object v0, p0, Lf/a/f/a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWifiApState"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v2, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    const-string v2, "BleNetworkManager wifi sharing state -> "

    invoke-static {v2, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public g()V
    .locals 2

    const-string v0, "BleNetworkManager onApClosed inProgressOpenWifiAndConnectForBleAp = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/f/a;->h:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/f/a;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a/f/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 5

    const-string v0, "BleNetworkManager onApOpen mInProgressOpenApAndConnectForBleAp = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/f/a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsIosBleConnect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/f/a;->q:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lf/a/f/a;->e:Lf/a/f/a$c;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lf/a/f/a;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lf/a/f/a;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/f/a;->e:Lf/a/f/a$c;

    .line 1
    invoke-virtual {p0}, Lf/a/f/a;->e()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BleNetworkManager getApName apName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lf/a/f/a;->e()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_1
    const-string v3, "BleNetworkManager getApPassword apPassword = "

    invoke-static {v3, v2}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lf/a/f/a;->l:Ljava/lang/String;

    check-cast v0, Lf/a/i/i/j;

    if-eqz v0, :cond_2

    const-string v0, "EasyConnectService onApOpen"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;-><init>()V

    iput-object v1, v0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->ssid:Ljava/lang/String;

    iput-object v2, v0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->pwd:Ljava/lang/String;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v0}, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;-><init>(ILnet/easyconn/ecsdk/ECTypes$EBTNetInfo;)V

    invoke-virtual {v1, v3, v2}, Lnet/easyconn/ecsdk/ECSDK;->setBTRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf/a/f/a;->i:Z

    iput-boolean v0, p0, Lf/a/f/a;->q:Z

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "BleNetworkManager onWifiOpen"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "BleNetworkManager startScanWifi"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/f/a;->o:Z

    iget-object v0, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    if-nez v0, :cond_0

    new-instance v0, Lf/a/f/a$e;

    invoke-direct {v0, p0}, Lf/a/f/a$e;-><init>(Lf/a/f/a;)V

    iput-object v0, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    const-string v1, "WiFiScanThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/a/f/a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleNetworkManager openWifiAndConnect ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/f/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf/a/f/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "BleNetworkManager saveNewAndroidApInfo, oldApInfo ssid:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lf/a/f/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf/a/f/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ;newApInfo ssid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ssid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pwd"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    :cond_1
    iput-object p1, p0, Lf/a/f/a;->j:Ljava/lang/String;

    iput-object p2, p0, Lf/a/f/a;->k:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf/a/f/a;->h:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf/a/f/a;->a(Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 2

    iget-object v0, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ble_is_android_device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    const-string v1, "ssid"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pwd"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    :cond_0
    iget-object p1, p0, Lf/a/f/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public l()V
    .locals 4

    const-string v0, "BleNetworkManager stopScanWifi"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/f/a;->o:Z

    iget-object v0, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    throw v0

    :catch_0
    :cond_0
    :goto_0
    iput-object v1, p0, Lf/a/f/a;->m:Lf/a/f/a$e;

    :cond_1
    return-void
.end method

.method public m(Z)V
    .locals 1

    const-string v0, "BleNetworkManager wifiEnabled enabled = "

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lf/a/f/a;->i()V

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    :goto_1
    const/4 p1, 0x2

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lf/a/f/a;->d:Lf/a/f/a$d;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, "BleNetworkManager onWifiClosed"

    .line 5
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/f/a;->l()V

    iget-boolean p1, p0, Lf/a/f/a;->i:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lf/a/f/a;->a(Z)V

    :cond_5
    :goto_2
    return-void
.end method
