.class public final Lm5/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ls5/e;

.field public b:Ls5/b;


# direct methods
.method public constructor <init>(Ls5/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm5/b;->a:Ls5/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ls5/b;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lm5/b;->b:Ls5/b;

    .line 4
    .line 5
    if-nez v1, :cond_20

    .line 6
    .line 7
    iget-object v1, v0, Lm5/b;->a:Ls5/e;

    .line 8
    .line 9
    iget-object v2, v1, Ls5/e;->c:[I

    .line 10
    .line 11
    iget-object v3, v1, Ls5/e;->d:Ls5/b;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_13

    .line 16
    .line 17
    :cond_0
    iget-object v3, v1, Ls5/e;->a:Lg1/j0;

    .line 18
    .line 19
    iget v4, v3, Lg1/j0;->b:I

    .line 20
    .line 21
    iget v5, v3, Lg1/j0;->c:I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    const/16 v8, 0x28

    .line 26
    .line 27
    if-lt v4, v8, :cond_18

    .line 28
    .line 29
    if-lt v5, v8, :cond_18

    .line 30
    .line 31
    invoke-virtual {v3}, Lg1/j0;->e()[B

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    shr-int/lit8 v3, v4, 0x3

    .line 36
    .line 37
    and-int/lit8 v8, v4, 0x7

    .line 38
    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    :cond_1
    shr-int/lit8 v8, v5, 0x3

    .line 44
    .line 45
    and-int/lit8 v10, v5, 0x7

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    add-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v10, v5, -0x8

    .line 52
    .line 53
    add-int/lit8 v11, v4, -0x8

    .line 54
    .line 55
    const/4 v12, 0x2

    .line 56
    new-array v13, v12, [I

    .line 57
    .line 58
    aput v3, v13, v6

    .line 59
    .line 60
    aput v8, v13, v7

    .line 61
    .line 62
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    check-cast v13, [[I

    .line 69
    .line 70
    const/4 v14, 0x0

    .line 71
    :goto_0
    const/16 v15, 0x8

    .line 72
    .line 73
    if-ge v14, v8, :cond_d

    .line 74
    .line 75
    const/16 v16, 0x1

    .line 76
    .line 77
    shl-int/lit8 v6, v14, 0x3

    .line 78
    .line 79
    if-le v6, v10, :cond_3

    .line 80
    .line 81
    move v6, v10

    .line 82
    :cond_3
    const/16 v17, 0x0

    .line 83
    .line 84
    :goto_1
    if-ge v7, v3, :cond_c

    .line 85
    .line 86
    const/16 v18, 0x2

    .line 87
    .line 88
    shl-int/lit8 v12, v7, 0x3

    .line 89
    .line 90
    if-le v12, v11, :cond_4

    .line 91
    .line 92
    move v12, v11

    .line 93
    :cond_4
    mul-int v19, v6, v4

    .line 94
    .line 95
    add-int v19, v19, v12

    .line 96
    .line 97
    const/4 v12, 0x0

    .line 98
    const/16 v20, 0x0

    .line 99
    .line 100
    const/16 v21, 0x0

    .line 101
    .line 102
    const/16 v22, 0xff

    .line 103
    .line 104
    :goto_2
    if-ge v12, v15, :cond_a

    .line 105
    .line 106
    move-object/from16 v23, v2

    .line 107
    .line 108
    move/from16 v24, v6

    .line 109
    .line 110
    move/from16 v9, v21

    .line 111
    .line 112
    move/from16 v2, v22

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    :goto_3
    if-ge v6, v15, :cond_7

    .line 116
    .line 117
    add-int v21, v19, v6

    .line 118
    .line 119
    aget-byte v15, v23, v21

    .line 120
    .line 121
    move/from16 v21, v6

    .line 122
    .line 123
    const/16 v6, 0xff

    .line 124
    .line 125
    and-int/2addr v15, v6

    .line 126
    add-int v20, v20, v15

    .line 127
    .line 128
    if-ge v15, v2, :cond_5

    .line 129
    .line 130
    move v2, v15

    .line 131
    :cond_5
    if-le v15, v9, :cond_6

    .line 132
    .line 133
    move v9, v15

    .line 134
    :cond_6
    add-int/lit8 v6, v21, 0x1

    .line 135
    .line 136
    const/16 v15, 0x8

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    sub-int v6, v9, v2

    .line 140
    .line 141
    const/16 v15, 0x18

    .line 142
    .line 143
    if-le v6, v15, :cond_9

    .line 144
    .line 145
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 146
    .line 147
    add-int v19, v19, v4

    .line 148
    .line 149
    const/16 v6, 0x8

    .line 150
    .line 151
    if-ge v12, v6, :cond_9

    .line 152
    .line 153
    const/4 v15, 0x0

    .line 154
    :goto_5
    if-ge v15, v6, :cond_8

    .line 155
    .line 156
    add-int v6, v19, v15

    .line 157
    .line 158
    aget-byte v6, v23, v6

    .line 159
    .line 160
    move/from16 v21, v2

    .line 161
    .line 162
    const/16 v2, 0xff

    .line 163
    .line 164
    and-int/2addr v6, v2

    .line 165
    add-int v20, v20, v6

    .line 166
    .line 167
    add-int/lit8 v15, v15, 0x1

    .line 168
    .line 169
    move/from16 v2, v21

    .line 170
    .line 171
    const/16 v6, 0x8

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    move/from16 v21, v2

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_9
    move/from16 v21, v2

    .line 178
    .line 179
    add-int/lit8 v12, v12, 0x1

    .line 180
    .line 181
    add-int v19, v19, v4

    .line 182
    .line 183
    move/from16 v22, v21

    .line 184
    .line 185
    move-object/from16 v2, v23

    .line 186
    .line 187
    move/from16 v6, v24

    .line 188
    .line 189
    const/16 v15, 0x8

    .line 190
    .line 191
    move/from16 v21, v9

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_a
    move-object/from16 v23, v2

    .line 195
    .line 196
    move/from16 v24, v6

    .line 197
    .line 198
    shr-int/lit8 v2, v20, 0x6

    .line 199
    .line 200
    move/from16 v9, v22

    .line 201
    .line 202
    sub-int v6, v21, v9

    .line 203
    .line 204
    const/16 v15, 0x18

    .line 205
    .line 206
    if-gt v6, v15, :cond_b

    .line 207
    .line 208
    div-int/lit8 v2, v9, 0x2

    .line 209
    .line 210
    if-lez v14, :cond_b

    .line 211
    .line 212
    if-lez v7, :cond_b

    .line 213
    .line 214
    add-int/lit8 v6, v14, -0x1

    .line 215
    .line 216
    aget-object v6, v13, v6

    .line 217
    .line 218
    aget v12, v6, v7

    .line 219
    .line 220
    aget-object v15, v13, v14

    .line 221
    .line 222
    add-int/lit8 v19, v7, -0x1

    .line 223
    .line 224
    aget v15, v15, v19

    .line 225
    .line 226
    mul-int/lit8 v15, v15, 0x2

    .line 227
    .line 228
    add-int/2addr v15, v12

    .line 229
    aget v6, v6, v19

    .line 230
    .line 231
    add-int/2addr v15, v6

    .line 232
    div-int/lit8 v6, v15, 0x4

    .line 233
    .line 234
    if-ge v9, v6, :cond_b

    .line 235
    .line 236
    move v2, v6

    .line 237
    :cond_b
    aget-object v6, v13, v14

    .line 238
    .line 239
    aput v2, v6, v7

    .line 240
    .line 241
    add-int/lit8 v7, v7, 0x1

    .line 242
    .line 243
    move-object/from16 v2, v23

    .line 244
    .line 245
    move/from16 v6, v24

    .line 246
    .line 247
    const/4 v12, 0x2

    .line 248
    const/16 v15, 0x8

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_c
    move-object/from16 v23, v2

    .line 253
    .line 254
    const/16 v18, 0x2

    .line 255
    .line 256
    add-int/lit8 v14, v14, 0x1

    .line 257
    .line 258
    const/4 v6, 0x1

    .line 259
    const/4 v7, 0x0

    .line 260
    const/4 v12, 0x2

    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_d
    move-object/from16 v23, v2

    .line 264
    .line 265
    const/16 v17, 0x0

    .line 266
    .line 267
    const/16 v18, 0x2

    .line 268
    .line 269
    new-instance v2, Ls5/b;

    .line 270
    .line 271
    invoke-direct {v2, v4, v5}, Ls5/b;-><init>(II)V

    .line 272
    .line 273
    .line 274
    const/4 v5, 0x0

    .line 275
    :goto_6
    if-ge v5, v8, :cond_17

    .line 276
    .line 277
    shl-int/lit8 v6, v5, 0x3

    .line 278
    .line 279
    if-le v6, v10, :cond_e

    .line 280
    .line 281
    move v6, v10

    .line 282
    :cond_e
    add-int/lit8 v7, v8, -0x3

    .line 283
    .line 284
    const/4 v9, 0x2

    .line 285
    if-ge v5, v9, :cond_f

    .line 286
    .line 287
    const/4 v9, 0x2

    .line 288
    goto :goto_7

    .line 289
    :cond_f
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    move v9, v7

    .line 294
    :goto_7
    const/4 v7, 0x0

    .line 295
    :goto_8
    if-ge v7, v3, :cond_16

    .line 296
    .line 297
    shl-int/lit8 v12, v7, 0x3

    .line 298
    .line 299
    if-le v12, v11, :cond_10

    .line 300
    .line 301
    move v12, v11

    .line 302
    :cond_10
    add-int/lit8 v14, v3, -0x3

    .line 303
    .line 304
    const/4 v15, 0x2

    .line 305
    if-ge v7, v15, :cond_11

    .line 306
    .line 307
    const/4 v14, 0x2

    .line 308
    goto :goto_9

    .line 309
    :cond_11
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    .line 310
    .line 311
    .line 312
    move-result v18

    .line 313
    move/from16 v14, v18

    .line 314
    .line 315
    :goto_9
    const/16 v16, -0x2

    .line 316
    .line 317
    move/from16 v19, v3

    .line 318
    .line 319
    const/4 v3, -0x2

    .line 320
    const/16 v16, 0x0

    .line 321
    .line 322
    :goto_a
    if-gt v3, v15, :cond_12

    .line 323
    .line 324
    add-int v15, v9, v3

    .line 325
    .line 326
    aget-object v15, v13, v15

    .line 327
    .line 328
    add-int/lit8 v20, v14, -0x2

    .line 329
    .line 330
    aget v20, v15, v20

    .line 331
    .line 332
    add-int/lit8 v21, v14, -0x1

    .line 333
    .line 334
    aget v21, v15, v21

    .line 335
    .line 336
    add-int v20, v20, v21

    .line 337
    .line 338
    aget v21, v15, v14

    .line 339
    .line 340
    add-int v20, v20, v21

    .line 341
    .line 342
    add-int/lit8 v21, v14, 0x1

    .line 343
    .line 344
    aget v21, v15, v21

    .line 345
    .line 346
    add-int v20, v20, v21

    .line 347
    .line 348
    const/16 v18, 0x2

    .line 349
    .line 350
    add-int/lit8 v21, v14, 0x2

    .line 351
    .line 352
    aget v15, v15, v21

    .line 353
    .line 354
    add-int v20, v20, v15

    .line 355
    .line 356
    add-int v16, v20, v16

    .line 357
    .line 358
    add-int/lit8 v3, v3, 0x1

    .line 359
    .line 360
    const/4 v15, 0x2

    .line 361
    goto :goto_a

    .line 362
    :cond_12
    const/16 v18, 0x2

    .line 363
    .line 364
    div-int/lit8 v3, v16, 0x19

    .line 365
    .line 366
    mul-int v14, v6, v4

    .line 367
    .line 368
    add-int/2addr v14, v12

    .line 369
    move/from16 v16, v5

    .line 370
    .line 371
    const/4 v15, 0x0

    .line 372
    :goto_b
    const/16 v5, 0x8

    .line 373
    .line 374
    if-ge v15, v5, :cond_15

    .line 375
    .line 376
    move/from16 v20, v6

    .line 377
    .line 378
    const/4 v6, 0x0

    .line 379
    :goto_c
    if-ge v6, v5, :cond_14

    .line 380
    .line 381
    add-int v21, v14, v6

    .line 382
    .line 383
    aget-byte v5, v23, v21

    .line 384
    .line 385
    move/from16 v21, v6

    .line 386
    .line 387
    const/16 v6, 0xff

    .line 388
    .line 389
    and-int/2addr v5, v6

    .line 390
    if-gt v5, v3, :cond_13

    .line 391
    .line 392
    add-int v6, v12, v21

    .line 393
    .line 394
    add-int v5, v20, v15

    .line 395
    .line 396
    invoke-virtual {v2, v6, v5}, Ls5/b;->f(II)V

    .line 397
    .line 398
    .line 399
    :cond_13
    add-int/lit8 v6, v21, 0x1

    .line 400
    .line 401
    const/16 v5, 0x8

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_14
    add-int/lit8 v15, v15, 0x1

    .line 405
    .line 406
    add-int/2addr v14, v4

    .line 407
    move/from16 v6, v20

    .line 408
    .line 409
    goto :goto_b

    .line 410
    :cond_15
    move/from16 v20, v6

    .line 411
    .line 412
    add-int/lit8 v7, v7, 0x1

    .line 413
    .line 414
    move/from16 v5, v16

    .line 415
    .line 416
    move/from16 v3, v19

    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_16
    move/from16 v19, v3

    .line 420
    .line 421
    move/from16 v16, v5

    .line 422
    .line 423
    const/16 v18, 0x2

    .line 424
    .line 425
    add-int/lit8 v5, v16, 0x1

    .line 426
    .line 427
    goto/16 :goto_6

    .line 428
    .line 429
    :cond_17
    iput-object v2, v1, Ls5/e;->d:Ls5/b;

    .line 430
    .line 431
    goto :goto_12

    .line 432
    :cond_18
    const/16 v16, 0x1

    .line 433
    .line 434
    const/16 v17, 0x0

    .line 435
    .line 436
    new-instance v6, Ls5/b;

    .line 437
    .line 438
    invoke-direct {v6, v4, v5}, Ls5/b;-><init>(II)V

    .line 439
    .line 440
    .line 441
    iget-object v7, v1, Ls5/e;->b:[B

    .line 442
    .line 443
    array-length v7, v7

    .line 444
    if-ge v7, v4, :cond_19

    .line 445
    .line 446
    new-array v7, v4, [B

    .line 447
    .line 448
    iput-object v7, v1, Ls5/e;->b:[B

    .line 449
    .line 450
    :cond_19
    const/4 v7, 0x0

    .line 451
    :goto_d
    const/16 v8, 0x20

    .line 452
    .line 453
    if-ge v7, v8, :cond_1a

    .line 454
    .line 455
    aput v17, v2, v7

    .line 456
    .line 457
    add-int/lit8 v7, v7, 0x1

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_1a
    const/4 v7, 0x1

    .line 461
    :goto_e
    const/4 v8, 0x5

    .line 462
    if-ge v7, v8, :cond_1c

    .line 463
    .line 464
    mul-int v9, v5, v7

    .line 465
    .line 466
    div-int/2addr v9, v8

    .line 467
    iget-object v10, v1, Ls5/e;->b:[B

    .line 468
    .line 469
    invoke-virtual {v3, v10, v9}, Lg1/j0;->f([BI)[B

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    shl-int/lit8 v10, v4, 0x2

    .line 474
    .line 475
    div-int/2addr v10, v8

    .line 476
    div-int/lit8 v8, v4, 0x5

    .line 477
    .line 478
    :goto_f
    if-ge v8, v10, :cond_1b

    .line 479
    .line 480
    aget-byte v11, v9, v8

    .line 481
    .line 482
    const/16 v12, 0xff

    .line 483
    .line 484
    and-int/2addr v11, v12

    .line 485
    shr-int/lit8 v11, v11, 0x3

    .line 486
    .line 487
    aget v12, v2, v11

    .line 488
    .line 489
    add-int/lit8 v12, v12, 0x1

    .line 490
    .line 491
    aput v12, v2, v11

    .line 492
    .line 493
    add-int/lit8 v8, v8, 0x1

    .line 494
    .line 495
    goto :goto_f

    .line 496
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 497
    .line 498
    goto :goto_e

    .line 499
    :cond_1c
    invoke-static {v2}, Ls5/e;->a([I)I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    invoke-virtual {v3}, Lg1/j0;->e()[B

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    const/4 v7, 0x0

    .line 508
    :goto_10
    if-ge v7, v5, :cond_1f

    .line 509
    .line 510
    mul-int v8, v7, v4

    .line 511
    .line 512
    const/4 v9, 0x0

    .line 513
    :goto_11
    if-ge v9, v4, :cond_1e

    .line 514
    .line 515
    add-int v10, v8, v9

    .line 516
    .line 517
    aget-byte v10, v3, v10

    .line 518
    .line 519
    const/16 v12, 0xff

    .line 520
    .line 521
    and-int/2addr v10, v12

    .line 522
    if-ge v10, v2, :cond_1d

    .line 523
    .line 524
    invoke-virtual {v6, v9, v7}, Ls5/b;->f(II)V

    .line 525
    .line 526
    .line 527
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    .line 528
    .line 529
    goto :goto_11

    .line 530
    :cond_1e
    const/16 v12, 0xff

    .line 531
    .line 532
    add-int/lit8 v7, v7, 0x1

    .line 533
    .line 534
    goto :goto_10

    .line 535
    :cond_1f
    iput-object v6, v1, Ls5/e;->d:Ls5/b;

    .line 536
    .line 537
    :goto_12
    iget-object v3, v1, Ls5/e;->d:Ls5/b;

    .line 538
    .line 539
    :goto_13
    iput-object v3, v0, Lm5/b;->b:Ls5/b;

    .line 540
    .line 541
    :cond_20
    iget-object v1, v0, Lm5/b;->b:Ls5/b;

    .line 542
    .line 543
    return-object v1
.end method

.method public final b(Ls5/a;I)Ls5/a;
    .locals 9

    .line 1
    iget-object v0, p0, Lm5/b;->a:Ls5/e;

    .line 2
    .line 3
    iget-object v1, v0, Ls5/e;->c:[I

    .line 4
    .line 5
    iget-object v2, v0, Ls5/e;->a:Lg1/j0;

    .line 6
    .line 7
    iget v3, v2, Lg1/j0;->b:I

    .line 8
    .line 9
    iget v4, p1, Ls5/a;->b:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-ge v4, v3, :cond_0

    .line 13
    .line 14
    new-instance p1, Ls5/a;

    .line 15
    .line 16
    invoke-direct {p1, v3}, Ls5/a;-><init>(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v4, p1, Ls5/a;->a:[I

    .line 21
    .line 22
    array-length v4, v4

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    if-ge v6, v4, :cond_1

    .line 25
    .line 26
    iget-object v7, p1, Ls5/a;->a:[I

    .line 27
    .line 28
    aput v5, v7, v6

    .line 29
    .line 30
    add-int/lit8 v6, v6, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    iget-object v4, v0, Ls5/e;->b:[B

    .line 34
    .line 35
    array-length v4, v4

    .line 36
    if-ge v4, v3, :cond_2

    .line 37
    .line 38
    new-array v4, v3, [B

    .line 39
    .line 40
    iput-object v4, v0, Ls5/e;->b:[B

    .line 41
    .line 42
    :cond_2
    const/4 v4, 0x0

    .line 43
    :goto_2
    const/16 v6, 0x20

    .line 44
    .line 45
    if-ge v4, v6, :cond_3

    .line 46
    .line 47
    aput v5, v1, v4

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object v0, v0, Ls5/e;->b:[B

    .line 53
    .line 54
    invoke-virtual {v2, v0, p2}, Lg1/j0;->f([BI)[B

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_3
    const/4 v2, 0x3

    .line 60
    const/4 v4, 0x1

    .line 61
    if-ge v0, v3, :cond_4

    .line 62
    .line 63
    aget-byte v6, p2, v0

    .line 64
    .line 65
    and-int/lit16 v6, v6, 0xff

    .line 66
    .line 67
    shr-int/lit8 v2, v6, 0x3

    .line 68
    .line 69
    aget v6, v1, v2

    .line 70
    .line 71
    add-int/2addr v6, v4

    .line 72
    aput v6, v1, v2

    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    invoke-static {v1}, Ls5/e;->a([I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ge v3, v2, :cond_6

    .line 82
    .line 83
    :goto_4
    if-ge v5, v3, :cond_8

    .line 84
    .line 85
    aget-byte v1, p2, v5

    .line 86
    .line 87
    and-int/lit16 v1, v1, 0xff

    .line 88
    .line 89
    if-ge v1, v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1, v5}, Ls5/a;->j(I)V

    .line 92
    .line 93
    .line 94
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    aget-byte v1, p2, v5

    .line 98
    .line 99
    and-int/lit16 v1, v1, 0xff

    .line 100
    .line 101
    aget-byte v2, p2, v4

    .line 102
    .line 103
    and-int/lit16 v2, v2, 0xff

    .line 104
    .line 105
    move v5, v2

    .line 106
    move v2, v1

    .line 107
    move v1, v5

    .line 108
    const/4 v5, 0x1

    .line 109
    :goto_5
    add-int/lit8 v6, v3, -0x1

    .line 110
    .line 111
    if-ge v5, v6, :cond_8

    .line 112
    .line 113
    add-int/lit8 v6, v5, 0x1

    .line 114
    .line 115
    aget-byte v7, p2, v6

    .line 116
    .line 117
    and-int/lit16 v7, v7, 0xff

    .line 118
    .line 119
    shl-int/lit8 v8, v1, 0x2

    .line 120
    .line 121
    sub-int/2addr v8, v2

    .line 122
    sub-int/2addr v8, v7

    .line 123
    div-int/lit8 v8, v8, 0x2

    .line 124
    .line 125
    if-ge v8, v0, :cond_7

    .line 126
    .line 127
    invoke-virtual {p1, v5}, Ls5/a;->j(I)V

    .line 128
    .line 129
    .line 130
    :cond_7
    move v2, v1

    .line 131
    move v5, v6

    .line 132
    move v1, v7

    .line 133
    goto :goto_5

    .line 134
    :cond_8
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lm5/b;->a()Ls5/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ls5/b;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Lm5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method
