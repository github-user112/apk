.class public Lf/a/k/g0;
.super Ld/b/k/h;
.source ""

# interfaces
.implements Lf/a/i/h/e;
.implements Lf/a/k/e0;
.implements Lf/a/k/f0;
.implements Lf/a/i/h/h;
.implements Lnet/easyconn/framework/broadcast/BroadcastManager$c;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Lf/a/k/j0;

.field public D:Landroid/content/Intent;

.field public F:Landroid/content/Intent;

.field public G:I

.field public H:Landroid/util/DisplayMetrics;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Landroid/content/ServiceConnection;

.field public O:Lf/a/k/d0;

.field public P:Lf/a/i/m/i;

.field public Q:Z

.field public R:Z

.field public c:Landroid/content/Context;

.field public d:Ld/j/d/y;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Lf/a/k/l0/a4;

.field public g:Lf/a/k/l0/v3;

.field public h:Lf/a/k/m0/v0;

.field public i:Lf/a/k/m0/t0;

.field public j:Landroidx/fragment/app/Fragment;

.field public k:Lf/a/k/m0/r0;

.field public l:Lf/a/k/m0/u0;

.field public m:Landroidx/fragment/app/Fragment;

.field public n:Landroidx/fragment/app/Fragment;

.field public o:Landroidx/fragment/app/Fragment;

.field public p:Landroidx/fragment/app/Fragment;

.field public q:Landroidx/fragment/app/Fragment;

.field public r:Landroidx/fragment/app/Fragment;

.field public s:Lf/a/i/i/q;

.field public t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

.field public u:Lf/a/i/j/c;

.field public v:Landroid/os/Handler;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/TextView;

.field public volatile z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ld/b/k/h;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/g0;->z:Z

    iput-boolean v0, p0, Lf/a/k/g0;->A:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lf/a/k/g0;->D:Landroid/content/Intent;

    iput-object v1, p0, Lf/a/k/g0;->F:Landroid/content/Intent;

    iput-boolean v0, p0, Lf/a/k/g0;->I:Z

    iput-boolean v0, p0, Lf/a/k/g0;->J:Z

    new-instance v1, Lf/a/k/g0$a;

    invoke-direct {v1, p0}, Lf/a/k/g0$a;-><init>(Lf/a/k/g0;)V

    iput-object v1, p0, Lf/a/k/g0;->N:Landroid/content/ServiceConnection;

    new-instance v1, Lf/a/k/g0$b;

    invoke-direct {v1, p0}, Lf/a/k/g0$b;-><init>(Lf/a/k/g0;)V

    iput-object v1, p0, Lf/a/k/g0;->O:Lf/a/k/d0;

    iput-boolean v0, p0, Lf/a/k/g0;->Q:Z

    iput-boolean v0, p0, Lf/a/k/g0;->R:Z

    return-void
.end method

.method public static synthetic O(Landroid/widget/RelativeLayout;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->P:Lf/a/i/m/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " resReplaceFactory == null return!!"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "MainActivity doReplaceRes"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->P:Lf/a/i/m/i;

    iget-object v1, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    .line 1
    iget-object v0, v0, Lf/a/i/m/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/a/i/m/k;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/a/i/m/k;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized A0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/a/k/g0;->n:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lf/a/k/l0/c4;

    invoke-direct {v0}, Lf/a/k/l0/c4;-><init>()V

    .line 2
    iput-object v0, p0, Lf/a/k/g0;->n:Landroidx/fragment/app/Fragment;

    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->n:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "==>** getQrInfoUrl : "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_1

    const-string v0, "==>** getQrInfoUrl : has ecSdkManager"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    const-string v0, "==>**ECSDK.getInstance().generateQRCodeUrl(info) info is "

    .line 1
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/easyconn/ecsdk/ECSDK;->generateQRCodeUrl(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "==>**ECSDK.getInstance().generateQRCodeUrl(info) url is "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public B0()V
    .locals 6

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/a/k/g0;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lf/a/k/g;

    invoke-direct {v1, p0}, Lf/a/k/g;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    new-instance v1, Lf/a/k/u;

    invoke-direct {v1, p0}, Lf/a/k/u;-><init>(Lf/a/k/g0;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public C()V
    .locals 3

    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Ld/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "onFirstFrame hide mask"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lf/a/k/g0;->J:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz v1, :cond_1

    new-instance v2, Lf/a/k/f;

    invoke-direct {v2, v0}, Lf/a/k/f;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public D()V
    .locals 3

    invoke-static {p0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const-string v1, "hideStatusNaviBar flavor is "

    invoke-static {v1, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1
    :cond_0
    sget-object v0, Lf/a/i/m/d;->c:Ljava/util/Properties;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "fullScreen"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    const-string v0, "hideStatusNaviBar fullScreen is "

    .line 2
    invoke-static {v0, v1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz v1, :cond_4

    .line 3
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1606

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    return-void
.end method

.method public E()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    new-instance v0, Lf/a/k/l0/b4;

    invoke-direct {v0}, Lf/a/k/l0/b4;-><init>()V

    .line 2
    iput-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    new-instance v0, Lf/a/k/m0/s0;

    iget-object v1, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-direct {v0, v1, v2, v3}, Lf/a/k/m0/s0;-><init>(Lf/a/k/k0/j;Landroid/os/Handler;Lf/a/i/j/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lf/a/k/l0/a4;

    invoke-direct {v0}, Lf/a/k/l0/a4;-><init>()V

    iput-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    new-instance v0, Lf/a/k/m0/v0;

    iget-object v1, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-direct {v0, v1, v2, v3}, Lf/a/k/m0/v0;-><init>(Lf/a/k/k0/j;Landroid/os/Handler;Lf/a/i/j/c;)V

    :goto_0
    iput-object v0, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    goto :goto_1

    :cond_1
    const-string v0, "initStatusTipFragment easyConnectService = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "MainActivity initStatusTipFragment setWlanDeviceShow"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 4
    iget-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->n:Z

    .line 5
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->o:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 6
    invoke-virtual {p0, v1, v0}, Lf/a/k/g0;->t0(ZLandroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public I()Z
    .locals 3

    const-string v0, "currentIntent="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/g0;->D:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->D:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "isLaunchByUSBAttached intent is null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "isLaunchByUSBAttached intent action is null"

    :goto_0
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v1

    :cond_1
    const-string v1, "isLaunchByUSBAttached intent action = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public K()V
    .locals 3

    const-string v0, "MainActivity killEasyConnect()"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->c()V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/a/i/c/a;->unRegisterListener()V

    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->removeBroadcastListener()V

    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_3

    const-string v2, "removeBroadcastManagerListener"

    .line 5
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v1, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i:Lnet/easyconn/framework/sdkservice/EasyConnectService$a;

    .line 6
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_2

    const-string v2, "removeWifiStateListener"

    .line 7
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {v0, v1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g(Lnet/easyconn/framework/sdkservice/EasyConnectService$d;)V

    goto :goto_0

    :cond_2
    throw v1

    .line 8
    :cond_3
    throw v1

    .line 9
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lf/a/k/g0;->B:Z

    if-eqz v0, :cond_5

    const-string v0, "MainActivity killEasyConnect() unbindService"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->N:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/g0;->B:Z

    :cond_5
    iget-object v0, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_6

    check-cast v0, Lf/a/k/l0/p3;

    .line 10
    iget-object v2, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    invoke-interface {v2}, Lf/a/i/o/a;->close()V

    iput-object v1, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    .line 11
    :cond_6
    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_7

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    new-instance v1, Lf/a/k/v;

    invoke-direct {v1, p0}, Lf/a/k/v;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public L()V
    .locals 1

    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    throw v0

    .line 2
    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/a/k/l0/a4;->h0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic M()V
    .locals 3

    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    sget-boolean v0, Lf/a/i/m/g;->a:Z

    const v1, 0x7f0d00b8

    const/16 v2, -0x65

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lf/a/k/m0/t0;->onLicenseAuthFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lf/a/k/m0/v0;->onLicenseAuthFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lf/a/k/l0/q3;

    if-eqz v1, :cond_2

    check-cast v0, Lf/a/k/l0/q3;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, v0, Lf/a/k/l0/q3;->d0:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f0d0039

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic P()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-virtual {v0}, Lf/a/i/j/c;->f()V

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const v1, 0x13880

    const/4 v2, 0x0

    const-string v3, "EC_ICON_CLICK"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic Q()V
    .locals 1

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-virtual {v0}, Lf/a/i/j/c;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    return-void
.end method

.method public synthetic R()V
    .locals 1

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g()V

    return-void
.end method

.method public S()V
    .locals 2

    const-string v0, "mirrorConnectionOpen goto now isForeground = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lnet/easyconn/EcApplication;->isForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isMirrorConnectionOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 1
    iget-boolean v1, v1, Lf/a/i/i/q;->V:Z

    .line 2
    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 3
    iget-boolean v0, v0, Lf/a/i/i/q;->V:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/a/k/g0;->x0()V

    :cond_0
    return-void
.end method

.method public synthetic T()V
    .locals 2

    const-string v0, "mirrorConnectionOpen goto executeTaskDelay"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    iget-object v1, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-virtual {v1}, Lf/a/i/j/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/i/i/q;->r0(Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-virtual {v0}, Lf/a/i/j/c;->c()V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->h()V

    return-void
.end method

.method public synthetic U()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const v1, 0x13880

    const/16 v2, 0x35

    const-string v3, "EC_HU_BACK"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public V()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;->EC_SYSTEM_KEYCODE_BACK:Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x1b

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic W()V
    .locals 3

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_APP_BACK:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_CLICK:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-virtual {v0, v1, v2}, Lf/a/i/i/q;->b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V

    return-void
.end method

.method public synthetic X()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const v1, 0x13880

    const/4 v2, 0x1

    const-string v3, "EC_HU_BACK_QUIT"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic Y()V
    .locals 1

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-virtual {v0}, Lf/a/i/j/c;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    return-void
.end method

.method public synthetic Z()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/g0;->p0()V

    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lf/a/k/g0;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic a0()V
    .locals 3

    invoke-virtual {p0}, Lf/a/k/g0;->E()V

    const-string v0, "Get EcSdkManager Instance. runOnUiThread begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/g0;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/a/k/g0;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    :cond_0
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v0, v1, v2}, Lf/a/k/m0/t0;->q0(Landroid/content/Context;Lf/a/i/i/q;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v0, v1, v2}, Lf/a/k/m0/v0;->q0(Landroid/content/Context;Lf/a/i/i/q;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic b0(ZLandroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/a/k/g0;->t0(ZLandroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lf/a/k/l0/p3;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/k/l0/a4;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic c0(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/g0;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic d0(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/g0;->s0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/g0;->u0()V

    return-void
.end method

.method public e0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/ec_logo.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/easyconn/ec_logo.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v0}, Ld/s/y;->G(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    new-instance v1, Lf/a/k/l;

    invoke-direct {v1, p0, v0}, Lf/a/k/l;-><init>(Lf/a/k/g0;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lf/a/k/g0;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic f0()V
    .locals 2

    const-string v0, "showWelcomeView postDelayed end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lf/a/k/g0;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf/a/k/g0;->x0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/k/g0;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/k/l0/a4;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic g0()V
    .locals 1

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    invoke-virtual {v0}, Lf/a/k/l0/a4;->t()V

    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "MainActivity getSystemService = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lf/a/k/g0;->R:Z

    if-nez v0, :cond_1

    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    const v1, 0x13880

    const/16 v2, 0x1e

    const-string v3, "EC_QR_CODE_PAGE_BACK"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    return-void
.end method

.method public synthetic h0()V
    .locals 1

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/l0/a4;->e()V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    invoke-virtual {v0}, Lf/a/k/l0/a4;->q()V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    invoke-virtual {v0}, Lf/a/k/l0/a4;->I()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/g0;->n0()V

    return-void
.end method

.method public i0(I)Z
    .locals 4

    const-string v0, "mirrorConnection Disconnected, reason is "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/g0;->z:Z

    sput-boolean v0, Lnet/easyconn/EcApplication;->isCurrentMirrorChannelOpen:Z

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->M()V

    iget-object v1, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v1, v1, Lf/a/k/l0/p3;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lf/a/k/g0;->J:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lf/a/k/b0;

    invoke-direct {v2, p0}, Lf/a/k/b0;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lf/a/k/g0;->J:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz p1, :cond_1

    new-instance v1, Lf/a/k/c0;

    invoke-direct {v1, p0}, Lf/a/k/c0;-><init>(Lf/a/k/g0;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/h;

    invoke-direct {v1, p0}, Lf/a/k/h;-><init>(Lf/a/k/g0;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Lnet/easyconn/EcApplication;->executeTaskDelay(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {p1}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object p1

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 1
    iget-object p1, p1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lf/a/k/g0;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 2

    const-string v0, "onAppExit"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/g0;->z:Z

    sput-boolean v0, Lnet/easyconn/EcApplication;->isCurrentMirrorChannelOpen:Z

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->M()V

    iget-boolean v0, p0, Lf/a/k/g0;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lf/a/k/c0;

    invoke-direct {v1, p0}, Lf/a/k/c0;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    new-instance v1, Lf/a/k/i0;

    invoke-direct {v1, p0}, Lf/a/k/i0;-><init>(Lf/a/k/g0;)V

    .line 2
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {v0, v1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g(Lnet/easyconn/framework/sdkservice/EasyConnectService$d;)V

    .line 3
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    new-instance v1, Lf/a/k/h0;

    invoke-direct {v1, p0}, Lf/a/k/h0;-><init>(Lf/a/k/g0;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBroadcastManagerListener broadcastManagerListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v1, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i:Lnet/easyconn/framework/sdkservice/EasyConnectService$a;

    iget-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->k:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->l:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i:Lnet/easyconn/framework/sdkservice/EasyConnectService$a;

    check-cast v0, Lf/a/k/h0;

    invoke-virtual {v0}, Lf/a/k/h0;->a()V

    const-string v0, "setBroadcastManagerListener execute OnInitComplete"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 6
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 7
    invoke-virtual {v0, p0}, Lf/a/i/c/a;->setmPermissionRequestListener(Lf/a/i/h/h;)V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 8
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 9
    iput-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v0, v1}, Lf/a/i/i/q;->e0(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lf/a/k/g0;->F:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iput-object v2, p0, Lf/a/k/g0;->F:Landroid/content/Intent;

    move-object v0, v3

    :cond_2
    iget-object v3, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    iget-object v4, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v3, v0, v4}, Lf/a/k/j0;->d(Landroid/content/Intent;Lf/a/i/i/q;)V

    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    if-eqz v0, :cond_4

    :goto_0
    iget-object v3, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v3, v0}, Lf/a/i/i/q;->h0(Lf/a/i/h/c;)V

    :cond_4
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 10
    iput-object p0, v0, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    const-string v3, "EcSdkManager setMirrorStateListener, iMirrorStateListener is "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " this.managerClass.hashCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EcSdkManager sdkCallBack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v3, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v3, :cond_5

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EcCallBack setMirrorStateListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object p0, v3, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    :cond_5
    const-string v3, "EcSdkManager sdkQtCallBack = "

    .line 12
    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get EcSdkManager Instance. ecSdkManager.isMirrorConnectionOpen() is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 14
    iget-boolean v3, v3, Lf/a/i/i/q;->V:Z

    .line 15
    invoke-static {v0, v3}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 16
    iget-boolean v0, v0, Lf/a/i/i/q;->V:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 17
    new-instance v0, Lf/a/k/a;

    invoke-direct {v0, p0}, Lf/a/k/a;-><init>(Lf/a/k/g0;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 18
    iget-boolean v0, v0, Lf/a/i/i/q;->k:Z

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p0}, Lf/a/k/g0;->B0()V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 20
    iget-boolean v0, v0, Lf/a/i/i/q;->l:Z

    if-eqz v0, :cond_9

    .line 21
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    iget-object v3, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 22
    iget v4, v3, Lf/a/i/i/q;->o:I

    .line 23
    iget-object v3, v3, Lf/a/i/i/q;->p:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v4, v3}, Lf/a/k/m0/t0;->onLicenseAuthFail(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    iget-object v3, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 25
    iget v4, v3, Lf/a/i/i/q;->o:I

    .line 26
    iget-object v3, v3, Lf/a/i/i/q;->p:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v4, v3}, Lf/a/k/m0/v0;->onLicenseAuthFail(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const-string v0, "onEasyconnServiceConnected easyConnectService.startEcWifiChannelScan"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g()V

    const-string v0, "usb"

    .line 28
    invoke-virtual {p0, v0}, Lf/a/k/g0;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v6

    invoke-virtual {v6}, Lnet/easyconn/EcApplication;->getDeviceFilterMap()Landroid/util/SparseIntArray;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    const-string v4, "device list size = %d, device filter size = %d"

    invoke-static {v4, v7}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lf/a/i/m/g;->e0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v4, "[MainActivity]device filter"

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lf/a/k/g0;->F()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v4, "[MainActivity]device filter2"

    goto :goto_3

    :cond_c
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v7

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-gez v7, :cond_d

    const-string v4, "[MainActivity]device not in deviceFilterMap"

    goto :goto_3

    :cond_d
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    if-ne v7, v1, :cond_e

    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_e

    const/4 v7, 0x1

    goto :goto_2

    :cond_e
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_f

    const-string v4, "the attached usb device is Mass Storage Device"

    :goto_3
    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_f
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v4, "[MainActivity] hasPermission false"

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/g0;->m0()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_4

    :cond_10
    new-instance v4, Lf/a/k/c;

    invoke-direct {v4, p0}, Lf/a/k/c;-><init>(Lf/a/k/g0;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_11
    const-string v7, "[MainActivity] hasPermission true"

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 29
    invoke-static {p0}, Lf/a/i/m/g;->I(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v4, "onOpenDevice return"

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_12
    iget-object v7, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    if-eqz v7, :cond_a

    .line 30
    iput-object v4, v7, Lf/a/k/j0;->d:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7}, Lf/a/k/j0;->c()V

    goto/16 :goto_1

    .line 31
    :cond_13
    :goto_4
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_14

    new-instance v0, Lf/a/k/x;

    invoke-direct {v0, p0}, Lf/a/k/x;-><init>(Lf/a/k/g0;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    :cond_14
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_5

    :cond_15
    iget-object v3, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_17

    new-instance v3, Lf/a/k/p;

    invoke-direct {v3, p0, v0}, Lf/a/k/p;-><init>(Lf/a/k/g0;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_16
    :goto_5
    new-instance v0, Lf/a/k/i;

    invoke-direct {v0, p0}, Lf/a/k/i;-><init>(Lf/a/k/g0;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    :cond_17
    :goto_6
    new-instance v0, Lf/a/k/r;

    invoke-direct {v0, p0}, Lf/a/k/r;-><init>(Lf/a/k/g0;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 34
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 35
    iget-boolean v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->b:Z

    if-eqz v0, :cond_19

    .line 36
    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    iget-object v3, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v3}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_18

    const-string v2, "postStatsInfo"

    .line 37
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sput-object v3, Lf/a/i/j/c;->i:Ljava/lang/String;

    iget-object v2, v0, Lf/a/i/j/c;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lf/a/i/j/d;

    invoke-direct {v3, v0}, Lf/a/i/j/d;-><init>(Lf/a/i/j/c;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_18
    throw v2

    .line 38
    :cond_19
    :goto_7
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 39
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 40
    iget-boolean v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->c:Z

    .line 41
    iput-boolean v0, p0, Lf/a/k/g0;->K:Z

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 42
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 43
    iget-boolean v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->c:Z

    if-eqz v0, :cond_1a

    .line 44
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 45
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v1, 0x0

    .line 46
    :goto_8
    iput-boolean v1, p0, Lf/a/k/g0;->L:Z

    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 47
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 48
    iget-boolean v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->w:Z

    .line 49
    iput-boolean v0, p0, Lf/a/k/g0;->M:Z

    return-void

    .line 50
    :cond_1b
    goto :goto_a

    :goto_9
    throw v2

    :goto_a
    goto :goto_9
.end method

.method public l()V
    .locals 4

    invoke-virtual {p0}, Lf/a/k/g0;->A0()V

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const v1, 0x13880

    const/4 v2, 0x2

    const-string v3, "EC_MAIN_WIFI_HELP_CLICK"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public l0()V
    .locals 4

    const-string v0, "MainActivity onMainExitSingleClick()"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const v1, 0x13880

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_1

    const/16 v2, 0x15

    const-string v3, "EC_CONNECT_FAILED_BACK"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    const-string v3, "EC_MAIN_BACK_BTN"

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lf/a/k/g0;->K()V

    return-void
.end method

.method public m()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/g0;->v0()V

    return-void
.end method

.method public m0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 4

    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const v1, 0x13880

    const/4 v2, 0x6

    const-string v3, "EC_WIFI_HELP_BACK"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public n0()V
    .locals 4

    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    const v1, 0x13880

    const/16 v2, 0x2d

    const-string v3, "EC_ABOUT_BACK"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lf/a/k/g0;->z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf/a/k/g0;->x0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/a/k/l0/a4;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lf/a/k/g0;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public o0(Z)V
    .locals 1

    const-string v0, "sendQrLinkBroadcast begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendQrLinkBroadcast(Landroid/content/Context;Z)V

    const-string p1, "sendQrLinkBroadcast end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const-string v0, "MainActivity onBackPressed()"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/o;

    invoke-direct {v1, p0}, Lf/a/k/o;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    .line 1
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lf/a/k/l0/h3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lf/a/k/l0/g3;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf/a/k/g0;->n0()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lf/a/k/l0/p3;

    if-eqz v0, :cond_4

    iget v0, p0, Lf/a/k/g0;->G:I

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SAME:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/t;

    invoke-direct {v1, p0}, Lf/a/k/t;-><init>(Lf/a/k/g0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/m;

    invoke-direct {v1, p0}, Lf/a/k/m;-><init>(Lf/a/k/g0;)V

    :goto_2
    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-boolean v0, p0, Lf/a/k/g0;->Q:Z

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lf/a/k/g0;->Q:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/w;

    invoke-direct {v1, p0}, Lf/a/k/w;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lf/a/k/g0;->z:Z

    sput-boolean v3, Lnet/easyconn/EcApplication;->isCurrentMirrorChannelOpen:Z

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lf/a/i/i/q;->M()V

    :cond_5
    invoke-virtual {p0}, Lf/a/k/g0;->K()V

    :cond_6
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Ld/b/k/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainActivity onConfigurationChanged doReplaceRes"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/easyconn/EcApplication;->notifyIsDayTheme(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->setDayNightTheme(Z)V

    invoke-virtual {p0}, Lf/a/k/g0;->A()V

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 1
    sget v0, Lf/a/i/m/g;->q:I

    if-ne v0, p1, :cond_1

    const-string p1, "onConfigurationChanged, but same orientation, return it"

    .line 2
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_15

    :cond_2
    const-string v0, "onConfigurationChanged:"

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lf/a/i/i/q;->i0(Z)V

    .line 3
    :cond_3
    sget v0, Lf/a/i/m/g;->q:I

    if-eq v0, p1, :cond_4

    sput p1, Lf/a/i/m/g;->q:I

    .line 4
    :cond_4
    invoke-virtual {p0, v1}, Lf/a/k/g0;->onWindowFocusChanged(Z)V

    .line 5
    iget-object p1, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_5

    check-cast p1, Lf/a/k/l0/p3;

    invoke-virtual {p1}, Lf/a/k/l0/p3;->h0()V

    :cond_5
    iget-object p1, p0, Lf/a/k/g0;->d:Ld/j/d/y;

    invoke-virtual {p1}, Ld/j/d/y;->J()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/g0;->d:Ld/j/d/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 6
    new-instance v2, Ld/j/d/a;

    invoke-direct {v2, v0}, Ld/j/d/a;-><init>(Ld/j/d/y;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 8
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    if-eqz v4, :cond_7

    iget-object v5, v2, Ld/j/d/a;->q:Ld/j/d/y;

    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a FragmentManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_7
    :goto_1
    new-instance v4, Ld/j/d/g0$a;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Ld/j/d/g0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v4}, Ld/j/d/g0;->b(Ld/j/d/g0$a;)V

    goto :goto_0

    .line 10
    :cond_8
    invoke-virtual {v2}, Ld/j/d/g0;->c()V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    iput-object v1, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    iput-object v1, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    iput-object v1, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    iput-object v1, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Lf/a/k/g0;->k:Lf/a/k/m0/r0;

    iput-object v1, p0, Lf/a/k/g0;->m:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Lf/a/k/g0;->n:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Lf/a/k/g0;->o:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Lf/a/k/g0;->p:Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    .line 11
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "showNowFragment ecSdkManager is null"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_9
    const-string v2, "closeMirrorConnection begin"

    .line 12
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v1, v0, Lf/a/i/i/q;->V:Z

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->closeMirrorConnection()V

    const-string v0, "closeMirrorConnection end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/i/i/q;->V(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    if-eqz p1, :cond_12

    const-string v0, "old mCurrentFragment\uff1a"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    instance-of v0, p1, Lf/a/k/l0/a4;

    if-nez v0, :cond_14

    instance-of v0, p1, Lf/a/k/l0/v3;

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    instance-of v0, p1, Lf/a/k/l0/p3;

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    instance-of v0, p1, Lf/a/k/l0/h3;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lf/a/k/g0;->v0()V

    goto :goto_3

    :cond_c
    instance-of v0, p1, Lf/a/k/l0/c4;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lf/a/k/g0;->A0()V

    goto :goto_3

    :cond_d
    instance-of v0, p1, Lf/a/k/l0/j3;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lf/a/k/g0;->x()Z

    goto :goto_3

    :cond_e
    instance-of v0, p1, Lf/a/k/l0/g3;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lf/a/k/g0;->u0()V

    goto :goto_3

    :cond_f
    instance-of p1, p1, Lf/a/k/l0/z3;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lf/a/k/g0;->y0()V

    goto :goto_3

    :cond_10
    invoke-static {p0}, Lf/a/i/m/g;->a0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 14
    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    .line 15
    :cond_11
    invoke-virtual {p0}, Lf/a/k/g0;->y()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lf/a/k/g0;->x()Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_2

    :cond_12
    invoke-static {p0}, Lf/a/i/m/g;->a0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 16
    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    .line 17
    :cond_13
    invoke-virtual {p0}, Lf/a/k/g0;->y()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lf/a/k/g0;->x()Z

    move-result p1

    if-nez p1, :cond_15

    :cond_14
    :goto_2
    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    :cond_15
    :goto_3
    return-void

    .line 18
    :cond_16
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1
    :try_start_0
    const-class v2, Landroid/view/LayoutInflater;

    const-string v3, "mFactorySet"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v2, Lf/a/i/m/i;

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v3

    invoke-direct {v2, v3}, Lf/a/i/m/i;-><init>(Ld/b/k/j;)V

    iput-object v2, p0, Lf/a/k/g0;->P:Lf/a/i/m/i;

    invoke-virtual {v0, v2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    iput-object p0, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lnet/easyconn/EcApplication;->isCurrentMirror:Z

    invoke-super {p0, p1}, Ld/b/k/h;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Ld/b/k/h;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    sget v2, Lf/a/i/m/g;->q:I

    if-eq v2, p1, :cond_2

    sput p1, Lf/a/i/m/g;->q:I

    .line 5
    :cond_2
    sget-object p1, Lf/a/i/m/d;->c:Ljava/util/Properties;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "dpi_value"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    const-string v2, "onCreate : dpiValue = "

    .line 6
    invoke-static {v2, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-lt p1, v1, :cond_6

    const/16 v2, 0x3e8

    if-le p1, v2, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lf/a/k/g0;->H:Landroid/util/DisplayMetrics;

    const-string v2, "original appDisplayMetrics.density = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lf/a/k/g0;->H:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    int-to-float v2, p1

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCustomDpi : targetDensity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lf/a/k/g0;->H:Landroid/util/DisplayMetrics;

    iput v2, v3, Landroid/util/DisplayMetrics;->density:F

    iput v2, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set appDisplayMetrics.density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ld/b/k/h;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput v2, v3, Landroid/util/DisplayMetrics;->density:F

    iput v2, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string v2, "onCreate : setTargetDensityDpi dpiValue = "

    .line 8
    invoke-static {v2, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    :goto_3
    const-string p1, "onCreate : setCustomDpi"

    :goto_4
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "7.0.1-9011d330b-202404121051"

    aput-object v2, p1, v0

    const-string v0, "tocfree"

    aput-object v0, p1, v1

    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "onCreate : version = %s, flavor = %s, MainActivity is %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-static {p0, v2}, Ld/g/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_9

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Has permissions"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_9
    const-string v3, ":No permissions"

    invoke-static {v2, v3}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0x2712

    invoke-static {p0, p1, v0}, Ld/g/e/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_7

    :cond_b
    const-string p1, "Already has mPermissionList permissions"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 12
    :goto_7
    invoke-static {}, Lf/a/i/m/d;->f()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lf/a/i/m/d;->g()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_c
    const-string p1, "onCreate : version = 7.0.1-9011d330b-202404121051; MainActivity is "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const p1, 0x7f0c001d

    .line 13
    invoke-virtual {p0, p1}, Ld/b/k/h;->setContentView(I)V

    iget-object p1, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Ld/b/k/h;->setContentView(I)V

    :cond_d
    iget-object p1, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Ld/b/k/h;->setContentView(I)V

    .line 14
    :cond_e
    new-instance p1, Lf/a/k/j0;

    invoke-direct {p1, p0}, Lf/a/k/j0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    .line 15
    new-instance p1, Lf/a/i/j/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/a/i/j/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lnet/easyconn/EcApplication;

    new-instance v0, Lf/a/k/s;

    invoke-direct {v0, p0}, Lf/a/k/s;-><init>(Lf/a/k/g0;)V

    invoke-virtual {p1, v0}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {p0}, Ld/j/d/l;->getSupportFragmentManager()Ld/j/d/y;

    move-result-object p1

    iput-object p1, p0, Lf/a/k/g0;->d:Ld/j/d/y;

    const p1, 0x7f090077

    invoke-virtual {p0, p1}, Ld/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lf/a/k/g0;->w:Landroid/widget/ImageView;

    const p1, 0x7f090078

    invoke-virtual {p0, p1}, Ld/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lf/a/k/g0;->x:Landroid/widget/ImageView;

    const p1, 0x7f090203

    invoke-virtual {p0, p1}, Ld/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    iget-object p1, p0, Lf/a/k/g0;->w:Landroid/widget/ImageView;

    iget-object v0, p0, Lf/a/k/g0;->O:Lf/a/k/d0;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lf/a/k/g0;->x:Landroid/widget/ImageView;

    iget-object v0, p0, Lf/a/k/g0;->O:Lf/a/k/d0;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean p1, Lf/a/i/m/g;->a:Z

    if-nez p1, :cond_10

    invoke-static {p0}, Lf/a/i/m/g;->a0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lf/a/k/g0;->x()Z

    move-result p1

    if-nez p1, :cond_10

    .line 17
    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    goto :goto_8

    .line 18
    :cond_f
    invoke-virtual {p0}, Lf/a/k/g0;->y()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lf/a/k/g0;->x()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lf/a/k/g0;->z0()V

    .line 19
    :cond_10
    :goto_8
    invoke-virtual {p0}, Lf/a/k/g0;->w()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "net.easyconn.app.open"

    invoke-static {p1, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, p0, Lf/a/k/g0;->J:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lf/a/k/g0;->D:Landroid/content/Intent;

    invoke-virtual {p0}, Lf/a/k/g0;->I()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "onCreate by usb attached"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 21
    :cond_11
    new-instance p1, Lf/a/i/m/b;

    invoke-direct {p1, p0}, Lf/a/i/m/b;-><init>(Ld/b/k/h;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-virtual {p0}, Lf/a/k/g0;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ld/b/k/h;->onDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lnet/easyconn/EcApplication;->isCurrentMirror:Z

    iput-boolean v0, p0, Lf/a/k/g0;->J:Z

    iget-object v1, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v3, "[UsbAttachManager]onDestroy()"

    .line 1
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v3, v1, Lf/a/k/j0;->e:Lf/a/k/j0$b;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lf/a/k/j0;->e:Lf/a/k/j0$b;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iput-object v2, v1, Lf/a/k/j0;->b:Lf/a/i/i/q;

    .line 2
    iput-object v2, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    :cond_2
    invoke-static {}, Lf/a/i/m/d;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lf/a/i/m/d;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    iget-object v1, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->c()V

    iget-object v1, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Lf/a/i/c/a;->unRegisterListener()V

    :cond_4
    iget-object v1, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 5
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->removeBroadcastListener()V

    :cond_5
    iget-object v1, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v1, :cond_7

    const-string v3, "removeBroadcastManagerListener"

    .line 7
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v2, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i:Lnet/easyconn/framework/sdkservice/EasyConnectService$a;

    .line 8
    iget-object v1, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v1, :cond_6

    const-string v3, "removeWifiStateListener"

    .line 9
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {v1, v2}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g(Lnet/easyconn/framework/sdkservice/EasyConnectService$d;)V

    goto :goto_0

    :cond_6
    throw v2

    .line 10
    :cond_7
    throw v2

    .line 11
    :cond_8
    :goto_0
    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v1, :cond_d

    const-string v3, "EcSdkManager removeMirrorStateListener"

    .line 12
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v2, v1, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    iget-object v1, v1, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v1, :cond_9

    const-string v3, "EcCallBack setMirrorStateListener = null"

    .line 13
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v2, v1, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    .line 14
    :cond_9
    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v1, :cond_c

    const-string v3, "EcSdkManager removeMirrorConnectionListener"

    .line 15
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v2, v1, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    iget-object v1, v1, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v1, :cond_a

    .line 16
    iput-object v2, v1, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    .line 17
    :cond_a
    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 18
    iget-object v3, v1, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v3, :cond_b

    .line 19
    iput-object v2, v3, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    .line 20
    :cond_b
    iput-object v2, v1, Lf/a/i/i/q;->C:Lf/a/i/h/g;

    .line 21
    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->a0()V

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->D()V

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v1, v0}, Lf/a/i/i/q;->f0(Z)V

    const-string v1, "ecSdkManager.closeDevice();"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_c
    throw v2

    .line 23
    :cond_d
    :goto_1
    iget-boolean v1, p0, Lf/a/k/g0;->B:Z

    if-eqz v1, :cond_e

    const-string v1, "MainActivity onDestroy() unbindService"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/k/g0;->N:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v0, p0, Lf/a/k/g0;->B:Z

    :cond_e
    iput-object v2, p0, Lf/a/k/g0;->N:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_f

    check-cast v0, Lf/a/k/l0/p3;

    .line 24
    iget-object v1, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    invoke-interface {v1}, Lf/a/i/o/a;->close()V

    iput-object v2, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    .line 25
    :cond_f
    iget-object v0, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_10

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    new-instance v1, Lf/a/k/k;

    invoke-direct {v1, p0}, Lf/a/k/k;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    :cond_10
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_11

    iput-object v2, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    goto :goto_2

    :cond_11
    iput-object v2, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    :goto_2
    iput-object v2, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    invoke-super {p0}, Ld/b/k/h;->onDestroy()V

    const-string v0, "onDestroy() MainActivity is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const-string p1, "onKeyDown KEYCODE_MENU intercept"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Ld/b/k/h;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "onNewIntent intent action = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ld/j/d/l;->onNewIntent(Landroid/content/Intent;)V

    .line 1
    invoke-virtual {p0}, Lf/a/k/g0;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "isUsbAttachWhenMirror return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lf/a/k/g0;->D:Landroid/content/Intent;

    invoke-virtual {p0}, Lf/a/k/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v0, :cond_1

    const-string v0, "onNewIntent minimizeUI by usb attached background"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_1
    const-string v0, "onNewIntent launch by usb attached"

    .line 3
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lf/a/k/g0;->w()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    invoke-virtual {v1, p1, v0}, Lf/a/k/j0;->d(Landroid/content/Intent;Lf/a/i/i/q;)V

    .line 4
    invoke-static {p0}, Lf/a/i/m/g;->I(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onOpenDevice return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lf/a/k/j0;->c()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Ld/j/d/l;->onPause()V

    const-string v0, "MainActivity onPause"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x2711

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    array-length p1, p3

    if-lez p1, :cond_3

    :goto_0
    array-length p1, p3

    if-ge v1, p1, :cond_3

    const-string p1, "permission "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", grantResult index = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "onRequestPermissionsResult AudioRecordPermission EC_PERMISSION_REQ_CODE_RECORD_AUDIO"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 2
    invoke-virtual {p1}, Lf/a/i/c/a;->startRecord()V

    goto :goto_1

    :cond_2
    const-string p1, "AudioRecordPermission EC_PERMISSION_RECORD_AUDIO permission denied!"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz p1, :cond_4

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 p3, 0xb

    iput p3, p2, Landroid/os/Message;->what:I

    iget-object p1, p1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    :goto_1
    iput-boolean v1, p0, Lf/a/k/g0;->I:Z

    const-string p1, "onRequestPermissionsResult AudioRecordPermission EC_PERMISSION_REQ_CODE_RECORD_AUDIO end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 5
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Ld/j/d/l;->onResume()V

    invoke-virtual {p0}, Lf/a/k/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainActivity onResume return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    const-string v1, "MainActivity onResume"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lf/a/i/i/q;->e0(Z)V

    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lf/a/k/l0/g3;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_3

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->V:Z

    if-eqz v0, :cond_3

    const-string v0, "EcSdkManager instance is already, start mirror fragment now!"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/g0;->x0()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v0, v0, Lf/a/i/i/q;->k:Z

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lf/a/k/g0;->B0()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lf/a/k/g0;->F:Landroid/content/Intent;

    if-eqz v0, :cond_8

    const-string v0, "onResume backgroundIntent "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->F:Landroid/content/Intent;

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lf/a/k/g0;->w()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    invoke-virtual {v2, v0, v1}, Lf/a/k/j0;->d(Landroid/content/Intent;Lf/a/i/i/q;)V

    .line 5
    invoke-static {p0}, Lf/a/i/m/g;->I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "onOpenDevice return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lf/a/k/g0;->C:Lf/a/k/j0;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lf/a/k/j0;->c()V

    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lf/a/k/g0;->F:Landroid/content/Intent;

    :cond_8
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Ld/b/k/h;->onStart()V

    invoke-virtual {p0}, Lf/a/k/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainActivity onStart return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "MainActivity onStart"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "net.easyconn.app.resume"

    invoke-static {v0, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    const v0, 0x7f09022c

    invoke-virtual {p0, v0}, Ld/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "false"

    if-nez v0, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "ENABLE_WELCOME_LOGO_CUSTOM"

    invoke-static {v0, v2, v1}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lf/a/i/m/g;->s:Z

    :goto_0
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/n;

    invoke-direct {v1, p0}, Lf/a/k/n;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/a/k/g0;->s0(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-static {p0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    const v2, 0x7f09004e

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, Lf/a/k/g0;->A:Z

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 5
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "true"

    if-nez v0, :cond_6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "SHOW_WELCOME_FIRST_TIME"

    invoke-virtual {v0, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6
    iget-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "showWelcomeView postDelayed start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/g0;->J:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz v0, :cond_7

    new-instance v1, Lf/a/k/e;

    invoke-direct {v1, p0}, Lf/a/k/e;-><init>(Lf/a/k/g0;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    iput-boolean v2, p0, Lf/a/k/g0;->A:Z

    :goto_3
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Ld/b/k/h;->onStop()V

    invoke-virtual {p0}, Lf/a/k/g0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainActivity onStop isIgnoreOnStop, return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "MainActivity onStop"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "net.easyconn.app.pause"

    invoke-static {v0, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lf/a/i/i/q;->e0(Z)V

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/a/k/g0;->D()V

    :cond_0
    return-void
.end method

.method public p0()V
    .locals 7

    const-string v0, "setDeviceTagText"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_0

    const v3, 0x7f0d0038

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v4}, Lf/a/i/i/q;->G()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/k/l0/a4;->c0(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/k/l0/v3;->h0(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    const v3, 0x7f0d003a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v6}, Lf/a/i/i/q;->G()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v4}, Lf/a/i/i/q;->G()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/k/l0/a4;->c0(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    iget-object v1, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/k/l0/v3;->h0(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 6

    const-string v0, "setDeviceTagText name = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_0

    const v3, 0x7f0d0038

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/k/l0/a4;->c0(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    invoke-virtual {v0, p1}, Lf/a/k/l0/v3;->h0(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    const v3, 0x7f0d003a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/k/l0/a4;->c0(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    invoke-virtual {v0, p1}, Lf/a/k/l0/v3;->h0(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public r0(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080173

    goto :goto_0

    :cond_0
    const v0, 0x7f080167

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080171

    goto :goto_0

    :cond_2
    const v0, 0x7f080166

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public s0(Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f080171

    const v2, 0x7f080172

    if-eqz p1, :cond_2

    iget-object v3, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    const v4, 0x7f0900f5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    const v5, 0x7f090050

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v5}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lf/a/k/g0;->r0(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v1, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    const v3, 0x7f09004f

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v3, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lf/a/k/g0;->r0(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public t0(ZLandroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3

    const-string v0, "MainActivity setWlanDeviceShow isConnected = "

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_0

    check-cast v0, Lf/a/k/l0/b4;

    .line 1
    iget-object v1, v0, Lf/a/k/l0/b4;->m0:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    const-string v1, "TabStatusTipFragment hideWlanDevice"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lf/a/k/l0/b4;->m0:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string p1, "MainActivity setWlanDeviceShow p2pDevice.deviceName = "

    .line 2
    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz p1, :cond_3

    check-cast p1, Lf/a/k/l0/b4;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lf/a/k/l0/b4;->m0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "TabStatusTipFragment showWlanDevice"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p1, Lf/a/k/l0/b4;->m0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p1, Lf/a/k/l0/b4;->o0:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const-string v0, "TabStatusTipFragment showWlanDevice deviceName = "

    invoke-static {v0, p2, p2}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lf/a/k/l0/b4;->n0:Landroid/widget/TextView;

    const v2, 0x7f0d00b4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lf/a/k/l0/b4;->o0:Landroid/widget/TextView;

    const v2, 0x7f0d00ad

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lf/a/k/l0/b4;->n0:Landroid/widget/TextView;

    const p2, 0x7f0d00b5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized u0()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-nez v0, :cond_0

    const-string v0, "showAboutFragment now easyConnectService not bind compile, return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/a/k/g0;->p:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1

    .line 1
    new-instance v0, Lf/a/k/l0/g3;

    invoke-direct {v0}, Lf/a/k/l0/g3;-><init>()V

    .line 2
    iput-object v0, p0, Lf/a/k/g0;->p:Landroidx/fragment/app/Fragment;

    new-instance v1, Lf/a/k/m0/q0;

    check-cast v0, Lf/a/k/k0/b;

    iget-object v2, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    iget-object v3, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {v1, p0, v0, v2, v3}, Lf/a/k/m0/q0;-><init>(Landroid/content/Context;Lf/a/k/k0/b;Lf/a/i/j/c;Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/a/k/g0;->m:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    new-instance v0, Lf/a/k/l0/h3;

    invoke-direct {v0}, Lf/a/k/l0/h3;-><init>()V

    iput-object v0, p0, Lf/a/k/g0;->m:Landroidx/fragment/app/Fragment;

    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->m:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()V
    .locals 3

    const-string v0, "[bindSdkService]"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lf/a/k/g0;->c:Landroid/content/Context;

    const-class v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lf/a/k/g0;->N:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lf/a/k/g0;->B:Z

    const-string v0, "[bindSdkService] mBound = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/k/g0;->B:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public declared-synchronized w0(Landroidx/fragment/app/Fragment;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFragment is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    if-ne p1, v0, :cond_0

    const-string p1, "showFragment return because currentFragment is show "

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/g0;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/a/k/g0;->d:Ld/j/d/y;

    if-eqz v0, :cond_7

    .line 1
    new-instance v1, Ld/j/d/a;

    invoke-direct {v1, v0}, Ld/j/d/a;-><init>(Ld/j/d/y;)V

    .line 2
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x1

    const v3, 0x7f0900d8

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {v1, v3, p1, v0, v2}, Ld/j/d/g0;->d(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/g0;->d:Ld/j/d/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ld/j/d/y;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Ld/j/d/g0;->e(Landroidx/fragment/app/Fragment;)Ld/j/d/g0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Ld/j/d/g0;->e(Landroidx/fragment/app/Fragment;)Ld/j/d/g0;

    invoke-virtual {v1, p1}, Ld/j/d/g0;->f(Landroidx/fragment/app/Fragment;)Ld/j/d/g0;

    :goto_1
    iput-object p1, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Ld/j/d/g0;->c()V

    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lf/a/k/l0/a4;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/g0;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/g0;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lf/a/k/l0/v3;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lf/a/k/g0;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/g0;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lf/a/k/l0/p3;

    if-eqz v0, :cond_5

    const v0, 0x7f090124

    .line 5
    invoke-virtual {p0, v0}, Ld/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v3, 0x7f09013b

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "showMask"

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lf/a/k/g0;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 6
    :cond_5
    invoke-virtual {p0}, Lf/a/k/g0;->C()V

    :cond_6
    :goto_3
    instance-of p1, p1, Lf/a/k/l0/p3;

    sput-boolean p1, Lnet/easyconn/EcApplication;->isCurrentMirror:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 7
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public x()Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const-string v1, "key_show_guide_page"

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "showGuideFragment is "

    .line 2
    invoke-static {v1, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-ne v0, v2, :cond_4

    .line 3
    invoke-static {p0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const-string v1, "ENABLE_LAUNCH_UI"

    const-string v3, "false"

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    monitor-enter p0

    :try_start_0
    const-string v0, "showGuideFragment"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0;->o:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_3

    new-instance v0, Lf/a/k/l0/j3;

    invoke-direct {v0}, Lf/a/k/l0/j3;-><init>()V

    iput-object v0, p0, Lf/a/k/g0;->o:Landroidx/fragment/app/Fragment;

    :cond_3
    iget-object v0, p0, Lf/a/k/g0;->o:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized x0()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 2
    invoke-virtual {v0, p0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->setOnBroadcastListener(Lnet/easyconn/framework/broadcast/BroadcastManager$c;)V

    iget-object v0, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 3
    iget v0, v0, Lf/a/i/i/q;->W:I

    .line 4
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 5
    iget v0, v0, Lf/a/i/i/q;->X:I

    const-string v0, "getMirrorFragment"

    .line 6
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lf/a/k/l0/p3;

    invoke-direct {v0}, Lf/a/k/l0/p3;-><init>()V

    .line 8
    iput-object v0, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->k:Lf/a/k/m0/r0;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lf/a/k/m0/r0;

    iget-object v1, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    move-object v3, v1

    check-cast v3, Lf/a/k/k0/d;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    iget-object v6, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lf/a/k/m0/r0;-><init>(Landroid/content/Context;Lf/a/k/k0/d;Landroid/os/Handler;Lf/a/i/i/q;Lf/a/i/j/c;)V

    .line 10
    iput-object v0, p0, Lf/a/k/g0;->k:Lf/a/k/m0/r0;

    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    iget-object v1, p0, Lf/a/k/g0;->k:Lf/a/k/m0/r0;

    invoke-virtual {v0, v1}, Lf/a/i/i/q;->j0(Lf/a/i/h/d;)V

    iget-object v0, p0, Lf/a/k/g0;->j:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "Open Mirror Connection OK, show Mirror Fragment now."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public y()Z
    .locals 3

    invoke-static {p0}, Lf/a/i/m/g;->a0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isLocalLicenseFileExists licensePath is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocalLicenseFileExists path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/carbit_license_"

    invoke-static {v0, v2}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "isLocalLicenseFile exists is "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf/a/k/g0;->y0()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized y0()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-nez v0, :cond_0

    const-string v0, "showQrRegisterFragment easyConnectService is null, return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/a/k/g0;->q:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1

    new-instance v0, Lf/a/k/l0/z3;

    invoke-direct {v0}, Lf/a/k/l0/z3;-><init>()V

    iput-object v0, p0, Lf/a/k/g0;->q:Landroidx/fragment/app/Fragment;

    :cond_1
    iget-object v0, p0, Lf/a/k/g0;->l:Lf/a/k/m0/u0;

    if-nez v0, :cond_2

    new-instance v0, Lf/a/k/m0/u0;

    iget-object v1, p0, Lf/a/k/g0;->q:Landroidx/fragment/app/Fragment;

    check-cast v1, Lf/a/k/k0/h;

    iget-object v2, p0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {v0, p0, v1, v2}, Lf/a/k/m0/u0;-><init>(Landroid/content/Context;Lf/a/k/k0/h;Lnet/easyconn/framework/sdkservice/EasyConnectService;)V

    iput-object v0, p0, Lf/a/k/g0;->l:Lf/a/k/m0/u0;

    :cond_2
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    iget-object v1, p0, Lf/a/k/g0;->l:Lf/a/k/m0/u0;

    invoke-virtual {v0, v1}, Lf/a/i/i/q;->h0(Lf/a/i/h/c;)V

    :cond_3
    iget-object v0, p0, Lf/a/k/g0;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()V
    .locals 0

    return-void
.end method

.method public declared-synchronized z0()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lf/a/k/l0/v3;

    invoke-direct {v0}, Lf/a/k/l0/v3;-><init>()V

    .line 2
    iput-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    new-instance v0, Lf/a/k/m0/t0;

    iget-object v1, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    invoke-direct {v0, v1, v2, v3}, Lf/a/k/m0/t0;-><init>(Lf/a/k/k0/f;Landroid/os/Handler;Lf/a/i/j/c;)V

    iput-object v0, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    :cond_0
    iget-object v0, p0, Lf/a/k/g0;->g:Lf/a/k/l0/v3;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lf/a/k/g0;->y:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lf/a/k/g0;->E()V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    invoke-virtual {p0, v0}, Lf/a/k/g0;->w0(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    invoke-virtual {v0}, Lf/a/k/l0/a4;->e()V

    goto :goto_0

    :cond_2
    const-string v0, "mStatusTipFragment is null, return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v0, :cond_4

    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    iget-object v1, p0, Lf/a/k/g0;->i:Lf/a/k/m0/t0;

    :goto_1
    invoke-virtual {v0, v1}, Lf/a/i/i/q;->h0(Lf/a/i/h/c;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    iget-object v1, p0, Lf/a/k/g0;->h:Lf/a/k/m0/v0;

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lf/a/k/g0;->p0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
