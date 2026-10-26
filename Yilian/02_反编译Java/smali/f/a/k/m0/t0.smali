.class public Lf/a/k/m0/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/k/k0/e;
.implements Lf/a/i/h/c;
.implements Lf/a/i/h/g;


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field public final a:Lf/a/k/k0/f;

.field public final b:Landroid/os/Handler;

.field public final c:Lf/a/i/j/c;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/a/k/m0/t0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/a/k/k0/f;Landroid/os/Handler;Lf/a/i/j/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/m0/t0;->d:Z

    iput-object p1, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    check-cast p1, Lf/a/k/l0/v3;

    if-eqz p1, :cond_0

    .line 1
    iput-object p0, p1, Lf/a/k/l0/v3;->I:Lf/a/k/k0/e;

    .line 2
    iput-object p2, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    iput-object p3, p0, Lf/a/k/m0/t0;->c:Lf/a/i/j/c;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
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
    .locals 3

    const-string v0, "onConfigFailed : type = "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/m0;

    invoke-direct {v2, v1}, Lf/a/k/m0/m0;-><init>(Lf/a/k/k0/f;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/t0;->c:Lf/a/i/j/c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x13880

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, p1}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public J()V
    .locals 0

    return-void
.end method

.method public M(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public Z(I)V
    .locals 3

    const-string v0, "onTransportFailed : type = "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    sget-object v1, Lf/a/k/m0/t0;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/m0;

    invoke-direct {v2, v1}, Lf/a/k/m0/m0;-><init>(Lf/a/k/k0/f;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/t0;->c:Lf/a/i/j/c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x13880

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, p1}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/t0;->c:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
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
    .locals 5

    const-string p2, "onPhoneConnectStatus : isConnected = "

    invoke-static {p2, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object p2, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    sget-object v0, Lf/a/k/m0/t0;->f:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    if-eqz p1, :cond_1

    const-string p1, "statusTipConnectingAtTime start"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    new-instance p2, Lf/a/k/m0/y;

    invoke-direct {p2, p0}, Lf/a/k/m0/y;-><init>(Lf/a/k/m0/t0;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    new-instance p2, Lf/a/k/m0/x;

    invoke-direct {p2, p0}, Lf/a/k/m0/x;-><init>(Lf/a/k/m0/t0;)V

    sget-object v0, Lf/a/k/m0/t0;->f:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    iget-object p2, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lf/a/k/m0/h;

    invoke-direct {v0, p2}, Lf/a/k/m0/h;-><init>(Lf/a/k/k0/f;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
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

.method public h(I)V
    .locals 4

    iget-object v0, p0, Lf/a/k/m0/t0;->c:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    const v1, 0x13880

    const/16 v2, 0x14

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_0
    const-string v0, "onInitFailed : type = "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lf/a/k/m0/m0;

    invoke-direct {v1, v0}, Lf/a/k/m0/m0;-><init>(Lf/a/k/k0/f;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

.method public j(Ljava/lang/String;FII)V
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
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/t0;->c:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/i/j/c;->g()V

    :cond_0
    iget-object v0, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    check-cast v0, Lf/a/k/l0/v3;

    if-eqz v0, :cond_1

    .line 1
    iput-object v1, v0, Lf/a/k/l0/v3;->I:Lf/a/k/k0/e;

    return-void

    .line 2
    :cond_1
    throw v1
.end method

.method public onLicenseAuthFail(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/a0;

    invoke-direct {v1, p0, p1, p2}, Lf/a/k/m0/a0;-><init>(Lf/a/k/m0/t0;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLicenseAuthSuccess(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/z;

    invoke-direct {v1, p0, p1, p2}, Lf/a/k/m0/z;-><init>(Lf/a/k/m0/t0;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMusicInfo(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V
    .locals 0

    return-void
.end method

.method public onOTAUpdateRequestDownload([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
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

.method public q0(Landroid/content/Context;Lf/a/i/i/q;)V
    .locals 3

    .line 1
    iget-boolean v0, p2, Lf/a/i/i/q;->T:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p2, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v0, :cond_1

    .line 3
    iput-object p0, v0, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    .line 4
    :cond_1
    iput-object p0, p2, Lf/a/i/i/q;->C:Lf/a/i/h/g;

    .line 5
    invoke-static {p1}, Lf/a/i/l/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/m0/t0;->e:Ljava/lang/String;

    invoke-static {p1}, Lf/a/i/l/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lf/a/i/l/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;->EC_OTA_CHECK_ONLY_LOCAL:Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;

    invoke-virtual {p2, v0, v1, v2}, Lf/a/i/i/q;->z(Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)V

    iget-boolean p2, p0, Lf/a/k/m0/t0;->d:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lf/a/i/l/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkLocalUpdatePackageAvailable packageFile = "

    invoke-static {p2, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p2, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    new-instance v0, Lf/a/k/m0/v;

    invoke-direct {v0, p0, p1}, Lf/a/k/m0/v;-><init>(Lf/a/k/m0/t0;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public synthetic r0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    check-cast v0, Lf/a/k/l0/v3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lf/a/k/l0/v3;->k0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic s0(Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->packagePath:Ljava/lang/String;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcDetail:Ljava/lang/String;

    check-cast v0, Lf/a/k/l0/v3;

    invoke-virtual {v0, v1, p1}, Lf/a/k/l0/v3;->k0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t(JJJJ)V
    .locals 0

    return-void
.end method

.method public synthetic t0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    check-cast v0, Lf/a/k/l0/v3;

    invoke-virtual {v0, p1, p2}, Lf/a/k/l0/v3;->i0(ILjava/lang/String;)V

    return-void
.end method

.method public u([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
    .locals 2

    if-gtz p4, :cond_0

    return-void

    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object p4, p3, p2

    iget-object v0, p4, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    iget-object v1, p0, Lf/a/k/m0/t0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lf/a/k/m0/t0;->b:Landroid/os/Handler;

    new-instance p2, Lf/a/k/m0/w;

    invoke-direct {p2, p0, p4}, Lf/a/k/m0/w;-><init>(Lf/a/k/m0/t0;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic u0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    check-cast v0, Lf/a/k/l0/v3;

    invoke-virtual {v0, p1, p2}, Lf/a/k/l0/v3;->j0(ILjava/lang/String;)V

    return-void
.end method

.method public v(I)V
    .locals 0

    return-void
.end method

.method public v0()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    check-cast v0, Lf/a/k/l0/v3;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public synthetic w0()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/t0;->a:Lf/a/k/k0/f;

    if-eqz v0, :cond_0

    check-cast v0, Lf/a/k/l0/v3;

    invoke-virtual {v0}, Lf/a/k/l0/v3;->e()V

    :cond_0
    return-void
.end method

.method public x(Z)V
    .locals 0

    return-void
.end method
