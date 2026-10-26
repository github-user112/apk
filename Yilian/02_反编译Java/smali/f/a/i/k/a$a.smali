.class public Lf/a/i/k/a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/k/a;


# direct methods
.method public constructor <init>(Lf/a/i/k/a;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget-object p1, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    .line 1
    iget-boolean v0, v0, Lf/a/i/k/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    .line 3
    iget-wide v0, v0, Lf/a/i/k/a;->c:J

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    check-cast v0, Lf/a/i/k/b$b;

    .line 5
    iget-object v0, v0, Lf/a/i/k/b$b;->f:Lf/a/i/k/b;

    iget-object v0, v0, Lf/a/i/k/b;->b:Lf/a/i/k/b$a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lf/a/i/k/b$a;->b()V

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    invoke-virtual {v6, v0, v1}, Lf/a/i/k/a;->a(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-object v4, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    .line 7
    iget-wide v4, v4, Lf/a/i/k/a;->b:J

    cmp-long v8, v0, v4

    if-gez v8, :cond_3

    sub-long/2addr v0, v6

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    move-wide v2, v0

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    .line 9
    iget-wide v0, v0, Lf/a/i/k/a;->b:J

    sub-long/2addr v0, v6

    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 10
    iget-object v4, p0, Lf/a/i/k/a$a;->a:Lf/a/i/k/a;

    .line 11
    iget-wide v4, v4, Lf/a/i/k/a;->b:J

    add-long/2addr v0, v4

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
