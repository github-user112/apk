.class public abstract Ll0/p0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ll0/m0;

.field public static final b:Lk2/a;

.field public static final c:Ld6/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ll0/m0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ll0/m0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll0/p0;->a:Ll0/m0;

    .line 8
    .line 9
    new-instance v0, Lk2/a;

    .line 10
    .line 11
    const/16 v1, 0x3fe

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lk2/a;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ll0/p0;->b:Lk2/a;

    .line 17
    .line 18
    new-instance v0, Ld6/i;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-direct {v0, v1, v1, v2}, Ld6/i;-><init>(III)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Ll0/p0;->c:Ld6/i;

    .line 26
    .line 27
    return-void
.end method

.method public static final a(Ljava/lang/String;Lr1/p;Lb3/o0;IZIILf1/s;II)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move/from16 v7, p5

    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    move/from16 v11, p8

    .line 12
    .line 13
    move/from16 v13, p9

    .line 14
    .line 15
    const v0, -0x3e089999

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v11, 0x6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v10, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v11

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v11

    .line 37
    :goto_1
    and-int/lit8 v3, v11, 0x30

    .line 38
    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v10, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/16 v3, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v3, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v3

    .line 53
    :cond_3
    and-int/lit16 v3, v11, 0x180

    .line 54
    .line 55
    if-nez v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {v10, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    const/16 v3, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v3, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v0, v3

    .line 69
    :cond_5
    and-int/lit8 v3, v13, 0x8

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0xc00

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_6
    and-int/lit16 v3, v11, 0xc00

    .line 78
    .line 79
    if-nez v3, :cond_8

    .line 80
    .line 81
    invoke-virtual {v10, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    const/16 v3, 0x800

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    const/16 v3, 0x400

    .line 91
    .line 92
    :goto_4
    or-int/2addr v0, v3

    .line 93
    :cond_8
    :goto_5
    and-int/lit8 v3, v13, 0x10

    .line 94
    .line 95
    if-eqz v3, :cond_a

    .line 96
    .line 97
    or-int/lit16 v0, v0, 0x6000

    .line 98
    .line 99
    :cond_9
    move/from16 v5, p3

    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_a
    and-int/lit16 v5, v11, 0x6000

    .line 103
    .line 104
    if-nez v5, :cond_9

    .line 105
    .line 106
    move/from16 v5, p3

    .line 107
    .line 108
    invoke-virtual {v10, v5}, Lf1/s;->d(I)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_b

    .line 113
    .line 114
    const/16 v6, 0x4000

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_b
    const/16 v6, 0x2000

    .line 118
    .line 119
    :goto_6
    or-int/2addr v0, v6

    .line 120
    :goto_7
    and-int/lit8 v6, v13, 0x20

    .line 121
    .line 122
    const/high16 v8, 0x30000

    .line 123
    .line 124
    if-eqz v6, :cond_d

    .line 125
    .line 126
    or-int/2addr v0, v8

    .line 127
    :cond_c
    move/from16 v8, p4

    .line 128
    .line 129
    goto :goto_9

    .line 130
    :cond_d
    and-int/2addr v8, v11

    .line 131
    if-nez v8, :cond_c

    .line 132
    .line 133
    move/from16 v8, p4

    .line 134
    .line 135
    invoke-virtual {v10, v8}, Lf1/s;->g(Z)Z

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    if-eqz v15, :cond_e

    .line 140
    .line 141
    const/high16 v15, 0x20000

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_e
    const/high16 v15, 0x10000

    .line 145
    .line 146
    :goto_8
    or-int/2addr v0, v15

    .line 147
    :goto_9
    const/high16 v15, 0x180000

    .line 148
    .line 149
    and-int/2addr v15, v11

    .line 150
    if-nez v15, :cond_10

    .line 151
    .line 152
    invoke-virtual {v10, v7}, Lf1/s;->d(I)Z

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-eqz v15, :cond_f

    .line 157
    .line 158
    const/high16 v15, 0x100000

    .line 159
    .line 160
    goto :goto_a

    .line 161
    :cond_f
    const/high16 v15, 0x80000

    .line 162
    .line 163
    :goto_a
    or-int/2addr v0, v15

    .line 164
    :cond_10
    and-int/lit16 v15, v13, 0x80

    .line 165
    .line 166
    const/high16 v16, 0xc00000

    .line 167
    .line 168
    if-eqz v15, :cond_11

    .line 169
    .line 170
    or-int v0, v0, v16

    .line 171
    .line 172
    move/from16 v14, p6

    .line 173
    .line 174
    goto :goto_c

    .line 175
    :cond_11
    and-int v16, v11, v16

    .line 176
    .line 177
    move/from16 v14, p6

    .line 178
    .line 179
    if-nez v16, :cond_13

    .line 180
    .line 181
    invoke-virtual {v10, v14}, Lf1/s;->d(I)Z

    .line 182
    .line 183
    .line 184
    move-result v17

    .line 185
    if-eqz v17, :cond_12

    .line 186
    .line 187
    const/high16 v17, 0x800000

    .line 188
    .line 189
    goto :goto_b

    .line 190
    :cond_12
    const/high16 v17, 0x400000

    .line 191
    .line 192
    :goto_b
    or-int v0, v0, v17

    .line 193
    .line 194
    :cond_13
    :goto_c
    and-int/lit16 v2, v13, 0x100

    .line 195
    .line 196
    const/high16 v18, 0x6000000

    .line 197
    .line 198
    if-eqz v2, :cond_14

    .line 199
    .line 200
    or-int v0, v0, v18

    .line 201
    .line 202
    goto :goto_e

    .line 203
    :cond_14
    and-int v2, v11, v18

    .line 204
    .line 205
    if-nez v2, :cond_16

    .line 206
    .line 207
    invoke-virtual {v10, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_15

    .line 212
    .line 213
    const/high16 v2, 0x4000000

    .line 214
    .line 215
    goto :goto_d

    .line 216
    :cond_15
    const/high16 v2, 0x2000000

    .line 217
    .line 218
    :goto_d
    or-int/2addr v0, v2

    .line 219
    :cond_16
    :goto_e
    const/high16 v2, 0x30000000

    .line 220
    .line 221
    or-int/2addr v0, v2

    .line 222
    const v2, 0x12492493

    .line 223
    .line 224
    .line 225
    and-int/2addr v2, v0

    .line 226
    const v4, 0x12492492

    .line 227
    .line 228
    .line 229
    const/4 v14, 0x0

    .line 230
    const/4 v8, 0x1

    .line 231
    if-eq v2, v4, :cond_17

    .line 232
    .line 233
    const/4 v2, 0x1

    .line 234
    goto :goto_f

    .line 235
    :cond_17
    const/4 v2, 0x0

    .line 236
    :goto_f
    and-int/lit8 v4, v0, 0x1

    .line 237
    .line 238
    invoke-virtual {v10, v4, v2}, Lf1/s;->N(IZ)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_30

    .line 243
    .line 244
    if-eqz v3, :cond_18

    .line 245
    .line 246
    const/16 v19, 0x1

    .line 247
    .line 248
    goto :goto_10

    .line 249
    :cond_18
    move/from16 v19, v5

    .line 250
    .line 251
    :goto_10
    if-eqz v6, :cond_19

    .line 252
    .line 253
    const/16 v20, 0x1

    .line 254
    .line 255
    goto :goto_11

    .line 256
    :cond_19
    move/from16 v20, p4

    .line 257
    .line 258
    :goto_11
    if-eqz v15, :cond_1a

    .line 259
    .line 260
    const/4 v15, 0x1

    .line 261
    goto :goto_12

    .line 262
    :cond_1a
    move/from16 v15, p6

    .line 263
    .line 264
    :goto_12
    invoke-static {v15, v7}, Ll0/p0;->x(II)V

    .line 265
    .line 266
    .line 267
    sget-object v2, Lw0/d1;->a:Lf1/c0;

    .line 268
    .line 269
    invoke-virtual {v10, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Lw0/c1;

    .line 274
    .line 275
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 276
    .line 277
    if-eqz v2, :cond_1f

    .line 278
    .line 279
    const v4, 0x153ec423

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v4}, Lf1/s;->W(I)V

    .line 283
    .line 284
    .line 285
    sget-object v4, Lw0/x1;->a:Lf1/c0;

    .line 286
    .line 287
    invoke-virtual {v10, v4}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    check-cast v4, Lw0/w1;

    .line 292
    .line 293
    iget-wide v4, v4, Lw0/w1;->b:J

    .line 294
    .line 295
    new-array v6, v8, [Ljava/lang/Object;

    .line 296
    .line 297
    aput-object v2, v6, v14

    .line 298
    .line 299
    new-instance v8, La8/d;

    .line 300
    .line 301
    const/16 v14, 0xf

    .line 302
    .line 303
    invoke-direct {v8, v14, v2}, La8/d;-><init>(ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    move/from16 v28, v0

    .line 307
    .line 308
    new-instance v0, Lc8/y0;

    .line 309
    .line 310
    invoke-direct {v0, v14}, Lc8/y0;-><init>(I)V

    .line 311
    .line 312
    .line 313
    new-instance v14, Lu0/j;

    .line 314
    .line 315
    const/16 v7, 0x13

    .line 316
    .line 317
    invoke-direct {v14, v7, v8, v0}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v10, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    if-nez v0, :cond_1b

    .line 329
    .line 330
    if-ne v7, v3, :cond_1c

    .line 331
    .line 332
    :cond_1b
    new-instance v7, La5/e;

    .line 333
    .line 334
    const/16 v0, 0xa

    .line 335
    .line 336
    invoke-direct {v7, v0, v2}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v10, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_1c
    check-cast v7, Lf9/a;

    .line 343
    .line 344
    const/4 v0, 0x0

    .line 345
    invoke-static {v6, v14, v7, v10, v0}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    check-cast v6, Ljava/lang/Number;

    .line 350
    .line 351
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 352
    .line 353
    .line 354
    move-result-wide v6

    .line 355
    invoke-virtual {v10, v6, v7}, Lf1/s;->e(J)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    invoke-virtual {v10, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v8

    .line 363
    or-int/2addr v0, v8

    .line 364
    invoke-virtual {v10, v4, v5}, Lf1/s;->e(J)Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    or-int/2addr v0, v8

    .line 369
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    if-nez v0, :cond_1d

    .line 374
    .line 375
    if-ne v8, v3, :cond_1e

    .line 376
    .line 377
    :cond_1d
    new-instance v21, Lv0/h;

    .line 378
    .line 379
    move-object/from16 v24, v2

    .line 380
    .line 381
    move-wide/from16 v25, v4

    .line 382
    .line 383
    move-wide/from16 v22, v6

    .line 384
    .line 385
    invoke-direct/range {v21 .. v26}, Lv0/h;-><init>(JLw0/c1;J)V

    .line 386
    .line 387
    .line 388
    move-object/from16 v8, v21

    .line 389
    .line 390
    invoke-virtual {v10, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :cond_1e
    move-object v4, v8

    .line 394
    check-cast v4, Lv0/h;

    .line 395
    .line 396
    const/4 v0, 0x0

    .line 397
    invoke-virtual {v10, v0}, Lf1/s;->p(Z)V

    .line 398
    .line 399
    .line 400
    move-object/from16 v18, v4

    .line 401
    .line 402
    goto :goto_13

    .line 403
    :cond_1f
    move/from16 v28, v0

    .line 404
    .line 405
    const/4 v0, 0x0

    .line 406
    const v2, 0x154642bf

    .line 407
    .line 408
    .line 409
    invoke-virtual {v10, v2}, Lf1/s;->W(I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v10, v0}, Lf1/s;->p(Z)V

    .line 413
    .line 414
    .line 415
    const/16 v18, 0x0

    .line 416
    .line 417
    :goto_13
    sget-object v0, Lr2/i1;->k:Lf1/w2;

    .line 418
    .line 419
    invoke-virtual {v10, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    move-object v5, v0

    .line 424
    check-cast v5, Lf3/d;

    .line 425
    .line 426
    and-int/lit8 v0, v28, 0xe

    .line 427
    .line 428
    shr-int/lit8 v2, v28, 0x3

    .line 429
    .line 430
    and-int/lit8 v2, v2, 0x70

    .line 431
    .line 432
    or-int/2addr v0, v2

    .line 433
    sget-object v2, Ll0/n;->a:Lf1/w2;

    .line 434
    .line 435
    invoke-virtual {v10, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    move-object v7, v2

    .line 440
    check-cast v7, Ljava/util/concurrent/Executor;

    .line 441
    .line 442
    if-eqz v7, :cond_2a

    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 449
    .line 450
    const/16 v6, 0x1c

    .line 451
    .line 452
    if-lt v4, v6, :cond_2a

    .line 453
    .line 454
    const/16 v4, 0x8

    .line 455
    .line 456
    if-lt v2, v4, :cond_2a

    .line 457
    .line 458
    const/16 v4, 0x3e8

    .line 459
    .line 460
    if-ge v2, v4, :cond_2a

    .line 461
    .line 462
    sget-object v2, Ll0/n;->b:Ljava/lang/Boolean;

    .line 463
    .line 464
    if-nez v2, :cond_21

    .line 465
    .line 466
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    const/4 v4, 0x4

    .line 475
    if-lt v2, v4, :cond_20

    .line 476
    .line 477
    const/4 v2, 0x1

    .line 478
    goto :goto_14

    .line 479
    :cond_20
    const/4 v2, 0x0

    .line 480
    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    sput-object v2, Ll0/n;->b:Ljava/lang/Boolean;

    .line 485
    .line 486
    :cond_21
    sget-object v2, Ll0/n;->b:Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_2a

    .line 496
    .line 497
    const v2, 0x4ac3871f    # 6407055.5f

    .line 498
    .line 499
    .line 500
    invoke-virtual {v10, v2}, Lf1/s;->W(I)V

    .line 501
    .line 502
    .line 503
    sget-object v2, Lr2/i1;->n:Lf1/w2;

    .line 504
    .line 505
    invoke-virtual {v10, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    check-cast v2, Ln3/m;

    .line 510
    .line 511
    sget-object v4, Lr2/i1;->h:Lf1/w2;

    .line 512
    .line 513
    invoke-virtual {v10, v4}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    check-cast v4, Ln3/c;

    .line 518
    .line 519
    and-int/lit8 v6, v0, 0x70

    .line 520
    .line 521
    xor-int/lit8 v6, v6, 0x30

    .line 522
    .line 523
    const/16 v14, 0x20

    .line 524
    .line 525
    if-le v6, v14, :cond_22

    .line 526
    .line 527
    :try_start_0
    invoke-virtual {v10, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-nez v6, :cond_23

    .line 532
    .line 533
    goto :goto_15

    .line 534
    :catch_0
    move-object v3, v5

    .line 535
    goto :goto_1a

    .line 536
    :cond_22
    :goto_15
    and-int/lit8 v6, v0, 0x30

    .line 537
    .line 538
    if-ne v6, v14, :cond_24

    .line 539
    .line 540
    :cond_23
    const/4 v6, 0x1

    .line 541
    goto :goto_16

    .line 542
    :cond_24
    const/4 v6, 0x0

    .line 543
    :goto_16
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 544
    .line 545
    .line 546
    move-result v8

    .line 547
    invoke-virtual {v10, v8}, Lf1/s;->d(I)Z

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    or-int/2addr v6, v8

    .line 552
    and-int/lit8 v8, v0, 0xe

    .line 553
    .line 554
    xor-int/lit8 v8, v8, 0x6

    .line 555
    .line 556
    const/4 v14, 0x4

    .line 557
    if-le v8, v14, :cond_25

    .line 558
    .line 559
    invoke-virtual {v10, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v8

    .line 563
    if-nez v8, :cond_26

    .line 564
    .line 565
    :cond_25
    and-int/lit8 v0, v0, 0x6

    .line 566
    .line 567
    if-ne v0, v14, :cond_27

    .line 568
    .line 569
    :cond_26
    const/4 v0, 0x1

    .line 570
    goto :goto_17

    .line 571
    :cond_27
    const/4 v0, 0x0

    .line 572
    :goto_17
    or-int/2addr v0, v6

    .line 573
    invoke-virtual {v10, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    or-int/2addr v0, v6

    .line 578
    invoke-virtual {v10, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v6

    .line 582
    or-int/2addr v0, v6

    .line 583
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    if-nez v0, :cond_29

    .line 588
    .line 589
    if-ne v6, v3, :cond_28

    .line 590
    .line 591
    goto :goto_18

    .line 592
    :cond_28
    move-object v3, v5

    .line 593
    goto :goto_19

    .line 594
    :cond_29
    :goto_18
    new-instance v0, Ll0/m;

    .line 595
    .line 596
    const/4 v6, 0x0

    .line 597
    move-object v3, v1

    .line 598
    move-object v1, v12

    .line 599
    invoke-direct/range {v0 .. v6}, Ll0/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .line 601
    .line 602
    move-object v3, v5

    .line 603
    :try_start_1
    invoke-virtual {v10, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    move-object v6, v0

    .line 607
    :goto_19
    check-cast v6, Ljava/lang/Runnable;

    .line 608
    .line 609
    invoke-interface {v7, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 610
    .line 611
    .line 612
    :catch_1
    :goto_1a
    const/4 v0, 0x0

    .line 613
    invoke-virtual {v10, v0}, Lf1/s;->p(Z)V

    .line 614
    .line 615
    .line 616
    goto :goto_1b

    .line 617
    :cond_2a
    move-object v3, v5

    .line 618
    const/4 v0, 0x0

    .line 619
    const v1, 0x4ad0c8a7    # 6841427.5f

    .line 620
    .line 621
    .line 622
    invoke-virtual {v10, v1}, Lf1/s;->W(I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v10, v0}, Lf1/s;->p(Z)V

    .line 626
    .line 627
    .line 628
    :goto_1b
    const/4 v8, 0x0

    .line 629
    if-nez v18, :cond_2b

    .line 630
    .line 631
    const v1, 0x1554ef13

    .line 632
    .line 633
    .line 634
    invoke-virtual {v10, v1}, Lf1/s;->W(I)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v10, v0}, Lf1/s;->p(Z)V

    .line 638
    .line 639
    .line 640
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 641
    .line 642
    move-object/from16 v1, p0

    .line 643
    .line 644
    move-object/from16 v2, p2

    .line 645
    .line 646
    move/from16 v6, p5

    .line 647
    .line 648
    move v7, v15

    .line 649
    move/from16 v4, v19

    .line 650
    .line 651
    move/from16 v5, v20

    .line 652
    .line 653
    const/16 v27, 0x1

    .line 654
    .line 655
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Lb3/o0;Lf3/d;IZIILy1/r;)V

    .line 656
    .line 657
    .line 658
    move v15, v4

    .line 659
    invoke-interface {v9, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    move/from16 v16, v5

    .line 664
    .line 665
    const/16 v2, 0x20

    .line 666
    .line 667
    const/4 v4, 0x1

    .line 668
    move-object v5, v0

    .line 669
    move-object v0, v10

    .line 670
    goto/16 :goto_1d

    .line 671
    .line 672
    :cond_2b
    move-object/from16 v1, p0

    .line 673
    .line 674
    move v7, v15

    .line 675
    move/from16 v15, v19

    .line 676
    .line 677
    move/from16 v5, v20

    .line 678
    .line 679
    const/16 v27, 0x1

    .line 680
    .line 681
    const v2, 0x154b1c71

    .line 682
    .line 683
    .line 684
    invoke-virtual {v10, v2}, Lf1/s;->W(I)V

    .line 685
    .line 686
    .line 687
    new-instance v11, Lb3/g;

    .line 688
    .line 689
    invoke-direct {v11, v1}, Lb3/g;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    sget-object v2, Lr2/i1;->k:Lf1/w2;

    .line 693
    .line 694
    invoke-virtual {v10, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    check-cast v2, Lf3/d;

    .line 699
    .line 700
    const/4 v14, 0x0

    .line 701
    if-nez v18, :cond_2c

    .line 702
    .line 703
    new-instance v10, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 704
    .line 705
    move-object/from16 v12, p2

    .line 706
    .line 707
    move/from16 v17, p5

    .line 708
    .line 709
    move-object/from16 v0, p7

    .line 710
    .line 711
    move-object v13, v2

    .line 712
    move/from16 v16, v5

    .line 713
    .line 714
    move/from16 v18, v7

    .line 715
    .line 716
    move-object/from16 v19, v8

    .line 717
    .line 718
    const/16 v2, 0x20

    .line 719
    .line 720
    const/4 v3, 0x0

    .line 721
    const/4 v4, 0x1

    .line 722
    invoke-direct/range {v10 .. v19}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Lb3/g;Lb3/o0;Lf3/d;Lf9/k;IZIILy1/r;)V

    .line 723
    .line 724
    .line 725
    sget-object v5, Lr1/m;->a:Lr1/m;

    .line 726
    .line 727
    invoke-interface {v9, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 728
    .line 729
    .line 730
    move-result-object v5

    .line 731
    invoke-interface {v5, v10}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    goto :goto_1c

    .line 736
    :cond_2c
    move-object v13, v2

    .line 737
    move/from16 v16, v5

    .line 738
    .line 739
    move-object v0, v10

    .line 740
    const/16 v2, 0x20

    .line 741
    .line 742
    const/4 v3, 0x0

    .line 743
    const/4 v4, 0x1

    .line 744
    new-instance v10, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;

    .line 745
    .line 746
    move-object/from16 v12, p2

    .line 747
    .line 748
    move/from16 v17, p5

    .line 749
    .line 750
    move-object/from16 v20, v8

    .line 751
    .line 752
    move-object/from16 v19, v18

    .line 753
    .line 754
    move/from16 v18, v7

    .line 755
    .line 756
    invoke-direct/range {v10 .. v20}, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;-><init>(Lb3/g;Lb3/o0;Lf3/d;Lf9/k;IZIILv0/h;Ly1/r;)V

    .line 757
    .line 758
    .line 759
    move-object/from16 v5, v19

    .line 760
    .line 761
    iget-object v5, v5, Lv0/h;->f:Lr1/p;

    .line 762
    .line 763
    invoke-interface {v9, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 764
    .line 765
    .line 766
    move-result-object v5

    .line 767
    invoke-interface {v5, v10}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    :goto_1c
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    .line 772
    .line 773
    .line 774
    :goto_1d
    iget-wide v10, v0, Lf1/s;->T:J

    .line 775
    .line 776
    ushr-long v2, v10, v2

    .line 777
    .line 778
    xor-long/2addr v2, v10

    .line 779
    long-to-int v3, v2

    .line 780
    invoke-static {v0, v5}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 781
    .line 782
    .line 783
    move-result-object v2

    .line 784
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 789
    .line 790
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 794
    .line 795
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 796
    .line 797
    .line 798
    iget-boolean v8, v0, Lf1/s;->S:Z

    .line 799
    .line 800
    if-eqz v8, :cond_2d

    .line 801
    .line 802
    invoke-virtual {v0, v6}, Lf1/s;->k(Lf9/a;)V

    .line 803
    .line 804
    .line 805
    goto :goto_1e

    .line 806
    :cond_2d
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 807
    .line 808
    .line 809
    :goto_1e
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 810
    .line 811
    sget-object v8, Ll0/g0;->a:Ll0/g0;

    .line 812
    .line 813
    invoke-static {v0, v6, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 817
    .line 818
    invoke-static {v0, v6, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    sget-object v5, Lq2/i;->c:Lq2/h;

    .line 822
    .line 823
    invoke-static {v0, v5, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 824
    .line 825
    .line 826
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 827
    .line 828
    iget-boolean v5, v0, Lf1/s;->S:Z

    .line 829
    .line 830
    if-nez v5, :cond_2e

    .line 831
    .line 832
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v5

    .line 836
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object v6

    .line 840
    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v5

    .line 844
    if-nez v5, :cond_2f

    .line 845
    .line 846
    :cond_2e
    invoke-static {v3, v0, v3, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 847
    .line 848
    .line 849
    :cond_2f
    invoke-virtual {v0, v4}, Lf1/s;->p(Z)V

    .line 850
    .line 851
    .line 852
    move v4, v15

    .line 853
    move/from16 v5, v16

    .line 854
    .line 855
    goto :goto_1f

    .line 856
    :cond_30
    move-object v0, v10

    .line 857
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 858
    .line 859
    .line 860
    move/from16 v7, p6

    .line 861
    .line 862
    move v4, v5

    .line 863
    move/from16 v5, p4

    .line 864
    .line 865
    :goto_1f
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 866
    .line 867
    .line 868
    move-result-object v10

    .line 869
    if-eqz v10, :cond_31

    .line 870
    .line 871
    new-instance v0, Ll0/l;

    .line 872
    .line 873
    move-object/from16 v3, p2

    .line 874
    .line 875
    move/from16 v6, p5

    .line 876
    .line 877
    move/from16 v8, p8

    .line 878
    .line 879
    move-object v2, v9

    .line 880
    move/from16 v9, p9

    .line 881
    .line 882
    invoke-direct/range {v0 .. v9}, Ll0/l;-><init>(Ljava/lang/String;Lr1/p;Lb3/o0;IZIIII)V

    .line 883
    .line 884
    .line 885
    iput-object v0, v10, Lf1/w1;->d:Lf9/n;

    .line 886
    .line 887
    :cond_31
    return-void
.end method

.method public static final b(Ljava/lang/String;Lr1/p;Lb3/o0;IZIILf1/s;I)V
    .locals 11

    .line 1
    move-object/from16 v7, p7

    .line 2
    .line 3
    move/from16 v10, p8

    .line 4
    .line 5
    const v0, -0x46bd8e2e

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, v10, 0x6

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v7, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

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
    or-int/2addr v0, v10

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, v10

    .line 27
    :goto_1
    and-int/lit8 v1, v10, 0x30

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v7, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    :cond_3
    and-int/lit16 v1, v10, 0x180

    .line 44
    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {v7, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const/16 v1, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v1, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, v1

    .line 59
    :cond_5
    and-int/lit16 v1, v10, 0xc00

    .line 60
    .line 61
    if-nez v1, :cond_7

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    const/16 v1, 0x800

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    const/16 v1, 0x400

    .line 74
    .line 75
    :goto_4
    or-int/2addr v0, v1

    .line 76
    :cond_7
    and-int/lit16 v1, v10, 0x6000

    .line 77
    .line 78
    if-nez v1, :cond_9

    .line 79
    .line 80
    invoke-virtual {v7, p3}, Lf1/s;->d(I)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_8

    .line 85
    .line 86
    const/16 v1, 0x4000

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_8
    const/16 v1, 0x2000

    .line 90
    .line 91
    :goto_5
    or-int/2addr v0, v1

    .line 92
    :cond_9
    const/high16 v1, 0x30000

    .line 93
    .line 94
    and-int/2addr v1, v10

    .line 95
    if-nez v1, :cond_b

    .line 96
    .line 97
    invoke-virtual {v7, p4}, Lf1/s;->g(Z)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    const/high16 v1, 0x20000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_a
    const/high16 v1, 0x10000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v0, v1

    .line 109
    :cond_b
    const/high16 v1, 0x180000

    .line 110
    .line 111
    and-int/2addr v1, v10

    .line 112
    move/from16 v5, p5

    .line 113
    .line 114
    if-nez v1, :cond_d

    .line 115
    .line 116
    invoke-virtual {v7, v5}, Lf1/s;->d(I)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_c

    .line 121
    .line 122
    const/high16 v1, 0x100000

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_c
    const/high16 v1, 0x80000

    .line 126
    .line 127
    :goto_7
    or-int/2addr v0, v1

    .line 128
    :cond_d
    const/high16 v1, 0xc00000

    .line 129
    .line 130
    and-int/2addr v1, v10

    .line 131
    move/from16 v6, p6

    .line 132
    .line 133
    if-nez v1, :cond_f

    .line 134
    .line 135
    invoke-virtual {v7, v6}, Lf1/s;->d(I)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_e

    .line 140
    .line 141
    const/high16 v1, 0x800000

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_e
    const/high16 v1, 0x400000

    .line 145
    .line 146
    :goto_8
    or-int/2addr v0, v1

    .line 147
    :cond_f
    const/high16 v1, 0x6000000

    .line 148
    .line 149
    or-int/2addr v0, v1

    .line 150
    const v1, 0x2492493

    .line 151
    .line 152
    .line 153
    and-int/2addr v1, v0

    .line 154
    const v2, 0x2492492

    .line 155
    .line 156
    .line 157
    if-eq v1, v2, :cond_10

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    goto :goto_9

    .line 161
    :cond_10
    const/4 v1, 0x0

    .line 162
    :goto_9
    and-int/lit8 v2, v0, 0x1

    .line 163
    .line 164
    invoke-virtual {v7, v2, v1}, Lf1/s;->N(IZ)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_11

    .line 169
    .line 170
    const v1, 0xffffffe

    .line 171
    .line 172
    .line 173
    and-int v8, v0, v1

    .line 174
    .line 175
    const/16 v9, 0x200

    .line 176
    .line 177
    move-object v0, p0

    .line 178
    move-object v1, p1

    .line 179
    move-object v2, p2

    .line 180
    move v3, p3

    .line 181
    move v4, p4

    .line 182
    invoke-static/range {v0 .. v9}, Ll0/p0;->a(Ljava/lang/String;Lr1/p;Lb3/o0;IZIILf1/s;II)V

    .line 183
    .line 184
    .line 185
    goto :goto_a

    .line 186
    :cond_11
    invoke-virtual/range {p7 .. p7}, Lf1/s;->Q()V

    .line 187
    .line 188
    .line 189
    :goto_a
    invoke-virtual/range {p7 .. p7}, Lf1/s;->r()Lf1/w1;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    if-eqz v9, :cond_12

    .line 194
    .line 195
    new-instance v0, Ll0/k;

    .line 196
    .line 197
    move-object v1, p0

    .line 198
    move-object v2, p1

    .line 199
    move-object v3, p2

    .line 200
    move v4, p3

    .line 201
    move v5, p4

    .line 202
    move/from16 v6, p5

    .line 203
    .line 204
    move/from16 v7, p6

    .line 205
    .line 206
    move v8, v10

    .line 207
    invoke-direct/range {v0 .. v8}, Ll0/k;-><init>(Ljava/lang/String;Lr1/p;Lb3/o0;IZIII)V

    .line 208
    .line 209
    .line 210
    iput-object v0, v9, Lf1/w1;->d:Lf9/n;

    .line 211
    .line 212
    :cond_12
    return-void
.end method

.method public static final c(Lw0/w0;Ln1/c;Lf1/s;I)V
    .locals 7

    .line 1
    const v0, -0x38eb05b1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    and-int/lit8 v1, v0, 0x13

    .line 18
    .line 19
    const/16 v2, 0x12

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_1
    and-int/2addr v0, v3

    .line 29
    invoke-virtual {p2, v0, v1}, Lf1/s;->N(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const v0, 0x6237de0b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lw0/v0;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v0, p0, v2, v1}, Lw0/v0;-><init>(Lw0/w0;Lw8/c;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->b(Lf9/k;)Lr1/p;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lw0/w0;->g:Lkb/a;

    .line 53
    .line 54
    new-instance v3, Lw0/v0;

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-direct {v3, p0, v2, v5}, Lw0/v0;-><init>(Lw0/w0;Lw8/c;I)V

    .line 58
    .line 59
    .line 60
    new-instance v5, Lw0/e0;

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    invoke-direct {v5, p0, v6}, Lw0/e0;-><init>(Lw0/w0;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1, v3, v2, v5}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->c(Lr1/p;Lkb/a;Lf9/k;Lw0/j1;Lf9/k;)Lr1/p;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/16 v1, 0x30

    .line 71
    .line 72
    invoke-static {v0, p1, p2, v1}, Lp9/p1;->c(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v4}, Lf1/s;->p(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    new-instance v0, La8/w;

    .line 89
    .line 90
    const/16 v1, 0xa

    .line 91
    .line 92
    invoke-direct {v0, p3, v1, p0, p1}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public static final d(Lw0/r1;Ln1/c;Lf1/s;I)V
    .locals 8

    .line 1
    const v0, 0x7c0599e6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p3

    .line 23
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 40
    .line 41
    const/16 v2, 0x12

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eq v1, v2, :cond_4

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    const/4 v1, 0x0

    .line 49
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p2, v2, v1}, Lf1/s;->N(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    const v1, -0x702c2f6c

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lw0/r1;->j()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    new-instance v1, Lw0/i1;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-direct {v1, p0, v4, v2}, Lw0/i1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->b(Lf9/k;)Lr1/p;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, p0, Lw0/r1;->x:Lkb/a;

    .line 84
    .line 85
    new-instance v5, Lw0/i1;

    .line 86
    .line 87
    const/4 v6, 0x1

    .line 88
    invoke-direct {v5, p0, v4, v6}, Lw0/i1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 89
    .line 90
    .line 91
    new-instance v6, Lw0/j1;

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    invoke-direct {v6, p0, v4, v7}, Lw0/j1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 95
    .line 96
    .line 97
    new-instance v4, Ll0/w;

    .line 98
    .line 99
    const/4 v7, 0x2

    .line 100
    invoke-direct {v4, p0, v7}, Ll0/w;-><init>(Lw0/r1;I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v2, v5, v6, v4}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->c(Lr1/p;Lkb/a;Lf9/k;Lw0/j1;Lf9/k;)Lr1/p;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_4
    and-int/lit8 v0, v0, 0x70

    .line 108
    .line 109
    invoke-static {v1, p1, p2, v0}, Lp9/p1;->c(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v3}, Lf1/s;->p(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 117
    .line 118
    .line 119
    :goto_5
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-eqz p2, :cond_7

    .line 124
    .line 125
    new-instance v0, La8/g;

    .line 126
    .line 127
    const/4 v1, 0x6

    .line 128
    invoke-direct {v0, p3, v1, p0, p1}, La8/g;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 132
    .line 133
    :cond_7
    return-void
.end method

.method public static final e(Lg3/w;Lf9/k;Lr1/p;Lb3/o0;Lb3/i0;Lf9/k;Lb0/k;Ly1/n0;ZIILg3/k;Ll0/q0;ZLn1/c;Lf1/s;II)V
    .locals 64

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move/from16 v15, p8

    move/from16 v2, p9

    move-object/from16 v5, p11

    move-object/from16 v4, p12

    move/from16 v6, p13

    move-object/from16 v7, p15

    move/from16 v8, p16

    move/from16 v9, p17

    .line 1
    iget-wide v12, v3, Lg3/w;->b:J

    move-wide/from16 v16, v12

    iget-object v12, v3, Lg3/w;->c:Lb3/n0;

    iget-object v13, v3, Lg3/w;->a:Lb3/g;

    move-object/from16 v18, v12

    const v12, 0x1d9f981

    invoke-virtual {v7, v12}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v12, v8, 0x6

    const/16 v19, 0x2

    move/from16 v20, v12

    if-nez v20, :cond_1

    invoke-virtual {v7, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x4

    goto :goto_0

    :cond_0
    const/16 v20, 0x2

    :goto_0
    or-int v20, v8, v20

    goto :goto_1

    :cond_1
    move/from16 v20, v8

    :goto_1
    and-int/lit8 v21, v8, 0x30

    const/16 v22, 0x10

    if-nez v21, :cond_3

    invoke-virtual {v7, v10}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x20

    goto :goto_2

    :cond_2
    const/16 v21, 0x10

    :goto_2
    or-int v20, v20, v21

    :cond_3
    const/16 v21, 0x20

    and-int/lit16 v12, v8, 0x180

    const/16 v24, 0x80

    const/16 v25, 0x100

    if-nez v12, :cond_5

    invoke-virtual {v7, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x100

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int v20, v20, v12

    :cond_5
    and-int/lit16 v12, v8, 0xc00

    const/16 v26, 0x400

    if-nez v12, :cond_7

    invoke-virtual {v7, v14}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_4

    :cond_6
    const/16 v12, 0x400

    :goto_4
    or-int v20, v20, v12

    :cond_7
    and-int/lit16 v12, v8, 0x6000

    const/16 v27, 0x2000

    if-nez v12, :cond_9

    invoke-virtual {v7, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    const/16 v12, 0x2000

    :goto_5
    or-int v20, v20, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int v29, v8, v12

    const/high16 v30, 0x20000

    const/high16 v31, 0x10000

    move-object/from16 v11, p5

    if-nez v29, :cond_b

    invoke-virtual {v7, v11}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    const/high16 v32, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v32, 0x10000

    :goto_6
    or-int v20, v20, v32

    :cond_b
    const/high16 v32, 0x180000

    and-int v33, v8, v32

    if-nez v33, :cond_d

    invoke-virtual {v7, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    const/high16 v33, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v33, 0x80000

    :goto_7
    or-int v20, v20, v33

    :cond_d
    const/high16 v33, 0xc00000

    and-int v33, v8, v33

    move-object/from16 v11, p7

    if-nez v33, :cond_f

    invoke-virtual {v7, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    const/high16 v33, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v33, 0x400000

    :goto_8
    or-int v20, v20, v33

    :cond_f
    const/high16 v33, 0x6000000

    and-int v33, v8, v33

    if-nez v33, :cond_11

    invoke-virtual {v7, v15}, Lf1/s;->g(Z)Z

    move-result v33

    if-eqz v33, :cond_10

    const/high16 v33, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v33, 0x2000000

    :goto_9
    or-int v20, v20, v33

    :cond_11
    const/high16 v33, 0x30000000

    and-int v33, v8, v33

    if-nez v33, :cond_13

    invoke-virtual {v7, v2}, Lf1/s;->d(I)Z

    move-result v33

    if-eqz v33, :cond_12

    const/high16 v33, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v33, 0x10000000

    :goto_a
    or-int v20, v20, v33

    :cond_13
    and-int/lit8 v33, v9, 0x6

    move/from16 v11, p10

    if-nez v33, :cond_15

    invoke-virtual {v7, v11}, Lf1/s;->d(I)Z

    move-result v33

    if-eqz v33, :cond_14

    const/16 v19, 0x4

    :cond_14
    or-int v19, v9, v19

    goto :goto_b

    :cond_15
    move/from16 v19, v9

    :goto_b
    and-int/lit8 v33, v9, 0x30

    if-nez v33, :cond_17

    invoke-virtual {v7, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v22, 0x20

    :cond_16
    or-int v19, v19, v22

    :cond_17
    const/high16 v22, 0x30000

    and-int/lit16 v12, v9, 0x180

    if-nez v12, :cond_19

    invoke-virtual {v7, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const/16 v24, 0x100

    :cond_18
    or-int v19, v19, v24

    :cond_19
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_1b

    invoke-virtual {v7, v6}, Lf1/s;->g(Z)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v26, 0x800

    :cond_1a
    or-int v19, v19, v26

    :cond_1b
    and-int/lit16 v12, v9, 0x6000

    const/4 v11, 0x0

    if-nez v12, :cond_1d

    invoke-virtual {v7, v11}, Lf1/s;->g(Z)Z

    move-result v12

    if-eqz v12, :cond_1c

    const/16 v27, 0x4000

    :cond_1c
    or-int v19, v19, v27

    :cond_1d
    and-int v12, v9, v22

    if-nez v12, :cond_1f

    move-object/from16 v12, p14

    invoke-virtual {v7, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    goto :goto_c

    :cond_1e
    const/high16 v30, 0x10000

    :goto_c
    or-int v19, v19, v30

    :goto_d
    const/16 v22, 0x0

    goto :goto_e

    :cond_1f
    move-object/from16 v12, p14

    goto :goto_d

    :goto_e
    or-int v11, v19, v32

    const v19, 0x12492493

    and-int v1, v20, v19

    const v6, 0x12492492

    if-ne v1, v6, :cond_21

    const v1, 0x92493

    and-int/2addr v1, v11

    const v6, 0x92492

    if-eq v1, v6, :cond_20

    goto :goto_f

    :cond_20
    const/4 v1, 0x0

    goto :goto_10

    :cond_21
    :goto_f
    const/4 v1, 0x1

    :goto_10
    and-int/lit8 v6, v20, 0x1

    invoke-virtual {v7, v6, v1}, Lf1/s;->N(IZ)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {v7}, Lf1/s;->S()V

    and-int/lit8 v1, p16, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {v7}, Lf1/s;->x()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_11

    .line 2
    :cond_22
    invoke-virtual {v7}, Lf1/s;->Q()V

    :cond_23
    :goto_11
    invoke-virtual {v7}, Lf1/s;->q()V

    .line 3
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v6, Lf1/n;->a:Lf1/w0;

    if-ne v1, v6, :cond_24

    .line 5
    new-instance v1, Lw1/o;

    invoke-direct {v1}, Lw1/o;-><init>()V

    .line 6
    invoke-virtual {v7, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 7
    :cond_24
    check-cast v1, Lw1/o;

    .line 8
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_25

    .line 9
    sget-object v8, Lu0/n;->a:Lu0/m;

    .line 10
    new-instance v8, Lu0/b;

    .line 11
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {v7, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 13
    :cond_25
    check-cast v8, Lu0/b;

    .line 14
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_26

    .line 15
    new-instance v9, Lg3/x;

    invoke-direct {v9, v8}, Lg3/x;-><init>(Lg3/r;)V

    .line 16
    invoke-virtual {v7, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 17
    :cond_26
    check-cast v9, Lg3/x;

    move-object/from16 v24, v8

    .line 18
    sget-object v8, Lr2/i1;->h:Lf1/w2;

    .line 19
    invoke-virtual {v7, v8}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v8

    .line 20
    check-cast v8, Ln3/c;

    move-object/from16 v25, v8

    .line 21
    sget-object v8, Lr2/i1;->k:Lf1/w2;

    .line 22
    invoke-virtual {v7, v8}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v8

    .line 23
    check-cast v8, Lf3/d;

    move-object/from16 v26, v8

    .line 24
    sget-object v8, Lw0/x1;->a:Lf1/c0;

    .line 25
    invoke-virtual {v7, v8}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw0/w1;

    move-object/from16 v27, v9

    .line 26
    iget-wide v8, v8, Lw0/w1;->b:J

    .line 27
    sget-object v12, Lr2/i1;->i:Lf1/w2;

    .line 28
    invoke-virtual {v7, v12}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v12

    .line 29
    check-cast v12, Lw1/i;

    move-object/from16 v30, v12

    .line 30
    sget-object v12, Lr2/i1;->t:Lf1/w2;

    .line 31
    invoke-virtual {v7, v12}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v12

    .line 32
    check-cast v12, Lr2/t2;

    move-object/from16 v31, v12

    .line 33
    sget-object v12, Lr2/i1;->p:Lf1/w2;

    .line 34
    invoke-virtual {v7, v12}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v12

    .line 35
    check-cast v12, Lr2/m2;

    .line 36
    sget-object v14, Lz/w0;->a:Lz/w0;

    const/4 v15, 0x1

    if-ne v2, v15, :cond_27

    if-nez p8, :cond_27

    .line 37
    iget-boolean v15, v5, Lg3/k;->a:Z

    if-eqz v15, :cond_27

    .line 38
    sget-object v15, Lz/w0;->b:Lz/w0;

    goto :goto_12

    :cond_27
    move-object v15, v14

    :goto_12
    const v2, -0xcbd7952

    .line 39
    invoke-virtual {v7, v2}, Lf1/s;->W(I)V

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v15, v5, v22

    .line 40
    sget-object v2, Ll0/o1;->g:Lu0/j;

    move/from16 v32, v11

    .line 41
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v7, v11}, Lf1/s;->d(I)Z

    move-result v11

    move/from16 v33, v11

    .line 42
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v11

    if-nez v33, :cond_29

    if-ne v11, v6, :cond_28

    goto :goto_13

    :cond_28
    move-object/from16 v33, v1

    goto :goto_14

    .line 43
    :cond_29
    :goto_13
    new-instance v11, La5/e;

    move-object/from16 v33, v1

    const/16 v1, 0xb

    invoke-direct {v11, v1, v15}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {v7, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 45
    :goto_14
    check-cast v11, Lf9/a;

    const/4 v1, 0x0

    invoke-static {v5, v2, v11, v7, v1}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ll0/o1;

    .line 46
    invoke-virtual {v7, v1}, Lf1/s;->p(Z)V

    .line 47
    iget-object v1, v11, Ll0/o1;->f:Lf1/k1;

    .line 48
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/w0;

    if-eq v1, v15, :cond_2b

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-ne v15, v14, :cond_2a

    .line 50
    const-string v1, "only single-line, non-wrap text fields can scroll horizontally"

    goto :goto_15

    .line 51
    :cond_2a
    const-string v1, "single-line, non-wrap text fields can only scroll horizontally"

    .line 52
    :goto_15
    const-string v2, "Mismatching scroller orientation; "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    and-int/lit8 v1, v20, 0xe

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    const/4 v5, 0x1

    goto :goto_16

    :cond_2c
    const/4 v5, 0x0

    :goto_16
    const v23, 0xe000

    and-int v14, v20, v23

    const/16 v15, 0x4000

    if-ne v14, v15, :cond_2d

    const/4 v14, 0x1

    goto :goto_17

    :cond_2d
    const/4 v14, 0x0

    :goto_17
    or-int/2addr v5, v14

    .line 54
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_2f

    if-ne v14, v6, :cond_2e

    goto :goto_18

    :cond_2e
    move-object/from16 v34, v13

    move-object/from16 v20, v18

    goto/16 :goto_1a

    .line 55
    :cond_2f
    :goto_18
    invoke-static {v0, v13}, Ll0/p0;->n(Lb3/i0;Lb3/g;)Lg3/d0;

    move-result-object v5

    if-eqz v18, :cond_30

    move-object/from16 v14, v18

    .line 56
    iget-wide v2, v14, Lb3/n0;->a:J

    .line 57
    iget-object v15, v5, Lg3/d0;->b:Lg3/q;

    .line 58
    sget v20, Lb3/n0;->c:I

    move-wide/from16 v34, v2

    shr-long v2, v34, v21

    long-to-int v3, v2

    invoke-interface {v15, v3}, Lg3/q;->b(I)I

    move-result v2

    const-wide v36, 0xffffffffL

    move-object v3, v13

    move-object/from16 v20, v14

    and-long v13, v34, v36

    long-to-int v14, v13

    .line 59
    invoke-interface {v15, v14}, Lg3/q;->b(I)I

    move-result v13

    .line 60
    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 61
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 62
    new-instance v13, Lb3/d;

    .line 63
    iget-object v5, v5, Lg3/d0;->a:Lb3/g;

    .line 64
    invoke-direct {v13, v5}, Lb3/d;-><init>(Lb3/g;)V

    .line 65
    new-instance v34, Lb3/e0;

    const/16 v52, 0x0

    const v53, 0xefff

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    sget-object v51, Lm3/l;->c:Lm3/l;

    invoke-direct/range {v34 .. v53}, Lb3/e0;-><init>(JJLf3/k;Lf3/i;Lf3/j;Lf3/n;Ljava/lang/String;JLm3/a;Lm3/p;Li3/b;JLm3/l;Ly1/k0;I)V

    move-object/from16 v5, v34

    .line 66
    new-instance v0, Lb3/c;

    move-object/from16 v34, v3

    .line 67
    const-string v3, ""

    .line 68
    invoke-direct {v0, v5, v14, v2, v3}, Lb3/c;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 69
    iget-object v2, v13, Lb3/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v13}, Lb3/d;->c()Lb3/g;

    move-result-object v0

    .line 71
    new-instance v2, Lg3/d0;

    invoke-direct {v2, v0, v15}, Lg3/d0;-><init>(Lb3/g;Lg3/q;)V

    move-object v14, v2

    goto :goto_19

    :cond_30
    move-object/from16 v34, v13

    move-object/from16 v20, v18

    move-object v14, v5

    .line 72
    :goto_19
    invoke-virtual {v7, v14}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 73
    :goto_1a
    move-object v0, v14

    check-cast v0, Lg3/d0;

    .line 74
    iget-object v13, v0, Lg3/d0;->a:Lb3/g;

    .line 75
    iget-object v5, v0, Lg3/d0;->b:Lg3/q;

    .line 76
    invoke-virtual {v7}, Lf1/s;->w()Lf1/w1;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 77
    iget v3, v2, Lf1/w1;->b:I

    const/16 v19, 0x1

    or-int/lit8 v3, v3, 0x1

    .line 78
    iput v3, v2, Lf1/w1;->b:I

    .line 79
    invoke-virtual {v7, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    .line 80
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v14

    if-nez v3, :cond_32

    if-ne v14, v6, :cond_31

    goto :goto_1b

    :cond_31
    move-object/from16 v3, v30

    move-object/from16 v30, v6

    move-object v6, v3

    move/from16 v15, p8

    move-object/from16 v21, v0

    move-object v3, v14

    move-object/from16 v36, v20

    move-object/from16 v12, v25

    move-object/from16 v54, v31

    move-object/from16 v14, p3

    move/from16 v20, v1

    move-object/from16 v25, v11

    move-object v1, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v5

    move-object/from16 v5, v34

    move-wide/from16 v34, v16

    goto :goto_1c

    .line 81
    :cond_32
    :goto_1b
    new-instance v3, Ll0/s0;

    move-object v14, v12

    .line 82
    new-instance v12, Ll0/y0;

    const/4 v15, 0x4

    const/16 v18, 0x0

    move-object/from16 v15, v26

    move-object/from16 v26, v5

    move-object/from16 v5, v34

    move-wide/from16 v34, v16

    move-object/from16 v17, v15

    move-object/from16 v15, v30

    move-object/from16 v30, v6

    move-object v6, v15

    move/from16 v15, p8

    move-object/from16 v21, v0

    move-object v0, v14

    move-object/from16 v16, v25

    move-object/from16 v54, v31

    move-object/from16 v14, p3

    move-object/from16 v25, v11

    move-object/from16 v11, v20

    move/from16 v20, v1

    const/4 v1, 0x4

    .line 83
    invoke-direct/range {v12 .. v18}, Ll0/y0;-><init>(Lb3/g;Lb3/o0;ZLn3/c;Lf3/d;I)V

    move-object/from16 v36, v11

    move-object v11, v12

    move-object v1, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    .line 84
    invoke-direct {v3, v11, v2, v0}, Ll0/s0;-><init>(Ll0/y0;Lf1/w1;Lr2/m2;)V

    .line 85
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 86
    :goto_1c
    move-object v2, v3

    check-cast v2, Ll0/s0;

    .line 87
    iput-object v10, v2, Ll0/s0;->u:Lf9/k;

    .line 88
    iput-wide v8, v2, Ll0/s0;->z:J

    .line 89
    iget-object v0, v2, Ll0/s0;->r:La2/b;

    .line 90
    iput-object v4, v0, La2/b;->c:Ljava/lang/Object;

    .line 91
    iput-object v6, v0, La2/b;->d:Ljava/lang/Object;

    .line 92
    iput-object v5, v2, Ll0/s0;->j:Lb3/g;

    .line 93
    iget-object v0, v2, Ll0/s0;->a:Ll0/y0;

    .line 94
    iget-object v3, v0, Ll0/y0;->a:Lb3/g;

    .line 95
    invoke-static {v3, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 96
    iget-object v3, v0, Ll0/y0;->b:Lb3/o0;

    .line 97
    invoke-static {v3, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 98
    iget-boolean v3, v0, Ll0/y0;->e:Z

    if-ne v3, v15, :cond_33

    .line 99
    iget v3, v0, Ll0/y0;->f:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_33

    .line 100
    iget v3, v0, Ll0/y0;->c:I

    const v9, 0x7fffffff

    if-ne v3, v9, :cond_33

    .line 101
    iget v3, v0, Ll0/y0;->d:I

    if-ne v3, v8, :cond_33

    .line 102
    iget-object v3, v0, Ll0/y0;->g:Ln3/c;

    .line 103
    invoke-static {v3, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 104
    iget-object v3, v0, Ll0/y0;->i:Ljava/util/List;

    .line 105
    sget-object v8, Ls8/w;->a:Ls8/w;

    invoke-static {v3, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 106
    iget-object v3, v0, Ll0/y0;->h:Lf3/d;

    if-eq v3, v13, :cond_34

    :cond_33
    move-object/from16 v16, v12

    goto :goto_1d

    :cond_34
    move-object/from16 v16, v12

    goto :goto_1e

    .line 107
    :goto_1d
    new-instance v12, Ll0/y0;

    const/16 v18, 0x0

    move-object/from16 v17, v13

    move-object v13, v1

    invoke-direct/range {v12 .. v18}, Ll0/y0;-><init>(Lb3/g;Lb3/o0;ZLn3/c;Lf3/d;I)V

    move-object v0, v12

    .line 108
    :goto_1e
    iget-object v1, v2, Ll0/s0;->a:Ll0/y0;

    const/4 v15, 0x1

    if-eq v1, v0, :cond_35

    iput-boolean v15, v2, Ll0/s0;->p:Z

    .line 109
    :cond_35
    iput-object v0, v2, Ll0/s0;->a:Ll0/y0;

    .line 110
    iget-object v0, v2, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 111
    iget-object v1, v2, Ll0/s0;->e:Lg3/c0;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    iget-object v3, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    check-cast v3, Lg3/h;

    invoke-virtual {v3}, Lg3/h;->c()Lb3/n0;

    move-result-object v3

    move-object/from16 v11, v36

    invoke-static {v11, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 114
    iget-object v8, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    check-cast v8, Lg3/w;

    .line 115
    iget-object v8, v8, Lg3/w;->a:Lb3/g;

    .line 116
    iget-object v8, v8, Lb3/g;->b:Ljava/lang/String;

    iget-object v9, v5, Lb3/g;->b:Ljava/lang/String;

    .line 117
    invoke-static {v8, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 118
    new-instance v8, Lg3/h;

    move-wide/from16 v12, v34

    invoke-direct {v8, v5, v12, v13}, Lg3/h;-><init>(Lb3/g;J)V

    iput-object v8, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    const/4 v5, 0x1

    :goto_1f
    const/4 v8, 0x0

    goto :goto_20

    :cond_36
    move-wide/from16 v12, v34

    .line 119
    iget-object v5, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    check-cast v5, Lg3/w;

    .line 120
    iget-wide v8, v5, Lg3/w;->b:J

    .line 121
    invoke-static {v8, v9, v12, v13}, Lb3/n0;->b(JJ)Z

    move-result v5

    if-nez v5, :cond_37

    .line 122
    iget-object v5, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    check-cast v5, Lg3/h;

    invoke-static {v12, v13}, Lb3/n0;->f(J)I

    move-result v8

    invoke-static {v12, v13}, Lb3/n0;->e(J)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lg3/h;->f(II)V

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_20

    :cond_37
    const/4 v5, 0x0

    goto :goto_1f

    :goto_20
    const/4 v9, -0x1

    if-nez v11, :cond_38

    .line 123
    iget-object v11, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    check-cast v11, Lg3/h;

    .line 124
    iput v9, v11, Lg3/h;->d:I

    .line 125
    iput v9, v11, Lg3/h;->e:I

    goto :goto_21

    .line 126
    :cond_38
    iget-wide v9, v11, Lb3/n0;->a:J

    .line 127
    invoke-static {v9, v10}, Lb3/n0;->c(J)Z

    move-result v11

    if-nez v11, :cond_39

    .line 128
    iget-object v11, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    check-cast v11, Lg3/h;

    invoke-static {v9, v10}, Lb3/n0;->f(J)I

    move-result v15

    invoke-static {v9, v10}, Lb3/n0;->e(J)I

    move-result v9

    invoke-virtual {v11, v15, v9}, Lg3/h;->e(II)V

    :cond_39
    :goto_21
    const-wide/16 v10, 0x0

    if-nez v5, :cond_3b

    if-nez v8, :cond_3a

    if-nez v3, :cond_3a

    goto :goto_22

    :cond_3a
    move-object/from16 v3, p0

    move-object v5, v3

    goto :goto_23

    .line 129
    :cond_3b
    :goto_22
    iget-object v3, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    check-cast v3, Lg3/h;

    const/4 v5, -0x1

    .line 130
    iput v5, v3, Lg3/h;->d:I

    .line 131
    iput v5, v3, Lg3/h;->e:I

    const/4 v3, 0x0

    const/4 v15, 0x3

    move-object/from16 v5, p0

    .line 132
    invoke-static {v5, v3, v10, v11, v15}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    move-result-object v3

    .line 133
    :goto_23
    iget-object v8, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    check-cast v8, Lg3/w;

    .line 134
    iput-object v3, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 135
    invoke-virtual {v1, v8, v3}, Lg3/c0;->a(Lg3/w;Lg3/w;)V

    .line 136
    :cond_3c
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_3d

    .line 137
    new-instance v0, Ll0/r1;

    .line 138
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {v7, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 140
    :cond_3d
    check-cast v0, Ll0/r1;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 142
    iget-boolean v3, v0, Ll0/r1;->e:Z

    if-nez v3, :cond_3f

    .line 143
    iget-object v3, v0, Ll0/r1;->d:Ljava/lang/Long;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :cond_3e
    const/16 v3, 0x1388

    int-to-long v3, v3

    add-long/2addr v10, v3

    cmp-long v3, v8, v10

    if-lez v3, :cond_40

    .line 144
    :cond_3f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Ll0/r1;->d:Ljava/lang/Long;

    .line 145
    invoke-virtual {v0, v5}, Ll0/r1;->a(Lg3/w;)V

    .line 146
    :cond_40
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_41

    .line 147
    invoke-static {v7}, Lf1/b;->l(Lf1/s;)Lac/w;

    move-result-object v3

    .line 148
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 149
    :cond_41
    move-object v8, v3

    check-cast v8, Lac/w;

    .line 150
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_42

    .line 151
    new-instance v3, Li0/b;

    invoke-direct {v3}, Li0/b;-><init>()V

    .line 152
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 153
    :cond_42
    move-object v9, v3

    check-cast v9, Li0/b;

    .line 154
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_43

    .line 155
    new-instance v3, Lw0/r1;

    invoke-direct {v3, v0}, Lw0/r1;-><init>(Ll0/r1;)V

    .line 156
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 157
    :cond_43
    move-object v4, v3

    check-cast v4, Lw0/r1;

    move-object/from16 v3, v26

    .line 158
    iput-object v3, v4, Lw0/r1;->b:Lg3/q;

    .line 159
    iget-object v10, v2, Ll0/s0;->v:Ll0/s;

    .line 160
    iput-object v10, v4, Lw0/r1;->c:Lf9/k;

    .line 161
    iput-object v2, v4, Lw0/r1;->d:Ll0/s0;

    .line 162
    iget-object v10, v4, Lw0/r1;->e:Lf1/k1;

    invoke-virtual {v10, v5}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 163
    new-instance v10, Lb3/n0;

    invoke-direct {v10, v12, v13}, Lb3/n0;-><init>(J)V

    .line 164
    iput-object v10, v4, Lw0/r1;->v:Lb3/n0;

    .line 165
    sget-object v10, Lr2/i1;->f:Lf1/w2;

    .line 166
    invoke-virtual {v7, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr2/d1;

    .line 167
    iput-object v10, v4, Lw0/r1;->g:Lr2/d1;

    .line 168
    iput-object v8, v4, Lw0/r1;->h:Lac/w;

    .line 169
    sget-object v10, Lr2/i1;->q:Lf1/w2;

    .line 170
    invoke-virtual {v7, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr2/n2;

    .line 171
    sget-object v10, Lr2/i1;->l:Lf1/w2;

    .line 172
    invoke-virtual {v7, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg2/a;

    .line 173
    iput-object v10, v4, Lw0/r1;->j:Lg2/a;

    move-object/from16 v10, v33

    .line 174
    iput-object v10, v4, Lw0/r1;->k:Lw1/o;

    .line 175
    iget-object v11, v4, Lw0/r1;->l:Lf1/k1;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 176
    invoke-virtual {v11, v13}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 177
    iget-object v11, v4, Lw0/r1;->m:Lf1/k1;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 178
    invoke-virtual {v11, v13}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    const v11, 0x753aa269

    .line 179
    invoke-virtual {v7, v11}, Lf1/s;->W(I)V

    .line 180
    iget-object v11, v14, Lb3/o0;->a:Lb3/e0;

    .line 181
    iget-object v11, v11, Lb3/e0;->k:Li3/b;

    .line 182
    sget-object v13, Lw0/x;->a:Lw0/x;

    const/4 v12, 0x6

    invoke-static {v13, v11, v7, v12}, Lw0/v;->b(Lw0/x;Li3/b;Lf1/s;I)Lw0/t;

    move-result-object v11

    .line 183
    iput-object v11, v4, Lw0/r1;->i:Lw0/t;

    const/4 v11, 0x0

    .line 184
    invoke-virtual {v7, v11}, Lf1/s;->p(Z)V

    .line 185
    invoke-virtual {v7, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v11

    move/from16 v13, v32

    and-int/lit16 v15, v13, 0x1c00

    const/16 v12, 0x800

    if-ne v15, v12, :cond_44

    const/4 v12, 0x1

    goto :goto_24

    :cond_44
    const/4 v12, 0x0

    :goto_24
    or-int/2addr v11, v12

    and-int v12, v13, v23

    move-object/from16 v23, v0

    const/16 v0, 0x4000

    if-ne v12, v0, :cond_45

    const/4 v0, 0x1

    goto :goto_25

    :cond_45
    const/4 v0, 0x0

    :goto_25
    or-int/2addr v0, v11

    move-object/from16 v11, v27

    invoke-virtual {v7, v11}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    move/from16 v27, v0

    move/from16 v0, v20

    move-object/from16 v20, v2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_46

    const/16 v30, 0x1

    goto :goto_26

    :cond_46
    const/16 v30, 0x0

    :goto_26
    or-int v27, v27, v30

    and-int/lit8 v30, v13, 0x70

    move-object/from16 v33, v10

    xor-int/lit8 v10, v30, 0x30

    move-object/from16 v30, v11

    const/16 v11, 0x20

    move-object/from16 v2, p11

    if-le v10, v11, :cond_48

    invoke-virtual {v7, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_47

    goto :goto_27

    :cond_47
    move/from16 v32, v0

    goto :goto_28

    :cond_48
    :goto_27
    move/from16 v32, v0

    and-int/lit8 v0, v13, 0x30

    if-ne v0, v11, :cond_49

    :goto_28
    const/4 v0, 0x1

    goto :goto_29

    :cond_49
    const/4 v0, 0x0

    :goto_29
    or-int v0, v27, v0

    invoke-virtual {v7, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    invoke-virtual {v7, v8}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    invoke-virtual {v7, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    invoke-virtual {v7, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    .line 186
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_4b

    if-ne v11, v1, :cond_4a

    goto :goto_2a

    :cond_4a
    move v0, v15

    move-object v15, v1

    move-object/from16 v1, v20

    move/from16 v20, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v8

    move-object v8, v0

    move-object/from16 v56, v6

    move-object v14, v7

    move-object v0, v11

    move-object/from16 v55, v24

    move/from16 v57, v32

    move-object/from16 v11, p6

    move-object v6, v3

    move-object/from16 v24, v9

    move/from16 v32, v13

    move-object/from16 v3, v30

    move-object/from16 v13, v33

    move/from16 v9, p13

    goto :goto_2b

    .line 187
    :cond_4b
    :goto_2a
    new-instance v0, Ll0/r;

    move v11, v15

    move-object v15, v1

    move-object/from16 v1, v20

    move/from16 v20, v11

    move-object/from16 v11, p6

    move-object/from16 v56, v6

    move-object v14, v7

    move-object/from16 v55, v24

    move/from16 v57, v32

    move-object v6, v3

    move-object v7, v4

    move-object v4, v5

    move/from16 v32, v13

    move-object/from16 v3, v30

    move-object/from16 v13, v33

    move-object v5, v2

    move/from16 v2, p13

    invoke-direct/range {v0 .. v9}, Ll0/r;-><init>(Ll0/s0;ZLg3/x;Lg3/w;Lg3/k;Lg3/q;Lw0/r1;Lac/w;Li0/b;)V

    move-object/from16 v24, v9

    move v9, v2

    move-object v2, v8

    move-object v8, v4

    move-object v4, v7

    .line 188
    invoke-virtual {v14, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 189
    :goto_2b
    check-cast v0, Lf9/k;

    .line 190
    sget-object v7, Lr1/m;->a:Lr1/m;

    move-object/from16 v27, v2

    invoke-static {v7, v13}, Landroidx/compose/ui/focus/a;->a(Lr1/p;Lw1/o;)Lr1/p;

    move-result-object v2

    .line 191
    invoke-static {v2, v0}, Landroidx/compose/ui/focus/a;->b(Lr1/p;Lf9/k;)Lr1/p;

    move-result-object v0

    .line 192
    invoke-static {v0, v9, v11}, Landroidx/compose/foundation/a;->f(Lr1/p;ZLb0/k;)Lr1/p;

    move-result-object v0

    .line 193
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v14}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    move-result-object v2

    .line 194
    invoke-virtual {v14, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v30

    invoke-virtual {v14, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v31

    or-int v30, v30, v31

    invoke-virtual {v14, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v31

    or-int v30, v30, v31

    invoke-virtual {v14, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v31

    or-int v30, v30, v31

    move-object/from16 v31, v0

    const/16 v0, 0x20

    if-le v10, v0, :cond_4d

    invoke-virtual {v14, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4c

    goto :goto_2c

    :cond_4c
    move-object/from16 v33, v1

    goto :goto_2d

    :cond_4d
    :goto_2c
    move-object/from16 v33, v1

    and-int/lit8 v1, v32, 0x30

    if-ne v1, v0, :cond_4e

    :goto_2d
    const/4 v0, 0x1

    goto :goto_2e

    :cond_4e
    const/4 v0, 0x0

    :goto_2e
    or-int v0, v30, v0

    .line 195
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_50

    if-ne v1, v15, :cond_4f

    goto :goto_2f

    :cond_4f
    move-object v0, v1

    move-object/from16 v30, v3

    move-object v9, v6

    move-object/from16 v34, v13

    move-object/from16 v58, v27

    move-object/from16 v59, v31

    move-object/from16 v1, v33

    move-object/from16 v27, v2

    move-object v13, v7

    goto :goto_30

    .line 196
    :cond_50
    :goto_2f
    new-instance v0, Lf1/y1;

    move-object v1, v6

    const/4 v6, 0x0

    move-object/from16 v30, v7

    const/4 v7, 0x1

    move-object v9, v1

    move-object/from16 v34, v13

    move-object/from16 v58, v27

    move-object/from16 v13, v30

    move-object/from16 v59, v31

    move-object/from16 v1, v33

    invoke-direct/range {v0 .. v7}, Lf1/y1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    move-object/from16 v27, v2

    move-object/from16 v30, v3

    .line 197
    invoke-virtual {v14, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 198
    :goto_30
    check-cast v0, Lf9/n;

    sget-object v2, Lr8/z;->a:Lr8/z;

    invoke-static {v14, v0, v2}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v14, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_51

    if-ne v2, v15, :cond_52

    .line 201
    :cond_51
    new-instance v2, Ll0/s;

    const/4 v0, 0x0

    invoke-direct {v2, v1, v0}, Ll0/s;-><init>(Ll0/s0;I)V

    .line 202
    invoke-virtual {v14, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 203
    :cond_52
    check-cast v2, Lf9/k;

    const v0, 0x845fed

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lo7/g;

    const/4 v5, 0x3

    invoke-direct {v3, v5, v2}, Lo7/g;-><init>(ILjava/lang/Object;)V

    invoke-static {v13, v0, v3}, Lk2/i0;->c(Lr1/p;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lr1/p;

    move-result-object v6

    .line 205
    invoke-virtual {v14, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x4000

    if-ne v12, v2, :cond_53

    const/4 v2, 0x1

    goto :goto_31

    :cond_53
    const/4 v2, 0x0

    :goto_31
    or-int/2addr v0, v2

    move/from16 v7, v20

    const/16 v12, 0x800

    if-ne v7, v12, :cond_54

    const/4 v2, 0x1

    goto :goto_32

    :cond_54
    const/4 v2, 0x0

    :goto_32
    or-int/2addr v0, v2

    invoke-virtual {v14, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v14, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 206
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_56

    if-ne v2, v15, :cond_55

    goto :goto_33

    :cond_55
    move-object v5, v9

    move-object/from16 v33, v34

    goto :goto_34

    .line 207
    :cond_56
    :goto_33
    new-instance v0, Ll0/t;

    move/from16 v3, p13

    move-object v5, v9

    move-object/from16 v2, v34

    invoke-direct/range {v0 .. v5}, Ll0/t;-><init>(Ll0/s0;Lw1/o;ZLw0/r1;Lg3/q;)V

    move-object/from16 v33, v2

    .line 208
    invoke-virtual {v14, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    move-object v2, v0

    .line 209
    :goto_34
    check-cast v2, Lf9/k;

    if-eqz p13, :cond_57

    .line 210
    new-instance v0, Ll0/k1;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v11}, Ll0/k1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-static {v6, v0}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    move-result-object v6

    .line 212
    :cond_57
    iget-object v0, v4, Lw0/r1;->z:Lk2/i;

    .line 213
    iget-object v2, v4, Lw0/r1;->y:Lw0/n1;

    .line 214
    new-instance v3, Ll0/e0;

    invoke-direct {v3, v0, v2}, Ll0/e0;-><init>(Lw0/n;Ll0/z0;)V

    .line 215
    new-instance v9, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v12, 0x4

    invoke-direct {v9, v0, v2, v3, v12}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    invoke-interface {v6, v9}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v0

    .line 216
    sget-object v2, Lk2/t;->a:Lk2/s;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;

    .line 218
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-interface {v0, v2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v9

    .line 220
    invoke-virtual {v14, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v2, v57

    if-ne v2, v12, :cond_58

    const/4 v3, 0x1

    goto :goto_35

    :cond_58
    const/4 v3, 0x0

    :goto_35
    or-int/2addr v0, v3

    invoke-virtual {v14, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 221
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_59

    if-ne v3, v15, :cond_5a

    .line 222
    :cond_59
    new-instance v3, Ll0/u;

    const/4 v0, 0x0

    invoke-direct {v3, v1, v8, v5, v0}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 223
    invoke-virtual {v14, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 224
    :cond_5a
    check-cast v3, Lf9/k;

    invoke-static {v13, v3}, Landroidx/compose/ui/draw/a;->a(Lr1/p;Lf9/k;)Lr1/p;

    move-result-object v18

    .line 225
    invoke-virtual {v14, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x800

    if-ne v7, v3, :cond_5b

    const/4 v3, 0x1

    goto :goto_36

    :cond_5b
    const/4 v3, 0x0

    :goto_36
    or-int/2addr v0, v3

    move-object/from16 v3, v54

    invoke-virtual {v14, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v0, v6

    invoke-virtual {v14, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v0, v6

    if-ne v2, v12, :cond_5c

    const/4 v6, 0x1

    goto :goto_37

    :cond_5c
    const/4 v6, 0x0

    :goto_37
    or-int/2addr v0, v6

    invoke-virtual {v14, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 226
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_5e

    if-ne v6, v15, :cond_5d

    goto :goto_38

    :cond_5d
    move/from16 v20, v2

    move-object/from16 v31, v3

    move-object v0, v6

    move-object v6, v5

    goto :goto_39

    .line 227
    :cond_5e
    :goto_38
    new-instance v0, Ll0/v;

    move/from16 v20, v2

    move-object v6, v5

    move-object v5, v8

    move/from16 v2, p13

    invoke-direct/range {v0 .. v6}, Ll0/v;-><init>(Ll0/s0;ZLr2/t2;Lw0/r1;Lg3/w;Lg3/q;)V

    move-object/from16 v31, v3

    .line 228
    invoke-virtual {v14, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 229
    :goto_39
    check-cast v0, Lf9/k;

    invoke-static {v13, v0}, Landroidx/compose/ui/layout/a;->d(Lr1/p;Lf9/k;)Lr1/p;

    move-result-object v28

    .line 230
    new-instance v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;

    move/from16 v2, v20

    move-object/from16 v20, v9

    move v9, v2

    move-object/from16 v2, p0

    move-object/from16 v7, p11

    move-object v3, v1

    move-object v5, v6

    move-object/from16 v1, v21

    move-object/from16 v12, v30

    move-object/from16 v8, v33

    move-object v6, v4

    move/from16 v4, p13

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;-><init>(Lg3/d0;Lg3/w;Ll0/s0;ZLg3/q;Lw0/r1;Lg3/k;Lw1/o;)V

    move-object v1, v3

    move-object v8, v6

    move-object v6, v5

    if-eqz p13, :cond_60

    .line 231
    move-object/from16 v2, v31

    check-cast v2, Lr2/v1;

    .line 232
    iget-object v2, v2, Lr2/v1;->a:Lf1/k1;

    .line 233
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 234
    iget-object v2, v1, Ll0/s0;->A:Lf1/k1;

    .line 235
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/n0;

    .line 236
    iget-wide v2, v2, Lb3/n0;->a:J

    .line 237
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 238
    iget-object v2, v1, Ll0/s0;->B:Lf1/k1;

    .line 239
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/n0;

    .line 240
    iget-wide v2, v2, Lb3/n0;->a:J

    .line 241
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    move-result v2

    if-nez v2, :cond_5f

    goto :goto_3a

    :cond_5f
    const/4 v2, 0x1

    goto :goto_3b

    :cond_60
    :goto_3a
    const/4 v2, 0x0

    :goto_3b
    if-eqz v2, :cond_61

    move-object v2, v0

    .line 242
    new-instance v0, Ll0/a1;

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object v4, v6

    move-object v6, v2

    move-object v2, v1

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v5}, Ll0/a1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v2

    move-object/from16 v21, v6

    move-object v6, v4

    .line 243
    invoke-static {v13, v0}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    move-result-object v0

    move-object/from16 v29, v0

    goto :goto_3c

    :cond_61
    move-object/from16 v21, v0

    move-object/from16 v29, v13

    .line 244
    :goto_3c
    invoke-virtual {v14, v8}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v0

    .line 245
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_63

    if-ne v2, v15, :cond_62

    goto :goto_3d

    :cond_62
    const/4 v0, 0x0

    goto :goto_3e

    .line 246
    :cond_63
    :goto_3d
    new-instance v2, Ll0/w;

    const/4 v0, 0x0

    invoke-direct {v2, v8, v0}, Ll0/w;-><init>(Lw0/r1;I)V

    .line 247
    invoke-virtual {v14, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 248
    :goto_3e
    check-cast v2, Lf9/k;

    invoke-static {v8, v2, v14}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 249
    invoke-virtual {v14, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v14, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x4

    if-ne v9, v3, :cond_64

    const/4 v3, 0x1

    goto :goto_3f

    :cond_64
    const/4 v3, 0x0

    :goto_3f
    or-int/2addr v2, v3

    const/16 v3, 0x20

    if-le v10, v3, :cond_65

    invoke-virtual {v14, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    :cond_65
    and-int/lit8 v4, v32, 0x30

    if-ne v4, v3, :cond_67

    :cond_66
    const/4 v3, 0x1

    goto :goto_40

    :cond_67
    const/4 v3, 0x0

    :goto_40
    or-int/2addr v2, v3

    .line 250
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_68

    if-ne v3, v15, :cond_69

    :cond_68
    const/16 v22, 0x0

    goto :goto_41

    :cond_69
    move-object v10, v7

    const/16 v22, 0x0

    goto :goto_42

    .line 251
    :goto_41
    new-instance v0, La8/h;

    const/4 v5, 0x3

    move-object/from16 v3, p0

    move-object v4, v7

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, La8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v10, v4

    .line 252
    invoke-virtual {v14, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    move-object v3, v0

    .line 253
    :goto_42
    check-cast v3, Lf9/k;

    invoke-static {v10, v3, v14}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    move-object v4, v8

    .line 254
    iget-object v8, v1, Ll0/s0;->v:Ll0/s;

    move/from16 v12, p9

    const/4 v0, 0x1

    if-ne v12, v0, :cond_6a

    const/4 v5, 0x1

    goto :goto_43

    :cond_6a
    const/4 v5, 0x0

    .line 255
    :goto_43
    iget v9, v10, Lg3/k;->e:I

    const/16 v19, 0x1

    .line 256
    new-instance v0, Ll0/f1;

    move-object/from16 v3, p0

    move/from16 v12, p13

    move-object v2, v4

    move-object/from16 v60, v20

    move-object/from16 v61, v21

    move-object/from16 v7, v23

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v9}, Ll0/f1;-><init>(Ll0/s0;Lw0/r1;Lg3/w;ZZLg3/q;Ll0/r1;Lf9/k;I)V

    move-object v4, v2

    .line 257
    new-instance v2, Lr1/k;

    invoke-direct {v2, v0}, Lr1/k;-><init>(Lf9/o;)V

    .line 258
    iget v0, v10, Lg3/k;->d:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6b

    goto :goto_44

    :cond_6b
    const/16 v5, 0x8

    if-ne v0, v5, :cond_6c

    :goto_44
    const/4 v8, 0x0

    goto :goto_45

    :cond_6c
    const/4 v8, 0x1

    .line 259
    :goto_45
    invoke-interface/range {v27 .. v27}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 260
    invoke-virtual {v14, v8}, Lf1/s;->g(Z)Z

    move-result v5

    move-object/from16 v7, v55

    invoke-virtual {v14, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    .line 261
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_6d

    if-ne v9, v15, :cond_6e

    .line 262
    :cond_6d
    new-instance v9, Lj0/a;

    invoke-direct {v9, v8, v7}, Lj0/a;-><init>(ZLu0/b;)V

    .line 263
    invoke-virtual {v14, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 264
    :cond_6e
    check-cast v9, Lf9/a;

    invoke-static {v0, v8, v9}, Landroidx/compose/foundation/text/handwriting/a;->a(ZZLf9/a;)Lr1/p;

    move-result-object v0

    .line 265
    sget-object v5, Ll0/g;->a:Lf1/c0;

    .line 266
    invoke-virtual {v14, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v5

    .line 267
    check-cast v5, Ly1/q;

    .line 268
    iget-wide v8, v5, Ly1/q;->a:J

    .line 269
    invoke-virtual {v14, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v14, v8, v9}, Lf1/s;->e(J)Z

    move-result v17

    or-int v5, v5, v17

    .line 270
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v5, :cond_6f

    if-ne v3, v15, :cond_70

    .line 271
    :cond_6f
    new-instance v3, Ll0/o;

    invoke-direct {v3, v1, v8, v9}, Ll0/o;-><init>(Ll0/s0;J)V

    .line 272
    invoke-virtual {v14, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 273
    :cond_70
    check-cast v3, Lf9/k;

    invoke-static {v13, v3}, Landroidx/compose/ui/draw/a;->a(Lr1/p;Lf9/k;)Lr1/p;

    move-result-object v3

    move-object/from16 v5, p2

    .line 274
    invoke-interface {v5, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v3

    .line 275
    invoke-static {v3, v7, v1, v4}, Landroidx/compose/foundation/text/input/internal/a;->a(Lr1/p;Lu0/b;Ll0/s0;Lw0/r1;)Lr1/p;

    move-result-object v3

    .line 276
    invoke-interface {v3, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v0

    move-object/from16 v3, v59

    .line 277
    invoke-interface {v0, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v0

    .line 278
    new-instance v3, La8/h0;

    move-object/from16 v7, v56

    const/4 v8, 0x7

    invoke-direct {v3, v8, v7, v1}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Landroidx/compose/ui/input/key/a;->b(Lr1/p;Lf9/k;)Lr1/p;

    move-result-object v0

    .line 279
    new-instance v3, La8/h0;

    const/4 v7, 0x6

    invoke-direct {v3, v7, v1, v4}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Landroidx/compose/ui/input/key/a;->b(Lr1/p;Lf9/k;)Lr1/p;

    move-result-object v0

    .line 280
    invoke-interface {v0, v2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v0

    .line 281
    new-instance v2, Ll0/n1;

    move-object/from16 v3, v25

    invoke-direct {v2, v3, v12, v11}, Ll0/n1;-><init>(Ll0/o1;ZLb0/k;)V

    invoke-static {v0, v2}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    move-result-object v0

    move-object/from16 v2, v60

    .line 282
    invoke-interface {v0, v2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v0

    move-object/from16 v2, v61

    .line 283
    invoke-interface {v0, v2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v0

    .line 284
    new-instance v2, Lba/j;

    const/16 v7, 0xe

    invoke-direct {v2, v7, v1}, Lba/j;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/a;->d(Lr1/p;Lf9/k;)Lr1/p;

    move-result-object v0

    .line 285
    new-instance v2, La8/w;

    const/16 v7, 0xd

    move-object/from16 v8, v58

    invoke-direct {v2, v7, v4, v8}, La8/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->a(Lr1/p;Lf9/n;)Lr1/p;

    move-result-object v0

    if-eqz v12, :cond_71

    .line 286
    invoke-virtual {v1}, Ll0/s0;->b()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 287
    iget-object v2, v1, Ll0/s0;->q:Lf1/k1;

    .line 288
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 289
    move-object/from16 v2, v31

    check-cast v2, Lr2/v1;

    .line 290
    iget-object v2, v2, Lr2/v1;->a:Lf1/k1;

    .line 291
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_71

    const/4 v15, 0x1

    goto :goto_46

    :cond_71
    const/4 v15, 0x0

    :goto_46
    if-eqz v15, :cond_73

    .line 292
    invoke-static {}, Lx/u0;->a()Z

    move-result v2

    if-nez v2, :cond_72

    goto :goto_48

    .line 293
    :cond_72
    new-instance v2, Lc8/n0;

    const/4 v8, 0x7

    invoke-direct {v2, v8, v4}, Lc8/n0;-><init>(ILjava/lang/Object;)V

    .line 294
    invoke-static {v13, v2}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    move-result-object v7

    :goto_47
    move-object v2, v0

    goto :goto_49

    :cond_73
    :goto_48
    move-object v7, v13

    goto :goto_47

    .line 295
    :goto_49
    new-instance v0, Ll0/a0;

    move-object/from16 v8, p4

    move/from16 v5, p9

    move-object/from16 v62, v2

    move-object v14, v4

    move-object/from16 v17, v6

    move-object v12, v7

    move-object/from16 v10, v18

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    move-object/from16 v7, p0

    move/from16 v4, p10

    move-object v2, v1

    move-object v6, v3

    move-object/from16 v18, v16

    move-object/from16 v3, p3

    move-object/from16 v16, p5

    move-object/from16 v1, p14

    invoke-direct/range {v0 .. v18}, Ll0/a0;-><init>(Ln1/c;Ll0/s0;Lb3/o0;IILl0/o1;Lg3/w;Lb3/i0;Lr1/p;Lr1/p;Lr1/p;Lr1/p;Li0/b;Lw0/r1;ZLf9/k;Lg3/q;Ln3/c;)V

    move-object v4, v14

    const v1, -0x308d4209

    move-object/from16 v14, p15

    invoke-static {v1, v0, v14}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    move-result-object v0

    const/16 v1, 0x180

    move-object/from16 v2, v62

    invoke-static {v2, v4, v0, v14, v1}, Ll0/p0;->f(Lr1/p;Lw0/r1;Ln1/c;Lf1/s;I)V

    goto :goto_4a

    .line 296
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no recompose scope found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    move-object v14, v7

    .line 297
    invoke-virtual {v14}, Lf1/s;->Q()V

    .line 298
    :goto_4a
    invoke-virtual {v14}, Lf1/s;->r()Lf1/w1;

    move-result-object v0

    if-eqz v0, :cond_76

    move-object v1, v0

    new-instance v0, Ll0/q;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v63, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Ll0/q;-><init>(Lg3/w;Lf9/k;Lr1/p;Lb3/o0;Lb3/i0;Lf9/k;Lb0/k;Ly1/n0;ZIILg3/k;Ll0/q0;ZLn1/c;II)V

    move-object/from16 v1, v63

    .line 299
    iput-object v0, v1, Lf1/w1;->d:Lf9/n;

    :cond_76
    return-void
.end method

.method public static final f(Lr1/p;Lw0/r1;Ln1/c;Lf1/s;I)V
    .locals 8

    .line 1
    const v0, 0x795d8dec

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p4

    .line 17
    invoke-virtual {p3, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x20

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit16 v1, v0, 0x93

    .line 32
    .line 33
    const/16 v3, 0x92

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {p3, v3, v1}, Lf1/s;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    sget-object v1, Lr1/c;->a:Lr1/h;

    .line 50
    .line 51
    invoke-static {v1, v4}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-wide v5, p3, Lf1/s;->T:J

    .line 56
    .line 57
    ushr-long v2, v5, v2

    .line 58
    .line 59
    xor-long/2addr v2, v5

    .line 60
    long-to-int v3, v2

    .line 61
    invoke-virtual {p3}, Lf1/s;->l()Lf1/q1;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {p3, p0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 75
    .line 76
    invoke-virtual {p3}, Lf1/s;->a0()V

    .line 77
    .line 78
    .line 79
    iget-boolean v7, p3, Lf1/s;->S:Z

    .line 80
    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-virtual {p3, v6}, Lf1/s;->k(Lf9/a;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    invoke-virtual {p3}, Lf1/s;->k0()V

    .line 88
    .line 89
    .line 90
    :goto_3
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 91
    .line 92
    invoke-static {p3, v6, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 96
    .line 97
    invoke-static {p3, v1, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v1, Lq2/i;->f:Lq2/h;

    .line 101
    .line 102
    iget-boolean v2, p3, Lf1/s;->S:Z

    .line 103
    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-static {v2, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    :cond_4
    invoke-static {v3, p3, v3, v1}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    sget-object v1, Lq2/i;->c:Lq2/h;

    .line 124
    .line 125
    invoke-static {p3, v1, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    shr-int/lit8 v0, v0, 0x3

    .line 129
    .line 130
    and-int/lit8 v0, v0, 0x7e

    .line 131
    .line 132
    invoke-static {p1, p2, p3, v0}, Ll0/p0;->d(Lw0/r1;Ln1/c;Lf1/s;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v4}, Lf1/s;->p(Z)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 140
    .line 141
    .line 142
    :goto_4
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    if-eqz p3, :cond_7

    .line 147
    .line 148
    new-instance v0, Ll0/p;

    .line 149
    .line 150
    const/4 v5, 0x0

    .line 151
    move-object v1, p0

    .line 152
    move-object v2, p1

    .line 153
    move-object v3, p2

    .line 154
    move v4, p4

    .line 155
    invoke-direct/range {v0 .. v5}, Ll0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr8/e;II)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p3, Lf1/w1;->d:Lf9/n;

    .line 159
    .line 160
    :cond_7
    return-void
.end method

.method public static final g(Lw0/r1;ZLf1/s;I)V
    .locals 10

    .line 1
    const v0, 0x25552d88

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    invoke-virtual {p2, p1}, Lf1/s;->g(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x20

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit8 v1, v0, 0x13

    .line 32
    .line 33
    const/16 v3, 0x12

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    const/4 v5, 0x0

    .line 37
    if-eq v1, v3, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 43
    .line 44
    invoke-virtual {p2, v3, v1}, Lf1/s;->N(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_d

    .line 49
    .line 50
    if-eqz p1, :cond_c

    .line 51
    .line 52
    const v1, 0x5b2e7f11

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lw0/r1;->d:Ll0/s0;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1}, Ll0/s0;->d()Ll0/q1;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v1, v1, Ll0/q1;->a:Lb3/l0;

    .line 70
    .line 71
    iget-object v6, p0, Lw0/r1;->d:Ll0/s0;

    .line 72
    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    iget-boolean v6, v6, Ll0/s0;->p:Z

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/4 v6, 0x1

    .line 79
    :goto_3
    if-nez v6, :cond_4

    .line 80
    .line 81
    move-object v3, v1

    .line 82
    :cond_4
    if-nez v3, :cond_6

    .line 83
    .line 84
    const v0, 0x5b336eeb

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_4
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :cond_6
    const v1, 0x5b336eec

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-wide v6, v1, Lg3/w;->b:J

    .line 106
    .line 107
    invoke-static {v6, v7}, Lb3/n0;->c(J)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_9

    .line 112
    .line 113
    const v1, 0x7dc11ac6

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lw0/r1;->b:Lg3/q;

    .line 120
    .line 121
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget-wide v6, v6, Lg3/w;->b:J

    .line 126
    .line 127
    shr-long/2addr v6, v2

    .line 128
    long-to-int v2, v6

    .line 129
    invoke-interface {v1, v2}, Lg3/q;->b(I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iget-object v2, p0, Lw0/r1;->b:Lg3/q;

    .line 134
    .line 135
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    iget-wide v6, v6, Lg3/w;->b:J

    .line 140
    .line 141
    const-wide v8, 0xffffffffL

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    and-long/2addr v6, v8

    .line 147
    long-to-int v7, v6

    .line 148
    invoke-interface {v2, v7}, Lg3/q;->b(I)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v3, v1}, Lb3/l0;->a(I)Lm3/j;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sub-int/2addr v2, v4

    .line 157
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {v3, v2}, Lb3/l0;->a(I)Lm3/j;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget-object v3, p0, Lw0/r1;->d:Ll0/s0;

    .line 166
    .line 167
    if-eqz v3, :cond_7

    .line 168
    .line 169
    iget-object v3, v3, Ll0/s0;->m:Lf1/k1;

    .line 170
    .line 171
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-ne v3, v4, :cond_7

    .line 182
    .line 183
    const v3, 0x7dc77b9a

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v3}, Lf1/s;->W(I)V

    .line 187
    .line 188
    .line 189
    shl-int/lit8 v3, v0, 0x6

    .line 190
    .line 191
    and-int/lit16 v3, v3, 0x380

    .line 192
    .line 193
    or-int/lit8 v3, v3, 0x6

    .line 194
    .line 195
    invoke-static {v4, v1, p0, p2, v3}, Lw0/y0;->g(ZLm3/j;Lw0/r1;Lf1/s;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_7
    const v1, 0x7dcb87ae

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 209
    .line 210
    .line 211
    :goto_5
    iget-object v1, p0, Lw0/r1;->d:Ll0/s0;

    .line 212
    .line 213
    if-eqz v1, :cond_8

    .line 214
    .line 215
    iget-object v1, v1, Ll0/s0;->n:Lf1/k1;

    .line 216
    .line 217
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-ne v1, v4, :cond_8

    .line 228
    .line 229
    const v1, 0x7dcccf7b

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 233
    .line 234
    .line 235
    shl-int/lit8 v0, v0, 0x6

    .line 236
    .line 237
    and-int/lit16 v0, v0, 0x380

    .line 238
    .line 239
    or-int/lit8 v0, v0, 0x6

    .line 240
    .line 241
    invoke-static {v5, v2, p0, p2, v0}, Lw0/y0;->g(ZLm3/j;Lw0/r1;Lf1/s;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_8
    const v0, 0x7dd0d7ce    # 3.4699993E37f

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 255
    .line 256
    .line 257
    :goto_6
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_9
    const v0, 0x7dd12d0e

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 268
    .line 269
    .line 270
    :goto_7
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 271
    .line 272
    if-eqz v0, :cond_5

    .line 273
    .line 274
    iget-object v1, v0, Ll0/s0;->l:Lf1/k1;

    .line 275
    .line 276
    iget-object v2, p0, Lw0/r1;->t:Lg3/w;

    .line 277
    .line 278
    iget-object v2, v2, Lg3/w;->a:Lb3/g;

    .line 279
    .line 280
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    iget-object v3, v3, Lg3/w;->a:Lb3/g;

    .line 287
    .line 288
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_a

    .line 295
    .line 296
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :cond_a
    invoke-virtual {v0}, Ll0/s0;->b()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_5

    .line 306
    .line 307
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Ljava/lang/Boolean;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_b

    .line 318
    .line 319
    invoke-virtual {p0}, Lw0/r1;->q()V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_4

    .line 323
    .line 324
    :cond_b
    invoke-virtual {p0}, Lw0/r1;->n()V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_4

    .line 328
    .line 329
    :goto_8
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 330
    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_c
    const v0, 0x768ee72a

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lw0/r1;->n()V

    .line 343
    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_d
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 347
    .line 348
    .line 349
    :goto_9
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    if-eqz p2, :cond_e

    .line 354
    .line 355
    new-instance v0, Lk8/b;

    .line 356
    .line 357
    invoke-direct {v0, p0, p1, p3}, Lk8/b;-><init>(Lw0/r1;ZI)V

    .line 358
    .line 359
    .line 360
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 361
    .line 362
    :cond_e
    return-void
.end method

.method public static final h(Lw0/r1;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    const v1, -0x5597ad88

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    :goto_0
    or-int/2addr v1, v7

    .line 24
    and-int/lit8 v3, v1, 0x3

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    if-eq v3, v2, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_1
    and-int/2addr v1, v4

    .line 34
    invoke-virtual {v5, v1, v3}, Lf1/s;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_c

    .line 39
    .line 40
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 41
    .line 42
    if-eqz v1, :cond_b

    .line 43
    .line 44
    iget-object v1, v1, Ll0/s0;->o:Lf1/k1;

    .line 45
    .line 46
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ne v1, v4, :cond_b

    .line 57
    .line 58
    invoke-virtual {v0}, Lw0/r1;->l()Lb3/g;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_b

    .line 63
    .line 64
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-lez v1, :cond_b

    .line 71
    .line 72
    const v1, -0x7de79b68

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v1}, Lf1/s;->W(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 87
    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    if-ne v3, v4, :cond_3

    .line 91
    .line 92
    :cond_2
    new-instance v3, Lw0/l1;

    .line 93
    .line 94
    invoke-direct {v3, v0}, Lw0/l1;-><init>(Lw0/r1;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    check-cast v3, Ll0/z0;

    .line 101
    .line 102
    sget-object v1, Lr2/i1;->h:Lf1/w2;

    .line 103
    .line 104
    invoke-virtual {v5, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ln3/c;

    .line 109
    .line 110
    iget-object v6, v0, Lw0/r1;->b:Lg3/q;

    .line 111
    .line 112
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    iget-wide v9, v9, Lg3/w;->b:J

    .line 117
    .line 118
    sget v11, Lb3/n0;->c:I

    .line 119
    .line 120
    const/16 v11, 0x20

    .line 121
    .line 122
    shr-long/2addr v9, v11

    .line 123
    long-to-int v10, v9

    .line 124
    invoke-interface {v6, v10}, Lg3/q;->b(I)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget-object v9, v0, Lw0/r1;->d:Ll0/s0;

    .line 129
    .line 130
    const/4 v10, 0x0

    .line 131
    if-eqz v9, :cond_4

    .line 132
    .line 133
    invoke-virtual {v9}, Ll0/s0;->d()Ll0/q1;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move-object v9, v10

    .line 139
    :goto_2
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v9, v9, Ll0/q1;->a:Lb3/l0;

    .line 143
    .line 144
    iget-object v12, v9, Lb3/l0;->a:Lb3/k0;

    .line 145
    .line 146
    iget-object v12, v12, Lb3/k0;->a:Lb3/g;

    .line 147
    .line 148
    iget-object v12, v12, Lb3/g;->b:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    invoke-static {v6, v8, v12}, Li9/a;->n(III)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-virtual {v9, v6}, Lb3/l0;->c(I)Lx1/c;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iget v9, v6, Lx1/c;->a:F

    .line 163
    .line 164
    sget v12, Ll0/b1;->a:F

    .line 165
    .line 166
    invoke-interface {v1, v12}, Ln3/c;->S(F)F

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    int-to-float v12, v2

    .line 171
    div-float/2addr v1, v12

    .line 172
    add-float/2addr v1, v9

    .line 173
    iget v6, v6, Lx1/c;->d:F

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    int-to-long v12, v1

    .line 180
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    int-to-long v14, v1

    .line 185
    shl-long v11, v12, v11

    .line 186
    .line 187
    const-wide v16, 0xffffffffL

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    and-long v14, v14, v16

    .line 193
    .line 194
    or-long/2addr v11, v14

    .line 195
    invoke-virtual {v5, v11, v12}, Lf1/s;->e(J)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    if-nez v1, :cond_5

    .line 204
    .line 205
    if-ne v6, v4, :cond_6

    .line 206
    .line 207
    :cond_5
    new-instance v6, Ll0/c0;

    .line 208
    .line 209
    invoke-direct {v6, v11, v12}, Ll0/c0;-><init>(J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    move-object v1, v6

    .line 216
    check-cast v1, Lw0/q;

    .line 217
    .line 218
    invoke-virtual {v5, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    invoke-virtual {v5, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    or-int/2addr v6, v9

    .line 227
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    if-nez v6, :cond_7

    .line 232
    .line 233
    if-ne v9, v4, :cond_8

    .line 234
    .line 235
    :cond_7
    new-instance v9, Ll0/e0;

    .line 236
    .line 237
    invoke-direct {v9, v8, v3, v0}, Ll0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 244
    .line 245
    new-instance v6, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 246
    .line 247
    const/4 v13, 0x6

    .line 248
    invoke-direct {v6, v3, v10, v9, v13}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v11, v12}, Lf1/s;->e(J)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    if-nez v3, :cond_9

    .line 260
    .line 261
    if-ne v9, v4, :cond_a

    .line 262
    .line 263
    :cond_9
    new-instance v9, Ldc/g;

    .line 264
    .line 265
    invoke-direct {v9, v2, v11, v12}, Ldc/g;-><init>(IJ)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    check-cast v9, Lf9/k;

    .line 272
    .line 273
    invoke-static {v6, v9}, Ly2/k;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    const-wide/16 v3, 0x0

    .line 278
    .line 279
    const/4 v6, 0x0

    .line 280
    invoke-static/range {v1 .. v6}, Ll0/e;->a(Lw0/q;Lr1/p;JLf1/s;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v8}, Lf1/s;->p(Z)V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_b
    const v1, -0x7dd3a296

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, v1}, Lf1/s;->W(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5, v8}, Lf1/s;->p(Z)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_c
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 298
    .line 299
    .line 300
    :goto_3
    invoke-virtual {v5}, Lf1/s;->r()Lf1/w1;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    if-eqz v1, :cond_d

    .line 305
    .line 306
    new-instance v2, La8/d;

    .line 307
    .line 308
    const/16 v3, 0x10

    .line 309
    .line 310
    invoke-direct {v2, v7, v3, v0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iput-object v2, v1, Lf1/w1;->d:Lf9/n;

    .line 314
    .line 315
    :cond_d
    return-void
.end method

.method public static final i(Lo2/u0;ILg3/d0;Lb3/l0;ZI)Lx1/c;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p2, p2, Lg3/d0;->b:Lg3/q;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lg3/q;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p3, p1}, Lb3/l0;->c(I)Lx1/c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lx1/c;->e:Lx1/c;

    .line 15
    .line 16
    :goto_0
    iget p2, p1, Lx1/c;->a:F

    .line 17
    .line 18
    sget p3, Ll0/b1;->a:F

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p0}, La2/f;->k(FLn3/c;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p4, :cond_1

    .line 28
    .line 29
    int-to-float p3, p5

    .line 30
    sub-float/2addr p3, p2

    .line 31
    int-to-float v0, p0

    .line 32
    sub-float/2addr p3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p3, p2

    .line 35
    :goto_1
    if-eqz p4, :cond_2

    .line 36
    .line 37
    int-to-float p0, p5

    .line 38
    sub-float/2addr p0, p2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    int-to-float p0, p0

    .line 41
    add-float/2addr p0, p2

    .line 42
    :goto_2
    const/4 p2, 0x0

    .line 43
    const/16 p4, 0xa

    .line 44
    .line 45
    invoke-static {p1, p3, p0, p2, p4}, Lx1/c;->a(Lx1/c;FFFI)Lx1/c;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final j(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Li2/c;->z(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 p1, 0x20

    .line 6
    .line 7
    shr-long/2addr v0, p1

    .line 8
    long-to-int p1, v0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static final k(F)I
    .locals 2

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    double-to-float p0, v0

    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final l(Lk2/a0;Ll0/z0;Lw8/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lj8/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    invoke-direct {v0, p0, p1, v1, v2}, Lj8/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 13
    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final m(Ll0/s0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll0/s0;->e:Lg3/c0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 7
    .line 8
    iget-object v3, p0, Ll0/s0;->v:Ll0/s;

    .line 9
    .line 10
    iget-object v2, v2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lg3/w;

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    const/4 v6, 0x3

    .line 17
    invoke-static {v2, v1, v4, v5, v6}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v3, v2}, Ll0/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lg3/c0;->a:Lg3/x;

    .line 25
    .line 26
    iget-object v3, v2, Lg3/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v0, v2, Lg3/x;->a:Lg3/r;

    .line 35
    .line 36
    invoke-interface {v0}, Lg3/r;->d()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eq v4, v0, :cond_0

    .line 45
    .line 46
    :cond_2
    :goto_0
    iput-object v1, p0, Ll0/s0;->e:Lg3/c0;

    .line 47
    .line 48
    return-void
.end method

.method public static final n(Lb3/i0;Lb3/g;)Lg3/d0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lb3/g;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    iget-object v0, p1, Lb3/g;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v2, :cond_0

    .line 25
    .line 26
    invoke-static {v4, v0, v4}, Ll0/p0;->y(III)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p0, v0, p0}, Ll0/p0;->y(III)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_1
    if-ge v3, v1, :cond_1

    .line 40
    .line 41
    invoke-static {v3, p0, v3}, Ll0/p0;->z(III)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v0, p0, v0}, Ll0/p0;->z(III)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Lg3/d0;

    .line 51
    .line 52
    new-instance v0, Ld6/i;

    .line 53
    .line 54
    iget-object v1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p1, Lb3/g;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x3

    .line 67
    invoke-direct {v0, v1, v2, v3}, Ld6/i;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1, v0}, Lg3/d0;-><init>(Lb3/g;Lg3/q;)V

    .line 71
    .line 72
    .line 73
    return-object p0
.end method

.method public static final o(ILjava/lang/String;)I
    .locals 11

    .line 1
    invoke-static {}, Ll0/p0;->s()Ll4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {v0}, Ll4/j;->c()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-eqz v4, :cond_5

    .line 19
    .line 20
    const-string v2, "charSequence cannot be null"

    .line 21
    .line 22
    invoke-static {p1, v2}, Lc7/a;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Ll4/j;->e:Ll4/f;

    .line 26
    .line 27
    iget-object v4, v0, Ll4/f;->b:La2/b;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    if-ltz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-lt p0, v2, :cond_2

    .line 40
    .line 41
    :cond_1
    move-object v5, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    instance-of v2, p1, Landroid/text/Spanned;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    move-object v2, p1

    .line 48
    check-cast v2, Landroid/text/Spanned;

    .line 49
    .line 50
    add-int/lit8 v5, p0, 0x1

    .line 51
    .line 52
    const-class v6, Ll4/w;

    .line 53
    .line 54
    invoke-interface {v2, p0, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, [Ll4/w;

    .line 59
    .line 60
    array-length v6, v5

    .line 61
    if-lez v6, :cond_3

    .line 62
    .line 63
    aget-object v3, v5, v3

    .line 64
    .line 65
    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    move-object v5, p1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    add-int/lit8 v2, p0, -0x10

    .line 72
    .line 73
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    add-int/lit8 v3, p0, 0x10

    .line 82
    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    new-instance v10, Ll4/o;

    .line 88
    .line 89
    invoke-direct {v10, p0}, Ll4/o;-><init>(I)V

    .line 90
    .line 91
    .line 92
    const v8, 0x7fffffff

    .line 93
    .line 94
    .line 95
    const/4 v9, 0x1

    .line 96
    move-object v5, p1

    .line 97
    invoke-virtual/range {v4 .. v10}, La2/b;->S(Ljava/lang/CharSequence;IIIZLl4/n;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ll4/o;

    .line 102
    .line 103
    iget v2, p1, Ll4/o;->c:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_1
    const/4 v2, -0x1

    .line 107
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne v2, v0, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move-object v1, p1

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string p1, "Not initialized yet"

    .line 119
    .line 120
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_6
    move-object v5, p1

    .line 125
    :goto_3
    if-eqz v1, :cond_7

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    return p0

    .line 132
    :cond_7
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p0}, Ljava/text/BreakIterator;->following(I)I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    return p0
.end method

.method public static final p(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static final q(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    :goto_0
    if-lez p1, :cond_1

    .line 2
    .line 3
    add-int/lit8 v0, p1, -0x1

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final r(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Ll0/p0;->s()Ll4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v2, p0, -0x1

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, p1, v2}, Ll4/j;->b(Ljava/lang/CharSequence;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v1, v0

    .line 32
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->preceding(I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static final s()Ll4/j;
    .locals 3

    .line 1
    invoke-static {}, Ll4/j;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ll4/j;->a()Ll4/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ll4/j;->c()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public static final t(Lb3/l0;I)F
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lb3/l0;->a:Lb3/k0;

    .line 4
    .line 5
    iget-object p0, p0, Lb3/l0;->b:Lb3/o;

    .line 6
    .line 7
    iget-object v0, v0, Lb3/k0;->a:Lb3/g;

    .line 8
    .line 9
    iget-object v0, v0, Lb3/g;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lb3/o;->d(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lb3/o;->b:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    iget v2, p0, Lb3/o;->f:I

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Lb3/o;->c(IZ)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-le p1, v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Lb3/o;->m(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lb3/o;->h:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {v0, p0}, Lb3/d0;->e(ILjava/util/List;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lb3/r;

    .line 60
    .line 61
    iget-object p1, p0, Lb3/r;->a:Lb3/a;

    .line 62
    .line 63
    iget p0, p0, Lb3/r;->d:I

    .line 64
    .line 65
    sub-int/2addr v0, p0

    .line 66
    iget-object p0, p1, Lb3/a;->d:Lc3/n;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lc3/n;->e(I)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, v0}, Lc3/n;->g(I)F

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    sub-float/2addr p1, p0

    .line 77
    return p1

    .line 78
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 79
    return p0
.end method

.method public static final u(Ll0/s0;Lg3/w;Lg3/q;)V
    .locals 11

    .line 1
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lp1/f;->e()Lf9/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    move-object v2, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    invoke-static {v1}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ll0/s0;->d()Ll0/q1;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {v1, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v8, p0, Ll0/s0;->e:Lg3/c0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    if-nez v8, :cond_2

    .line 32
    .line 33
    invoke-static {v1, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ll0/s0;->c()Lo2/w;

    .line 38
    .line 39
    .line 40
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-nez v7, :cond_3

    .line 42
    .line 43
    invoke-static {v1, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    :try_start_3
    iget-object v5, p0, Ll0/s0;->a:Ll0/y0;

    .line 48
    .line 49
    iget-object v6, v0, Ll0/q1;->a:Lb3/l0;

    .line 50
    .line 51
    invoke-virtual {p0}, Ll0/s0;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    move-object v4, p1

    .line 56
    move-object v10, p2

    .line 57
    invoke-static/range {v4 .. v10}, Ll0/p0;->v(Lg3/w;Ll0/y0;Lb3/l0;Lo2/w;Lg3/c0;ZLg3/q;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    invoke-static {v1, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static v(Lg3/w;Ll0/y0;Lb3/l0;Lo2/w;Lg3/c0;ZLg3/q;)V
    .locals 5

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    iget-wide v0, p0, Lg3/w;->b:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Lb3/n0;->e(J)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {p6, p0}, Lg3/q;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget-object p5, Ll0/c1;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p5, p2, Lb3/l0;->a:Lb3/k0;

    .line 18
    .line 19
    iget-object p5, p5, Lb3/k0;->a:Lb3/g;

    .line 20
    .line 21
    iget-object p5, p5, Lb3/g;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    const-wide v0, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-ge p0, p5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2, p0}, Lb3/l0;->b(I)Lx1/c;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-eqz p0, :cond_2

    .line 40
    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lb3/l0;->b(I)Lx1/c;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, p1, Ll0/y0;->b:Lb3/o0;

    .line 49
    .line 50
    iget-object p2, p1, Ll0/y0;->g:Ln3/c;

    .line 51
    .line 52
    iget-object p1, p1, Ll0/y0;->h:Lf3/d;

    .line 53
    .line 54
    invoke-static {p0, p2, p1}, Ll0/c1;->b(Lb3/o0;Ln3/c;Lf3/d;)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    new-instance p2, Ln3/l;

    .line 59
    .line 60
    invoke-direct {p2, p0, p1}, Ln3/l;-><init>(J)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Lx1/c;

    .line 64
    .line 65
    iget-wide p1, p2, Ln3/l;->a:J

    .line 66
    .line 67
    and-long/2addr p1, v0

    .line 68
    long-to-int p2, p1

    .line 69
    int-to-float p1, p2

    .line 70
    const/4 p2, 0x0

    .line 71
    const/high16 p5, 0x3f800000    # 1.0f

    .line 72
    .line 73
    invoke-direct {p0, p2, p2, p5, p1}, Lx1/c;-><init>(FFFF)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget p1, p0, Lx1/c;->b:F

    .line 77
    .line 78
    iget p2, p0, Lx1/c;->a:F

    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    int-to-long p5, p5

    .line 85
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    int-to-long v2, v2

    .line 90
    const/16 v4, 0x20

    .line 91
    .line 92
    shl-long/2addr p5, v4

    .line 93
    and-long/2addr v2, v0

    .line 94
    or-long/2addr p5, v2

    .line 95
    invoke-interface {p3, p5, p6}, Lo2/w;->F(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide p5

    .line 99
    shr-long v2, p5, v4

    .line 100
    .line 101
    long-to-int p3, v2

    .line 102
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    and-long/2addr p5, v0

    .line 107
    long-to-int p6, p5

    .line 108
    invoke-static {p6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 109
    .line 110
    .line 111
    move-result p5

    .line 112
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    int-to-long v2, p3

    .line 117
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    int-to-long p5, p3

    .line 122
    shl-long/2addr v2, v4

    .line 123
    and-long/2addr p5, v0

    .line 124
    or-long/2addr p5, v2

    .line 125
    iget p3, p0, Lx1/c;->c:F

    .line 126
    .line 127
    sub-float/2addr p3, p2

    .line 128
    iget p0, p0, Lx1/c;->d:F

    .line 129
    .line 130
    sub-float/2addr p0, p1

    .line 131
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    int-to-long p1, p1

    .line 136
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    int-to-long v2, p0

    .line 141
    shl-long p0, p1, v4

    .line 142
    .line 143
    and-long p2, v2, v0

    .line 144
    .line 145
    or-long/2addr p0, p2

    .line 146
    invoke-static {p5, p6, p0, p1}, Lp9/p1;->d(JJ)Lx1/c;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    iget-object p1, p4, Lg3/c0;->a:Lg3/x;

    .line 151
    .line 152
    iget-object p1, p1, Lg3/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lg3/c0;

    .line 159
    .line 160
    invoke-static {p1, p4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_3

    .line 165
    .line 166
    iget-object p1, p4, Lg3/c0;->b:Lg3/r;

    .line 167
    .line 168
    invoke-interface {p1, p0}, Lg3/r;->f(Lx1/c;)V

    .line 169
    .line 170
    .line 171
    :cond_3
    :goto_1
    return-void
.end method

.method public static final w(Lg3/x;Ll0/s0;Lg3/w;Lg3/k;Lg3/q;)V
    .locals 6

    .line 1
    iget-object v0, p1, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    iget-object v1, p1, Ll0/s0;->v:Ll0/s;

    .line 4
    .line 5
    iget-object v2, p1, Ll0/s0;->w:Ll0/s;

    .line 6
    .line 7
    new-instance v3, Lg9/x;

    .line 8
    .line 9
    invoke-direct {v3}, Lg9/x;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ll0/u;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-direct {v4, v0, v1, v3, v5}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lg3/x;->a:Lg3/r;

    .line 19
    .line 20
    invoke-interface {v0, p2, p3, v4, v2}, Lg3/r;->e(Lg3/w;Lg3/k;Ll0/u;Ll0/s;)V

    .line 21
    .line 22
    .line 23
    new-instance p3, Lg3/c0;

    .line 24
    .line 25
    invoke-direct {p3, p0, v0}, Lg3/c0;-><init>(Lg3/x;Lg3/r;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lg3/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p3, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p3, p1, Ll0/s0;->e:Lg3/c0;

    .line 36
    .line 37
    invoke-static {p1, p2, p4}, Ll0/p0;->u(Ll0/s0;Lg3/w;Lg3/q;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static final x(II)V
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "both minLines "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " and maxLines "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " must be greater than zero"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lc0/b;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    if-gt p0, p1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "minLines "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, " must be less than or equal to maxLines "

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lc0/b;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static final y(III)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p0, :cond_0

    .line 3
    .line 4
    if-gt p0, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "OffsetMapping.originalToTransformed returned invalid mapping: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " -> "

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " is not in range of transformed text [0, "

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x5d

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lc0/b;->c(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public static final z(III)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p0, :cond_0

    .line 3
    .line 4
    if-gt p0, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "OffsetMapping.transformedToOriginal returned invalid mapping: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " -> "

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " is not in range of original text [0, "

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x5d

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lc0/b;->c(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
