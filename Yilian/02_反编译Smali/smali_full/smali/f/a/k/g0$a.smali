.class public Lf/a/k/g0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/k/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/k/g0;


# direct methods
.method public constructor <init>(Lf/a/k/g0;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/g0$a;->a:Lf/a/k/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 0

    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService$b;

    iget-object p2, p0, Lf/a/k/g0$a;->a:Lf/a/k/g0;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService$b;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 2
    iput-object p1, p2, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {p2}, Lf/a/k/g0;->k0()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "[SdkService] ServiceConnection"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/g0$a;->a:Lf/a/k/g0;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/b;

    invoke-direct {v1, p0, p2, p1}, Lf/a/k/b;-><init>(Lf/a/k/g0$a;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "[SdkService] onServiceDisconnected"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
