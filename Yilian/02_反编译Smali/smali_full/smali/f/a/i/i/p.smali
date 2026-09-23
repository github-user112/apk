.class public Lf/a/i/i/p;
.super Landroid/os/Handler;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lf/a/i/i/q;


# direct methods
.method public constructor <init>(Lf/a/i/i/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/p;->c:Lf/a/i/i/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lf/a/i/i/p;->a:I

    const/4 p1, 0x3

    iput p1, p0, Lf/a/i/i/p;->b:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "sdkHandlerForNonProcess msg.what = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lf/a/i/i/p;->a:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lf/a/i/i/p;->a:I

    iget v1, p0, Lf/a/i/i/p;->b:I

    if-lt p1, v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lf/a/i/i/p;->a:I

    const-wide/32 v1, 0x493e0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lf/a/i/i/p;->c:Lf/a/i/i/q;

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECSDK;->queryGPS()Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;

    move-result-object v1

    iget-object p1, p1, Lf/a/i/i/q;->a:Landroid/content/Context;

    if-eqz p1, :cond_2

    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 2
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 3
    invoke-virtual {p1, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendGPSBroadcast(Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;)V

    :cond_2
    const-wide/16 v1, 0x7d0

    .line 4
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
