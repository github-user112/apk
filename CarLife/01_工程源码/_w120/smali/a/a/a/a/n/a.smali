.class public final synthetic La/a/a/a/n/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:La/a/a/a/n/f;


# direct methods
.method public synthetic constructor <init>(La/a/a/a/n/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/n/a;->b:La/a/a/a/n/f;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object v0, p0, La/a/a/a/n/a;->b:La/a/a/a/n/f;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, v0, La/a/a/a/n/f;->c:Z

    if-nez p1, :cond_1

    iget-boolean p1, v0, La/a/a/a/n/f;->d:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, v0, La/a/a/a/n/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    iget-wide v4, v0, La/a/a/a/n/f;->b:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    .line 2
    iput-boolean v1, v0, La/a/a/a/n/f;->d:Z

    iget-object p1, v0, La/a/a/a/n/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3
    iget-object p1, v0, La/a/a/a/n/f;->a:Lc/k/a/a;

    invoke-interface {p1}, Lc/k/a/a;->a()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, v0, La/a/a/a/n/f;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
