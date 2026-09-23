.class public final Li7/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public c:Landroid/media/AudioTrack;

.field public d:Ll7/g;

.field public e:Li7/j;


# direct methods
.method public constructor <init>(ILi7/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Li7/f;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Li7/f;->b:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object p1, Li7/j;->d:Li7/j;

    .line 9
    .line 10
    iput-object p1, p0, Li7/f;->e:Li7/j;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(Li7/f;Ll7/d;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Ll7/d;->j()Ll7/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lj6/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ll7/c;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    iput-object v0, v1, Lj6/a;->a:[B

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    const/4 v2, -0x1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ll7/d;->isClosed()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_8

    .line 25
    .line 26
    iget-object v3, p0, Li7/f;->e:Li7/j;

    .line 27
    .line 28
    sget-object v4, Li7/j;->h:Li7/j;

    .line 29
    .line 30
    if-eq v3, v4, :cond_8

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    iput v3, v1, Lj6/a;->b:I

    .line 34
    .line 35
    new-instance v4, Lb3/f0;

    .line 36
    .line 37
    const/16 v5, 0x9

    .line 38
    .line 39
    invoke-direct {v4, v5}, Lb3/f0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v1, v4}, Ll7/d;->h(Lj6/a;Lb3/f0;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x1

    .line 47
    const-string v6, "CarLife_SDK"

    .line 48
    .line 49
    if-lez v4, :cond_7

    .line 50
    .line 51
    iget-object v7, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 52
    .line 53
    if-eqz v7, :cond_6

    .line 54
    .line 55
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getState()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ne v7, v5, :cond_6

    .line 60
    .line 61
    iget-object v7, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 62
    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    iget-object v8, v1, Lj6/a;->a:[B

    .line 66
    .line 67
    invoke-virtual {v7, v8, v3, v4}, Landroid/media/AudioTrack;->write([BII)I

    .line 68
    .line 69
    .line 70
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v7, 0x18

    .line 73
    .line 74
    if-lt v4, v7, :cond_3

    .line 75
    .line 76
    iget-object v4, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    invoke-static {v4}, La4/h;->a(Landroid/media/AudioTrack;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v4, 0x0

    .line 86
    :goto_1
    if-le v4, v2, :cond_3

    .line 87
    .line 88
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 89
    .line 90
    const-string v7, "\u3010\u97f3\u9891\u64ad\u653e\u3011\u6b20\u8f7d\u6b21\u6570="

    .line 91
    .line 92
    invoke-static {v4, v7}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    new-array v5, v5, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v7, v5, v3

    .line 99
    .line 100
    invoke-virtual {v2, v6, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move v2, v4

    .line 104
    :cond_3
    iget-object v3, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 105
    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/4 v4, 0x3

    .line 113
    if-ne v3, v4, :cond_4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object v3, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 117
    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 121
    .line 122
    .line 123
    :cond_5
    sget-object v3, Li7/j;->f:Li7/j;

    .line 124
    .line 125
    invoke-virtual {p0, v3}, Li7/f;->e(Li7/j;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 130
    .line 131
    new-array v5, v5, [Ljava/lang/Object;

    .line 132
    .line 133
    const-string v7, "\u3010\u97f3\u9891\u64ad\u653e\u3011AudioTrack \u672a\u521d\u59cb\u5316\uff0c\u65e0\u6cd5\u64ad\u653e"

    .line 134
    .line 135
    aput-object v7, v5, v3

    .line 136
    .line 137
    invoke-virtual {v4, v6, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    if-ne v4, v0, :cond_0

    .line 142
    .line 143
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 144
    .line 145
    new-array p1, v5, [Ljava/lang/Object;

    .line 146
    .line 147
    const-string v0, "\u3010\u97f3\u9891\u64ad\u653e\u3011\u97f3\u9891\u6d41\u8bfb\u53d6\u5b8c\u6210"

    .line 148
    .line 149
    aput-object v0, p1, v3

    .line 150
    .line 151
    invoke-virtual {p0, v6, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    return-void
.end method


# virtual methods
.method public final b(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li7/f;->d:Ll7/g;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->acquire()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Ll7/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v2, "\u3010\u97f3\u9891\u6570\u636e\u3011\u8b66\u544a\uff1a\u7f13\u51b2\u533a\u961f\u5217\u6ee1\uff0c\u4e22\u5f03\u97f3\u9891\u5e27"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    const-string v2, "CarLife_SDK"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Float;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lg5/a;->K()Lk7/k;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Lk7/k;->a:I

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    const/high16 v0, 0x42c80000    # 100.0f

    .line 16
    .line 17
    div-float/2addr p1, v0

    .line 18
    :goto_0
    iget-object v0, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Li7/f;->e:Li7/j;

    .line 2
    .line 3
    sget-object v1, Li7/j;->h:Li7/j;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, Li7/f;->e(Li7/j;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Li7/f;->d:Ll7/g;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ll7/g;->close()V

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Li7/f;->d:Ll7/g;

    .line 20
    .line 21
    iget-object v1, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x3

    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "\u3010\u97f3\u9891\u64ad\u653e\u3011\u505c\u6b62\u64ad\u653e\u5f02\u5e38: "

    .line 44
    .line 45
    invoke-static {v3, v1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x1

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    aput-object v1, v3, v4

    .line 54
    .line 55
    const-string v1, "CarLife_SDK"

    .line 56
    .line 57
    invoke-virtual {v2, v1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    iput-object v0, p0, Li7/f;->c:Landroid/media/AudioTrack;

    .line 61
    .line 62
    return-void
.end method

.method public final e(Li7/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li7/f;->e:Li7/j;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Li7/f;->e:Li7/j;

    .line 6
    .line 7
    iget-object v0, p0, Li7/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Li7/i;->c(Li7/j;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
