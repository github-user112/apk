.class public final Lf8/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ljava/lang/Thread;

.field public c:Landroid/media/MediaCodec;

.field public d:Landroid/view/Surface;

.field public e:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

.field public final f:Ljava/util/concurrent/LinkedBlockingQueue;

.field public g:Z

.field public h:[B

.field public final i:Ljava/lang/Object;

.field public j:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lf8/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    const/16 v1, 0x1e

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lf8/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lf8/b;->g:Z

    .line 23
    .line 24
    new-instance v0, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lf8/b;->i:Ljava/lang/Object;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Surface;)V
    .locals 9

    .line 1
    const-string v0, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u66f4\u65b0Surface\u5931\u8d25: "

    .line 2
    .line 3
    iget-object v1, p0, Lf8/b;->i:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iput-object p1, p0, Lf8/b;->d:Landroid/view/Surface;

    .line 7
    .line 8
    iget-object v2, p0, Lf8/b;->e:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 15
    .line 16
    .line 17
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    :try_start_2
    iget-object v5, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v6, 0x17

    .line 31
    .line 32
    if-lt v5, v6, :cond_2

    .line 33
    .line 34
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 35
    .line 36
    const-string v5, "CarLife_Vehicle"

    .line 37
    .line 38
    new-array v6, v4, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v7, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u66f4\u65b0Surface\uff1a\u6267\u884c setOutputSurface"

    .line 41
    .line 42
    aput-object v7, v6, v3

    .line 43
    .line 44
    invoke-virtual {v2, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-static {v2, p1}, La7/a;->j(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 60
    .line 61
    const-string v6, "CarLife_Vehicle"

    .line 62
    .line 63
    new-array v7, v4, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v8, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u66f4\u65b0Surface\uff1a\u6b63\u5728\u91cd\u5efa\u89e3\u7801\u5668..."

    .line 66
    .line 67
    aput-object v8, v7, v3

    .line 68
    .line 69
    invoke-virtual {v5, v6, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lf8/b;->e()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2, p1}, Lf8/b;->b(Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;Landroid/view/Surface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :goto_0
    :try_start_3
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 80
    .line 81
    const-string v5, "CarLife_Vehicle"

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v6, 0x2

    .line 100
    new-array v6, v6, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v0, v6, v3

    .line 103
    .line 104
    aput-object p1, v6, v4

    .line 105
    .line 106
    invoke-virtual {v2, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lf8/b;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    monitor-exit v1

    .line 113
    return-void

    .line 114
    :goto_2
    monitor-exit v1

    .line 115
    throw p1
.end method

.method public final b(Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;Landroid/view/Surface;)V
    .locals 6

    .line 1
    const-string v0, "CarLife_Vehicle"

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v1, v4, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v4, "createVideoFormat(...)"

    .line 20
    .line 21
    invoke-static {p1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lf8/b;->h:[B

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const-string v5, "csd-0"

    .line 29
    .line 30
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p1, v5, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v1, p1, p2, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 52
    .line 53
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 54
    .line 55
    new-array p2, v3, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v1, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u72b6\u6001\uff1a\u89e3\u7801\u5668\u5df2\u542f\u52a8"

    .line 58
    .line 59
    aput-object v1, p2, v2

    .line 60
    .line 61
    invoke-virtual {p1, v0, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const p2, 0x18009

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v3, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 72
    .line 73
    .line 74
    iput-boolean v3, p0, Lf8/b;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v4, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u521b\u5efa\u89e3\u7801\u5668\u5f02\u5e38: "

    .line 84
    .line 85
    invoke-static {v4, v1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v4, 0x2

    .line 90
    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v1, v4, v2

    .line 93
    .line 94
    aput-object p1, v4, v3

    .line 95
    .line 96
    invoke-virtual {p2, v0, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final c(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf8/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    const-string v3, "<this>"

    .line 27
    .line 28
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    array-length v3, v1

    .line 32
    invoke-static {v2, v3}, Lp9/p1;->o(II)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "copyOfRange(...)"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lf8/a;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-direct {v2, v1, p1, v0}, Lf8/a;-><init>([BII)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lf8/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    new-array v2, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v4, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u8b66\u544a\uff1a\u89e3\u7801\u961f\u5217\u5df2\u6ee1\uff0c\u53d1\u751f\u4e22\u5e27\uff0c\u8bf7\u6c42\u91cd\u7f6e\uff01"

    .line 68
    .line 69
    aput-object v4, v2, v3

    .line 70
    .line 71
    const-string v3, "CarLife_Vehicle"

    .line 72
    .line 73
    invoke-virtual {v0, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, Lf8/b;->g:Z

    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf8/b;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lf8/b;->e:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 5
    .line 6
    iget-object v1, p0, Lf8/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/Thread;

    .line 20
    .line 21
    new-instance v2, Landroidx/lifecycle/z;

    .line 22
    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    invoke-direct {v2, v4, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "CarLife-VideoDecode-Thread"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lf8/b;->b:Ljava/lang/Thread;

    .line 40
    .line 41
    :goto_0
    iget-object v1, p0, Lf8/b;->d:Landroid/view/Surface;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lf8/b;->j:Landroid/view/Surface;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 50
    .line 51
    invoke-direct {v1, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/view/Surface;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lf8/b;->j:Landroid/view/Surface;

    .line 60
    .line 61
    :cond_1
    iget-object v1, p0, Lf8/b;->j:Landroid/view/Surface;

    .line 62
    .line 63
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 73
    .line 74
    const-string v4, "CarLife_Vehicle"

    .line 75
    .line 76
    new-array v3, v3, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v5, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u521d\u59cb\u5316\uff1aSurface\u5df2\u5c31\u7eea\uff0c\u6b63\u5728\u521b\u5efa\u89e3\u7801\u5668..."

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    aput-object v5, v3, v6

    .line 82
    .line 83
    invoke-virtual {v2, v4, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, v1}, Lf8/b;->b(Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_2
    monitor-exit v0

    .line 95
    throw p1
.end method

.method public final e()V
    .locals 5

    .line 1
    sget-object v0, Le8/i;->h:Ldc/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Le8/i;

    .line 8
    .line 9
    iget-boolean v0, v0, Le8/i;->f:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x1800a

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_0
    iget-object v0, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_1
    iget-object v0, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :goto_2
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u91ca\u653e\u89e3\u7801\u5668\u5ffd\u7565: "

    .line 50
    .line 51
    invoke-static {v3, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-array v3, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    aput-object v0, v3, v4

    .line 59
    .line 60
    const-string v0, "CarLife_Vehicle"

    .line 61
    .line 62
    invoke-virtual {v2, v0, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_3
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 67
    .line 68
    iput-boolean v1, p0, Lf8/b;->g:Z

    .line 69
    .line 70
    return-void
.end method

.method public final f(Lf8/a;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lf8/a;->a:[B

    .line 2
    .line 3
    iget v1, p1, Lf8/a;->b:I

    .line 4
    .line 5
    iget v5, p1, Lf8/a;->c:I

    .line 6
    .line 7
    add-int p1, v1, v5

    .line 8
    .line 9
    add-int/lit8 v2, p1, -0x4

    .line 10
    .line 11
    move v3, v1

    .line 12
    :goto_0
    const/4 v9, -0x1

    .line 13
    const/4 v10, 0x1

    .line 14
    if-ge v3, v2, :cond_2

    .line 15
    .line 16
    aget-byte v4, v0, v3

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    add-int/lit8 v4, v3, 0x1

    .line 21
    .line 22
    aget-byte v4, v0, v4

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    add-int/lit8 v4, v3, 0x2

    .line 27
    .line 28
    aget-byte v4, v0, v4

    .line 29
    .line 30
    if-ne v4, v10, :cond_0

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    if-nez v4, :cond_1

    .line 36
    .line 37
    add-int/lit8 v4, v3, 0x3

    .line 38
    .line 39
    aget-byte v4, v0, v4

    .line 40
    .line 41
    if-ne v4, v10, :cond_1

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, -0x1

    .line 50
    :goto_1
    if-gez v3, :cond_3

    .line 51
    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_3
    aget-byte v2, v0, v3

    .line 55
    .line 56
    and-int/lit8 v2, v2, 0x1f

    .line 57
    .line 58
    int-to-byte v2, v2

    .line 59
    const/16 v3, 0x8

    .line 60
    .line 61
    const/4 v4, 0x7

    .line 62
    const/4 v11, 0x0

    .line 63
    const-string v12, "CarLife_Vehicle"

    .line 64
    .line 65
    if-eq v2, v4, :cond_4

    .line 66
    .line 67
    if-eq v2, v3, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    array-length v6, v0

    .line 71
    invoke-static {p1, v6}, Lp9/p1;->o(II)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v6, "copyOfRange(...)"

    .line 79
    .line 80
    invoke-static {p1, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lf8/b;->h:[B

    .line 84
    .line 85
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 86
    .line 87
    const-string v6, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u6536\u5230\u914d\u7f6e\u5e27 (NAL Type: "

    .line 88
    .line 89
    const-string v7, ")"

    .line 90
    .line 91
    invoke-static {v6, v7, v2}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    new-array v7, v10, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v6, v7, v11

    .line 98
    .line 99
    invoke-virtual {p1, v12, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    const/4 p1, 0x5

    .line 103
    if-eq v2, p1, :cond_6

    .line 104
    .line 105
    if-eq v2, v4, :cond_6

    .line 106
    .line 107
    if-ne v2, v3, :cond_5

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    const/4 v8, 0x0

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    :goto_3
    const/4 v8, 0x1

    .line 113
    :goto_4
    iget-boolean p1, p0, Lf8/b;->g:Z

    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    if-eqz v8, :cond_e

    .line 118
    .line 119
    iput-boolean v11, p0, Lf8/b;->g:Z

    .line 120
    .line 121
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 122
    .line 123
    new-array v2, v10, [Ljava/lang/Object;

    .line 124
    .line 125
    const-string v3, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u72b6\u6001\uff1a\u5df2\u6536\u5230\u9996\u4e2a\u5173\u952e\u5e27\uff0c\u5f00\u59cb\u5904\u7406\u6e32\u67d3"

    .line 126
    .line 127
    aput-object v3, v2, v11

    .line 128
    .line 129
    invoke-virtual {p1, v12, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    iget-object v2, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 133
    .line 134
    if-nez v2, :cond_8

    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_8
    const-wide/16 v3, 0x2710

    .line 138
    .line 139
    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-ltz v3, :cond_a

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-eqz p1, :cond_9

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :catch_0
    move-exception v0

    .line 159
    move-object p1, v0

    .line 160
    goto :goto_9

    .line 161
    :cond_9
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    const/16 p1, 0x3e8

    .line 166
    .line 167
    int-to-long v6, p1

    .line 168
    div-long v6, v0, v6

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 172
    .line 173
    .line 174
    :cond_a
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    .line 175
    .line 176
    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 177
    .line 178
    .line 179
    :cond_b
    :goto_6
    const-wide/16 v0, 0x0

    .line 180
    .line 181
    invoke-virtual {v2, p1, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-ltz v0, :cond_d

    .line 186
    .line 187
    iget-object v1, p0, Lf8/b;->d:Landroid/view/Surface;

    .line 188
    .line 189
    if-eqz v1, :cond_c

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-ne v1, v10, :cond_c

    .line 196
    .line 197
    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 198
    .line 199
    if-lez v1, :cond_c

    .line 200
    .line 201
    const/4 v1, 0x1

    .line 202
    goto :goto_7

    .line 203
    :cond_c
    const/4 v1, 0x0

    .line 204
    :goto_7
    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_d
    const/4 v1, -0x2

    .line 209
    if-eq v0, v1, :cond_b

    .line 210
    .line 211
    if-ne v0, v9, :cond_b

    .line 212
    .line 213
    :cond_e
    :goto_8
    return-void

    .line 214
    :goto_9
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string v1, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u6267\u884c\u89e3\u7801\u5f02\u5e38: "

    .line 221
    .line 222
    invoke-static {v1, p1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-array v1, v10, [Ljava/lang/Object;

    .line 227
    .line 228
    aput-object p1, v1, v11

    .line 229
    .line 230
    invoke-virtual {v0, v12, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iput-boolean v10, p0, Lf8/b;->g:Z

    .line 234
    .line 235
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf8/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lf8/b;->b:Ljava/lang/Thread;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lf8/b;->b:Ljava/lang/Thread;

    .line 16
    .line 17
    iget-object v2, p0, Lf8/b;->i:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lf8/b;->e()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf8/b;->h:[B

    .line 24
    .line 25
    iput-object v0, p0, Lf8/b;->e:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 26
    .line 27
    iget-object v0, p0, Lf8/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 33
    .line 34
    const-string v3, "CarLife_Vehicle"

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v5, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u91ca\u653e\uff1a\u8d44\u6e90\u5df2\u5b8c\u5168\u91ca\u653e"

    .line 40
    .line 41
    aput-object v5, v4, v1

    .line 42
    .line 43
    invoke-virtual {v0, v3, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit v2

    .line 50
    throw v0
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lf8/b;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 5
    .line 6
    const-string v2, "CarLife_Vehicle"

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    new-array v4, v3, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v5, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u5207\u6362\u81f3\u865a\u62dfSurface"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    aput-object v5, v4, v6

    .line 15
    .line 16
    invoke-virtual {v1, v2, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    const/16 v2, 0x17

    .line 22
    .line 23
    if-lt v1, v2, :cond_2

    .line 24
    .line 25
    :try_start_1
    iget-object v1, p0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lf8/b;->j:Landroid/view/Surface;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    new-instance v2, Landroid/graphics/SurfaceTexture;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Landroid/view/Surface;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lf8/b;->j:Landroid/view/Surface;

    .line 44
    .line 45
    :cond_0
    iget-object v2, p0, Lf8/b;->j:Landroid/view/Surface;

    .line 46
    .line 47
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, La7/a;->j(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lf8/b;->d:Landroid/view/Surface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lf8/b;->e()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lf8/b;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_1
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_2
    monitor-exit v0

    .line 70
    throw v1
.end method
