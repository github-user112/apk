.class public final Ll7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:La8/q;

.field public final b:Landroid/media/MediaCodec;

.field public final c:Landroid/media/MediaCodec$BufferInfo;

.field public d:Z


# direct methods
.method public constructor <init>(Ll7/c;La8/q;)V
    .locals 6

    .line 1
    iget v0, p1, Ll7/c;->a:I

    .line 2
    .line 3
    iget p1, p1, Ll7/c;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Ll7/a;->a:La8/q;

    .line 9
    .line 10
    const-string p2, "audio/mp4a-latm"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    :try_start_0
    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "createDecoderByType(...)"

    .line 19
    .line 20
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroid/media/MediaFormat;

    .line 24
    .line 25
    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "mime"

    .line 29
    .line 30
    invoke-virtual {v4, v5, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "channel-count"

    .line 34
    .line 35
    invoke-virtual {v4, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string p2, "sample-rate"

    .line 39
    .line 40
    invoke-virtual {v4, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string p2, "bitrate"

    .line 44
    .line 45
    mul-int/lit8 v0, v0, 0x4

    .line 46
    .line 47
    invoke-virtual {v4, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string p2, "is-adts"

    .line 51
    .line 52
    invoke-virtual {v4, p2, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string p2, "aac-profile"

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-virtual {v4, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/16 v0, 0x12

    .line 66
    .line 67
    invoke-virtual {p2, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    shl-int/lit8 p1, p1, 0x3

    .line 71
    .line 72
    int-to-byte p1, p1

    .line 73
    invoke-virtual {p2, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    const-string p1, "csd-0"

    .line 77
    .line 78
    invoke-virtual {v4, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-virtual {v3, v4, p1, p1, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Ll7/a;->b:Landroid/media/MediaCodec;

    .line 86
    .line 87
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    .line 88
    .line 89
    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Ll7/a;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 93
    .line 94
    return-void

    .line 95
    :catch_0
    move-exception p1

    .line 96
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "\u3010\u89e3\u7801\u72b6\u6001\u3011createDecoder \u5f02\u5e38: "

    .line 101
    .line 102
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v0, v2, v1

    .line 115
    .line 116
    const-string v0, "CarLife_SDK"

    .line 117
    .line 118
    invoke-virtual {p2, v0, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method


# virtual methods
.method public final a(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Ll7/a;->d:Z

    .line 4
    .line 5
    if-nez v1, :cond_a

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v2

    .line 28
    :goto_0
    if-ge v1, v3, :cond_a

    .line 29
    .line 30
    iget-boolean v2, v0, Ll7/a;->d:Z

    .line 31
    .line 32
    if-nez v2, :cond_a

    .line 33
    .line 34
    sub-int v2, v3, v1

    .line 35
    .line 36
    const/4 v4, 0x7

    .line 37
    if-lt v2, v4, :cond_a

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    aget-byte v2, v2, v1

    .line 44
    .line 45
    const/16 v5, 0xff

    .line 46
    .line 47
    and-int/2addr v2, v5

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    add-int/lit8 v7, v1, 0x1

    .line 53
    .line 54
    aget-byte v6, v6, v7

    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    const/4 v8, 0x0

    .line 58
    const-string v9, "CarLife_SDK"

    .line 59
    .line 60
    if-ne v2, v5, :cond_9

    .line 61
    .line 62
    const/16 v2, 0xf0

    .line 63
    .line 64
    and-int/2addr v6, v2

    .line 65
    if-eq v6, v2, :cond_1

    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    add-int/lit8 v6, v1, 0x3

    .line 74
    .line 75
    aget-byte v2, v2, v6

    .line 76
    .line 77
    and-int/lit8 v2, v2, 0x3

    .line 78
    .line 79
    shl-int/lit8 v2, v2, 0xb

    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    add-int/lit8 v10, v1, 0x4

    .line 86
    .line 87
    aget-byte v6, v6, v10

    .line 88
    .line 89
    and-int/2addr v5, v6

    .line 90
    shl-int/lit8 v5, v5, 0x3

    .line 91
    .line 92
    or-int/2addr v2, v5

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    add-int/lit8 v6, v1, 0x5

    .line 98
    .line 99
    aget-byte v5, v5, v6

    .line 100
    .line 101
    and-int/lit16 v5, v5, 0xe0

    .line 102
    .line 103
    shr-int/lit8 v5, v5, 0x5

    .line 104
    .line 105
    or-int v13, v2, v5

    .line 106
    .line 107
    if-lt v13, v4, :cond_8

    .line 108
    .line 109
    add-int v2, v1, v13

    .line 110
    .line 111
    if-le v2, v3, :cond_2

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    iget-object v4, v0, Ll7/a;->b:Landroid/media/MediaCodec;

    .line 115
    .line 116
    const-wide/16 v5, 0x2710

    .line 117
    .line 118
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-ltz v11, :cond_4

    .line 123
    .line 124
    invoke-virtual {v4, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    if-eqz v7, :cond_3

    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v7, v9, v1, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    :cond_3
    const-wide/16 v14, 0x0

    .line 141
    .line 142
    const/16 v16, 0x0

    .line 143
    .line 144
    iget-object v10, v0, Ll7/a;->b:Landroid/media/MediaCodec;

    .line 145
    .line 146
    const/4 v12, 0x0

    .line 147
    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 148
    .line 149
    .line 150
    :cond_4
    iget-object v1, v0, Ll7/a;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 151
    .line 152
    invoke-virtual {v4, v1, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    :goto_1
    if-ltz v7, :cond_7

    .line 157
    .line 158
    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 159
    .line 160
    and-int/lit8 v9, v9, 0x2

    .line 161
    .line 162
    if-eqz v9, :cond_5

    .line 163
    .line 164
    invoke-virtual {v4, v7, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 169
    .line 170
    if-lez v9, :cond_6

    .line 171
    .line 172
    invoke-virtual {v4, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    if-eqz v9, :cond_6

    .line 177
    .line 178
    iget v10, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 179
    .line 180
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    .line 182
    .line 183
    iget v10, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 184
    .line 185
    iget v11, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 186
    .line 187
    add-int/2addr v10, v11

    .line 188
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    .line 190
    .line 191
    iget v10, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 192
    .line 193
    new-array v10, v10, [B

    .line 194
    .line 195
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 196
    .line 197
    .line 198
    iget-object v9, v0, Ll7/a;->a:La8/q;

    .line 199
    .line 200
    invoke-virtual {v9, v10}, La8/q;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_6
    :goto_2
    invoke-virtual {v4, v7, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v1, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    goto :goto_1

    .line 211
    :cond_7
    move v1, v2

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_8
    :goto_3
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 215
    .line 216
    const-string v3, "\u3010\u89e3\u7801\u72b6\u6001\u3011Invalid ADTS frameLen="

    .line 217
    .line 218
    const-string v4, " at offset="

    .line 219
    .line 220
    invoke-static {v13, v1, v3, v4}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    new-array v3, v7, [Ljava/lang/Object;

    .line 225
    .line 226
    aput-object v1, v3, v8

    .line 227
    .line 228
    invoke-virtual {v2, v9, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_9
    :goto_4
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 233
    .line 234
    const-string v3, "\u3010\u89e3\u7801\u72b6\u6001\u3011ADTS sync lost at offset="

    .line 235
    .line 236
    invoke-static {v1, v3}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-array v3, v7, [Ljava/lang/Object;

    .line 241
    .line 242
    aput-object v1, v3, v8

    .line 243
    .line 244
    invoke-virtual {v2, v9, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    :goto_5
    return-void
.end method
