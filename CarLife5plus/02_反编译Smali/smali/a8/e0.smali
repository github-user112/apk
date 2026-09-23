.class public final La8/e0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILf9/k;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La8/e0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La8/e0;->b:I

    iput-object p3, p0, La8/e0;->c:Ljava/lang/Object;

    iput-object p2, p0, La8/e0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILh0/v;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La8/e0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La8/e0;->c:Ljava/lang/Object;

    iput p1, p0, La8/e0;->b:I

    iput-object p3, p0, La8/e0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/e0;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v3, v0, La8/e0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, v0, La8/e0;->b:I

    .line 10
    .line 11
    iget-object v5, v0, La8/e0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Lf1/s;

    .line 22
    .line 23
    move-object/from16 v9, p2

    .line 24
    .line 25
    check-cast v9, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    and-int/lit8 v10, v9, 0x3

    .line 32
    .line 33
    if-eq v10, v6, :cond_0

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v6, 0x0

    .line 38
    :goto_0
    and-int/2addr v7, v9

    .line 39
    invoke-virtual {v1, v7, v6}, Lf1/s;->N(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    check-cast v5, Lh0/v;

    .line 46
    .line 47
    invoke-interface {v5, v4, v3, v1, v8}, Lh0/v;->e(ILjava/lang/Object;Lf1/s;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-object v2

    .line 55
    :pswitch_0
    move-object/from16 v14, p1

    .line 56
    .line 57
    check-cast v14, Lf1/s;

    .line 58
    .line 59
    move-object/from16 v1, p2

    .line 60
    .line 61
    check-cast v1, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    check-cast v3, Lf9/k;

    .line 68
    .line 69
    check-cast v5, Ljava/util/List;

    .line 70
    .line 71
    and-int/lit8 v1, v1, 0x3

    .line 72
    .line 73
    if-ne v1, v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v14}, Lf1/s;->z()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v14}, Lf1/s;->Q()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_3
    :goto_2
    sget-object v1, Lp4/o;->a:Le2/f;

    .line 88
    .line 89
    const/high16 v6, 0x41000000    # 8.0f

    .line 90
    .line 91
    const/high16 v9, 0x40800000    # 4.0f

    .line 92
    .line 93
    const/high16 v10, -0x3f000000    # -8.0f

    .line 94
    .line 95
    const/high16 v11, 0x41400000    # 12.0f

    .line 96
    .line 97
    const/high16 v12, 0x41a00000    # 20.0f

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    new-instance v15, Le2/e;

    .line 103
    .line 104
    const/16 v23, 0x0

    .line 105
    .line 106
    const/16 v25, 0x60

    .line 107
    .line 108
    const-string v16, "Filled.ArrowUpward"

    .line 109
    .line 110
    const/high16 v17, 0x41c00000    # 24.0f

    .line 111
    .line 112
    const/high16 v18, 0x41c00000    # 24.0f

    .line 113
    .line 114
    const/high16 v19, 0x41c00000    # 24.0f

    .line 115
    .line 116
    const/high16 v20, 0x41c00000    # 24.0f

    .line 117
    .line 118
    const-wide/16 v21, 0x0

    .line 119
    .line 120
    const/16 v24, 0x0

    .line 121
    .line 122
    invoke-direct/range {v15 .. v25}, Le2/e;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 123
    .line 124
    .line 125
    sget v1, Le2/i0;->a:I

    .line 126
    .line 127
    new-instance v1, Ly1/n0;

    .line 128
    .line 129
    sget-wide v7, Ly1/q;->b:J

    .line 130
    .line 131
    invoke-direct {v1, v7, v8}, Ly1/n0;-><init>(J)V

    .line 132
    .line 133
    .line 134
    new-instance v7, Le2/g;

    .line 135
    .line 136
    invoke-direct {v7}, Le2/g;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v9, v11}, Le2/g;->i(FF)V

    .line 140
    .line 141
    .line 142
    const v8, 0x3fb47ae1    # 1.41f

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v8, v8}, Le2/g;->h(FF)V

    .line 146
    .line 147
    .line 148
    const/high16 v8, 0x41300000    # 11.0f

    .line 149
    .line 150
    const v13, 0x40fa8f5c    # 7.83f

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v8, v13}, Le2/g;->g(FF)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v12}, Le2/g;->k(F)V

    .line 157
    .line 158
    .line 159
    const/high16 v8, 0x40000000    # 2.0f

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Le2/g;->f(F)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v13}, Le2/g;->k(F)V

    .line 165
    .line 166
    .line 167
    const v8, 0x40b28f5c    # 5.58f

    .line 168
    .line 169
    .line 170
    const v13, 0x40b2e148    # 5.59f

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v8, v13}, Le2/g;->h(FF)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7, v12, v11}, Le2/g;->g(FF)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v10, v10}, Le2/g;->h(FF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v10, v6}, Le2/g;->h(FF)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Le2/g;->c()V

    .line 186
    .line 187
    .line 188
    iget-object v7, v7, Le2/g;->a:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-static {v15, v7, v1}, Le2/e;->a(Le2/e;Ljava/util/ArrayList;Ly1/n0;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15}, Le2/e;->b()Le2/f;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    sput-object v1, Lp4/o;->a:Le2/f;

    .line 198
    .line 199
    :goto_3
    const v7, 0x67d5b0e3

    .line 200
    .line 201
    .line 202
    invoke-virtual {v14, v7}, Lf1/s;->W(I)V

    .line 203
    .line 204
    .line 205
    const v7, 0x6e3c21fe

    .line 206
    .line 207
    .line 208
    const v8, -0x6815fd56

    .line 209
    .line 210
    .line 211
    sget-object v13, Lf1/n;->a:Lf1/w0;

    .line 212
    .line 213
    sget-object v19, Lr1/m;->a:Lr1/m;

    .line 214
    .line 215
    if-lez v4, :cond_8

    .line 216
    .line 217
    invoke-virtual {v14, v7}, Lf1/s;->W(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    if-ne v15, v13, :cond_5

    .line 225
    .line 226
    invoke-static {v14}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    :cond_5
    move-object/from16 v20, v15

    .line 231
    .line 232
    check-cast v20, Lb0/k;

    .line 233
    .line 234
    const/4 v15, 0x0

    .line 235
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v14, v8}, Lf1/s;->W(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    invoke-virtual {v14, v4}, Lf1/s;->d(I)Z

    .line 246
    .line 247
    .line 248
    move-result v16

    .line 249
    or-int v15, v15, v16

    .line 250
    .line 251
    invoke-virtual {v14, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v16

    .line 255
    or-int v15, v15, v16

    .line 256
    .line 257
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    if-nez v15, :cond_7

    .line 262
    .line 263
    if-ne v9, v13, :cond_6

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_6
    const/4 v15, 0x0

    .line 267
    goto :goto_5

    .line 268
    :cond_7
    :goto_4
    new-instance v9, La8/d0;

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    invoke-direct {v9, v5, v4, v3, v15}, La8/d0;-><init>(Ljava/util/List;ILf9/k;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v14, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :goto_5
    move-object/from16 v23, v9

    .line 278
    .line 279
    check-cast v23, Lf9/a;

    .line 280
    .line 281
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 282
    .line 283
    .line 284
    const/16 v24, 0x1c

    .line 285
    .line 286
    const/16 v21, 0x0

    .line 287
    .line 288
    const/16 v22, 0x0

    .line 289
    .line 290
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    move-object/from16 v8, v19

    .line 295
    .line 296
    move-object/from16 v19, v9

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_8
    move-object/from16 v8, v19

    .line 300
    .line 301
    const/4 v15, 0x0

    .line 302
    :goto_6
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 303
    .line 304
    .line 305
    const v9, 0x67d60661

    .line 306
    .line 307
    .line 308
    invoke-virtual {v14, v9}, Lf1/s;->W(I)V

    .line 309
    .line 310
    .line 311
    if-lez v4, :cond_9

    .line 312
    .line 313
    sget-object v9, Lc1/a0;->a:Lf1/c0;

    .line 314
    .line 315
    invoke-virtual {v14, v9}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    check-cast v9, Ly1/q;

    .line 320
    .line 321
    iget-wide v10, v9, Ly1/q;->a:J

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_9
    sget-wide v10, Ly1/q;->c:J

    .line 325
    .line 326
    :goto_7
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 327
    .line 328
    .line 329
    const/16 v15, 0x30

    .line 330
    .line 331
    const/high16 v9, -0x3f000000    # -8.0f

    .line 332
    .line 333
    const/16 v16, 0x0

    .line 334
    .line 335
    move-object/from16 v21, v13

    .line 336
    .line 337
    move-wide v12, v10

    .line 338
    const/high16 v11, 0x41a00000    # 20.0f

    .line 339
    .line 340
    const-string v10, "\u4e0a\u79fb"

    .line 341
    .line 342
    move-object v9, v1

    .line 343
    move-object/from16 v11, v19

    .line 344
    .line 345
    move-object/from16 v26, v21

    .line 346
    .line 347
    const/high16 v1, 0x40800000    # 4.0f

    .line 348
    .line 349
    const/high16 v6, 0x41a00000    # 20.0f

    .line 350
    .line 351
    const/high16 v7, 0x41400000    # 12.0f

    .line 352
    .line 353
    invoke-static/range {v9 .. v16}, Lc1/k0;->b(Le2/f;Ljava/lang/String;Lr1/p;JLf1/s;II)V

    .line 354
    .line 355
    .line 356
    const/16 v9, 0xc

    .line 357
    .line 358
    invoke-static {v9, v14}, Lg5/a;->B(ILf1/s;)F

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    invoke-static {v14, v9}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 367
    .line 368
    .line 369
    sget-object v9, Lp9/x1;->b:Le2/f;

    .line 370
    .line 371
    if-eqz v9, :cond_a

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_a
    new-instance v27, Le2/e;

    .line 375
    .line 376
    const/16 v35, 0x0

    .line 377
    .line 378
    const/16 v37, 0x60

    .line 379
    .line 380
    const-string v28, "Filled.ArrowDownward"

    .line 381
    .line 382
    const/high16 v29, 0x41c00000    # 24.0f

    .line 383
    .line 384
    const/high16 v30, 0x41c00000    # 24.0f

    .line 385
    .line 386
    const/high16 v31, 0x41c00000    # 24.0f

    .line 387
    .line 388
    const/high16 v32, 0x41c00000    # 24.0f

    .line 389
    .line 390
    const-wide/16 v33, 0x0

    .line 391
    .line 392
    const/16 v36, 0x0

    .line 393
    .line 394
    invoke-direct/range {v27 .. v37}, Le2/e;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v9, v27

    .line 398
    .line 399
    sget v10, Le2/i0;->a:I

    .line 400
    .line 401
    new-instance v10, Ly1/n0;

    .line 402
    .line 403
    sget-wide v11, Ly1/q;->b:J

    .line 404
    .line 405
    invoke-direct {v10, v11, v12}, Ly1/n0;-><init>(J)V

    .line 406
    .line 407
    .line 408
    new-instance v11, Le2/g;

    .line 409
    .line 410
    invoke-direct {v11}, Le2/g;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v11, v6, v7}, Le2/g;->i(FF)V

    .line 414
    .line 415
    .line 416
    const v6, -0x404b851f    # -1.41f

    .line 417
    .line 418
    .line 419
    invoke-virtual {v11, v6, v6}, Le2/g;->h(FF)V

    .line 420
    .line 421
    .line 422
    const/high16 v6, 0x41500000    # 13.0f

    .line 423
    .line 424
    const v12, 0x41815c29    # 16.17f

    .line 425
    .line 426
    .line 427
    invoke-virtual {v11, v6, v12}, Le2/g;->g(FF)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v11, v1}, Le2/g;->k(F)V

    .line 431
    .line 432
    .line 433
    const/high16 v6, -0x40000000    # -2.0f

    .line 434
    .line 435
    invoke-virtual {v11, v6}, Le2/g;->f(F)V

    .line 436
    .line 437
    .line 438
    const v6, 0x4142b852    # 12.17f

    .line 439
    .line 440
    .line 441
    invoke-virtual {v11, v6}, Le2/g;->l(F)V

    .line 442
    .line 443
    .line 444
    const v6, -0x3f4d70a4    # -5.58f

    .line 445
    .line 446
    .line 447
    const v12, -0x3f4d1eb8    # -5.59f

    .line 448
    .line 449
    .line 450
    invoke-virtual {v11, v6, v12}, Le2/g;->h(FF)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11, v1, v7}, Le2/g;->g(FF)V

    .line 454
    .line 455
    .line 456
    const/high16 v1, 0x41000000    # 8.0f

    .line 457
    .line 458
    invoke-virtual {v11, v1, v1}, Le2/g;->h(FF)V

    .line 459
    .line 460
    .line 461
    const/high16 v6, -0x3f000000    # -8.0f

    .line 462
    .line 463
    invoke-virtual {v11, v1, v6}, Le2/g;->h(FF)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v11}, Le2/g;->c()V

    .line 467
    .line 468
    .line 469
    iget-object v1, v11, Le2/g;->a:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-static {v9, v1, v10}, Le2/e;->a(Le2/e;Ljava/util/ArrayList;Ly1/n0;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v9}, Le2/e;->b()Le2/f;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    sput-object v9, Lp9/x1;->b:Le2/f;

    .line 479
    .line 480
    :goto_8
    const v1, 0x67d633d9

    .line 481
    .line 482
    .line 483
    invoke-virtual {v14, v1}, Lf1/s;->W(I)V

    .line 484
    .line 485
    .line 486
    invoke-static {v5}, Lp9/x1;->u(Ljava/util/List;)I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-ge v4, v1, :cond_e

    .line 491
    .line 492
    const v1, 0x6e3c21fe

    .line 493
    .line 494
    .line 495
    invoke-virtual {v14, v1}, Lf1/s;->W(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    move-object/from16 v6, v26

    .line 503
    .line 504
    if-ne v1, v6, :cond_b

    .line 505
    .line 506
    invoke-static {v14}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    :cond_b
    move-object/from16 v20, v1

    .line 511
    .line 512
    check-cast v20, Lb0/k;

    .line 513
    .line 514
    const/4 v15, 0x0

    .line 515
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 516
    .line 517
    .line 518
    const v1, -0x6815fd56

    .line 519
    .line 520
    .line 521
    invoke-virtual {v14, v1}, Lf1/s;->W(I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v14, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    invoke-virtual {v14, v4}, Lf1/s;->d(I)Z

    .line 529
    .line 530
    .line 531
    move-result v7

    .line 532
    or-int/2addr v1, v7

    .line 533
    invoke-virtual {v14, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    or-int/2addr v1, v7

    .line 538
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    if-nez v1, :cond_c

    .line 543
    .line 544
    if-ne v7, v6, :cond_d

    .line 545
    .line 546
    :cond_c
    new-instance v7, La8/d0;

    .line 547
    .line 548
    const/4 v1, 0x1

    .line 549
    invoke-direct {v7, v5, v4, v3, v1}, La8/d0;-><init>(Ljava/util/List;ILf9/k;I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v14, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    :cond_d
    move-object/from16 v23, v7

    .line 556
    .line 557
    check-cast v23, Lf9/a;

    .line 558
    .line 559
    const/4 v15, 0x0

    .line 560
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 561
    .line 562
    .line 563
    const/16 v24, 0x1c

    .line 564
    .line 565
    const/16 v21, 0x0

    .line 566
    .line 567
    const/16 v22, 0x0

    .line 568
    .line 569
    move-object/from16 v19, v8

    .line 570
    .line 571
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    move-object v11, v1

    .line 576
    goto :goto_9

    .line 577
    :cond_e
    move-object/from16 v6, v26

    .line 578
    .line 579
    const/4 v15, 0x0

    .line 580
    move-object v11, v8

    .line 581
    :goto_9
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 582
    .line 583
    .line 584
    const v1, 0x67d68c17

    .line 585
    .line 586
    .line 587
    invoke-virtual {v14, v1}, Lf1/s;->W(I)V

    .line 588
    .line 589
    .line 590
    invoke-static {v5}, Lp9/x1;->u(Ljava/util/List;)I

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    if-ge v4, v1, :cond_f

    .line 595
    .line 596
    sget-object v1, Lc1/a0;->a:Lf1/c0;

    .line 597
    .line 598
    invoke-virtual {v14, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    check-cast v1, Ly1/q;

    .line 603
    .line 604
    iget-wide v12, v1, Ly1/q;->a:J

    .line 605
    .line 606
    :goto_a
    const/4 v15, 0x0

    .line 607
    goto :goto_b

    .line 608
    :cond_f
    sget-wide v12, Ly1/q;->c:J

    .line 609
    .line 610
    goto :goto_a

    .line 611
    :goto_b
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 612
    .line 613
    .line 614
    const/16 v15, 0x30

    .line 615
    .line 616
    const/16 v16, 0x0

    .line 617
    .line 618
    const-string v10, "\u4e0b\u79fb"

    .line 619
    .line 620
    invoke-static/range {v9 .. v16}, Lc1/k0;->b(Le2/f;Ljava/lang/String;Lr1/p;JLf1/s;II)V

    .line 621
    .line 622
    .line 623
    const/16 v1, 0x14

    .line 624
    .line 625
    invoke-static {v1, v14}, Lg5/a;->B(ILf1/s;)F

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    invoke-static {v8, v1}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-static {v14, v1}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 634
    .line 635
    .line 636
    const v1, -0x6815fd56

    .line 637
    .line 638
    .line 639
    invoke-virtual {v14, v1}, Lf1/s;->W(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v14, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    invoke-virtual {v14, v4}, Lf1/s;->d(I)Z

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    or-int/2addr v1, v7

    .line 651
    invoke-virtual {v14, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v7

    .line 655
    or-int/2addr v1, v7

    .line 656
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v7

    .line 660
    if-nez v1, :cond_10

    .line 661
    .line 662
    if-ne v7, v6, :cond_11

    .line 663
    .line 664
    :cond_10
    new-instance v7, La8/d0;

    .line 665
    .line 666
    invoke-direct {v7, v4, v3, v5}, La8/d0;-><init>(ILf9/k;Ljava/util/List;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v14, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    :cond_11
    check-cast v7, Lf9/a;

    .line 673
    .line 674
    const/4 v15, 0x0

    .line 675
    invoke-virtual {v14, v15}, Lf1/s;->p(Z)V

    .line 676
    .line 677
    .line 678
    const-string v1, "\u5220\u9664"

    .line 679
    .line 680
    const/4 v3, 0x6

    .line 681
    invoke-static {v1, v7, v14, v3, v15}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 682
    .line 683
    .line 684
    :goto_c
    return-object v2

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
