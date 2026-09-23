.class public final Lc1/t0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lc1/t0;

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc1/t0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc1/t0;->a:Lc1/t0;

    .line 7
    .line 8
    const/16 v0, 0x38

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    sput v0, Lc1/t0;->b:F

    .line 12
    .line 13
    const/16 v0, 0x118

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    sput v0, Lc1/t0;->c:F

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    int-to-float v0, v0

    .line 20
    sput v0, Lc1/t0;->d:F

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    int-to-float v0, v0

    .line 24
    sput v0, Lc1/t0;->e:F

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(ZLb0/k;Lr1/p;Lc1/q2;Ly1/l0;FFLf1/s;II)V
    .locals 24

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    move-object/from16 v11, p8

    .line 10
    .line 11
    move/from16 v0, p9

    .line 12
    .line 13
    move/from16 v1, p10

    .line 14
    .line 15
    const v4, 0x3db82288

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v4}, Lf1/s;->Y(I)Lf1/s;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v11, v2}, Lf1/s;->g(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x2

    .line 30
    :goto_0
    or-int/2addr v4, v0

    .line 31
    const/4 v14, 0x0

    .line 32
    invoke-virtual {v11, v14}, Lf1/s;->g(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    const/16 v7, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v7, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v4, v7

    .line 44
    invoke-virtual {v11, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    const/16 v7, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v7, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v4, v7

    .line 56
    and-int/lit8 v7, v1, 0x8

    .line 57
    .line 58
    if-eqz v7, :cond_4

    .line 59
    .line 60
    or-int/lit16 v4, v4, 0xc00

    .line 61
    .line 62
    :cond_3
    move-object/from16 v8, p3

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    and-int/lit16 v8, v0, 0xc00

    .line 66
    .line 67
    if-nez v8, :cond_3

    .line 68
    .line 69
    move-object/from16 v8, p3

    .line 70
    .line 71
    invoke-virtual {v11, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_5

    .line 76
    .line 77
    const/16 v9, 0x800

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    const/16 v9, 0x400

    .line 81
    .line 82
    :goto_3
    or-int/2addr v4, v9

    .line 83
    :goto_4
    invoke-virtual {v11, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_6

    .line 88
    .line 89
    const/16 v9, 0x4000

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_6
    const/16 v9, 0x2000

    .line 93
    .line 94
    :goto_5
    or-int/2addr v4, v9

    .line 95
    invoke-virtual {v11, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_7

    .line 100
    .line 101
    const/high16 v9, 0x20000

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    const/high16 v9, 0x10000

    .line 105
    .line 106
    :goto_6
    or-int/2addr v4, v9

    .line 107
    const/high16 v9, 0x180000

    .line 108
    .line 109
    and-int/2addr v9, v0

    .line 110
    if-nez v9, :cond_a

    .line 111
    .line 112
    and-int/lit8 v9, v1, 0x40

    .line 113
    .line 114
    if-nez v9, :cond_8

    .line 115
    .line 116
    move/from16 v9, p6

    .line 117
    .line 118
    invoke-virtual {v11, v9}, Lf1/s;->c(F)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_9

    .line 123
    .line 124
    const/high16 v10, 0x100000

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_8
    move/from16 v9, p6

    .line 128
    .line 129
    :cond_9
    const/high16 v10, 0x80000

    .line 130
    .line 131
    :goto_7
    or-int/2addr v4, v10

    .line 132
    goto :goto_8

    .line 133
    :cond_a
    move/from16 v9, p6

    .line 134
    .line 135
    :goto_8
    const/high16 v10, 0xc00000

    .line 136
    .line 137
    and-int/2addr v10, v0

    .line 138
    if-nez v10, :cond_d

    .line 139
    .line 140
    and-int/lit16 v10, v1, 0x80

    .line 141
    .line 142
    if-nez v10, :cond_b

    .line 143
    .line 144
    move/from16 v10, p7

    .line 145
    .line 146
    invoke-virtual {v11, v10}, Lf1/s;->c(F)Z

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-eqz v12, :cond_c

    .line 151
    .line 152
    const/high16 v12, 0x800000

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_b
    move/from16 v10, p7

    .line 156
    .line 157
    :cond_c
    const/high16 v12, 0x400000

    .line 158
    .line 159
    :goto_9
    or-int/2addr v4, v12

    .line 160
    goto :goto_a

    .line 161
    :cond_d
    move/from16 v10, p7

    .line 162
    .line 163
    :goto_a
    const v12, 0x2492493

    .line 164
    .line 165
    .line 166
    and-int/2addr v12, v4

    .line 167
    const v15, 0x2492492

    .line 168
    .line 169
    .line 170
    if-ne v12, v15, :cond_f

    .line 171
    .line 172
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    if-nez v12, :cond_e

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_e
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 180
    .line 181
    .line 182
    move-object v4, v8

    .line 183
    move v7, v9

    .line 184
    move v8, v10

    .line 185
    goto/16 :goto_16

    .line 186
    .line 187
    :cond_f
    :goto_b
    invoke-virtual {v11}, Lf1/s;->S()V

    .line 188
    .line 189
    .line 190
    and-int/lit8 v12, v0, 0x1

    .line 191
    .line 192
    const v15, -0x1c00001

    .line 193
    .line 194
    .line 195
    const v16, -0x380001

    .line 196
    .line 197
    .line 198
    if-eqz v12, :cond_13

    .line 199
    .line 200
    invoke-virtual {v11}, Lf1/s;->x()Z

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    if-eqz v12, :cond_10

    .line 205
    .line 206
    goto :goto_c

    .line 207
    :cond_10
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 208
    .line 209
    .line 210
    and-int/lit8 v7, v1, 0x40

    .line 211
    .line 212
    if-eqz v7, :cond_11

    .line 213
    .line 214
    and-int v4, v4, v16

    .line 215
    .line 216
    :cond_11
    and-int/lit16 v7, v1, 0x80

    .line 217
    .line 218
    if-eqz v7, :cond_12

    .line 219
    .line 220
    and-int/2addr v4, v15

    .line 221
    :cond_12
    move v7, v4

    .line 222
    move-object v4, v8

    .line 223
    move v15, v9

    .line 224
    goto :goto_f

    .line 225
    :cond_13
    :goto_c
    if-eqz v7, :cond_14

    .line 226
    .line 227
    sget-object v7, Lr1/m;->a:Lr1/m;

    .line 228
    .line 229
    goto :goto_d

    .line 230
    :cond_14
    move-object v7, v8

    .line 231
    :goto_d
    and-int/lit8 v8, v1, 0x40

    .line 232
    .line 233
    if-eqz v8, :cond_15

    .line 234
    .line 235
    and-int v4, v4, v16

    .line 236
    .line 237
    sget v8, Lc1/t0;->e:F

    .line 238
    .line 239
    goto :goto_e

    .line 240
    :cond_15
    move v8, v9

    .line 241
    :goto_e
    and-int/lit16 v9, v1, 0x80

    .line 242
    .line 243
    if-eqz v9, :cond_16

    .line 244
    .line 245
    and-int/2addr v4, v15

    .line 246
    sget v9, Lc1/t0;->d:F

    .line 247
    .line 248
    move-object v10, v7

    .line 249
    move v7, v4

    .line 250
    move-object v4, v10

    .line 251
    move v15, v8

    .line 252
    move v10, v9

    .line 253
    goto :goto_f

    .line 254
    :cond_16
    move-object v15, v7

    .line 255
    move v7, v4

    .line 256
    move-object v4, v15

    .line 257
    move v15, v8

    .line 258
    :goto_f
    invoke-virtual {v11}, Lf1/s;->q()V

    .line 259
    .line 260
    .line 261
    const/4 v8, 0x6

    .line 262
    shr-int/2addr v7, v8

    .line 263
    and-int/lit8 v7, v7, 0xe

    .line 264
    .line 265
    invoke-static {v3, v11, v7}, Lc7/a;->k(Lb0/k;Lf1/s;I)Lf1/b1;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    check-cast v7, Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 276
    .line 277
    .line 278
    move-result v16

    .line 279
    sget v7, Ld1/r;->b:F

    .line 280
    .line 281
    if-nez v2, :cond_17

    .line 282
    .line 283
    iget-wide v13, v5, Lc1/q2;->n:J

    .line 284
    .line 285
    goto :goto_10

    .line 286
    :cond_17
    if-eqz v16, :cond_18

    .line 287
    .line 288
    iget-wide v13, v5, Lc1/q2;->l:J

    .line 289
    .line 290
    goto :goto_10

    .line 291
    :cond_18
    iget-wide v13, v5, Lc1/q2;->m:J

    .line 292
    .line 293
    :goto_10
    const/16 v9, 0x96

    .line 294
    .line 295
    const/4 v12, 0x0

    .line 296
    if-eqz v2, :cond_19

    .line 297
    .line 298
    const v7, 0x3cfa90ae

    .line 299
    .line 300
    .line 301
    invoke-virtual {v11, v7}, Lf1/s;->W(I)V

    .line 302
    .line 303
    .line 304
    invoke-static {v9, v8, v12}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    const/16 v8, 0x30

    .line 309
    .line 310
    invoke-static {v13, v14, v7, v11, v8}, Lu/g;->a(JLv/v0;Lf1/s;I)Lf1/v2;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    const/4 v13, 0x0

    .line 315
    invoke-virtual {v11, v13}, Lf1/s;->p(Z)V

    .line 316
    .line 317
    .line 318
    move-object v13, v7

    .line 319
    goto :goto_11

    .line 320
    :cond_19
    const/4 v7, 0x0

    .line 321
    const v8, 0x3cfc4441

    .line 322
    .line 323
    .line 324
    invoke-virtual {v11, v8}, Lf1/s;->W(I)V

    .line 325
    .line 326
    .line 327
    new-instance v8, Ly1/q;

    .line 328
    .line 329
    invoke-direct {v8, v13, v14}, Ly1/q;-><init>(J)V

    .line 330
    .line 331
    .line 332
    invoke-static {v8, v11}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v11, v7}, Lf1/s;->p(Z)V

    .line 337
    .line 338
    .line 339
    move-object v13, v8

    .line 340
    :goto_11
    if-eqz v2, :cond_1b

    .line 341
    .line 342
    const v7, 0x3cfdda29

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11, v7}, Lf1/s;->W(I)V

    .line 346
    .line 347
    .line 348
    if-eqz v16, :cond_1a

    .line 349
    .line 350
    move v7, v15

    .line 351
    :goto_12
    const/4 v8, 0x6

    .line 352
    const/16 v14, 0x96

    .line 353
    .line 354
    goto :goto_13

    .line 355
    :cond_1a
    move v7, v10

    .line 356
    goto :goto_12

    .line 357
    :goto_13
    invoke-static {v14, v8, v12}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    sget v17, Lv/e;->a:I

    .line 362
    .line 363
    new-instance v8, Ln3/f;

    .line 364
    .line 365
    invoke-direct {v8, v7}, Ln3/f;-><init>(F)V

    .line 366
    .line 367
    .line 368
    move-object v7, v8

    .line 369
    sget-object v8, Lv/d;->l:Lv/w0;

    .line 370
    .line 371
    move-object/from16 v17, v12

    .line 372
    .line 373
    const/16 v12, 0x180

    .line 374
    .line 375
    move/from16 v18, v10

    .line 376
    .line 377
    const-string v10, "DpAnimation"

    .line 378
    .line 379
    move-object/from16 v1, v17

    .line 380
    .line 381
    move/from16 v14, v18

    .line 382
    .line 383
    const/16 v0, 0x96

    .line 384
    .line 385
    const/4 v2, 0x6

    .line 386
    invoke-static/range {v7 .. v12}, Lv/e;->a(Ljava/lang/Object;Lv/w0;Lv/j;Ljava/lang/String;Lf1/s;I)Lf1/v2;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    const/4 v8, 0x0

    .line 391
    invoke-virtual {v11, v8}, Lf1/s;->p(Z)V

    .line 392
    .line 393
    .line 394
    goto :goto_14

    .line 395
    :cond_1b
    move v14, v10

    .line 396
    move-object v1, v12

    .line 397
    const/16 v0, 0x96

    .line 398
    .line 399
    const/4 v2, 0x6

    .line 400
    const/4 v8, 0x0

    .line 401
    const v7, 0x3d010a74

    .line 402
    .line 403
    .line 404
    invoke-virtual {v11, v7}, Lf1/s;->W(I)V

    .line 405
    .line 406
    .line 407
    new-instance v7, Ln3/f;

    .line 408
    .line 409
    invoke-direct {v7, v14}, Ln3/f;-><init>(F)V

    .line 410
    .line 411
    .line 412
    invoke-static {v7, v11}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    invoke-virtual {v11, v8}, Lf1/s;->p(Z)V

    .line 417
    .line 418
    .line 419
    :goto_14
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    check-cast v7, Ln3/f;

    .line 424
    .line 425
    iget v7, v7, Ln3/f;->a:F

    .line 426
    .line 427
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    check-cast v8, Ly1/q;

    .line 432
    .line 433
    iget-wide v8, v8, Ly1/q;->a:J

    .line 434
    .line 435
    new-instance v10, Lx/q;

    .line 436
    .line 437
    new-instance v12, Ly1/n0;

    .line 438
    .line 439
    invoke-direct {v12, v8, v9}, Ly1/n0;-><init>(J)V

    .line 440
    .line 441
    .line 442
    invoke-direct {v10, v7, v12}, Lx/q;-><init>(FLy1/n0;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v10, v11}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    if-nez p1, :cond_1c

    .line 450
    .line 451
    iget-wide v8, v5, Lc1/q2;->g:J

    .line 452
    .line 453
    goto :goto_15

    .line 454
    :cond_1c
    if-eqz v16, :cond_1d

    .line 455
    .line 456
    iget-wide v8, v5, Lc1/q2;->e:J

    .line 457
    .line 458
    goto :goto_15

    .line 459
    :cond_1d
    iget-wide v8, v5, Lc1/q2;->f:J

    .line 460
    .line 461
    :goto_15
    invoke-static {v0, v2, v1}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    const/16 v1, 0x30

    .line 466
    .line 467
    invoke-static {v8, v9, v0, v11, v1}, Lu/g;->a(JLv/v0;Lf1/s;I)Lf1/v2;

    .line 468
    .line 469
    .line 470
    move-result-object v21

    .line 471
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    check-cast v0, Lx/q;

    .line 476
    .line 477
    iget v1, v0, Lx/q;->a:F

    .line 478
    .line 479
    iget-object v0, v0, Lx/q;->b:Ly1/n0;

    .line 480
    .line 481
    new-instance v2, Landroidx/compose/foundation/BorderModifierNodeElement;

    .line 482
    .line 483
    invoke-direct {v2, v1, v0, v6}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLy1/n0;Ly1/l0;)V

    .line 484
    .line 485
    .line 486
    invoke-interface {v4, v2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    new-instance v17, Lc1/q0;

    .line 491
    .line 492
    const/16 v18, 0x0

    .line 493
    .line 494
    const/16 v19, 0x0

    .line 495
    .line 496
    const-class v20, Lf1/v2;

    .line 497
    .line 498
    const-string v22, "value"

    .line 499
    .line 500
    const-string v23, "getValue()Ljava/lang/Object;"

    .line 501
    .line 502
    invoke-direct/range {v17 .. v23}, Lc1/q0;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v1, v17

    .line 506
    .line 507
    new-instance v2, Lc1/r2;

    .line 508
    .line 509
    invoke-direct {v2, v1}, Lc1/r2;-><init>(Lc1/q0;)V

    .line 510
    .line 511
    .line 512
    new-instance v1, Lc1/a1;

    .line 513
    .line 514
    const/4 v7, 0x2

    .line 515
    invoke-direct {v1, v7, v6, v2}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/a;->b(Lr1/p;Lf9/k;)Lr1/p;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    const/4 v7, 0x0

    .line 523
    invoke-static {v0, v11, v7}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 524
    .line 525
    .line 526
    move v8, v14

    .line 527
    move v7, v15

    .line 528
    :goto_16
    invoke-virtual {v11}, Lf1/s;->r()Lf1/w1;

    .line 529
    .line 530
    .line 531
    move-result-object v11

    .line 532
    if-eqz v11, :cond_1e

    .line 533
    .line 534
    new-instance v0, Lc1/r0;

    .line 535
    .line 536
    move-object/from16 v1, p0

    .line 537
    .line 538
    move/from16 v2, p1

    .line 539
    .line 540
    move/from16 v9, p9

    .line 541
    .line 542
    move/from16 v10, p10

    .line 543
    .line 544
    invoke-direct/range {v0 .. v10}, Lc1/r0;-><init>(Lc1/t0;ZLb0/k;Lr1/p;Lc1/q2;Ly1/l0;FFII)V

    .line 545
    .line 546
    .line 547
    iput-object v0, v11, Lf1/w1;->d:Lf9/n;

    .line 548
    .line 549
    :cond_1e
    return-void
.end method

.method public final b(Ljava/lang/String;Lf9/n;ZZLb3/i0;Lb0/k;Lf9/n;Lf9/n;Lc1/q2;Ld0/h0;Ln1/c;Lf1/s;I)V
    .locals 23

    move-object/from16 v11, p12

    move/from16 v14, p13

    const v0, -0x14e35297

    .line 1
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v0, v14, 0x6

    if-nez v0, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move v3, v14

    :goto_1
    and-int/lit8 v4, v14, 0x30

    const/16 v6, 0x20

    if-nez v4, :cond_3

    move-object/from16 v4, p2

    invoke-virtual {v11, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    goto :goto_3

    :cond_3
    move-object/from16 v4, p2

    :goto_3
    and-int/lit16 v7, v14, 0x180

    const/16 v8, 0x80

    const/16 v9, 0x100

    if-nez v7, :cond_5

    move/from16 v7, p3

    invoke-virtual {v11, v7}, Lf1/s;->g(Z)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_4

    :cond_4
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v3, v10

    goto :goto_5

    :cond_5
    move/from16 v7, p3

    :goto_5
    and-int/lit16 v10, v14, 0xc00

    const/16 v12, 0x400

    const/16 v13, 0x800

    if-nez v10, :cond_7

    move/from16 v10, p4

    invoke-virtual {v11, v10}, Lf1/s;->g(Z)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x800

    goto :goto_6

    :cond_6
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v3, v15

    goto :goto_7

    :cond_7
    move/from16 v10, p4

    :goto_7
    and-int/lit16 v15, v14, 0x6000

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-nez v15, :cond_9

    move-object/from16 v15, p5

    invoke-virtual {v11, v15}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x4000

    goto :goto_8

    :cond_8
    const/16 v18, 0x2000

    :goto_8
    or-int v3, v3, v18

    goto :goto_9

    :cond_9
    move-object/from16 v15, p5

    :goto_9
    const/high16 v18, 0x30000

    and-int v18, v14, v18

    const/high16 v19, 0x10000

    move-object/from16 v1, p6

    if-nez v18, :cond_b

    invoke-virtual {v11, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_a
    const/high16 v20, 0x10000

    :goto_a
    or-int v3, v3, v20

    :cond_b
    const/high16 v20, 0x180000

    and-int v20, v14, v20

    if-nez v20, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lf1/s;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v2, 0x80000

    :goto_b
    or-int/2addr v3, v2

    :cond_d
    const/high16 v2, 0xc00000

    and-int v21, v14, v2

    move-object/from16 v2, p7

    if-nez v21, :cond_f

    const/high16 v21, 0xc00000

    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/high16 v22, 0x800000

    goto :goto_c

    :cond_e
    const/high16 v22, 0x400000

    :goto_c
    or-int v3, v3, v22

    goto :goto_d

    :cond_f
    const/high16 v21, 0xc00000

    :goto_d
    const/high16 v22, 0x6000000

    and-int v22, v14, v22

    const/4 v5, 0x0

    if-nez v22, :cond_11

    invoke-virtual {v11, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/high16 v22, 0x4000000

    goto :goto_e

    :cond_10
    const/high16 v22, 0x2000000

    :goto_e
    or-int v3, v3, v22

    :cond_11
    const/high16 v22, 0x30000000

    and-int v22, v14, v22

    if-nez v22, :cond_13

    invoke-virtual {v11, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x20000000

    goto :goto_f

    :cond_12
    const/high16 v22, 0x10000000

    :goto_f
    or-int v3, v3, v22

    :cond_13
    move-object/from16 v4, p8

    invoke-virtual {v11, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v18, 0x4

    goto :goto_10

    :cond_14
    const/16 v18, 0x2

    :goto_10
    const/high16 v20, 0xd80000

    or-int v18, v20, v18

    invoke-virtual {v11, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    goto :goto_11

    :cond_15
    const/16 v6, 0x10

    :goto_11
    or-int v6, v18, v6

    invoke-virtual {v11, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v8, 0x100

    :cond_16
    or-int/2addr v6, v8

    invoke-virtual {v11, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v12, 0x800

    :cond_17
    or-int v5, v6, v12

    move-object/from16 v9, p9

    invoke-virtual {v11, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/16 v16, 0x4000

    :cond_18
    or-int v5, v5, v16

    or-int v5, v5, v19

    const v6, 0x12492493

    and-int/2addr v6, v3

    const v8, 0x12492492

    if-ne v6, v8, :cond_1a

    const v6, 0x492493

    and-int/2addr v6, v5

    const v8, 0x492492

    if-ne v6, v8, :cond_1a

    invoke-virtual {v11}, Lf1/s;->z()Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_12

    .line 2
    :cond_19
    invoke-virtual {v11}, Lf1/s;->Q()V

    move-object/from16 v11, p10

    goto/16 :goto_15

    .line 3
    :cond_1a
    :goto_12
    invoke-virtual {v11}, Lf1/s;->S()V

    and-int/lit8 v6, v14, 0x1

    const v8, -0x70001

    if-eqz v6, :cond_1c

    invoke-virtual {v11}, Lf1/s;->x()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_13

    .line 4
    :cond_1b
    invoke-virtual {v11}, Lf1/s;->Q()V

    and-int/2addr v5, v8

    move-object/from16 v8, p10

    goto :goto_14

    .line 5
    :cond_1c
    :goto_13
    sget v6, Ld1/r;->b:F

    .line 6
    new-instance v12, Ld0/h0;

    invoke-direct {v12, v6, v6, v6, v6}, Ld0/h0;-><init>(FFFF)V

    and-int/2addr v5, v8

    move-object v8, v12

    .line 7
    :goto_14
    invoke-virtual {v11}, Lf1/s;->q()V

    shl-int/lit8 v6, v3, 0x3

    and-int/lit8 v12, v6, 0x70

    or-int/lit8 v12, v12, 0x6

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v6, v12

    shr-int/lit8 v12, v3, 0x3

    and-int/lit16 v13, v12, 0x1c00

    or-int/2addr v6, v13

    shr-int/lit8 v13, v3, 0x9

    const v16, 0xe000

    and-int v17, v13, v16

    or-int v6, v6, v17

    const/high16 v17, 0x70000

    and-int v17, v13, v17

    or-int v6, v6, v17

    const/high16 v17, 0x380000

    and-int v18, v13, v17

    or-int v6, v6, v18

    shl-int/lit8 v18, v5, 0x15

    const/high16 v19, 0x1c00000

    and-int v19, v18, v19

    or-int v6, v6, v19

    const/high16 v19, 0xe000000

    and-int v19, v18, v19

    or-int v6, v6, v19

    const/high16 v19, 0x70000000

    and-int v18, v18, v19

    or-int v6, v6, v18

    shr-int/lit8 v18, v5, 0x9

    and-int/lit8 v18, v18, 0xe

    shr-int/lit8 v19, v3, 0x6

    and-int/lit8 v19, v19, 0x70

    or-int v18, v18, v19

    and-int/lit16 v3, v3, 0x380

    or-int v3, v18, v3

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v3, v13

    and-int v12, v12, v16

    or-int/2addr v3, v12

    shl-int/lit8 v5, v5, 0x6

    and-int v5, v5, v17

    or-int/2addr v3, v5

    or-int v13, v3, v21

    move-object v3, v2

    move v12, v6

    move v6, v7

    move v5, v10

    move-object v2, v15

    move-object/from16 v10, p11

    move-object v7, v1

    move-object/from16 v1, p2

    .line 8
    invoke-static/range {v0 .. v13}, Ld1/r;->a(Ljava/lang/String;Lf9/n;Lb3/i0;Lf9/n;Lf9/n;ZZLb0/k;Ld0/h0;Lc1/q2;Ln1/c;Lf1/s;II)V

    move-object v11, v8

    .line 9
    :goto_15
    invoke-virtual/range {p12 .. p12}, Lf1/s;->r()Lf1/w1;

    move-result-object v15

    if-eqz v15, :cond_1d

    new-instance v0, Lc1/s0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move v13, v14

    invoke-direct/range {v0 .. v13}, Lc1/s0;-><init>(Lc1/t0;Ljava/lang/String;Lf9/n;ZZLb3/i0;Lb0/k;Lf9/n;Lf9/n;Lc1/q2;Ld0/h0;Ln1/c;I)V

    .line 10
    iput-object v0, v15, Lf1/w1;->d:Lf9/n;

    :cond_1d
    return-void
.end method
