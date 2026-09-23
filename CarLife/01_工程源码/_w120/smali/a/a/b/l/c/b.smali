.class public final La/a/b/l/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements La/a/a/a/h;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:I

.field public final d:Z

.field public final e:La/a/b/l/c/d/c;

.field public final f:La/a/b/l/c/c$a;

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/concurrent/Semaphore;

.field public j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public k:Landroid/media/AudioTrack;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile n:I

.field public o:I

.field public p:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(La/a/a/a/c;IZLa/a/b/l/c/d/c;La/a/b/l/c/c$a;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p4, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p5, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/l/c/b;->b:La/a/a/a/c;

    iput p2, p0, La/a/b/l/c/b;->c:I

    iput-boolean p3, p0, La/a/b/l/c/b;->d:Z

    iput-object p4, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    iput-object p5, p0, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    new-instance p3, Ljava/util/concurrent/Semaphore;

    const/4 p5, 0x1

    invoke-direct {p3, p5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p3, p0, La/a/b/l/c/b;->i:Ljava/util/concurrent/Semaphore;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, La/a/b/l/c/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, La/a/b/l/c/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, -0x1

    iput p3, p0, La/a/b/l/c/b;->o:I

    invoke-interface {p1, p0}, La/a/a/a/c;->m(La/a/a/a/h;)V

    const/4 p3, 0x2

    new-array v1, p3, [Ljava/lang/Object;

    const-string v2, "AudioPlayTask init "

    aput-object v2, v1, v0

    aput-object p4, v1, p5

    const-string p4, "CarLife_SDK"

    const-string p5, "tag"

    .line 1
    invoke-static {p4, p5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "args"

    invoke-static {v1, p5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p5, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v0, 0x3

    if-nez p5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p5, v0, p4, p3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p4, "CONFIG_SAVE_AUDIO_FILE"

    invoke-interface {p1, p4, p3}, La/a/a/a/c;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/io/File;

    invoke-interface {p1}, La/a/a/a/c;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string p4, "AudioPlayer"

    invoke-direct {p3, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p4, Ljava/io/File;

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    invoke-static {p5}, La/a/a/a/n/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    const-string v1, ".pcm"

    invoke-static {p5, v1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p3, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, La/a/b/l/c/b;->p:Ljava/io/OutputStream;

    :cond_2
    if-eq p2, v0, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const p1, 0x50002

    iput p1, p0, La/a/b/l/c/b;->g:I

    const p1, 0x50003

    goto :goto_1

    :cond_3
    const p1, 0x40001

    iput p1, p0, La/a/b/l/c/b;->g:I

    const p1, 0x40003

    goto :goto_1

    :cond_4
    const p1, 0x30001

    iput p1, p0, La/a/b/l/c/b;->g:I

    const p1, 0x30006

    :goto_1
    iput p1, p0, La/a/b/l/c/b;->h:I

    return-void
.end method


# virtual methods
.method public final D0(La/a/b/l/c/d/b;La/a/b/l/c/d/c;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    new-instance v9, La/a/b/l/c/d/d;

    const/16 v2, 0x2000

    invoke-direct {v9, v2}, La/a/b/l/c/d/d;-><init>(I)V

    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const-string v2, "params"

    .line 1
    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    const-wide/16 v16, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v7, v1, La/a/b/l/c/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v1, La/a/b/l/c/b;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v7, v1, La/a/b/l/c/b;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3
    iput v11, v9, La/a/b/l/c/d/d;->b:I

    const-wide/16 v12, 0xbb8

    .line 4
    invoke-interface {v8, v9, v11, v12, v13}, La/a/b/l/c/d/c;->d(La/a/b/l/c/d/d;IJ)I

    move-result v7

    const/4 v12, 0x1

    if-lez v7, :cond_1

    iget-object v13, v1, La/a/b/l/c/b;->p:Ljava/io/OutputStream;

    if-nez v13, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v14, v9, La/a/b/l/c/d/d;->a:[B

    .line 6
    invoke-virtual {v13, v14, v11, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    :cond_1
    const/4 v13, -0x1

    if-ne v7, v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    move v13, v2

    :goto_2
    const/4 v2, 0x3

    if-nez v7, :cond_4

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget v7, v1, La/a/b/l/c/b;->n:I

    if-ne v7, v2, :cond_3

    .line 8
    invoke-virtual {v1, v12}, La/a/b/l/c/b;->H(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    monitor-exit p0

    :goto_3
    move-wide v14, v3

    move-wide/from16 v20, v5

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_4
    if-lez v7, :cond_11

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    iget v14, v1, La/a/b/l/c/b;->n:I

    if-ne v14, v12, :cond_5

    .line 10
    invoke-virtual {v1, v2}, La/a/b/l/c/b;->H(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    :try_start_5
    monitor-exit p0

    iget-boolean v2, v1, La/a/b/l/c/b;->d:Z

    if-nez v2, :cond_7

    const-wide/16 v14, 0x14

    const-wide/16 v18, -0x1

    cmp-long v2, v3, v18

    if-nez v2, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    invoke-virtual {v0, v5, v6}, La/a/b/l/c/d/b;->a(J)J

    move-result-wide v20

    add-long v20, v3, v20

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v20, v20, v22

    cmp-long v2, v20, v14

    if-lez v2, :cond_7

    sub-long v20, v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 13
    :cond_7
    :goto_4
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, La/a/b/l/c/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p1}, La/a/b/l/c/b;->y(La/a/b/l/c/d/b;)V

    .line 14
    :cond_8
    iget-object v2, v9, La/a/b/l/c/d/d;->a:[B

    .line 15
    invoke-virtual {v1, v2, v11, v7}, La/a/b/l/c/b;->s([BII)V

    goto :goto_5

    :cond_9
    iget-object v2, v1, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v2, :cond_a

    invoke-virtual {v1, v0, v12}, La/a/b/l/c/b;->b(La/a/b/l/c/d/b;I)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    iput-object v2, v1, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    :cond_a
    iget-object v2, v1, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v2, :cond_b

    goto :goto_5

    .line 16
    :cond_b
    iget-object v14, v9, La/a/b/l/c/d/d;->a:[B

    .line 17
    invoke-virtual {v2, v14, v11, v7}, Landroid/media/AudioTrack;->write([BII)I

    :goto_5
    iget-boolean v2, v1, La/a/b/l/c/b;->d:Z

    if-nez v2, :cond_e

    const-wide/16 v14, -0x1

    cmp-long v2, v3, v14

    if-nez v2, :cond_c

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_6

    .line 19
    :cond_c
    invoke-virtual {v0, v5, v6}, La/a/b/l/c/d/b;->a(J)J

    move-result-wide v14

    add-long/2addr v14, v3

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    const-wide/16 v14, 0x3e8

    cmp-long v2, v20, v14

    if-ltz v2, :cond_d

    add-long v3, v3, v20

    :cond_d
    :goto_6
    int-to-long v14, v7

    add-long/2addr v5, v14

    :cond_e
    const-string v2, "CarLife_SDK"

    new-array v14, v12, [Ljava/lang/Object;

    const-string v15, "AudioPlayTask streamPlay readSize "

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v15, v7}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v11

    const-string v7, "tag"

    .line 22
    invoke-static {v2, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v14, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v7, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v7, :cond_f

    goto/16 :goto_3

    .line 24
    :cond_f
    invoke-static {v14, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x2

    invoke-virtual {v7, v14, v2, v12}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 25
    :goto_7
    invoke-interface/range {p2 .. p2}, La/a/b/l/c/d/c;->i()J

    move-result-wide v22

    sub-long v2, v22, v16

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_10

    iget-object v2, v1, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    .line 26
    iget-wide v6, v0, La/a/b/l/c/d/b;->d:J

    move-object/from16 v3, p2

    move-wide/from16 v4, v22

    .line 27
    invoke-interface/range {v2 .. v7}, La/a/b/l/c/c$a;->s(La/a/b/l/c/d/c;JJ)V

    move-wide/from16 v16, v22

    :cond_10
    move v2, v13

    move-wide v3, v14

    move-wide/from16 v5, v20

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    iget-boolean v2, v1, La/a/b/l/c/b;->d:Z

    if-nez v2, :cond_13

    const-wide/16 v9, -0x1

    cmp-long v2, v3, v9

    if-nez v2, :cond_12

    goto :goto_8

    .line 28
    :cond_12
    invoke-virtual {v0, v5, v6}, La/a/b/l/c/d/b;->a(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_13

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_13
    :goto_8
    move v2, v13

    goto :goto_b

    :goto_9
    move v2, v13

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    .line 30
    :goto_a
    :try_start_6
    invoke-interface/range {p2 .. p2}, La/a/b/l/c/d/c;->c()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_15

    :cond_14
    :goto_b
    iget-object v0, v1, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    invoke-interface {v0, v8, v2}, La/a/b/l/c/c$a;->l(La/a/b/l/c/d/c;Z)V

    invoke-virtual/range {p0 .. p0}, La/a/b/l/c/b;->j()V

    return-void

    :cond_15
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_c
    move v13, v2

    :goto_d
    iget-object v2, v1, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    invoke-interface {v2, v8, v13}, La/a/b/l/c/c$a;->l(La/a/b/l/c/d/c;Z)V

    invoke-virtual/range {p0 .. p0}, La/a/b/l/c/b;->j()V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, La/a/b/l/c/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final H(I)V
    .locals 2

    iput p1, p0, La/a/b/l/c/b;->n:I

    iget-object v0, p0, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    iget-object v1, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-interface {v0, v1, p1}, La/a/b/l/c/c$a;->j(La/a/b/l/c/d/c;I)V

    return-void
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic Q(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->e(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public final declared-synchronized R(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a0(La/a/b/l/c/d/b;La/a/b/l/c/d/c;)V
    .locals 4

    new-instance v0, La/a/b/l/c/d/d;

    invoke-virtual {p1}, La/a/b/l/c/d/b;->e()I

    move-result v1

    invoke-direct {v0, v1}, La/a/b/l/c/d/d;-><init>(I)V

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-interface {p2, v0, v1, v2}, La/a/b/l/c/d/c;->h(La/a/b/l/c/d/d;J)I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, La/a/b/l/c/b;->b(La/a/b/l/c/d/b;I)Landroid/media/AudioTrack;

    move-result-object v2

    iput-object v2, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    .line 1
    iget-object v3, v0, La/a/b/l/c/d/d;->a:[B

    .line 2
    iget v0, v0, La/a/b/l/c/d/d;->b:I

    .line 3
    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v0, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 4
    :goto_0
    iget-wide v0, p1, La/a/b/l/c/d/b;->d:J

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, La/a/b/l/c/c$a;->l(La/a/b/l/c/d/c;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, La/a/b/l/c/b;->j()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, La/a/b/l/c/b;->j()V

    throw p1
.end method

.method public final b(La/a/b/l/c/d/b;I)Landroid/media/AudioTrack;
    .locals 8

    if-nez p2, :cond_0

    invoke-virtual {p1}, La/a/b/l/c/d/b;->e()I

    move-result v0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p1, La/a/b/l/c/d/b;->a:I

    .line 2
    invoke-virtual {p1}, La/a/b/l/c/d/b;->c()I

    move-result v1

    invoke-virtual {p1}, La/a/b/l/c/d/b;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    :goto_0
    move v6, v0

    sget v0, La/a/a/a/l/b;->w:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/AudioTrack;

    .line 3
    iget v3, p0, La/a/b/l/c/b;->c:I

    if-eq v3, v2, :cond_2

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    sget v1, La/a/a/a/l/b;->b:I

    goto :goto_2

    :cond_2
    :goto_1
    sget v1, La/a/a/a/l/b;->c:I

    :goto_2
    move v2, v1

    .line 4
    iget v3, p1, La/a/b/l/c/d/b;->a:I

    .line 5
    invoke-virtual {p1}, La/a/b/l/c/d/b;->c()I

    move-result v4

    invoke-virtual {p1}, La/a/b/l/c/d/b;->b()I

    move-result v5

    move-object v1, v0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_5

    :cond_3
    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    iget v4, p0, La/a/b/l/c/b;->c:I

    if-eq v4, v2, :cond_5

    if-eq v4, v1, :cond_4

    goto :goto_3

    :cond_4
    sget v1, La/a/a/a/l/b;->b:I

    goto :goto_4

    :cond_5
    :goto_3
    sget v1, La/a/a/a/l/b;->c:I

    .line 7
    :goto_4
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {p1}, La/a/b/l/c/d/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 8
    iget v2, p1, La/a/b/l/c/d/b;->a:I

    .line 9
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/l/c/d/b;->c()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    const-string p1, "{\n            AudioTrack.Builder()\n                .setAudioAttributes(\n                    AudioAttributes.Builder()\n                        .setUsage(getUsage())\n                        .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)\n                        .build()\n                )\n                .setAudioFormat(\n                    AudioFormat.Builder()\n                        .setEncoding(params.audioFormat)\n                        .setSampleRate(params.sampleRate)\n                        .setChannelMask(params.channelConfig)\n                        .build()\n                )\n                .setTransferMode(mode)\n                .setBufferSizeInBytes(bufferSize)\n                .build()\n        }"

    invoke-static {v0, p1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    return-object v0
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic c0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->d(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, La/a/b/l/c/b;->n:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, La/a/b/l/c/b;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, La/a/b/l/c/b;->H(I)V

    iget v0, p0, La/a/b/l/c/b;->o:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_2

    iget-object v0, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :goto_0
    iget-object v0, p0, La/a/b/l/c/b;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, La/a/b/l/c/b;->R(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, La/a/b/l/c/b;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/b/l/c/b;->H(I)V

    iget v0, p0, La/a/b/l/c/b;->o:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    iget-object v0, p0, La/a/b/l/c/b;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :goto_0
    iget-object v0, p0, La/a/b/l/c/b;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, La/a/b/l/c/b;->R(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic o(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->a(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 5

    iget-object v0, p0, La/a/b/l/c/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    const/4 v2, -0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, La/a/b/l/c/b;->R(F)V

    iget v2, p0, La/a/b/l/c/b;->o:I

    const/16 v3, 0x63

    const/4 v4, -0x1

    if-ne v2, v3, :cond_3

    if-ne p1, v1, :cond_2

    iget v1, p0, La/a/b/l/c/b;->n:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, La/a/b/l/c/b;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_2
    if-ne p1, v4, :cond_8

    iget-object v1, p0, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    iget-object v2, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    const-string v3, "request focus failed"

    invoke-interface {v1, v2, v0, v3}, La/a/b/l/c/c$a;->e(La/a/b/l/c/d/c;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x2

    if-ne v2, v1, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, La/a/b/l/c/b;->p0()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, La/a/b/l/c/b;->e()V

    goto :goto_2

    :cond_6
    if-ne v2, v0, :cond_8

    if-eq p1, v4, :cond_4

    if-eq p1, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, La/a/b/l/c/b;->l()V

    :cond_8
    :goto_2
    iput p1, p0, La/a/b/l/c/b;->o:I

    return-void
.end method

.method public final p0()V
    .locals 5

    iget-object v0, p0, La/a/b/l/c/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, La/a/b/l/c/b;->H(I)V

    iget-object v0, p0, La/a/b/l/c/b;->j:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_0
    iget-object v0, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, La/a/b/l/c/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, La/a/b/l/c/b;->p:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_1
    iget-object v0, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-interface {v0}, La/a/b/l/c/d/c;->g()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/b/l/c/b;->b:La/a/a/a/c;

    invoke-interface {v0, p0}, La/a/a/a/c;->D(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :cond_2
    iget-object v0, p0, La/a/b/l/c/b;->b:La/a/a/a/c;

    invoke-interface {v0, p0}, La/a/a/a/c;->p(La/a/a/a/h;)V

    const-string v0, "CarLife_SDK"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AudioPlayTask stop "

    aput-object v4, v2, v3

    iget-object v3, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    aput-object v3, v2, v1

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    .line 3
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "CarLife_SDK"

    iget-object v1, p0, La/a/b/l/c/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-interface {v3}, La/a/b/l/c/d/c;->f()La/a/b/l/c/d/b;

    move-result-object v3

    .line 1
    iget-wide v4, v3, La/a/b/l/c/d/b;->d:J

    const-wide/16 v6, 0x1

    cmp-long v8, v6, v4

    if-gtz v8, :cond_1

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 2
    iget-object v4, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-virtual {p0, v3, v4}, La/a/b/l/c/b;->a0(La/a/b/l/c/d/b;La/a/b/l/c/d/c;)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-virtual {p0, v3, v4}, La/a/b/l/c/b;->D0(La/a/b/l/c/d/b;La/a/b/l/c/d/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    iget v4, p0, La/a/b/l/c/b;->n:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const-string v1, "AudioPlayTask paused by player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioPlayTask play exception: "

    invoke-static {v6, v5}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "tag"

    .line 3
    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v4, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x6

    .line 5
    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v0, v4}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_1
    iget-object v0, p0, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    iget-object v2, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, La/a/b/l/c/c$a;->e(La/a/b/l/c/d/c;ILjava/lang/String;)V

    goto :goto_2

    :catch_1
    const-string v1, "AudioPlayTask interrupted by player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/b/l/c/b;->f:La/a/b/l/c/c$a;

    iget-object v1, p0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    invoke-interface {v0, v1, v2}, La/a/b/l/c/c$a;->l(La/a/b/l/c/d/c;Z)V

    :goto_2
    invoke-virtual {p0}, La/a/b/l/c/b;->p0()V

    return-void
.end method

.method public final s([BII)V
    .locals 5

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    iget v1, p0, La/a/b/l/c/b;->c:I

    iget v2, p0, La/a/b/l/c/b;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    const-string v1, "data"

    .line 1
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, La/a/a/a/a/a/b;->u(I)V

    iget-object v1, v0, La/a/a/a/a/a/b;->i:[B

    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v2

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p1, p0, La/a/b/l/c/b;->b:La/a/a/a/c;

    invoke-interface {p1, v0}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    return-void
.end method

.method public final y(La/a/b/l/c/d/b;)V
    .locals 5

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    iget v1, p0, La/a/b/l/c/b;->c:I

    iget v2, p0, La/a/b/l/c/b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object v1

    .line 1
    iget v2, p1, La/a/b/l/c/d/b;->a:I

    .line 2
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;->setSampleRate(I)Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object v1

    .line 3
    iget v2, p1, La/a/b/l/c/d/b;->b:I

    .line 4
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;->setChannelConfig(I)Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object v1

    .line 5
    iget p1, p1, La/a/b/l/c/d/b;->c:I

    .line 6
    invoke-virtual {v1, p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;->setSampleFormat(I)Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object p1

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    invoke-virtual {v0, p1}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    iget-object p1, p0, La/a/b/l/c/b;->b:La/a/a/a/c;

    invoke-interface {p1, v0}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    return-void
.end method
