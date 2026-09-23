.class public final synthetic Lw0/f0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/w0;


# direct methods
.method public synthetic constructor <init>(Lw0/w0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/f0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/f0;->b:Lw0/w0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw0/f0;->a:I

    .line 4
    .line 5
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    iget-object v10, v0, Lw0/f0;->b:Lw0/w0;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v1, v10, Lw0/w0;->a:Lw0/c1;

    .line 20
    .line 21
    invoke-virtual {v10}, Lw0/w0;->k()Lo2/w;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lw0/c1;->c(Lo2/w;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move-object/from16 v19, v7

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_0
    sget-object v3, Ls/o;->a:Ls/a0;

    .line 40
    .line 41
    new-instance v3, Ls/a0;

    .line 42
    .line 43
    invoke-direct {v3}, Ls/a0;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    :goto_0
    if-ge v5, v4, :cond_4

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    check-cast v12, Lw0/p;

    .line 60
    .line 61
    iget-wide v13, v12, Lw0/p;->a:J

    .line 62
    .line 63
    iget-object v15, v12, Lw0/p;->c:Lv0/g;

    .line 64
    .line 65
    invoke-virtual {v15}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v15

    .line 69
    check-cast v15, Lb3/l0;

    .line 70
    .line 71
    if-nez v15, :cond_1

    .line 72
    .line 73
    move-object/from16 v16, v2

    .line 74
    .line 75
    move/from16 v17, v4

    .line 76
    .line 77
    move/from16 v18, v5

    .line 78
    .line 79
    move-object/from16 v19, v7

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v6, v15, Lb3/l0;->a:Lb3/k0;

    .line 84
    .line 85
    iget-object v6, v6, Lb3/k0;->a:Lb3/g;

    .line 86
    .line 87
    iget-object v6, v6, Lb3/g;->b:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    move-object/from16 v16, v2

    .line 94
    .line 95
    new-instance v2, Lw0/z;

    .line 96
    .line 97
    move/from16 v17, v4

    .line 98
    .line 99
    new-instance v4, Lw0/y;

    .line 100
    .line 101
    move/from16 v18, v5

    .line 102
    .line 103
    invoke-virtual {v15, v8}, Lb3/l0;->a(I)Lm3/j;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-direct {v4, v5, v8, v13, v14}, Lw0/y;-><init>(Lm3/j;IJ)V

    .line 108
    .line 109
    .line 110
    new-instance v5, Lw0/y;

    .line 111
    .line 112
    move-object/from16 v19, v7

    .line 113
    .line 114
    add-int/lit8 v7, v6, -0x1

    .line 115
    .line 116
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v15, v7}, Lb3/l0;->a(I)Lm3/j;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-direct {v5, v7, v6, v13, v14}, Lw0/y;-><init>(Lm3/j;IJ)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v4, v5, v8}, Lw0/z;-><init>(Lw0/y;Lw0/y;Z)V

    .line 128
    .line 129
    .line 130
    :goto_1
    if-nez v2, :cond_2

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    if-nez v9, :cond_3

    .line 134
    .line 135
    move-object v9, v2

    .line 136
    :cond_3
    iget-wide v4, v12, Lw0/p;->a:J

    .line 137
    .line 138
    invoke-virtual {v3, v4, v5}, Ls/a0;->c(J)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    iget-object v7, v3, Ls/a0;->c:[Ljava/lang/Object;

    .line 143
    .line 144
    aget-object v11, v7, v6

    .line 145
    .line 146
    iget-object v11, v3, Ls/a0;->b:[J

    .line 147
    .line 148
    aput-wide v4, v11, v6

    .line 149
    .line 150
    aput-object v2, v7, v6

    .line 151
    .line 152
    move-object v11, v2

    .line 153
    :goto_2
    add-int/lit8 v5, v18, 0x1

    .line 154
    .line 155
    move-object/from16 v2, v16

    .line 156
    .line 157
    move/from16 v4, v17

    .line 158
    .line 159
    move-object/from16 v7, v19

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    move-object/from16 v19, v7

    .line 163
    .line 164
    iget v2, v3, Ls/a0;->e:I

    .line 165
    .line 166
    if-nez v2, :cond_5

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    if-ne v9, v11, :cond_6

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    new-instance v2, Lw0/z;

    .line 173
    .line 174
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object v4, v9, Lw0/z;->a:Lw0/y;

    .line 178
    .line 179
    invoke-static {v11}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object v5, v11, Lw0/z;->b:Lw0/y;

    .line 183
    .line 184
    invoke-direct {v2, v4, v5, v8}, Lw0/z;-><init>(Lw0/y;Lw0/y;Z)V

    .line 185
    .line 186
    .line 187
    move-object v9, v2

    .line 188
    :goto_3
    iget-object v1, v1, Lw0/c1;->k:Lf1/k1;

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v10, Lw0/w0;->d:Lf9/k;

    .line 194
    .line 195
    invoke-interface {v1, v9}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    iput-object v1, v10, Lw0/w0;->t:Lw0/p0;

    .line 200
    .line 201
    :goto_4
    return-object v19

    .line 202
    :pswitch_0
    iget-boolean v1, v10, Lw0/w0;->x:Z

    .line 203
    .line 204
    if-eqz v1, :cond_7

    .line 205
    .line 206
    invoke-virtual {v10}, Lw0/w0;->h()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_8

    .line 211
    .line 212
    :cond_7
    const/4 v8, 0x1

    .line 213
    :cond_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    return-object v1

    .line 218
    :pswitch_1
    move-object/from16 v19, v7

    .line 219
    .line 220
    invoke-virtual {v10}, Lw0/w0;->c()V

    .line 221
    .line 222
    .line 223
    return-object v19

    .line 224
    :pswitch_2
    iget-object v1, v10, Lw0/w0;->a:Lw0/c1;

    .line 225
    .line 226
    iget-object v2, v10, Lw0/w0;->m:Lf1/k1;

    .line 227
    .line 228
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10}, Lw0/w0;->g()Lw0/z;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-nez v2, :cond_9

    .line 236
    .line 237
    goto/16 :goto_e

    .line 238
    .line 239
    :cond_9
    iget-object v2, v10, Lw0/w0;->l:Lo2/w;

    .line 240
    .line 241
    if-nez v2, :cond_a

    .line 242
    .line 243
    goto/16 :goto_e

    .line 244
    .line 245
    :cond_a
    invoke-interface {v2}, Lo2/w;->isAttached()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_b

    .line 250
    .line 251
    goto/16 :goto_e

    .line 252
    .line 253
    :cond_b
    invoke-virtual {v10}, Lw0/w0;->k()Lo2/w;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v1, v3}, Lw0/c1;->c(Lo2/w;)Ljava/util/ArrayList;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    new-instance v6, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    const/4 v10, 0x0

    .line 275
    :goto_5
    if-ge v10, v7, :cond_e

    .line 276
    .line 277
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    check-cast v11, Lw0/p;

    .line 282
    .line 283
    invoke-virtual {v1}, Lw0/c1;->a()Ls/a0;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    iget-wide v13, v11, Lw0/p;->a:J

    .line 288
    .line 289
    invoke-virtual {v12, v13, v14}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    check-cast v12, Lw0/z;

    .line 294
    .line 295
    if-eqz v12, :cond_c

    .line 296
    .line 297
    new-instance v13, Lr8/j;

    .line 298
    .line 299
    invoke-direct {v13, v11, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_c
    const/4 v13, 0x0

    .line 304
    :goto_6
    if-eqz v13, :cond_d

    .line 305
    .line 306
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    const/4 v3, 0x2

    .line 317
    if-eqz v1, :cond_f

    .line 318
    .line 319
    if-eq v1, v9, :cond_f

    .line 320
    .line 321
    invoke-static {v6}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v6}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    new-array v7, v3, [Ljava/lang/Object;

    .line 330
    .line 331
    aput-object v1, v7, v8

    .line 332
    .line 333
    aput-object v6, v7, v9

    .line 334
    .line 335
    invoke-static {v7}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    :cond_f
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_10

    .line 344
    .line 345
    goto/16 :goto_e

    .line 346
    .line 347
    :cond_10
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    sget-object v7, Lw0/y0;->a:Lx1/c;

    .line 352
    .line 353
    if-eqz v1, :cond_11

    .line 354
    .line 355
    move-object v1, v7

    .line 356
    goto/16 :goto_d

    .line 357
    .line 358
    :cond_11
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    .line 363
    .line 364
    const/4 v12, 0x0

    .line 365
    const/high16 v13, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 366
    .line 367
    const/high16 v14, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 368
    .line 369
    const/high16 v15, -0x800000    # Float.NEGATIVE_INFINITY

    .line 370
    .line 371
    :goto_7
    if-ge v12, v1, :cond_18

    .line 372
    .line 373
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v17

    .line 377
    move-object/from16 v11, v17

    .line 378
    .line 379
    check-cast v11, Lr8/j;

    .line 380
    .line 381
    iget-object v4, v11, Lr8/j;->a:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v4, Lw0/p;

    .line 384
    .line 385
    iget-object v5, v11, Lr8/j;->b:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v5, Lw0/z;

    .line 388
    .line 389
    iget-object v11, v5, Lw0/z;->a:Lw0/y;

    .line 390
    .line 391
    iget v11, v11, Lw0/y;->b:I

    .line 392
    .line 393
    iget-object v5, v5, Lw0/z;->b:Lw0/y;

    .line 394
    .line 395
    iget v5, v5, Lw0/y;->b:I

    .line 396
    .line 397
    if-eq v11, v5, :cond_12

    .line 398
    .line 399
    const/16 v17, 0x0

    .line 400
    .line 401
    invoke-virtual {v4}, Lw0/p;->c()Lo2/w;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    if-nez v8, :cond_13

    .line 406
    .line 407
    :cond_12
    move/from16 v23, v1

    .line 408
    .line 409
    move-object/from16 v25, v6

    .line 410
    .line 411
    move/from16 v30, v12

    .line 412
    .line 413
    goto/16 :goto_c

    .line 414
    .line 415
    :cond_13
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    sub-int/2addr v5, v9

    .line 424
    if-ne v3, v5, :cond_14

    .line 425
    .line 426
    new-array v5, v9, [I

    .line 427
    .line 428
    aput v3, v5, v17

    .line 429
    .line 430
    const/4 v11, 0x2

    .line 431
    const/16 v22, 0x1

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_14
    const/4 v11, 0x2

    .line 435
    const/16 v22, 0x1

    .line 436
    .line 437
    new-array v9, v11, [I

    .line 438
    .line 439
    aput v3, v9, v17

    .line 440
    .line 441
    aput v5, v9, v22

    .line 442
    .line 443
    move-object v5, v9

    .line 444
    :goto_8
    array-length v3, v5

    .line 445
    move/from16 v23, v1

    .line 446
    .line 447
    move-object/from16 v24, v5

    .line 448
    .line 449
    move-object/from16 v25, v6

    .line 450
    .line 451
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 452
    .line 453
    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    .line 454
    .line 455
    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    .line 456
    .line 457
    const/4 v9, 0x0

    .line 458
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 459
    .line 460
    :goto_9
    if-ge v9, v3, :cond_17

    .line 461
    .line 462
    move/from16 v26, v3

    .line 463
    .line 464
    aget v3, v24, v9

    .line 465
    .line 466
    move/from16 v27, v9

    .line 467
    .line 468
    iget-object v9, v4, Lw0/p;->c:Lv0/g;

    .line 469
    .line 470
    invoke-virtual {v9}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v9

    .line 474
    check-cast v9, Lb3/l0;

    .line 475
    .line 476
    sget-object v28, Lx1/c;->e:Lx1/c;

    .line 477
    .line 478
    if-nez v9, :cond_15

    .line 479
    .line 480
    move-object/from16 v29, v4

    .line 481
    .line 482
    move/from16 v30, v12

    .line 483
    .line 484
    :goto_a
    move-object/from16 v3, v28

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_15
    move-object/from16 v29, v4

    .line 488
    .line 489
    iget-object v4, v9, Lb3/l0;->a:Lb3/k0;

    .line 490
    .line 491
    iget-object v4, v4, Lb3/k0;->a:Lb3/g;

    .line 492
    .line 493
    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    move/from16 v30, v12

    .line 500
    .line 501
    const/4 v12, 0x1

    .line 502
    if-ge v4, v12, :cond_16

    .line 503
    .line 504
    goto :goto_a

    .line 505
    :cond_16
    add-int/lit8 v4, v4, -0x1

    .line 506
    .line 507
    const/4 v12, 0x0

    .line 508
    invoke-static {v3, v12, v4}, Li9/a;->n(III)I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    invoke-virtual {v9, v3}, Lb3/l0;->b(I)Lx1/c;

    .line 513
    .line 514
    .line 515
    move-result-object v28

    .line 516
    goto :goto_a

    .line 517
    :goto_b
    iget v4, v3, Lx1/c;->a:F

    .line 518
    .line 519
    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    iget v4, v3, Lx1/c;->b:F

    .line 524
    .line 525
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    iget v4, v3, Lx1/c;->c:F

    .line 530
    .line 531
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    iget v3, v3, Lx1/c;->d:F

    .line 536
    .line 537
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    add-int/lit8 v9, v27, 0x1

    .line 542
    .line 543
    move/from16 v3, v26

    .line 544
    .line 545
    move-object/from16 v4, v29

    .line 546
    .line 547
    move/from16 v12, v30

    .line 548
    .line 549
    const/16 v17, 0x0

    .line 550
    .line 551
    const/16 v22, 0x1

    .line 552
    .line 553
    goto :goto_9

    .line 554
    :cond_17
    move/from16 v30, v12

    .line 555
    .line 556
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    int-to-long v3, v3

    .line 561
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    int-to-long v11, v1

    .line 566
    const/16 v1, 0x20

    .line 567
    .line 568
    shl-long/2addr v3, v1

    .line 569
    const-wide v26, 0xffffffffL

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    and-long v11, v11, v26

    .line 575
    .line 576
    or-long/2addr v3, v11

    .line 577
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    int-to-long v11, v5

    .line 582
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    int-to-long v5, v5

    .line 587
    shl-long/2addr v11, v1

    .line 588
    and-long v5, v5, v26

    .line 589
    .line 590
    or-long/2addr v5, v11

    .line 591
    invoke-interface {v2, v8, v3, v4}, Lo2/w;->p(Lo2/w;J)J

    .line 592
    .line 593
    .line 594
    move-result-wide v3

    .line 595
    invoke-interface {v2, v8, v5, v6}, Lo2/w;->p(Lo2/w;J)J

    .line 596
    .line 597
    .line 598
    move-result-wide v5

    .line 599
    shr-long v8, v3, v1

    .line 600
    .line 601
    long-to-int v9, v8

    .line 602
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 603
    .line 604
    .line 605
    move-result v8

    .line 606
    invoke-static {v13, v8}, Ljava/lang/Math;->min(FF)F

    .line 607
    .line 608
    .line 609
    move-result v13

    .line 610
    and-long v3, v3, v26

    .line 611
    .line 612
    long-to-int v4, v3

    .line 613
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    .line 618
    .line 619
    .line 620
    move-result v14

    .line 621
    shr-long v3, v5, v1

    .line 622
    .line 623
    long-to-int v1, v3

    .line 624
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    .line 629
    .line 630
    .line 631
    move-result v15

    .line 632
    and-long v3, v5, v26

    .line 633
    .line 634
    long-to-int v1, v3

    .line 635
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    .line 640
    .line 641
    .line 642
    move-result v10

    .line 643
    :goto_c
    add-int/lit8 v12, v30, 0x1

    .line 644
    .line 645
    move/from16 v1, v23

    .line 646
    .line 647
    move-object/from16 v6, v25

    .line 648
    .line 649
    const/4 v3, 0x2

    .line 650
    const/4 v8, 0x0

    .line 651
    const/4 v9, 0x1

    .line 652
    goto/16 :goto_7

    .line 653
    .line 654
    :cond_18
    new-instance v1, Lx1/c;

    .line 655
    .line 656
    invoke-direct {v1, v13, v14, v15, v10}, Lx1/c;-><init>(FFFF)V

    .line 657
    .line 658
    .line 659
    :goto_d
    invoke-virtual {v1, v7}, Lx1/c;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    if-eqz v3, :cond_19

    .line 664
    .line 665
    goto :goto_e

    .line 666
    :cond_19
    invoke-static {v2}, Lw0/y0;->y(Lo2/w;)Lx1/c;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    invoke-virtual {v3, v1}, Lx1/c;->e(Lx1/c;)Lx1/c;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    iget v3, v1, Lx1/c;->c:F

    .line 675
    .line 676
    iget v4, v1, Lx1/c;->a:F

    .line 677
    .line 678
    sub-float/2addr v3, v4

    .line 679
    const/4 v4, 0x0

    .line 680
    cmpg-float v3, v3, v4

    .line 681
    .line 682
    if-ltz v3, :cond_1b

    .line 683
    .line 684
    iget v3, v1, Lx1/c;->d:F

    .line 685
    .line 686
    iget v5, v1, Lx1/c;->b:F

    .line 687
    .line 688
    sub-float/2addr v3, v5

    .line 689
    cmpg-float v3, v3, v4

    .line 690
    .line 691
    if-gez v3, :cond_1a

    .line 692
    .line 693
    goto :goto_e

    .line 694
    :cond_1a
    const-wide/16 v5, 0x0

    .line 695
    .line 696
    invoke-interface {v2, v5, v6}, Lo2/w;->F(J)J

    .line 697
    .line 698
    .line 699
    move-result-wide v2

    .line 700
    invoke-virtual {v1, v2, v3}, Lx1/c;->i(J)Lx1/c;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    iget v2, v1, Lx1/c;->d:F

    .line 705
    .line 706
    sget v3, Lw0/o0;->b:F

    .line 707
    .line 708
    const/4 v5, 0x4

    .line 709
    int-to-float v5, v5

    .line 710
    mul-float v3, v3, v5

    .line 711
    .line 712
    add-float/2addr v3, v2

    .line 713
    const/4 v2, 0x7

    .line 714
    invoke-static {v1, v4, v4, v3, v2}, Lx1/c;->a(Lx1/c;FFFI)Lx1/c;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    goto :goto_f

    .line 719
    :cond_1b
    :goto_e
    const/4 v6, 0x0

    .line 720
    :goto_f
    return-object v6

    .line 721
    :pswitch_3
    move-object/from16 v19, v7

    .line 722
    .line 723
    invoke-virtual {v10}, Lw0/w0;->j()V

    .line 724
    .line 725
    .line 726
    return-object v19

    .line 727
    :pswitch_4
    move-object/from16 v19, v7

    .line 728
    .line 729
    iget-object v8, v0, Lw0/f0;->b:Lw0/w0;

    .line 730
    .line 731
    const/4 v12, 0x1

    .line 732
    iput-boolean v12, v8, Lw0/w0;->x:Z

    .line 733
    .line 734
    invoke-virtual {v8}, Lw0/w0;->p()V

    .line 735
    .line 736
    .line 737
    iget-object v1, v8, Lw0/w0;->r:Lf1/k1;

    .line 738
    .line 739
    const/4 v2, 0x0

    .line 740
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 741
    .line 742
    .line 743
    iget-object v1, v8, Lw0/w0;->s:Lf1/k1;

    .line 744
    .line 745
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    iget-boolean v1, v8, Lw0/w0;->u:Z

    .line 749
    .line 750
    if-eqz v1, :cond_21

    .line 751
    .line 752
    invoke-virtual {v8}, Lw0/w0;->i()Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-eqz v1, :cond_21

    .line 757
    .line 758
    new-instance v9, Lg9/x;

    .line 759
    .line 760
    invoke-direct {v9}, Lg9/x;-><init>()V

    .line 761
    .line 762
    .line 763
    new-instance v10, Lg9/x;

    .line 764
    .line 765
    invoke-direct {v10}, Lg9/x;-><init>()V

    .line 766
    .line 767
    .line 768
    new-instance v11, Lg9/w;

    .line 769
    .line 770
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 771
    .line 772
    .line 773
    iget-object v1, v8, Lw0/w0;->a:Lw0/c1;

    .line 774
    .line 775
    invoke-virtual {v8}, Lw0/w0;->k()Lo2/w;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual {v1, v2}, Lw0/c1;->c(Lo2/w;)Ljava/util/ArrayList;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 784
    .line 785
    .line 786
    move-result v3

    .line 787
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    :cond_1c
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 792
    .line 793
    .line 794
    move-result v4

    .line 795
    const/4 v5, -0x1

    .line 796
    if-eqz v4, :cond_1d

    .line 797
    .line 798
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    check-cast v4, Lw0/p;

    .line 803
    .line 804
    invoke-virtual {v1}, Lw0/c1;->a()Ls/a0;

    .line 805
    .line 806
    .line 807
    move-result-object v6

    .line 808
    iget-wide v13, v4, Lw0/p;->a:J

    .line 809
    .line 810
    invoke-virtual {v6, v13, v14}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    check-cast v4, Lw0/z;

    .line 815
    .line 816
    if-eqz v4, :cond_1c

    .line 817
    .line 818
    iget-object v6, v4, Lw0/z;->a:Lw0/y;

    .line 819
    .line 820
    iget v6, v6, Lw0/y;->b:I

    .line 821
    .line 822
    iget-object v4, v4, Lw0/z;->b:Lw0/y;

    .line 823
    .line 824
    iget v4, v4, Lw0/y;->b:I

    .line 825
    .line 826
    if-eq v6, v4, :cond_1c

    .line 827
    .line 828
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    goto :goto_10

    .line 833
    :cond_1d
    const/4 v3, -0x1

    .line 834
    :goto_10
    if-eq v3, v5, :cond_20

    .line 835
    .line 836
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    const/4 v5, 0x0

    .line 841
    :goto_11
    if-ge v5, v4, :cond_20

    .line 842
    .line 843
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v6

    .line 847
    check-cast v6, Lw0/p;

    .line 848
    .line 849
    invoke-virtual {v1}, Lw0/c1;->a()Ls/a0;

    .line 850
    .line 851
    .line 852
    move-result-object v7

    .line 853
    iget-wide v13, v6, Lw0/p;->a:J

    .line 854
    .line 855
    invoke-virtual {v7, v13, v14}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v7

    .line 859
    check-cast v7, Lw0/z;

    .line 860
    .line 861
    if-eqz v7, :cond_1f

    .line 862
    .line 863
    invoke-virtual {v6}, Lw0/p;->d()Lb3/g;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    iget-object v2, v7, Lw0/z;->a:Lw0/y;

    .line 868
    .line 869
    iget v2, v2, Lw0/y;->b:I

    .line 870
    .line 871
    iget-object v4, v7, Lw0/z;->b:Lw0/y;

    .line 872
    .line 873
    iget v4, v4, Lw0/y;->b:I

    .line 874
    .line 875
    invoke-static {v2, v4}, Lb3/d0;->b(II)J

    .line 876
    .line 877
    .line 878
    move-result-wide v13

    .line 879
    if-lt v5, v3, :cond_1e

    .line 880
    .line 881
    goto :goto_12

    .line 882
    :cond_1e
    const/4 v12, 0x0

    .line 883
    :goto_12
    iget-wide v2, v6, Lw0/p;->a:J

    .line 884
    .line 885
    if-eqz v12, :cond_20

    .line 886
    .line 887
    iput-object v1, v9, Lg9/x;->b:Ljava/lang/Object;

    .line 888
    .line 889
    new-instance v1, Lb3/n0;

    .line 890
    .line 891
    invoke-direct {v1, v13, v14}, Lb3/n0;-><init>(J)V

    .line 892
    .line 893
    .line 894
    iput-object v1, v10, Lg9/x;->b:Ljava/lang/Object;

    .line 895
    .line 896
    iput-wide v2, v11, Lg9/w;->a:J

    .line 897
    .line 898
    goto :goto_13

    .line 899
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    .line 900
    .line 901
    goto :goto_11

    .line 902
    :cond_20
    :goto_13
    iget-object v1, v9, Lg9/x;->b:Ljava/lang/Object;

    .line 903
    .line 904
    if-eqz v1, :cond_21

    .line 905
    .line 906
    iget-object v2, v10, Lg9/x;->b:Ljava/lang/Object;

    .line 907
    .line 908
    if-eqz v2, :cond_21

    .line 909
    .line 910
    iget-wide v2, v11, Lg9/w;->a:J

    .line 911
    .line 912
    const-wide/16 v20, 0x0

    .line 913
    .line 914
    cmp-long v4, v2, v20

    .line 915
    .line 916
    if-eqz v4, :cond_21

    .line 917
    .line 918
    check-cast v1, Ljava/lang/CharSequence;

    .line 919
    .line 920
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 921
    .line 922
    .line 923
    move-result v1

    .line 924
    if-lez v1, :cond_21

    .line 925
    .line 926
    iget-object v1, v8, Lw0/w0;->v:Lac/w;

    .line 927
    .line 928
    if-eqz v1, :cond_21

    .line 929
    .line 930
    new-instance v7, Ldc/i;

    .line 931
    .line 932
    const/4 v13, 0x7

    .line 933
    const/4 v14, 0x0

    .line 934
    const/4 v12, 0x0

    .line 935
    invoke-direct/range {v7 .. v14}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;IZ)V

    .line 936
    .line 937
    .line 938
    const/4 v2, 0x3

    .line 939
    const/4 v3, 0x0

    .line 940
    invoke-static {v1, v3, v7, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 941
    .line 942
    .line 943
    :cond_21
    const/4 v12, 0x0

    .line 944
    iput-boolean v12, v8, Lw0/w0;->u:Z

    .line 945
    .line 946
    return-object v19

    .line 947
    :pswitch_5
    iget-object v1, v10, Lw0/w0;->q:Lf1/k1;

    .line 948
    .line 949
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    check-cast v1, Lx1/b;

    .line 954
    .line 955
    if-eqz v1, :cond_22

    .line 956
    .line 957
    iget-wide v2, v1, Lx1/b;->a:J

    .line 958
    .line 959
    :cond_22
    new-instance v1, Lx1/b;

    .line 960
    .line 961
    invoke-direct {v1, v2, v3}, Lx1/b;-><init>(J)V

    .line 962
    .line 963
    .line 964
    return-object v1

    .line 965
    :pswitch_6
    iget-object v1, v10, Lw0/w0;->p:Lf1/k1;

    .line 966
    .line 967
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    check-cast v1, Lx1/b;

    .line 972
    .line 973
    if-eqz v1, :cond_23

    .line 974
    .line 975
    iget-wide v2, v1, Lx1/b;->a:J

    .line 976
    .line 977
    :cond_23
    new-instance v1, Lx1/b;

    .line 978
    .line 979
    invoke-direct {v1, v2, v3}, Lx1/b;-><init>(J)V

    .line 980
    .line 981
    .line 982
    return-object v1

    .line 983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
