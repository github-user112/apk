.class public final Li7/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr8/o;

.field public static b:Landroid/media/AudioTrack;

.field public static c:Lac/j1;

.field public static d:Z

.field public static final e:Lfc/c;

.field public static final f:Ljc/c;

.field public static g:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb3/f0;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Li7/p;->a:Lr8/o;

    .line 13
    .line 14
    sget-object v0, Lac/g0;->a:Lhc/e;

    .line 15
    .line 16
    sget-object v0, Lhc/d;->c:Lhc/d;

    .line 17
    .line 18
    invoke-static {}, Lac/z;->b()Lac/l1;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Li7/p;->e:Lfc/c;

    .line 34
    .line 35
    new-instance v0, Ljc/c;

    .line 36
    .line 37
    invoke-direct {v0}, Ljc/c;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Li7/p;->f:Ljc/c;

    .line 41
    .line 42
    return-void
.end method

.method public static final a(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v7, p2

    .line 3
    .line 4
    const-string v8, "CarLife_SDK"

    .line 5
    .line 6
    const/4 v9, 0x0

    .line 7
    const/4 v10, 0x0

    .line 8
    :cond_0
    sget-boolean v1, Li7/p;->d:Z

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    if-nez v10, :cond_4

    .line 13
    .line 14
    sget-object v1, Li7/p;->c:Lac/j1;

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {v1}, Lac/c1;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v11, 0x1

    .line 23
    if-ne v1, v11, :cond_4

    .line 24
    .line 25
    const-wide/16 v12, 0x2710

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p1, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ltz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-gez v3, :cond_1

    .line 45
    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 55
    .line 56
    new-array v1, v11, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v2, "\u3010\u97f3\u9891\u6d4b\u8bd5\u3011\u8f93\u5165\u6d41\u7ed3\u675f"

    .line 59
    .line 60
    aput-object v2, v1, v9

    .line 61
    .line 62
    invoke-virtual {v0, v8, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v0, p1

    .line 66
    const/4 v10, 0x1

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v0, p1

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    invoke-virtual {p1, v7, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :goto_1
    if-ltz v1, :cond_0

    .line 88
    .line 89
    iget v2, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 90
    .line 91
    if-lez v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget v3, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 101
    .line 102
    new-array v4, v3, [B

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    sget-object v2, Li7/p;->b:Landroid/media/AudioTrack;

    .line 108
    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    invoke-virtual {v2, v4, v9, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p1, v1, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 115
    .line 116
    .line 117
    const-wide/16 v1, 0x0

    .line 118
    .line 119
    invoke-virtual {p1, v7, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 120
    .line 121
    .line 122
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_1

    .line 124
    :goto_2
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v2, "\u3010\u97f3\u9891\u6d4b\u8bd5\u3011\u89e3\u7801\u5668\u5f02\u5e38: "

    .line 131
    .line 132
    invoke-static {v2, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-array v2, v11, [Ljava/lang/Object;

    .line 137
    .line 138
    aput-object v0, v2, v9

    .line 139
    .line 140
    invoke-virtual {v1, v8, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    return-void
.end method

.method public static final b(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3

    .line 1
    const-string v0, "mime"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "createDecoderByType(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static final c()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Li7/p;->a:Lr8/o;

    .line 4
    .line 5
    invoke-virtual {v1}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "audio_test.aac"

    .line 16
    .line 17
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Li2/c;->l(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    :catchall_2
    move-exception v3

    .line 63
    :try_start_4
    invoke-static {v2, v0}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    :goto_0
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 68
    :catchall_3
    move-exception v2

    .line 69
    invoke-static {v1, v0}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v2

    .line 73
    :cond_0
    return-object v0
.end method

.method public static final d()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Li7/p;->b:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    :try_start_1
    sget-object v0, Li7/p;->b:Landroid/media/AudioTrack;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    .line 14
    .line 15
    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 16
    sput-object v0, Li7/p;->b:Landroid/media/AudioTrack;

    .line 17
    .line 18
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v2, "\u3010\u97f3\u9891\u6d4b\u8bd5\u3011\u8d44\u6e90\u91ca\u653e\u5b8c\u6210"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    const-string v2, "CarLife_SDK"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final e(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "getTrackFormat(...)"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "mime"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    :cond_0
    const-string v4, "audio/"

    .line 28
    .line 29
    invoke-static {v3, v4}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static final f(Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p0, Li7/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Li7/o;

    .line 7
    .line 8
    iget v1, v0, Li7/o;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Li7/o;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Li7/o;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Li7/o;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Li7/o;->e:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_2
    invoke-static {p0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sput-boolean v2, Li7/p;->d:Z

    .line 51
    .line 52
    sget-object p0, Li7/p;->c:Lac/j1;

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    iput v3, v0, Li7/o;->e:I

    .line 57
    .line 58
    invoke-static {p0, v0}, Lac/z;->e(Lac/v0;Ly8/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 63
    .line 64
    if-ne p0, v0, :cond_3

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 68
    sput-object p0, Li7/p;->c:Lac/j1;

    .line 69
    .line 70
    :try_start_0
    sget-object v0, Li7/p;->b:Landroid/media/AudioTrack;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_4
    :try_start_1
    sget-object v0, Li7/p;->b:Landroid/media/AudioTrack;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    :catch_1
    :cond_5
    sput-object p0, Li7/p;->b:Landroid/media/AudioTrack;

    .line 85
    .line 86
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 87
    .line 88
    new-array v0, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    const-string v1, "\u3010\u97f3\u9891\u6d4b\u8bd5\u3011\u64ad\u653e\u5df2\u505c\u6b62"

    .line 91
    .line 92
    aput-object v1, v0, v2

    .line 93
    .line 94
    const-string v1, "CarLife_SDK"

    .line 95
    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 100
    .line 101
    return-object p0
.end method
