.class public abstract Lc1/g1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lb1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb1/g;

    .line 2
    .line 3
    const v1, 0x3dcccccd    # 0.1f

    .line 4
    .line 5
    .line 6
    const v2, 0x3da3d70a    # 0.08f

    .line 7
    .line 8
    .line 9
    const v3, 0x3e23d70a    # 0.16f

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2, v1}, Lb1/g;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lc1/g1;->a:Lb1/g;

    .line 16
    .line 17
    return-void
.end method

.method public static final a(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;Lf1/s;I)V
    .locals 22

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    move-object/from16 v7, p5

    .line 8
    .line 9
    move-object/from16 v1, p6

    .line 10
    .line 11
    move-object/from16 v14, p7

    .line 12
    .line 13
    move-object/from16 v15, p8

    .line 14
    .line 15
    move/from16 v10, p9

    .line 16
    .line 17
    const v3, 0x26c01063

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v3, v10, 0x6

    .line 24
    .line 25
    move-object/from16 v12, p0

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v15, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x2

    .line 38
    :goto_0
    or-int/2addr v3, v10

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v3, v10

    .line 41
    :goto_1
    and-int/lit8 v5, v10, 0x30

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    invoke-virtual {v15, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    const/16 v5, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v5, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v3, v5

    .line 57
    :cond_3
    and-int/lit16 v5, v10, 0x180

    .line 58
    .line 59
    if-nez v5, :cond_5

    .line 60
    .line 61
    invoke-virtual {v15, v6}, Lf1/s;->g(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    const/16 v5, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v5, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v3, v5

    .line 73
    :cond_5
    and-int/lit16 v5, v10, 0xc00

    .line 74
    .line 75
    move-object/from16 v13, p3

    .line 76
    .line 77
    if-nez v5, :cond_7

    .line 78
    .line 79
    invoke-virtual {v15, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    const/16 v5, 0x800

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v5, 0x400

    .line 89
    .line 90
    :goto_4
    or-int/2addr v3, v5

    .line 91
    :cond_7
    and-int/lit16 v5, v10, 0x6000

    .line 92
    .line 93
    if-nez v5, :cond_9

    .line 94
    .line 95
    invoke-virtual {v15, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    const/16 v5, 0x4000

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    const/16 v5, 0x2000

    .line 105
    .line 106
    :goto_5
    or-int/2addr v3, v5

    .line 107
    :cond_9
    const/high16 v5, 0x30000

    .line 108
    .line 109
    and-int/2addr v5, v10

    .line 110
    if-nez v5, :cond_b

    .line 111
    .line 112
    invoke-virtual {v15, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_a

    .line 117
    .line 118
    const/high16 v5, 0x20000

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_a
    const/high16 v5, 0x10000

    .line 122
    .line 123
    :goto_6
    or-int/2addr v3, v5

    .line 124
    :cond_b
    const/high16 v5, 0x180000

    .line 125
    .line 126
    and-int/2addr v5, v10

    .line 127
    const/4 v9, 0x0

    .line 128
    if-nez v5, :cond_d

    .line 129
    .line 130
    invoke-virtual {v15, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_c

    .line 135
    .line 136
    const/high16 v5, 0x100000

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_c
    const/high16 v5, 0x80000

    .line 140
    .line 141
    :goto_7
    or-int/2addr v3, v5

    .line 142
    :cond_d
    const/high16 v5, 0xc00000

    .line 143
    .line 144
    and-int/2addr v5, v10

    .line 145
    if-nez v5, :cond_f

    .line 146
    .line 147
    invoke-virtual {v15, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_e

    .line 152
    .line 153
    const/high16 v5, 0x800000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/high16 v5, 0x400000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v3, v5

    .line 159
    :cond_f
    const/high16 v5, 0x6000000

    .line 160
    .line 161
    and-int/2addr v5, v10

    .line 162
    if-nez v5, :cond_11

    .line 163
    .line 164
    invoke-virtual {v15, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_10

    .line 169
    .line 170
    const/high16 v5, 0x4000000

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_10
    const/high16 v5, 0x2000000

    .line 174
    .line 175
    :goto_9
    or-int/2addr v3, v5

    .line 176
    :cond_11
    const/high16 v5, 0x30000000

    .line 177
    .line 178
    and-int/2addr v5, v10

    .line 179
    if-nez v5, :cond_13

    .line 180
    .line 181
    invoke-virtual {v15, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_12

    .line 186
    .line 187
    const/high16 v5, 0x20000000

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_12
    const/high16 v5, 0x10000000

    .line 191
    .line 192
    :goto_a
    or-int/2addr v3, v5

    .line 193
    :cond_13
    const v5, 0x12492493

    .line 194
    .line 195
    .line 196
    and-int/2addr v5, v3

    .line 197
    const v11, 0x12492492

    .line 198
    .line 199
    .line 200
    if-ne v5, v11, :cond_15

    .line 201
    .line 202
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_14

    .line 207
    .line 208
    goto :goto_b

    .line 209
    :cond_14
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_1a

    .line 213
    .line 214
    :cond_15
    :goto_b
    invoke-virtual {v15}, Lf1/s;->S()V

    .line 215
    .line 216
    .line 217
    and-int/lit8 v5, v10, 0x1

    .line 218
    .line 219
    if-eqz v5, :cond_17

    .line 220
    .line 221
    invoke-virtual {v15}, Lf1/s;->x()Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_16

    .line 226
    .line 227
    goto :goto_c

    .line 228
    :cond_16
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 229
    .line 230
    .line 231
    :cond_17
    :goto_c
    invoke-virtual {v15}, Lf1/s;->q()V

    .line 232
    .line 233
    .line 234
    const v5, -0xe413d8f

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 245
    .line 246
    if-ne v5, v11, :cond_18

    .line 247
    .line 248
    invoke-static {v15}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    :cond_18
    check-cast v5, Lb0/k;

    .line 253
    .line 254
    const/4 v8, 0x0

    .line 255
    invoke-virtual {v15, v8}, Lf1/s;->p(Z)V

    .line 256
    .line 257
    .line 258
    if-eqz v6, :cond_19

    .line 259
    .line 260
    iget-wide v8, v0, Lc1/a;->a:J

    .line 261
    .line 262
    :goto_d
    move-wide/from16 v16, v8

    .line 263
    .line 264
    goto :goto_e

    .line 265
    :cond_19
    iget-wide v8, v0, Lc1/a;->c:J

    .line 266
    .line 267
    goto :goto_d

    .line 268
    :goto_e
    if-eqz v6, :cond_1a

    .line 269
    .line 270
    iget-wide v8, v0, Lc1/a;->b:J

    .line 271
    .line 272
    goto :goto_f

    .line 273
    :cond_1a
    iget-wide v8, v0, Lc1/a;->d:J

    .line 274
    .line 275
    :goto_f
    const v4, -0xe4123e0

    .line 276
    .line 277
    .line 278
    invoke-virtual {v15, v4}, Lf1/s;->W(I)V

    .line 279
    .line 280
    .line 281
    const/16 v18, 0x1

    .line 282
    .line 283
    if-nez v7, :cond_1b

    .line 284
    .line 285
    move-object/from16 v21, v5

    .line 286
    .line 287
    move-wide v11, v8

    .line 288
    const/4 v0, 0x0

    .line 289
    const/4 v9, 0x0

    .line 290
    goto/16 :goto_18

    .line 291
    .line 292
    :cond_1b
    shr-int/lit8 v4, v3, 0x6

    .line 293
    .line 294
    and-int/lit8 v4, v4, 0xe

    .line 295
    .line 296
    shr-int/lit8 v3, v3, 0x9

    .line 297
    .line 298
    and-int/lit16 v3, v3, 0x380

    .line 299
    .line 300
    or-int/2addr v3, v4

    .line 301
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    if-ne v4, v11, :cond_1c

    .line 306
    .line 307
    new-instance v4, Lp1/p;

    .line 308
    .line 309
    invoke-direct {v4}, Lp1/p;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v15, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_1c
    check-cast v4, Lp1/p;

    .line 316
    .line 317
    invoke-virtual {v15, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v19

    .line 321
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-nez v19, :cond_1e

    .line 326
    .line 327
    if-ne v0, v11, :cond_1d

    .line 328
    .line 329
    goto :goto_10

    .line 330
    :cond_1d
    move-wide/from16 v19, v8

    .line 331
    .line 332
    const/4 v9, 0x0

    .line 333
    goto :goto_11

    .line 334
    :cond_1e
    :goto_10
    new-instance v0, Lc1/d;

    .line 335
    .line 336
    move-wide/from16 v19, v8

    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    const/4 v9, 0x0

    .line 340
    invoke-direct {v0, v5, v4, v8, v9}, Lc1/d;-><init>(Lb0/k;Lp1/p;Lw8/c;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v15, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    :goto_11
    check-cast v0, Lf9/n;

    .line 347
    .line 348
    invoke-static {v15, v0, v5}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-static {v4}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    move-object v8, v0

    .line 356
    check-cast v8, Lb0/j;

    .line 357
    .line 358
    if-nez v6, :cond_1f

    .line 359
    .line 360
    iget v0, v7, Lc1/f;->e:F

    .line 361
    .line 362
    goto :goto_12

    .line 363
    :cond_1f
    instance-of v0, v8, Lb0/m;

    .line 364
    .line 365
    if-eqz v0, :cond_20

    .line 366
    .line 367
    iget v0, v7, Lc1/f;->b:F

    .line 368
    .line 369
    goto :goto_12

    .line 370
    :cond_20
    instance-of v0, v8, Lb0/h;

    .line 371
    .line 372
    if-eqz v0, :cond_21

    .line 373
    .line 374
    iget v0, v7, Lc1/f;->d:F

    .line 375
    .line 376
    goto :goto_12

    .line 377
    :cond_21
    instance-of v0, v8, Lb0/d;

    .line 378
    .line 379
    if-eqz v0, :cond_22

    .line 380
    .line 381
    iget v0, v7, Lc1/f;->c:F

    .line 382
    .line 383
    goto :goto_12

    .line 384
    :cond_22
    iget v0, v7, Lc1/f;->a:F

    .line 385
    .line 386
    :goto_12
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    if-ne v4, v11, :cond_23

    .line 391
    .line 392
    new-instance v4, Lv/c;

    .line 393
    .line 394
    new-instance v9, Ln3/f;

    .line 395
    .line 396
    invoke-direct {v9, v0}, Ln3/f;-><init>(F)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v21, v5

    .line 400
    .line 401
    sget-object v5, Lv/d;->l:Lv/w0;

    .line 402
    .line 403
    const/16 v10, 0xc

    .line 404
    .line 405
    const/4 v12, 0x0

    .line 406
    invoke-direct {v4, v9, v5, v12, v10}, Lv/c;-><init>(Ljava/lang/Object;Lv/w0;Ljava/lang/Object;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v15, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    goto :goto_13

    .line 413
    :cond_23
    move-object/from16 v21, v5

    .line 414
    .line 415
    :goto_13
    check-cast v4, Lv/c;

    .line 416
    .line 417
    new-instance v10, Ln3/f;

    .line 418
    .line 419
    invoke-direct {v10, v0}, Ln3/f;-><init>(F)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v15, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-virtual {v15, v0}, Lf1/s;->c(F)Z

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    or-int/2addr v5, v9

    .line 431
    and-int/lit8 v9, v3, 0xe

    .line 432
    .line 433
    xor-int/lit8 v9, v9, 0x6

    .line 434
    .line 435
    const/4 v12, 0x4

    .line 436
    if-le v9, v12, :cond_24

    .line 437
    .line 438
    invoke-virtual {v15, v6}, Lf1/s;->g(Z)Z

    .line 439
    .line 440
    .line 441
    move-result v9

    .line 442
    if-nez v9, :cond_25

    .line 443
    .line 444
    :cond_24
    and-int/lit8 v9, v3, 0x6

    .line 445
    .line 446
    if-ne v9, v12, :cond_26

    .line 447
    .line 448
    :cond_25
    const/4 v9, 0x1

    .line 449
    goto :goto_14

    .line 450
    :cond_26
    const/4 v9, 0x0

    .line 451
    :goto_14
    or-int/2addr v5, v9

    .line 452
    and-int/lit16 v9, v3, 0x380

    .line 453
    .line 454
    xor-int/lit16 v9, v9, 0x180

    .line 455
    .line 456
    const/16 v12, 0x100

    .line 457
    .line 458
    if-le v9, v12, :cond_27

    .line 459
    .line 460
    invoke-virtual {v15, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    if-nez v9, :cond_28

    .line 465
    .line 466
    :cond_27
    and-int/lit16 v3, v3, 0x180

    .line 467
    .line 468
    if-ne v3, v12, :cond_29

    .line 469
    .line 470
    :cond_28
    const/4 v3, 0x1

    .line 471
    goto :goto_15

    .line 472
    :cond_29
    const/4 v3, 0x0

    .line 473
    :goto_15
    or-int/2addr v3, v5

    .line 474
    invoke-virtual {v15, v8}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    or-int/2addr v3, v5

    .line 479
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    if-nez v3, :cond_2b

    .line 484
    .line 485
    if-ne v5, v11, :cond_2a

    .line 486
    .line 487
    goto :goto_16

    .line 488
    :cond_2a
    move-wide/from16 v11, v19

    .line 489
    .line 490
    const/4 v0, 0x0

    .line 491
    goto :goto_17

    .line 492
    :cond_2b
    :goto_16
    new-instance v3, Lc1/e;

    .line 493
    .line 494
    const/4 v9, 0x0

    .line 495
    move v5, v0

    .line 496
    move-wide/from16 v11, v19

    .line 497
    .line 498
    const/4 v0, 0x0

    .line 499
    invoke-direct/range {v3 .. v9}, Lc1/e;-><init>(Lv/c;FZLc1/f;Lb0/j;Lw8/c;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v15, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    move-object v5, v3

    .line 506
    :goto_17
    check-cast v5, Lf9/n;

    .line 507
    .line 508
    invoke-static {v15, v5, v10}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    iget-object v9, v4, Lv/c;->c:Lv/k;

    .line 512
    .line 513
    :goto_18
    invoke-virtual {v15, v0}, Lf1/s;->p(Z)V

    .line 514
    .line 515
    .line 516
    if-eqz v9, :cond_2c

    .line 517
    .line 518
    iget-object v3, v9, Lv/k;->b:Lf1/k1;

    .line 519
    .line 520
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    check-cast v3, Ln3/f;

    .line 525
    .line 526
    iget v3, v3, Ln3/f;->a:F

    .line 527
    .line 528
    goto :goto_19

    .line 529
    :cond_2c
    int-to-float v3, v0

    .line 530
    :goto_19
    sget-object v4, Lc1/g;->b:Lc1/g;

    .line 531
    .line 532
    invoke-static {v2, v4}, Ly2/k;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    new-instance v5, Lc1/i;

    .line 537
    .line 538
    invoke-direct {v5, v11, v12, v1, v14}, Lc1/i;-><init>(JLd0/h0;Ln1/c;)V

    .line 539
    .line 540
    .line 541
    const v6, 0x3902db2e

    .line 542
    .line 543
    .line 544
    invoke-static {v6, v5, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    int-to-float v6, v0

    .line 549
    sget-object v7, Lc1/m2;->a:Lf1/c0;

    .line 550
    .line 551
    invoke-virtual {v15, v7}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v8

    .line 555
    check-cast v8, Ln3/f;

    .line 556
    .line 557
    iget v8, v8, Ln3/f;->a:F

    .line 558
    .line 559
    add-float/2addr v8, v6

    .line 560
    sget-object v6, Lc1/a0;->a:Lf1/c0;

    .line 561
    .line 562
    new-instance v9, Ly1/q;

    .line 563
    .line 564
    invoke-direct {v9, v11, v12}, Ly1/q;-><init>(J)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v6, v9}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    new-instance v9, Ln3/f;

    .line 572
    .line 573
    invoke-direct {v9, v8}, Ln3/f;-><init>(F)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v7, v9}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    const/4 v9, 0x2

    .line 581
    new-array v9, v9, [Lf1/u1;

    .line 582
    .line 583
    aput-object v6, v9, v0

    .line 584
    .line 585
    aput-object v7, v9, v18

    .line 586
    .line 587
    move v12, v3

    .line 588
    new-instance v3, Lc1/l2;

    .line 589
    .line 590
    move-object v0, v13

    .line 591
    move-object v13, v5

    .line 592
    move-object v5, v0

    .line 593
    move-object/from16 v11, p0

    .line 594
    .line 595
    move/from16 v10, p2

    .line 596
    .line 597
    move-object v0, v9

    .line 598
    move-wide/from16 v6, v16

    .line 599
    .line 600
    move-object/from16 v9, v21

    .line 601
    .line 602
    invoke-direct/range {v3 .. v13}, Lc1/l2;-><init>(Lr1/p;Ly1/l0;JFLb0/k;ZLf9/a;FLn1/c;)V

    .line 603
    .line 604
    .line 605
    const v4, 0x4c46b75c    # 5.2092272E7f

    .line 606
    .line 607
    .line 608
    invoke-static {v4, v3, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    const/16 v4, 0x38

    .line 613
    .line 614
    invoke-static {v0, v3, v15, v4}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 615
    .line 616
    .line 617
    :goto_1a
    invoke-virtual {v15}, Lf1/s;->r()Lf1/w1;

    .line 618
    .line 619
    .line 620
    move-result-object v10

    .line 621
    if-eqz v10, :cond_2d

    .line 622
    .line 623
    new-instance v0, Lc1/j;

    .line 624
    .line 625
    move/from16 v3, p2

    .line 626
    .line 627
    move-object/from16 v4, p3

    .line 628
    .line 629
    move-object/from16 v5, p4

    .line 630
    .line 631
    move-object/from16 v6, p5

    .line 632
    .line 633
    move/from16 v9, p9

    .line 634
    .line 635
    move-object v7, v1

    .line 636
    move-object v8, v14

    .line 637
    move-object/from16 v1, p0

    .line 638
    .line 639
    invoke-direct/range {v0 .. v9}, Lc1/j;-><init>(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;I)V

    .line 640
    .line 641
    .line 642
    iput-object v0, v10, Lf1/w1;->d:Lf9/n;

    .line 643
    .line 644
    :cond_2d
    return-void
.end method

.method public static final b(Lr1/p;Ly1/l0;Lc1/l;Lc1/m;Ln1/c;Lf1/s;II)V
    .locals 17

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    const v1, 0x464f98b1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p6, 0x6

    .line 10
    .line 11
    move-object/from16 v4, p0

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    :goto_0
    or-int v1, p6, v1

    .line 25
    .line 26
    :goto_1
    move-object/from16 v5, p1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    move/from16 v1, p6

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :goto_2
    invoke-virtual {v0, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    const/16 v3, 0x20

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    const/16 v3, 0x10

    .line 42
    .line 43
    :goto_3
    or-int/2addr v1, v3

    .line 44
    and-int/lit8 v3, p7, 0x4

    .line 45
    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    move-object/from16 v3, p2

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    const/16 v6, 0x100

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_3
    move-object/from16 v3, p2

    .line 60
    .line 61
    :cond_4
    const/16 v6, 0x80

    .line 62
    .line 63
    :goto_4
    or-int/2addr v1, v6

    .line 64
    and-int/lit8 v6, p7, 0x8

    .line 65
    .line 66
    if-nez v6, :cond_5

    .line 67
    .line 68
    move-object/from16 v6, p3

    .line 69
    .line 70
    invoke-virtual {v0, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_6

    .line 75
    .line 76
    const/16 v7, 0x800

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_5
    move-object/from16 v6, p3

    .line 80
    .line 81
    :cond_6
    const/16 v7, 0x400

    .line 82
    .line 83
    :goto_5
    or-int/2addr v1, v7

    .line 84
    or-int/lit16 v1, v1, 0x6000

    .line 85
    .line 86
    const v7, 0x12493

    .line 87
    .line 88
    .line 89
    and-int/2addr v1, v7

    .line 90
    const v7, 0x12492

    .line 91
    .line 92
    .line 93
    if-ne v1, v7, :cond_8

    .line 94
    .line 95
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_7
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 103
    .line 104
    .line 105
    move-object/from16 v13, p4

    .line 106
    .line 107
    move-object v7, v6

    .line 108
    move-object v6, v3

    .line 109
    goto/16 :goto_b

    .line 110
    .line 111
    :cond_8
    :goto_6
    invoke-virtual {v0}, Lf1/s;->S()V

    .line 112
    .line 113
    .line 114
    and-int/lit8 v1, p6, 0x1

    .line 115
    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    invoke-virtual {v0}, Lf1/s;->x()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_9

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_9
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 126
    .line 127
    .line 128
    move-object v1, v3

    .line 129
    move-object v11, v6

    .line 130
    goto :goto_a

    .line 131
    :cond_a
    :goto_7
    and-int/lit8 v1, p7, 0x4

    .line 132
    .line 133
    if-eqz v1, :cond_b

    .line 134
    .line 135
    sget-object v1, Lc1/y;->a:Lf1/w2;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lc1/w;

    .line 142
    .line 143
    invoke-static {v1}, Lc1/g1;->f(Lc1/w;)Lc1/l;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    goto :goto_8

    .line 148
    :cond_b
    move-object v1, v3

    .line 149
    :goto_8
    and-int/lit8 v3, p7, 0x8

    .line 150
    .line 151
    if-eqz v3, :cond_c

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    const/16 v6, 0x3f

    .line 155
    .line 156
    invoke-static {v3, v6}, Lc1/g1;->e(FI)Lc1/m;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    goto :goto_9

    .line 161
    :cond_c
    move-object v3, v6

    .line 162
    :goto_9
    move-object v11, v3

    .line 163
    :goto_a
    invoke-virtual {v0}, Lf1/s;->q()V

    .line 164
    .line 165
    .line 166
    iget-wide v6, v1, Lc1/l;->a:J

    .line 167
    .line 168
    iget-wide v8, v1, Lc1/l;->b:J

    .line 169
    .line 170
    iget v3, v11, Lc1/m;->a:F

    .line 171
    .line 172
    const v10, -0x691c96f5

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v10}, Lf1/s;->W(I)V

    .line 176
    .line 177
    .line 178
    const v10, -0x2bccbebc

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v10}, Lf1/s;->W(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 189
    .line 190
    if-ne v10, v12, :cond_d

    .line 191
    .line 192
    new-instance v10, Ln3/f;

    .line 193
    .line 194
    invoke-direct {v10, v3}, Ln3/f;-><init>(F)V

    .line 195
    .line 196
    .line 197
    invoke-static {v10}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v0, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_d
    check-cast v10, Lf1/b1;

    .line 205
    .line 206
    const/4 v3, 0x0

    .line 207
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    check-cast v10, Ln3/f;

    .line 218
    .line 219
    iget v10, v10, Ln3/f;->a:F

    .line 220
    .line 221
    new-instance v12, Lc1/n;

    .line 222
    .line 223
    move-object/from16 v13, p4

    .line 224
    .line 225
    invoke-direct {v12, v3, v13}, Lc1/n;-><init>(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    const v14, 0x27956c36

    .line 229
    .line 230
    .line 231
    invoke-static {v14, v12, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    int-to-float v14, v3

    .line 236
    sget-object v15, Lc1/m2;->a:Lf1/c0;

    .line 237
    .line 238
    invoke-virtual {v0, v15}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v16

    .line 242
    const/16 p2, 0x0

    .line 243
    .line 244
    move-object/from16 v3, v16

    .line 245
    .line 246
    check-cast v3, Ln3/f;

    .line 247
    .line 248
    iget v3, v3, Ln3/f;->a:F

    .line 249
    .line 250
    add-float/2addr v3, v14

    .line 251
    sget-object v14, Lc1/a0;->a:Lf1/c0;

    .line 252
    .line 253
    new-instance v2, Ly1/q;

    .line 254
    .line 255
    invoke-direct {v2, v8, v9}, Ly1/q;-><init>(J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v2}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    new-instance v8, Ln3/f;

    .line 263
    .line 264
    invoke-direct {v8, v3}, Ln3/f;-><init>(F)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v15, v8}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    const/4 v9, 0x2

    .line 272
    new-array v14, v9, [Lf1/u1;

    .line 273
    .line 274
    aput-object v2, v14, p2

    .line 275
    .line 276
    const/4 v2, 0x1

    .line 277
    aput-object v8, v14, v2

    .line 278
    .line 279
    move v8, v3

    .line 280
    new-instance v3, Lc1/k2;

    .line 281
    .line 282
    move v9, v10

    .line 283
    move-object v10, v12

    .line 284
    invoke-direct/range {v3 .. v10}, Lc1/k2;-><init>(Lr1/p;Ly1/l0;JFFLn1/c;)V

    .line 285
    .line 286
    .line 287
    const v2, -0x43a11cd

    .line 288
    .line 289
    .line 290
    invoke-static {v2, v3, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    const/16 v3, 0x38

    .line 295
    .line 296
    invoke-static {v14, v2, v0, v3}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 297
    .line 298
    .line 299
    move-object v6, v1

    .line 300
    move-object v7, v11

    .line 301
    :goto_b
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-eqz v0, :cond_e

    .line 306
    .line 307
    new-instance v3, Lc1/o;

    .line 308
    .line 309
    move-object/from16 v4, p0

    .line 310
    .line 311
    move-object/from16 v5, p1

    .line 312
    .line 313
    move/from16 v9, p6

    .line 314
    .line 315
    move/from16 v10, p7

    .line 316
    .line 317
    move-object v8, v13

    .line 318
    invoke-direct/range {v3 .. v10}, Lc1/o;-><init>(Lr1/p;Ly1/l0;Lc1/l;Lc1/m;Ln1/c;II)V

    .line 319
    .line 320
    .line 321
    iput-object v3, v0, Lf1/w1;->d:Lf9/n;

    .line 322
    .line 323
    :cond_e
    return-void
.end method

.method public static final c(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;Lf1/s;I)V
    .locals 20

    .line 1
    move-object/from16 v8, p8

    .line 2
    .line 3
    const v0, -0x6665721d

    .line 4
    .line 5
    .line 6
    invoke-virtual {v8, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    const v0, 0x6d92580

    .line 10
    .line 11
    .line 12
    or-int v0, p9, v0

    .line 13
    .line 14
    const v1, 0x12492493

    .line 15
    .line 16
    .line 17
    and-int/2addr v0, v1

    .line 18
    const v1, 0x12492492

    .line 19
    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 31
    .line 32
    .line 33
    move/from16 v13, p2

    .line 34
    .line 35
    move-object/from16 v14, p3

    .line 36
    .line 37
    move-object/from16 v15, p4

    .line 38
    .line 39
    move-object/from16 v16, p5

    .line 40
    .line 41
    move-object/from16 v17, p6

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-virtual {v8}, Lf1/s;->S()V

    .line 46
    .line 47
    .line 48
    and-int/lit8 v0, p9, 0x1

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v8}, Lf1/s;->x()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 60
    .line 61
    .line 62
    move/from16 v2, p2

    .line 63
    .line 64
    move-object/from16 v3, p3

    .line 65
    .line 66
    move-object/from16 v4, p4

    .line 67
    .line 68
    move-object/from16 v5, p5

    .line 69
    .line 70
    move-object/from16 v6, p6

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :goto_1
    sget-object v0, Lc1/b;->a:Ld0/h0;

    .line 74
    .line 75
    sget v0, Le1/i;->b:I

    .line 76
    .line 77
    invoke-static {v0, v8}, Lc1/l1;->a(ILf1/s;)Ly1/l0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Lc1/y;->a:Lf1/w2;

    .line 82
    .line 83
    invoke-virtual {v8, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lc1/w;

    .line 88
    .line 89
    iget-object v2, v1, Lc1/w;->K:Lc1/a;

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    new-instance v9, Lc1/a;

    .line 94
    .line 95
    const/16 v2, 0x20

    .line 96
    .line 97
    invoke-static {v1, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v10

    .line 101
    sget v2, Le1/i;->g:I

    .line 102
    .line 103
    invoke-static {v1, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v12

    .line 107
    sget v2, Le1/i;->c:I

    .line 108
    .line 109
    invoke-static {v1, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    const v4, 0x3df5c28f    # 0.12f

    .line 114
    .line 115
    .line 116
    invoke-static {v4, v2, v3}, Ly1/q;->b(FJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide v14

    .line 120
    sget v2, Le1/i;->d:I

    .line 121
    .line 122
    invoke-static {v1, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    const v4, 0x3ec28f5c    # 0.38f

    .line 127
    .line 128
    .line 129
    invoke-static {v4, v2, v3}, Ly1/q;->b(FJ)J

    .line 130
    .line 131
    .line 132
    move-result-wide v16

    .line 133
    invoke-direct/range {v9 .. v17}, Lc1/a;-><init>(JJJJ)V

    .line 134
    .line 135
    .line 136
    iput-object v9, v1, Lc1/w;->K:Lc1/a;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    move-object v9, v2

    .line 140
    :goto_2
    sget v2, Le1/i;->a:F

    .line 141
    .line 142
    sget v3, Le1/i;->h:F

    .line 143
    .line 144
    sget v4, Le1/i;->e:F

    .line 145
    .line 146
    sget v5, Le1/i;->f:F

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    int-to-float v6, v1

    .line 150
    new-instance v1, Lc1/f;

    .line 151
    .line 152
    invoke-direct/range {v1 .. v6}, Lc1/f;-><init>(FFFFF)V

    .line 153
    .line 154
    .line 155
    sget-object v2, Lc1/b;->a:Ld0/h0;

    .line 156
    .line 157
    const/4 v3, 0x1

    .line 158
    move-object v3, v0

    .line 159
    move-object v5, v1

    .line 160
    move-object v6, v2

    .line 161
    move-object v4, v9

    .line 162
    const/4 v2, 0x1

    .line 163
    :goto_3
    invoke-virtual {v8}, Lf1/s;->q()V

    .line 164
    .line 165
    .line 166
    const v9, 0x36d801b6

    .line 167
    .line 168
    .line 169
    move-object/from16 v0, p0

    .line 170
    .line 171
    move-object/from16 v1, p1

    .line 172
    .line 173
    move-object/from16 v7, p7

    .line 174
    .line 175
    invoke-static/range {v0 .. v9}, Lc1/g1;->a(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;Lf1/s;I)V

    .line 176
    .line 177
    .line 178
    move v13, v2

    .line 179
    move-object v14, v3

    .line 180
    move-object v15, v4

    .line 181
    move-object/from16 v16, v5

    .line 182
    .line 183
    move-object/from16 v17, v6

    .line 184
    .line 185
    :goto_4
    invoke-virtual/range {p8 .. p8}, Lf1/s;->r()Lf1/w1;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    new-instance v10, Lc1/k;

    .line 192
    .line 193
    move-object/from16 v11, p0

    .line 194
    .line 195
    move-object/from16 v12, p1

    .line 196
    .line 197
    move-object/from16 v18, p7

    .line 198
    .line 199
    move/from16 v19, p9

    .line 200
    .line 201
    invoke-direct/range {v10 .. v19}, Lc1/k;-><init>(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;I)V

    .line 202
    .line 203
    .line 204
    iput-object v10, v0, Lf1/w1;->d:Lf9/n;

    .line 205
    .line 206
    :cond_5
    return-void
.end method

.method public static final d(Lr1/p;FJLf1/s;I)V
    .locals 9

    .line 1
    const v0, 0x47a9d25

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    or-int/lit16 v0, p5, 0x86

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0x93

    .line 10
    .line 11
    const/16 v1, 0x92

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p4}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    :goto_0
    move-object v4, p0

    .line 26
    move-wide v6, p2

    .line 27
    goto :goto_4

    .line 28
    :cond_1
    :goto_1
    invoke-virtual {p4}, Lf1/s;->S()V

    .line 29
    .line 30
    .line 31
    and-int/lit8 v0, p5, 0x1

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p4}, Lf1/s;->x()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    :goto_2
    sget p0, Lc1/e0;->a:I

    .line 47
    .line 48
    sget p0, Le1/e;->a:F

    .line 49
    .line 50
    sget-object p0, Lc1/y;->a:Lf1/w2;

    .line 51
    .line 52
    invoke-virtual {p4, p0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lc1/w;

    .line 57
    .line 58
    const/16 p2, 0x19

    .line 59
    .line 60
    invoke-static {p0, p2}, Lc1/y;->c(Lc1/w;I)J

    .line 61
    .line 62
    .line 63
    move-result-wide p2

    .line 64
    sget-object p0, Lr1/m;->a:Lr1/m;

    .line 65
    .line 66
    :goto_3
    invoke-virtual {p4}, Lf1/s;->q()V

    .line 67
    .line 68
    .line 69
    sget-object v0, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 70
    .line 71
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p4, p2, p3}, Lf1/s;->e(J)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 90
    .line 91
    if-ne v2, v1, :cond_5

    .line 92
    .line 93
    :cond_4
    new-instance v2, Lc1/f0;

    .line 94
    .line 95
    invoke-direct {v2, p1, p2, p3}, Lc1/f0;-><init>(FJ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    check-cast v2, Lf9/k;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-static {v1, p4, v2, v0}, Lp4/e;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :goto_4
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-eqz p0, :cond_6

    .line 113
    .line 114
    new-instance v3, Lc1/g0;

    .line 115
    .line 116
    move v5, p1

    .line 117
    move v8, p5

    .line 118
    invoke-direct/range {v3 .. v8}, Lc1/g0;-><init>(Lr1/p;FJI)V

    .line 119
    .line 120
    .line 121
    iput-object v3, p0, Lf1/w1;->d:Lf9/n;

    .line 122
    .line 123
    :cond_6
    return-void
.end method

.method public static e(FI)Lc1/m;
    .locals 7

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget p0, Le1/h;->a:F

    .line 6
    .line 7
    :cond_0
    move v1, p0

    .line 8
    sget v2, Le1/h;->h:F

    .line 9
    .line 10
    sget v3, Le1/h;->f:F

    .line 11
    .line 12
    sget v4, Le1/h;->g:F

    .line 13
    .line 14
    sget v5, Le1/h;->e:F

    .line 15
    .line 16
    sget v6, Le1/h;->c:F

    .line 17
    .line 18
    new-instance v0, Lc1/m;

    .line 19
    .line 20
    invoke-direct/range {v0 .. v6}, Lc1/m;-><init>(FFFFFF)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static f(Lc1/w;)Lc1/l;
    .locals 10

    .line 1
    iget-object v0, p0, Lc1/w;->L:Lc1/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lc1/l;

    .line 6
    .line 7
    sget v0, Le1/h;->a:F

    .line 8
    .line 9
    const/16 v0, 0x27

    .line 10
    .line 11
    invoke-static {p0, v0}, Lc1/y;->c(Lc1/w;I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static {p0, v0}, Lc1/y;->c(Lc1/w;I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-static {p0, v4, v5}, Lc1/y;->a(Lc1/w;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    sget v6, Le1/h;->b:I

    .line 24
    .line 25
    invoke-static {p0, v6}, Lc1/y;->c(Lc1/w;I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    sget v8, Le1/h;->d:F

    .line 30
    .line 31
    invoke-static {v8, v6, v7}, Ly1/q;->b(FJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    invoke-static {p0, v0}, Lc1/y;->c(Lc1/w;I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    invoke-static {v6, v7, v8, v9}, Ly1/h0;->k(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-static {p0, v0}, Lc1/y;->c(Lc1/w;I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-static {p0, v8, v9}, Lc1/y;->a(Lc1/w;J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    const v0, 0x3ec28f5c    # 0.38f

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v8, v9}, Ly1/q;->b(FJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    invoke-direct/range {v1 .. v9}, Lc1/l;-><init>(JJJJ)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lc1/w;->L:Lc1/l;

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_0
    return-object v0
.end method
