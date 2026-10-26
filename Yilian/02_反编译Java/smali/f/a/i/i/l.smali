.class public Lf/a/i/i/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EasyConnectService;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/l;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneAPInfo(Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyConnectService onPhoneAPInfo ebtNetInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/l;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->pwd:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BleNetworkManager openWifiAndConnectForBleAp ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", password = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lf/a/f/a;->k(Z)V

    iput-boolean v2, v0, Lf/a/f/a;->p:Z

    invoke-virtual {v0, v1, p1}, Lf/a/f/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public onPhoneBuildNetFinish()V
    .locals 2

    const-string v0, "EasyConnectService onPhoneBuildNetFinish"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/l;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/l;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v1, v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestBuildNet(Lnet/easyconn/ecsdk/ECTypes$EBTClientInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyConnectService onRequestBuildNet ebtClientInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$EBTClientInfo;->phoneType:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/i/i/l;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$EBTClientInfo;->phoneID:Ljava/lang/String;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;-><init>(I)V

    if-eqz v0, :cond_0

    const-string v1, "BleAP setBTRequestBuildNetRly"

    .line 1
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "phoneId"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rly"

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x40

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    throw v1

    .line 2
    :cond_1
    iget-object v0, p0, Lf/a/i/i/l;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->s:Lf/a/f/a;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$EBTClientInfo;->phoneID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleNetworkManager openApAndConnectForBleAp phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/f/a;->k(Z)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lf/a/f/a;->q:Z

    iput-object p1, v0, Lf/a/f/a;->l:Ljava/lang/String;

    .line 4
    iput-boolean v2, v0, Lf/a/f/a;->i:Z

    invoke-virtual {v0, v1}, Lf/a/f/a;->m(Z)V

    :goto_0
    return-void

    .line 5
    :cond_2
    throw v1
.end method

.method public onRequestBuildNetCancel()V
    .locals 1

    const-string v0, "EasyConnectService onRequestBuildNetCancel"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
