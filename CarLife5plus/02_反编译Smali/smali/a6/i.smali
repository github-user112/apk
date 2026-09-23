.class public final La6/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:[I


# instance fields
.field public final a:[I

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, La6/i;->c:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    new-array p1, p1, [I

    .line 9
    .line 10
    iput-object p1, p0, La6/i;->a:[I

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, La6/i;->b:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x4

    .line 24
    new-array p1, p1, [I

    .line 25
    .line 26
    iput-object p1, p0, La6/i;->a:[I

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, La6/i;->b:Ljava/lang/StringBuilder;

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(ILs5/a;[I)Lm5/m;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, La6/i;->b:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, La6/i;->a:[I

    .line 12
    .line 13
    aput v3, v4, v3

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    aput v3, v4, v5

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    aput v3, v4, v6

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    aput v3, v4, v7

    .line 23
    .line 24
    iget v8, v1, Ls5/a;->b:I

    .line 25
    .line 26
    aget v9, p3, v5

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    :goto_0
    const/16 v12, 0x30

    .line 31
    .line 32
    const/4 v13, 0x5

    .line 33
    const/16 v14, 0xa

    .line 34
    .line 35
    if-ge v10, v13, :cond_3

    .line 36
    .line 37
    if-ge v9, v8, :cond_3

    .line 38
    .line 39
    sget-object v13, La6/k;->g:[[I

    .line 40
    .line 41
    invoke-static {v1, v4, v9, v13}, La6/k;->h(Ls5/a;[II[[I)I

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    rem-int/lit8 v15, v13, 0xa

    .line 46
    .line 47
    add-int/2addr v15, v12

    .line 48
    int-to-char v12, v15

    .line 49
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    array-length v12, v4

    .line 53
    const/4 v15, 0x0

    .line 54
    :goto_1
    if-ge v15, v12, :cond_0

    .line 55
    .line 56
    aget v16, v4, v15

    .line 57
    .line 58
    add-int v9, v9, v16

    .line 59
    .line 60
    add-int/lit8 v15, v15, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    if-lt v13, v14, :cond_1

    .line 64
    .line 65
    rsub-int/lit8 v12, v10, 0x4

    .line 66
    .line 67
    shl-int v12, v5, v12

    .line 68
    .line 69
    or-int/2addr v11, v12

    .line 70
    :cond_1
    const/4 v12, 0x4

    .line 71
    if-eq v10, v12, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1, v9}, Ls5/a;->e(I)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-virtual {v1, v9}, Ls5/a;->f(I)I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ne v1, v13, :cond_13

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    :goto_2
    if-ge v1, v14, :cond_12

    .line 92
    .line 93
    sget-object v4, La6/i;->c:[I

    .line 94
    .line 95
    aget v4, v4, v1

    .line 96
    .line 97
    if-ne v11, v4, :cond_11

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    add-int/lit8 v10, v8, -0x2

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    :goto_3
    if-ltz v10, :cond_4

    .line 111
    .line 112
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    sub-int/2addr v15, v12

    .line 117
    add-int/2addr v11, v15

    .line 118
    add-int/lit8 v10, v10, -0x2

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    mul-int/lit8 v11, v11, 0x3

    .line 122
    .line 123
    sub-int/2addr v8, v5

    .line 124
    :goto_4
    if-ltz v8, :cond_5

    .line 125
    .line 126
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    sub-int/2addr v10, v12

    .line 131
    add-int/2addr v11, v10

    .line 132
    add-int/lit8 v8, v8, -0x2

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    mul-int/lit8 v11, v11, 0x3

    .line 136
    .line 137
    rem-int/2addr v11, v14

    .line 138
    if-ne v11, v1, :cond_10

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/4 v4, 0x0

    .line 149
    if-eq v2, v13, :cond_6

    .line 150
    .line 151
    :goto_5
    move-object v7, v4

    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eq v2, v12, :cond_c

    .line 159
    .line 160
    const/16 v7, 0x35

    .line 161
    .line 162
    if-eq v2, v7, :cond_b

    .line 163
    .line 164
    const/16 v7, 0x39

    .line 165
    .line 166
    const-string v8, ""

    .line 167
    .line 168
    if-eq v2, v7, :cond_7

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/4 v7, -0x1

    .line 176
    sparse-switch v2, :sswitch_data_0

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :sswitch_0
    const-string v2, "99991"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_8

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_8
    const/4 v7, 0x2

    .line 190
    goto :goto_6

    .line 191
    :sswitch_1
    const-string v2, "99990"

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-nez v2, :cond_9

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_9
    const/4 v7, 0x1

    .line 201
    goto :goto_6

    .line 202
    :sswitch_2
    const-string v2, "90000"

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_a

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_a
    const/4 v7, 0x0

    .line 212
    :goto_6
    packed-switch v7, :pswitch_data_0

    .line 213
    .line 214
    .line 215
    goto :goto_7

    .line 216
    :pswitch_0
    const-string v2, "0.00"

    .line 217
    .line 218
    goto :goto_9

    .line 219
    :pswitch_1
    const-string v2, "Used"

    .line 220
    .line 221
    goto :goto_9

    .line 222
    :pswitch_2
    move-object v2, v4

    .line 223
    goto :goto_9

    .line 224
    :cond_b
    const-string v8, "$"

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_c
    const-string v8, "\u00a3"

    .line 228
    .line 229
    :goto_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    div-int/lit8 v7, v2, 0x64

    .line 238
    .line 239
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    rem-int/lit8 v2, v2, 0x64

    .line 244
    .line 245
    if-ge v2, v14, :cond_d

    .line 246
    .line 247
    const-string v10, "0"

    .line 248
    .line 249
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    goto :goto_8

    .line 258
    :cond_d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const/16 v7, 0x2e

    .line 274
    .line 275
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    :goto_9
    if-nez v2, :cond_e

    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :cond_e
    new-instance v7, Ljava/util/EnumMap;

    .line 290
    .line 291
    const-class v8, Lm5/n;

    .line 292
    .line 293
    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 294
    .line 295
    .line 296
    sget-object v8, Lm5/n;->e:Lm5/n;

    .line 297
    .line 298
    invoke-virtual {v7, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    :goto_a
    new-instance v2, Lm5/m;

    .line 302
    .line 303
    new-instance v8, Lm5/o;

    .line 304
    .line 305
    aget v10, p3, v3

    .line 306
    .line 307
    aget v11, p3, v5

    .line 308
    .line 309
    add-int/2addr v10, v11

    .line 310
    int-to-float v10, v10

    .line 311
    const/high16 v11, 0x40000000    # 2.0f

    .line 312
    .line 313
    div-float/2addr v10, v11

    .line 314
    move/from16 v15, p1

    .line 315
    .line 316
    int-to-float v11, v15

    .line 317
    invoke-direct {v8, v10, v11}, Lm5/o;-><init>(FF)V

    .line 318
    .line 319
    .line 320
    new-instance v10, Lm5/o;

    .line 321
    .line 322
    int-to-float v9, v9

    .line 323
    invoke-direct {v10, v9, v11}, Lm5/o;-><init>(FF)V

    .line 324
    .line 325
    .line 326
    new-array v6, v6, [Lm5/o;

    .line 327
    .line 328
    aput-object v8, v6, v3

    .line 329
    .line 330
    aput-object v10, v6, v5

    .line 331
    .line 332
    sget-object v3, Lm5/a;->q:Lm5/a;

    .line 333
    .line 334
    invoke-direct {v2, v1, v4, v6, v3}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;)V

    .line 335
    .line 336
    .line 337
    if-eqz v7, :cond_f

    .line 338
    .line 339
    invoke-virtual {v2, v7}, Lm5/m;->a(Ljava/util/Map;)V

    .line 340
    .line 341
    .line 342
    :cond_f
    return-object v2

    .line 343
    :cond_10
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 344
    .line 345
    throw v1

    .line 346
    :cond_11
    move/from16 v15, p1

    .line 347
    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :cond_12
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 353
    .line 354
    throw v1

    .line 355
    :cond_13
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 356
    .line 357
    throw v1

    .line 358
    nop

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x339c7b9 -> :sswitch_2
        0x33e01f0 -> :sswitch_1
        0x33e01f1 -> :sswitch_0
    .end sparse-switch

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
