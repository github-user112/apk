.class public final Li7/n;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:I

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(ILw8/c;Z)V
    .locals 0

    .line 1
    iput p1, p0, Li7/n;->f:I

    .line 2
    .line 3
    iput-boolean p3, p0, Li7/n;->g:Z

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Li7/n;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Li7/n;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Li7/n;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    new-instance v0, Li7/n;

    .line 2
    .line 3
    iget v1, p0, Li7/n;->f:I

    .line 4
    .line 5
    iget-boolean v2, p0, Li7/n;->g:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, p2, v2}, Li7/n;-><init>(ILw8/c;Z)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Li7/n;->e:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const-string v3, "CarLife_SDK"

    .line 6
    .line 7
    const-string v4, "\u3010\u97f3\u9891\u6d4b\u8bd5\u3011\u64ad\u653e\u5f02\u5e38: "

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Li7/n;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lac/w;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    :try_start_0
    sget-object v0, Li7/p;->g:Ljava/io/File;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Li7/p;->c()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/16 p1, 0x0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    :goto_0
    new-instance v7, Landroid/media/MediaExtractor;

    .line 36
    .line 37
    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v7, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v7}, Li7/p;->e(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 54
    .line 55
    new-array v7, v6, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v8, "\u3010\u97f3\u9891\u6d4b\u8bd5\u3011\u672a\u627e\u5230\u97f3\u9891\u8f68\u9053"

    .line 58
    .line 59
    aput-object v8, v7, v5

    .line 60
    .line 61
    invoke-virtual {v0, v3, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-static {}, Li7/p;->d()V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_1
    :try_start_1
    invoke-static {v0}, Li7/p;->b(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    .line 73
    .line 74
    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v10, Li7/b;

    .line 78
    .line 79
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v11, "sample-rate"

    .line 83
    .line 84
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    const-string v11, "channel-count"

    .line 89
    .line 90
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const-string v11, "durationUs"

    .line 95
    .line 96
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    const/16 v0, 0x3e8

    .line 101
    .line 102
    const/16 p1, 0x0

    .line 103
    .line 104
    int-to-long v5, v0

    .line 105
    :try_start_2
    div-long v16, v11, v5

    .line 106
    .line 107
    new-instance v11, Ll7/c;

    .line 108
    .line 109
    const/16 v15, 0x10

    .line 110
    .line 111
    move-object v12, v11

    .line 112
    invoke-direct/range {v12 .. v17}, Ll7/c;-><init>(IIIJ)V

    .line 113
    .line 114
    .line 115
    iget v12, v1, Li7/n;->f:I

    .line 116
    .line 117
    iget-boolean v13, v1, Li7/n;->g:Z

    .line 118
    .line 119
    new-instance v14, Li7/m;

    .line 120
    .line 121
    invoke-direct {v14, v12}, Li7/m;-><init>(I)V

    .line 122
    .line 123
    .line 124
    const/16 v15, 0x8

    .line 125
    .line 126
    invoke-static/range {v10 .. v15}, Li7/b;->a(Li7/b;Ll7/c;IZLi7/m;I)Landroid/media/AudioTrack;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Li7/p;->b:Landroid/media/AudioTrack;

    .line 131
    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    :goto_1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 141
    .line 142
    const/4 v5, 0x1

    .line 143
    new-array v6, v5, [Ljava/lang/Object;

    .line 144
    .line 145
    const-string v10, "\u3010\u97f3\u9891\u6d4b\u8bd5\u3011\u5f00\u59cb\u64ad\u653e"

    .line 146
    .line 147
    aput-object v10, v6, p1

    .line 148
    .line 149
    invoke-virtual {v0, v3, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sput-boolean v5, Li7/p;->d:Z

    .line 153
    .line 154
    invoke-static {v7, v8, v9}, Li7/p;->a(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    .line 157
    invoke-static {}, Li7/p;->d()V

    .line 158
    .line 159
    .line 160
    return-object v2

    .line 161
    :goto_2
    :try_start_3
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/4 v4, 0x1

    .line 180
    new-array v4, v4, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object v0, v4, p1

    .line 183
    .line 184
    invoke-virtual {v5, v3, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .line 186
    .line 187
    invoke-static {}, Li7/p;->d()V

    .line 188
    .line 189
    .line 190
    return-object v2

    .line 191
    :goto_3
    invoke-static {}, Li7/p;->d()V

    .line 192
    .line 193
    .line 194
    throw v0
.end method
