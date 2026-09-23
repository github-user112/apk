.class public final Ll7/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ll7/d;


# instance fields
.field public final a:Lcom/baidu/carlife/sdk/CarLifeContext;

.field public final b:Ll7/c;

.field public final c:Ll7/h;

.field public d:Z

.field public e:Ll7/a;

.field public final f:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Ll7/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll7/g;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 5
    .line 6
    iput-object p2, p0, Ll7/g;->b:Ll7/c;

    .line 7
    .line 8
    new-instance p1, Ll7/h;

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    invoke-direct {p1, p3, p2}, Ll7/h;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ll7/g;->c:Ll7/h;

    .line 15
    .line 16
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 17
    .line 18
    const/16 p2, 0x200

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ll7/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 29
    .line 30
    new-instance p1, Ll7/e;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {p1, p0, p2}, Ll7/e;-><init>(Ll7/g;Lw8/c;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ll8/c;->b(Lf9/n;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static final a(Ll7/g;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ll7/g;->b:Ll7/c;

    .line 2
    .line 3
    const-string v1, "CarLife_SDK"

    .line 4
    .line 5
    iget-object v2, p0, Ll7/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    :try_start_0
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const v6, 0x30007

    .line 20
    .line 21
    .line 22
    if-ne v5, v6, :cond_2

    .line 23
    .line 24
    iget-object v5, p0, Ll7/g;->e:Ll7/a;

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 29
    .line 30
    new-array v6, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v7, "\u3010\u97f3\u9891\u6570\u636e\u3011\u521d\u59cb\u5316 AAC \u89e3\u7801\u5668"

    .line 33
    .line 34
    aput-object v7, v6, v3

    .line 35
    .line 36
    invoke-virtual {v5, v1, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Ll7/a;

    .line 40
    .line 41
    new-instance v6, La8/q;

    .line 42
    .line 43
    const/16 v7, 0x15

    .line 44
    .line 45
    invoke-direct {v6, v7, p0}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v0, v6}, Ll7/a;-><init>(Ll7/c;La8/q;)V

    .line 49
    .line 50
    .line 51
    iput-object v5, p0, Ll7/g;->e:Ll7/a;

    .line 52
    .line 53
    iget-object v0, v5, Ll7/a;->b:Landroid/media/MediaCodec;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    iget-object p0, p0, Ll7/g;->e:Ll7/a;

    .line 62
    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ll7/a;->a(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :cond_2
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    iget-object p0, p0, Ll7/g;->c:Ll7/h;

    .line 82
    .line 83
    invoke-virtual {p0, v5, v6, v7}, Ll7/h;->d([BII)V

    .line 84
    .line 85
    .line 86
    iget p0, v0, Ll7/c;->c:I

    .line 87
    .line 88
    div-int/lit8 p0, p0, 0x8

    .line 89
    .line 90
    iget v0, v0, Ll7/c;->b:I

    .line 91
    .line 92
    mul-int p0, p0, v0

    .line 93
    .line 94
    div-int/2addr v7, p0

    .line 95
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :goto_1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 100
    .line 101
    const/4 v5, 0x2

    .line 102
    new-array v5, v5, [Ljava/lang/Object;

    .line 103
    .line 104
    const-string v6, "\u3010\u97f3\u9891\u6570\u636e\u3011\u89e3\u7801\u5199\u5165\u5931\u8d25"

    .line 105
    .line 106
    aput-object v6, v5, v3

    .line 107
    .line 108
    aput-object p0, v5, v4

    .line 109
    .line 110
    invoke-virtual {v0, v1, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 114
    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ll7/g;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 6
    .line 7
    const-string v1, "CarLife_SDK"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v4, "\u3010\u97f3\u9891\u6570\u636e\u3011\u6b63\u5728\u5173\u95ed\u97f3\u9891\u6d41..."

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-boolean v2, p0, Ll7/g;->d:Z

    .line 21
    .line 22
    iget-object v0, p0, Ll7/g;->c:Ll7/h;

    .line 23
    .line 24
    iget-object v1, v0, Ll7/h;->c:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iput-boolean v2, v0, Ll7/h;->g:Z

    .line 28
    .line 29
    iget-object v0, v0, Ll7/h;->c:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    iget-object v0, p0, Ll7/g;->e:Ll7/a;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v1, v0, Ll7/a;->b:Landroid/media/MediaCodec;

    .line 40
    .line 41
    iput-boolean v2, v0, Ll7/a;->d:Z

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    :catch_1
    :cond_0
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Ll7/g;->e:Ll7/a;

    .line 51
    .line 52
    iget-object v0, p0, Ll7/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 59
    .line 60
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Ll7/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 75
    .line 76
    const-string v1, "CarLife_SDK"

    .line 77
    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string v3, "\u3010\u97f3\u9891\u6570\u636e\u3011\u5df2\u5173\u95ed\u5e76\u6e05\u7406\u8d44\u6e90"

    .line 81
    .line 82
    aput-object v3, v2, v5

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    monitor-exit v1

    .line 90
    throw v0

    .line 91
    :cond_2
    return-void
.end method

.method public final h(Lj6/a;Lb3/f0;)I
    .locals 8

    .line 1
    iget-object v0, p0, Ll7/g;->c:Ll7/h;

    .line 2
    .line 3
    iget-boolean p2, p0, Ll7/g;->d:Z

    .line 4
    .line 5
    const/4 v6, -0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v6

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    :try_start_0
    iget v1, v0, Ll7/h;->d:I

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    const-wide/16 v3, 0xbb8

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v7, v3, v4}, Ll7/h;->a(IJ)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    move-object p1, v0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 30
    iput v1, p1, Lj6/a;->b:I

    .line 31
    .line 32
    iget-object v5, p1, Lj6/a;->a:[B

    .line 33
    .line 34
    array-length v2, v5

    .line 35
    invoke-virtual/range {v0 .. v5}, Ll7/h;->c(IIJ[B)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_3

    .line 40
    .line 41
    iget v1, p1, Lj6/a;->b:I

    .line 42
    .line 43
    add-int/2addr v1, v0

    .line 44
    iput v1, p1, Lj6/a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    :cond_3
    return v0

    .line 47
    :goto_2
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    const-string v2, "\u3010\u97f3\u9891\u6570\u636e\u3011readFrame \u5f02\u5e38"

    .line 53
    .line 54
    aput-object v2, v1, p2

    .line 55
    .line 56
    aput-object p1, v1, v7

    .line 57
    .line 58
    const-string p1, "CarLife_SDK"

    .line 59
    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return v6
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll7/g;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()Ll7/c;
    .locals 4

    .line 1
    iget-object v0, p0, Ll7/g;->c:Ll7/h;

    .line 2
    .line 3
    iget v1, v0, Ll7/h;->a:I

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    const-wide/16 v2, 0x7d0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Ll7/h;->a(IJ)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ll7/g;->b:Ll7/c;

    .line 13
    .line 14
    return-object v0
.end method
