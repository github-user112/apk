.class public Lf/a/k/m0/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/k/k0/g;
.implements Lf/a/i/h/c;


# instance fields
.field public final a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

.field public b:Lf/a/k/k0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/k/k0/h;Lnet/easyconn/framework/sdkservice/EasyConnectService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iput-object p2, p0, Lf/a/k/m0/u0;->b:Lf/a/k/k0/h;

    invoke-interface {p2, p0}, Lf/a/d;->E(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public C()V
    .locals 0

    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G(I)V
    .locals 0

    return-void
.end method

.method public J()V
    .locals 0

    return-void
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 4
    iget v0, v0, Lf/a/i/i/q;->o:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public P(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrRegisterPresenter onLicenseAuthFailForQuickCheck, errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/u0;->b:Lf/a/k/k0/h;

    invoke-interface {v0, p1, p2}, Lf/a/k/k0/h;->r(ILjava/lang/String;)V

    return-void
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public V()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b()V

    :cond_0
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    invoke-virtual {v0}, Lf/a/i/e/a;->getLicensePwd()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public Z(I)V
    .locals 0

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 4
    iget-object v0, v0, Lf/a/i/i/q;->p:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public c0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(ZLnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 0

    return-void
.end method

.method public e0()V
    .locals 0

    return-void
.end method

.method public f(Z)V
    .locals 0

    return-void
.end method

.method public f0(Z)V
    .locals 0

    return-void
.end method

.method public g(J)V
    .locals 0

    return-void
.end method

.method public g0()Z
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 4
    iget-boolean v0, v0, Lf/a/i/i/q;->l:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public h0(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)V
    .locals 0

    return-void
.end method

.method public i(Lnet/easyconn/ecsdk/ECTypes$ECPageInstallResult;)V
    .locals 0

    return-void
.end method

.method public j0()V
    .locals 0

    return-void
.end method

.method public m(Z)V
    .locals 0

    return-void
.end method

.method public m0([BI)V
    .locals 0

    return-void
.end method

.method public n0(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 0

    return-void
.end method

.method public o(III)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLicenseAuthFail(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrRegisterPresenter onLicenseAuthFail, errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/u0;->b:Lf/a/k/k0/h;

    invoke-interface {v0, p1, p2}, Lf/a/k/k0/h;->k(ILjava/lang/String;)V

    return-void
.end method

.method public onLicenseAuthSuccess(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrRegisterPresenter onLicenseAuthSuccess, authCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", authMsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/m0/u0;->b:Lf/a/k/k0/h;

    invoke-interface {p1}, Lf/a/k/k0/h;->G()V

    return-void
.end method

.method public onMusicInfo(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V
    .locals 0

    return-void
.end method

.method public onPageStatusChanged(III)V
    .locals 0

    return-void
.end method

.method public onParallelWorldAudioSource(I)V
    .locals 0

    return-void
.end method

.method public onPhoneBluetoothState(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public q(ZZ)V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "QrRegisterPresenter startQuickCheckLicense"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/k/m0/u0;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QrRegisterPresenter startQuickCheckLicense fail, ecConnectService is null"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1
    :cond_0
    iget-object v0, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x2b

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3
    iget-object v0, p0, Lf/a/k/m0/u0;->b:Lf/a/k/k0/h;

    invoke-interface {v0}, Lf/a/k/k0/h;->J()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public t(JJJJ)V
    .locals 0

    return-void
.end method

.method public v(I)V
    .locals 0

    return-void
.end method

.method public x(Z)V
    .locals 0

    return-void
.end method
