.class public abstract Li2/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Z

.field public static c:Ljava/lang/reflect/Field;

.field public static d:Z


# direct methods
.method public static final A(Lc3/n;Landroid/text/Layout;Lb3/q;ILandroid/graphics/RectF;Ld3/d;La8/d;Z)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v9, v1, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v10, -0x1

    .line 34
    goto/16 :goto_1f

    .line 35
    .line 36
    :cond_1
    sub-int/2addr v1, v9

    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    new-array v11, v1, [F

    .line 40
    .line 41
    iget-object v12, v0, Lc3/n;->f:Landroid/text/Layout;

    .line 42
    .line 43
    invoke-virtual {v12, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    invoke-virtual {v0, v3}, Lc3/n;->f(I)I

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    sub-int v15, v14, v13

    .line 52
    .line 53
    mul-int/lit8 v15, v15, 0x2

    .line 54
    .line 55
    if-lt v1, v15, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 2"

    .line 59
    .line 60
    invoke-static {v1}, Lh3/a;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    new-instance v1, Lc3/e;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lc3/e;-><init>(Lc3/n;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v15, 0x0

    .line 73
    const/4 v10, 0x1

    .line 74
    if-ne v0, v10, :cond_3

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    :goto_1
    const/16 v16, 0x0

    .line 80
    .line 81
    :goto_2
    if-ge v13, v14, :cond_7

    .line 82
    .line 83
    invoke-virtual {v12, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 84
    .line 85
    .line 86
    move-result v17

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    if-nez v17, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, v13, v15, v15, v10}, Lc3/e;->a(IZZZ)F

    .line 92
    .line 93
    .line 94
    move-result v17

    .line 95
    add-int/lit8 v15, v13, 0x1

    .line 96
    .line 97
    invoke-virtual {v1, v15, v10, v10, v10}, Lc3/e;->a(IZZZ)F

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    move/from16 v18, v0

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    if-eqz v0, :cond_5

    .line 105
    .line 106
    if-eqz v17, :cond_5

    .line 107
    .line 108
    const/4 v15, 0x0

    .line 109
    invoke-virtual {v1, v13, v15, v15, v15}, Lc3/e;->a(IZZZ)F

    .line 110
    .line 111
    .line 112
    move-result v17

    .line 113
    move/from16 v18, v0

    .line 114
    .line 115
    add-int/lit8 v0, v13, 0x1

    .line 116
    .line 117
    invoke-virtual {v1, v0, v10, v10, v15}, Lc3/e;->a(IZZZ)F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    move/from16 v15, v17

    .line 122
    .line 123
    move/from16 v17, v0

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    move/from16 v18, v0

    .line 127
    .line 128
    const/4 v15, 0x0

    .line 129
    if-eqz v17, :cond_6

    .line 130
    .line 131
    invoke-virtual {v1, v13, v15, v15, v10}, Lc3/e;->a(IZZZ)F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    add-int/lit8 v15, v13, 0x1

    .line 136
    .line 137
    invoke-virtual {v1, v15, v10, v10, v10}, Lc3/e;->a(IZZZ)F

    .line 138
    .line 139
    .line 140
    move-result v17

    .line 141
    :goto_3
    move v15, v0

    .line 142
    goto :goto_4

    .line 143
    :cond_6
    invoke-virtual {v1, v13, v15, v15, v15}, Lc3/e;->a(IZZZ)F

    .line 144
    .line 145
    .line 146
    move-result v17

    .line 147
    add-int/lit8 v0, v13, 0x1

    .line 148
    .line 149
    invoke-virtual {v1, v0, v10, v10, v15}, Lc3/e;->a(IZZZ)F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    goto :goto_3

    .line 154
    :goto_4
    aput v17, v11, v16

    .line 155
    .line 156
    add-int/lit8 v0, v16, 0x1

    .line 157
    .line 158
    aput v15, v11, v0

    .line 159
    .line 160
    add-int/lit8 v16, v16, 0x2

    .line 161
    .line 162
    add-int/lit8 v13, v13, 0x1

    .line 163
    .line 164
    move/from16 v0, v18

    .line 165
    .line 166
    const/4 v15, 0x0

    .line 167
    goto :goto_2

    .line 168
    :cond_7
    iget-object v0, v2, Lb3/q;->b:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Landroid/text/Layout;

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    const/4 v15, 0x0

    .line 181
    invoke-virtual {v2, v1, v15}, Lb3/q;->m(IZ)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    invoke-virtual {v2, v12}, Lb3/q;->n(I)I

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    sub-int v14, v1, v13

    .line 190
    .line 191
    sub-int v13, v3, v13

    .line 192
    .line 193
    invoke-virtual {v2, v12}, Lb3/q;->i(I)Ljava/text/Bidi;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-eqz v2, :cond_b

    .line 198
    .line 199
    invoke-virtual {v2, v14, v13}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-nez v2, :cond_8

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_8
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    new-array v3, v0, [Lc3/g;

    .line 211
    .line 212
    const/4 v15, 0x0

    .line 213
    :goto_5
    if-ge v15, v0, :cond_a

    .line 214
    .line 215
    new-instance v12, Lc3/g;

    .line 216
    .line 217
    invoke-virtual {v2, v15}, Ljava/text/Bidi;->getRunStart(I)I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    add-int/2addr v13, v1

    .line 222
    invoke-virtual {v2, v15}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    add-int/2addr v14, v1

    .line 227
    invoke-virtual {v2, v15}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 228
    .line 229
    .line 230
    move-result v16

    .line 231
    move/from16 p2, v0

    .line 232
    .line 233
    rem-int/lit8 v0, v16, 0x2

    .line 234
    .line 235
    if-ne v0, v10, :cond_9

    .line 236
    .line 237
    const/4 v0, 0x1

    .line 238
    goto :goto_6

    .line 239
    :cond_9
    const/4 v0, 0x0

    .line 240
    :goto_6
    invoke-direct {v12, v13, v14, v0}, Lc3/g;-><init>(IIZ)V

    .line 241
    .line 242
    .line 243
    aput-object v12, v3, v15

    .line 244
    .line 245
    add-int/lit8 v15, v15, 0x1

    .line 246
    .line 247
    move/from16 v0, p2

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_a
    const/4 v15, 0x0

    .line 251
    goto :goto_8

    .line 252
    :cond_b
    :goto_7
    new-instance v2, Lc3/g;

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-direct {v2, v1, v3, v0}, Lc3/g;-><init>(IIZ)V

    .line 259
    .line 260
    .line 261
    new-array v3, v10, [Lc3/g;

    .line 262
    .line 263
    const/4 v15, 0x0

    .line 264
    aput-object v2, v3, v15

    .line 265
    .line 266
    :goto_8
    if-eqz p7, :cond_c

    .line 267
    .line 268
    new-instance v0, Ll9/d;

    .line 269
    .line 270
    array-length v1, v3

    .line 271
    sub-int/2addr v1, v10

    .line 272
    invoke-direct {v0, v15, v1, v10}, Ll9/b;-><init>(III)V

    .line 273
    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_c
    array-length v0, v3

    .line 277
    sub-int/2addr v0, v10

    .line 278
    new-instance v1, Ll9/b;

    .line 279
    .line 280
    const/4 v2, -0x1

    .line 281
    invoke-direct {v1, v0, v15, v2}, Ll9/b;-><init>(III)V

    .line 282
    .line 283
    .line 284
    move-object v0, v1

    .line 285
    :goto_9
    iget v1, v0, Ll9/b;->a:I

    .line 286
    .line 287
    iget v2, v0, Ll9/b;->b:I

    .line 288
    .line 289
    iget v0, v0, Ll9/b;->c:I

    .line 290
    .line 291
    if-lez v0, :cond_d

    .line 292
    .line 293
    if-le v1, v2, :cond_e

    .line 294
    .line 295
    :cond_d
    if-gez v0, :cond_0

    .line 296
    .line 297
    if-gt v2, v1, :cond_0

    .line 298
    .line 299
    :cond_e
    :goto_a
    aget-object v12, v3, v1

    .line 300
    .line 301
    iget-boolean v13, v12, Lc3/g;->c:Z

    .line 302
    .line 303
    iget v14, v12, Lc3/g;->a:I

    .line 304
    .line 305
    iget v12, v12, Lc3/g;->b:I

    .line 306
    .line 307
    if-eqz v13, :cond_f

    .line 308
    .line 309
    add-int/lit8 v15, v12, -0x1

    .line 310
    .line 311
    sub-int/2addr v15, v9

    .line 312
    mul-int/lit8 v15, v15, 0x2

    .line 313
    .line 314
    aget v15, v11, v15

    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_f
    sub-int v15, v14, v9

    .line 318
    .line 319
    mul-int/lit8 v15, v15, 0x2

    .line 320
    .line 321
    aget v15, v11, v15

    .line 322
    .line 323
    :goto_b
    if-eqz v13, :cond_10

    .line 324
    .line 325
    invoke-static {v14, v9, v11}, Li2/c;->u(II[F)F

    .line 326
    .line 327
    .line 328
    move-result v16

    .line 329
    goto :goto_c

    .line 330
    :cond_10
    add-int/lit8 v10, v12, -0x1

    .line 331
    .line 332
    invoke-static {v10, v9, v11}, Li2/c;->u(II[F)F

    .line 333
    .line 334
    .line 335
    move-result v16

    .line 336
    :goto_c
    if-eqz p7, :cond_25

    .line 337
    .line 338
    iget v10, v4, Landroid/graphics/RectF;->left:F

    .line 339
    .line 340
    cmpl-float v17, v16, v10

    .line 341
    .line 342
    if-ltz v17, :cond_24

    .line 343
    .line 344
    move/from16 v17, v0

    .line 345
    .line 346
    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 347
    .line 348
    cmpg-float v18, v15, v0

    .line 349
    .line 350
    if-gtz v18, :cond_19

    .line 351
    .line 352
    if-nez v13, :cond_11

    .line 353
    .line 354
    cmpg-float v10, v10, v15

    .line 355
    .line 356
    if-lez v10, :cond_12

    .line 357
    .line 358
    :cond_11
    if-eqz v13, :cond_13

    .line 359
    .line 360
    cmpl-float v0, v0, v16

    .line 361
    .line 362
    if-ltz v0, :cond_13

    .line 363
    .line 364
    :cond_12
    move v0, v14

    .line 365
    goto :goto_e

    .line 366
    :cond_13
    move v0, v12

    .line 367
    move v10, v14

    .line 368
    :goto_d
    sub-int v15, v0, v10

    .line 369
    .line 370
    move/from16 p3, v0

    .line 371
    .line 372
    const/4 v0, 0x1

    .line 373
    if-le v15, v0, :cond_17

    .line 374
    .line 375
    add-int v0, p3, v10

    .line 376
    .line 377
    div-int/lit8 v0, v0, 0x2

    .line 378
    .line 379
    sub-int v15, v0, v9

    .line 380
    .line 381
    mul-int/lit8 v15, v15, 0x2

    .line 382
    .line 383
    aget v15, v11, v15

    .line 384
    .line 385
    move/from16 v16, v0

    .line 386
    .line 387
    if-nez v13, :cond_14

    .line 388
    .line 389
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 390
    .line 391
    cmpl-float v0, v15, v0

    .line 392
    .line 393
    if-gtz v0, :cond_15

    .line 394
    .line 395
    :cond_14
    if-eqz v13, :cond_16

    .line 396
    .line 397
    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 398
    .line 399
    cmpg-float v0, v15, v0

    .line 400
    .line 401
    if-gez v0, :cond_16

    .line 402
    .line 403
    :cond_15
    move/from16 v0, v16

    .line 404
    .line 405
    goto :goto_d

    .line 406
    :cond_16
    move/from16 v0, p3

    .line 407
    .line 408
    move/from16 v10, v16

    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_17
    if-eqz v13, :cond_18

    .line 412
    .line 413
    move/from16 v0, p3

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_18
    move v0, v10

    .line 417
    :goto_e
    invoke-interface {v5, v0}, Ld3/d;->k0(I)I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    const/4 v10, -0x1

    .line 422
    if-ne v0, v10, :cond_1b

    .line 423
    .line 424
    :cond_19
    :goto_f
    move-object/from16 v18, v3

    .line 425
    .line 426
    :cond_1a
    :goto_10
    const/4 v14, -0x1

    .line 427
    goto/16 :goto_1e

    .line 428
    .line 429
    :cond_1b
    invoke-interface {v5, v0}, Ld3/d;->j0(I)I

    .line 430
    .line 431
    .line 432
    move-result v10

    .line 433
    if-lt v10, v12, :cond_1c

    .line 434
    .line 435
    goto :goto_f

    .line 436
    :cond_1c
    if-ge v10, v14, :cond_1d

    .line 437
    .line 438
    goto :goto_11

    .line 439
    :cond_1d
    move v14, v10

    .line 440
    :goto_11
    if-le v0, v12, :cond_1e

    .line 441
    .line 442
    move v0, v12

    .line 443
    :cond_1e
    new-instance v10, Landroid/graphics/RectF;

    .line 444
    .line 445
    int-to-float v15, v7

    .line 446
    move/from16 p3, v0

    .line 447
    .line 448
    int-to-float v0, v8

    .line 449
    move-object/from16 v18, v3

    .line 450
    .line 451
    const/4 v3, 0x0

    .line 452
    invoke-direct {v10, v3, v15, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 453
    .line 454
    .line 455
    move/from16 v0, p3

    .line 456
    .line 457
    :cond_1f
    :goto_12
    if-eqz v13, :cond_20

    .line 458
    .line 459
    add-int/lit8 v3, v0, -0x1

    .line 460
    .line 461
    sub-int/2addr v3, v9

    .line 462
    mul-int/lit8 v3, v3, 0x2

    .line 463
    .line 464
    aget v3, v11, v3

    .line 465
    .line 466
    goto :goto_13

    .line 467
    :cond_20
    sub-int v3, v14, v9

    .line 468
    .line 469
    mul-int/lit8 v3, v3, 0x2

    .line 470
    .line 471
    aget v3, v11, v3

    .line 472
    .line 473
    :goto_13
    iput v3, v10, Landroid/graphics/RectF;->left:F

    .line 474
    .line 475
    if-eqz v13, :cond_21

    .line 476
    .line 477
    invoke-static {v14, v9, v11}, Li2/c;->u(II[F)F

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    goto :goto_14

    .line 482
    :cond_21
    add-int/lit8 v0, v0, -0x1

    .line 483
    .line 484
    invoke-static {v0, v9, v11}, Li2/c;->u(II[F)F

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    :goto_14
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 489
    .line 490
    invoke-virtual {v6, v10, v4}, La8/d;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Ljava/lang/Boolean;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_22

    .line 501
    .line 502
    goto/16 :goto_1e

    .line 503
    .line 504
    :cond_22
    invoke-interface {v5, v14}, Ld3/d;->O(I)I

    .line 505
    .line 506
    .line 507
    move-result v14

    .line 508
    const/4 v0, -0x1

    .line 509
    if-eq v14, v0, :cond_1a

    .line 510
    .line 511
    if-lt v14, v12, :cond_23

    .line 512
    .line 513
    goto :goto_10

    .line 514
    :cond_23
    invoke-interface {v5, v14}, Ld3/d;->k0(I)I

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    if-le v0, v12, :cond_1f

    .line 519
    .line 520
    move v0, v12

    .line 521
    goto :goto_12

    .line 522
    :cond_24
    move/from16 v17, v0

    .line 523
    .line 524
    goto :goto_f

    .line 525
    :cond_25
    move/from16 v17, v0

    .line 526
    .line 527
    move-object/from16 v18, v3

    .line 528
    .line 529
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 530
    .line 531
    cmpl-float v3, v16, v0

    .line 532
    .line 533
    if-ltz v3, :cond_2e

    .line 534
    .line 535
    iget v3, v4, Landroid/graphics/RectF;->right:F

    .line 536
    .line 537
    cmpg-float v10, v15, v3

    .line 538
    .line 539
    if-gtz v10, :cond_2e

    .line 540
    .line 541
    if-nez v13, :cond_26

    .line 542
    .line 543
    cmpl-float v3, v3, v16

    .line 544
    .line 545
    if-gez v3, :cond_27

    .line 546
    .line 547
    :cond_26
    if-eqz v13, :cond_28

    .line 548
    .line 549
    cmpg-float v0, v0, v15

    .line 550
    .line 551
    if-gtz v0, :cond_28

    .line 552
    .line 553
    :cond_27
    add-int/lit8 v0, v12, -0x1

    .line 554
    .line 555
    :goto_15
    const/4 v15, 0x1

    .line 556
    goto :goto_17

    .line 557
    :cond_28
    move v0, v12

    .line 558
    move v3, v14

    .line 559
    :goto_16
    sub-int v10, v0, v3

    .line 560
    .line 561
    const/4 v15, 0x1

    .line 562
    if-le v10, v15, :cond_2c

    .line 563
    .line 564
    add-int v10, v0, v3

    .line 565
    .line 566
    div-int/lit8 v10, v10, 0x2

    .line 567
    .line 568
    sub-int v15, v10, v9

    .line 569
    .line 570
    mul-int/lit8 v15, v15, 0x2

    .line 571
    .line 572
    aget v15, v11, v15

    .line 573
    .line 574
    move/from16 p3, v0

    .line 575
    .line 576
    if-nez v13, :cond_29

    .line 577
    .line 578
    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 579
    .line 580
    cmpl-float v0, v15, v0

    .line 581
    .line 582
    if-gtz v0, :cond_2a

    .line 583
    .line 584
    :cond_29
    if-eqz v13, :cond_2b

    .line 585
    .line 586
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 587
    .line 588
    cmpg-float v0, v15, v0

    .line 589
    .line 590
    if-gez v0, :cond_2b

    .line 591
    .line 592
    :cond_2a
    move v0, v10

    .line 593
    goto :goto_16

    .line 594
    :cond_2b
    move/from16 v0, p3

    .line 595
    .line 596
    move v3, v10

    .line 597
    goto :goto_16

    .line 598
    :cond_2c
    move/from16 p3, v0

    .line 599
    .line 600
    if-eqz v13, :cond_2d

    .line 601
    .line 602
    move/from16 v0, p3

    .line 603
    .line 604
    goto :goto_15

    .line 605
    :cond_2d
    move v0, v3

    .line 606
    goto :goto_15

    .line 607
    :goto_17
    add-int/2addr v0, v15

    .line 608
    invoke-interface {v5, v0}, Ld3/d;->j0(I)I

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    const/4 v10, -0x1

    .line 613
    if-ne v0, v10, :cond_2f

    .line 614
    .line 615
    :cond_2e
    :goto_18
    const/4 v12, -0x1

    .line 616
    goto :goto_1d

    .line 617
    :cond_2f
    invoke-interface {v5, v0}, Ld3/d;->k0(I)I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-gt v3, v14, :cond_30

    .line 622
    .line 623
    goto :goto_18

    .line 624
    :cond_30
    if-ge v0, v14, :cond_31

    .line 625
    .line 626
    move v0, v14

    .line 627
    :cond_31
    if-le v3, v12, :cond_32

    .line 628
    .line 629
    goto :goto_19

    .line 630
    :cond_32
    move v12, v3

    .line 631
    :goto_19
    new-instance v3, Landroid/graphics/RectF;

    .line 632
    .line 633
    int-to-float v10, v7

    .line 634
    int-to-float v15, v8

    .line 635
    move/from16 p3, v0

    .line 636
    .line 637
    const/4 v0, 0x0

    .line 638
    invoke-direct {v3, v0, v10, v0, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 639
    .line 640
    .line 641
    move/from16 v0, p3

    .line 642
    .line 643
    :cond_33
    :goto_1a
    if-eqz v13, :cond_34

    .line 644
    .line 645
    add-int/lit8 v10, v12, -0x1

    .line 646
    .line 647
    sub-int/2addr v10, v9

    .line 648
    mul-int/lit8 v10, v10, 0x2

    .line 649
    .line 650
    aget v10, v11, v10

    .line 651
    .line 652
    goto :goto_1b

    .line 653
    :cond_34
    sub-int v10, v0, v9

    .line 654
    .line 655
    mul-int/lit8 v10, v10, 0x2

    .line 656
    .line 657
    aget v10, v11, v10

    .line 658
    .line 659
    :goto_1b
    iput v10, v3, Landroid/graphics/RectF;->left:F

    .line 660
    .line 661
    if-eqz v13, :cond_35

    .line 662
    .line 663
    invoke-static {v0, v9, v11}, Li2/c;->u(II[F)F

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    goto :goto_1c

    .line 668
    :cond_35
    add-int/lit8 v0, v12, -0x1

    .line 669
    .line 670
    invoke-static {v0, v9, v11}, Li2/c;->u(II[F)F

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    :goto_1c
    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 675
    .line 676
    invoke-virtual {v6, v3, v4}, La8/d;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    check-cast v0, Ljava/lang/Boolean;

    .line 681
    .line 682
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-eqz v0, :cond_36

    .line 687
    .line 688
    goto :goto_1d

    .line 689
    :cond_36
    invoke-interface {v5, v12}, Ld3/d;->P(I)I

    .line 690
    .line 691
    .line 692
    move-result v12

    .line 693
    const/4 v10, -0x1

    .line 694
    if-eq v12, v10, :cond_2e

    .line 695
    .line 696
    if-gt v12, v14, :cond_37

    .line 697
    .line 698
    goto :goto_18

    .line 699
    :cond_37
    invoke-interface {v5, v12}, Ld3/d;->j0(I)I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-ge v0, v14, :cond_33

    .line 704
    .line 705
    move v0, v14

    .line 706
    goto :goto_1a

    .line 707
    :goto_1d
    move v14, v12

    .line 708
    :goto_1e
    if-ltz v14, :cond_38

    .line 709
    .line 710
    return v14

    .line 711
    :cond_38
    if-eq v1, v2, :cond_0

    .line 712
    .line 713
    add-int v1, v1, v17

    .line 714
    .line 715
    move/from16 v0, v17

    .line 716
    .line 717
    move-object/from16 v3, v18

    .line 718
    .line 719
    const/4 v10, 0x1

    .line 720
    goto/16 :goto_a

    .line 721
    .line 722
    :goto_1f
    return v10
.end method

.method public static B([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-static {v2}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string p0, ""

    .line 22
    .line 23
    return-object p0
.end method

.method public static C(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getprop "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Ljava/io/BufferedReader;

    .line 25
    .line 26
    new-instance v2, Ljava/io/InputStreamReader;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x400

    .line 36
    .line 37
    invoke-direct {v0, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    return-object p0

    .line 50
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 51
    .line 52
    .line 53
    :catch_1
    return-object v1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    move-object v1, v0

    .line 56
    goto :goto_0

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    :goto_0
    if-eqz v1, :cond_1

    .line 59
    .line 60
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 61
    .line 62
    .line 63
    :catch_2
    :cond_1
    throw p0
.end method

.method public static D(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "get"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v5, v4, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v6, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    aput-object v6, v5, v7

    .line 29
    .line 30
    const/4 v8, 0x1

    .line 31
    aput-object v6, v5, v8

    .line 32
    .line 33
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p0, v4, v7

    .line 40
    .line 41
    aput-object v0, v4, v8

    .line 42
    .line 43
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    nop

    .line 51
    move-object v2, v1

    .line 52
    :goto_0
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_1
    :try_start_1
    invoke-static {p0}, Li2/c;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    goto :goto_1

    .line 66
    :catch_1
    nop

    .line 67
    :goto_1
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_2
    :try_start_2
    new-instance v3, Ljava/util/Properties;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v4, Ljava/io/File;

    .line 82
    .line 83
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v6, "build.prop"

    .line 88
    .line 89
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Ljava/io/FileInputStream;

    .line 93
    .line 94
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    move-object v1, v5

    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :goto_2
    if-eqz v1, :cond_3

    .line 113
    .line 114
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 115
    .line 116
    .line 117
    :catch_2
    :cond_3
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 118
    :catch_3
    nop

    .line 119
    :goto_3
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_4

    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_4
    :goto_4
    return-object v0
.end method

.method public static final E(Landroid/view/KeyEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    return v0

    .line 13
    :cond_1
    const/4 p0, 0x2

    .line 14
    return p0
.end method

.method public static final F(Lkb/m;Lm9/u;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "p"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static G(Lv9/c;)Z
    .locals 2

    .line 1
    const-string v0, "callableMemberDescriptor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lea/f;->d:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget-object v0, Lea/f;->c:Ljava/util/Set;

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-static {p0}, Lbb/e;->c(Lv9/l;)Lua/c;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Lv9/b;->S()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p0}, Ls9/i;->A(Lv9/k;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-interface {p0}, Lv9/c;->m()Ljava/util/Collection;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v0, "getOverriddenDescriptors(...)"

    .line 56
    .line 57
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast p0, Ljava/lang/Iterable;

    .line 61
    .line 62
    move-object v0, p0

    .line 63
    check-cast v0, Ljava/util/Collection;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lv9/c;

    .line 87
    .line 88
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Li2/c;->G(Lv9/c;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    :goto_0
    const/4 p0, 0x1

    .line 98
    return p0

    .line 99
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 100
    return p0
.end method

.method public static H([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    invoke-static {v3}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method

.method public static final I(Lba/a;Lla/b;)Lha/c;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "annotationsOwner"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lha/c;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lha/c;-><init>(Lba/a;Lla/b;Z)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static K(Landroid/view/Window;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Le4/h;->d(Landroid/view/Window;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v1, 0x1e

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {p0, p1}, Le4/h;->c(Landroid/view/Window;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    and-int/lit16 p1, v0, -0x701

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    or-int/lit16 p1, v0, 0x700

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static M(Lp/a0;Z)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Li4/b;->q(Landroid/widget/PopupWindow;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Li2/c;->d:Z

    .line 12
    .line 13
    const-string v1, "PopupWindowCompatApi21"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    .line 19
    .line 20
    const-string v3, "mOverlapAnchor"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sput-object v2, Li2/c;->c:Ljava/lang/reflect/Field;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    const-string v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    .line 34
    .line 35
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    sput-boolean v0, Li2/c;->d:Z

    .line 39
    .line 40
    :cond_1
    sget-object v0, Li2/c;->c:Ljava/lang/reflect/Field;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    const-string p1, "Could not set overlap anchor field in PopupWindow"

    .line 54
    .line 55
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    return-void
.end method

.method public static N(Landroid/widget/PopupWindow;I)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Li4/b;->t(Landroid/widget/PopupWindow;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Li2/c;->b:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    .line 18
    .line 19
    const-string v3, "setWindowLayoutType"

    .line 20
    .line 21
    new-array v4, v2, [Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v5, v4, v1

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Li2/c;->a:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    sput-boolean v2, Li2/c;->b:Z

    .line 37
    .line 38
    :cond_1
    sget-object v0, Li2/c;->a:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p1, v2, v1

    .line 49
    .line 50
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    :catch_1
    :cond_2
    return-void
.end method

.method public static final O(J)Lr8/p;
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ly1/q;->h(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Ly1/q;->g(J)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0, p1}, Ly1/q;->e(J)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {p0, p1}, Ly1/q;->h(J)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p0, p1}, Ly1/q;->g(J)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {p0, p1}, Ly1/q;->e(J)F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sub-float v1, v0, v1

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    cmpg-float v3, v1, v2

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-static {p0, p1}, Ly1/q;->h(J)F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/16 v4, 0x3c

    .line 55
    .line 56
    const/high16 v5, 0x43b40000    # 360.0f

    .line 57
    .line 58
    cmpg-float v3, v0, v3

    .line 59
    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    int-to-float v3, v4

    .line 63
    invoke-static {p0, p1}, Ly1/q;->g(J)F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {p0, p1}, Ly1/q;->e(J)F

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    sub-float/2addr v4, p0

    .line 72
    div-float/2addr v4, v1

    .line 73
    mul-float v4, v4, v3

    .line 74
    .line 75
    add-float/2addr v4, v5

    .line 76
    :goto_0
    rem-float/2addr v4, v5

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    invoke-static {p0, p1}, Ly1/q;->g(J)F

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    cmpg-float v3, v0, v3

    .line 83
    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    int-to-float v3, v4

    .line 87
    invoke-static {p0, p1}, Ly1/q;->e(J)F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-static {p0, p1}, Ly1/q;->h(J)F

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    sub-float/2addr v4, p0

    .line 96
    div-float/2addr v4, v1

    .line 97
    mul-float v4, v4, v3

    .line 98
    .line 99
    const/high16 p0, 0x42f00000    # 120.0f

    .line 100
    .line 101
    :goto_1
    add-float/2addr v4, p0

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    int-to-float v3, v4

    .line 104
    invoke-static {p0, p1}, Ly1/q;->h(J)F

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-static {p0, p1}, Ly1/q;->g(J)F

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    sub-float/2addr v4, p0

    .line 113
    div-float/2addr v4, v1

    .line 114
    mul-float v4, v4, v3

    .line 115
    .line 116
    const/high16 p0, 0x43700000    # 240.0f

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :goto_2
    cmpg-float p0, v0, v2

    .line 120
    .line 121
    if-nez p0, :cond_3

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    div-float v2, v1, v0

    .line 125
    .line 126
    :goto_3
    new-instance p0, Lr8/p;

    .line 127
    .line 128
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p0, p1, v1, v0}, Lr8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-object p0
.end method

.method public static final P(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static a(IILcc/a;)Lcc/h;
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    sget-object v0, Lcc/a;->a:Lcc/a;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move-object p2, v0

    .line 14
    :cond_1
    const/4 p1, -0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p0, p1, :cond_8

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    if-eq p0, p1, :cond_6

    .line 20
    .line 21
    if-eqz p0, :cond_4

    .line 22
    .line 23
    const p1, 0x7fffffff

    .line 24
    .line 25
    .line 26
    if-eq p0, p1, :cond_3

    .line 27
    .line 28
    if-ne p2, v0, :cond_2

    .line 29
    .line 30
    new-instance p1, Lcc/h;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcc/h;-><init>(I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    new-instance p1, Lcc/s;

    .line 37
    .line 38
    invoke-direct {p1, p0, p2}, Lcc/s;-><init>(ILcc/a;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_3
    new-instance p0, Lcc/h;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcc/h;-><init>(I)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_4
    if-ne p2, v0, :cond_5

    .line 49
    .line 50
    new-instance p0, Lcc/h;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcc/h;-><init>(I)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_5
    new-instance p0, Lcc/s;

    .line 57
    .line 58
    invoke-direct {p0, v2, p2}, Lcc/s;-><init>(ILcc/a;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_6
    if-ne p2, v0, :cond_7

    .line 63
    .line 64
    new-instance p0, Lcc/s;

    .line 65
    .line 66
    sget-object p1, Lcc/a;->b:Lcc/a;

    .line 67
    .line 68
    invoke-direct {p0, v2, p1}, Lcc/s;-><init>(ILcc/a;)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_8
    if-ne p2, v0, :cond_9

    .line 81
    .line 82
    new-instance p0, Lcc/h;

    .line 83
    .line 84
    sget-object p1, Lcc/l;->a0:Lcc/k;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    sget p1, Lcc/k;->b:I

    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcc/h;-><init>(I)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_9
    new-instance p0, Lcc/s;

    .line 96
    .line 97
    invoke-direct {p0, v2, p2}, Lcc/s;-><init>(ILcc/a;)V

    .line 98
    .line 99
    .line 100
    return-object p0
.end method

.method public static final b(Ljava/lang/String;Lf1/s;I)V
    .locals 7

    .line 1
    const-string v0, "color"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x17ac6289

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p2

    .line 23
    and-int/lit8 v0, v0, 0x3

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_2
    :goto_1
    const/16 v0, 0x32

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/16 v1, 0x1e

    .line 49
    .line 50
    int-to-float v1, v1

    .line 51
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x6

    .line 56
    int-to-float v1, v1

    .line 57
    invoke-static {v1}, Lk0/e;->a(F)Lk0/d;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lr1/c;->a:Lr1/h;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-static {v1, v2}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-wide v3, p1, Lf1/s;->T:J

    .line 73
    .line 74
    const/16 v5, 0x20

    .line 75
    .line 76
    ushr-long v5, v3, v5

    .line 77
    .line 78
    xor-long/2addr v3, v5

    .line 79
    long-to-int v4, v3

    .line 80
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {p1, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v5, Lq2/j;->d0:Lq2/i;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v5, Lq2/i;->b:Lq2/a0;

    .line 94
    .line 95
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 96
    .line 97
    .line 98
    iget-boolean v6, p1, Lf1/s;->S:Z

    .line 99
    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1, v5}, Lf1/s;->k(Lf9/a;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 107
    .line 108
    .line 109
    :goto_2
    sget-object v5, Lq2/i;->e:Lq2/h;

    .line 110
    .line 111
    invoke-static {p1, v5, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 115
    .line 116
    invoke-static {p1, v1, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object v1, Lq2/i;->f:Lq2/h;

    .line 120
    .line 121
    iget-boolean v3, p1, Lf1/s;->S:Z

    .line 122
    .line 123
    if-nez v3, :cond_4

    .line 124
    .line 125
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v3, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_5

    .line 138
    .line 139
    :cond_4
    invoke-static {v4, p1, v4, v1}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    sget-object v1, Lq2/i;->c:Lq2/h;

    .line 143
    .line 144
    invoke-static {p1, v1, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v0, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 148
    .line 149
    const v1, 0x6e3c21fe

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lf1/s;->W(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 160
    .line 161
    if-ne v1, v3, :cond_6

    .line 162
    .line 163
    new-instance v1, Lc8/y0;

    .line 164
    .line 165
    const/16 v3, 0xb

    .line 166
    .line 167
    invoke-direct {v1, v3}, Lc8/y0;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    check-cast v1, Lf9/k;

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 176
    .line 177
    .line 178
    const/16 v3, 0x36

    .line 179
    .line 180
    invoke-static {v3, p1, v1, v0}, Lp4/e;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-static {v1}, Ly1/h0;->c(I)J

    .line 188
    .line 189
    .line 190
    move-result-wide v3

    .line 191
    sget-object v1, Ly1/h0;->a:Ly1/g0;

    .line 192
    .line 193
    invoke-static {v0, v3, v4, v1}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v0, p1, v2}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 198
    .line 199
    .line 200
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p1, v0}, Lf1/s;->p(Z)V

    .line 202
    .line 203
    .line 204
    :goto_3
    invoke-virtual {p1}, Lf1/s;->r()Lf1/w1;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_7

    .line 209
    .line 210
    new-instance v0, Lj8/f;

    .line 211
    .line 212
    const/4 v1, 0x0

    .line 213
    invoke-direct {v0, p0, p2, v1}, Lj8/f;-><init>(Ljava/lang/String;II)V

    .line 214
    .line 215
    .line 216
    iput-object v0, p1, Lf1/w1;->d:Lf9/n;

    .line 217
    .line 218
    :cond_7
    return-void
.end method

.method public static final c(Ll5/l;Lf9/k;Lf1/s;I)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    const-string v0, "controller"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x1907f4a0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int v0, p3, v0

    .line 28
    .line 29
    and-int/lit8 v2, v0, 0x13

    .line 30
    .line 31
    const/16 v3, 0x12

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_2
    :goto_1
    sget-object v2, Lr1/c;->k:Lr1/g;

    .line 48
    .line 49
    sget-object v7, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 50
    .line 51
    const/16 v3, 0xe

    .line 52
    .line 53
    invoke-static {v3, v4}, Lg5/a;->B(ILf1/s;)F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v8, 0x1

    .line 59
    invoke-static {v7, v5, v3, v8}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sget-object v5, Ld0/h;->a:Ld0/b;

    .line 64
    .line 65
    const/16 v9, 0x30

    .line 66
    .line 67
    invoke-static {v5, v2, v4, v9}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-wide v9, v4, Lf1/s;->T:J

    .line 72
    .line 73
    const/16 v11, 0x20

    .line 74
    .line 75
    ushr-long v12, v9, v11

    .line 76
    .line 77
    xor-long/2addr v9, v12

    .line 78
    long-to-int v5, v9

    .line 79
    invoke-virtual {v4}, Lf1/s;->l()Lf1/q1;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-static {v4, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    sget-object v10, Lq2/j;->d0:Lq2/i;

    .line 88
    .line 89
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v10, Lq2/i;->b:Lq2/a0;

    .line 93
    .line 94
    invoke-virtual {v4}, Lf1/s;->a0()V

    .line 95
    .line 96
    .line 97
    iget-boolean v12, v4, Lf1/s;->S:Z

    .line 98
    .line 99
    if-eqz v12, :cond_3

    .line 100
    .line 101
    invoke-virtual {v4, v10}, Lf1/s;->k(Lf9/a;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {v4}, Lf1/s;->k0()V

    .line 106
    .line 107
    .line 108
    :goto_2
    sget-object v12, Lq2/i;->e:Lq2/h;

    .line 109
    .line 110
    invoke-static {v4, v12, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v13, Lq2/i;->d:Lq2/h;

    .line 114
    .line 115
    invoke-static {v4, v13, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v9, Lq2/i;->f:Lq2/h;

    .line 119
    .line 120
    iget-boolean v2, v4, Lf1/s;->S:Z

    .line 121
    .line 122
    if-nez v2, :cond_4

    .line 123
    .line 124
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    invoke-static {v2, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_5

    .line 137
    .line 138
    :cond_4
    invoke-static {v5, v4, v5, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    sget-object v14, Lq2/i;->c:Lq2/h;

    .line 142
    .line 143
    invoke-static {v4, v14, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, La2/f;->Q()Lr1/p;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const/high16 v3, 0x3f800000    # 1.0f

    .line 151
    .line 152
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const v3, 0x4c5de2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v3}, Lf1/s;->W(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 167
    .line 168
    if-ne v3, v5, :cond_6

    .line 169
    .line 170
    new-instance v3, Lc8/x;

    .line 171
    .line 172
    const/4 v5, 0x3

    .line 173
    invoke-direct {v3, v6, v5}, Lc8/x;-><init>(Lf9/k;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    check-cast v3, Lf9/k;

    .line 180
    .line 181
    const/4 v15, 0x0

    .line 182
    invoke-virtual {v4, v15}, Lf1/s;->p(Z)V

    .line 183
    .line 184
    .line 185
    shl-int/lit8 v0, v0, 0x3

    .line 186
    .line 187
    and-int/lit8 v5, v0, 0x70

    .line 188
    .line 189
    move-object v0, v2

    .line 190
    const/4 v2, 0x0

    .line 191
    invoke-static/range {v0 .. v5}, La/a;->c(Lr1/p;Ll5/l;ZLf9/k;Lf1/s;I)V

    .line 192
    .line 193
    .line 194
    move/from16 v18, v5

    .line 195
    .line 196
    invoke-static {}, La2/f;->Q()Lr1/p;

    .line 197
    .line 198
    .line 199
    move-result-object v19

    .line 200
    const/16 v0, 0x10

    .line 201
    .line 202
    invoke-static {v0, v4}, Lg5/a;->B(ILf1/s;)F

    .line 203
    .line 204
    .line 205
    move-result v20

    .line 206
    const/16 v23, 0x0

    .line 207
    .line 208
    const/16 v24, 0xe

    .line 209
    .line 210
    const/16 v21, 0x0

    .line 211
    .line 212
    const/16 v22, 0x0

    .line 213
    .line 214
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    sget-object v2, Ld0/h;->c:Ld0/b;

    .line 219
    .line 220
    sget-object v3, Lr1/c;->m:Lr1/f;

    .line 221
    .line 222
    invoke-static {v2, v3, v4, v15}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    move-object v5, v9

    .line 227
    iget-wide v8, v4, Lf1/s;->T:J

    .line 228
    .line 229
    ushr-long v15, v8, v11

    .line 230
    .line 231
    xor-long/2addr v8, v15

    .line 232
    long-to-int v9, v8

    .line 233
    invoke-virtual {v4}, Lf1/s;->l()Lf1/q1;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-static {v4, v1}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v4}, Lf1/s;->a0()V

    .line 242
    .line 243
    .line 244
    iget-boolean v11, v4, Lf1/s;->S:Z

    .line 245
    .line 246
    if-eqz v11, :cond_7

    .line 247
    .line 248
    invoke-virtual {v4, v10}, Lf1/s;->k(Lf9/a;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    invoke-virtual {v4}, Lf1/s;->k0()V

    .line 253
    .line 254
    .line 255
    :goto_3
    invoke-static {v4, v12, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v4, v13, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    iget-boolean v2, v4, Lf1/s;->S:Z

    .line 262
    .line 263
    if-nez v2, :cond_8

    .line 264
    .line 265
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-static {v2, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_9

    .line 278
    .line 279
    :cond_8
    invoke-static {v9, v4, v9, v5}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 280
    .line 281
    .line 282
    :cond_9
    invoke-static {v4, v14, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    const v1, 0x404ccccd    # 3.2f

    .line 286
    .line 287
    .line 288
    const/16 v2, 0x10

    .line 289
    .line 290
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    or-int/lit8 v12, v18, 0x6

    .line 295
    .line 296
    const/16 v5, 0x10

    .line 297
    .line 298
    const/4 v2, 0x0

    .line 299
    const/4 v8, 0x1

    .line 300
    const/4 v3, 0x0

    .line 301
    const/16 v9, 0x10

    .line 302
    .line 303
    const-wide/16 v4, 0x0

    .line 304
    .line 305
    const/4 v6, 0x0

    .line 306
    move-object v10, v7

    .line 307
    const/4 v11, 0x1

    .line 308
    const-wide/16 v7, 0x0

    .line 309
    .line 310
    const/16 v13, 0x10

    .line 311
    .line 312
    const/4 v9, 0x0

    .line 313
    move-object v14, v10

    .line 314
    const/4 v10, 0x0

    .line 315
    move/from16 v17, v12

    .line 316
    .line 317
    const/4 v15, 0x1

    .line 318
    const-wide/16 v11, 0x0

    .line 319
    .line 320
    move-object/from16 v16, v14

    .line 321
    .line 322
    const/16 v19, 0x10

    .line 323
    .line 324
    const-wide/16 v13, 0x0

    .line 325
    .line 326
    const/16 v20, 0x1

    .line 327
    .line 328
    const/4 v15, 0x0

    .line 329
    move-object/from16 v1, p0

    .line 330
    .line 331
    move-object/from16 v25, v16

    .line 332
    .line 333
    move-object/from16 v16, p2

    .line 334
    .line 335
    invoke-static/range {v0 .. v17}, Lm9/e0;->B(Lr1/p;Ll5/l;FFJFJFLd7/q;JJFLf1/s;I)V

    .line 336
    .line 337
    .line 338
    move-object/from16 v4, v16

    .line 339
    .line 340
    const/16 v13, 0x10

    .line 341
    .line 342
    invoke-static {v13, v4}, Lg5/a;->B(ILf1/s;)F

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    sget-object v14, Lr1/m;->a:Lr1/m;

    .line 347
    .line 348
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v4, v0}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 353
    .line 354
    .line 355
    move-object/from16 v15, v25

    .line 356
    .line 357
    const v0, 0x404ccccd    # 3.2f

    .line 358
    .line 359
    .line 360
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    const-wide/16 v4, 0x0

    .line 365
    .line 366
    move-object/from16 v11, p2

    .line 367
    .line 368
    move-object v0, v1

    .line 369
    move/from16 v12, v17

    .line 370
    .line 371
    move-object/from16 v1, p0

    .line 372
    .line 373
    invoke-static/range {v0 .. v12}, Lg5/a;->e(Lr1/p;Ll5/l;FFJFJFLd7/q;Lf1/s;I)V

    .line 374
    .line 375
    .line 376
    move-object v4, v11

    .line 377
    invoke-static {v13, v4}, Lg5/a;->B(ILf1/s;)F

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v4, v0}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 386
    .line 387
    .line 388
    const v0, 0x404ccccd    # 3.2f

    .line 389
    .line 390
    .line 391
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    const/4 v1, 0x6

    .line 396
    int-to-float v1, v1

    .line 397
    invoke-static {v1}, Lk0/e;->a(F)Lk0/d;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-static {v0, v1}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    const-wide/16 v6, 0x0

    .line 406
    .line 407
    const/4 v8, 0x0

    .line 408
    const-wide/16 v2, 0x0

    .line 409
    .line 410
    const-wide/16 v4, 0x0

    .line 411
    .line 412
    move-object/from16 v1, p0

    .line 413
    .line 414
    move-object/from16 v9, p2

    .line 415
    .line 416
    move/from16 v10, v18

    .line 417
    .line 418
    invoke-static/range {v0 .. v10}, La/a;->a(Lr1/p;Ll5/l;JJJFLf1/s;I)V

    .line 419
    .line 420
    .line 421
    move-object v4, v9

    .line 422
    const/4 v15, 0x1

    .line 423
    invoke-virtual {v4, v15}, Lf1/s;->p(Z)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v15}, Lf1/s;->p(Z)V

    .line 427
    .line 428
    .line 429
    :goto_4
    invoke-virtual {v4}, Lf1/s;->r()Lf1/w1;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-eqz v0, :cond_a

    .line 434
    .line 435
    new-instance v2, La8/w;

    .line 436
    .line 437
    const/16 v3, 0x8

    .line 438
    .line 439
    move-object/from16 v6, p1

    .line 440
    .line 441
    move/from16 v4, p3

    .line 442
    .line 443
    invoke-direct {v2, v4, v3, v1, v6}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    iput-object v2, v0, Lf1/w1;->d:Lf9/n;

    .line 447
    .line 448
    :cond_a
    return-void
.end method

.method public static final d(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v11, p4

    .line 4
    .line 5
    move/from16 v14, p5

    .line 6
    .line 7
    const v0, -0x3a17fe87

    .line 8
    .line 9
    .line 10
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, p6, 0x4

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    or-int/lit16 v2, v14, 0x180

    .line 18
    .line 19
    move v3, v2

    .line 20
    move/from16 v2, p2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit16 v2, v14, 0x180

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move/from16 v2, p2

    .line 28
    .line 29
    invoke-virtual {v11, v2}, Lf1/s;->g(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/16 v3, 0x100

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 v3, 0x80

    .line 39
    .line 40
    :goto_0
    or-int/2addr v3, v14

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move/from16 v2, p2

    .line 43
    .line 44
    move v3, v14

    .line 45
    :goto_1
    and-int/lit16 v4, v3, 0x493

    .line 46
    .line 47
    const/16 v5, 0x492

    .line 48
    .line 49
    if-ne v4, v5, :cond_4

    .line 50
    .line 51
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 59
    .line 60
    .line 61
    move-object/from16 v15, p0

    .line 62
    .line 63
    move v3, v2

    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_5
    move v4, v2

    .line 72
    :goto_3
    const v0, 0x61427453

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v0}, Lf1/s;->X(I)V

    .line 76
    .line 77
    .line 78
    const v0, 0x2e20b340

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v0}, Lf1/s;->X(I)V

    .line 82
    .line 83
    .line 84
    const v0, -0x1d58f75c

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v0}, Lf1/s;->X(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 95
    .line 96
    if-ne v0, v2, :cond_6

    .line 97
    .line 98
    invoke-static {v11}, Lf1/b;->l(Lf1/s;)Lac/w;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v5, Lf1/b0;

    .line 103
    .line 104
    invoke-direct {v5, v0}, Lf1/b0;-><init>(Lac/w;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    move-object v0, v5

    .line 111
    :cond_6
    const/4 v5, 0x0

    .line 112
    invoke-virtual {v11, v5}, Lf1/s;->p(Z)V

    .line 113
    .line 114
    .line 115
    check-cast v0, Lf1/b0;

    .line 116
    .line 117
    iget-object v0, v0, Lf1/b0;->a:Lac/w;

    .line 118
    .line 119
    invoke-virtual {v11, v5}, Lf1/s;->p(Z)V

    .line 120
    .line 121
    .line 122
    const v6, 0x69de1458

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v6}, Lf1/s;->X(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-ne v6, v2, :cond_7

    .line 133
    .line 134
    new-instance v6, Ll5/l;

    .line 135
    .line 136
    invoke-direct {v6, v0}, Ll5/l;-><init>(Lac/w;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    move-object v10, v6

    .line 143
    check-cast v10, Ll5/l;

    .line 144
    .line 145
    invoke-virtual {v11, v5}, Lf1/s;->p(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11, v5}, Lf1/s;->p(Z)V

    .line 149
    .line 150
    .line 151
    const v0, 0x6e3c21fe

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v0}, Lf1/s;->W(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    if-ne v6, v2, :cond_8

    .line 162
    .line 163
    sget-object v6, Ll8/d;->a:Lr8/o;

    .line 164
    .line 165
    iget-object v6, v1, Lr8/j;->a:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v6, Ljava/lang/String;

    .line 168
    .line 169
    iget-object v7, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v7, Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v6, v7}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v11, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    move-object v12, v6

    .line 185
    check-cast v12, Lf1/b1;

    .line 186
    .line 187
    invoke-static {v11, v5, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    if-ne v6, v2, :cond_9

    .line 192
    .line 193
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    check-cast v6, Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v11, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_9
    move-object v13, v6

    .line 207
    check-cast v13, Lf1/b1;

    .line 208
    .line 209
    invoke-static {v11, v5, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-ne v0, v2, :cond_a

    .line 214
    .line 215
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    check-cast v0, Lf1/b1;

    .line 225
    .line 226
    invoke-virtual {v11, v5}, Lf1/s;->p(Z)V

    .line 227
    .line 228
    .line 229
    new-instance v6, La8/j;

    .line 230
    .line 231
    const/4 v7, 0x7

    .line 232
    move-object/from16 v15, p0

    .line 233
    .line 234
    invoke-direct {v6, v7, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 235
    .line 236
    .line 237
    const v7, 0x688ef2a2

    .line 238
    .line 239
    .line 240
    invoke-static {v7, v6, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    new-instance v7, La8/m;

    .line 245
    .line 246
    const/16 v8, 0xb

    .line 247
    .line 248
    invoke-direct {v7, v12, v8}, La8/m;-><init>(Lf1/b1;I)V

    .line 249
    .line 250
    .line 251
    const v8, 0x57217e81

    .line 252
    .line 253
    .line 254
    invoke-static {v8, v7, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    const v8, 0x4c5de2

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11, v8}, Lf1/s;->W(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    if-ne v8, v2, :cond_b

    .line 269
    .line 270
    new-instance v8, La8/f;

    .line 271
    .line 272
    const/16 v2, 0x1d

    .line 273
    .line 274
    invoke-direct {v8, v0, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_b
    check-cast v8, Lf9/a;

    .line 281
    .line 282
    invoke-virtual {v11, v5}, Lf1/s;->p(Z)V

    .line 283
    .line 284
    .line 285
    and-int/lit16 v2, v3, 0x380

    .line 286
    .line 287
    or-int/lit16 v2, v2, 0xc36

    .line 288
    .line 289
    move-object v5, v8

    .line 290
    const/4 v8, 0x0

    .line 291
    move-object v3, v7

    .line 292
    move v7, v2

    .line 293
    move-object v2, v6

    .line 294
    move-object v6, v11

    .line 295
    invoke-static/range {v2 .. v8}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 296
    .line 297
    .line 298
    move/from16 v16, v4

    .line 299
    .line 300
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Ljava/lang/Boolean;

    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    new-instance v2, La8/m;

    .line 311
    .line 312
    const/16 v3, 0xc

    .line 313
    .line 314
    invoke-direct {v2, v0, v3}, La8/m;-><init>(Lf1/b1;I)V

    .line 315
    .line 316
    .line 317
    const v3, 0x6f0d99b2

    .line 318
    .line 319
    .line 320
    invoke-static {v3, v2, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    move-object v4, v0

    .line 325
    new-instance v0, Lc8/m;

    .line 326
    .line 327
    const/4 v5, 0x4

    .line 328
    move-object/from16 v2, p3

    .line 329
    .line 330
    move-object v3, v12

    .line 331
    invoke-direct/range {v0 .. v5}, Lc8/m;-><init>(Ljava/lang/Object;Lr8/e;Lf1/b1;Lf1/b1;I)V

    .line 332
    .line 333
    .line 334
    const v1, 0x32ca9d1

    .line 335
    .line 336
    .line 337
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    new-instance v0, La8/r0;

    .line 342
    .line 343
    move-object/from16 v1, p1

    .line 344
    .line 345
    move-object v5, v4

    .line 346
    move-object v4, v3

    .line 347
    move-object v3, v13

    .line 348
    invoke-direct/range {v0 .. v5}, La8/r0;-><init>(Lr8/j;Lf9/k;Lf1/b1;Lf1/b1;Lf1/b1;)V

    .line 349
    .line 350
    .line 351
    const v1, -0x68b44610

    .line 352
    .line 353
    .line 354
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    new-instance v1, Lj8/i;

    .line 359
    .line 360
    invoke-direct {v1, v10, v3, v9}, Lj8/i;-><init>(Ll5/l;Lf1/b1;I)V

    .line 361
    .line 362
    .line 363
    const v2, 0x13b9a362

    .line 364
    .line 365
    .line 366
    invoke-static {v2, v1, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    const/high16 v12, 0x36c00000

    .line 371
    .line 372
    const/16 v13, 0x7e

    .line 373
    .line 374
    const/4 v1, 0x0

    .line 375
    const-wide/16 v2, 0x0

    .line 376
    .line 377
    const/4 v4, 0x0

    .line 378
    const/4 v5, 0x0

    .line 379
    move-object v9, v0

    .line 380
    move v0, v6

    .line 381
    const/4 v6, 0x0

    .line 382
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 383
    .line 384
    .line 385
    move/from16 v3, v16

    .line 386
    .line 387
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 388
    .line 389
    .line 390
    move-result-object v8

    .line 391
    if-eqz v8, :cond_c

    .line 392
    .line 393
    new-instance v0, Lj8/g;

    .line 394
    .line 395
    const/4 v7, 0x0

    .line 396
    move-object/from16 v2, p1

    .line 397
    .line 398
    move-object/from16 v4, p3

    .line 399
    .line 400
    move/from16 v6, p6

    .line 401
    .line 402
    move v5, v14

    .line 403
    move-object v1, v15

    .line 404
    invoke-direct/range {v0 .. v7}, Lj8/g;-><init>(Ljava/util/List;Lr8/j;ZLf9/k;III)V

    .line 405
    .line 406
    .line 407
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 408
    .line 409
    :cond_c
    return-void
.end method

.method public static final e(FF)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    int-to-long p0, p0

    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shl-long/2addr v0, v2

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p0, v2

    .line 20
    or-long/2addr p0, v0

    .line 21
    return-wide p0
.end method

.method public static final f(Lg0/a;Lr1/p;Lg0/u;Ld0/h0;Ld0/g;Ld0/e;Lz/h;ZLx/h;Lf9/k;Lf1/s;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    move-object/from16 v12, p10

    .line 6
    .line 7
    const v0, -0x7b81c7d6

    .line 8
    .line 9
    .line 10
    invoke-virtual {v12, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v12, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x4

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p11, v0

    .line 25
    .line 26
    and-int/lit8 v4, p11, 0x30

    .line 27
    .line 28
    const/16 v5, 0x20

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    move-object/from16 v4, p1

    .line 33
    .line 34
    invoke-virtual {v12, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    const/16 v7, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v7, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v0, v7

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object/from16 v4, p1

    .line 48
    .line 49
    :goto_2
    or-int/lit16 v0, v0, 0x6c80

    .line 50
    .line 51
    move-object/from16 v9, p4

    .line 52
    .line 53
    invoke-virtual {v12, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    const/high16 v7, 0x20000

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/high16 v7, 0x10000

    .line 63
    .line 64
    :goto_3
    or-int/2addr v0, v7

    .line 65
    invoke-virtual {v12, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    const/high16 v7, 0x100000

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_4
    const/high16 v7, 0x80000

    .line 75
    .line 76
    :goto_4
    or-int/2addr v0, v7

    .line 77
    const/high16 v7, 0x16400000

    .line 78
    .line 79
    or-int/2addr v0, v7

    .line 80
    move-object/from16 v10, p9

    .line 81
    .line 82
    invoke-virtual {v12, v10}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_5

    .line 87
    .line 88
    const/4 v7, 0x4

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    const/4 v7, 0x2

    .line 91
    :goto_5
    const v8, 0x12492493

    .line 92
    .line 93
    .line 94
    and-int/2addr v8, v0

    .line 95
    const v11, 0x12492492

    .line 96
    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    if-ne v8, v11, :cond_7

    .line 100
    .line 101
    and-int/lit8 v8, v7, 0x3

    .line 102
    .line 103
    if-eq v8, v2, :cond_6

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_6
    const/4 v2, 0x0

    .line 107
    goto :goto_7

    .line 108
    :cond_7
    :goto_6
    const/4 v2, 0x1

    .line 109
    :goto_7
    and-int/lit8 v8, v0, 0x1

    .line 110
    .line 111
    invoke-virtual {v12, v8, v2}, Lf1/s;->N(IZ)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_14

    .line 116
    .line 117
    invoke-virtual {v12}, Lf1/s;->S()V

    .line 118
    .line 119
    .line 120
    and-int/lit8 v2, p11, 0x1

    .line 121
    .line 122
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 123
    .line 124
    const v11, -0x71c00381

    .line 125
    .line 126
    .line 127
    if-eqz v2, :cond_9

    .line 128
    .line 129
    invoke-virtual {v12}, Lf1/s;->x()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_8
    invoke-virtual {v12}, Lf1/s;->Q()V

    .line 137
    .line 138
    .line 139
    and-int/2addr v0, v11

    .line 140
    move-object/from16 v2, p2

    .line 141
    .line 142
    move-object/from16 v14, p3

    .line 143
    .line 144
    move-object/from16 v11, p6

    .line 145
    .line 146
    move-object/from16 v15, p8

    .line 147
    .line 148
    move/from16 v17, v7

    .line 149
    .line 150
    move/from16 v7, p7

    .line 151
    .line 152
    goto :goto_9

    .line 153
    :cond_9
    :goto_8
    sget-object v2, Lg0/w;->a:Lg0/m;

    .line 154
    .line 155
    new-array v2, v13, [Ljava/lang/Object;

    .line 156
    .line 157
    sget-object v15, Lg0/u;->w:Lu0/j;

    .line 158
    .line 159
    invoke-virtual {v12, v13}, Lf1/s;->d(I)Z

    .line 160
    .line 161
    .line 162
    move-result v16

    .line 163
    invoke-virtual {v12, v13}, Lf1/s;->d(I)Z

    .line 164
    .line 165
    .line 166
    move-result v17

    .line 167
    or-int v16, v16, v17

    .line 168
    .line 169
    const v17, -0x71c00381

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    if-nez v16, :cond_a

    .line 177
    .line 178
    if-ne v11, v8, :cond_b

    .line 179
    .line 180
    :cond_a
    new-instance v11, Lb3/f0;

    .line 181
    .line 182
    const/16 v14, 0x8

    .line 183
    .line 184
    invoke-direct {v11, v14}, Lb3/f0;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_b
    check-cast v11, Lf9/a;

    .line 191
    .line 192
    invoke-static {v2, v15, v11, v12, v13}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Lg0/u;

    .line 197
    .line 198
    int-to-float v11, v13

    .line 199
    new-instance v14, Ld0/h0;

    .line 200
    .line 201
    invoke-direct {v14, v11, v11, v11, v11}, Ld0/h0;-><init>(FFFF)V

    .line 202
    .line 203
    .line 204
    invoke-static {v12}, Lp9/l;->o(Lf1/s;)Lz/h;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-static {v12}, Lx/d1;->a(Lf1/s;)Lx/h;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    and-int v0, v0, v17

    .line 213
    .line 214
    move/from16 v17, v7

    .line 215
    .line 216
    const/4 v7, 0x1

    .line 217
    :goto_9
    invoke-virtual {v12}, Lf1/s;->q()V

    .line 218
    .line 219
    .line 220
    and-int/lit8 v18, v0, 0xe

    .line 221
    .line 222
    shr-int/lit8 v19, v0, 0xf

    .line 223
    .line 224
    and-int/lit8 v19, v19, 0x70

    .line 225
    .line 226
    or-int v18, v18, v19

    .line 227
    .line 228
    and-int/lit8 v19, v18, 0xe

    .line 229
    .line 230
    const/16 p2, 0x6

    .line 231
    .line 232
    xor-int/lit8 v13, v19, 0x6

    .line 233
    .line 234
    if-le v13, v3, :cond_c

    .line 235
    .line 236
    invoke-virtual {v12, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    if-nez v13, :cond_d

    .line 241
    .line 242
    :cond_c
    and-int/lit8 v13, v18, 0x6

    .line 243
    .line 244
    if-ne v13, v3, :cond_e

    .line 245
    .line 246
    :cond_d
    const/4 v3, 0x1

    .line 247
    goto :goto_a

    .line 248
    :cond_e
    const/4 v3, 0x0

    .line 249
    :goto_a
    and-int/lit8 v13, v18, 0x70

    .line 250
    .line 251
    xor-int/lit8 v13, v13, 0x30

    .line 252
    .line 253
    if-le v13, v5, :cond_f

    .line 254
    .line 255
    invoke-virtual {v12, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-nez v13, :cond_10

    .line 260
    .line 261
    :cond_f
    and-int/lit8 v13, v18, 0x30

    .line 262
    .line 263
    if-ne v13, v5, :cond_11

    .line 264
    .line 265
    :cond_10
    const/4 v13, 0x1

    .line 266
    goto :goto_b

    .line 267
    :cond_11
    const/4 v13, 0x0

    .line 268
    :goto_b
    or-int/2addr v3, v13

    .line 269
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    if-nez v3, :cond_12

    .line 274
    .line 275
    if-ne v5, v8, :cond_13

    .line 276
    .line 277
    :cond_12
    new-instance v5, Lg0/c;

    .line 278
    .line 279
    new-instance v3, La8/w;

    .line 280
    .line 281
    const/4 v8, 0x6

    .line 282
    invoke-direct {v3, v8, v1, v6}, La8/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-direct {v5, v3}, Lg0/c;-><init>(La8/w;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v12, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    :cond_13
    check-cast v5, Lg0/c;

    .line 292
    .line 293
    shr-int/lit8 v3, v0, 0x3

    .line 294
    .line 295
    and-int/lit8 v3, v3, 0xe

    .line 296
    .line 297
    const v8, 0xc36c00

    .line 298
    .line 299
    .line 300
    or-int/2addr v3, v8

    .line 301
    shl-int/lit8 v8, v0, 0xc

    .line 302
    .line 303
    const/high16 v13, 0x70000000

    .line 304
    .line 305
    and-int/2addr v8, v13

    .line 306
    or-int v13, v3, v8

    .line 307
    .line 308
    shr-int/lit8 v0, v0, 0x12

    .line 309
    .line 310
    and-int/lit8 v0, v0, 0xe

    .line 311
    .line 312
    shl-int/lit8 v3, v17, 0x3

    .line 313
    .line 314
    and-int/lit8 v3, v3, 0x70

    .line 315
    .line 316
    or-int/2addr v0, v3

    .line 317
    move-object v3, v10

    .line 318
    move-object v10, v6

    .line 319
    move-object v6, v11

    .line 320
    move-object v11, v3

    .line 321
    move-object v3, v2

    .line 322
    move-object v2, v4

    .line 323
    move-object v4, v5

    .line 324
    move-object v5, v14

    .line 325
    move-object v8, v15

    .line 326
    move v14, v0

    .line 327
    invoke-static/range {v2 .. v14}, Li9/a;->f(Lr1/p;Lg0/u;Lg0/c;Ld0/h0;Lz/h;ZLx/h;Ld0/g;Ld0/e;Lf9/k;Lf1/s;II)V

    .line 328
    .line 329
    .line 330
    move-object v4, v5

    .line 331
    move-object v9, v8

    .line 332
    move v8, v7

    .line 333
    move-object v7, v6

    .line 334
    goto :goto_c

    .line 335
    :cond_14
    invoke-virtual/range {p10 .. p10}, Lf1/s;->Q()V

    .line 336
    .line 337
    .line 338
    move-object/from16 v3, p2

    .line 339
    .line 340
    move-object/from16 v4, p3

    .line 341
    .line 342
    move-object/from16 v7, p6

    .line 343
    .line 344
    move/from16 v8, p7

    .line 345
    .line 346
    move-object/from16 v9, p8

    .line 347
    .line 348
    :goto_c
    invoke-virtual/range {p10 .. p10}, Lf1/s;->r()Lf1/w1;

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    if-eqz v12, :cond_15

    .line 353
    .line 354
    new-instance v0, Lg0/e;

    .line 355
    .line 356
    move-object/from16 v2, p1

    .line 357
    .line 358
    move-object/from16 v5, p4

    .line 359
    .line 360
    move-object/from16 v6, p5

    .line 361
    .line 362
    move-object/from16 v10, p9

    .line 363
    .line 364
    move/from16 v11, p11

    .line 365
    .line 366
    invoke-direct/range {v0 .. v11}, Lg0/e;-><init>(Lg0/a;Lr1/p;Lg0/u;Ld0/h0;Ld0/g;Ld0/e;Lz/h;ZLx/h;Lf9/k;I)V

    .line 367
    .line 368
    .line 369
    iput-object v0, v12, Lf1/w1;->d:Lf9/n;

    .line 370
    .line 371
    :cond_15
    return-void
.end method

.method public static final g(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Lp4/e;->h(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "toString(...)"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0, p0}, Lxb/i;->T(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static h(Lj8/o0;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lj8/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lj8/n0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-eqz p0, :cond_2

    .line 10
    .line 11
    iget-object p0, p0, Lj8/n0;->a:Ljava/lang/String;

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    return-object p0

    .line 17
    :cond_2
    :goto_1
    const-string p0, ""

    .line 18
    .line 19
    return-object p0
.end method

.method public static final varargs i([Lr8/j;)Landroid/os/Bundle;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1d

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    iget-object v4, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    instance-of v5, v3, Ljava/lang/Boolean;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    check-cast v3, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_1
    instance-of v5, v3, Ljava/lang/Byte;

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    check-cast v3, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_2
    instance-of v5, v3, Ljava/lang/Character;

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    check-cast v3, Ljava/lang/Character;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_3
    instance-of v5, v3, Ljava/lang/Double;

    .line 73
    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    check-cast v3, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_4
    instance-of v5, v3, Ljava/lang/Float;

    .line 88
    .line 89
    if-eqz v5, :cond_5

    .line 90
    .line 91
    check-cast v3, Ljava/lang/Number;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_5
    instance-of v5, v3, Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    check-cast v3, Ljava/lang/Number;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_6
    instance-of v5, v3, Ljava/lang/Long;

    .line 118
    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    check-cast v3, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_7
    instance-of v5, v3, Ljava/lang/Short;

    .line 133
    .line 134
    if-eqz v5, :cond_8

    .line 135
    .line 136
    check-cast v3, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_8
    instance-of v5, v3, Landroid/os/Bundle;

    .line 148
    .line 149
    if-eqz v5, :cond_9

    .line 150
    .line 151
    check-cast v3, Landroid/os/Bundle;

    .line 152
    .line 153
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_9
    instance-of v5, v3, Ljava/lang/CharSequence;

    .line 159
    .line 160
    if-eqz v5, :cond_a

    .line 161
    .line 162
    check-cast v3, Ljava/lang/CharSequence;

    .line 163
    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :cond_a
    instance-of v5, v3, Landroid/os/Parcelable;

    .line 170
    .line 171
    if-eqz v5, :cond_b

    .line 172
    .line 173
    check-cast v3, Landroid/os/Parcelable;

    .line 174
    .line 175
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_b
    instance-of v5, v3, [Z

    .line 181
    .line 182
    if-eqz v5, :cond_c

    .line 183
    .line 184
    check-cast v3, [Z

    .line 185
    .line 186
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_c
    instance-of v5, v3, [B

    .line 192
    .line 193
    if-eqz v5, :cond_d

    .line 194
    .line 195
    check-cast v3, [B

    .line 196
    .line 197
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_d
    instance-of v5, v3, [C

    .line 203
    .line 204
    if-eqz v5, :cond_e

    .line 205
    .line 206
    check-cast v3, [C

    .line 207
    .line 208
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_e
    instance-of v5, v3, [D

    .line 214
    .line 215
    if-eqz v5, :cond_f

    .line 216
    .line 217
    check-cast v3, [D

    .line 218
    .line 219
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_f
    instance-of v5, v3, [F

    .line 225
    .line 226
    if-eqz v5, :cond_10

    .line 227
    .line 228
    check-cast v3, [F

    .line 229
    .line 230
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :cond_10
    instance-of v5, v3, [I

    .line 236
    .line 237
    if-eqz v5, :cond_11

    .line 238
    .line 239
    check-cast v3, [I

    .line 240
    .line 241
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :cond_11
    instance-of v5, v3, [J

    .line 247
    .line 248
    if-eqz v5, :cond_12

    .line 249
    .line 250
    check-cast v3, [J

    .line 251
    .line 252
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :cond_12
    instance-of v5, v3, [S

    .line 258
    .line 259
    if-eqz v5, :cond_13

    .line 260
    .line 261
    check-cast v3, [S

    .line 262
    .line 263
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :cond_13
    instance-of v5, v3, [Ljava/lang/Object;

    .line 269
    .line 270
    const/16 v6, 0x22

    .line 271
    .line 272
    const-string v7, " for key \""

    .line 273
    .line 274
    if-eqz v5, :cond_18

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    const-class v8, Landroid/os/Parcelable;

    .line 288
    .line 289
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-eqz v8, :cond_14

    .line 294
    .line 295
    check-cast v3, [Landroid/os/Parcelable;

    .line 296
    .line 297
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_14
    const-class v8, Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_15

    .line 309
    .line 310
    check-cast v3, [Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_1

    .line 316
    :cond_15
    const-class v8, Ljava/lang/CharSequence;

    .line 317
    .line 318
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    if-eqz v8, :cond_16

    .line 323
    .line 324
    check-cast v3, [Ljava/lang/CharSequence;

    .line 325
    .line 326
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_16
    const-class v8, Ljava/io/Serializable;

    .line 331
    .line 332
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-eqz v8, :cond_17

    .line 337
    .line 338
    check-cast v3, Ljava/io/Serializable;

    .line 339
    .line 340
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 349
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v2, "Illegal value array type "

    .line 353
    .line 354
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v0

    .line 377
    :cond_18
    instance-of v5, v3, Ljava/io/Serializable;

    .line 378
    .line 379
    if-eqz v5, :cond_19

    .line 380
    .line 381
    check-cast v3, Ljava/io/Serializable;

    .line 382
    .line 383
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_19
    instance-of v5, v3, Landroid/os/IBinder;

    .line 388
    .line 389
    if-eqz v5, :cond_1a

    .line 390
    .line 391
    check-cast v3, Landroid/os/IBinder;

    .line 392
    .line 393
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 394
    .line 395
    .line 396
    goto :goto_1

    .line 397
    :cond_1a
    instance-of v5, v3, Landroid/util/Size;

    .line 398
    .line 399
    if-eqz v5, :cond_1b

    .line 400
    .line 401
    check-cast v3, Landroid/util/Size;

    .line 402
    .line 403
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 404
    .line 405
    .line 406
    goto :goto_1

    .line 407
    :cond_1b
    instance-of v5, v3, Landroid/util/SizeF;

    .line 408
    .line 409
    if-eqz v5, :cond_1c

    .line 410
    .line 411
    check-cast v3, Landroid/util/SizeF;

    .line 412
    .line 413
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    .line 414
    .line 415
    .line 416
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 429
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v2, "Illegal value type "

    .line 433
    .line 434
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v0

    .line 457
    :cond_1d
    return-object v0
.end method

.method public static final k(Lx1/c;FF)Z
    .locals 2

    .line 1
    iget v0, p0, Lx1/c;->a:F

    .line 2
    .line 3
    iget v1, p0, Lx1/c;->c:F

    .line 4
    .line 5
    cmpg-float v1, p1, v1

    .line 6
    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    cmpg-float p1, v0, p1

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lx1/c;->b:F

    .line 14
    .line 15
    iget p0, p0, Lx1/c;->d:F

    .line 16
    .line 17
    cmpg-float p0, p2, p0

    .line 18
    .line 19
    if-gtz p0, :cond_0

    .line 20
    .line 21
    cmpg-float p0, p1, p2

    .line 22
    .line 23
    if-gtz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static final l(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    .line 16
    .line 17
    int-to-long v4, v1

    .line 18
    add-long/2addr v2, v4

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide v2
.end method

.method public static m(Ljava/lang/String;Ljava/util/List;)Leb/o;
    .locals 3

    .line 1
    const-string v0, "debugName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lub/f;

    .line 7
    .line 8
    invoke-direct {v0}, Lub/f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Leb/n;->b:Leb/n;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Leb/o;

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    instance-of v2, v1, Leb/a;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    check-cast v1, Leb/a;

    .line 36
    .line 37
    iget-object v1, v1, Leb/a;->c:[Leb/o;

    .line 38
    .line 39
    const-string v2, "elements"

    .line 40
    .line 41
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Ls8/l;->J([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0, v1}, Lub/f;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget p1, v0, Lub/f;->a:I

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    const/4 v2, 0x0

    .line 62
    if-eq p1, v1, :cond_3

    .line 63
    .line 64
    new-instance p1, Leb/a;

    .line 65
    .line 66
    new-array v1, v2, [Leb/o;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lub/f;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, [Leb/o;

    .line 73
    .line 74
    invoke-direct {p1, p0, v0}, Leb/a;-><init>(Ljava/lang/String;[Leb/o;)V

    .line 75
    .line 76
    .line 77
    move-object v2, p1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v0, v2}, Lub/f;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    move-object v2, p0

    .line 84
    check-cast v2, Leb/o;

    .line 85
    .line 86
    :cond_4
    :goto_1
    return-object v2
.end method

.method public static final n([Ljava/lang/annotation/Annotation;Lua/c;)Lba/e;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v3, p0, v1

    .line 17
    .line 18
    invoke-static {v3}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {v4}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Lua/b;->a()Lua/c;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v3, v2

    .line 45
    :goto_1
    if-eqz v3, :cond_2

    .line 46
    .line 47
    new-instance p0, Lba/e;

    .line 48
    .line 49
    invoke-direct {p0, v3}, Lba/e;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    return-object v2
.end method

.method public static o(Lp9/p1;)Lna/q;
    .locals 3

    .line 1
    instance-of v0, p0, Lta/e;

    .line 2
    .line 3
    const-string v1, "desc"

    .line 4
    .line 5
    const-string v2, "name"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lta/e;

    .line 10
    .line 11
    iget-object v0, p0, Lta/e;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lta/e;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lna/q;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v1, p0}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    instance-of v0, p0, Lta/d;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p0, Lta/d;

    .line 36
    .line 37
    iget-object v0, p0, Lta/d;->f:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p0, p0, Lta/d;->g:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lna/q;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x23

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v1, p0}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_1
    new-instance p0, Lac/p;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public static p(Ll7/c;Ljava/io/InputStream;I)Ll7/b;
    .locals 4

    .line 1
    new-array v0, p2, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p2, :cond_1

    .line 5
    .line 6
    sub-int v2, p2, v1

    .line 7
    .line 8
    const/16 v3, 0x1000

    .line 9
    .line 10
    if-le v3, v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/16 v2, 0x1000

    .line 14
    .line 15
    :goto_1
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :catchall_1
    move-exception p2

    .line 26
    invoke-static {p1, p0}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p2

    .line 30
    :cond_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 31
    .line 32
    .line 33
    int-to-long p1, p2

    .line 34
    long-to-float p1, p1

    .line 35
    iget p2, p0, Ll7/c;->a:I

    .line 36
    .line 37
    iget v1, p0, Ll7/c;->c:I

    .line 38
    .line 39
    div-int/lit8 v1, v1, 0x8

    .line 40
    .line 41
    iget v2, p0, Ll7/c;->b:I

    .line 42
    .line 43
    mul-int v1, v1, v2

    .line 44
    .line 45
    mul-int v1, v1, p2

    .line 46
    .line 47
    int-to-float p2, v1

    .line 48
    div-float/2addr p1, p2

    .line 49
    const/16 p2, 0x3e8

    .line 50
    .line 51
    int-to-float p2, p2

    .line 52
    mul-float p1, p1, p2

    .line 53
    .line 54
    float-to-long p1, p1

    .line 55
    iput-wide p1, p0, Ll7/c;->d:J

    .line 56
    .line 57
    new-instance p1, Ll7/b;

    .line 58
    .line 59
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string v0, "wrap(...)"

    .line 64
    .line 65
    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2, p0}, Ll7/b;-><init>(Ljava/nio/ByteBuffer;Ll7/c;)V

    .line 69
    .line 70
    .line 71
    return-object p1
.end method

.method public static final r(Lf3/k;I)I
    .locals 2

    .line 1
    sget-object v0, Lf3/k;->b:Lf3/k;

    .line 2
    .line 3
    iget p0, p0, Lf3/k;->a:I

    .line 4
    .line 5
    iget v0, v0, Lf3/k;->a:I

    .line 6
    .line 7
    invoke-static {p0, v0}, Lg9/l;->f(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ltz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    return p0

    .line 29
    :cond_2
    if-eqz p0, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    if-eqz p1, :cond_4

    .line 33
    .line 34
    const/4 p0, 0x2

    .line 35
    return p0

    .line 36
    :cond_4
    return v0
.end method

.method public static final s([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget-object v3, p0, v2

    .line 17
    .line 18
    new-instance v4, Lba/e;

    .line 19
    .line 20
    invoke-direct {v4, v3}, Lba/e;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method public static t()Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getApplicationContext(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string v0, "instance"

    .line 16
    .line 17
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    throw v0
.end method

.method public static final u(II[F)F
    .locals 0

    .line 1
    sub-int/2addr p0, p1

    .line 2
    mul-int/lit8 p0, p0, 0x2

    .line 3
    .line 4
    add-int/lit8 p0, p0, 0x1

    .line 5
    .line 6
    aget p0, p2, p0

    .line 7
    .line 8
    return p0
.end method

.method public static v()Ljava/util/Set;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "android.text.EmojiConsistency"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getEmojiConsistencySet"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    check-cast v0, Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v2, v2, [I

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :cond_2
    return-object v0

    .line 46
    :catchall_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 47
    .line 48
    return-object v0
.end method

.method public static final x(Lm9/u;)Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lp9/c2;->c(Ljava/lang/Object;)Lp9/o1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lp9/o1;->g:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-interface {p0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/reflect/Field;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static final y(Lm9/f;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lp9/c2;->a(Lm9/b;)Lp9/t;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lp9/t;->f()Lq9/g;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Lq9/g;->r()Ljava/lang/reflect/Member;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p0, v0

    .line 25
    :goto_0
    instance-of v1, p0, Ljava/lang/reflect/Method;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast p0, Ljava/lang/reflect/Method;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    return-object v0
.end method

.method public static final z(Landroid/view/KeyEvent;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, La/a;->d(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method


# virtual methods
.method public abstract J(Z)V
.end method

.method public abstract L(Z)V
.end method

.method public abstract j(Lp2/f;)Z
.end method

.method public abstract q(Lp2/f;)Ljava/lang/Object;
.end method

.method public abstract w([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
.end method
