.class public final La/a/a/a/m/j/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:Landroid/view/Surface;

.field public final d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

.field public final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "La/a/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/media/MediaCodec;

.field public volatile g:Z

.field public volatile h:Z

.field public i:Ljava/io/OutputStream;

.field public final j:I


# direct methods
.method public constructor <init>(La/a/a/a/c;Landroid/view/Surface;Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outSurface"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeInfo"

    invoke-static {p3, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, La/a/a/a/m/j/a;->b:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/j/a;->c:Landroid/view/Surface;

    iput-object p3, p0, La/a/a/a/m/j/a;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v0, "FrameDecoder"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string v1, "video/avc"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result v6

    invoke-static {v1, v5, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v5, "createVideoFormat(\n                MediaFormat.MIMETYPE_VIDEO_AVC,\n                encodeInfo.width,\n                encodeInfo.height\n            )"

    invoke-static {v1, v5}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, p2, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2
    iput-object v4, p0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    const/16 p2, 0x3e8

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getFrameRate()I

    move-result p3

    div-int/2addr p2, p3

    iput p2, p0, La/a/a/a/m/j/a;->j:I

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "CONFIG_SAVE_VIDEO_FILE"

    invoke-interface {p1, p3, p2}, La/a/a/a/c;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-interface {p1}, La/a/a/a/c;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, La/a/a/a/n/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".h264"

    invoke-static {v0, v1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, La/a/a/a/m/j/a;->i:Ljava/io/OutputStream;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "CarLife_SDK"

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "FrameDecoder createEncoder exception: "

    .line 3
    invoke-static {v1, p1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "tag"

    .line 4
    invoke-static {p2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    .line 6
    invoke-static {v0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, v2, p2, p3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    :goto_2
    throw p1
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    :goto_0
    iget-object v0, p0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/m/j/a;->g:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, La/a/a/a/m/j/a;->h:Z

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, La/a/a/a/m/j/a;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "FrameDecoder call release, isFirstDataFrame: "

    invoke-static {v3, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FrameDecoder started "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v5, "CarLife_SDK"

    const-string v6, "tag"

    .line 1
    invoke-static {v5, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v2, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v8, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v9, 0x3

    if-nez v8, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v10, v2

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v9, v5, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v8, v0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    :goto_1
    iget-boolean v8, v0, La/a/a/a/m/j/a;->g:Z

    if-nez v8, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v8, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v8

    const/16 v12, 0x3c

    if-le v8, v12, :cond_d

    .line 5
    :goto_2
    iget-object v8, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/a/a/a/a/a/b;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_3

    .line 6
    :cond_1
    iget-object v8, v8, La/a/a/a/a/a/b;->i:[B

    :goto_3
    if-eqz v8, :cond_5

    .line 7
    array-length v13, v8

    const/4 v14, 0x5

    if-ge v13, v14, :cond_2

    goto :goto_5

    :cond_2
    aget-byte v13, v8, v4

    const/16 v15, 0x8

    const/4 v12, 0x7

    if-nez v13, :cond_3

    aget-byte v13, v8, v3

    if-nez v13, :cond_3

    aget-byte v13, v8, v1

    if-nez v13, :cond_3

    aget-byte v13, v8, v9

    if-ne v13, v3, :cond_3

    const/4 v13, 0x4

    aget-byte v13, v8, v13

    and-int/lit8 v13, v13, 0x1f

    int-to-byte v13, v13

    if-eq v13, v12, :cond_4

    if-eq v13, v14, :cond_4

    if-ne v13, v15, :cond_3

    goto :goto_4

    :cond_3
    aget-byte v13, v8, v4

    if-nez v13, :cond_5

    aget-byte v13, v8, v3

    if-nez v13, :cond_5

    aget-byte v13, v8, v1

    if-ne v13, v3, :cond_5

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    if-eq v8, v12, :cond_4

    if-eq v8, v14, :cond_4

    if-ne v8, v15, :cond_5

    :cond_4
    :goto_4
    const/4 v8, 0x1

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_9

    new-array v8, v3, [Ljava/lang/Object;

    .line 8
    iget-object v12, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La/a/a/a/a/a/b;

    if-nez v12, :cond_6

    const/4 v12, 0x0

    goto :goto_7

    :cond_6
    invoke-virtual {v12}, La/a/a/a/a/a/b;->o()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_7
    const-string v13, "FrameDecoder message size "

    invoke-static {v13, v12}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v4

    .line 9
    invoke-static {v5, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v12, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v12, :cond_7

    goto :goto_8

    .line 11
    :cond_7
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v12, v1, v5, v8}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_8
    iget-object v8, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/a/a/a/a/a/b;

    if-nez v8, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v8}, La/a/a/a/a/a/b;->s()V

    goto/16 :goto_2

    :cond_9
    new-array v8, v3, [Ljava/lang/Object;

    iget-object v12, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La/a/a/a/a/a/b;

    if-nez v12, :cond_a

    const/4 v12, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v12}, La/a/a/a/a/a/b;->o()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_9
    const-string v13, "FrameDecoder message key size "

    invoke-static {v13, v12}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v4

    .line 13
    invoke-static {v5, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v12, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v12, :cond_b

    goto :goto_a

    .line 15
    :cond_b
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v12, v1, v5, v8}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    new-array v8, v3, [Ljava/lang/Object;

    .line 16
    iget-object v12, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "FrameDecoder messageQueue after filter size "

    invoke-static {v13, v12}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v4

    .line 17
    invoke-static {v5, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v12, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v12, :cond_c

    goto :goto_b

    .line 19
    :cond_c
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v12, v1, v5, v8}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_d
    :goto_b
    iget-object v8, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v12, 0xc8

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13, v14}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/a/a/a/a/a/b;

    if-nez v8, :cond_e

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v8}, La/a/a/a/a/a/b;->l()I

    move-result v12

    const/4 v13, 0x0

    :goto_c
    iget-boolean v14, v0, La/a/a/a/m/j/a;->g:Z

    if-nez v14, :cond_12

    if-lez v12, :cond_12

    iget-object v14, v0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    move-object/from16 v16, v5

    const-wide/16 v4, 0x2710

    :goto_d
    invoke-virtual {v14, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    iget-boolean v15, v0, La/a/a/a/m/j/a;->g:Z

    if-nez v15, :cond_f

    if-gez v14, :cond_f

    invoke-virtual {v0, v2}, La/a/a/a/m/j/a;->a(Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v14, v0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    goto :goto_d

    :cond_f
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_10

    iget-object v4, v0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    invoke-virtual {v4, v14}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_e

    :cond_10
    iget-object v4, v0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v4, v4, v14

    :goto_e
    invoke-static {v4}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v5, v12, :cond_11

    move v5, v12

    .line 21
    :cond_11
    iget-object v15, v8, La/a/a/a/a/a/b;->i:[B

    .line 22
    invoke-virtual {v8}, La/a/a/a/a/a/b;->k()I

    move-result v17

    add-int v9, v17, v13

    invoke-virtual {v4, v15, v9, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, v0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    const/16 v9, 0x3e8

    move-object/from16 v24, v2

    int-to-long v1, v9

    div-long v21, v17, v1

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move/from16 v18, v14

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v23}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    sub-int/2addr v12, v5

    add-int/2addr v13, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v24

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x3

    goto :goto_c

    :cond_12
    move-object/from16 v24, v2

    move-object/from16 v16, v5

    invoke-virtual {v8}, La/a/a/a/a/a/b;->s()V

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, La/a/a/a/m/j/a;->a(Landroid/media/MediaCodec$BufferInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    iget v2, v0, La/a/a/a/m/j/a;->j:I

    int-to-long v8, v2

    cmp-long v10, v4, v8

    if-gez v10, :cond_14

    int-to-long v8, v2

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    new-array v2, v3, [Ljava/lang/Object;

    iget v8, v0, La/a/a/a/m/j/a;->j:I

    int-to-long v8, v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "FrameDecoder delay: "

    invoke-static {v5, v4}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    move-object/from16 v4, v16

    .line 23
    invoke-static {v4, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v5, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v5, :cond_13

    goto :goto_f

    .line 25
    :cond_13
    array-length v8, v2

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v4, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    move-object v2, v1

    move-object v5, v4

    goto :goto_10

    :cond_14
    move-object v2, v1

    move-object/from16 v5, v16

    :goto_10
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x3

    goto/16 :goto_1

    :cond_15
    move-object v4, v5

    .line 26
    iget-object v1, v0, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iget-object v1, v0, La/a/a/a/m/j/a;->i:Ljava/io/OutputStream;

    if-nez v1, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :goto_11
    iget-object v1, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_18

    iget-object v1, v0, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/a/b;

    if-nez v1, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {v1}, La/a/a/a/a/a/b;->s()V

    goto :goto_11

    :cond_18
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrameDecoder released "

    const/4 v5, 0x0

    aput-object v2, v1, v5

    aput-object v0, v1, v3

    .line 27
    invoke-static {v4, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_19

    goto :goto_12

    .line 29
    :cond_19
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    return-void
.end method
