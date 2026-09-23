.class public final Lk2/l;
.super Lk2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final c:Lr1/o;

.field public final d:Lj/g;

.field public final e:Ls/q;

.field public f:Lq2/h1;

.field public g:Lk2/o;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lr1/o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk2/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk2/l;->c:Lr1/o;

    .line 5
    .line 6
    new-instance p1, Lj/g;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p1, v0}, Lj/g;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [J

    .line 14
    .line 15
    iput-object v1, p1, Lj/g;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, p0, Lk2/l;->d:Lj/g;

    .line 18
    .line 19
    new-instance p1, Ls/q;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ls/q;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lk2/l;->e:Ls/q;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lk2/l;->i:Z

    .line 28
    .line 29
    iput-boolean p1, p0, Lk2/l;->j:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ls/q;Lo2/w;Lk2/i;Z)Z
    .locals 52

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-super/range {p0 .. p4}, Lk2/m;->a(Ls/q;Lo2/w;Lk2/i;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-object v5, v0, Lk2/l;->c:Lr1/o;

    .line 14
    .line 15
    iget-boolean v6, v5, Lr1/o;->n:Z

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_0
    const/4 v8, 0x0

    .line 22
    :goto_0
    if-eqz v5, :cond_8

    .line 23
    .line 24
    instance-of v10, v5, Lq2/v1;

    .line 25
    .line 26
    const/16 v11, 0x10

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    check-cast v5, Lq2/v1;

    .line 31
    .line 32
    invoke-static {v5, v11}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iput-object v5, v0, Lk2/l;->f:Lq2/h1;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget v10, v5, Lr1/o;->c:I

    .line 40
    .line 41
    and-int/2addr v10, v11

    .line 42
    if-eqz v10, :cond_7

    .line 43
    .line 44
    instance-of v10, v5, Lq2/m;

    .line 45
    .line 46
    if-eqz v10, :cond_7

    .line 47
    .line 48
    move-object v10, v5

    .line 49
    check-cast v10, Lq2/m;

    .line 50
    .line 51
    iget-object v10, v10, Lq2/m;->p:Lr1/o;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    :goto_1
    if-eqz v10, :cond_6

    .line 55
    .line 56
    iget v12, v10, Lr1/o;->c:I

    .line 57
    .line 58
    and-int/2addr v12, v11

    .line 59
    if-eqz v12, :cond_5

    .line 60
    .line 61
    add-int/lit8 v9, v9, 0x1

    .line 62
    .line 63
    if-ne v9, v7, :cond_2

    .line 64
    .line 65
    move-object v5, v10

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    if-nez v8, :cond_3

    .line 68
    .line 69
    new-instance v8, Lh1/e;

    .line 70
    .line 71
    new-array v12, v11, [Lr1/o;

    .line 72
    .line 73
    invoke-direct {v8, v12}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {v8, v5}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    :cond_4
    invoke-virtual {v8, v10}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_2
    iget-object v10, v10, Lr1/o;->f:Lr1/o;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    if-ne v9, v7, :cond_7

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    :goto_3
    invoke-static {v8}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_0

    .line 96
    :cond_8
    iget-object v5, v0, Lk2/l;->f:Lq2/h1;

    .line 97
    .line 98
    if-nez v5, :cond_9

    .line 99
    .line 100
    :goto_4
    return v7

    .line 101
    :cond_9
    invoke-virtual {v1}, Ls/q;->h()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    const/4 v8, 0x0

    .line 106
    :goto_5
    iget-object v10, v0, Lk2/l;->e:Ls/q;

    .line 107
    .line 108
    iget-object v11, v0, Lk2/l;->d:Lj/g;

    .line 109
    .line 110
    if-ge v8, v5, :cond_12

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Ls/q;->e(I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v12

    .line 116
    invoke-virtual {v1, v8}, Ls/q;->i(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    check-cast v14, Lk2/w;

    .line 121
    .line 122
    invoke-virtual {v11, v12, v13}, Lj/g;->c(J)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-eqz v11, :cond_11

    .line 127
    .line 128
    const/4 v15, 0x1

    .line 129
    const/16 v16, 0x0

    .line 130
    .line 131
    iget-wide v6, v14, Lk2/w;->g:J

    .line 132
    .line 133
    iget-object v11, v14, Lk2/w;->k:Ljava/util/ArrayList;

    .line 134
    .line 135
    move-object/from16 v17, v10

    .line 136
    .line 137
    iget-wide v9, v14, Lk2/w;->c:J

    .line 138
    .line 139
    const-wide v18, 0x7fffffff7fffffffL

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    and-long v20, v6, v18

    .line 145
    .line 146
    const-wide v22, 0x7fffff007fffffL

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    add-long v20, v20, v22

    .line 152
    .line 153
    const-wide v24, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    and-long v20, v20, v24

    .line 159
    .line 160
    const-wide/16 v26, 0x0

    .line 161
    .line 162
    cmp-long v28, v20, v26

    .line 163
    .line 164
    if-nez v28, :cond_10

    .line 165
    .line 166
    and-long v20, v9, v18

    .line 167
    .line 168
    add-long v20, v20, v22

    .line 169
    .line 170
    and-long v20, v20, v24

    .line 171
    .line 172
    cmp-long v28, v20, v26

    .line 173
    .line 174
    if-nez v28, :cond_10

    .line 175
    .line 176
    const/16 v20, 0x1

    .line 177
    .line 178
    new-instance v15, Ljava/util/ArrayList;

    .line 179
    .line 180
    sget-object v21, Ls8/w;->a:Ls8/w;

    .line 181
    .line 182
    if-nez v11, :cond_a

    .line 183
    .line 184
    move-object/from16 v28, v21

    .line 185
    .line 186
    :goto_6
    move/from16 v49, v4

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    move-object/from16 v28, v11

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .line 198
    .line 199
    if-nez v11, :cond_b

    .line 200
    .line 201
    move-object/from16 v11, v21

    .line 202
    .line 203
    :cond_b
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    move/from16 v21, v5

    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    :goto_8
    if-ge v5, v4, :cond_d

    .line 211
    .line 212
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v28

    .line 216
    move/from16 v29, v4

    .line 217
    .line 218
    move-object/from16 v4, v28

    .line 219
    .line 220
    check-cast v4, Lk2/c;

    .line 221
    .line 222
    move-wide/from16 v50, v12

    .line 223
    .line 224
    move-object v13, v11

    .line 225
    iget-wide v11, v4, Lk2/c;->b:J

    .line 226
    .line 227
    and-long v30, v11, v18

    .line 228
    .line 229
    add-long v30, v30, v22

    .line 230
    .line 231
    and-long v30, v30, v24

    .line 232
    .line 233
    cmp-long v28, v30, v26

    .line 234
    .line 235
    if-nez v28, :cond_c

    .line 236
    .line 237
    new-instance v30, Lk2/c;

    .line 238
    .line 239
    move-object/from16 v37, v13

    .line 240
    .line 241
    move-object/from16 v28, v14

    .line 242
    .line 243
    iget-wide v13, v4, Lk2/c;->a:J

    .line 244
    .line 245
    move/from16 v38, v5

    .line 246
    .line 247
    iget-object v5, v0, Lk2/l;->f:Lq2/h1;

    .line 248
    .line 249
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v2, v11, v12}, Lq2/h1;->P0(Lo2/w;J)J

    .line 253
    .line 254
    .line 255
    move-result-wide v33

    .line 256
    iget-wide v4, v4, Lk2/c;->c:J

    .line 257
    .line 258
    move-wide/from16 v35, v4

    .line 259
    .line 260
    move-wide/from16 v31, v13

    .line 261
    .line 262
    invoke-direct/range {v30 .. v36}, Lk2/c;-><init>(JJJ)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v4, v30

    .line 266
    .line 267
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_c
    move/from16 v38, v5

    .line 272
    .line 273
    move-object/from16 v37, v13

    .line 274
    .line 275
    move-object/from16 v28, v14

    .line 276
    .line 277
    :goto_9
    add-int/lit8 v5, v38, 0x1

    .line 278
    .line 279
    move-object/from16 v14, v28

    .line 280
    .line 281
    move/from16 v4, v29

    .line 282
    .line 283
    move-object/from16 v11, v37

    .line 284
    .line 285
    move-wide/from16 v12, v50

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_d
    move-wide/from16 v50, v12

    .line 289
    .line 290
    move-object/from16 v28, v14

    .line 291
    .line 292
    iget-object v4, v0, Lk2/l;->f:Lq2/h1;

    .line 293
    .line 294
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v2, v6, v7}, Lq2/h1;->P0(Lo2/w;J)J

    .line 298
    .line 299
    .line 300
    move-result-wide v40

    .line 301
    iget-object v4, v0, Lk2/l;->f:Lq2/h1;

    .line 302
    .line 303
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v2, v9, v10}, Lq2/h1;->P0(Lo2/w;J)J

    .line 307
    .line 308
    .line 309
    move-result-wide v34

    .line 310
    iget-wide v4, v14, Lk2/w;->a:J

    .line 311
    .line 312
    iget-wide v6, v14, Lk2/w;->b:J

    .line 313
    .line 314
    iget-boolean v9, v14, Lk2/w;->d:Z

    .line 315
    .line 316
    iget-wide v10, v14, Lk2/w;->f:J

    .line 317
    .line 318
    iget-boolean v12, v14, Lk2/w;->h:Z

    .line 319
    .line 320
    iget v13, v14, Lk2/w;->i:I

    .line 321
    .line 322
    move-wide/from16 v30, v4

    .line 323
    .line 324
    iget-wide v4, v14, Lk2/w;->j:J

    .line 325
    .line 326
    iget v2, v14, Lk2/w;->e:F

    .line 327
    .line 328
    new-instance v29, Lk2/w;

    .line 329
    .line 330
    move-wide/from16 v45, v4

    .line 331
    .line 332
    iget-wide v4, v14, Lk2/w;->l:J

    .line 333
    .line 334
    move/from16 v37, v2

    .line 335
    .line 336
    move-wide/from16 v47, v4

    .line 337
    .line 338
    move-wide/from16 v32, v6

    .line 339
    .line 340
    move/from16 v36, v9

    .line 341
    .line 342
    move-wide/from16 v38, v10

    .line 343
    .line 344
    move/from16 v42, v12

    .line 345
    .line 346
    move/from16 v43, v13

    .line 347
    .line 348
    move-object/from16 v44, v15

    .line 349
    .line 350
    invoke-direct/range {v29 .. v48}, Lk2/w;-><init>(JJJZFJJZILjava/util/ArrayList;JJ)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v2, v29

    .line 354
    .line 355
    iget-object v4, v14, Lk2/w;->o:Lk2/w;

    .line 356
    .line 357
    if-nez v4, :cond_e

    .line 358
    .line 359
    move-object v4, v14

    .line 360
    :cond_e
    iput-object v4, v2, Lk2/w;->o:Lk2/w;

    .line 361
    .line 362
    iget-object v4, v14, Lk2/w;->o:Lk2/w;

    .line 363
    .line 364
    if-nez v4, :cond_f

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_f
    move-object v14, v4

    .line 368
    :goto_a
    iput-object v14, v2, Lk2/w;->o:Lk2/w;

    .line 369
    .line 370
    move-object/from16 v6, v17

    .line 371
    .line 372
    move-wide/from16 v4, v50

    .line 373
    .line 374
    invoke-virtual {v6, v4, v5, v2}, Ls/q;->f(JLjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_10
    move/from16 v49, v4

    .line 379
    .line 380
    move/from16 v21, v5

    .line 381
    .line 382
    :goto_b
    const/16 v20, 0x1

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_11
    move/from16 v49, v4

    .line 386
    .line 387
    move/from16 v21, v5

    .line 388
    .line 389
    const/16 v16, 0x0

    .line 390
    .line 391
    goto :goto_b

    .line 392
    :goto_c
    add-int/lit8 v8, v8, 0x1

    .line 393
    .line 394
    move-object/from16 v2, p2

    .line 395
    .line 396
    move/from16 v5, v21

    .line 397
    .line 398
    move/from16 v4, v49

    .line 399
    .line 400
    const/4 v7, 0x1

    .line 401
    goto/16 :goto_5

    .line 402
    .line 403
    :cond_12
    move/from16 v49, v4

    .line 404
    .line 405
    move-object v6, v10

    .line 406
    const/16 v16, 0x0

    .line 407
    .line 408
    const/16 v20, 0x1

    .line 409
    .line 410
    invoke-virtual {v6}, Ls/q;->h()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-nez v2, :cond_13

    .line 415
    .line 416
    const/4 v2, 0x0

    .line 417
    iput v2, v11, Lj/g;->b:I

    .line 418
    .line 419
    iget-object v1, v0, Lk2/m;->a:Lh1/e;

    .line 420
    .line 421
    invoke-virtual {v1}, Lh1/e;->h()V

    .line 422
    .line 423
    .line 424
    return v20

    .line 425
    :cond_13
    iget v2, v11, Lj/g;->b:I

    .line 426
    .line 427
    add-int/lit8 v2, v2, -0x1

    .line 428
    .line 429
    :goto_d
    const/4 v4, -0x1

    .line 430
    if-ge v4, v2, :cond_1b

    .line 431
    .line 432
    iget-object v5, v11, Lj/g;->c:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v5, [J

    .line 435
    .line 436
    aget-wide v7, v5, v2

    .line 437
    .line 438
    iget-boolean v5, v1, Ls/q;->a:Z

    .line 439
    .line 440
    if-eqz v5, :cond_17

    .line 441
    .line 442
    iget v5, v1, Ls/q;->d:I

    .line 443
    .line 444
    iget-object v9, v1, Ls/q;->b:[J

    .line 445
    .line 446
    iget-object v10, v1, Ls/q;->c:[Ljava/lang/Object;

    .line 447
    .line 448
    const/4 v12, 0x0

    .line 449
    const/4 v13, 0x0

    .line 450
    :goto_e
    if-ge v13, v5, :cond_16

    .line 451
    .line 452
    aget-object v14, v10, v13

    .line 453
    .line 454
    sget-object v15, Ls/r;->a:Ljava/lang/Object;

    .line 455
    .line 456
    if-eq v14, v15, :cond_15

    .line 457
    .line 458
    if-eq v13, v12, :cond_14

    .line 459
    .line 460
    aget-wide v17, v9, v13

    .line 461
    .line 462
    aput-wide v17, v9, v12

    .line 463
    .line 464
    aput-object v14, v10, v12

    .line 465
    .line 466
    aput-object v16, v10, v13

    .line 467
    .line 468
    :cond_14
    add-int/lit8 v12, v12, 0x1

    .line 469
    .line 470
    :cond_15
    add-int/lit8 v13, v13, 0x1

    .line 471
    .line 472
    goto :goto_e

    .line 473
    :cond_16
    const/4 v13, 0x0

    .line 474
    iput-boolean v13, v1, Ls/q;->a:Z

    .line 475
    .line 476
    iput v12, v1, Ls/q;->d:I

    .line 477
    .line 478
    :cond_17
    iget-object v5, v1, Ls/q;->b:[J

    .line 479
    .line 480
    iget v9, v1, Ls/q;->d:I

    .line 481
    .line 482
    invoke-static {v5, v9, v7, v8}, Lt/a;->b([JIJ)I

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-ltz v5, :cond_18

    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_18
    iget v5, v11, Lj/g;->b:I

    .line 490
    .line 491
    if-ge v2, v5, :cond_1a

    .line 492
    .line 493
    add-int/lit8 v5, v5, -0x1

    .line 494
    .line 495
    move v7, v2

    .line 496
    :goto_f
    if-ge v7, v5, :cond_19

    .line 497
    .line 498
    iget-object v8, v11, Lj/g;->c:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v8, [J

    .line 501
    .line 502
    add-int/lit8 v9, v7, 0x1

    .line 503
    .line 504
    aget-wide v12, v8, v9

    .line 505
    .line 506
    aput-wide v12, v8, v7

    .line 507
    .line 508
    move v7, v9

    .line 509
    goto :goto_f

    .line 510
    :cond_19
    iget v5, v11, Lj/g;->b:I

    .line 511
    .line 512
    add-int/2addr v5, v4

    .line 513
    iput v5, v11, Lj/g;->b:I

    .line 514
    .line 515
    :cond_1a
    :goto_10
    add-int/lit8 v2, v2, -0x1

    .line 516
    .line 517
    goto :goto_d

    .line 518
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v6}, Ls/q;->h()I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6}, Ls/q;->h()I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    const/4 v4, 0x0

    .line 532
    :goto_11
    if-ge v4, v2, :cond_1c

    .line 533
    .line 534
    invoke-virtual {v6, v4}, Ls/q;->i(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    add-int/lit8 v4, v4, 0x1

    .line 542
    .line 543
    goto :goto_11

    .line 544
    :cond_1c
    new-instance v2, Lk2/o;

    .line 545
    .line 546
    invoke-direct {v2, v1, v3}, Lk2/o;-><init>(Ljava/util/List;Lk2/i;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    const/4 v5, 0x0

    .line 554
    :goto_12
    if-ge v5, v4, :cond_1e

    .line 555
    .line 556
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    move-object v7, v6

    .line 561
    check-cast v7, Lk2/w;

    .line 562
    .line 563
    iget-wide v7, v7, Lk2/w;->a:J

    .line 564
    .line 565
    invoke-virtual {v3, v7, v8}, Lk2/i;->e(J)Z

    .line 566
    .line 567
    .line 568
    move-result v7

    .line 569
    if-eqz v7, :cond_1d

    .line 570
    .line 571
    goto :goto_13

    .line 572
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    .line 573
    .line 574
    goto :goto_12

    .line 575
    :cond_1e
    move-object/from16 v6, v16

    .line 576
    .line 577
    :goto_13
    check-cast v6, Lk2/w;

    .line 578
    .line 579
    const/4 v1, 0x3

    .line 580
    if-eqz v6, :cond_2b

    .line 581
    .line 582
    iget-boolean v3, v6, Lk2/w;->d:Z

    .line 583
    .line 584
    if-nez p4, :cond_1f

    .line 585
    .line 586
    const/4 v13, 0x0

    .line 587
    iput-boolean v13, v0, Lk2/l;->i:Z

    .line 588
    .line 589
    goto :goto_18

    .line 590
    :cond_1f
    const/4 v13, 0x0

    .line 591
    iget-boolean v4, v0, Lk2/l;->i:Z

    .line 592
    .line 593
    if-nez v4, :cond_25

    .line 594
    .line 595
    if-nez v3, :cond_20

    .line 596
    .line 597
    iget-boolean v4, v6, Lk2/w;->h:Z

    .line 598
    .line 599
    if-eqz v4, :cond_25

    .line 600
    .line 601
    :cond_20
    iget-object v4, v0, Lk2/l;->f:Lq2/h1;

    .line 602
    .line 603
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    iget-wide v4, v4, Lo2/v0;->c:J

    .line 607
    .line 608
    iget-wide v6, v6, Lk2/w;->c:J

    .line 609
    .line 610
    const/16 v8, 0x20

    .line 611
    .line 612
    shr-long v9, v6, v8

    .line 613
    .line 614
    long-to-int v10, v9

    .line 615
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    const-wide v10, 0xffffffffL

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    and-long/2addr v6, v10

    .line 625
    long-to-int v7, v6

    .line 626
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 627
    .line 628
    .line 629
    move-result v6

    .line 630
    shr-long v7, v4, v8

    .line 631
    .line 632
    long-to-int v8, v7

    .line 633
    and-long/2addr v4, v10

    .line 634
    long-to-int v5, v4

    .line 635
    const/4 v4, 0x0

    .line 636
    cmpg-float v7, v9, v4

    .line 637
    .line 638
    if-gez v7, :cond_21

    .line 639
    .line 640
    const/4 v7, 0x1

    .line 641
    goto :goto_14

    .line 642
    :cond_21
    const/4 v7, 0x0

    .line 643
    :goto_14
    int-to-float v8, v8

    .line 644
    cmpl-float v8, v9, v8

    .line 645
    .line 646
    if-lez v8, :cond_22

    .line 647
    .line 648
    const/4 v8, 0x1

    .line 649
    goto :goto_15

    .line 650
    :cond_22
    const/4 v8, 0x0

    .line 651
    :goto_15
    or-int/2addr v7, v8

    .line 652
    cmpg-float v4, v6, v4

    .line 653
    .line 654
    if-gez v4, :cond_23

    .line 655
    .line 656
    const/4 v4, 0x1

    .line 657
    goto :goto_16

    .line 658
    :cond_23
    const/4 v4, 0x0

    .line 659
    :goto_16
    or-int/2addr v4, v7

    .line 660
    int-to-float v5, v5

    .line 661
    cmpl-float v5, v6, v5

    .line 662
    .line 663
    if-lez v5, :cond_24

    .line 664
    .line 665
    const/4 v5, 0x1

    .line 666
    goto :goto_17

    .line 667
    :cond_24
    const/4 v5, 0x0

    .line 668
    :goto_17
    or-int/2addr v4, v5

    .line 669
    xor-int/lit8 v4, v4, 0x1

    .line 670
    .line 671
    iput-boolean v4, v0, Lk2/l;->i:Z

    .line 672
    .line 673
    :cond_25
    :goto_18
    iget-boolean v4, v0, Lk2/l;->i:Z

    .line 674
    .line 675
    iget-boolean v5, v0, Lk2/l;->h:Z

    .line 676
    .line 677
    const/4 v6, 0x5

    .line 678
    const/4 v7, 0x4

    .line 679
    if-eq v4, v5, :cond_29

    .line 680
    .line 681
    iget v8, v2, Lk2/o;->e:I

    .line 682
    .line 683
    if-ne v8, v1, :cond_26

    .line 684
    .line 685
    goto :goto_19

    .line 686
    :cond_26
    if-ne v8, v7, :cond_27

    .line 687
    .line 688
    goto :goto_19

    .line 689
    :cond_27
    if-ne v8, v6, :cond_29

    .line 690
    .line 691
    :goto_19
    if-eqz v4, :cond_28

    .line 692
    .line 693
    const/4 v6, 0x4

    .line 694
    :cond_28
    iput v6, v2, Lk2/o;->e:I

    .line 695
    .line 696
    goto :goto_1a

    .line 697
    :cond_29
    iget v8, v2, Lk2/o;->e:I

    .line 698
    .line 699
    if-ne v8, v7, :cond_2a

    .line 700
    .line 701
    if-eqz v5, :cond_2a

    .line 702
    .line 703
    iget-boolean v5, v0, Lk2/l;->j:Z

    .line 704
    .line 705
    if-nez v5, :cond_2a

    .line 706
    .line 707
    iput v1, v2, Lk2/o;->e:I

    .line 708
    .line 709
    goto :goto_1a

    .line 710
    :cond_2a
    if-ne v8, v6, :cond_2c

    .line 711
    .line 712
    if-eqz v4, :cond_2c

    .line 713
    .line 714
    if-eqz v3, :cond_2c

    .line 715
    .line 716
    iput v1, v2, Lk2/o;->e:I

    .line 717
    .line 718
    goto :goto_1a

    .line 719
    :cond_2b
    const/4 v13, 0x0

    .line 720
    :cond_2c
    :goto_1a
    if-nez v49, :cond_30

    .line 721
    .line 722
    iget v3, v2, Lk2/o;->e:I

    .line 723
    .line 724
    if-ne v3, v1, :cond_30

    .line 725
    .line 726
    iget-object v1, v0, Lk2/l;->g:Lk2/o;

    .line 727
    .line 728
    if-eqz v1, :cond_30

    .line 729
    .line 730
    iget-object v1, v1, Lk2/o;->a:Ljava/lang/Object;

    .line 731
    .line 732
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    iget-object v4, v2, Lk2/o;->a:Ljava/lang/Object;

    .line 737
    .line 738
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 739
    .line 740
    .line 741
    move-result v5

    .line 742
    if-eq v3, v5, :cond_2d

    .line 743
    .line 744
    goto :goto_1c

    .line 745
    :cond_2d
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 746
    .line 747
    .line 748
    move-result v3

    .line 749
    const/4 v5, 0x0

    .line 750
    :goto_1b
    if-ge v5, v3, :cond_2f

    .line 751
    .line 752
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    check-cast v6, Lk2/w;

    .line 757
    .line 758
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v7

    .line 762
    check-cast v7, Lk2/w;

    .line 763
    .line 764
    iget-wide v8, v6, Lk2/w;->c:J

    .line 765
    .line 766
    iget-wide v6, v7, Lk2/w;->c:J

    .line 767
    .line 768
    invoke-static {v8, v9, v6, v7}, Lx1/b;->b(JJ)Z

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    if-nez v6, :cond_2e

    .line 773
    .line 774
    goto :goto_1c

    .line 775
    :cond_2e
    add-int/lit8 v5, v5, 0x1

    .line 776
    .line 777
    goto :goto_1b

    .line 778
    :cond_2f
    const/4 v7, 0x0

    .line 779
    goto :goto_1d

    .line 780
    :cond_30
    :goto_1c
    const/4 v7, 0x1

    .line 781
    :goto_1d
    iput-object v2, v0, Lk2/l;->g:Lk2/o;

    .line 782
    .line 783
    return v7
.end method

.method public final b(Lk2/i;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lk2/m;->b(Lk2/i;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk2/l;->g:Lk2/o;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v1, p0, Lk2/l;->i:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lk2/l;->h:Z

    .line 12
    .line 13
    iget-object v1, v0, Lk2/o;->a:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v2, :cond_4

    .line 22
    .line 23
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lk2/w;

    .line 28
    .line 29
    iget-boolean v6, v5, Lk2/w;->d:Z

    .line 30
    .line 31
    iget-wide v7, v5, Lk2/w;->a:J

    .line 32
    .line 33
    invoke-virtual {p1, v7, v8}, Lk2/i;->e(J)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget-boolean v9, p0, Lk2/l;->i:Z

    .line 38
    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    :cond_1
    if-nez v6, :cond_3

    .line 44
    .line 45
    if-nez v9, :cond_3

    .line 46
    .line 47
    :cond_2
    iget-object v5, p0, Lk2/l;->d:Lj/g;

    .line 48
    .line 49
    invoke-virtual {v5, v7, v8}, Lj/g;->j(J)V

    .line 50
    .line 51
    .line 52
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iput-boolean v3, p0, Lk2/l;->i:Z

    .line 56
    .line 57
    iget p1, v0, Lk2/o;->e:I

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    if-ne p1, v0, :cond_5

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    :cond_5
    iput-boolean v3, p0, Lk2/l;->j:Z

    .line 64
    .line 65
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk2/m;->a:Lh1/e;

    .line 2
    .line 3
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, v0, Lh1/e;->c:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    check-cast v4, Lk2/l;

    .line 14
    .line 15
    invoke-virtual {v4}, Lk2/l;->c()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Lk2/l;->c:Lr1/o;

    .line 23
    .line 24
    move-object v3, v0

    .line 25
    :goto_1
    if-eqz v1, :cond_8

    .line 26
    .line 27
    instance-of v4, v1, Lq2/v1;

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    check-cast v1, Lq2/v1;

    .line 32
    .line 33
    invoke-interface {v1}, Lq2/v1;->x()V

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_1
    iget v4, v1, Lr1/o;->c:I

    .line 38
    .line 39
    const/16 v5, 0x10

    .line 40
    .line 41
    and-int/2addr v4, v5

    .line 42
    if-eqz v4, :cond_7

    .line 43
    .line 44
    instance-of v4, v1, Lq2/m;

    .line 45
    .line 46
    if-eqz v4, :cond_7

    .line 47
    .line 48
    move-object v4, v1

    .line 49
    check-cast v4, Lq2/m;

    .line 50
    .line 51
    iget-object v4, v4, Lq2/m;->p:Lr1/o;

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    :goto_2
    const/4 v7, 0x1

    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    iget v8, v4, Lr1/o;->c:I

    .line 58
    .line 59
    and-int/2addr v8, v5

    .line 60
    if-eqz v8, :cond_5

    .line 61
    .line 62
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    if-ne v6, v7, :cond_2

    .line 65
    .line 66
    move-object v1, v4

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    if-nez v3, :cond_3

    .line 69
    .line 70
    new-instance v3, Lh1/e;

    .line 71
    .line 72
    new-array v7, v5, [Lr1/o;

    .line 73
    .line 74
    invoke-direct {v3, v7}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object v1, v0

    .line 83
    :cond_4
    invoke-virtual {v3, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_3
    iget-object v4, v4, Lr1/o;->f:Lr1/o;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    if-ne v6, v7, :cond_7

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    :goto_4
    invoke-static {v3}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_1

    .line 97
    :cond_8
    return-void
.end method

.method public final d(Lk2/i;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lk2/l;->e:Ls/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/q;->h()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lk2/l;->c:Lr1/o;

    .line 14
    .line 15
    iget-boolean v4, v1, Lr1/o;->n:Z

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    iget-object v4, p0, Lk2/l;->g:Lk2/o;

    .line 22
    .line 23
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, Lk2/l;->f:Lq2/h1;

    .line 27
    .line 28
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-wide v5, v5, Lo2/v0;->c:J

    .line 32
    .line 33
    move-object v7, v1

    .line 34
    move-object v8, v2

    .line 35
    :goto_0
    const/4 v9, 0x1

    .line 36
    if-eqz v7, :cond_9

    .line 37
    .line 38
    instance-of v10, v7, Lq2/v1;

    .line 39
    .line 40
    if-eqz v10, :cond_2

    .line 41
    .line 42
    check-cast v7, Lq2/v1;

    .line 43
    .line 44
    sget-object v9, Lk2/p;->c:Lk2/p;

    .line 45
    .line 46
    invoke-interface {v7, v4, v9, v5, v6}, Lq2/v1;->l0(Lk2/o;Lk2/p;J)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    iget v10, v7, Lr1/o;->c:I

    .line 51
    .line 52
    const/16 v11, 0x10

    .line 53
    .line 54
    and-int/2addr v10, v11

    .line 55
    if-eqz v10, :cond_8

    .line 56
    .line 57
    instance-of v10, v7, Lq2/m;

    .line 58
    .line 59
    if-eqz v10, :cond_8

    .line 60
    .line 61
    move-object v10, v7

    .line 62
    check-cast v10, Lq2/m;

    .line 63
    .line 64
    iget-object v10, v10, Lq2/m;->p:Lr1/o;

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    :goto_1
    if-eqz v10, :cond_7

    .line 68
    .line 69
    iget v13, v10, Lr1/o;->c:I

    .line 70
    .line 71
    and-int/2addr v13, v11

    .line 72
    if-eqz v13, :cond_6

    .line 73
    .line 74
    add-int/lit8 v12, v12, 0x1

    .line 75
    .line 76
    if-ne v12, v9, :cond_3

    .line 77
    .line 78
    move-object v7, v10

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    if-nez v8, :cond_4

    .line 81
    .line 82
    new-instance v8, Lh1/e;

    .line 83
    .line 84
    new-array v13, v11, [Lr1/o;

    .line 85
    .line 86
    invoke-direct {v8, v13}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    if-eqz v7, :cond_5

    .line 90
    .line 91
    invoke-virtual {v8, v7}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object v7, v2

    .line 95
    :cond_5
    invoke-virtual {v8, v10}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_2
    iget-object v10, v10, Lr1/o;->f:Lr1/o;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    if-ne v12, v9, :cond_8

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_8
    :goto_3
    invoke-static {v8}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    goto :goto_0

    .line 109
    :cond_9
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 110
    .line 111
    if-eqz v1, :cond_a

    .line 112
    .line 113
    iget-object v1, p0, Lk2/m;->a:Lh1/e;

    .line 114
    .line 115
    iget-object v4, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 116
    .line 117
    iget v1, v1, Lh1/e;->c:I

    .line 118
    .line 119
    :goto_4
    if-ge v3, v1, :cond_a

    .line 120
    .line 121
    aget-object v5, v4, v3

    .line 122
    .line 123
    check-cast v5, Lk2/l;

    .line 124
    .line 125
    invoke-virtual {v5, p1}, Lk2/l;->d(Lk2/i;)Z

    .line 126
    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_a
    const/4 v3, 0x1

    .line 132
    :goto_5
    invoke-virtual {p0, p1}, Lk2/l;->b(Lk2/i;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ls/q;->b()V

    .line 136
    .line 137
    .line 138
    iput-object v2, p0, Lk2/l;->f:Lq2/h1;

    .line 139
    .line 140
    return v3
.end method

.method public final e(Lk2/i;Z)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lk2/l;->e:Ls/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/q;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lk2/l;->c:Lr1/o;

    .line 12
    .line 13
    iget-boolean v2, v0, Lr1/o;->n:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget-object v2, p0, Lk2/l;->g:Lk2/o;

    .line 19
    .line 20
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lk2/l;->f:Lq2/h1;

    .line 24
    .line 25
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-wide v3, v3, Lo2/v0;->c:J

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v6, v0

    .line 32
    move-object v7, v5

    .line 33
    :goto_0
    const/16 v8, 0x10

    .line 34
    .line 35
    const/4 v9, 0x1

    .line 36
    if-eqz v6, :cond_9

    .line 37
    .line 38
    instance-of v10, v6, Lq2/v1;

    .line 39
    .line 40
    if-eqz v10, :cond_2

    .line 41
    .line 42
    check-cast v6, Lq2/v1;

    .line 43
    .line 44
    sget-object v8, Lk2/p;->a:Lk2/p;

    .line 45
    .line 46
    invoke-interface {v6, v2, v8, v3, v4}, Lq2/v1;->l0(Lk2/o;Lk2/p;J)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    iget v10, v6, Lr1/o;->c:I

    .line 51
    .line 52
    and-int/2addr v10, v8

    .line 53
    if-eqz v10, :cond_8

    .line 54
    .line 55
    instance-of v10, v6, Lq2/m;

    .line 56
    .line 57
    if-eqz v10, :cond_8

    .line 58
    .line 59
    move-object v10, v6

    .line 60
    check-cast v10, Lq2/m;

    .line 61
    .line 62
    iget-object v10, v10, Lq2/m;->p:Lr1/o;

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    :goto_1
    if-eqz v10, :cond_7

    .line 66
    .line 67
    iget v12, v10, Lr1/o;->c:I

    .line 68
    .line 69
    and-int/2addr v12, v8

    .line 70
    if-eqz v12, :cond_6

    .line 71
    .line 72
    add-int/lit8 v11, v11, 0x1

    .line 73
    .line 74
    if-ne v11, v9, :cond_3

    .line 75
    .line 76
    move-object v6, v10

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    if-nez v7, :cond_4

    .line 79
    .line 80
    new-instance v7, Lh1/e;

    .line 81
    .line 82
    new-array v12, v8, [Lr1/o;

    .line 83
    .line 84
    invoke-direct {v7, v12}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    if-eqz v6, :cond_5

    .line 88
    .line 89
    invoke-virtual {v7, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object v6, v5

    .line 93
    :cond_5
    invoke-virtual {v7, v10}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_2
    iget-object v10, v10, Lr1/o;->f:Lr1/o;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_7
    if-ne v11, v9, :cond_8

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_8
    :goto_3
    invoke-static {v7}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    goto :goto_0

    .line 107
    :cond_9
    iget-boolean v6, v0, Lr1/o;->n:Z

    .line 108
    .line 109
    if-eqz v6, :cond_a

    .line 110
    .line 111
    iget-object v6, p0, Lk2/m;->a:Lh1/e;

    .line 112
    .line 113
    iget-object v7, v6, Lh1/e;->a:[Ljava/lang/Object;

    .line 114
    .line 115
    iget v6, v6, Lh1/e;->c:I

    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    :goto_4
    if-ge v10, v6, :cond_a

    .line 119
    .line 120
    aget-object v11, v7, v10

    .line 121
    .line 122
    check-cast v11, Lk2/l;

    .line 123
    .line 124
    iget-object v12, p0, Lk2/l;->f:Lq2/h1;

    .line 125
    .line 126
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11, p1, p2}, Lk2/l;->e(Lk2/i;Z)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v10, v10, 0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_a
    iget-boolean p1, v0, Lr1/o;->n:Z

    .line 136
    .line 137
    if-eqz p1, :cond_12

    .line 138
    .line 139
    move-object p1, v5

    .line 140
    :goto_5
    if-eqz v0, :cond_12

    .line 141
    .line 142
    instance-of p2, v0, Lq2/v1;

    .line 143
    .line 144
    if-eqz p2, :cond_b

    .line 145
    .line 146
    check-cast v0, Lq2/v1;

    .line 147
    .line 148
    sget-object p2, Lk2/p;->b:Lk2/p;

    .line 149
    .line 150
    invoke-interface {v0, v2, p2, v3, v4}, Lq2/v1;->l0(Lk2/o;Lk2/p;J)V

    .line 151
    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_b
    iget p2, v0, Lr1/o;->c:I

    .line 155
    .line 156
    and-int/2addr p2, v8

    .line 157
    if-eqz p2, :cond_11

    .line 158
    .line 159
    instance-of p2, v0, Lq2/m;

    .line 160
    .line 161
    if-eqz p2, :cond_11

    .line 162
    .line 163
    move-object p2, v0

    .line 164
    check-cast p2, Lq2/m;

    .line 165
    .line 166
    iget-object p2, p2, Lq2/m;->p:Lr1/o;

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    :goto_6
    if-eqz p2, :cond_10

    .line 170
    .line 171
    iget v7, p2, Lr1/o;->c:I

    .line 172
    .line 173
    and-int/2addr v7, v8

    .line 174
    if-eqz v7, :cond_f

    .line 175
    .line 176
    add-int/lit8 v6, v6, 0x1

    .line 177
    .line 178
    if-ne v6, v9, :cond_c

    .line 179
    .line 180
    move-object v0, p2

    .line 181
    goto :goto_7

    .line 182
    :cond_c
    if-nez p1, :cond_d

    .line 183
    .line 184
    new-instance p1, Lh1/e;

    .line 185
    .line 186
    new-array v7, v8, [Lr1/o;

    .line 187
    .line 188
    invoke-direct {p1, v7}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_d
    if-eqz v0, :cond_e

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    move-object v0, v5

    .line 197
    :cond_e
    invoke-virtual {p1, p2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_f
    :goto_7
    iget-object p2, p2, Lr1/o;->f:Lr1/o;

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_10
    if-ne v6, v9, :cond_11

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_11
    :goto_8
    invoke-static {p1}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    goto :goto_5

    .line 211
    :cond_12
    return v9
.end method

.method public final f(JLs/d0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk2/l;->d:Lj/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lj/g;->c(J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3, p0}, Ls/d0;->f(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Lj/g;->j(J)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lk2/l;->e:Ls/q;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Ls/q;->g(J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lk2/m;->a:Lh1/e;

    .line 25
    .line 26
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 27
    .line 28
    iget v0, v0, Lh1/e;->c:I

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_1
    if-ge v2, v0, :cond_2

    .line 32
    .line 33
    aget-object v3, v1, v2

    .line 34
    .line 35
    check-cast v3, Lk2/l;

    .line 36
    .line 37
    invoke-virtual {v3, p1, p2, p3}, Lk2/l;->f(JLs/d0;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Node(modifierNode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lk2/l;->c:Lr1/o;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", children="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lk2/m;->a:Lh1/e;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", pointerIds="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lk2/l;->d:Lj/g;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
