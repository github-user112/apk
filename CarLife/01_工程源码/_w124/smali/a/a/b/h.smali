.class public final synthetic La/a/b/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/a/b/i;


# direct methods
.method public synthetic constructor <init>(La/a/b/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/h;->b:La/a/b/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, La/a/b/h;->b:La/a/b/i;

    .line 1
    :goto_0
    iget-object v1, v0, La/a/b/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, v0, La/a/b/i;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v2

    iget-boolean v2, v2, La/a/a/a/l/a;->e:Z

    if-nez v2, :cond_0

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget v3, La/a/a/a/l/b;->p:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    invoke-virtual {v2, v1}, La/a/b/r/a;->c(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {v2, v1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method
