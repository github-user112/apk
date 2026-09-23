.class public Lf/a/i/i/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/i/q$c;


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EasyConnectService;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "BroadcastManager"

    new-array v4, v2, [Ljava/lang/Class;

    .line 1
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->initialization(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/easyconn/framework/broadcast/BroadcastManager;

    iput-object v3, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "initBroadcastManager initialization fail e = "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v3, Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v4, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lnet/easyconn/framework/broadcast/BroadcastManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    :goto_0
    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->registerAll()V

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    const-string v4, "net.easyconn.carcontrol.request"

    invoke-virtual {v3, v4}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 2
    iget-object v3, v3, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v3, :cond_0

    .line 3
    iput-object v0, v3, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    :cond_0
    const-string v0, "initEcSdkManager onComplete mBroadcastManagerListener = "

    .line 4
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v3, v3, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i:Lnet/easyconn/framework/sdkservice/EasyConnectService$a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i:Lnet/easyconn/framework/sdkservice/EasyConnectService$a;

    if-eqz v3, :cond_1

    check-cast v3, Lf/a/k/h0;

    invoke-virtual {v3}, Lf/a/k/h0;->a()V

    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iput-boolean v2, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->l:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->l:Z

    :goto_1
    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 5
    iput-boolean v2, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->k:Z

    .line 6
    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v2, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-nez v2, :cond_2

    if-nez v2, :cond_2

    .line 7
    new-instance v2, Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iget-object v3, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    iget-object v4, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-direct {v2, v3, v4}, Lnet/easyconn/framework/sdkservice/EcWifiManager;-><init>(Landroid/content/Context;Lf/a/i/i/q;)V

    iput-object v2, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 8
    :cond_2
    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    if-eqz v0, :cond_5

    .line 9
    iget-object v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->d:Z

    iget-boolean v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->d:Z

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 11
    iget-boolean v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->w:Z

    if-eqz v0, :cond_5

    .line 12
    :cond_4
    iget-object v0, p0, Lf/a/i/i/f;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->W()I

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    .line 13
    throw v0
.end method
