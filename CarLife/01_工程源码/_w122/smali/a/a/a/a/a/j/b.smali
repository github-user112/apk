.class public final La/a/a/a/a/j/b;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:La/a/a/a/a/j/c;

.field public final d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroid/os/HandlerThread;

.field public final g:La/a/a/a/n/f;

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/a/j/c;ZI)V
    .locals 4

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "transport"

    invoke-static {p2, p4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    iput-boolean p3, p0, La/a/a/a/a/j/b;->d:Z

    new-instance p1, Landroid/os/HandlerThread;

    const/4 p2, -0x2

    const-string p4, "CarLife_MesssageSender"

    invoke-direct {p1, p4, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, La/a/a/a/a/j/b;->f:Landroid/os/HandlerThread;

    new-instance p2, La/a/a/a/n/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    const-string v1, "getMainLooper()"

    invoke-static {p4, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, La/a/a/a/a/j/a;

    invoke-direct {v1, p0}, La/a/a/a/a/j/a;-><init>(La/a/a/a/a/j/b;)V

    const-wide/16 v2, 0xbb8

    invoke-direct {p2, p4, v2, v3, v1}, La/a/a/a/n/f;-><init>(Landroid/os/Looper;JLc/k/a/a;)V

    iput-object p2, p0, La/a/a/a/a/j/b;->g:La/a/a/a/n/f;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, La/a/a/a/a/j/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p4, "CarLife_MessageDispatcher"

    invoke-virtual {p0, p4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p4, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, La/a/a/a/a/j/b;->e:Landroid/os/Handler;

    if-eqz p3, :cond_1

    .line 2
    iget-object p1, p2, La/a/a/a/n/f;->f:Landroid/os/Handler;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/j/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/j/b;->g:La/a/a/a/n/f;

    .line 1
    iput-boolean v1, v0, La/a/a/a/n/f;->c:Z

    iget-object v0, v0, La/a/a/a/n/f;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    invoke-virtual {v0}, La/a/a/a/a/j/c;->f()V

    iget-object v0, p0, La/a/a/a/a/j/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "MessageDispatcher terminate"

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "msg"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast p1, La/a/a/a/a/a/b;

    const-string v0, "message"

    .line 1
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, La/a/a/a/a/j/b;->g:La/a/a/a/n/f;

    .line 2
    iget-object v3, v2, La/a/a/a/n/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-boolean v1, v2, La/a/a/a/n/f;->d:Z

    .line 3
    invoke-virtual {p1}, La/a/a/a/a/a/b;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    invoke-interface {v2}, La/a/a/a/c;->f0()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    invoke-interface {v2, p1}, La/a/a/a/c;->o0(La/a/a/a/a/a/b;)La/a/a/a/a/a/b;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    invoke-virtual {v3, v2}, La/a/a/a/a/j/c;->g(La/a/a/a/a/a/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, La/a/a/a/a/a/b;->s()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, La/a/a/a/a/a/b;->s()V

    throw v3

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    iget-object v2, p0, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    invoke-virtual {v2, p1}, La/a/a/a/a/j/c;->g(La/a/a/a/a/a/b;)V

    :goto_0
    iget-object v2, p0, La/a/a/a/a/j/b;->g:La/a/a/a/n/f;

    .line 4
    iput-boolean v0, v2, La/a/a/a/n/f;->d:Z

    iget-object v2, v2, La/a/a/a/n/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 5
    iget-object v2, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    invoke-interface {v2, v2, p1}, La/a/a/a/a/j/e;->n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, La/a/a/a/a/j/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CarLife_SDK"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "MessageDispatcher handleMessage exception: "

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const-string v0, "tag"

    .line 6
    invoke-static {v3, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {v4, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    .line 8
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    invoke-virtual {p0}, La/a/a/a/a/j/b;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_2
    invoke-virtual {p1}, La/a/a/a/a/a/b;->s()V

    return v1

    :goto_3
    invoke-virtual {p1}, La/a/a/a/a/a/b;->s()V

    throw v0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.sdk.internal.protocol.CarLifeMessage"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 11

    :goto_0
    :try_start_0
    iget-object v0, p0, La/a/a/a/a/j/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    invoke-virtual {v0}, La/a/a/a/a/j/c;->d()La/a/a/a/a/a/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, La/a/a/a/a/a/b;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    invoke-interface {v1}, La/a/a/a/c;->f0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    invoke-interface {v1, v0}, La/a/a/a/c;->F(La/a/a/a/a/a/b;)La/a/a/a/a/a/b;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    invoke-interface {v2, v2, v1}, La/a/a/a/a/j/e;->g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v1, v0, :cond_2

    :try_start_3
    invoke-virtual {v1}, La/a/a/a/a/a/b;->s()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a/a/b;->s()V

    :cond_0
    throw v2

    :cond_1
    iget-object v1, p0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    invoke-interface {v1, v1, v0}, La/a/a/a/a/j/e;->g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v0}, La/a/a/a/a/a/b;->s()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, La/a/a/a/a/a/b;->s()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/j/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x6

    const-string v3, "args"

    const-string v4, "tag"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "CarLife_SDK"

    if-nez v1, :cond_4

    new-array v1, v7, [Ljava/lang/Object;

    const-string v9, "MessageDispatcher run exception0: "

    aput-object v9, v1, v6

    aput-object v0, v1, v5

    .line 1
    invoke-static {v8, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v9, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v9, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    array-length v10, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v2, v8, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    new-array v1, v7, [Ljava/lang/Object;

    const-string v7, "MessageDispatcher run exception1: "

    aput-object v7, v1, v6

    aput-object v0, v1, v5

    invoke-static {v8, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_5

    goto :goto_3

    .line 5
    :cond_5
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v8, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_6
    :goto_3
    invoke-virtual {p0}, La/a/a/a/a/j/b;->a()V

    return-void
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
