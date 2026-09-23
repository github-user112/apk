.class public final Lj7/d;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lj7/e;


# direct methods
.method public constructor <init>(Lj7/e;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Lj7/d;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lj7/d;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lj7/d;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    new-instance v0, Lj7/d;

    .line 2
    .line 3
    iget-object v1, p0, Lj7/d;->f:Lj7/e;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lj7/d;-><init>(Lj7/e;Lw8/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lj7/d;->e:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "\u3010\u5f55\u97f3\u6570\u636e\u3011\u505c\u6b62\u5f55\u97f3\u5f02\u5e38: "

    .line 2
    .line 3
    const-string v1, "CarLife_Vehicle"

    .line 4
    .line 5
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lj7/d;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lac/w;

    .line 11
    .line 12
    const/16 v2, 0x400

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    :try_start_0
    iget-object v7, p0, Lj7/d;->f:Lj7/e;

    .line 20
    .line 21
    iget-object v7, v7, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 22
    .line 23
    if-eqz v7, :cond_0

    .line 24
    .line 25
    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    :goto_0
    iget-object v7, p0, Lj7/d;->f:Lj7/e;

    .line 36
    .line 37
    iput-boolean v4, v7, Lj7/e;->e:Z

    .line 38
    .line 39
    iget-object v7, p0, Lj7/d;->f:Lj7/e;

    .line 40
    .line 41
    iget-object v7, v7, Lj7/e;->b:Lj7/c;

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    iput-boolean v4, v7, Lj7/c;->c:Z

    .line 46
    .line 47
    :cond_1
    :goto_1
    invoke-static {p1}, Lac/z;->p(Lac/w;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_4

    .line 52
    .line 53
    iget-object v7, p0, Lj7/d;->f:Lj7/e;

    .line 54
    .line 55
    iget-boolean v7, v7, Lj7/e;->e:Z

    .line 56
    .line 57
    if-eqz v7, :cond_4

    .line 58
    .line 59
    iget-object v7, p0, Lj7/d;->f:Lj7/e;

    .line 60
    .line 61
    iget-object v7, v7, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 62
    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    invoke-virtual {v7, v3, v6, v2}, Landroid/media/AudioRecord;->read([BII)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-lez v7, :cond_2

    .line 70
    .line 71
    iget-object v8, p0, Lj7/d;->f:Lj7/e;

    .line 72
    .line 73
    iget-object v8, v8, Lj7/e;->b:Lj7/c;

    .line 74
    .line 75
    if-eqz v8, :cond_1

    .line 76
    .line 77
    if-lez v7, :cond_1

    .line 78
    .line 79
    iget-object v8, v8, Lj7/c;->b:Ll7/h;

    .line 80
    .line 81
    invoke-virtual {v8, v3, v6, v7}, Ll7/h;->d([BII)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v8, -0x3

    .line 86
    if-eq v7, v8, :cond_3

    .line 87
    .line 88
    const/4 v8, -0x2

    .line 89
    if-ne v7, v8, :cond_1

    .line 90
    .line 91
    :cond_3
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "\u3010\u5f55\u97f3\u6570\u636e\u3011\u5f55\u97f3\u8bfb\u53d6\u9519\u8bef: "

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-array v3, v4, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v2, v3, v6

    .line 113
    .line 114
    invoke-virtual {p1, v1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_4
    :try_start_1
    iget-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 118
    .line 119
    iget-object p1, p1, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception p1

    .line 128
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, p1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-array v0, v4, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object p1, v0, v6

    .line 141
    .line 142
    invoke-virtual {v2, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_2
    iget-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 146
    .line 147
    iget-object p1, p1, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 148
    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 155
    .line 156
    iput-object v5, p1, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 157
    .line 158
    iget-object p1, p1, Lj7/e;->b:Lj7/c;

    .line 159
    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    :goto_3
    iput-boolean v6, p1, Lj7/c;->c:Z

    .line 163
    .line 164
    :cond_7
    iget-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 165
    .line 166
    iput-boolean v6, p1, Lj7/e;->e:Z

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :goto_4
    :try_start_2
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v8, "\u3010\u5f55\u97f3\u6570\u636e\u3011\u5f55\u97f3\u5f02\u5e38: "

    .line 181
    .line 182
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    const/4 v7, 0x2

    .line 193
    new-array v7, v7, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object v3, v7, v6

    .line 196
    .line 197
    aput-object p1, v7, v4

    .line 198
    .line 199
    invoke-virtual {v2, v1, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .line 201
    .line 202
    :try_start_3
    iget-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 203
    .line 204
    iget-object p1, p1, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 205
    .line 206
    if-eqz p1, :cond_8

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :catch_2
    move-exception p1

    .line 213
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v0, p1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-array v0, v4, [Ljava/lang/Object;

    .line 224
    .line 225
    aput-object p1, v0, v6

    .line 226
    .line 227
    invoke-virtual {v2, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_8
    :goto_5
    iget-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 231
    .line 232
    iget-object p1, p1, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 233
    .line 234
    if-eqz p1, :cond_9

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 237
    .line 238
    .line 239
    :cond_9
    iget-object p1, p0, Lj7/d;->f:Lj7/e;

    .line 240
    .line 241
    iput-object v5, p1, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 242
    .line 243
    iget-object p1, p1, Lj7/e;->b:Lj7/c;

    .line 244
    .line 245
    if-eqz p1, :cond_7

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :goto_6
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 249
    .line 250
    return-object p1

    .line 251
    :goto_7
    :try_start_4
    iget-object v2, p0, Lj7/d;->f:Lj7/e;

    .line 252
    .line 253
    iget-object v2, v2, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 254
    .line 255
    if-eqz v2, :cond_a

    .line 256
    .line 257
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :catch_3
    move-exception v2

    .line 262
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-static {v0, v2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    new-array v2, v4, [Ljava/lang/Object;

    .line 273
    .line 274
    aput-object v0, v2, v6

    .line 275
    .line 276
    invoke-virtual {v3, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_a
    :goto_8
    iget-object v0, p0, Lj7/d;->f:Lj7/e;

    .line 280
    .line 281
    iget-object v0, v0, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 282
    .line 283
    if-eqz v0, :cond_b

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 286
    .line 287
    .line 288
    :cond_b
    iget-object v0, p0, Lj7/d;->f:Lj7/e;

    .line 289
    .line 290
    iput-object v5, v0, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 291
    .line 292
    iget-object v0, v0, Lj7/e;->b:Lj7/c;

    .line 293
    .line 294
    if-eqz v0, :cond_c

    .line 295
    .line 296
    iput-boolean v6, v0, Lj7/c;->c:Z

    .line 297
    .line 298
    :cond_c
    iget-object v0, p0, Lj7/d;->f:Lj7/e;

    .line 299
    .line 300
    iput-boolean v6, v0, Lj7/e;->e:Z

    .line 301
    .line 302
    throw p1
.end method
