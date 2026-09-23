.class public Lf/a/i/n/b$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/n/b;


# direct methods
.method public constructor <init>(Lf/a/i/n/b;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v0, v0, Lf/a/i/n/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v0, v0, Lf/a/i/n/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "interrupt renderLock unlock Exception msg = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 14

    const-string v0, "RenderThread renderLock unlock Exception msg = "

    const-string v1, "RenderThread: begin"

    :goto_0
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-boolean v1, v1, Lf/a/i/n/b;->c:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v1, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    if-eqz v1, :cond_b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_0
    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v1, v1, Lf/a/i/n/b;->w:J

    iget-object v3, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v3, v3, Lf/a/i/n/b;->x:J

    const-wide/16 v5, 0x1

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lf/a/i/n/b;->y:J

    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v2, v1, Lf/a/i/n/b;->w:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Lf/a/i/n/b;->w:J

    :cond_0
    sget-boolean v1, Lf/a/i/n/b;->I:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "EC_DECODE"

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ooooout dequeueOutputBuffer start decodeOutputStartIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v3, v3, Lf/a/i/n/b;->w:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v1, v1, Lf/a/i/n/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-boolean v1, Lf/a/i/n/b;->I:Z

    if-eqz v1, :cond_2

    const-string v1, "ooooout dequeueOutputBuffer outputBufferIndex begin"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v1, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    iget-object v7, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v7, v7, Lf/a/i/n/b;->b:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v8, 0x2710

    invoke-virtual {v1, v7, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v3

    const-wide/16 v11, 0x1e

    cmp-long v13, v9, v11

    if-gtz v13, :cond_3

    sget-boolean v11, Lf/a/i/n/b;->I:Z

    if-eqz v11, :cond_4

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ooooout dequeueOutputBuffer outputBufferIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " outputIndexTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ltz v1, :cond_8

    iget-object v9, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v9, v9, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    iget-object v10, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-boolean v10, v10, Lf/a/i/n/b;->m:Z

    invoke-virtual {v9, v1, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v3

    const-wide/16 v11, 0x28

    cmp-long v13, v3, v11

    if-gtz v13, :cond_5

    sget-boolean v11, Lf/a/i/n/b;->I:Z

    if-eqz v11, :cond_6

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ooooout dequeueOutputBuffer end decodeOutputIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v12, v12, Lf/a/i/n/b;->x:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", cost time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " outputTime = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v7

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v3, v2, Lf/a/i/n/b;->x:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lf/a/i/n/b;->x:J

    iget-object v2, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-boolean v2, v2, Lf/a/i/n/b;->k:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v2, v2, Lf/a/i/n/b;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v6, v5, Lf/a/i/n/b;->t:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v3, v8

    add-long/2addr v3, v6

    iput-wide v3, v5, Lf/a/i/n/b;->t:J

    :cond_7
    iget-object v2, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v3, v2, Lf/a/i/n/b;->E:J

    iget-object v5, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v5, v5, Lf/a/i/n/b;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lf/a/i/n/b;->E:J

    iget-object v2, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-wide v5, v5, Lf/a/i/n/b;->y:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lf/a/i/n/b;->e(J)V

    :cond_8
    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    .line 1
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    :cond_a
    :goto_2
    :try_start_2
    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v1, v1, Lf/a/i/n/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeueOutputBuffer error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v1, v1, Lf/a/i/n/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_5

    :goto_3
    :try_start_5
    iget-object v2, p0, Lf/a/i/n/b$b;->a:Lf/a/i/n/b;

    iget-object v2, v2, Lf/a/i/n/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_4
    throw v1

    :cond_b
    :goto_5
    const-string v0, "RenderThread: end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
