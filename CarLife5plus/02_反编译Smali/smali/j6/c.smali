.class public final Lj6/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lkb/a;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lkb/a;

    .line 8
    .line 9
    sget-object v0, Lu5/a;->l:Lu5/a;

    .line 10
    .line 11
    const/16 v1, 0x18

    .line 12
    .line 13
    invoke-direct {p1, v1, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lj6/c;->a:Lkb/a;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lkb/a;

    .line 23
    .line 24
    sget-object v0, Lu5/a;->o:Lu5/a;

    .line 25
    .line 26
    const/16 v1, 0x18

    .line 27
    .line 28
    invoke-direct {p1, v1, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lj6/c;->a:Lkb/a;

    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lkb/a;

    .line 38
    .line 39
    sget-object v0, Lu5/a;->m:Lu5/a;

    .line 40
    .line 41
    const/16 v1, 0x18

    .line 42
    .line 43
    invoke-direct {p1, v1, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lj6/c;->a:Lkb/a;

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(III[BI)V
    .locals 7

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    if-nez p5, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    :goto_0
    div-int v2, v0, v1

    .line 9
    .line 10
    new-array v2, v2, [I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_1
    if-ge v4, v0, :cond_3

    .line 15
    .line 16
    if-eqz p5, :cond_1

    .line 17
    .line 18
    rem-int/lit8 v5, v4, 0x2

    .line 19
    .line 20
    add-int/lit8 v6, p5, -0x1

    .line 21
    .line 22
    if-ne v5, v6, :cond_2

    .line 23
    .line 24
    :cond_1
    div-int v5, v4, v1

    .line 25
    .line 26
    add-int v6, v4, p1

    .line 27
    .line 28
    aget-byte v6, p4, v6

    .line 29
    .line 30
    and-int/lit16 v6, v6, 0xff

    .line 31
    .line 32
    aput v6, v2, v5

    .line 33
    .line 34
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :try_start_0
    iget-object v0, p0, Lj6/c;->a:Lkb/a;

    .line 38
    .line 39
    div-int/2addr p3, v1

    .line 40
    invoke-virtual {v0, v2, p3}, Lkb/a;->Q([II)V
    :try_end_0
    .catch Lu5/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :goto_2
    if-ge v3, p2, :cond_6

    .line 44
    .line 45
    if-eqz p5, :cond_4

    .line 46
    .line 47
    rem-int/lit8 p3, v3, 0x2

    .line 48
    .line 49
    add-int/lit8 v0, p5, -0x1

    .line 50
    .line 51
    if-ne p3, v0, :cond_5

    .line 52
    .line 53
    :cond_4
    add-int p3, v3, p1

    .line 54
    .line 55
    div-int v0, v3, v1

    .line 56
    .line 57
    aget v0, v2, v0

    .line 58
    .line 59
    int-to-byte v0, v0

    .line 60
    aput-byte v0, p4, p3

    .line 61
    .line 62
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    return-void

    .line 66
    :catch_0
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    throw p1
.end method

.method public b(Lf1/t0;Ljava/util/Map;)Ls5/d;
    .locals 28

    .line 1
    invoke-virtual/range {p1 .. p1}, Lf1/t0;->d()Lj6/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual/range {p1 .. p1}, Lf1/t0;->c()Lj6/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Lj6/e;->a:I

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lf1/t0;->c()Lj6/e;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual/range {p1 .. p1}, Lf1/t0;->d()Lj6/h;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    invoke-static {v4}, Le1/d;->c(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-byte v2, v2, Lj6/e;->b:B

    .line 26
    .line 27
    aget v2, v5, v2

    .line 28
    .line 29
    move-object/from16 v5, p1

    .line 30
    .line 31
    iget-object v5, v5, Lf1/t0;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Ls5/b;

    .line 34
    .line 35
    iget v6, v5, Ls5/b;->b:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    :goto_0
    if-ge v8, v6, :cond_2

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    :goto_1
    if-ge v9, v6, :cond_1

    .line 43
    .line 44
    invoke-static {v2, v8, v9}, Lj6/d;->a(III)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_0

    .line 49
    .line 50
    invoke-virtual {v5, v9, v8}, Ls5/b;->a(II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget v2, v3, Lj6/h;->a:I

    .line 60
    .line 61
    const/4 v8, 0x4

    .line 62
    mul-int/lit8 v2, v2, 0x4

    .line 63
    .line 64
    add-int/lit8 v9, v2, 0x11

    .line 65
    .line 66
    iget v10, v3, Lj6/h;->d:I

    .line 67
    .line 68
    new-instance v11, Ls5/b;

    .line 69
    .line 70
    invoke-direct {v11, v9, v9}, Ls5/b;-><init>(II)V

    .line 71
    .line 72
    .line 73
    const/16 v9, 0x9

    .line 74
    .line 75
    invoke-virtual {v11, v7, v7, v9, v9}, Ls5/b;->g(IIII)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v12, v2, 0x9

    .line 79
    .line 80
    invoke-virtual {v11, v12, v7, v4, v9}, Ls5/b;->g(IIII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v7, v12, v9, v4}, Ls5/b;->g(IIII)V

    .line 84
    .line 85
    .line 86
    iget-object v12, v3, Lj6/h;->b:[I

    .line 87
    .line 88
    array-length v13, v12

    .line 89
    const/4 v14, 0x0

    .line 90
    :goto_2
    const/4 v15, 0x2

    .line 91
    const/4 v8, 0x5

    .line 92
    if-ge v14, v13, :cond_7

    .line 93
    .line 94
    aget v16, v12, v14

    .line 95
    .line 96
    add-int/lit8 v4, v16, -0x2

    .line 97
    .line 98
    const/4 v15, 0x0

    .line 99
    const/16 v16, 0x2

    .line 100
    .line 101
    :goto_3
    if-ge v15, v13, :cond_6

    .line 102
    .line 103
    if-nez v14, :cond_3

    .line 104
    .line 105
    if-eqz v15, :cond_5

    .line 106
    .line 107
    add-int/lit8 v7, v13, -0x1

    .line 108
    .line 109
    if-eq v15, v7, :cond_5

    .line 110
    .line 111
    :cond_3
    add-int/lit8 v7, v13, -0x1

    .line 112
    .line 113
    if-ne v14, v7, :cond_4

    .line 114
    .line 115
    if-eqz v15, :cond_5

    .line 116
    .line 117
    :cond_4
    aget v7, v12, v15

    .line 118
    .line 119
    add-int/lit8 v7, v7, -0x2

    .line 120
    .line 121
    invoke-virtual {v11, v7, v4, v8, v8}, Ls5/b;->g(IIII)V

    .line 122
    .line 123
    .line 124
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 129
    .line 130
    const/16 v4, 0x8

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v8, 0x4

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    const/16 v16, 0x2

    .line 136
    .line 137
    const/4 v4, 0x6

    .line 138
    const/4 v7, 0x1

    .line 139
    invoke-virtual {v11, v4, v9, v7, v2}, Ls5/b;->g(IIII)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v9, v4, v2, v7}, Ls5/b;->g(IIII)V

    .line 143
    .line 144
    .line 145
    iget v3, v3, Lj6/h;->a:I

    .line 146
    .line 147
    const/4 v12, 0x3

    .line 148
    if-le v3, v4, :cond_8

    .line 149
    .line 150
    add-int/2addr v2, v4

    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-virtual {v11, v2, v3, v12, v4}, Ls5/b;->g(IIII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v3, v2, v4, v12}, Ls5/b;->g(IIII)V

    .line 156
    .line 157
    .line 158
    :cond_8
    new-array v2, v10, [B

    .line 159
    .line 160
    add-int/lit8 v3, v6, -0x1

    .line 161
    .line 162
    move v9, v3

    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x0

    .line 165
    const/4 v15, 0x0

    .line 166
    const/16 v19, 0x1

    .line 167
    .line 168
    :goto_4
    if-lez v9, :cond_f

    .line 169
    .line 170
    if-ne v9, v4, :cond_9

    .line 171
    .line 172
    add-int/lit8 v9, v9, -0x1

    .line 173
    .line 174
    :cond_9
    const/4 v4, 0x0

    .line 175
    :goto_5
    if-ge v4, v6, :cond_e

    .line 176
    .line 177
    if-eqz v19, :cond_a

    .line 178
    .line 179
    sub-int v20, v3, v4

    .line 180
    .line 181
    move/from16 v8, v20

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_a
    move v8, v4

    .line 185
    :goto_6
    const/4 v12, 0x0

    .line 186
    const/16 v21, 0x1

    .line 187
    .line 188
    :goto_7
    const/4 v7, 0x2

    .line 189
    if-ge v12, v7, :cond_d

    .line 190
    .line 191
    sub-int v7, v9, v12

    .line 192
    .line 193
    invoke-virtual {v11, v7, v8}, Ls5/b;->b(II)Z

    .line 194
    .line 195
    .line 196
    move-result v22

    .line 197
    if-nez v22, :cond_c

    .line 198
    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    shl-int/lit8 v15, v15, 0x1

    .line 202
    .line 203
    invoke-virtual {v5, v7, v8}, Ls5/b;->b(II)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_b

    .line 208
    .line 209
    or-int/lit8 v7, v15, 0x1

    .line 210
    .line 211
    move v15, v7

    .line 212
    :cond_b
    const/16 v7, 0x8

    .line 213
    .line 214
    if-ne v14, v7, :cond_c

    .line 215
    .line 216
    add-int/lit8 v7, v13, 0x1

    .line 217
    .line 218
    int-to-byte v14, v15

    .line 219
    aput-byte v14, v2, v13

    .line 220
    .line 221
    move v13, v7

    .line 222
    const/4 v14, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 228
    .line 229
    const/4 v7, 0x1

    .line 230
    const/4 v8, 0x5

    .line 231
    const/4 v12, 0x3

    .line 232
    const/16 v16, 0x2

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_e
    const/16 v21, 0x1

    .line 236
    .line 237
    xor-int/lit8 v19, v19, 0x1

    .line 238
    .line 239
    add-int/lit8 v9, v9, -0x2

    .line 240
    .line 241
    const/4 v4, 0x6

    .line 242
    const/4 v7, 0x1

    .line 243
    const/4 v8, 0x5

    .line 244
    const/4 v12, 0x3

    .line 245
    const/16 v16, 0x2

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_f
    const/16 v21, 0x1

    .line 249
    .line 250
    if-ne v13, v10, :cond_41

    .line 251
    .line 252
    iget v3, v0, Lj6/h;->d:I

    .line 253
    .line 254
    if-ne v10, v3, :cond_40

    .line 255
    .line 256
    iget-object v3, v0, Lj6/h;->c:[Lj/g;

    .line 257
    .line 258
    invoke-static {v1}, Le1/d;->b(I)I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    aget-object v3, v3, v4

    .line 263
    .line 264
    iget-object v4, v3, Lj/g;->c:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v4, [Ld6/i;

    .line 267
    .line 268
    iget v3, v3, Lj/g;->b:I

    .line 269
    .line 270
    array-length v5, v4

    .line 271
    const/4 v6, 0x0

    .line 272
    const/4 v7, 0x0

    .line 273
    :goto_8
    if-ge v7, v5, :cond_10

    .line 274
    .line 275
    aget-object v8, v4, v7

    .line 276
    .line 277
    iget v8, v8, Ld6/i;->b:I

    .line 278
    .line 279
    add-int/2addr v6, v8

    .line 280
    add-int/lit8 v7, v7, 0x1

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_10
    new-array v5, v6, [Lj6/a;

    .line 284
    .line 285
    array-length v7, v4

    .line 286
    const/4 v8, 0x0

    .line 287
    const/4 v9, 0x0

    .line 288
    :goto_9
    if-ge v9, v7, :cond_12

    .line 289
    .line 290
    aget-object v10, v4, v9

    .line 291
    .line 292
    const/4 v11, 0x0

    .line 293
    :goto_a
    iget v12, v10, Ld6/i;->b:I

    .line 294
    .line 295
    if-ge v11, v12, :cond_11

    .line 296
    .line 297
    iget v12, v10, Ld6/i;->c:I

    .line 298
    .line 299
    add-int v13, v3, v12

    .line 300
    .line 301
    add-int/lit8 v14, v8, 0x1

    .line 302
    .line 303
    new-instance v15, Lj6/a;

    .line 304
    .line 305
    new-array v13, v13, [B

    .line 306
    .line 307
    invoke-direct {v15, v13, v12}, Lj6/a;-><init>([BI)V

    .line 308
    .line 309
    .line 310
    aput-object v15, v5, v8

    .line 311
    .line 312
    add-int/lit8 v11, v11, 0x1

    .line 313
    .line 314
    move v8, v14

    .line 315
    goto :goto_a

    .line 316
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_12
    const/16 v18, 0x0

    .line 320
    .line 321
    aget-object v4, v5, v18

    .line 322
    .line 323
    iget-object v4, v4, Lj6/a;->a:[B

    .line 324
    .line 325
    array-length v4, v4

    .line 326
    add-int/lit8 v7, v6, -0x1

    .line 327
    .line 328
    :goto_b
    if-ltz v7, :cond_13

    .line 329
    .line 330
    aget-object v9, v5, v7

    .line 331
    .line 332
    iget-object v9, v9, Lj6/a;->a:[B

    .line 333
    .line 334
    array-length v9, v9

    .line 335
    if-eq v9, v4, :cond_13

    .line 336
    .line 337
    add-int/lit8 v7, v7, -0x1

    .line 338
    .line 339
    goto :goto_b

    .line 340
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 341
    .line 342
    sub-int/2addr v4, v3

    .line 343
    const/4 v3, 0x0

    .line 344
    const/4 v9, 0x0

    .line 345
    :goto_c
    if-ge v3, v4, :cond_15

    .line 346
    .line 347
    move v10, v9

    .line 348
    const/4 v9, 0x0

    .line 349
    :goto_d
    if-ge v9, v8, :cond_14

    .line 350
    .line 351
    aget-object v11, v5, v9

    .line 352
    .line 353
    iget-object v11, v11, Lj6/a;->a:[B

    .line 354
    .line 355
    add-int/lit8 v12, v10, 0x1

    .line 356
    .line 357
    aget-byte v10, v2, v10

    .line 358
    .line 359
    aput-byte v10, v11, v3

    .line 360
    .line 361
    add-int/lit8 v9, v9, 0x1

    .line 362
    .line 363
    move v10, v12

    .line 364
    goto :goto_d

    .line 365
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 366
    .line 367
    move v9, v10

    .line 368
    goto :goto_c

    .line 369
    :cond_15
    move v3, v7

    .line 370
    :goto_e
    if-ge v3, v8, :cond_16

    .line 371
    .line 372
    aget-object v10, v5, v3

    .line 373
    .line 374
    iget-object v10, v10, Lj6/a;->a:[B

    .line 375
    .line 376
    add-int/lit8 v11, v9, 0x1

    .line 377
    .line 378
    aget-byte v9, v2, v9

    .line 379
    .line 380
    aput-byte v9, v10, v4

    .line 381
    .line 382
    add-int/lit8 v3, v3, 0x1

    .line 383
    .line 384
    move v9, v11

    .line 385
    goto :goto_e

    .line 386
    :cond_16
    const/16 v18, 0x0

    .line 387
    .line 388
    aget-object v3, v5, v18

    .line 389
    .line 390
    iget-object v3, v3, Lj6/a;->a:[B

    .line 391
    .line 392
    array-length v3, v3

    .line 393
    :goto_f
    if-ge v4, v3, :cond_19

    .line 394
    .line 395
    move v10, v9

    .line 396
    const/4 v9, 0x0

    .line 397
    :goto_10
    if-ge v9, v8, :cond_18

    .line 398
    .line 399
    if-ge v9, v7, :cond_17

    .line 400
    .line 401
    move v11, v4

    .line 402
    goto :goto_11

    .line 403
    :cond_17
    add-int/lit8 v11, v4, 0x1

    .line 404
    .line 405
    :goto_11
    aget-object v12, v5, v9

    .line 406
    .line 407
    iget-object v12, v12, Lj6/a;->a:[B

    .line 408
    .line 409
    add-int/lit8 v13, v10, 0x1

    .line 410
    .line 411
    aget-byte v10, v2, v10

    .line 412
    .line 413
    aput-byte v10, v12, v11

    .line 414
    .line 415
    add-int/lit8 v9, v9, 0x1

    .line 416
    .line 417
    move v10, v13

    .line 418
    goto :goto_10

    .line 419
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 420
    .line 421
    move v9, v10

    .line 422
    goto :goto_f

    .line 423
    :cond_19
    const/4 v2, 0x0

    .line 424
    const/4 v3, 0x0

    .line 425
    :goto_12
    if-ge v3, v6, :cond_1a

    .line 426
    .line 427
    aget-object v4, v5, v3

    .line 428
    .line 429
    iget v4, v4, Lj6/a;->b:I

    .line 430
    .line 431
    add-int/2addr v2, v4

    .line 432
    add-int/lit8 v3, v3, 0x1

    .line 433
    .line 434
    goto :goto_12

    .line 435
    :cond_1a
    new-array v8, v2, [B

    .line 436
    .line 437
    const/4 v2, 0x0

    .line 438
    const/4 v3, 0x0

    .line 439
    :goto_13
    if-ge v3, v6, :cond_1e

    .line 440
    .line 441
    aget-object v4, v5, v3

    .line 442
    .line 443
    iget-object v7, v4, Lj6/a;->a:[B

    .line 444
    .line 445
    iget v4, v4, Lj6/a;->b:I

    .line 446
    .line 447
    array-length v9, v7

    .line 448
    new-array v10, v9, [I

    .line 449
    .line 450
    const/4 v11, 0x0

    .line 451
    :goto_14
    if-ge v11, v9, :cond_1b

    .line 452
    .line 453
    aget-byte v12, v7, v11

    .line 454
    .line 455
    and-int/lit16 v12, v12, 0xff

    .line 456
    .line 457
    aput v12, v10, v11

    .line 458
    .line 459
    add-int/lit8 v11, v11, 0x1

    .line 460
    .line 461
    goto :goto_14

    .line 462
    :cond_1b
    move-object/from16 v14, p0

    .line 463
    .line 464
    :try_start_0
    iget-object v9, v14, Lj6/c;->a:Lkb/a;

    .line 465
    .line 466
    array-length v11, v7

    .line 467
    sub-int/2addr v11, v4

    .line 468
    invoke-virtual {v9, v10, v11}, Lkb/a;->Q([II)V
    :try_end_0
    .catch Lu5/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .line 470
    .line 471
    const/4 v9, 0x0

    .line 472
    :goto_15
    if-ge v9, v4, :cond_1c

    .line 473
    .line 474
    aget v11, v10, v9

    .line 475
    .line 476
    int-to-byte v11, v11

    .line 477
    aput-byte v11, v7, v9

    .line 478
    .line 479
    add-int/lit8 v9, v9, 0x1

    .line 480
    .line 481
    goto :goto_15

    .line 482
    :cond_1c
    const/4 v9, 0x0

    .line 483
    :goto_16
    if-ge v9, v4, :cond_1d

    .line 484
    .line 485
    add-int/lit8 v10, v2, 0x1

    .line 486
    .line 487
    aget-byte v11, v7, v9

    .line 488
    .line 489
    aput-byte v11, v8, v2

    .line 490
    .line 491
    add-int/lit8 v9, v9, 0x1

    .line 492
    .line 493
    move v2, v10

    .line 494
    goto :goto_16

    .line 495
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    .line 496
    .line 497
    goto :goto_13

    .line 498
    :catch_0
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    throw v0

    .line 503
    :cond_1e
    move-object/from16 v14, p0

    .line 504
    .line 505
    sget-object v2, Lj6/b;->a:[C

    .line 506
    .line 507
    new-instance v2, Ld7/t;

    .line 508
    .line 509
    invoke-direct {v2, v8}, Ld7/t;-><init>([B)V

    .line 510
    .line 511
    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    const/16 v4, 0x32

    .line 515
    .line 516
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 517
    .line 518
    .line 519
    new-instance v4, Ljava/util/ArrayList;

    .line 520
    .line 521
    const/4 v5, 0x1

    .line 522
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .line 524
    .line 525
    const/4 v6, -0x1

    .line 526
    const/4 v7, -0x1

    .line 527
    const/4 v9, 0x0

    .line 528
    const/16 v25, 0x0

    .line 529
    .line 530
    :goto_17
    :try_start_1
    invoke-virtual {v2}, Ld7/t;->a()I

    .line 531
    .line 532
    .line 533
    move-result v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    const/4 v11, 0x7

    .line 535
    sget-object v12, Lj6/f;->c:Lj6/f;

    .line 536
    .line 537
    const/4 v13, 0x4

    .line 538
    if-ge v10, v13, :cond_20

    .line 539
    .line 540
    :cond_1f
    move-object v10, v12

    .line 541
    goto :goto_18

    .line 542
    :cond_20
    :try_start_2
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    if-eqz v10, :cond_1f

    .line 547
    .line 548
    const/4 v15, 0x1

    .line 549
    if-eq v10, v15, :cond_29

    .line 550
    .line 551
    const/4 v15, 0x2

    .line 552
    if-eq v10, v15, :cond_28

    .line 553
    .line 554
    const/4 v15, 0x3

    .line 555
    if-eq v10, v15, :cond_27

    .line 556
    .line 557
    if-eq v10, v13, :cond_26

    .line 558
    .line 559
    const/4 v13, 0x5

    .line 560
    if-eq v10, v13, :cond_25

    .line 561
    .line 562
    if-eq v10, v11, :cond_24

    .line 563
    .line 564
    const/16 v13, 0x8

    .line 565
    .line 566
    if-eq v10, v13, :cond_23

    .line 567
    .line 568
    const/16 v13, 0x9

    .line 569
    .line 570
    if-eq v10, v13, :cond_22

    .line 571
    .line 572
    const/16 v13, 0xd

    .line 573
    .line 574
    if-ne v10, v13, :cond_21

    .line 575
    .line 576
    sget-object v10, Lj6/f;->l:Lj6/f;

    .line 577
    .line 578
    goto :goto_18

    .line 579
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 580
    .line 581
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 582
    .line 583
    .line 584
    throw v0

    .line 585
    :cond_22
    sget-object v10, Lj6/f;->k:Lj6/f;

    .line 586
    .line 587
    goto :goto_18

    .line 588
    :cond_23
    sget-object v10, Lj6/f;->i:Lj6/f;

    .line 589
    .line 590
    goto :goto_18

    .line 591
    :cond_24
    sget-object v10, Lj6/f;->h:Lj6/f;

    .line 592
    .line 593
    goto :goto_18

    .line 594
    :cond_25
    sget-object v10, Lj6/f;->j:Lj6/f;

    .line 595
    .line 596
    goto :goto_18

    .line 597
    :cond_26
    sget-object v10, Lj6/f;->g:Lj6/f;

    .line 598
    .line 599
    goto :goto_18

    .line 600
    :cond_27
    sget-object v10, Lj6/f;->f:Lj6/f;

    .line 601
    .line 602
    goto :goto_18

    .line 603
    :cond_28
    sget-object v10, Lj6/f;->e:Lj6/f;

    .line 604
    .line 605
    goto :goto_18

    .line 606
    :cond_29
    sget-object v10, Lj6/f;->d:Lj6/f;

    .line 607
    .line 608
    :goto_18
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 609
    .line 610
    .line 611
    move-result v13

    .line 612
    if-eqz v13, :cond_39

    .line 613
    .line 614
    const/16 v15, 0x10

    .line 615
    .line 616
    const/4 v5, 0x3

    .line 617
    const/16 v18, 0x0

    .line 618
    .line 619
    if-eq v13, v5, :cond_37

    .line 620
    .line 621
    const/4 v5, 0x5

    .line 622
    if-eq v13, v5, :cond_31

    .line 623
    .line 624
    if-eq v13, v11, :cond_2f

    .line 625
    .line 626
    const/16 v11, 0x8

    .line 627
    .line 628
    if-eq v13, v11, :cond_2f

    .line 629
    .line 630
    const/16 v11, 0x9

    .line 631
    .line 632
    if-eq v13, v11, :cond_2e

    .line 633
    .line 634
    invoke-virtual {v10, v0}, Lj6/f;->a(Lj6/h;)I

    .line 635
    .line 636
    .line 637
    move-result v13

    .line 638
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 639
    .line 640
    .line 641
    move-result v13

    .line 642
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 643
    .line 644
    .line 645
    move-result v15

    .line 646
    const/4 v5, 0x1

    .line 647
    if-eq v15, v5, :cond_2d

    .line 648
    .line 649
    const/4 v5, 0x2

    .line 650
    if-eq v15, v5, :cond_2c

    .line 651
    .line 652
    const/4 v5, 0x4

    .line 653
    if-eq v15, v5, :cond_2b

    .line 654
    .line 655
    const/4 v5, 0x6

    .line 656
    if-ne v15, v5, :cond_2a

    .line 657
    .line 658
    invoke-static {v2, v3, v13}, Lj6/b;->d(Ld7/t;Ljava/lang/StringBuilder;I)V

    .line 659
    .line 660
    .line 661
    move-object/from16 v26, v4

    .line 662
    .line 663
    goto :goto_19

    .line 664
    :cond_2a
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    throw v0

    .line 669
    :cond_2b
    move-object/from16 v27, p2

    .line 670
    .line 671
    move-object/from16 v22, v2

    .line 672
    .line 673
    move-object/from16 v23, v3

    .line 674
    .line 675
    move-object/from16 v26, v4

    .line 676
    .line 677
    move/from16 v24, v13

    .line 678
    .line 679
    const/4 v5, 0x6

    .line 680
    invoke-static/range {v22 .. v27}, Lj6/b;->b(Ld7/t;Ljava/lang/StringBuilder;ILs5/c;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 681
    .line 682
    .line 683
    goto :goto_19

    .line 684
    :cond_2c
    move-object/from16 v26, v4

    .line 685
    .line 686
    move v4, v13

    .line 687
    const/4 v5, 0x6

    .line 688
    invoke-static {v2, v3, v4, v9}, Lj6/b;->a(Ld7/t;Ljava/lang/StringBuilder;IZ)V

    .line 689
    .line 690
    .line 691
    goto :goto_19

    .line 692
    :cond_2d
    move-object/from16 v26, v4

    .line 693
    .line 694
    move v4, v13

    .line 695
    const/4 v5, 0x6

    .line 696
    invoke-static {v2, v3, v4}, Lj6/b;->e(Ld7/t;Ljava/lang/StringBuilder;I)V

    .line 697
    .line 698
    .line 699
    goto :goto_19

    .line 700
    :cond_2e
    move-object/from16 v26, v4

    .line 701
    .line 702
    const/4 v5, 0x6

    .line 703
    const/4 v13, 0x4

    .line 704
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    invoke-virtual {v10, v0}, Lj6/f;->a(Lj6/h;)I

    .line 709
    .line 710
    .line 711
    move-result v13

    .line 712
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 713
    .line 714
    .line 715
    move-result v13

    .line 716
    const/4 v15, 0x1

    .line 717
    if-ne v4, v15, :cond_30

    .line 718
    .line 719
    invoke-static {v2, v3, v13}, Lj6/b;->c(Ld7/t;Ljava/lang/StringBuilder;I)V

    .line 720
    .line 721
    .line 722
    goto :goto_19

    .line 723
    :cond_2f
    move-object/from16 v26, v4

    .line 724
    .line 725
    const/4 v5, 0x6

    .line 726
    const/16 v11, 0x9

    .line 727
    .line 728
    const/4 v9, 0x1

    .line 729
    :cond_30
    :goto_19
    const/16 v13, 0x8

    .line 730
    .line 731
    goto/16 :goto_1c

    .line 732
    .line 733
    :cond_31
    move-object/from16 v26, v4

    .line 734
    .line 735
    const/4 v5, 0x6

    .line 736
    const/16 v11, 0x9

    .line 737
    .line 738
    const/16 v13, 0x8

    .line 739
    .line 740
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 741
    .line 742
    .line 743
    move-result v4

    .line 744
    and-int/lit16 v13, v4, 0x80

    .line 745
    .line 746
    if-nez v13, :cond_32

    .line 747
    .line 748
    and-int/lit8 v4, v4, 0x7f

    .line 749
    .line 750
    goto :goto_1b

    .line 751
    :cond_32
    and-int/lit16 v13, v4, 0xc0

    .line 752
    .line 753
    const/16 v5, 0x80

    .line 754
    .line 755
    if-ne v13, v5, :cond_33

    .line 756
    .line 757
    const/16 v13, 0x8

    .line 758
    .line 759
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 760
    .line 761
    .line 762
    move-result v5

    .line 763
    and-int/lit8 v4, v4, 0x3f

    .line 764
    .line 765
    shl-int/2addr v4, v13

    .line 766
    :goto_1a
    or-int/2addr v4, v5

    .line 767
    goto :goto_1b

    .line 768
    :cond_33
    and-int/lit16 v5, v4, 0xe0

    .line 769
    .line 770
    const/16 v13, 0xc0

    .line 771
    .line 772
    if-ne v5, v13, :cond_36

    .line 773
    .line 774
    invoke-virtual {v2, v15}, Ld7/t;->b(I)I

    .line 775
    .line 776
    .line 777
    move-result v5

    .line 778
    and-int/lit8 v4, v4, 0x1f

    .line 779
    .line 780
    shl-int/2addr v4, v15

    .line 781
    goto :goto_1a

    .line 782
    :goto_1b
    sget-object v5, Ls5/c;->c:Ljava/util/HashMap;

    .line 783
    .line 784
    if-ltz v4, :cond_35

    .line 785
    .line 786
    const/16 v5, 0x384

    .line 787
    .line 788
    if-ge v4, v5, :cond_35

    .line 789
    .line 790
    sget-object v5, Ls5/c;->c:Ljava/util/HashMap;

    .line 791
    .line 792
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    move-object/from16 v25, v4

    .line 801
    .line 802
    check-cast v25, Ls5/c;

    .line 803
    .line 804
    if-eqz v25, :cond_34

    .line 805
    .line 806
    goto :goto_19

    .line 807
    :cond_34
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    throw v0

    .line 812
    :cond_35
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    throw v0

    .line 817
    :cond_36
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    throw v0

    .line 822
    :cond_37
    move-object/from16 v26, v4

    .line 823
    .line 824
    const/16 v11, 0x9

    .line 825
    .line 826
    invoke-virtual {v2}, Ld7/t;->a()I

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    if-lt v4, v15, :cond_38

    .line 831
    .line 832
    const/16 v13, 0x8

    .line 833
    .line 834
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 835
    .line 836
    .line 837
    move-result v6

    .line 838
    invoke-virtual {v2, v13}, Ld7/t;->b(I)I

    .line 839
    .line 840
    .line 841
    move-result v7

    .line 842
    goto :goto_1c

    .line 843
    :cond_38
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 848
    :cond_39
    move-object/from16 v26, v4

    .line 849
    .line 850
    const/16 v11, 0x9

    .line 851
    .line 852
    const/16 v13, 0x8

    .line 853
    .line 854
    const/16 v18, 0x0

    .line 855
    .line 856
    :goto_1c
    move v13, v7

    .line 857
    if-ne v10, v12, :cond_3f

    .line 858
    .line 859
    new-instance v7, Ls5/d;

    .line 860
    .line 861
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v9

    .line 865
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    if-eqz v0, :cond_3a

    .line 870
    .line 871
    move-object/from16 v10, v18

    .line 872
    .line 873
    :goto_1d
    const/4 v15, 0x1

    .line 874
    goto :goto_1e

    .line 875
    :cond_3a
    move-object/from16 v10, v26

    .line 876
    .line 877
    goto :goto_1d

    .line 878
    :goto_1e
    if-eq v1, v15, :cond_3e

    .line 879
    .line 880
    const/4 v5, 0x2

    .line 881
    if-eq v1, v5, :cond_3d

    .line 882
    .line 883
    const/4 v4, 0x3

    .line 884
    if-eq v1, v4, :cond_3c

    .line 885
    .line 886
    const/4 v12, 0x4

    .line 887
    if-ne v1, v12, :cond_3b

    .line 888
    .line 889
    const-string v0, "H"

    .line 890
    .line 891
    :goto_1f
    move-object v11, v0

    .line 892
    move v12, v6

    .line 893
    goto :goto_20

    .line 894
    :cond_3b
    throw v18

    .line 895
    :cond_3c
    const-string v0, "Q"

    .line 896
    .line 897
    goto :goto_1f

    .line 898
    :cond_3d
    const-string v0, "M"

    .line 899
    .line 900
    goto :goto_1f

    .line 901
    :cond_3e
    const-string v0, "L"

    .line 902
    .line 903
    goto :goto_1f

    .line 904
    :goto_20
    invoke-direct/range {v7 .. v13}, Ls5/d;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 905
    .line 906
    .line 907
    return-object v7

    .line 908
    :cond_3f
    const/16 v17, 0x8

    .line 909
    .line 910
    move-object/from16 v4, v26

    .line 911
    .line 912
    goto/16 :goto_17

    .line 913
    .line 914
    :catch_1
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    throw v0

    .line 919
    :cond_40
    move-object/from16 v14, p0

    .line 920
    .line 921
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 922
    .line 923
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 924
    .line 925
    .line 926
    throw v0

    .line 927
    :cond_41
    move-object/from16 v14, p0

    .line 928
    .line 929
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    throw v0
.end method

.method public c(Ls5/b;)Ls5/d;
    .locals 24

    .line 1
    new-instance v0, La2/b;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0, v1}, La2/b;-><init>(Ls5/b;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, La2/b;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lw5/b;

    .line 11
    .line 12
    iget-object v2, v0, La2/b;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ls5/b;

    .line 15
    .line 16
    iget v3, v1, Lw5/b;->g:I

    .line 17
    .line 18
    new-array v4, v3, [B

    .line 19
    .line 20
    iget-object v5, v0, La2/b;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Ls5/b;

    .line 23
    .line 24
    iget v6, v5, Ls5/b;->b:I

    .line 25
    .line 26
    iget v5, v5, Ls5/b;->a:I

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v9, 0x4

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v14, 0x0

    .line 35
    const/4 v15, 0x0

    .line 36
    :goto_0
    if-ne v9, v6, :cond_7

    .line 37
    .line 38
    if-nez v10, :cond_7

    .line 39
    .line 40
    if-nez v11, :cond_7

    .line 41
    .line 42
    add-int/lit8 v11, v12, 0x1

    .line 43
    .line 44
    const/16 v18, 0x1

    .line 45
    .line 46
    add-int/lit8 v8, v6, -0x1

    .line 47
    .line 48
    invoke-virtual {v0, v8, v7, v6, v5}, La2/b;->U(IIII)Z

    .line 49
    .line 50
    .line 51
    move-result v19

    .line 52
    shl-int/lit8 v19, v19, 0x1

    .line 53
    .line 54
    const/4 v7, 0x1

    .line 55
    invoke-virtual {v0, v8, v7, v6, v5}, La2/b;->U(IIII)Z

    .line 56
    .line 57
    .line 58
    move-result v18

    .line 59
    if-eqz v18, :cond_0

    .line 60
    .line 61
    or-int/lit8 v19, v19, 0x1

    .line 62
    .line 63
    :cond_0
    shl-int/lit8 v18, v19, 0x1

    .line 64
    .line 65
    const/4 v7, 0x2

    .line 66
    const/16 v19, 0x1

    .line 67
    .line 68
    invoke-virtual {v0, v8, v7, v6, v5}, La2/b;->U(IIII)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    or-int/lit8 v18, v18, 0x1

    .line 75
    .line 76
    :cond_1
    shl-int/lit8 v7, v18, 0x1

    .line 77
    .line 78
    add-int/lit8 v8, v5, -0x2

    .line 79
    .line 80
    move-object/from16 v21, v4

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    invoke-virtual {v0, v4, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_2

    .line 88
    .line 89
    or-int/lit8 v7, v7, 0x1

    .line 90
    .line 91
    :cond_2
    shl-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    add-int/lit8 v8, v5, -0x1

    .line 94
    .line 95
    invoke-virtual {v0, v4, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 96
    .line 97
    .line 98
    move-result v18

    .line 99
    if-eqz v18, :cond_3

    .line 100
    .line 101
    or-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    :cond_3
    shl-int/lit8 v4, v7, 0x1

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 107
    .line 108
    .line 109
    move-result v18

    .line 110
    if-eqz v18, :cond_4

    .line 111
    .line 112
    or-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    :cond_4
    shl-int/2addr v4, v7

    .line 115
    const/4 v7, 0x2

    .line 116
    const/16 v18, 0x1

    .line 117
    .line 118
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 119
    .line 120
    .line 121
    move-result v19

    .line 122
    if-eqz v19, :cond_5

    .line 123
    .line 124
    or-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    :cond_5
    shl-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    const/4 v7, 0x3

    .line 129
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_6

    .line 134
    .line 135
    or-int/lit8 v4, v4, 0x1

    .line 136
    .line 137
    :cond_6
    int-to-byte v4, v4

    .line 138
    aput-byte v4, v21, v12

    .line 139
    .line 140
    add-int/lit8 v9, v9, -0x2

    .line 141
    .line 142
    add-int/lit8 v10, v10, 0x2

    .line 143
    .line 144
    move v12, v11

    .line 145
    const/4 v11, 0x1

    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_7
    move-object/from16 v21, v4

    .line 149
    .line 150
    add-int/lit8 v4, v6, -0x2

    .line 151
    .line 152
    if-ne v9, v4, :cond_f

    .line 153
    .line 154
    if-nez v10, :cond_f

    .line 155
    .line 156
    and-int/lit8 v7, v5, 0x3

    .line 157
    .line 158
    if-eqz v7, :cond_f

    .line 159
    .line 160
    if-nez v13, :cond_f

    .line 161
    .line 162
    add-int/lit8 v7, v12, 0x1

    .line 163
    .line 164
    add-int/lit8 v8, v6, -0x3

    .line 165
    .line 166
    const/4 v13, 0x0

    .line 167
    invoke-virtual {v0, v8, v13, v6, v5}, La2/b;->U(IIII)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    move/from16 v19, v7

    .line 172
    .line 173
    const/4 v7, 0x1

    .line 174
    shl-int/2addr v8, v7

    .line 175
    invoke-virtual {v0, v4, v13, v6, v5}, La2/b;->U(IIII)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_8

    .line 180
    .line 181
    or-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    :cond_8
    shl-int/lit8 v4, v8, 0x1

    .line 184
    .line 185
    add-int/lit8 v8, v6, -0x1

    .line 186
    .line 187
    invoke-virtual {v0, v8, v13, v6, v5}, La2/b;->U(IIII)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_9

    .line 192
    .line 193
    or-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    :cond_9
    shl-int/2addr v4, v7

    .line 196
    add-int/lit8 v8, v5, -0x4

    .line 197
    .line 198
    invoke-virtual {v0, v13, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_a

    .line 203
    .line 204
    or-int/lit8 v4, v4, 0x1

    .line 205
    .line 206
    :cond_a
    shl-int/2addr v4, v7

    .line 207
    add-int/lit8 v8, v5, -0x3

    .line 208
    .line 209
    invoke-virtual {v0, v13, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    if-eqz v8, :cond_b

    .line 214
    .line 215
    or-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    :cond_b
    shl-int/2addr v4, v7

    .line 218
    add-int/lit8 v8, v5, -0x2

    .line 219
    .line 220
    invoke-virtual {v0, v13, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_c

    .line 225
    .line 226
    or-int/lit8 v4, v4, 0x1

    .line 227
    .line 228
    :cond_c
    shl-int/2addr v4, v7

    .line 229
    add-int/lit8 v8, v5, -0x1

    .line 230
    .line 231
    invoke-virtual {v0, v13, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 232
    .line 233
    .line 234
    move-result v18

    .line 235
    if-eqz v18, :cond_d

    .line 236
    .line 237
    or-int/lit8 v4, v4, 0x1

    .line 238
    .line 239
    :cond_d
    shl-int/2addr v4, v7

    .line 240
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_e

    .line 245
    .line 246
    or-int/lit8 v4, v4, 0x1

    .line 247
    .line 248
    :cond_e
    int-to-byte v4, v4

    .line 249
    aput-byte v4, v21, v12

    .line 250
    .line 251
    add-int/lit8 v9, v9, -0x2

    .line 252
    .line 253
    add-int/lit8 v10, v10, 0x2

    .line 254
    .line 255
    move/from16 v12, v19

    .line 256
    .line 257
    const/4 v13, 0x1

    .line 258
    goto/16 :goto_6

    .line 259
    .line 260
    :cond_f
    add-int/lit8 v7, v6, 0x4

    .line 261
    .line 262
    if-ne v9, v7, :cond_17

    .line 263
    .line 264
    const/4 v7, 0x2

    .line 265
    if-ne v10, v7, :cond_17

    .line 266
    .line 267
    and-int/lit8 v7, v5, 0x7

    .line 268
    .line 269
    if-nez v7, :cond_17

    .line 270
    .line 271
    if-nez v14, :cond_17

    .line 272
    .line 273
    add-int/lit8 v4, v12, 0x1

    .line 274
    .line 275
    add-int/lit8 v7, v6, -0x1

    .line 276
    .line 277
    const/4 v8, 0x0

    .line 278
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    const/4 v8, 0x1

    .line 283
    shl-int/2addr v14, v8

    .line 284
    const/16 v18, 0x1

    .line 285
    .line 286
    add-int/lit8 v8, v5, -0x1

    .line 287
    .line 288
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_10

    .line 293
    .line 294
    or-int/lit8 v14, v14, 0x1

    .line 295
    .line 296
    :cond_10
    shl-int/lit8 v7, v14, 0x1

    .line 297
    .line 298
    add-int/lit8 v14, v5, -0x3

    .line 299
    .line 300
    move/from16 v19, v4

    .line 301
    .line 302
    const/4 v4, 0x0

    .line 303
    invoke-virtual {v0, v4, v14, v6, v5}, La2/b;->U(IIII)Z

    .line 304
    .line 305
    .line 306
    move-result v20

    .line 307
    if-eqz v20, :cond_11

    .line 308
    .line 309
    or-int/lit8 v7, v7, 0x1

    .line 310
    .line 311
    :cond_11
    shl-int/lit8 v7, v7, 0x1

    .line 312
    .line 313
    move/from16 v20, v7

    .line 314
    .line 315
    add-int/lit8 v7, v5, -0x2

    .line 316
    .line 317
    invoke-virtual {v0, v4, v7, v6, v5}, La2/b;->U(IIII)Z

    .line 318
    .line 319
    .line 320
    move-result v22

    .line 321
    if-eqz v22, :cond_12

    .line 322
    .line 323
    or-int/lit8 v20, v20, 0x1

    .line 324
    .line 325
    :cond_12
    shl-int/lit8 v22, v20, 0x1

    .line 326
    .line 327
    invoke-virtual {v0, v4, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 328
    .line 329
    .line 330
    move-result v23

    .line 331
    if-eqz v23, :cond_13

    .line 332
    .line 333
    or-int/lit8 v22, v22, 0x1

    .line 334
    .line 335
    :cond_13
    shl-int/lit8 v4, v22, 0x1

    .line 336
    .line 337
    move/from16 v22, v4

    .line 338
    .line 339
    const/4 v4, 0x1

    .line 340
    invoke-virtual {v0, v4, v14, v6, v5}, La2/b;->U(IIII)Z

    .line 341
    .line 342
    .line 343
    move-result v14

    .line 344
    if-eqz v14, :cond_14

    .line 345
    .line 346
    or-int/lit8 v14, v22, 0x1

    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_14
    move/from16 v14, v22

    .line 350
    .line 351
    :goto_1
    shl-int/2addr v14, v4

    .line 352
    invoke-virtual {v0, v4, v7, v6, v5}, La2/b;->U(IIII)Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-eqz v7, :cond_15

    .line 357
    .line 358
    or-int/lit8 v14, v14, 0x1

    .line 359
    .line 360
    :cond_15
    shl-int/lit8 v7, v14, 0x1

    .line 361
    .line 362
    invoke-virtual {v0, v4, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    if-eqz v8, :cond_16

    .line 367
    .line 368
    or-int/lit8 v7, v7, 0x1

    .line 369
    .line 370
    :cond_16
    int-to-byte v4, v7

    .line 371
    aput-byte v4, v21, v12

    .line 372
    .line 373
    add-int/lit8 v9, v9, -0x2

    .line 374
    .line 375
    add-int/lit8 v10, v10, 0x2

    .line 376
    .line 377
    move/from16 v12, v19

    .line 378
    .line 379
    const/4 v14, 0x1

    .line 380
    goto/16 :goto_6

    .line 381
    .line 382
    :cond_17
    if-ne v9, v4, :cond_1f

    .line 383
    .line 384
    if-nez v10, :cond_1f

    .line 385
    .line 386
    and-int/lit8 v7, v5, 0x7

    .line 387
    .line 388
    const/4 v8, 0x4

    .line 389
    if-ne v7, v8, :cond_1f

    .line 390
    .line 391
    if-nez v15, :cond_1f

    .line 392
    .line 393
    add-int/lit8 v7, v12, 0x1

    .line 394
    .line 395
    add-int/lit8 v8, v6, -0x3

    .line 396
    .line 397
    const/4 v15, 0x0

    .line 398
    invoke-virtual {v0, v8, v15, v6, v5}, La2/b;->U(IIII)Z

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    move/from16 v19, v7

    .line 403
    .line 404
    const/4 v7, 0x1

    .line 405
    shl-int/2addr v8, v7

    .line 406
    invoke-virtual {v0, v4, v15, v6, v5}, La2/b;->U(IIII)Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-eqz v4, :cond_18

    .line 411
    .line 412
    or-int/lit8 v8, v8, 0x1

    .line 413
    .line 414
    :cond_18
    shl-int/lit8 v4, v8, 0x1

    .line 415
    .line 416
    add-int/lit8 v8, v6, -0x1

    .line 417
    .line 418
    invoke-virtual {v0, v8, v15, v6, v5}, La2/b;->U(IIII)Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-eqz v8, :cond_19

    .line 423
    .line 424
    or-int/lit8 v4, v4, 0x1

    .line 425
    .line 426
    :cond_19
    shl-int/2addr v4, v7

    .line 427
    add-int/lit8 v8, v5, -0x2

    .line 428
    .line 429
    invoke-virtual {v0, v15, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    if-eqz v8, :cond_1a

    .line 434
    .line 435
    or-int/lit8 v4, v4, 0x1

    .line 436
    .line 437
    :cond_1a
    shl-int/2addr v4, v7

    .line 438
    add-int/lit8 v8, v5, -0x1

    .line 439
    .line 440
    invoke-virtual {v0, v15, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 441
    .line 442
    .line 443
    move-result v18

    .line 444
    if-eqz v18, :cond_1b

    .line 445
    .line 446
    or-int/lit8 v4, v4, 0x1

    .line 447
    .line 448
    :cond_1b
    shl-int/2addr v4, v7

    .line 449
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 450
    .line 451
    .line 452
    move-result v15

    .line 453
    if-eqz v15, :cond_1c

    .line 454
    .line 455
    or-int/lit8 v4, v4, 0x1

    .line 456
    .line 457
    :cond_1c
    shl-int/2addr v4, v7

    .line 458
    const/4 v15, 0x2

    .line 459
    invoke-virtual {v0, v15, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 460
    .line 461
    .line 462
    move-result v18

    .line 463
    if-eqz v18, :cond_1d

    .line 464
    .line 465
    or-int/lit8 v4, v4, 0x1

    .line 466
    .line 467
    :cond_1d
    shl-int/2addr v4, v7

    .line 468
    const/4 v7, 0x3

    .line 469
    invoke-virtual {v0, v7, v8, v6, v5}, La2/b;->U(IIII)Z

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    if-eqz v8, :cond_1e

    .line 474
    .line 475
    or-int/lit8 v4, v4, 0x1

    .line 476
    .line 477
    :cond_1e
    int-to-byte v4, v4

    .line 478
    aput-byte v4, v21, v12

    .line 479
    .line 480
    add-int/lit8 v9, v9, -0x2

    .line 481
    .line 482
    add-int/lit8 v10, v10, 0x2

    .line 483
    .line 484
    move/from16 v12, v19

    .line 485
    .line 486
    const/4 v15, 0x1

    .line 487
    goto :goto_6

    .line 488
    :cond_1f
    :goto_2
    if-ge v9, v6, :cond_20

    .line 489
    .line 490
    if-ltz v10, :cond_20

    .line 491
    .line 492
    invoke-virtual {v2, v10, v9}, Ls5/b;->b(II)Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    if-nez v4, :cond_20

    .line 497
    .line 498
    add-int/lit8 v4, v12, 0x1

    .line 499
    .line 500
    invoke-virtual {v0, v9, v10, v6, v5}, La2/b;->V(IIII)I

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    int-to-byte v7, v7

    .line 505
    aput-byte v7, v21, v12

    .line 506
    .line 507
    move v12, v4

    .line 508
    :cond_20
    add-int/lit8 v4, v9, -0x2

    .line 509
    .line 510
    add-int/lit8 v7, v10, 0x2

    .line 511
    .line 512
    if-ltz v4, :cond_22

    .line 513
    .line 514
    if-lt v7, v5, :cond_21

    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_21
    move v9, v4

    .line 518
    move v10, v7

    .line 519
    goto :goto_2

    .line 520
    :cond_22
    :goto_3
    add-int/lit8 v9, v9, -0x1

    .line 521
    .line 522
    add-int/lit8 v10, v10, 0x5

    .line 523
    .line 524
    :goto_4
    if-ltz v9, :cond_23

    .line 525
    .line 526
    if-ge v10, v5, :cond_23

    .line 527
    .line 528
    invoke-virtual {v2, v10, v9}, Ls5/b;->b(II)Z

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    if-nez v4, :cond_23

    .line 533
    .line 534
    add-int/lit8 v4, v12, 0x1

    .line 535
    .line 536
    invoke-virtual {v0, v9, v10, v6, v5}, La2/b;->V(IIII)I

    .line 537
    .line 538
    .line 539
    move-result v7

    .line 540
    int-to-byte v7, v7

    .line 541
    aput-byte v7, v21, v12

    .line 542
    .line 543
    move v12, v4

    .line 544
    :cond_23
    add-int/lit8 v4, v9, 0x2

    .line 545
    .line 546
    add-int/lit8 v7, v10, -0x2

    .line 547
    .line 548
    if-ge v4, v6, :cond_25

    .line 549
    .line 550
    if-gez v7, :cond_24

    .line 551
    .line 552
    goto :goto_5

    .line 553
    :cond_24
    move v9, v4

    .line 554
    move v10, v7

    .line 555
    goto :goto_4

    .line 556
    :cond_25
    :goto_5
    add-int/lit8 v9, v9, 0x5

    .line 557
    .line 558
    add-int/lit8 v10, v10, -0x1

    .line 559
    .line 560
    :goto_6
    if-lt v9, v6, :cond_82

    .line 561
    .line 562
    if-lt v10, v5, :cond_82

    .line 563
    .line 564
    iget v0, v1, Lw5/b;->g:I

    .line 565
    .line 566
    if-ne v12, v0, :cond_81

    .line 567
    .line 568
    iget-object v0, v1, Lw5/b;->f:Lj/g;

    .line 569
    .line 570
    iget-object v2, v0, Lj/g;->c:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v2, [Ld6/i;

    .line 573
    .line 574
    iget v0, v0, Lj/g;->b:I

    .line 575
    .line 576
    array-length v4, v2

    .line 577
    const/4 v5, 0x0

    .line 578
    const/4 v6, 0x0

    .line 579
    :goto_7
    if-ge v5, v4, :cond_26

    .line 580
    .line 581
    aget-object v7, v2, v5

    .line 582
    .line 583
    iget v7, v7, Ld6/i;->b:I

    .line 584
    .line 585
    add-int/2addr v6, v7

    .line 586
    add-int/lit8 v5, v5, 0x1

    .line 587
    .line 588
    goto :goto_7

    .line 589
    :cond_26
    new-array v4, v6, [Lj6/a;

    .line 590
    .line 591
    array-length v5, v2

    .line 592
    const/4 v7, 0x0

    .line 593
    const/4 v8, 0x0

    .line 594
    :goto_8
    if-ge v7, v5, :cond_28

    .line 595
    .line 596
    aget-object v9, v2, v7

    .line 597
    .line 598
    const/4 v10, 0x0

    .line 599
    :goto_9
    iget v11, v9, Ld6/i;->b:I

    .line 600
    .line 601
    if-ge v10, v11, :cond_27

    .line 602
    .line 603
    iget v11, v9, Ld6/i;->c:I

    .line 604
    .line 605
    add-int v12, v0, v11

    .line 606
    .line 607
    add-int/lit8 v13, v8, 0x1

    .line 608
    .line 609
    new-instance v14, Lj6/a;

    .line 610
    .line 611
    new-array v12, v12, [B

    .line 612
    .line 613
    invoke-direct {v14, v12, v11}, Lj6/a;-><init>([BI)V

    .line 614
    .line 615
    .line 616
    aput-object v14, v4, v8

    .line 617
    .line 618
    add-int/lit8 v10, v10, 0x1

    .line 619
    .line 620
    move v8, v13

    .line 621
    goto :goto_9

    .line 622
    :cond_27
    add-int/lit8 v7, v7, 0x1

    .line 623
    .line 624
    goto :goto_8

    .line 625
    :cond_28
    const/16 v20, 0x0

    .line 626
    .line 627
    aget-object v2, v4, v20

    .line 628
    .line 629
    iget-object v2, v2, Lj6/a;->a:[B

    .line 630
    .line 631
    array-length v2, v2

    .line 632
    sub-int/2addr v2, v0

    .line 633
    add-int/lit8 v0, v2, -0x1

    .line 634
    .line 635
    const/4 v5, 0x0

    .line 636
    const/4 v7, 0x0

    .line 637
    :goto_a
    if-ge v5, v0, :cond_2a

    .line 638
    .line 639
    const/4 v9, 0x0

    .line 640
    :goto_b
    if-ge v9, v8, :cond_29

    .line 641
    .line 642
    aget-object v10, v4, v9

    .line 643
    .line 644
    iget-object v10, v10, Lj6/a;->a:[B

    .line 645
    .line 646
    add-int/lit8 v11, v7, 0x1

    .line 647
    .line 648
    aget-byte v7, v21, v7

    .line 649
    .line 650
    aput-byte v7, v10, v5

    .line 651
    .line 652
    add-int/lit8 v9, v9, 0x1

    .line 653
    .line 654
    move v7, v11

    .line 655
    goto :goto_b

    .line 656
    :cond_29
    add-int/lit8 v5, v5, 0x1

    .line 657
    .line 658
    goto :goto_a

    .line 659
    :cond_2a
    iget v1, v1, Lw5/b;->a:I

    .line 660
    .line 661
    const/16 v5, 0x18

    .line 662
    .line 663
    if-ne v1, v5, :cond_2b

    .line 664
    .line 665
    const/4 v1, 0x1

    .line 666
    goto :goto_c

    .line 667
    :cond_2b
    const/4 v1, 0x0

    .line 668
    :goto_c
    const/16 v5, 0x8

    .line 669
    .line 670
    if-eqz v1, :cond_2c

    .line 671
    .line 672
    const/16 v9, 0x8

    .line 673
    .line 674
    goto :goto_d

    .line 675
    :cond_2c
    move v9, v8

    .line 676
    :goto_d
    const/4 v10, 0x0

    .line 677
    :goto_e
    if-ge v10, v9, :cond_2d

    .line 678
    .line 679
    aget-object v11, v4, v10

    .line 680
    .line 681
    iget-object v11, v11, Lj6/a;->a:[B

    .line 682
    .line 683
    add-int/lit8 v12, v7, 0x1

    .line 684
    .line 685
    aget-byte v7, v21, v7

    .line 686
    .line 687
    aput-byte v7, v11, v0

    .line 688
    .line 689
    add-int/lit8 v10, v10, 0x1

    .line 690
    .line 691
    move v7, v12

    .line 692
    goto :goto_e

    .line 693
    :cond_2d
    const/16 v20, 0x0

    .line 694
    .line 695
    aget-object v0, v4, v20

    .line 696
    .line 697
    iget-object v0, v0, Lj6/a;->a:[B

    .line 698
    .line 699
    array-length v0, v0

    .line 700
    :goto_f
    const/4 v9, 0x7

    .line 701
    if-ge v2, v0, :cond_31

    .line 702
    .line 703
    const/4 v10, 0x0

    .line 704
    :goto_10
    if-ge v10, v8, :cond_30

    .line 705
    .line 706
    if-eqz v1, :cond_2e

    .line 707
    .line 708
    add-int/lit8 v11, v10, 0x8

    .line 709
    .line 710
    rem-int/2addr v11, v8

    .line 711
    goto :goto_11

    .line 712
    :cond_2e
    move v11, v10

    .line 713
    :goto_11
    if-eqz v1, :cond_2f

    .line 714
    .line 715
    if-le v11, v9, :cond_2f

    .line 716
    .line 717
    add-int/lit8 v12, v2, -0x1

    .line 718
    .line 719
    goto :goto_12

    .line 720
    :cond_2f
    move v12, v2

    .line 721
    :goto_12
    aget-object v11, v4, v11

    .line 722
    .line 723
    iget-object v11, v11, Lj6/a;->a:[B

    .line 724
    .line 725
    add-int/lit8 v13, v7, 0x1

    .line 726
    .line 727
    aget-byte v7, v21, v7

    .line 728
    .line 729
    aput-byte v7, v11, v12

    .line 730
    .line 731
    add-int/lit8 v10, v10, 0x1

    .line 732
    .line 733
    move v7, v13

    .line 734
    goto :goto_10

    .line 735
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 736
    .line 737
    goto :goto_f

    .line 738
    :cond_31
    if-ne v7, v3, :cond_80

    .line 739
    .line 740
    const/4 v0, 0x0

    .line 741
    const/4 v1, 0x0

    .line 742
    :goto_13
    if-ge v0, v6, :cond_32

    .line 743
    .line 744
    aget-object v2, v4, v0

    .line 745
    .line 746
    iget v2, v2, Lj6/a;->b:I

    .line 747
    .line 748
    add-int/2addr v1, v2

    .line 749
    add-int/lit8 v0, v0, 0x1

    .line 750
    .line 751
    goto :goto_13

    .line 752
    :cond_32
    new-array v0, v1, [B

    .line 753
    .line 754
    const/4 v1, 0x0

    .line 755
    :goto_14
    if-ge v1, v6, :cond_36

    .line 756
    .line 757
    aget-object v2, v4, v1

    .line 758
    .line 759
    iget-object v3, v2, Lj6/a;->a:[B

    .line 760
    .line 761
    iget v2, v2, Lj6/a;->b:I

    .line 762
    .line 763
    array-length v7, v3

    .line 764
    new-array v8, v7, [I

    .line 765
    .line 766
    const/4 v10, 0x0

    .line 767
    :goto_15
    if-ge v10, v7, :cond_33

    .line 768
    .line 769
    aget-byte v11, v3, v10

    .line 770
    .line 771
    and-int/lit16 v11, v11, 0xff

    .line 772
    .line 773
    aput v11, v8, v10

    .line 774
    .line 775
    add-int/lit8 v10, v10, 0x1

    .line 776
    .line 777
    goto :goto_15

    .line 778
    :cond_33
    move-object/from16 v10, p0

    .line 779
    .line 780
    :try_start_0
    iget-object v7, v10, Lj6/c;->a:Lkb/a;

    .line 781
    .line 782
    array-length v11, v3

    .line 783
    sub-int/2addr v11, v2

    .line 784
    invoke-virtual {v7, v8, v11}, Lkb/a;->Q([II)V
    :try_end_0
    .catch Lu5/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .line 786
    .line 787
    const/4 v7, 0x0

    .line 788
    :goto_16
    if-ge v7, v2, :cond_34

    .line 789
    .line 790
    aget v11, v8, v7

    .line 791
    .line 792
    int-to-byte v11, v11

    .line 793
    aput-byte v11, v3, v7

    .line 794
    .line 795
    add-int/lit8 v7, v7, 0x1

    .line 796
    .line 797
    goto :goto_16

    .line 798
    :cond_34
    const/4 v7, 0x0

    .line 799
    :goto_17
    if-ge v7, v2, :cond_35

    .line 800
    .line 801
    mul-int v8, v7, v6

    .line 802
    .line 803
    add-int/2addr v8, v1

    .line 804
    aget-byte v11, v3, v7

    .line 805
    .line 806
    aput-byte v11, v0, v8

    .line 807
    .line 808
    add-int/lit8 v7, v7, 0x1

    .line 809
    .line 810
    goto :goto_17

    .line 811
    :cond_35
    add-int/lit8 v1, v1, 0x1

    .line 812
    .line 813
    goto :goto_14

    .line 814
    :catch_0
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    throw v0

    .line 819
    :cond_36
    move-object/from16 v10, p0

    .line 820
    .line 821
    new-instance v1, Ld7/t;

    .line 822
    .line 823
    invoke-direct {v1, v0}, Ld7/t;-><init>([B)V

    .line 824
    .line 825
    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    const/16 v3, 0x64

    .line 829
    .line 830
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 831
    .line 832
    .line 833
    new-instance v3, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    const/4 v4, 0x0

    .line 836
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 837
    .line 838
    .line 839
    new-instance v4, Ljava/util/ArrayList;

    .line 840
    .line 841
    const/4 v7, 0x1

    .line 842
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 843
    .line 844
    .line 845
    const/4 v6, 0x2

    .line 846
    :goto_18
    const/4 v7, 0x6

    .line 847
    const/4 v8, 0x5

    .line 848
    const/16 v11, 0x1d

    .line 849
    .line 850
    const/16 v12, 0xfe

    .line 851
    .line 852
    const/4 v15, 0x2

    .line 853
    if-ne v6, v15, :cond_3f

    .line 854
    .line 855
    const/4 v6, 0x0

    .line 856
    :cond_37
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 857
    .line 858
    .line 859
    move-result v13

    .line 860
    if-eqz v13, :cond_3e

    .line 861
    .line 862
    const/16 v14, 0x80

    .line 863
    .line 864
    if-gt v13, v14, :cond_39

    .line 865
    .line 866
    if-eqz v6, :cond_38

    .line 867
    .line 868
    add-int/lit16 v13, v13, 0x80

    .line 869
    .line 870
    :cond_38
    const/16 v18, 0x1

    .line 871
    .line 872
    add-int/lit8 v13, v13, -0x1

    .line 873
    .line 874
    int-to-char v6, v13

    .line 875
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const/4 v7, 0x2

    .line 879
    :goto_19
    :pswitch_0
    const/4 v13, 0x0

    .line 880
    goto :goto_1c

    .line 881
    :cond_39
    const/16 v14, 0x81

    .line 882
    .line 883
    if-ne v13, v14, :cond_3a

    .line 884
    .line 885
    const/4 v7, 0x1

    .line 886
    goto :goto_19

    .line 887
    :cond_3a
    const/16 v14, 0xe5

    .line 888
    .line 889
    if-gt v13, v14, :cond_3c

    .line 890
    .line 891
    add-int/lit16 v13, v13, -0x82

    .line 892
    .line 893
    const/16 v14, 0xa

    .line 894
    .line 895
    if-ge v13, v14, :cond_3b

    .line 896
    .line 897
    const/16 v14, 0x30

    .line 898
    .line 899
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    :cond_3b
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    :goto_1a
    :pswitch_1
    const/4 v13, 0x0

    .line 906
    goto :goto_1b

    .line 907
    :cond_3c
    const-string v14, "\u001e\u0004"

    .line 908
    .line 909
    packed-switch v13, :pswitch_data_0

    .line 910
    .line 911
    .line 912
    if-ne v13, v12, :cond_3d

    .line 913
    .line 914
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 915
    .line 916
    .line 917
    move-result v13

    .line 918
    if-nez v13, :cond_3d

    .line 919
    .line 920
    goto :goto_1a

    .line 921
    :cond_3d
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    throw v0

    .line 926
    :pswitch_2
    const/4 v7, 0x4

    .line 927
    goto :goto_19

    .line 928
    :pswitch_3
    const/4 v7, 0x5

    .line 929
    goto :goto_19

    .line 930
    :pswitch_4
    const-string v13, "[)>\u001e06\u001d"

    .line 931
    .line 932
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    const/4 v13, 0x0

    .line 936
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    goto :goto_1b

    .line 940
    :pswitch_5
    const/4 v13, 0x0

    .line 941
    const-string v15, "[)>\u001e05\u001d"

    .line 942
    .line 943
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    goto :goto_1b

    .line 950
    :pswitch_6
    const/4 v13, 0x0

    .line 951
    const/4 v6, 0x1

    .line 952
    goto :goto_1b

    .line 953
    :pswitch_7
    const/4 v13, 0x0

    .line 954
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    :goto_1b
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 958
    .line 959
    .line 960
    move-result v14

    .line 961
    if-gtz v14, :cond_37

    .line 962
    .line 963
    const/4 v7, 0x2

    .line 964
    goto :goto_1c

    .line 965
    :pswitch_8
    const/4 v13, 0x0

    .line 966
    const/4 v7, 0x7

    .line 967
    goto :goto_1c

    .line 968
    :pswitch_9
    const/4 v13, 0x0

    .line 969
    const/4 v7, 0x3

    .line 970
    :goto_1c
    move v6, v7

    .line 971
    const/4 v11, 0x2

    .line 972
    :goto_1d
    const/4 v13, 0x1

    .line 973
    goto/16 :goto_33

    .line 974
    .line 975
    :cond_3e
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    throw v0

    .line 980
    :cond_3f
    const/4 v13, 0x0

    .line 981
    invoke-static {v6}, Le1/d;->b(I)I

    .line 982
    .line 983
    .line 984
    move-result v6

    .line 985
    const/16 v14, 0x1e

    .line 986
    .line 987
    const/16 v15, 0x1b

    .line 988
    .line 989
    const/16 v9, 0x28

    .line 990
    .line 991
    const/4 v13, 0x2

    .line 992
    if-eq v6, v13, :cond_6a

    .line 993
    .line 994
    const/16 v13, 0x20

    .line 995
    .line 996
    const/4 v11, 0x3

    .line 997
    if-eq v6, v11, :cond_57

    .line 998
    .line 999
    const/4 v11, 0x4

    .line 1000
    if-eq v6, v11, :cond_4c

    .line 1001
    .line 1002
    if-eq v6, v8, :cond_47

    .line 1003
    .line 1004
    if-ne v6, v7, :cond_46

    .line 1005
    .line 1006
    iget v6, v1, Ld7/t;->b:I

    .line 1007
    .line 1008
    add-int/lit8 v7, v6, 0x1

    .line 1009
    .line 1010
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 1011
    .line 1012
    .line 1013
    move-result v8

    .line 1014
    add-int/lit8 v9, v6, 0x2

    .line 1015
    .line 1016
    invoke-static {v8, v7}, Lw5/a;->b(II)I

    .line 1017
    .line 1018
    .line 1019
    move-result v7

    .line 1020
    if-nez v7, :cond_40

    .line 1021
    .line 1022
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1023
    .line 1024
    .line 1025
    move-result v6

    .line 1026
    div-int/lit8 v7, v6, 0x8

    .line 1027
    .line 1028
    goto :goto_1e

    .line 1029
    :cond_40
    const/16 v8, 0xfa

    .line 1030
    .line 1031
    if-ge v7, v8, :cond_41

    .line 1032
    .line 1033
    goto :goto_1e

    .line 1034
    :cond_41
    add-int/lit16 v7, v7, -0xf9

    .line 1035
    .line 1036
    mul-int/lit16 v7, v7, 0xfa

    .line 1037
    .line 1038
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 1039
    .line 1040
    .line 1041
    move-result v8

    .line 1042
    add-int/lit8 v6, v6, 0x3

    .line 1043
    .line 1044
    invoke-static {v8, v9}, Lw5/a;->b(II)I

    .line 1045
    .line 1046
    .line 1047
    move-result v8

    .line 1048
    add-int/2addr v7, v8

    .line 1049
    move v9, v6

    .line 1050
    :goto_1e
    if-ltz v7, :cond_45

    .line 1051
    .line 1052
    new-array v6, v7, [B

    .line 1053
    .line 1054
    const/4 v8, 0x0

    .line 1055
    :goto_1f
    if-ge v8, v7, :cond_43

    .line 1056
    .line 1057
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1058
    .line 1059
    .line 1060
    move-result v11

    .line 1061
    if-lt v11, v5, :cond_42

    .line 1062
    .line 1063
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 1064
    .line 1065
    .line 1066
    move-result v11

    .line 1067
    add-int/lit8 v12, v9, 0x1

    .line 1068
    .line 1069
    invoke-static {v11, v9}, Lw5/a;->b(II)I

    .line 1070
    .line 1071
    .line 1072
    move-result v9

    .line 1073
    int-to-byte v9, v9

    .line 1074
    aput-byte v9, v6, v8

    .line 1075
    .line 1076
    add-int/lit8 v8, v8, 0x1

    .line 1077
    .line 1078
    move v9, v12

    .line 1079
    goto :goto_1f

    .line 1080
    :cond_42
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    throw v0

    .line 1085
    :cond_43
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    :try_start_1
    new-instance v7, Ljava/lang/String;

    .line 1089
    .line 1090
    const-string v8, "ISO8859_1"

    .line 1091
    .line 1092
    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1096
    .line 1097
    .line 1098
    :cond_44
    :goto_20
    const/4 v11, 0x2

    .line 1099
    goto/16 :goto_32

    .line 1100
    .line 1101
    :catch_1
    move-exception v0

    .line 1102
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1103
    .line 1104
    const-string v2, "Platform does not support required encoding: "

    .line 1105
    .line 1106
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    throw v1

    .line 1118
    :cond_45
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    throw v0

    .line 1123
    :cond_46
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    throw v0

    .line 1128
    :cond_47
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1129
    .line 1130
    .line 1131
    move-result v6

    .line 1132
    const/16 v8, 0x10

    .line 1133
    .line 1134
    if-gt v6, v8, :cond_48

    .line 1135
    .line 1136
    const/4 v8, 0x4

    .line 1137
    goto :goto_22

    .line 1138
    :cond_48
    const/4 v6, 0x0

    .line 1139
    const/4 v8, 0x4

    .line 1140
    :goto_21
    if-ge v6, v8, :cond_4b

    .line 1141
    .line 1142
    invoke-virtual {v1, v7}, Ld7/t;->b(I)I

    .line 1143
    .line 1144
    .line 1145
    move-result v9

    .line 1146
    const/16 v11, 0x1f

    .line 1147
    .line 1148
    if-ne v9, v11, :cond_49

    .line 1149
    .line 1150
    iget v6, v1, Ld7/t;->c:I

    .line 1151
    .line 1152
    rsub-int/lit8 v6, v6, 0x8

    .line 1153
    .line 1154
    if-eq v6, v5, :cond_44

    .line 1155
    .line 1156
    invoke-virtual {v1, v6}, Ld7/t;->b(I)I

    .line 1157
    .line 1158
    .line 1159
    goto :goto_22

    .line 1160
    :cond_49
    and-int/lit8 v11, v9, 0x20

    .line 1161
    .line 1162
    if-nez v11, :cond_4a

    .line 1163
    .line 1164
    or-int/lit8 v9, v9, 0x40

    .line 1165
    .line 1166
    :cond_4a
    int-to-char v9, v9

    .line 1167
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    add-int/lit8 v6, v6, 0x1

    .line 1171
    .line 1172
    goto :goto_21

    .line 1173
    :cond_4b
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1174
    .line 1175
    .line 1176
    move-result v6

    .line 1177
    if-gtz v6, :cond_47

    .line 1178
    .line 1179
    :goto_22
    goto :goto_20

    .line 1180
    :cond_4c
    const/4 v8, 0x4

    .line 1181
    const/4 v11, 0x3

    .line 1182
    new-array v6, v11, [I

    .line 1183
    .line 1184
    :goto_23
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1185
    .line 1186
    .line 1187
    move-result v7

    .line 1188
    if-ne v7, v5, :cond_4d

    .line 1189
    .line 1190
    goto :goto_26

    .line 1191
    :cond_4d
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 1192
    .line 1193
    .line 1194
    move-result v7

    .line 1195
    if-ne v7, v12, :cond_4e

    .line 1196
    .line 1197
    goto :goto_26

    .line 1198
    :cond_4e
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 1199
    .line 1200
    .line 1201
    move-result v14

    .line 1202
    invoke-static {v7, v14, v6}, Lw5/a;->a(II[I)V

    .line 1203
    .line 1204
    .line 1205
    const/4 v7, 0x0

    .line 1206
    :goto_24
    if-ge v7, v11, :cond_55

    .line 1207
    .line 1208
    aget v14, v6, v7

    .line 1209
    .line 1210
    if-eqz v14, :cond_54

    .line 1211
    .line 1212
    const/4 v15, 0x1

    .line 1213
    if-eq v14, v15, :cond_53

    .line 1214
    .line 1215
    const/4 v15, 0x2

    .line 1216
    if-eq v14, v15, :cond_52

    .line 1217
    .line 1218
    if-eq v14, v11, :cond_51

    .line 1219
    .line 1220
    const/16 v11, 0xe

    .line 1221
    .line 1222
    if-ge v14, v11, :cond_4f

    .line 1223
    .line 1224
    add-int/lit8 v14, v14, 0x2c

    .line 1225
    .line 1226
    int-to-char v11, v14

    .line 1227
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    goto :goto_25

    .line 1231
    :cond_4f
    if-ge v14, v9, :cond_50

    .line 1232
    .line 1233
    add-int/lit8 v14, v14, 0x33

    .line 1234
    .line 1235
    int-to-char v11, v14

    .line 1236
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    goto :goto_25

    .line 1240
    :cond_50
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    throw v0

    .line 1245
    :cond_51
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    goto :goto_25

    .line 1249
    :cond_52
    const/16 v11, 0x3e

    .line 1250
    .line 1251
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    goto :goto_25

    .line 1255
    :cond_53
    const/16 v11, 0x2a

    .line 1256
    .line 1257
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    .line 1260
    goto :goto_25

    .line 1261
    :cond_54
    const/16 v11, 0xd

    .line 1262
    .line 1263
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    .line 1266
    :goto_25
    add-int/lit8 v7, v7, 0x1

    .line 1267
    .line 1268
    const/4 v11, 0x3

    .line 1269
    goto :goto_24

    .line 1270
    :cond_55
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1271
    .line 1272
    .line 1273
    move-result v7

    .line 1274
    if-gtz v7, :cond_56

    .line 1275
    .line 1276
    :goto_26
    goto/16 :goto_20

    .line 1277
    .line 1278
    :cond_56
    const/4 v11, 0x3

    .line 1279
    goto :goto_23

    .line 1280
    :cond_57
    const/4 v7, 0x3

    .line 1281
    const/4 v8, 0x4

    .line 1282
    new-array v6, v7, [I

    .line 1283
    .line 1284
    const/4 v11, 0x0

    .line 1285
    const/16 v16, 0x0

    .line 1286
    .line 1287
    :goto_27
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1288
    .line 1289
    .line 1290
    move-result v8

    .line 1291
    if-ne v8, v5, :cond_58

    .line 1292
    .line 1293
    goto/16 :goto_2c

    .line 1294
    .line 1295
    :cond_58
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 1296
    .line 1297
    .line 1298
    move-result v8

    .line 1299
    if-ne v8, v12, :cond_59

    .line 1300
    .line 1301
    goto/16 :goto_2c

    .line 1302
    .line 1303
    :cond_59
    invoke-virtual {v1, v5}, Ld7/t;->b(I)I

    .line 1304
    .line 1305
    .line 1306
    move-result v12

    .line 1307
    invoke-static {v8, v12, v6}, Lw5/a;->a(II[I)V

    .line 1308
    .line 1309
    .line 1310
    move/from16 v12, v16

    .line 1311
    .line 1312
    const/4 v8, 0x0

    .line 1313
    :goto_28
    if-ge v8, v7, :cond_68

    .line 1314
    .line 1315
    aget v5, v6, v8

    .line 1316
    .line 1317
    if-eqz v12, :cond_64

    .line 1318
    .line 1319
    const/4 v9, 0x1

    .line 1320
    if-eq v12, v9, :cond_62

    .line 1321
    .line 1322
    const/4 v9, 0x2

    .line 1323
    if-eq v12, v9, :cond_5d

    .line 1324
    .line 1325
    if-ne v12, v7, :cond_5c

    .line 1326
    .line 1327
    if-ge v5, v13, :cond_5b

    .line 1328
    .line 1329
    sget-object v7, Lw5/a;->e:[C

    .line 1330
    .line 1331
    aget-char v5, v7, v5

    .line 1332
    .line 1333
    if-eqz v11, :cond_5a

    .line 1334
    .line 1335
    add-int/lit16 v5, v5, 0x80

    .line 1336
    .line 1337
    int-to-char v5, v5

    .line 1338
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    :goto_29
    const/4 v11, 0x0

    .line 1342
    goto :goto_2a

    .line 1343
    :cond_5a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    :goto_2a
    const/4 v12, 0x0

    .line 1347
    goto :goto_2b

    .line 1348
    :cond_5b
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    throw v0

    .line 1353
    :cond_5c
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    throw v0

    .line 1358
    :cond_5d
    if-ge v5, v15, :cond_5f

    .line 1359
    .line 1360
    sget-object v7, Lw5/a;->d:[C

    .line 1361
    .line 1362
    aget-char v5, v7, v5

    .line 1363
    .line 1364
    if-eqz v11, :cond_5e

    .line 1365
    .line 1366
    add-int/lit16 v5, v5, 0x80

    .line 1367
    .line 1368
    int-to-char v5, v5

    .line 1369
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    goto :goto_29

    .line 1373
    :cond_5e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    goto :goto_2a

    .line 1377
    :cond_5f
    if-eq v5, v15, :cond_61

    .line 1378
    .line 1379
    if-ne v5, v14, :cond_60

    .line 1380
    .line 1381
    const/4 v11, 0x1

    .line 1382
    goto :goto_2a

    .line 1383
    :cond_60
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    throw v0

    .line 1388
    :cond_61
    const/16 v5, 0x1d

    .line 1389
    .line 1390
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    goto :goto_2a

    .line 1394
    :cond_62
    if-eqz v11, :cond_63

    .line 1395
    .line 1396
    add-int/lit16 v5, v5, 0x80

    .line 1397
    .line 1398
    int-to-char v5, v5

    .line 1399
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    goto :goto_29

    .line 1403
    :cond_63
    int-to-char v5, v5

    .line 1404
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    goto :goto_2a

    .line 1408
    :cond_64
    if-ge v5, v7, :cond_65

    .line 1409
    .line 1410
    add-int/lit8 v5, v5, 0x1

    .line 1411
    .line 1412
    move v12, v5

    .line 1413
    goto :goto_2b

    .line 1414
    :cond_65
    const/16 v7, 0x28

    .line 1415
    .line 1416
    if-ge v5, v7, :cond_67

    .line 1417
    .line 1418
    sget-object v7, Lw5/a;->c:[C

    .line 1419
    .line 1420
    aget-char v5, v7, v5

    .line 1421
    .line 1422
    if-eqz v11, :cond_66

    .line 1423
    .line 1424
    add-int/lit16 v5, v5, 0x80

    .line 1425
    .line 1426
    int-to-char v5, v5

    .line 1427
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    const/4 v11, 0x0

    .line 1431
    goto :goto_2b

    .line 1432
    :cond_66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    :goto_2b
    add-int/lit8 v8, v8, 0x1

    .line 1436
    .line 1437
    const/16 v5, 0x8

    .line 1438
    .line 1439
    const/4 v7, 0x3

    .line 1440
    const/16 v9, 0x28

    .line 1441
    .line 1442
    goto/16 :goto_28

    .line 1443
    .line 1444
    :cond_67
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    throw v0

    .line 1449
    :cond_68
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1450
    .line 1451
    .line 1452
    move-result v5

    .line 1453
    if-gtz v5, :cond_69

    .line 1454
    .line 1455
    :goto_2c
    goto/16 :goto_20

    .line 1456
    .line 1457
    :cond_69
    move/from16 v16, v12

    .line 1458
    .line 1459
    const/16 v5, 0x8

    .line 1460
    .line 1461
    const/4 v7, 0x3

    .line 1462
    const/16 v9, 0x28

    .line 1463
    .line 1464
    const/16 v12, 0xfe

    .line 1465
    .line 1466
    goto/16 :goto_27

    .line 1467
    .line 1468
    :cond_6a
    const/4 v7, 0x3

    .line 1469
    new-array v5, v7, [I

    .line 1470
    .line 1471
    const/4 v6, 0x0

    .line 1472
    const/4 v8, 0x0

    .line 1473
    :goto_2d
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1474
    .line 1475
    .line 1476
    move-result v9

    .line 1477
    const/16 v11, 0x8

    .line 1478
    .line 1479
    if-ne v9, v11, :cond_6b

    .line 1480
    .line 1481
    goto/16 :goto_20

    .line 1482
    .line 1483
    :cond_6b
    invoke-virtual {v1, v11}, Ld7/t;->b(I)I

    .line 1484
    .line 1485
    .line 1486
    move-result v9

    .line 1487
    const/16 v12, 0xfe

    .line 1488
    .line 1489
    if-ne v9, v12, :cond_6c

    .line 1490
    .line 1491
    goto/16 :goto_20

    .line 1492
    .line 1493
    :cond_6c
    invoke-virtual {v1, v11}, Ld7/t;->b(I)I

    .line 1494
    .line 1495
    .line 1496
    move-result v13

    .line 1497
    invoke-static {v9, v13, v5}, Lw5/a;->a(II[I)V

    .line 1498
    .line 1499
    .line 1500
    move v9, v8

    .line 1501
    move v8, v6

    .line 1502
    const/4 v6, 0x0

    .line 1503
    :goto_2e
    if-ge v6, v7, :cond_7a

    .line 1504
    .line 1505
    aget v13, v5, v6

    .line 1506
    .line 1507
    if-eqz v9, :cond_76

    .line 1508
    .line 1509
    const/4 v11, 0x1

    .line 1510
    if-eq v9, v11, :cond_74

    .line 1511
    .line 1512
    const/4 v11, 0x2

    .line 1513
    if-eq v9, v11, :cond_6f

    .line 1514
    .line 1515
    if-ne v9, v7, :cond_6e

    .line 1516
    .line 1517
    if-eqz v8, :cond_6d

    .line 1518
    .line 1519
    add-int/lit16 v13, v13, 0xe0

    .line 1520
    .line 1521
    int-to-char v7, v13

    .line 1522
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    :goto_2f
    const/4 v8, 0x0

    .line 1526
    goto :goto_30

    .line 1527
    :cond_6d
    add-int/lit8 v13, v13, 0x60

    .line 1528
    .line 1529
    int-to-char v7, v13

    .line 1530
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    :goto_30
    const/16 v7, 0x28

    .line 1534
    .line 1535
    const/4 v9, 0x0

    .line 1536
    goto :goto_31

    .line 1537
    :cond_6e
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    throw v0

    .line 1542
    :cond_6f
    if-ge v13, v15, :cond_71

    .line 1543
    .line 1544
    sget-object v7, Lw5/a;->b:[C

    .line 1545
    .line 1546
    aget-char v7, v7, v13

    .line 1547
    .line 1548
    if-eqz v8, :cond_70

    .line 1549
    .line 1550
    add-int/lit16 v7, v7, 0x80

    .line 1551
    .line 1552
    int-to-char v7, v7

    .line 1553
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    const/16 v7, 0x1d

    .line 1557
    .line 1558
    goto :goto_2f

    .line 1559
    :cond_70
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    .line 1562
    const/16 v7, 0x1d

    .line 1563
    .line 1564
    goto :goto_30

    .line 1565
    :cond_71
    if-eq v13, v15, :cond_73

    .line 1566
    .line 1567
    if-ne v13, v14, :cond_72

    .line 1568
    .line 1569
    const/16 v7, 0x1d

    .line 1570
    .line 1571
    const/4 v8, 0x1

    .line 1572
    goto :goto_30

    .line 1573
    :cond_72
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v0

    .line 1577
    throw v0

    .line 1578
    :cond_73
    const/16 v7, 0x1d

    .line 1579
    .line 1580
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1581
    .line 1582
    .line 1583
    goto :goto_30

    .line 1584
    :cond_74
    const/16 v7, 0x1d

    .line 1585
    .line 1586
    const/4 v11, 0x2

    .line 1587
    if-eqz v8, :cond_75

    .line 1588
    .line 1589
    add-int/lit16 v13, v13, 0x80

    .line 1590
    .line 1591
    int-to-char v8, v13

    .line 1592
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    goto :goto_2f

    .line 1596
    :cond_75
    int-to-char v9, v13

    .line 1597
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1598
    .line 1599
    .line 1600
    goto :goto_30

    .line 1601
    :cond_76
    const/4 v11, 0x2

    .line 1602
    if-ge v13, v7, :cond_77

    .line 1603
    .line 1604
    add-int/lit8 v9, v13, 0x1

    .line 1605
    .line 1606
    const/16 v7, 0x28

    .line 1607
    .line 1608
    goto :goto_31

    .line 1609
    :cond_77
    const/16 v7, 0x28

    .line 1610
    .line 1611
    if-ge v13, v7, :cond_79

    .line 1612
    .line 1613
    sget-object v17, Lw5/a;->a:[C

    .line 1614
    .line 1615
    aget-char v13, v17, v13

    .line 1616
    .line 1617
    if-eqz v8, :cond_78

    .line 1618
    .line 1619
    add-int/lit16 v13, v13, 0x80

    .line 1620
    .line 1621
    int-to-char v8, v13

    .line 1622
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    .line 1625
    const/4 v8, 0x0

    .line 1626
    goto :goto_31

    .line 1627
    :cond_78
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    .line 1630
    :goto_31
    add-int/lit8 v6, v6, 0x1

    .line 1631
    .line 1632
    const/4 v7, 0x3

    .line 1633
    const/16 v11, 0x8

    .line 1634
    .line 1635
    goto/16 :goto_2e

    .line 1636
    .line 1637
    :cond_79
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    throw v0

    .line 1642
    :cond_7a
    const/16 v7, 0x28

    .line 1643
    .line 1644
    const/4 v11, 0x2

    .line 1645
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1646
    .line 1647
    .line 1648
    move-result v6

    .line 1649
    if-gtz v6, :cond_7f

    .line 1650
    .line 1651
    :goto_32
    const/4 v6, 0x2

    .line 1652
    goto/16 :goto_1d

    .line 1653
    .line 1654
    :goto_33
    if-eq v6, v13, :cond_7c

    .line 1655
    .line 1656
    invoke-virtual {v1}, Ld7/t;->a()I

    .line 1657
    .line 1658
    .line 1659
    move-result v5

    .line 1660
    if-gtz v5, :cond_7b

    .line 1661
    .line 1662
    goto :goto_34

    .line 1663
    :cond_7b
    const/16 v5, 0x8

    .line 1664
    .line 1665
    const/4 v9, 0x7

    .line 1666
    goto/16 :goto_18

    .line 1667
    .line 1668
    :cond_7c
    :goto_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 1669
    .line 1670
    .line 1671
    move-result v1

    .line 1672
    if-lez v1, :cond_7d

    .line 1673
    .line 1674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    .line 1677
    :cond_7d
    new-instance v1, Ls5/d;

    .line 1678
    .line 1679
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v2

    .line 1683
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1684
    .line 1685
    .line 1686
    move-result v3

    .line 1687
    const/4 v5, 0x0

    .line 1688
    if-eqz v3, :cond_7e

    .line 1689
    .line 1690
    move-object v4, v5

    .line 1691
    :cond_7e
    invoke-direct {v1, v0, v2, v4, v5}, Ls5/d;-><init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1692
    .line 1693
    .line 1694
    return-object v1

    .line 1695
    :cond_7f
    move v6, v8

    .line 1696
    move v8, v9

    .line 1697
    const/4 v7, 0x3

    .line 1698
    goto/16 :goto_2d

    .line 1699
    .line 1700
    :cond_80
    move-object/from16 v10, p0

    .line 1701
    .line 1702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1703
    .line 1704
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1705
    .line 1706
    .line 1707
    throw v0

    .line 1708
    :cond_81
    move-object/from16 v10, p0

    .line 1709
    .line 1710
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v0

    .line 1714
    throw v0

    .line 1715
    :cond_82
    const/16 v20, 0x0

    .line 1716
    .line 1717
    move-object/from16 v4, v21

    .line 1718
    .line 1719
    const/4 v7, 0x0

    .line 1720
    goto/16 :goto_0

    .line 1721
    .line 1722
    nop

    .line 1723
    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Ls5/b;Ljava/util/Map;)Ls5/d;
    .locals 8

    .line 1
    new-instance v0, Lf1/t0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lf1/t0;-><init>(Ls5/b;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lj6/c;->b(Lf1/t0;Ljava/util/Map;)Ls5/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Lm5/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lm5/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    move-object v2, v1

    .line 14
    move-object v1, p1

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception v1

    .line 17
    move-object v2, p1

    .line 18
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lf1/t0;->e()V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lf1/t0;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, v0, Lf1/t0;->d:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, v0, Lf1/t0;->a:Z

    .line 27
    .line 28
    invoke-virtual {v0}, Lf1/t0;->d()Lj6/h;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lf1/t0;->c()Lj6/e;

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lf1/t0;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ls5/b;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_1
    iget v4, p1, Ls5/b;->a:I

    .line 40
    .line 41
    if-ge v3, v4, :cond_2

    .line 42
    .line 43
    add-int/lit8 v4, v3, 0x1

    .line 44
    .line 45
    move v5, v4

    .line 46
    :goto_2
    iget v6, p1, Ls5/b;->b:I

    .line 47
    .line 48
    if-ge v5, v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v3, v5}, Ls5/b;->b(II)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {p1, v5, v3}, Ls5/b;->b(II)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eq v6, v7, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1, v5, v3}, Ls5/b;->a(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3, v5}, Ls5/b;->a(II)V

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    move v3, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p0, v0, p2}, Lj6/c;->b(Lf1/t0;Ljava/util/Map;)Ls5/d;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p2, Lj6/g;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p2, p1, Ls5/d;->e:Ljava/lang/Object;
    :try_end_1
    .catch Lm5/f; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lm5/c; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    .line 82
    return-object p1

    .line 83
    :catch_2
    nop

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    throw v1

    .line 87
    :cond_3
    throw v2
.end method
