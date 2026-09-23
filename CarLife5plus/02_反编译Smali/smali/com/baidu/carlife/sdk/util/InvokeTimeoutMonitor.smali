.class public final Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 !2\u00020\u0001:\u0001!B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\r\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0015\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u000cR\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;",
        "",
        "Landroid/os/Looper;",
        "looper",
        "",
        "timeout",
        "Lkotlin/Function0;",
        "Lr8/z;",
        "onTimeout",
        "<init>",
        "(Landroid/os/Looper;JLf9/a;)V",
        "tick",
        "()V",
        "enter",
        "exit",
        "Ljava/lang/Runnable;",
        "runnable",
        "monitor",
        "(Ljava/lang/Runnable;)V",
        "release",
        "Lf9/a;",
        "threshold",
        "J",
        "",
        "isReleased",
        "Z",
        "monitoring",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "count",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "Companion",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor$Companion;

.field public static final TICK_INTERVAL:J = 0x64L


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final handler:Landroid/os/Handler;

.field private isReleased:Z

.field private volatile monitoring:Z

.field private final onTimeout:Lf9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf9/a;"
        }
    .end annotation
.end field

.field private final threshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->Companion:Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;JLf9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "J",
            "Lf9/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "looper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onTimeout"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->onTimeout:Lf9/a;

    .line 15
    .line 16
    const-wide/16 v0, 0x64

    .line 17
    .line 18
    div-long/2addr p2, v0

    .line 19
    iput-wide p2, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->threshold:J

    .line 20
    .line 21
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    const-wide/16 p3, 0x0

    .line 24
    .line 25
    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    .line 30
    new-instance p2, Landroid/os/Handler;

    .line 31
    .line 32
    new-instance p3, Lcom/baidu/carlife/sdk/util/a;

    .line 33
    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-direct {p3, p4, p0}, Lcom/baidu/carlife/sdk/util/a;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->handler:Landroid/os/Handler;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->handler$lambda$0(Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final handler$lambda$0(Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;Landroid/os/Message;)Z
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->isReleased:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->monitoring:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->threshold:J

    .line 21
    .line 22
    cmp-long p1, v0, v2

    .line 23
    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->exit()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->onTimeout:Lf9/a;

    .line 30
    .line 31
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->tick()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p0, 0x1

    .line 38
    return p0
.end method


# virtual methods
.method public final enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->monitoring:Z

    .line 10
    .line 11
    return-void
.end method

.method public final exit()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->monitoring:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final monitor(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->enter()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->exit()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->isReleased:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final tick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x64

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
