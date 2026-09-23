.class public Lf/a/k/m0/s0;
.super Lf/a/k/m0/v0;
.source ""


# static fields
.field public static final i:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/a/k/m0/s0;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/a/k/k0/j;Landroid/os/Handler;Lf/a/i/j/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lf/a/k/m0/v0;-><init>(Lf/a/k/k0/j;Landroid/os/Handler;Lf/a/i/j/c;)V

    return-void
.end method


# virtual methods
.method public e(ZLnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPhoneConnectStatus : isConnected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lf/a/k/m0/v0;->b:Landroid/os/Handler;

    sget-object v1, Lf/a/k/m0/v0;->h:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lf/a/k/m0/v0;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/a/k/m0/s0;->y0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/m0/v0;->b:Landroid/os/Handler;

    iget-object p2, p0, Lf/a/k/m0/v0;->a:Lf/a/k/k0/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lf/a/k/m0/o0;

    invoke-direct {v1, p2}, Lf/a/k/m0/o0;-><init>(Lf/a/k/k0/j;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lf/a/k/m0/v0;->b:Landroid/os/Handler;

    iget-object p2, p0, Lf/a/k/m0/v0;->a:Lf/a/k/k0/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lf/a/k/m0/k0;

    invoke-direct {v1, p2}, Lf/a/k/m0/k0;-><init>(Lf/a/k/k0/j;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lf/a/k/m0/v0;->g:Z

    iget-object p1, p0, Lf/a/k/m0/v0;->b:Landroid/os/Handler;

    sget-object p2, Lf/a/k/m0/s0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public e0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/v0;->a:Lf/a/k/k0/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/a/k/m0/v0;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/k0;

    invoke-direct {v2, v0}, Lf/a/k/m0/k0;-><init>(Lf/a/k/k0/j;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public y0()V
    .locals 7

    iget-object v0, p0, Lf/a/k/m0/v0;->a:Lf/a/k/k0/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/a/k/m0/v0;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/l0;

    invoke-direct {v2, v0}, Lf/a/k/m0/l0;-><init>(Lf/a/k/k0/j;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lf/a/k/m0/v0;->b:Landroid/os/Handler;

    new-instance v1, Lf/a/k/m0/u;

    invoke-direct {v1, p0}, Lf/a/k/m0/u;-><init>(Lf/a/k/m0/s0;)V

    sget-object v2, Lf/a/k/m0/s0;->i:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method

.method public synthetic z0()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/v0;->a:Lf/a/k/k0/j;

    invoke-interface {v0}, Lf/a/k/k0/j;->q()V

    iget-object v0, p0, Lf/a/k/m0/v0;->a:Lf/a/k/k0/j;

    invoke-interface {v0}, Lf/a/k/k0/j;->I()V

    return-void
.end method
