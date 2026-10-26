.class public Lf/a/i/k/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/k/b$b;,
        Lf/a/i/k/b$a;
    }
.end annotation


# instance fields
.field public a:Lf/a/i/k/b$b;

.field public b:Lf/a/i/k/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lf/a/i/k/b$b;

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lf/a/i/k/b$b;-><init>(Lf/a/i/k/b;JJ)V

    iput-object p1, p0, Lf/a/i/k/b;->a:Lf/a/i/k/b$b;

    return-void
.end method


# virtual methods
.method public a(Lf/a/i/k/b$a;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/k/b;->b:Lf/a/i/k/b$a;

    return-void
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Lf/a/i/k/b;->a:Lf/a/i/k/b$b;

    if-eqz v0, :cond_2

    .line 1
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Lf/a/i/k/a;->d:Z

    iget-wide v1, v0, Lf/a/i/k/a;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 2
    iget-object v1, v0, Lf/a/i/k/b$b;->f:Lf/a/i/k/b;

    iget-object v1, v1, Lf/a/i/k/b;->b:Lf/a/i/k/b$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lf/a/i/k/b$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lf/a/i/k/a;->a:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lf/a/i/k/a;->c:J

    iget-object v1, v0, Lf/a/i/k/a;->e:Landroid/os/Handler;

    iget-object v2, v0, Lf/a/i/k/a;->e:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lf/a/i/k/b;->a:Lf/a/i/k/b$b;

    if-eqz v0, :cond_0

    .line 1
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lf/a/i/k/a;->d:Z

    iget-object v2, v0, Lf/a/i/k/a;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/k/b;->b:Lf/a/i/k/b$a;

    return-void
.end method
