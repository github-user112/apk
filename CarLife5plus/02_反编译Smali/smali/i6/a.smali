.class public final Li6/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm5/k;


# static fields
.field public static final b:[Lm5/o;


# instance fields
.field public final a:Lj6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lm5/o;

    .line 3
    .line 4
    sput-object v0, Li6/a;->b:[Lm5/o;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj6/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lj6/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Li6/a;->a:Lj6/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lm5/b;Ljava/util/Map;)Lm5/m;
    .locals 41

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    move-object/from16 v3, p0

    .line 5
    .line 6
    iget-object v4, v3, Li6/a;->a:Lj6/c;

    .line 7
    .line 8
    const/4 v6, 0x5

    .line 9
    const/4 v7, 0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    if-eqz v0, :cond_10

    .line 12
    .line 13
    sget-object v9, Lm5/d;->b:Lm5/d;

    .line 14
    .line 15
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    if-eqz v9, :cond_10

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lm5/b;->a()Ls5/b;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-virtual {v9}, Ls5/b;->e()[I

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    iget v11, v9, Ls5/b;->a:I

    .line 30
    .line 31
    invoke-virtual {v9}, Ls5/b;->c()[I

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    if-eqz v10, :cond_f

    .line 36
    .line 37
    if-eqz v12, :cond_f

    .line 38
    .line 39
    iget v13, v9, Ls5/b;->b:I

    .line 40
    .line 41
    aget v14, v10, v8

    .line 42
    .line 43
    aget v15, v10, v7

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    const/high16 v16, 0x40000000    # 2.0f

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    :goto_0
    if-ge v14, v11, :cond_1

    .line 51
    .line 52
    if-ge v15, v13, :cond_1

    .line 53
    .line 54
    invoke-virtual {v9, v14, v15}, Ls5/b;->b(II)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eq v5, v1, :cond_0

    .line 59
    .line 60
    add-int/lit8 v1, v17, 0x1

    .line 61
    .line 62
    if-eq v1, v6, :cond_1

    .line 63
    .line 64
    xor-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    move/from16 v17, v1

    .line 67
    .line 68
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 69
    .line 70
    add-int/lit8 v15, v15, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    if-eq v14, v11, :cond_e

    .line 74
    .line 75
    if-eq v15, v13, :cond_e

    .line 76
    .line 77
    aget v1, v10, v8

    .line 78
    .line 79
    sub-int/2addr v14, v1

    .line 80
    int-to-float v5, v14

    .line 81
    const/high16 v6, 0x40e00000    # 7.0f

    .line 82
    .line 83
    div-float/2addr v5, v6

    .line 84
    aget v6, v10, v7

    .line 85
    .line 86
    aget v10, v12, v7

    .line 87
    .line 88
    aget v12, v12, v8

    .line 89
    .line 90
    if-ge v1, v12, :cond_d

    .line 91
    .line 92
    if-ge v6, v10, :cond_d

    .line 93
    .line 94
    sub-int v13, v10, v6

    .line 95
    .line 96
    sub-int v14, v12, v1

    .line 97
    .line 98
    if-eq v13, v14, :cond_3

    .line 99
    .line 100
    add-int v12, v1, v13

    .line 101
    .line 102
    if-ge v12, v11, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 106
    .line 107
    throw v0

    .line 108
    :cond_3
    :goto_1
    sub-int v11, v12, v1

    .line 109
    .line 110
    add-int/2addr v11, v7

    .line 111
    int-to-float v11, v11

    .line 112
    div-float/2addr v11, v5

    .line 113
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    add-int/2addr v13, v7

    .line 118
    int-to-float v7, v13

    .line 119
    div-float/2addr v7, v5

    .line 120
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-lez v11, :cond_c

    .line 125
    .line 126
    if-lez v7, :cond_c

    .line 127
    .line 128
    if-ne v7, v11, :cond_b

    .line 129
    .line 130
    div-float v13, v5, v16

    .line 131
    .line 132
    float-to-int v13, v13

    .line 133
    add-int/2addr v6, v13

    .line 134
    add-int/2addr v1, v13

    .line 135
    add-int/lit8 v14, v11, -0x1

    .line 136
    .line 137
    int-to-float v14, v14

    .line 138
    mul-float v14, v14, v5

    .line 139
    .line 140
    float-to-int v14, v14

    .line 141
    add-int/2addr v14, v1

    .line 142
    sub-int/2addr v14, v12

    .line 143
    if-lez v14, :cond_5

    .line 144
    .line 145
    if-gt v14, v13, :cond_4

    .line 146
    .line 147
    sub-int/2addr v1, v14

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 150
    .line 151
    throw v0

    .line 152
    :cond_5
    :goto_2
    add-int/lit8 v12, v7, -0x1

    .line 153
    .line 154
    int-to-float v12, v12

    .line 155
    mul-float v12, v12, v5

    .line 156
    .line 157
    float-to-int v12, v12

    .line 158
    add-int/2addr v12, v6

    .line 159
    sub-int/2addr v12, v10

    .line 160
    if-lez v12, :cond_7

    .line 161
    .line 162
    if-gt v12, v13, :cond_6

    .line 163
    .line 164
    sub-int/2addr v6, v12

    .line 165
    goto :goto_3

    .line 166
    :cond_6
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 167
    .line 168
    throw v0

    .line 169
    :cond_7
    :goto_3
    new-instance v10, Ls5/b;

    .line 170
    .line 171
    invoke-direct {v10, v11, v7}, Ls5/b;-><init>(II)V

    .line 172
    .line 173
    .line 174
    const/4 v12, 0x0

    .line 175
    :goto_4
    if-ge v12, v7, :cond_a

    .line 176
    .line 177
    int-to-float v13, v12

    .line 178
    mul-float v13, v13, v5

    .line 179
    .line 180
    float-to-int v13, v13

    .line 181
    add-int/2addr v13, v6

    .line 182
    const/4 v14, 0x0

    .line 183
    :goto_5
    if-ge v14, v11, :cond_9

    .line 184
    .line 185
    int-to-float v15, v14

    .line 186
    mul-float v15, v15, v5

    .line 187
    .line 188
    float-to-int v15, v15

    .line 189
    add-int/2addr v15, v1

    .line 190
    invoke-virtual {v9, v15, v13}, Ls5/b;->b(II)Z

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    if-eqz v15, :cond_8

    .line 195
    .line 196
    invoke-virtual {v10, v14, v12}, Ls5/b;->f(II)V

    .line 197
    .line 198
    .line 199
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_a
    invoke-virtual {v4, v10, v0}, Lj6/c;->d(Ls5/b;Ljava/util/Map;)Ls5/d;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sget-object v1, Li6/a;->b:[Lm5/o;

    .line 210
    .line 211
    const/4 v15, 0x3

    .line 212
    goto/16 :goto_20

    .line 213
    .line 214
    :cond_b
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 215
    .line 216
    throw v0

    .line 217
    :cond_c
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 218
    .line 219
    throw v0

    .line 220
    :cond_d
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 221
    .line 222
    throw v0

    .line 223
    :cond_e
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 224
    .line 225
    throw v0

    .line 226
    :cond_f
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 227
    .line 228
    throw v0

    .line 229
    :cond_10
    const/high16 v16, 0x40000000    # 2.0f

    .line 230
    .line 231
    new-instance v1, Lu0/j;

    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Lm5/b;->a()Ls5/b;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    const/16 v9, 0xe

    .line 238
    .line 239
    invoke-direct {v1, v5, v9}, Lu0/j;-><init>(Ls5/b;I)V

    .line 240
    .line 241
    .line 242
    if-nez v0, :cond_11

    .line 243
    .line 244
    const/4 v10, 0x0

    .line 245
    goto :goto_6

    .line 246
    :cond_11
    sget-object v10, Lm5/d;->j:Lm5/d;

    .line 247
    .line 248
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    check-cast v10, Lm5/p;

    .line 253
    .line 254
    :goto_6
    iput-object v10, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 255
    .line 256
    new-instance v11, Lk6/e;

    .line 257
    .line 258
    invoke-direct {v11, v5, v10}, Lk6/e;-><init>(Ls5/b;Lm5/p;)V

    .line 259
    .line 260
    .line 261
    if-eqz v0, :cond_12

    .line 262
    .line 263
    sget-object v10, Lm5/d;->d:Lm5/d;

    .line 264
    .line 265
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    if-eqz v10, :cond_12

    .line 270
    .line 271
    const/4 v10, 0x1

    .line 272
    goto :goto_7

    .line 273
    :cond_12
    const/4 v10, 0x0

    .line 274
    :goto_7
    iget v12, v5, Ls5/b;->b:I

    .line 275
    .line 276
    iget v13, v5, Ls5/b;->a:I

    .line 277
    .line 278
    mul-int/lit8 v14, v12, 0x3

    .line 279
    .line 280
    div-int/lit16 v14, v14, 0x184

    .line 281
    .line 282
    if-lt v14, v2, :cond_13

    .line 283
    .line 284
    if-eqz v10, :cond_14

    .line 285
    .line 286
    :cond_13
    const/4 v14, 0x3

    .line 287
    :cond_14
    new-array v6, v6, [I

    .line 288
    .line 289
    add-int/lit8 v10, v14, -0x1

    .line 290
    .line 291
    const/4 v15, 0x0

    .line 292
    :goto_8
    const/16 v17, 0x3

    .line 293
    .line 294
    iget-object v2, v11, Lk6/e;->b:Ljava/util/ArrayList;

    .line 295
    .line 296
    if-ge v10, v12, :cond_24

    .line 297
    .line 298
    if-nez v15, :cond_24

    .line 299
    .line 300
    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([II)V

    .line 301
    .line 302
    .line 303
    move/from16 v19, v14

    .line 304
    .line 305
    const/4 v14, 0x0

    .line 306
    :goto_9
    if-ge v8, v13, :cond_21

    .line 307
    .line 308
    invoke-virtual {v5, v8, v10}, Ls5/b;->b(II)Z

    .line 309
    .line 310
    .line 311
    move-result v21

    .line 312
    if-eqz v21, :cond_16

    .line 313
    .line 314
    and-int/lit8 v9, v14, 0x1

    .line 315
    .line 316
    if-ne v9, v7, :cond_15

    .line 317
    .line 318
    add-int/lit8 v14, v14, 0x1

    .line 319
    .line 320
    :cond_15
    aget v9, v6, v14

    .line 321
    .line 322
    add-int/2addr v9, v7

    .line 323
    aput v9, v6, v14

    .line 324
    .line 325
    :goto_a
    const/16 v22, 0x1

    .line 326
    .line 327
    goto/16 :goto_11

    .line 328
    .line 329
    :cond_16
    and-int/lit8 v9, v14, 0x1

    .line 330
    .line 331
    if-nez v9, :cond_20

    .line 332
    .line 333
    const/4 v9, 0x4

    .line 334
    if-ne v14, v9, :cond_1f

    .line 335
    .line 336
    invoke-static {v6}, Lk6/e;->b([I)Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-eqz v9, :cond_1e

    .line 341
    .line 342
    invoke-virtual {v11, v10, v8, v6}, Lk6/e;->c(II[I)Z

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    if-eqz v9, :cond_1d

    .line 347
    .line 348
    iget-boolean v9, v11, Lk6/e;->c:Z

    .line 349
    .line 350
    if-eqz v9, :cond_17

    .line 351
    .line 352
    invoke-virtual {v11}, Lk6/e;->d()Z

    .line 353
    .line 354
    .line 355
    move-result v15

    .line 356
    const/16 v18, 0x2

    .line 357
    .line 358
    :goto_b
    const/4 v3, 0x0

    .line 359
    goto :goto_f

    .line 360
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    if-gt v9, v7, :cond_18

    .line 365
    .line 366
    move/from16 v23, v8

    .line 367
    .line 368
    const/4 v3, 0x0

    .line 369
    const/16 v18, 0x2

    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    const/4 v14, 0x0

    .line 377
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v19

    .line 381
    if-eqz v19, :cond_1b

    .line 382
    .line 383
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v19

    .line 387
    move-object/from16 v7, v19

    .line 388
    .line 389
    check-cast v7, Lk6/c;

    .line 390
    .line 391
    iget v3, v7, Lk6/c;->d:I

    .line 392
    .line 393
    move/from16 v23, v8

    .line 394
    .line 395
    const/4 v8, 0x2

    .line 396
    if-lt v3, v8, :cond_1a

    .line 397
    .line 398
    if-nez v14, :cond_19

    .line 399
    .line 400
    move-object/from16 v3, p0

    .line 401
    .line 402
    move-object v14, v7

    .line 403
    :goto_d
    move/from16 v8, v23

    .line 404
    .line 405
    const/4 v7, 0x1

    .line 406
    goto :goto_c

    .line 407
    :cond_19
    const/4 v3, 0x1

    .line 408
    iput-boolean v3, v11, Lk6/e;->c:Z

    .line 409
    .line 410
    iget v3, v14, Lm5/o;->a:F

    .line 411
    .line 412
    iget v8, v7, Lm5/o;->a:F

    .line 413
    .line 414
    sub-float/2addr v3, v8

    .line 415
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    iget v8, v14, Lm5/o;->b:F

    .line 420
    .line 421
    iget v7, v7, Lm5/o;->b:F

    .line 422
    .line 423
    sub-float/2addr v8, v7

    .line 424
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    sub-float/2addr v3, v7

    .line 429
    float-to-int v3, v3

    .line 430
    const/16 v18, 0x2

    .line 431
    .line 432
    div-int/lit8 v3, v3, 0x2

    .line 433
    .line 434
    goto :goto_e

    .line 435
    :cond_1a
    move-object/from16 v3, p0

    .line 436
    .line 437
    goto :goto_d

    .line 438
    :cond_1b
    move/from16 v23, v8

    .line 439
    .line 440
    const/16 v18, 0x2

    .line 441
    .line 442
    const/4 v3, 0x0

    .line 443
    :goto_e
    aget v7, v6, v18

    .line 444
    .line 445
    if-le v3, v7, :cond_1c

    .line 446
    .line 447
    sub-int/2addr v3, v7

    .line 448
    add-int/lit8 v3, v3, -0x2

    .line 449
    .line 450
    add-int/2addr v10, v3

    .line 451
    add-int/lit8 v8, v13, -0x1

    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_1c
    move/from16 v8, v23

    .line 455
    .line 456
    goto :goto_b

    .line 457
    :goto_f
    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([II)V

    .line 458
    .line 459
    .line 460
    const/4 v14, 0x0

    .line 461
    const/16 v19, 0x2

    .line 462
    .line 463
    goto/16 :goto_a

    .line 464
    .line 465
    :cond_1d
    move/from16 v23, v8

    .line 466
    .line 467
    const/4 v3, 0x0

    .line 468
    const/16 v18, 0x2

    .line 469
    .line 470
    aget v7, v6, v18

    .line 471
    .line 472
    aput v7, v6, v3

    .line 473
    .line 474
    aget v7, v6, v17

    .line 475
    .line 476
    const/16 v22, 0x1

    .line 477
    .line 478
    aput v7, v6, v22

    .line 479
    .line 480
    const/16 v21, 0x4

    .line 481
    .line 482
    aget v7, v6, v21

    .line 483
    .line 484
    aput v7, v6, v18

    .line 485
    .line 486
    aput v22, v6, v17

    .line 487
    .line 488
    aput v3, v6, v21

    .line 489
    .line 490
    :goto_10
    const/4 v14, 0x3

    .line 491
    goto :goto_11

    .line 492
    :cond_1e
    move/from16 v23, v8

    .line 493
    .line 494
    const/4 v3, 0x0

    .line 495
    const/16 v18, 0x2

    .line 496
    .line 497
    const/16 v21, 0x4

    .line 498
    .line 499
    const/16 v22, 0x1

    .line 500
    .line 501
    aget v7, v6, v18

    .line 502
    .line 503
    aput v7, v6, v3

    .line 504
    .line 505
    aget v7, v6, v17

    .line 506
    .line 507
    aput v7, v6, v22

    .line 508
    .line 509
    aget v7, v6, v21

    .line 510
    .line 511
    aput v7, v6, v18

    .line 512
    .line 513
    aput v22, v6, v17

    .line 514
    .line 515
    aput v3, v6, v21

    .line 516
    .line 517
    goto :goto_10

    .line 518
    :cond_1f
    move/from16 v23, v8

    .line 519
    .line 520
    const/16 v22, 0x1

    .line 521
    .line 522
    add-int/lit8 v3, v14, 0x1

    .line 523
    .line 524
    aget v7, v6, v3

    .line 525
    .line 526
    add-int/lit8 v7, v7, 0x1

    .line 527
    .line 528
    aput v7, v6, v3

    .line 529
    .line 530
    move v14, v3

    .line 531
    goto :goto_11

    .line 532
    :cond_20
    move/from16 v23, v8

    .line 533
    .line 534
    const/16 v22, 0x1

    .line 535
    .line 536
    aget v3, v6, v14

    .line 537
    .line 538
    add-int/lit8 v3, v3, 0x1

    .line 539
    .line 540
    aput v3, v6, v14

    .line 541
    .line 542
    :goto_11
    add-int/lit8 v8, v8, 0x1

    .line 543
    .line 544
    move-object/from16 v3, p0

    .line 545
    .line 546
    const/4 v7, 0x1

    .line 547
    goto/16 :goto_9

    .line 548
    .line 549
    :cond_21
    invoke-static {v6}, Lk6/e;->b([I)Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-eqz v2, :cond_23

    .line 554
    .line 555
    invoke-virtual {v11, v10, v13, v6}, Lk6/e;->c(II[I)Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_23

    .line 560
    .line 561
    const/16 v20, 0x0

    .line 562
    .line 563
    aget v2, v6, v20

    .line 564
    .line 565
    iget-boolean v3, v11, Lk6/e;->c:Z

    .line 566
    .line 567
    if-eqz v3, :cond_22

    .line 568
    .line 569
    invoke-virtual {v11}, Lk6/e;->d()Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    move v14, v2

    .line 574
    move v15, v3

    .line 575
    goto :goto_12

    .line 576
    :cond_22
    move v14, v2

    .line 577
    goto :goto_12

    .line 578
    :cond_23
    move/from16 v14, v19

    .line 579
    .line 580
    :goto_12
    add-int/2addr v10, v14

    .line 581
    move-object/from16 v3, p0

    .line 582
    .line 583
    const/4 v2, 0x3

    .line 584
    const/4 v7, 0x1

    .line 585
    const/4 v8, 0x0

    .line 586
    goto/16 :goto_8

    .line 587
    .line 588
    :cond_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    const/4 v6, 0x3

    .line 593
    if-lt v3, v6, :cond_40

    .line 594
    .line 595
    invoke-static {v2}, La4/h;->v(Ljava/util/List;)V

    .line 596
    .line 597
    .line 598
    new-array v3, v6, [Lk6/c;

    .line 599
    .line 600
    const/4 v8, 0x0

    .line 601
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 607
    .line 608
    .line 609
    move-result v11

    .line 610
    const/16 v18, 0x2

    .line 611
    .line 612
    add-int/lit8 v11, v11, -0x2

    .line 613
    .line 614
    if-ge v8, v11, :cond_2d

    .line 615
    .line 616
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v11

    .line 620
    check-cast v11, Lk6/c;

    .line 621
    .line 622
    iget v12, v11, Lk6/c;->c:F

    .line 623
    .line 624
    add-int/lit8 v8, v8, 0x1

    .line 625
    .line 626
    move v13, v8

    .line 627
    :cond_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 628
    .line 629
    .line 630
    move-result v14

    .line 631
    const/16 v22, 0x1

    .line 632
    .line 633
    add-int/lit8 v14, v14, -0x1

    .line 634
    .line 635
    if-ge v13, v14, :cond_25

    .line 636
    .line 637
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v14

    .line 641
    check-cast v14, Lk6/c;

    .line 642
    .line 643
    invoke-static {v11, v14}, Lk6/e;->e(Lk6/c;Lk6/c;)D

    .line 644
    .line 645
    .line 646
    move-result-wide v23

    .line 647
    add-int/lit8 v13, v13, 0x1

    .line 648
    .line 649
    move v15, v13

    .line 650
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 656
    .line 657
    .line 658
    move-result v6

    .line 659
    if-ge v15, v6, :cond_26

    .line 660
    .line 661
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    check-cast v6, Lk6/c;

    .line 666
    .line 667
    iget v7, v6, Lk6/c;->c:F

    .line 668
    .line 669
    const v19, 0x3fb33333    # 1.4f

    .line 670
    .line 671
    .line 672
    mul-float v19, v19, v12

    .line 673
    .line 674
    cmpl-float v7, v7, v19

    .line 675
    .line 676
    if-gtz v7, :cond_2c

    .line 677
    .line 678
    invoke-static {v14, v6}, Lk6/e;->e(Lk6/c;Lk6/c;)D

    .line 679
    .line 680
    .line 681
    move-result-wide v27

    .line 682
    invoke-static {v11, v6}, Lk6/e;->e(Lk6/c;Lk6/c;)D

    .line 683
    .line 684
    .line 685
    move-result-wide v29

    .line 686
    cmpg-double v7, v23, v27

    .line 687
    .line 688
    if-gez v7, :cond_29

    .line 689
    .line 690
    cmpl-double v7, v27, v29

    .line 691
    .line 692
    if-lez v7, :cond_28

    .line 693
    .line 694
    cmpg-double v7, v23, v29

    .line 695
    .line 696
    if-gez v7, :cond_27

    .line 697
    .line 698
    :goto_14
    move-wide/from16 v31, v23

    .line 699
    .line 700
    goto :goto_17

    .line 701
    :cond_27
    move-wide/from16 v31, v29

    .line 702
    .line 703
    :goto_15
    move-wide/from16 v29, v23

    .line 704
    .line 705
    goto :goto_17

    .line 706
    :cond_28
    move-wide/from16 v31, v29

    .line 707
    .line 708
    move-wide/from16 v29, v27

    .line 709
    .line 710
    move-wide/from16 v27, v31

    .line 711
    .line 712
    goto :goto_14

    .line 713
    :cond_29
    cmpg-double v7, v27, v29

    .line 714
    .line 715
    if-gez v7, :cond_2b

    .line 716
    .line 717
    cmpg-double v7, v23, v29

    .line 718
    .line 719
    if-gez v7, :cond_2a

    .line 720
    .line 721
    move-wide/from16 v31, v27

    .line 722
    .line 723
    move-wide/from16 v27, v29

    .line 724
    .line 725
    goto :goto_15

    .line 726
    :cond_2a
    move-wide/from16 v31, v27

    .line 727
    .line 728
    :goto_16
    move-wide/from16 v27, v23

    .line 729
    .line 730
    goto :goto_17

    .line 731
    :cond_2b
    move-wide/from16 v31, v29

    .line 732
    .line 733
    move-wide/from16 v29, v27

    .line 734
    .line 735
    goto :goto_16

    .line 736
    :goto_17
    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    .line 737
    .line 738
    mul-double v29, v29, v33

    .line 739
    .line 740
    sub-double v29, v27, v29

    .line 741
    .line 742
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    .line 743
    .line 744
    .line 745
    move-result-wide v29

    .line 746
    mul-double v31, v31, v33

    .line 747
    .line 748
    sub-double v27, v27, v31

    .line 749
    .line 750
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(D)D

    .line 751
    .line 752
    .line 753
    move-result-wide v27

    .line 754
    add-double v27, v27, v29

    .line 755
    .line 756
    cmpg-double v7, v27, v9

    .line 757
    .line 758
    if-gez v7, :cond_2c

    .line 759
    .line 760
    const/16 v20, 0x0

    .line 761
    .line 762
    aput-object v11, v3, v20

    .line 763
    .line 764
    const/16 v22, 0x1

    .line 765
    .line 766
    aput-object v14, v3, v22

    .line 767
    .line 768
    const/16 v18, 0x2

    .line 769
    .line 770
    aput-object v6, v3, v18

    .line 771
    .line 772
    move-wide/from16 v9, v27

    .line 773
    .line 774
    :cond_2c
    add-int/lit8 v15, v15, 0x1

    .line 775
    .line 776
    goto :goto_13

    .line 777
    :cond_2d
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    cmpl-double v2, v9, v25

    .line 783
    .line 784
    if-eqz v2, :cond_3f

    .line 785
    .line 786
    const/16 v20, 0x0

    .line 787
    .line 788
    aget-object v2, v3, v20

    .line 789
    .line 790
    const/16 v22, 0x1

    .line 791
    .line 792
    aget-object v6, v3, v22

    .line 793
    .line 794
    invoke-static {v2, v6}, Lm5/o;->a(Lm5/o;Lm5/o;)F

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    aget-object v6, v3, v22

    .line 799
    .line 800
    const/16 v18, 0x2

    .line 801
    .line 802
    aget-object v7, v3, v18

    .line 803
    .line 804
    invoke-static {v6, v7}, Lm5/o;->a(Lm5/o;Lm5/o;)F

    .line 805
    .line 806
    .line 807
    move-result v6

    .line 808
    aget-object v7, v3, v20

    .line 809
    .line 810
    aget-object v8, v3, v18

    .line 811
    .line 812
    invoke-static {v7, v8}, Lm5/o;->a(Lm5/o;Lm5/o;)F

    .line 813
    .line 814
    .line 815
    move-result v7

    .line 816
    cmpl-float v8, v6, v2

    .line 817
    .line 818
    if-ltz v8, :cond_2e

    .line 819
    .line 820
    cmpl-float v8, v6, v7

    .line 821
    .line 822
    if-ltz v8, :cond_2e

    .line 823
    .line 824
    aget-object v2, v3, v20

    .line 825
    .line 826
    aget-object v6, v3, v22

    .line 827
    .line 828
    aget-object v7, v3, v18

    .line 829
    .line 830
    goto :goto_18

    .line 831
    :cond_2e
    cmpl-float v6, v7, v6

    .line 832
    .line 833
    if-ltz v6, :cond_2f

    .line 834
    .line 835
    cmpl-float v2, v7, v2

    .line 836
    .line 837
    if-ltz v2, :cond_2f

    .line 838
    .line 839
    aget-object v2, v3, v22

    .line 840
    .line 841
    aget-object v6, v3, v20

    .line 842
    .line 843
    aget-object v7, v3, v18

    .line 844
    .line 845
    goto :goto_18

    .line 846
    :cond_2f
    aget-object v2, v3, v18

    .line 847
    .line 848
    aget-object v6, v3, v20

    .line 849
    .line 850
    aget-object v7, v3, v22

    .line 851
    .line 852
    :goto_18
    iget v8, v2, Lm5/o;->a:F

    .line 853
    .line 854
    iget v9, v2, Lm5/o;->b:F

    .line 855
    .line 856
    iget v10, v7, Lm5/o;->a:F

    .line 857
    .line 858
    sub-float/2addr v10, v8

    .line 859
    iget v11, v6, Lm5/o;->b:F

    .line 860
    .line 861
    sub-float/2addr v11, v9

    .line 862
    mul-float v11, v11, v10

    .line 863
    .line 864
    iget v10, v7, Lm5/o;->b:F

    .line 865
    .line 866
    sub-float/2addr v10, v9

    .line 867
    iget v12, v6, Lm5/o;->a:F

    .line 868
    .line 869
    sub-float/2addr v12, v8

    .line 870
    mul-float v12, v12, v10

    .line 871
    .line 872
    sub-float/2addr v11, v12

    .line 873
    const/4 v8, 0x0

    .line 874
    cmpg-float v8, v11, v8

    .line 875
    .line 876
    if-gez v8, :cond_30

    .line 877
    .line 878
    move-object/from16 v20, v7

    .line 879
    .line 880
    move-object v7, v6

    .line 881
    move-object/from16 v6, v20

    .line 882
    .line 883
    :cond_30
    const/16 v20, 0x0

    .line 884
    .line 885
    aput-object v6, v3, v20

    .line 886
    .line 887
    const/16 v22, 0x1

    .line 888
    .line 889
    aput-object v2, v3, v22

    .line 890
    .line 891
    const/16 v18, 0x2

    .line 892
    .line 893
    aput-object v7, v3, v18

    .line 894
    .line 895
    invoke-virtual {v1, v2, v7}, Lu0/j;->h(Lk6/c;Lk6/c;)F

    .line 896
    .line 897
    .line 898
    move-result v3

    .line 899
    iget v8, v2, Lm5/o;->a:F

    .line 900
    .line 901
    iget v10, v7, Lm5/o;->b:F

    .line 902
    .line 903
    iget v11, v7, Lm5/o;->a:F

    .line 904
    .line 905
    invoke-virtual {v1, v2, v6}, Lu0/j;->h(Lk6/c;Lk6/c;)F

    .line 906
    .line 907
    .line 908
    move-result v12

    .line 909
    iget v13, v6, Lm5/o;->b:F

    .line 910
    .line 911
    iget v14, v6, Lm5/o;->a:F

    .line 912
    .line 913
    add-float/2addr v12, v3

    .line 914
    div-float v12, v12, v16

    .line 915
    .line 916
    const/high16 v3, 0x3f800000    # 1.0f

    .line 917
    .line 918
    cmpg-float v15, v12, v3

    .line 919
    .line 920
    if-ltz v15, :cond_3e

    .line 921
    .line 922
    invoke-static {v2, v7}, Lm5/o;->a(Lm5/o;Lm5/o;)F

    .line 923
    .line 924
    .line 925
    move-result v15

    .line 926
    div-float/2addr v15, v12

    .line 927
    invoke-static {v15}, Lp4/e;->z(F)I

    .line 928
    .line 929
    .line 930
    move-result v15

    .line 931
    invoke-static {v2, v6}, Lm5/o;->a(Lm5/o;Lm5/o;)F

    .line 932
    .line 933
    .line 934
    move-result v16

    .line 935
    div-float v16, v16, v12

    .line 936
    .line 937
    invoke-static/range {v16 .. v16}, Lp4/e;->z(F)I

    .line 938
    .line 939
    .line 940
    move-result v16

    .line 941
    add-int v16, v16, v15

    .line 942
    .line 943
    const/4 v15, 0x2

    .line 944
    div-int/lit8 v16, v16, 0x2

    .line 945
    .line 946
    add-int/lit8 v19, v16, 0x7

    .line 947
    .line 948
    const/high16 v23, 0x3f800000    # 1.0f

    .line 949
    .line 950
    and-int/lit8 v3, v19, 0x3

    .line 951
    .line 952
    if-eqz v3, :cond_33

    .line 953
    .line 954
    if-eq v3, v15, :cond_32

    .line 955
    .line 956
    const/4 v15, 0x3

    .line 957
    if-eq v3, v15, :cond_31

    .line 958
    .line 959
    :goto_19
    move/from16 v3, v19

    .line 960
    .line 961
    goto :goto_1a

    .line 962
    :cond_31
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 963
    .line 964
    throw v0

    .line 965
    :cond_32
    add-int/lit8 v19, v16, 0x6

    .line 966
    .line 967
    goto :goto_19

    .line 968
    :cond_33
    add-int/lit8 v19, v16, 0x8

    .line 969
    .line 970
    goto :goto_19

    .line 971
    :goto_1a
    sget-object v15, Lj6/h;->e:[I

    .line 972
    .line 973
    rem-int/lit8 v15, v3, 0x4

    .line 974
    .line 975
    move/from16 v16, v8

    .line 976
    .line 977
    const/4 v8, 0x1

    .line 978
    if-ne v15, v8, :cond_3d

    .line 979
    .line 980
    add-int/lit8 v8, v3, -0x11

    .line 981
    .line 982
    const/16 v21, 0x4

    .line 983
    .line 984
    :try_start_0
    div-int/lit8 v8, v8, 0x4

    .line 985
    .line 986
    invoke-static {v8}, Lj6/h;->c(I)Lj6/h;

    .line 987
    .line 988
    .line 989
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 990
    iget v15, v8, Lj6/h;->a:I

    .line 991
    .line 992
    mul-int/lit8 v15, v15, 0x4

    .line 993
    .line 994
    add-int/lit8 v15, v15, 0xa

    .line 995
    .line 996
    iget-object v8, v8, Lj6/h;->b:[I

    .line 997
    .line 998
    array-length v8, v8

    .line 999
    const/high16 v19, 0x40400000    # 3.0f

    .line 1000
    .line 1001
    if-lez v8, :cond_34

    .line 1002
    .line 1003
    sub-float v8, v11, v16

    .line 1004
    .line 1005
    add-float/2addr v8, v14

    .line 1006
    sub-float v24, v10, v9

    .line 1007
    .line 1008
    add-float v24, v24, v13

    .line 1009
    .line 1010
    int-to-float v15, v15

    .line 1011
    div-float v15, v19, v15

    .line 1012
    .line 1013
    sub-float v15, v23, v15

    .line 1014
    .line 1015
    sub-float v8, v8, v16

    .line 1016
    .line 1017
    mul-float v8, v8, v15

    .line 1018
    .line 1019
    add-float v8, v8, v16

    .line 1020
    .line 1021
    float-to-int v8, v8

    .line 1022
    sub-float v24, v24, v9

    .line 1023
    .line 1024
    mul-float v24, v24, v15

    .line 1025
    .line 1026
    add-float v15, v24, v9

    .line 1027
    .line 1028
    float-to-int v15, v15

    .line 1029
    move/from16 v23, v9

    .line 1030
    .line 1031
    move/from16 v24, v10

    .line 1032
    .line 1033
    const/4 v9, 0x4

    .line 1034
    :goto_1b
    const/16 v10, 0x10

    .line 1035
    .line 1036
    if-gt v9, v10, :cond_35

    .line 1037
    .line 1038
    int-to-float v10, v9

    .line 1039
    :try_start_1
    invoke-virtual {v1, v12, v8, v15, v10}, Lu0/j;->n(FIIF)Lk6/a;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v9
    :try_end_1
    .catch Lm5/i; {:try_start_1 .. :try_end_1} :catch_0

    .line 1043
    goto :goto_1c

    .line 1044
    :catch_0
    shl-int/lit8 v9, v9, 0x1

    .line 1045
    .line 1046
    goto :goto_1b

    .line 1047
    :cond_34
    move/from16 v23, v9

    .line 1048
    .line 1049
    move/from16 v24, v10

    .line 1050
    .line 1051
    :cond_35
    const/4 v9, 0x0

    .line 1052
    :goto_1c
    int-to-float v1, v3

    .line 1053
    const/high16 v8, 0x40600000    # 3.5f

    .line 1054
    .line 1055
    sub-float v27, v1, v8

    .line 1056
    .line 1057
    if-eqz v9, :cond_36

    .line 1058
    .line 1059
    iget v1, v9, Lm5/o;->a:F

    .line 1060
    .line 1061
    iget v8, v9, Lm5/o;->b:F

    .line 1062
    .line 1063
    sub-float v10, v27, v19

    .line 1064
    .line 1065
    move/from16 v29, v10

    .line 1066
    .line 1067
    :goto_1d
    move/from16 v37, v1

    .line 1068
    .line 1069
    move/from16 v38, v8

    .line 1070
    .line 1071
    goto :goto_1e

    .line 1072
    :cond_36
    sub-float v11, v11, v16

    .line 1073
    .line 1074
    add-float v1, v11, v14

    .line 1075
    .line 1076
    sub-float v10, v24, v23

    .line 1077
    .line 1078
    add-float v8, v10, v13

    .line 1079
    .line 1080
    move/from16 v29, v27

    .line 1081
    .line 1082
    goto :goto_1d

    .line 1083
    :goto_1e
    iget v1, v2, Lm5/o;->a:F

    .line 1084
    .line 1085
    iget v8, v2, Lm5/o;->b:F

    .line 1086
    .line 1087
    iget v10, v7, Lm5/o;->a:F

    .line 1088
    .line 1089
    iget v11, v7, Lm5/o;->b:F

    .line 1090
    .line 1091
    iget v12, v6, Lm5/o;->a:F

    .line 1092
    .line 1093
    iget v13, v6, Lm5/o;->b:F

    .line 1094
    .line 1095
    const/high16 v25, 0x40600000    # 3.5f

    .line 1096
    .line 1097
    const/high16 v26, 0x40600000    # 3.5f

    .line 1098
    .line 1099
    const/high16 v28, 0x40600000    # 3.5f

    .line 1100
    .line 1101
    const/high16 v31, 0x40600000    # 3.5f

    .line 1102
    .line 1103
    move/from16 v30, v29

    .line 1104
    .line 1105
    move/from16 v32, v27

    .line 1106
    .line 1107
    move/from16 v33, v1

    .line 1108
    .line 1109
    move/from16 v34, v8

    .line 1110
    .line 1111
    move/from16 v35, v10

    .line 1112
    .line 1113
    move/from16 v36, v11

    .line 1114
    .line 1115
    move/from16 v39, v12

    .line 1116
    .line 1117
    move/from16 v40, v13

    .line 1118
    .line 1119
    invoke-static/range {v25 .. v40}, Ls5/f;->a(FFFFFFFFFFFFFFFF)Ls5/f;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    invoke-static {v5, v3, v3, v1}, Lp9/l;->s(Ls5/b;IILs5/f;)Ls5/b;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    if-nez v9, :cond_37

    .line 1128
    .line 1129
    const/4 v15, 0x3

    .line 1130
    new-array v3, v15, [Lm5/o;

    .line 1131
    .line 1132
    const/16 v20, 0x0

    .line 1133
    .line 1134
    aput-object v6, v3, v20

    .line 1135
    .line 1136
    const/16 v22, 0x1

    .line 1137
    .line 1138
    aput-object v2, v3, v22

    .line 1139
    .line 1140
    const/16 v18, 0x2

    .line 1141
    .line 1142
    aput-object v7, v3, v18

    .line 1143
    .line 1144
    goto :goto_1f

    .line 1145
    :cond_37
    const/4 v3, 0x4

    .line 1146
    const/4 v15, 0x3

    .line 1147
    const/16 v18, 0x2

    .line 1148
    .line 1149
    const/16 v20, 0x0

    .line 1150
    .line 1151
    const/16 v22, 0x1

    .line 1152
    .line 1153
    new-array v3, v3, [Lm5/o;

    .line 1154
    .line 1155
    aput-object v6, v3, v20

    .line 1156
    .line 1157
    aput-object v2, v3, v22

    .line 1158
    .line 1159
    aput-object v7, v3, v18

    .line 1160
    .line 1161
    aput-object v9, v3, v15

    .line 1162
    .line 1163
    :goto_1f
    invoke-virtual {v4, v1, v0}, Lj6/c;->d(Ls5/b;Ljava/util/Map;)Ls5/d;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    move-object v1, v3

    .line 1168
    :goto_20
    iget v2, v0, Ls5/d;->f:I

    .line 1169
    .line 1170
    iget-object v3, v0, Ls5/d;->e:Ljava/lang/Object;

    .line 1171
    .line 1172
    instance-of v3, v3, Lj6/g;

    .line 1173
    .line 1174
    if-eqz v3, :cond_39

    .line 1175
    .line 1176
    array-length v3, v1

    .line 1177
    if-ge v3, v15, :cond_38

    .line 1178
    .line 1179
    goto :goto_21

    .line 1180
    :cond_38
    const/16 v20, 0x0

    .line 1181
    .line 1182
    aget-object v3, v1, v20

    .line 1183
    .line 1184
    const/16 v18, 0x2

    .line 1185
    .line 1186
    aget-object v4, v1, v18

    .line 1187
    .line 1188
    aput-object v4, v1, v20

    .line 1189
    .line 1190
    aput-object v3, v1, v18

    .line 1191
    .line 1192
    :cond_39
    :goto_21
    new-instance v3, Lm5/m;

    .line 1193
    .line 1194
    iget-object v4, v0, Ls5/d;->b:Ljava/lang/String;

    .line 1195
    .line 1196
    iget-object v5, v0, Ls5/d;->a:[B

    .line 1197
    .line 1198
    sget-object v6, Lm5/a;->l:Lm5/a;

    .line 1199
    .line 1200
    invoke-direct {v3, v4, v5, v1, v6}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v1, v0, Ls5/d;->c:Ljava/util/List;

    .line 1204
    .line 1205
    if-eqz v1, :cond_3a

    .line 1206
    .line 1207
    sget-object v4, Lm5/n;->b:Lm5/n;

    .line 1208
    .line 1209
    invoke-virtual {v3, v4, v1}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 1210
    .line 1211
    .line 1212
    :cond_3a
    iget-object v1, v0, Ls5/d;->d:Ljava/lang/String;

    .line 1213
    .line 1214
    if-eqz v1, :cond_3b

    .line 1215
    .line 1216
    sget-object v4, Lm5/n;->c:Lm5/n;

    .line 1217
    .line 1218
    invoke-virtual {v3, v4, v1}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 1219
    .line 1220
    .line 1221
    :cond_3b
    if-ltz v2, :cond_3c

    .line 1222
    .line 1223
    iget v0, v0, Ls5/d;->g:I

    .line 1224
    .line 1225
    if-ltz v0, :cond_3c

    .line 1226
    .line 1227
    sget-object v1, Lm5/n;->i:Lm5/n;

    .line 1228
    .line 1229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    invoke-virtual {v3, v1, v0}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 1234
    .line 1235
    .line 1236
    sget-object v0, Lm5/n;->j:Lm5/n;

    .line 1237
    .line 1238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    invoke-virtual {v3, v0, v1}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 1243
    .line 1244
    .line 1245
    :cond_3c
    return-object v3

    .line 1246
    :catch_1
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    throw v0

    .line 1251
    :cond_3d
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    throw v0

    .line 1256
    :cond_3e
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 1257
    .line 1258
    throw v0

    .line 1259
    :cond_3f
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 1260
    .line 1261
    throw v0

    .line 1262
    :cond_40
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 1263
    .line 1264
    throw v0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
