.class public Lf/a/f/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/f/a;


# direct methods
.method public constructor <init>(Lf/a/f/a;)V
    .locals 0

    iput-object p1, p0, Lf/a/f/b;->a:Lf/a/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lf/a/f/b;->a:Lf/a/f/a;

    iget-object v2, v2, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BleNetworkManager onWifiConnected ssid = "

    const-string v5, ", connectApSsid = "

    invoke-static {v4, v3, v5}, Le/a/c/a/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lf/a/f/b;->a:Lf/a/f/a;

    iget-object v5, v5, Lf/a/f/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ipAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf/a/f/b;->a:Lf/a/f/a;

    iget-object v6, v6, Lf/a/f/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "0.0.0.0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lf/a/f/b;->a:Lf/a/f/a;

    .line 1
    iget-object v1, v1, Lf/a/f/a;->e:Lf/a/f/a$c;

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, Lf/a/i/i/j;

    const-string v3, "EasyConnectService onBleWifiConnected"

    .line 3
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v1, Lf/a/i/i/j;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v1, v2}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lf/a/f/b;->a:Lf/a/f/a;

    iput-boolean v0, v1, Lf/a/f/a;->h:Z

    iget-object v1, p0, Lf/a/f/b;->a:Lf/a/f/a;

    iput-boolean v0, v1, Lf/a/f/a;->p:Z

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    const-string v2, "BleNetworkManager onWifiConnected getIP retryCount= "

    invoke-static {v2, v1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
