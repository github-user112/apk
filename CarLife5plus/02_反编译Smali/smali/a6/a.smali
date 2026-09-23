.class public final La6/a;
.super La6/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:[C

.field public static final e:[I

.field public static final f:[C


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public b:[I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789-$:/.+ABCD"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, La6/a;->d:[C

    .line 8
    .line 9
    const/16 v0, 0x14

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, La6/a;->e:[I

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [C

    .line 20
    .line 21
    fill-array-data v0, :array_1

    .line 22
    .line 23
    .line 24
    sput-object v0, La6/a;->f:[C

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, La6/a;->a:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v0, 0x50

    .line 14
    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iput-object v0, p0, La6/a;->b:[I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, La6/a;->c:I

    .line 21
    .line 22
    return-void
.end method

.method public static g([CC)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-char v3, p0, v2

    .line 9
    .line 10
    if-ne v3, p1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method


# virtual methods
.method public final b(ILs5/a;Ljava/util/Map;)Lm5/m;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, La6/a;->b:[I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 11
    .line 12
    .line 13
    iput v4, v0, La6/a;->c:I

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ls5/a;->f(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v5, v1, Ls5/a;->b:I

    .line 20
    .line 21
    if-ge v3, v5, :cond_1d

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    :goto_0
    if-ge v3, v5, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ls5/a;->d(I)Z

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    if-eq v9, v8, :cond_0

    .line 33
    .line 34
    add-int/lit8 v7, v7, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v9, v0, La6/a;->b:[I

    .line 38
    .line 39
    iget v10, v0, La6/a;->c:I

    .line 40
    .line 41
    aput v7, v9, v10

    .line 42
    .line 43
    add-int/2addr v10, v6

    .line 44
    iput v10, v0, La6/a;->c:I

    .line 45
    .line 46
    array-length v7, v9

    .line 47
    if-lt v10, v7, :cond_1

    .line 48
    .line 49
    shl-int/lit8 v7, v10, 0x1

    .line 50
    .line 51
    new-array v7, v7, [I

    .line 52
    .line 53
    invoke-static {v9, v4, v7, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    iput-object v7, v0, La6/a;->b:[I

    .line 57
    .line 58
    :cond_1
    xor-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, v0, La6/a;->b:[I

    .line 65
    .line 66
    iget v3, v0, La6/a;->c:I

    .line 67
    .line 68
    aput v7, v1, v3

    .line 69
    .line 70
    add-int/2addr v3, v6

    .line 71
    iput v3, v0, La6/a;->c:I

    .line 72
    .line 73
    array-length v5, v1

    .line 74
    if-lt v3, v5, :cond_3

    .line 75
    .line 76
    shl-int/lit8 v5, v3, 0x1

    .line 77
    .line 78
    new-array v5, v5, [I

    .line 79
    .line 80
    invoke-static {v1, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    iput-object v5, v0, La6/a;->b:[I

    .line 84
    .line 85
    :cond_3
    const/4 v1, 0x1

    .line 86
    :goto_2
    iget v3, v0, La6/a;->c:I

    .line 87
    .line 88
    if-ge v1, v3, :cond_1c

    .line 89
    .line 90
    invoke-virtual {v0, v1}, La6/a;->h(I)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/4 v5, -0x1

    .line 95
    if-eq v3, v5, :cond_5

    .line 96
    .line 97
    sget-object v7, La6/a;->d:[C

    .line 98
    .line 99
    aget-char v3, v7, v3

    .line 100
    .line 101
    sget-object v8, La6/a;->f:[C

    .line 102
    .line 103
    invoke-static {v8, v3}, La6/a;->g([CC)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    move v3, v1

    .line 110
    const/4 v9, 0x0

    .line 111
    :goto_3
    add-int/lit8 v10, v1, 0x7

    .line 112
    .line 113
    if-ge v3, v10, :cond_4

    .line 114
    .line 115
    iget-object v10, v0, La6/a;->b:[I

    .line 116
    .line 117
    aget v10, v10, v3

    .line 118
    .line 119
    add-int/2addr v9, v10

    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    if-eq v1, v6, :cond_6

    .line 124
    .line 125
    iget-object v3, v0, La6/a;->b:[I

    .line 126
    .line 127
    add-int/lit8 v10, v1, -0x1

    .line 128
    .line 129
    aget v3, v3, v10

    .line 130
    .line 131
    div-int/lit8 v9, v9, 0x2

    .line 132
    .line 133
    if-lt v3, v9, :cond_5

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_5
    move/from16 v6, p1

    .line 137
    .line 138
    const/16 v20, 0x0

    .line 139
    .line 140
    const/16 v23, 0x1

    .line 141
    .line 142
    goto/16 :goto_10

    .line 143
    .line 144
    :cond_6
    :goto_4
    iget-object v3, v0, La6/a;->a:Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 147
    .line 148
    .line 149
    move v9, v1

    .line 150
    :goto_5
    invoke-virtual {v0, v9}, La6/a;->h(I)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eq v10, v5, :cond_1b

    .line 155
    .line 156
    int-to-char v11, v10

    .line 157
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    add-int/lit8 v11, v9, 0x8

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-le v12, v6, :cond_7

    .line 167
    .line 168
    aget-char v10, v7, v10

    .line 169
    .line 170
    invoke-static {v8, v10}, La6/a;->g([CC)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_8

    .line 175
    .line 176
    :cond_7
    iget v10, v0, La6/a;->c:I

    .line 177
    .line 178
    if-lt v11, v10, :cond_1a

    .line 179
    .line 180
    :cond_8
    iget-object v10, v0, La6/a;->b:[I

    .line 181
    .line 182
    add-int/lit8 v9, v9, 0x7

    .line 183
    .line 184
    aget v10, v10, v9

    .line 185
    .line 186
    const/4 v12, -0x8

    .line 187
    const/4 v13, 0x0

    .line 188
    :goto_6
    if-ge v12, v5, :cond_9

    .line 189
    .line 190
    iget-object v14, v0, La6/a;->b:[I

    .line 191
    .line 192
    add-int v15, v11, v12

    .line 193
    .line 194
    aget v14, v14, v15

    .line 195
    .line 196
    add-int/2addr v13, v14

    .line 197
    add-int/lit8 v12, v12, 0x1

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_9
    iget v5, v0, La6/a;->c:I

    .line 201
    .line 202
    const/4 v12, 0x2

    .line 203
    if-ge v11, v5, :cond_b

    .line 204
    .line 205
    div-int/2addr v13, v12

    .line 206
    if-lt v10, v13, :cond_a

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_a
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 210
    .line 211
    throw v1

    .line 212
    :cond_b
    :goto_7
    const/4 v5, 0x4

    .line 213
    new-array v10, v5, [I

    .line 214
    .line 215
    aput v4, v10, v4

    .line 216
    .line 217
    aput v4, v10, v6

    .line 218
    .line 219
    aput v4, v10, v12

    .line 220
    .line 221
    const/4 v11, 0x3

    .line 222
    aput v4, v10, v11

    .line 223
    .line 224
    new-array v13, v5, [I

    .line 225
    .line 226
    aput v4, v13, v4

    .line 227
    .line 228
    aput v4, v13, v6

    .line 229
    .line 230
    aput v4, v13, v12

    .line 231
    .line 232
    aput v4, v13, v11

    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    sub-int/2addr v14, v6

    .line 239
    move/from16 v16, v1

    .line 240
    .line 241
    const/4 v15, 0x0

    .line 242
    :goto_8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 243
    .line 244
    .line 245
    move-result v17

    .line 246
    sget-object v18, La6/a;->e:[I

    .line 247
    .line 248
    aget v17, v18, v17

    .line 249
    .line 250
    const/16 v19, 0x6

    .line 251
    .line 252
    const/16 v20, 0x6

    .line 253
    .line 254
    :goto_9
    if-ltz v20, :cond_c

    .line 255
    .line 256
    and-int/lit8 v21, v20, 0x1

    .line 257
    .line 258
    and-int/lit8 v22, v17, 0x1

    .line 259
    .line 260
    shl-int/lit8 v22, v22, 0x1

    .line 261
    .line 262
    add-int v21, v21, v22

    .line 263
    .line 264
    aget v22, v10, v21

    .line 265
    .line 266
    const/16 v23, 0x1

    .line 267
    .line 268
    iget-object v6, v0, La6/a;->b:[I

    .line 269
    .line 270
    add-int v24, v16, v20

    .line 271
    .line 272
    aget v6, v6, v24

    .line 273
    .line 274
    add-int v22, v22, v6

    .line 275
    .line 276
    aput v22, v10, v21

    .line 277
    .line 278
    aget v6, v13, v21

    .line 279
    .line 280
    add-int/lit8 v6, v6, 0x1

    .line 281
    .line 282
    aput v6, v13, v21

    .line 283
    .line 284
    shr-int/lit8 v17, v17, 0x1

    .line 285
    .line 286
    add-int/lit8 v20, v20, -0x1

    .line 287
    .line 288
    const/4 v6, 0x1

    .line 289
    goto :goto_9

    .line 290
    :cond_c
    const/16 v23, 0x1

    .line 291
    .line 292
    if-ge v15, v14, :cond_d

    .line 293
    .line 294
    add-int/lit8 v16, v16, 0x8

    .line 295
    .line 296
    add-int/lit8 v15, v15, 0x1

    .line 297
    .line 298
    const/4 v6, 0x1

    .line 299
    goto :goto_8

    .line 300
    :cond_d
    new-array v6, v5, [F

    .line 301
    .line 302
    new-array v5, v5, [F

    .line 303
    .line 304
    const/4 v15, 0x0

    .line 305
    :goto_a
    if-ge v15, v12, :cond_e

    .line 306
    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    aput v16, v5, v15

    .line 310
    .line 311
    add-int/lit8 v16, v15, 0x2

    .line 312
    .line 313
    aget v12, v10, v15

    .line 314
    .line 315
    int-to-float v12, v12

    .line 316
    aget v11, v13, v15

    .line 317
    .line 318
    int-to-float v11, v11

    .line 319
    div-float/2addr v12, v11

    .line 320
    aget v11, v10, v16

    .line 321
    .line 322
    int-to-float v11, v11

    .line 323
    aget v4, v13, v16

    .line 324
    .line 325
    int-to-float v4, v4

    .line 326
    div-float v21, v11, v4

    .line 327
    .line 328
    add-float v21, v21, v12

    .line 329
    .line 330
    const/high16 v12, 0x40000000    # 2.0f

    .line 331
    .line 332
    div-float v21, v21, v12

    .line 333
    .line 334
    aput v21, v5, v16

    .line 335
    .line 336
    aput v21, v6, v15

    .line 337
    .line 338
    mul-float v11, v11, v12

    .line 339
    .line 340
    const/high16 v12, 0x3fc00000    # 1.5f

    .line 341
    .line 342
    add-float/2addr v11, v12

    .line 343
    div-float/2addr v11, v4

    .line 344
    aput v11, v6, v16

    .line 345
    .line 346
    add-int/lit8 v15, v15, 0x1

    .line 347
    .line 348
    const/4 v4, 0x0

    .line 349
    const/4 v11, 0x3

    .line 350
    const/4 v12, 0x2

    .line 351
    goto :goto_a

    .line 352
    :cond_e
    move v10, v1

    .line 353
    const/4 v4, 0x0

    .line 354
    :goto_b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    aget v11, v18, v11

    .line 359
    .line 360
    const/4 v12, 0x6

    .line 361
    :goto_c
    if-ltz v12, :cond_10

    .line 362
    .line 363
    and-int/lit8 v13, v12, 0x1

    .line 364
    .line 365
    and-int/lit8 v15, v11, 0x1

    .line 366
    .line 367
    shl-int/lit8 v15, v15, 0x1

    .line 368
    .line 369
    add-int/2addr v13, v15

    .line 370
    iget-object v15, v0, La6/a;->b:[I

    .line 371
    .line 372
    add-int v16, v10, v12

    .line 373
    .line 374
    aget v15, v15, v16

    .line 375
    .line 376
    int-to-float v15, v15

    .line 377
    aget v16, v5, v13

    .line 378
    .line 379
    cmpg-float v16, v15, v16

    .line 380
    .line 381
    if-ltz v16, :cond_f

    .line 382
    .line 383
    aget v13, v6, v13

    .line 384
    .line 385
    cmpl-float v13, v15, v13

    .line 386
    .line 387
    if-gtz v13, :cond_f

    .line 388
    .line 389
    shr-int/lit8 v11, v11, 0x1

    .line 390
    .line 391
    add-int/lit8 v12, v12, -0x1

    .line 392
    .line 393
    goto :goto_c

    .line 394
    :cond_f
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 395
    .line 396
    throw v1

    .line 397
    :cond_10
    if-ge v4, v14, :cond_11

    .line 398
    .line 399
    add-int/lit8 v10, v10, 0x8

    .line 400
    .line 401
    add-int/lit8 v4, v4, 0x1

    .line 402
    .line 403
    goto :goto_b

    .line 404
    :cond_11
    const/4 v4, 0x0

    .line 405
    :goto_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-ge v4, v5, :cond_12

    .line 410
    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    aget-char v5, v7, v5

    .line 416
    .line 417
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 418
    .line 419
    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_12
    const/4 v4, 0x0

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    invoke-static {v8, v5}, La6/a;->g([CC)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_19

    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    add-int/lit8 v4, v4, -0x1

    .line 439
    .line 440
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    invoke-static {v8, v4}, La6/a;->g([CC)Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-eqz v4, :cond_18

    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    const/4 v5, 0x3

    .line 455
    if-le v4, v5, :cond_17

    .line 456
    .line 457
    if-eqz v2, :cond_13

    .line 458
    .line 459
    sget-object v4, Lm5/d;->i:Lm5/d;

    .line 460
    .line 461
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-nez v2, :cond_14

    .line 466
    .line 467
    :cond_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    add-int/lit8 v2, v2, -0x1

    .line 472
    .line 473
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const/4 v4, 0x0

    .line 477
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    :cond_14
    const/4 v2, 0x0

    .line 481
    const/4 v4, 0x0

    .line 482
    :goto_e
    if-ge v4, v1, :cond_15

    .line 483
    .line 484
    iget-object v5, v0, La6/a;->b:[I

    .line 485
    .line 486
    aget v5, v5, v4

    .line 487
    .line 488
    add-int/2addr v2, v5

    .line 489
    add-int/lit8 v4, v4, 0x1

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_15
    int-to-float v4, v2

    .line 493
    :goto_f
    if-ge v1, v9, :cond_16

    .line 494
    .line 495
    iget-object v5, v0, La6/a;->b:[I

    .line 496
    .line 497
    aget v5, v5, v1

    .line 498
    .line 499
    add-int/2addr v2, v5

    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    .line 502
    goto :goto_f

    .line 503
    :cond_16
    int-to-float v1, v2

    .line 504
    new-instance v2, Lm5/m;

    .line 505
    .line 506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    new-instance v5, Lm5/o;

    .line 511
    .line 512
    move/from16 v6, p1

    .line 513
    .line 514
    int-to-float v6, v6

    .line 515
    invoke-direct {v5, v4, v6}, Lm5/o;-><init>(FF)V

    .line 516
    .line 517
    .line 518
    new-instance v4, Lm5/o;

    .line 519
    .line 520
    invoke-direct {v4, v1, v6}, Lm5/o;-><init>(FF)V

    .line 521
    .line 522
    .line 523
    const/4 v1, 0x2

    .line 524
    new-array v1, v1, [Lm5/o;

    .line 525
    .line 526
    const/16 v20, 0x0

    .line 527
    .line 528
    aput-object v5, v1, v20

    .line 529
    .line 530
    aput-object v4, v1, v23

    .line 531
    .line 532
    sget-object v4, Lm5/a;->b:Lm5/a;

    .line 533
    .line 534
    const/4 v5, 0x0

    .line 535
    invoke-direct {v2, v3, v5, v1, v4}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;)V

    .line 536
    .line 537
    .line 538
    return-object v2

    .line 539
    :cond_17
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 540
    .line 541
    throw v1

    .line 542
    :cond_18
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 543
    .line 544
    throw v1

    .line 545
    :cond_19
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 546
    .line 547
    throw v1

    .line 548
    :cond_1a
    move/from16 v6, p1

    .line 549
    .line 550
    const/16 v23, 0x1

    .line 551
    .line 552
    move v9, v11

    .line 553
    const/4 v6, 0x1

    .line 554
    goto/16 :goto_5

    .line 555
    .line 556
    :cond_1b
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 557
    .line 558
    throw v1

    .line 559
    :goto_10
    add-int/lit8 v1, v1, 0x2

    .line 560
    .line 561
    const/4 v4, 0x0

    .line 562
    const/4 v6, 0x1

    .line 563
    goto/16 :goto_2

    .line 564
    .line 565
    :cond_1c
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 566
    .line 567
    throw v1

    .line 568
    :cond_1d
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 569
    .line 570
    throw v1
.end method

.method public final h(I)I
    .locals 10

    .line 1
    add-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    iget v1, p0, La6/a;->c:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, La6/a;->b:[I

    .line 10
    .line 11
    const v3, 0x7fffffff

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, p1

    .line 16
    const v6, 0x7fffffff

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    :goto_0
    if-ge v5, v0, :cond_3

    .line 21
    .line 22
    aget v8, v1, v5

    .line 23
    .line 24
    if-ge v8, v6, :cond_1

    .line 25
    .line 26
    move v6, v8

    .line 27
    :cond_1
    if-le v8, v7, :cond_2

    .line 28
    .line 29
    move v7, v8

    .line 30
    :cond_2
    add-int/lit8 v5, v5, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    add-int/2addr v6, v7

    .line 34
    div-int/lit8 v6, v6, 0x2

    .line 35
    .line 36
    add-int/lit8 v5, p1, 0x1

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_1
    if-ge v5, v0, :cond_6

    .line 40
    .line 41
    aget v8, v1, v5

    .line 42
    .line 43
    if-ge v8, v3, :cond_4

    .line 44
    .line 45
    move v3, v8

    .line 46
    :cond_4
    if-le v8, v7, :cond_5

    .line 47
    .line 48
    move v7, v8

    .line 49
    :cond_5
    add-int/lit8 v5, v5, 0x2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_6
    add-int/2addr v3, v7

    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    const/16 v0, 0x80

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    :goto_2
    const/4 v8, 0x7

    .line 60
    if-ge v5, v8, :cond_9

    .line 61
    .line 62
    and-int/lit8 v8, v5, 0x1

    .line 63
    .line 64
    if-nez v8, :cond_7

    .line 65
    .line 66
    move v8, v6

    .line 67
    goto :goto_3

    .line 68
    :cond_7
    move v8, v3

    .line 69
    :goto_3
    shr-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    add-int v9, p1, v5

    .line 72
    .line 73
    aget v9, v1, v9

    .line 74
    .line 75
    if-le v9, v8, :cond_8

    .line 76
    .line 77
    or-int/2addr v7, v0

    .line 78
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_9
    :goto_4
    sget-object p1, La6/a;->e:[I

    .line 82
    .line 83
    array-length v0, p1

    .line 84
    if-ge v4, v0, :cond_b

    .line 85
    .line 86
    aget p1, p1, v4

    .line 87
    .line 88
    if-ne p1, v7, :cond_a

    .line 89
    .line 90
    return v4

    .line 91
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_b
    return v2
.end method
