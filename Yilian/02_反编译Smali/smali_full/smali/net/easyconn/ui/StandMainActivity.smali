.class public Lnet/easyconn/ui/StandMainActivity;
.super Lf/a/k/g0;
.source ""


# instance fields
.field public S:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/a/k/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lf/a/k/g0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Lf/a/k/g0;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lnet/easyconn/ui/StandMainActivity;->S:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_0

    const-string p1, "power"

    invoke-virtual {p0, p1}, Lf/a/k/g0;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const v0, 0x3000001a

    const-class v1, Lnet/easyconn/ui/StandMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ui/StandMainActivity;->S:Landroid/os/PowerManager$WakeLock;

    .line 1
    :cond_0
    sget-object p1, Le/e/a/g;->a:Le/e/a/h;

    .line 2
    iget-object p1, p1, Le/e/a/h;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    invoke-static {}, Le/e/a/a;->b()Le/e/a/a$b;

    move-result-object p1

    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p1, Le/e/a/a$b;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Le/e/a/a$b;->a()Le/e/a/a;

    move-result-object p1

    new-instance v0, Lnet/easyconn/ui/StandMainActivity$a;

    invoke-direct {v0, p0, p1}, Lnet/easyconn/ui/StandMainActivity$a;-><init>(Lnet/easyconn/ui/StandMainActivity;Le/e/a/d;)V

    .line 6
    sget-object p1, Le/e/a/g;->a:Le/e/a/h;

    .line 7
    iget-object p1, p1, Le/e/a/h;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_ALL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;->EC_LOG_OUT_FILE:Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;

    const/4 v2, 0x7

    const-string v3, "/sdcard/logger"

    invoke-virtual {p1, v0, v1, v3, v2}, Lnet/easyconn/ecsdk/ECSDK;->setLogInfo(Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;Ljava/lang/String;I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lf/a/k/g0;->onPause()V

    iget-object v0, p0, Lnet/easyconn/ui/StandMainActivity;->S:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "WakeLock.release"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lf/a/k/g0;->onResume()V

    iget-object v0, p0, Lnet/easyconn/ui/StandMainActivity;->S:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "WakeLock.acquire"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
