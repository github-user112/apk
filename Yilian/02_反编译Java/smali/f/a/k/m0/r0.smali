.class public Lf/a/k/m0/r0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/k/k0/c;
.implements Lf/a/i/h/d;
.implements Lf/a/i/h/g;
.implements Lnet/easyconn/framework/broadcast/BroadcastManager$d;


# instance fields
.field public final a:Lf/a/k/k0/d;

.field public final b:Landroid/os/Handler;

.field public final c:Lf/a/i/i/q;

.field public final d:Lf/a/i/j/c;

.field public e:Landroid/content/Context;

.field public f:Z

.field public g:Z

.field public h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

.field public i:Ljava/lang/String;

.field public j:Landroid/os/Bundle;

.field public k:Landroid/os/Bundle;

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Ljava/util/concurrent/ExecutorService;

.field public volatile s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/k/k0/d;Landroid/os/Handler;Lf/a/i/i/q;Lf/a/i/j/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/m0/r0;->f:Z

    iput-boolean v0, p0, Lf/a/k/m0/r0;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/m0/r0;->l:Z

    iput-boolean v0, p0, Lf/a/k/m0/r0;->n:Z

    iput-boolean v0, p0, Lf/a/k/m0/r0;->o:Z

    iput-boolean v0, p0, Lf/a/k/m0/r0;->s:Z

    iput-object p1, p0, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    iput-object p2, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {p2, p0}, Lf/a/d;->E(Ljava/lang/Object;)V

    iput-object p3, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iput-object p4, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    iput-object p5, p0, Lf/a/k/m0/r0;->d:Lf/a/i/j/c;

    .line 1
    iget-object p1, p4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 4
    check-cast p2, Lf/a/k/l0/p3;

    invoke-virtual {p1, p2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->setOnMediaCodecStateRequestListener(Lnet/easyconn/framework/broadcast/BroadcastManager$e;)V

    .line 5
    iget-object p1, p4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 6
    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 7
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 8
    invoke-virtual {p1, p0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->setOnKeyCodeActionListener(Lnet/easyconn/framework/broadcast/BroadcastManager$d;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Mirror_Presenter_Ping_Service"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public A([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    iget-object v3, v3, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lf/a/k/m0/r0;->l:Z

    iget-object p1, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {p1, v1, v0}, Lf/a/i/i/q;->n0([Ljava/lang/String;I)V

    iget-object p1, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object p1, p1, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/l/a;->x(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public B()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/m0/r0;->g:Z

    iget-object v1, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iput-boolean v0, v1, Lf/a/i/i/q;->m:Z

    .line 2
    iget-object v0, p0, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/m0/l;

    invoke-direct {v1, p0}, Lf/a/k/m0/l;-><init>(Lf/a/k/m0/r0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->g()V

    return-void
.end method

.method public H(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0, p1, p2}, Lf/a/i/i/q;->b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V

    return-void
.end method

.method public I()Z
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 3
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 4
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "false"

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "ENABLE_FLOAT_MENU_SYSTEM_HOME"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method public K(Landroid/content/Context;)V
    .locals 3

    const-string v0, "backToDesktop start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lf/a/k/m0/r0;->d:Lf/a/i/j/c;

    const v0, 0x13880

    const/16 v1, 0xc

    const-string v2, "EC_MIRROR_SUCCEED_MENU_HOME"

    invoke-virtual {p1, v0, v1, v2}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    const-string p1, "backToDesktop end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public M(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lf/a/i/i/q;->m:Z

    .line 2
    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->g()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->k0()V

    :cond_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lf/a/k/m0/r0;->h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    iget-object v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p2, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    iget-object v0, v3, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareName:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lf/a/k/k0/d;->h(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public N()I
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget v0, v0, Lf/a/i/i/q;->W:I

    return v0
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget-object v0, v1, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->g()V

    iget v0, v1, Lf/a/k/m0/r0;->m:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lf/a/k/m0/r0;->m:I

    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/l/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v11, v1, Lf/a/k/m0/r0;->i:Ljava/lang/String;

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_0
    const-wide/16 v4, 0x0

    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 3
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 4
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/l/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "key_ec_airplay_versioncode"

    if-eqz v0, :cond_2

    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 5
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 6
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const-wide/16 v4, -0x1

    .line 7
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v0, v4

    .line 8
    iget-object v4, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 9
    iget-object v4, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 10
    check-cast v4, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v4}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lf/a/i/m/g;->i(Landroid/content/Context;)I

    move-result v4

    if-le v0, v4, :cond_1

    int-to-long v4, v0

    goto :goto_0

    :cond_1
    int-to-long v4, v4

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 11
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 12
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/l/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lf/a/i/i/q;->I()J

    move-result-wide v4

    const-string v6, "key_ec_sdk_versioncode"

    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x0

    move-wide v13, v4

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v7, 0x1

    move-wide v13, v4

    const/4 v12, 0x1

    :goto_1
    iget-object v4, v1, Lf/a/k/m0/r0;->h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_2
    const-string v8, ""

    if-ge v7, v5, :cond_5

    aget-object v8, v4, v7

    iget-object v9, v8, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v4, v8, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->versionCode:I

    iget-object v5, v8, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcTitle:Ljava/lang/String;

    iget-object v8, v8, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcDetail:Ljava/lang/String;

    move v15, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move-object v5, v8

    const/4 v15, 0x0

    :goto_3
    if-eqz v0, :cond_6

    :try_start_0
    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v3, v2}, Lf/a/i/l/a;->C(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 13
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 14
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    int-to-long v7, v15

    .line 15
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 17
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 18
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-wide v5, v13

    invoke-static/range {v2 .. v9}, Lf/a/i/l/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unzip "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 19
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 20
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v5, v15

    const/4 v0, 0x0

    move-object/from16 v3, p1

    move-wide v15, v5

    move-wide v5, v13

    move-object v13, v7

    move-wide v7, v15

    move-object v14, v9

    move v9, v0

    invoke-static/range {v2 .. v9}, Lf/a/i/l/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZ)V

    invoke-static {v14, v11, v13}, Le/a/c/a/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lf/a/k/m0/r0;->j:Landroid/os/Bundle;

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lf/a/k/m0/r0;->j:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lf/a/k/m0/r0;->k:Landroid/os/Bundle;

    :cond_7
    iget-object v0, v1, Lf/a/k/m0/r0;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lf/a/k/m0/r0;->j:Landroid/os/Bundle;

    int-to-long v2, v15

    const-string v4, "versionCode"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, Lf/a/k/m0/r0;->j:Landroid/os/Bundle;

    const-string v2, "versionName"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lf/a/k/m0/r0;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move v0, v12

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompleted isSystemSid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , sid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p5, :cond_f

    iget-object v2, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 21
    iput-boolean v3, v2, Lf/a/i/i/q;->m:Z

    .line 22
    iget-object v2, v1, Lf/a/k/m0/r0;->j:Landroid/os/Bundle;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 23
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 24
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lf/a/k/m0/r0;->j:Landroid/os/Bundle;

    iget-object v3, v1, Lf/a/k/m0/r0;->k:Landroid/os/Bundle;

    .line 25
    new-instance v4, Landroid/content/Intent;

    const-string v5, "net.easyconn.ota.installable"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "ota_installable_package_path"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "ota_installable_package_detail"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v0, v4}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    const/4 v0, 0x0

    .line 26
    iget-object v2, v1, Lf/a/k/m0/r0;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object v0, v2

    :cond_9
    if-eqz v0, :cond_e

    iget-object v2, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 27
    iget-object v2, v2, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 28
    check-cast v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lf/a/i/l/a;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 29
    iget-object v3, v3, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 30
    check-cast v3, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v3}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lf/a/i/l/a;->y(Landroid/content/Context;J)V

    :cond_a
    iget-object v2, v1, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    .line 31
    invoke-static {v2}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "false"

    if-nez v2, :cond_b

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_6

    :cond_b
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "START_MIRROR_WHEN_EC_DWNNLOADED"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 32
    iget-object v2, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v2}, Lf/a/i/i/q;->k0()V

    :cond_c
    iget-object v2, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 33
    iget-object v2, v2, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 34
    check-cast v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "net.easyconn.fileProvider"

    invoke-static {v2, v0, v3}, Lf/a/i/l/a;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_d

    const-string v2, "installApkFilePreCheck fail:"

    invoke-static {v2, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object v0, v1, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->a()V

    :cond_d
    return-void

    :cond_e
    iget-object v0, v1, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->k0()V

    :cond_f
    return-void
.end method

.method public T(II)V
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x20

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    iget-object p1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public U()Z
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_EAP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_APP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public W()V
    .locals 4

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_MAIN:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/ECSDK;->openAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I

    .line 2
    iget-object v0, p0, Lf/a/k/m0/r0;->d:Lf/a/i/j/c;

    const v1, 0x13880

    const/16 v2, 0xb

    const-string v3, "EC_MIRROR_SUCCEED_MENU_EC"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public X(Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;)V
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(ZI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorPresenter appForegroundStatusChange isForeground is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    check-cast v0, Lf/a/k/g0;

    .line 1
    iput p2, v0, Lf/a/k/g0;->G:I

    .line 2
    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, p1, p2}, Lf/a/k/k0/d;->j(ZI)V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_FOREGROUND_SPLIT_OVERLAY:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    if-eq p2, v0, :cond_12

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SPLIT_OVERLAY:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string v0, "true"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v2, v1}, Lf/a/k/k0/d;->A(Z)V

    iget-object v1, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 3
    iget-object v1, v1, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 4
    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "ENABLE_FLOAT_BUTTON_FOREGROUND"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MirrorPresenter appForegroundStatusChange now foreground"

    .line 6
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/j;

    invoke-direct {v1, p0}, Lf/a/k/m0/j;-><init>(Lf/a/k/m0/r0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    :cond_2
    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/g;

    invoke-direct {v2, v1}, Lf/a/k/m0/g;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    :cond_3
    iget-object v2, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 7
    iget-object v2, v2, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 8
    check-cast v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "ENABLE_FLOAT_BUTTON_BACKGROUND"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 10
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SAME:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v2

    if-ne p2, v2, :cond_a

    invoke-virtual {p0}, Lf/a/k/m0/r0;->U()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MirrorPresenter appForegroundStatusChange EC_STATUS_MESSAGE_APP_BACKGROUND_SAME ios stream"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->A(Z)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/n0;

    invoke-direct {v2, v1}, Lf/a/k/m0/n0;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/o;

    invoke-direct {v1, p0}, Lf/a/k/m0/o;-><init>(Lf/a/k/m0/r0;)V

    goto/16 :goto_7

    .line 11
    :cond_5
    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDORID_USB_AOA:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_9

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDORID_USB_AOA:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    .line 12
    iget-boolean v0, p0, Lf/a/k/m0/r0;->n:Z

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "MirrorPresenter appForegroundStatusChange else"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->A(Z)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/n0;

    invoke-direct {v2, v1}, Lf/a/k/m0/n0;-><init>(Lf/a/k/k0/d;)V

    goto :goto_5

    :cond_9
    :goto_4
    const-string v0, "MirrorPresenter appForegroundStatusChange !isIosStream() && ((isAoaType()) || (!isAoaType() && isAccessibilityEnabled))"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, v3}, Lf/a/k/k0/d;->A(Z)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/n0;

    invoke-direct {v2, v1}, Lf/a/k/m0/n0;-><init>(Lf/a/k/k0/d;)V

    :goto_5
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/k;

    invoke-direct {v1, p0}, Lf/a/k/m0/k;-><init>(Lf/a/k/m0/r0;)V

    goto/16 :goto_7

    :cond_a
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SPLIT:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v2

    if-ne p2, v2, :cond_f

    const-string v2, "MirrorPresenter appForegroundStatusChange isPhoneScreenLocked = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lf/a/k/m0/r0;->o:Z

    invoke-static {v2, v3}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v2, p0, Lf/a/k/m0/r0;->o:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 13
    iget-object v2, v2, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 14
    check-cast v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 15
    iget-object v2, v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 16
    invoke-virtual {v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->isInMirroringMode()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lf/a/k/m0/r0;->U()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->A(Z)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/n0;

    invoke-direct {v2, v1}, Lf/a/k/m0/n0;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/q;

    invoke-direct {v1, p0}, Lf/a/k/m0/q;-><init>(Lf/a/k/m0/r0;)V

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 17
    iget-object v2, v2, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 18
    check-cast v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "ENABLE_FLOAT_BUTTON_BACKGROUND_SPLIT"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "appForegroundStatusChange getPropertyEnableFloatButtonBackgroudSplit"

    .line 20
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->A(Z)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/n0;

    invoke-direct {v2, v1}, Lf/a/k/m0/n0;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/p;

    invoke-direct {v1, p0}, Lf/a/k/m0/p;-><init>(Lf/a/k/m0/r0;)V

    :goto_7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_d
    const-string v0, "appForegroundStatusChange !getPropertyEnableFloatButtonBackgroudSplit"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/g;

    invoke-direct {v2, v1}, Lf/a/k/m0/g;-><init>(Lf/a/k/k0/d;)V

    goto :goto_8

    :cond_e
    const-string v0, "appForegroundStatusChange !getPropertyEnableFloatButtonBackground"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/g;

    invoke-direct {v2, v1}, Lf/a/k/m0/g;-><init>(Lf/a/k/k0/d;)V

    :goto_8
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    :goto_9
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SAME:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 21
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 22
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 23
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 24
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMirrorSameBroadcast()V

    :cond_10
    :goto_a
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_FOREGROUND_SAME:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    if-eq p2, v0, :cond_11

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_FOREGROUND_SPLIT:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    if-eq p2, v0, :cond_11

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_FOREGROUND:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_13

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appForegroundStatusChange type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendQuitMirrorSameBroadcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 25
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 26
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 27
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 28
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendQuitMirrorSameBroadcast()V

    goto :goto_c

    :cond_12
    :goto_b
    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/g;

    invoke-direct {v2, v1}, Lf/a/k/m0/g;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_c
    iput-boolean p1, p0, Lf/a/k/m0/r0;->p:Z

    iput p2, p0, Lf/a/k/m0/r0;->q:I

    return-void
.end method

.method public d0(Lf/a/i/i/x;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, v1, Landroid/os/Message;->what:I

    iget-object p1, v0, Lf/a/i/i/q;->s:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic e()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->u(Z)V

    return-void
.end method

.method public synthetic f()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->u(Z)V

    return-void
.end method

.method public synthetic g()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->u(Z)V

    return-void
.end method

.method public synthetic h()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->u(Z)V

    return-void
.end method

.method public synthetic i()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->u(Z)V

    return-void
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->k0()V

    return-void
.end method

.method public j(Ljava/lang/String;FII)V
    .locals 10

    if-eqz p1, :cond_3

    iget-object p4, p0, Lf/a/k/m0/r0;->h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p4, p0, Lf/a/k/m0/r0;->l:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-object p4, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, p4, Lf/a/i/i/q;->m:Z

    .line 2
    iget-object p4, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/r;

    invoke-direct {v1, p0}, Lf/a/k/m0/r;-><init>(Lf/a/k/m0/r0;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p4, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Lf/a/k/m0/r0;->l:Z

    :cond_1
    iget-object p4, p0, Lf/a/k/m0/r0;->h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    array-length v1, p4

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p4, v0

    iget-object v3, v2, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    iget-object v5, v2, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareName:Ljava/lang/String;

    iget v8, p0, Lf/a/k/m0/r0;->m:I

    iget-object p1, p0, Lf/a/k/m0/r0;->h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    array-length v9, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v4 .. v9}, Lf/a/k/k0/d;->b(Ljava/lang/String;FIII)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->C()V

    return-void
.end method

.method public k0()Z
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "false"

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "ENABLE_FLOAT_MENU_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 5

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 3
    :goto_0
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 4
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->w(Landroid/content/Context;)Z

    move-result v1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 5
    iget-object v3, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v3

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_USB_ADB:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v3

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDORID_USB_AOA:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v3

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_WIFI:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v3

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v3, v4, :cond_3

    iget-object v0, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v0}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_APP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    .line 6
    sget-object v0, Lf/a/i/m/d;->c:Ljava/util/Properties;

    if-nez v0, :cond_5

    :catch_0
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const-string v3, "float_show_app_to_front"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public l0()I
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget v0, v0, Lf/a/i/i/q;->X:I

    return v0
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/m0/r0;->g:Z

    iget-object v1, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iput-boolean v0, v1, Lf/a/i/i/q;->m:Z

    .line 2
    iget-object v0, p0, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/m0/n;

    invoke-direct {v1, p0}, Lf/a/k/m0/n;-><init>(Lf/a/k/m0/r0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->k0()V

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->g()V

    return-void
.end method

.method public o()V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->J()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lf/a/k/m0/r0;->s:Z

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v5

    const/16 v6, 0xfa

    invoke-virtual {v5, v0, v6}, Lnet/easyconn/ecsdk/ECSDK;->ping(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const/16 v3, 0xc8

    int-to-long v3, v3

    cmp-long v8, v6, v3

    if-lez v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ping ip:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pingTime:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " timeoutCount:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    iget-object v2, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v4, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lf/a/k/m0/c;

    invoke-direct {v6, v4}, Lf/a/k/m0/c;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lf/a/k/m0/r0;->d:Lf/a/i/j/c;

    const v4, 0x13880

    const/16 v6, 0xa

    const-string v7, "EC_MIRROR_SUCCEED_WIFI_LOW_SPEED_TIP"

    invoke-virtual {v2, v4, v6, v7}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    const/4 v4, -0x6

    if-ne v5, v4, :cond_3

    const-string v2, "Ping has no permission"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    iget-object v3, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v4, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lf/a/k/m0/f;

    invoke-direct {v5, v4}, Lf/a/k/m0/f;-><init>(Lf/a/k/k0/d;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const-wide/16 v3, 0x7d0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Ping ip "

    const-string v4, "; Exception: "

    .line 3
    invoke-static {v3, v0, v4}, Le/a/c/a/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v0}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public o0(II)V
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x21

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    iget-object p1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/r0;->d:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/i/j/c;->g()V

    :cond_0
    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    move-object v1, v0

    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 5
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 6
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->removeOnMediaCodecStateRequestListener()V

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 7
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 8
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 9
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 10
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->removeKeyCodeActionListener()V

    :cond_1
    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/d;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const-string v0, "removeVideoEventListener and removeOTAUpdateListener"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->a0()V

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v1, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iput-object v2, v1, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    .line 3
    :cond_0
    iput-object v2, v0, Lf/a/i/i/q;->C:Lf/a/i/h/g;

    return-void
.end method

.method public onOTAUpdateRequestDownload([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lf/a/k/m0/r0;->m:I

    iput-object p1, p0, Lf/a/k/m0/r0;->h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    invoke-virtual {p0, p1}, Lf/a/k/m0/r0;->A([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 2

    iget-boolean v0, p0, Lf/a/k/m0/r0;->p:Z

    iget v1, p0, Lf/a/k/m0/r0;->q:I

    invoke-virtual {p0, v0, v1}, Lf/a/k/m0/r0;->d(ZI)V

    return-void
.end method

.method public p0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/m0/r0;->s:Z

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->o0()V

    return-void
.end method

.method public synthetic q()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->o0()V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1f

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i()V

    return-void
.end method

.method public u([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
    .locals 0

    const-string p3, "onCheckResult downloadableLength = "

    invoke-static {p3, p2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput p2, p0, Lf/a/k/m0/r0;->m:I

    iput-object p1, p0, Lf/a/k/m0/r0;->h:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    invoke-virtual {p0, p1}, Lf/a/k/m0/r0;->A([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i()V

    return-void
.end method

.method public w(Z)V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->T:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/a/k/m0/r0;->f:Z

    iget-object p1, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 3
    iget-object p1, p1, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 4
    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 5
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 6
    invoke-virtual {p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMirrorPauseBroadcast()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lf/a/k/m0/r0;->f:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/a/k/m0/r0;->f:Z

    iget-object p1, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 7
    iget-object p1, p1, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 8
    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 9
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 10
    invoke-virtual {p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMirrorResumeBroadcast()V

    :cond_2
    :goto_0
    return-void
.end method

.method public x(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/m0/r0;->g:Z

    iget-object v0, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/k/k0/d;->A(Z)V

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v2, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lf/a/k/m0/g;

    invoke-direct {v3, v2}, Lf/a/k/m0/g;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v2, p0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lf/a/k/m0/b;

    invoke-direct {v3, v2}, Lf/a/k/m0/b;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lf/a/k/m0/r0;->p:Z

    const/4 v0, -0x1

    iput v0, p0, Lf/a/k/m0/r0;->q:I

    const-string v0, " MirrorPresenter onMirrorDisconnected reason = "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    return-void
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->V:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
