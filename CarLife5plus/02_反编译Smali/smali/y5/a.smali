.class public final Ly5/a;
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
    sput-object v0, Ly5/a;->b:[Lm5/o;

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
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Lj6/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly5/a;->a:Lj6/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lm5/b;Ljava/util/Map;)Lm5/m;
    .locals 20

    .line 1
    invoke-virtual/range {p1 .. p1}, Lm5/b;->a()Ls5/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Ls5/b;->a:I

    .line 6
    .line 7
    iget v2, v0, Ls5/b;->b:I

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    move v7, v2

    .line 12
    const/4 v5, -0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    const/16 v8, 0x1f

    .line 15
    .line 16
    if-ge v6, v2, :cond_7

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    :goto_1
    iget v10, v0, Ls5/b;->c:I

    .line 20
    .line 21
    if-ge v9, v10, :cond_6

    .line 22
    .line 23
    iget-object v11, v0, Ls5/b;->d:[I

    .line 24
    .line 25
    mul-int v10, v10, v6

    .line 26
    .line 27
    add-int/2addr v10, v9

    .line 28
    aget v10, v11, v10

    .line 29
    .line 30
    if-eqz v10, :cond_5

    .line 31
    .line 32
    if-ge v6, v7, :cond_0

    .line 33
    .line 34
    move v7, v6

    .line 35
    :cond_0
    if-le v6, v5, :cond_1

    .line 36
    .line 37
    move v5, v6

    .line 38
    :cond_1
    shl-int/lit8 v11, v9, 0x5

    .line 39
    .line 40
    if-ge v11, v1, :cond_3

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    :goto_2
    rsub-int/lit8 v13, v12, 0x1f

    .line 44
    .line 45
    shl-int v13, v10, v13

    .line 46
    .line 47
    if-nez v13, :cond_2

    .line 48
    .line 49
    add-int/lit8 v12, v12, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    add-int/2addr v12, v11

    .line 53
    if-ge v12, v1, :cond_3

    .line 54
    .line 55
    move v1, v12

    .line 56
    :cond_3
    add-int/lit8 v12, v11, 0x1f

    .line 57
    .line 58
    if-le v12, v3, :cond_5

    .line 59
    .line 60
    const/16 v12, 0x1f

    .line 61
    .line 62
    :goto_3
    ushr-int v13, v10, v12

    .line 63
    .line 64
    if-nez v13, :cond_4

    .line 65
    .line 66
    add-int/lit8 v12, v12, -0x1

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    add-int/2addr v11, v12

    .line 70
    if-le v11, v3, :cond_5

    .line 71
    .line 72
    move v3, v11

    .line 73
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_7
    const/4 v2, 0x1

    .line 80
    if-lt v3, v1, :cond_9

    .line 81
    .line 82
    if-ge v5, v7, :cond_8

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_8
    sub-int/2addr v3, v1

    .line 86
    add-int/2addr v3, v2

    .line 87
    sub-int/2addr v5, v7

    .line 88
    add-int/2addr v5, v2

    .line 89
    filled-new-array {v1, v7, v3, v5}, [I

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_5

    .line 94
    :cond_9
    :goto_4
    const/4 v1, 0x0

    .line 95
    :goto_5
    if-eqz v1, :cond_19

    .line 96
    .line 97
    aget v3, v1, v4

    .line 98
    .line 99
    aget v5, v1, v2

    .line 100
    .line 101
    const/4 v6, 0x2

    .line 102
    aget v7, v1, v6

    .line 103
    .line 104
    const/4 v9, 0x3

    .line 105
    aget v1, v1, v9

    .line 106
    .line 107
    const/16 v10, 0x1e

    .line 108
    .line 109
    add-int/2addr v10, v8

    .line 110
    div-int/lit8 v10, v10, 0x20

    .line 111
    .line 112
    mul-int/lit8 v8, v10, 0x21

    .line 113
    .line 114
    new-array v8, v8, [I

    .line 115
    .line 116
    const/4 v11, 0x0

    .line 117
    :goto_6
    const/16 v12, 0x21

    .line 118
    .line 119
    const/16 v13, 0x1e

    .line 120
    .line 121
    if-ge v11, v12, :cond_c

    .line 122
    .line 123
    mul-int v14, v11, v1

    .line 124
    .line 125
    div-int/lit8 v15, v1, 0x2

    .line 126
    .line 127
    add-int/2addr v15, v14

    .line 128
    div-int/2addr v15, v12

    .line 129
    add-int/2addr v15, v5

    .line 130
    const/4 v12, 0x0

    .line 131
    :goto_7
    if-ge v12, v13, :cond_b

    .line 132
    .line 133
    mul-int v14, v12, v7

    .line 134
    .line 135
    div-int/lit8 v16, v7, 0x2

    .line 136
    .line 137
    add-int v16, v16, v14

    .line 138
    .line 139
    and-int/lit8 v14, v11, 0x1

    .line 140
    .line 141
    mul-int v14, v14, v7

    .line 142
    .line 143
    div-int/2addr v14, v6

    .line 144
    add-int v14, v14, v16

    .line 145
    .line 146
    div-int/2addr v14, v13

    .line 147
    add-int/2addr v14, v3

    .line 148
    invoke-virtual {v0, v14, v15}, Ls5/b;->b(II)Z

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    if-eqz v14, :cond_a

    .line 153
    .line 154
    mul-int v14, v11, v10

    .line 155
    .line 156
    div-int/lit8 v16, v12, 0x20

    .line 157
    .line 158
    add-int v16, v16, v14

    .line 159
    .line 160
    aget v14, v8, v16

    .line 161
    .line 162
    and-int/lit8 v17, v12, 0x1f

    .line 163
    .line 164
    shl-int v17, v2, v17

    .line 165
    .line 166
    or-int v14, v14, v17

    .line 167
    .line 168
    aput v14, v8, v16

    .line 169
    .line 170
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_c
    move-object/from16 v11, p0

    .line 177
    .line 178
    iget-object v14, v11, Ly5/a;->a:Lj6/c;

    .line 179
    .line 180
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const/16 v0, 0x90

    .line 184
    .line 185
    new-array v1, v0, [B

    .line 186
    .line 187
    const/4 v3, 0x0

    .line 188
    :goto_8
    const/4 v5, 0x5

    .line 189
    if-ge v3, v12, :cond_10

    .line 190
    .line 191
    sget-object v7, Lz5/a;->a:[[I

    .line 192
    .line 193
    aget-object v7, v7, v3

    .line 194
    .line 195
    const/4 v15, 0x0

    .line 196
    :goto_9
    if-ge v15, v13, :cond_f

    .line 197
    .line 198
    aget v16, v7, v15

    .line 199
    .line 200
    if-ltz v16, :cond_e

    .line 201
    .line 202
    mul-int v17, v3, v10

    .line 203
    .line 204
    div-int/lit8 v18, v15, 0x20

    .line 205
    .line 206
    add-int v18, v18, v17

    .line 207
    .line 208
    aget v17, v8, v18

    .line 209
    .line 210
    and-int/lit8 v18, v15, 0x1f

    .line 211
    .line 212
    ushr-int v17, v17, v18

    .line 213
    .line 214
    and-int/lit8 v17, v17, 0x1

    .line 215
    .line 216
    if-eqz v17, :cond_d

    .line 217
    .line 218
    const/16 v17, 0x1

    .line 219
    .line 220
    goto :goto_a

    .line 221
    :cond_d
    const/16 v17, 0x0

    .line 222
    .line 223
    :goto_a
    if-eqz v17, :cond_e

    .line 224
    .line 225
    div-int/lit8 v17, v16, 0x6

    .line 226
    .line 227
    aget-byte v18, v1, v17

    .line 228
    .line 229
    rem-int/lit8 v16, v16, 0x6

    .line 230
    .line 231
    rsub-int/lit8 v16, v16, 0x5

    .line 232
    .line 233
    shl-int v12, v2, v16

    .line 234
    .line 235
    int-to-byte v12, v12

    .line 236
    or-int v12, v18, v12

    .line 237
    .line 238
    int-to-byte v12, v12

    .line 239
    aput-byte v12, v1, v17

    .line 240
    .line 241
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .line 242
    .line 243
    const/16 v12, 0x21

    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    const/16 v12, 0x21

    .line 249
    .line 250
    goto :goto_8

    .line 251
    :cond_10
    const/16 v17, 0xa

    .line 252
    .line 253
    const/16 v19, 0x0

    .line 254
    .line 255
    const/4 v15, 0x0

    .line 256
    const/16 v16, 0xa

    .line 257
    .line 258
    move-object/from16 v18, v1

    .line 259
    .line 260
    invoke-virtual/range {v14 .. v19}, Lj6/c;->a(III[BI)V

    .line 261
    .line 262
    .line 263
    aget-byte v1, v18, v4

    .line 264
    .line 265
    and-int/lit8 v1, v1, 0xf

    .line 266
    .line 267
    const/4 v3, 0x4

    .line 268
    if-eq v1, v6, :cond_12

    .line 269
    .line 270
    if-eq v1, v9, :cond_12

    .line 271
    .line 272
    if-eq v1, v3, :cond_12

    .line 273
    .line 274
    if-ne v1, v5, :cond_11

    .line 275
    .line 276
    const/16 v17, 0x38

    .line 277
    .line 278
    const/16 v19, 0x1

    .line 279
    .line 280
    const/16 v15, 0x14

    .line 281
    .line 282
    const/16 v16, 0x44

    .line 283
    .line 284
    invoke-virtual/range {v14 .. v19}, Lj6/c;->a(III[BI)V

    .line 285
    .line 286
    .line 287
    const/16 v19, 0x2

    .line 288
    .line 289
    invoke-virtual/range {v14 .. v19}, Lj6/c;->a(III[BI)V

    .line 290
    .line 291
    .line 292
    const/16 v7, 0x4e

    .line 293
    .line 294
    new-array v7, v7, [B

    .line 295
    .line 296
    move-object v8, v7

    .line 297
    move-object/from16 v7, v18

    .line 298
    .line 299
    goto :goto_b

    .line 300
    :cond_11
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    throw v0

    .line 305
    :cond_12
    const/16 v17, 0x28

    .line 306
    .line 307
    const/16 v19, 0x1

    .line 308
    .line 309
    const/16 v15, 0x14

    .line 310
    .line 311
    const/16 v16, 0x54

    .line 312
    .line 313
    invoke-virtual/range {v14 .. v19}, Lj6/c;->a(III[BI)V

    .line 314
    .line 315
    .line 316
    const/16 v19, 0x2

    .line 317
    .line 318
    invoke-virtual/range {v14 .. v19}, Lj6/c;->a(III[BI)V

    .line 319
    .line 320
    .line 321
    move-object/from16 v7, v18

    .line 322
    .line 323
    const/16 v8, 0x5e

    .line 324
    .line 325
    new-array v8, v8, [B

    .line 326
    .line 327
    :goto_b
    const/16 v10, 0xa

    .line 328
    .line 329
    invoke-static {v7, v4, v8, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    .line 331
    .line 332
    array-length v12, v8

    .line 333
    sub-int/2addr v12, v10

    .line 334
    const/16 v14, 0x14

    .line 335
    .line 336
    invoke-static {v7, v14, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    .line 338
    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    .line 343
    .line 344
    if-eq v1, v6, :cond_15

    .line 345
    .line 346
    if-eq v1, v9, :cond_15

    .line 347
    .line 348
    if-eq v1, v3, :cond_14

    .line 349
    .line 350
    if-eq v1, v5, :cond_13

    .line 351
    .line 352
    goto/16 :goto_d

    .line 353
    .line 354
    :cond_13
    const/16 v0, 0x4d

    .line 355
    .line 356
    invoke-static {v8, v2, v0}, Lz5/a;->b([BII)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    goto/16 :goto_d

    .line 364
    .line 365
    :cond_14
    const/16 v0, 0x5d

    .line 366
    .line 367
    invoke-static {v8, v2, v0}, Lz5/a;->b([BII)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    goto/16 :goto_d

    .line 375
    .line 376
    :cond_15
    const/4 v0, 0x6

    .line 377
    if-ne v1, v6, :cond_16

    .line 378
    .line 379
    new-array v2, v13, [B

    .line 380
    .line 381
    fill-array-data v2, :array_0

    .line 382
    .line 383
    .line 384
    invoke-static {v8, v2}, Lz5/a;->a([B[B)I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    new-instance v3, Ljava/text/DecimalFormat;

    .line 389
    .line 390
    new-array v0, v0, [B

    .line 391
    .line 392
    fill-array-data v0, :array_1

    .line 393
    .line 394
    .line 395
    invoke-static {v8, v0}, Lz5/a;->a([B[B)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    const-string v5, "0000000000"

    .line 400
    .line 401
    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-direct {v3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    int-to-long v5, v2

    .line 409
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    goto :goto_c

    .line 414
    :cond_16
    sget-object v12, Lz5/a;->b:[Ljava/lang/String;

    .line 415
    .line 416
    aget-object v13, v12, v4

    .line 417
    .line 418
    new-array v14, v0, [B

    .line 419
    .line 420
    fill-array-data v14, :array_2

    .line 421
    .line 422
    .line 423
    invoke-static {v8, v14}, Lz5/a;->a([B[B)I

    .line 424
    .line 425
    .line 426
    move-result v14

    .line 427
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    .line 428
    .line 429
    .line 430
    move-result v13

    .line 431
    aget-object v14, v12, v4

    .line 432
    .line 433
    new-array v15, v0, [B

    .line 434
    .line 435
    fill-array-data v15, :array_3

    .line 436
    .line 437
    .line 438
    invoke-static {v8, v15}, Lz5/a;->a([B[B)I

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    .line 443
    .line 444
    .line 445
    move-result v14

    .line 446
    aget-object v15, v12, v4

    .line 447
    .line 448
    const/16 p1, 0x1

    .line 449
    .line 450
    new-array v2, v0, [B

    .line 451
    .line 452
    fill-array-data v2, :array_4

    .line 453
    .line 454
    .line 455
    invoke-static {v8, v2}, Lz5/a;->a([B[B)I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    aget-object v15, v12, v4

    .line 464
    .line 465
    const/16 p2, 0x4

    .line 466
    .line 467
    new-array v3, v0, [B

    .line 468
    .line 469
    fill-array-data v3, :array_5

    .line 470
    .line 471
    .line 472
    invoke-static {v8, v3}, Lz5/a;->a([B[B)I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    aget-object v15, v12, v4

    .line 481
    .line 482
    const/16 v16, 0x5

    .line 483
    .line 484
    new-array v5, v0, [B

    .line 485
    .line 486
    fill-array-data v5, :array_6

    .line 487
    .line 488
    .line 489
    invoke-static {v8, v5}, Lz5/a;->a([B[B)I

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    aget-object v12, v12, v4

    .line 498
    .line 499
    new-array v15, v0, [B

    .line 500
    .line 501
    fill-array-data v15, :array_7

    .line 502
    .line 503
    .line 504
    invoke-static {v8, v15}, Lz5/a;->a([B[B)I

    .line 505
    .line 506
    .line 507
    move-result v15

    .line 508
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    .line 509
    .line 510
    .line 511
    move-result v12

    .line 512
    new-array v0, v0, [C

    .line 513
    .line 514
    aput-char v13, v0, v4

    .line 515
    .line 516
    aput-char v14, v0, p1

    .line 517
    .line 518
    aput-char v2, v0, v6

    .line 519
    .line 520
    aput-char v3, v0, v9

    .line 521
    .line 522
    aput-char v5, v0, p2

    .line 523
    .line 524
    aput-char v12, v0, v16

    .line 525
    .line 526
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    :goto_c
    new-instance v2, Ljava/text/DecimalFormat;

    .line 531
    .line 532
    const-string v3, "000"

    .line 533
    .line 534
    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    new-array v3, v10, [B

    .line 538
    .line 539
    fill-array-data v3, :array_8

    .line 540
    .line 541
    .line 542
    invoke-static {v8, v3}, Lz5/a;->a([B[B)I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    int-to-long v5, v3

    .line 547
    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    new-array v5, v10, [B

    .line 552
    .line 553
    fill-array-data v5, :array_9

    .line 554
    .line 555
    .line 556
    invoke-static {v8, v5}, Lz5/a;->a([B[B)I

    .line 557
    .line 558
    .line 559
    move-result v5

    .line 560
    int-to-long v5, v5

    .line 561
    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    const/16 v5, 0x54

    .line 566
    .line 567
    invoke-static {v8, v10, v5}, Lz5/a;->b([BII)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    const-string v6, "[)>\u001e01\u001d"

    .line 579
    .line 580
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    const/16 v6, 0x1d

    .line 585
    .line 586
    if-eqz v5, :cond_17

    .line 587
    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    const/16 v2, 0x9

    .line 616
    .line 617
    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v7, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    :goto_d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    new-instance v2, Lm5/m;

    .line 660
    .line 661
    sget-object v3, Ly5/a;->b:[Lm5/o;

    .line 662
    .line 663
    sget-object v4, Lm5/a;->j:Lm5/a;

    .line 664
    .line 665
    invoke-direct {v2, v0, v8, v3, v4}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;)V

    .line 666
    .line 667
    .line 668
    if-eqz v1, :cond_18

    .line 669
    .line 670
    sget-object v0, Lm5/n;->c:Lm5/n;

    .line 671
    .line 672
    invoke-virtual {v2, v0, v1}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    :cond_18
    return-object v2

    .line 676
    :cond_19
    move-object/from16 v11, p0

    .line 677
    .line 678
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 679
    .line 680
    throw v0

    .line 681
    :array_0
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    nop

    .line 701
    :array_1
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    nop

    .line 709
    :array_2
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    nop

    .line 717
    :array_3
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    nop

    .line 725
    :array_4
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    nop

    .line 733
    :array_5
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    nop

    .line 741
    :array_6
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    nop

    .line 749
    :array_7
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    nop

    .line 757
    :array_8
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data

    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    nop

    .line 767
    :array_9
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
