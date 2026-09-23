.class public final Lm7/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lm7/n;

.field public static final b:Lm7/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm7/n;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm7/n;->a:Lm7/n;

    .line 7
    .line 8
    new-instance v0, Lm7/n;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lm7/n;->b:Lm7/n;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(ILf1/s;)V
    .locals 39

    .line 1
    move-object/from16 v9, p2

    .line 2
    .line 3
    const v1, -0x4d36d9dc

    .line 4
    .line 5
    .line 6
    invoke-virtual {v9, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    const/4 v15, 0x2

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_1
    :goto_0
    sget-object v1, Lr1/c;->k:Lr1/g;

    .line 27
    .line 28
    sget-object v2, Ld0/h;->e:Ld0/d;

    .line 29
    .line 30
    sget-object v3, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 31
    .line 32
    const/16 v10, 0x18

    .line 33
    .line 34
    invoke-static {v10, v9}, Lg5/a;->B(ILf1/s;)F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v7, 0x0

    .line 39
    const/16 v8, 0xd

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v10, v9}, Lg5/a;->B(ILf1/s;)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static {v3, v4, v5, v15}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/16 v4, 0x36

    .line 57
    .line 58
    invoke-static {v2, v1, v9, v4}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-wide v4, v9, Lf1/s;->T:J

    .line 63
    .line 64
    const/16 v2, 0x20

    .line 65
    .line 66
    ushr-long v6, v4, v2

    .line 67
    .line 68
    xor-long/2addr v4, v6

    .line 69
    long-to-int v5, v4

    .line 70
    invoke-virtual {v9}, Lf1/s;->l()Lf1/q1;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v9, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 84
    .line 85
    invoke-virtual {v9}, Lf1/s;->a0()V

    .line 86
    .line 87
    .line 88
    iget-boolean v7, v9, Lf1/s;->S:Z

    .line 89
    .line 90
    if-eqz v7, :cond_2

    .line 91
    .line 92
    invoke-virtual {v9, v6}, Lf1/s;->k(Lf9/a;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v9}, Lf1/s;->k0()V

    .line 97
    .line 98
    .line 99
    :goto_1
    sget-object v7, Lq2/i;->e:Lq2/h;

    .line 100
    .line 101
    invoke-static {v9, v7, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 105
    .line 106
    invoke-static {v9, v1, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 110
    .line 111
    iget-boolean v8, v9, Lf1/s;->S:Z

    .line 112
    .line 113
    if-nez v8, :cond_3

    .line 114
    .line 115
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-static {v8, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_4

    .line 128
    .line 129
    :cond_3
    invoke-static {v5, v9, v5, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    sget-object v5, Lq2/i;->c:Lq2/h;

    .line 133
    .line 134
    invoke-static {v9, v5, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const v12, 0x6e3c21fe

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v12}, Lf1/s;->W(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    sget-object v13, Lf1/n;->a:Lf1/w0;

    .line 148
    .line 149
    if-ne v3, v13, :cond_5

    .line 150
    .line 151
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v9, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    move-object v14, v3

    .line 161
    check-cast v14, Lf1/b1;

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    invoke-virtual {v9, v3}, Lf1/s;->p(Z)V

    .line 165
    .line 166
    .line 167
    sget-object v8, Ld0/h;->a:Ld0/b;

    .line 168
    .line 169
    sget-object v10, Lr1/c;->j:Lr1/g;

    .line 170
    .line 171
    invoke-static {v8, v10, v9, v3}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    iget-wide v10, v9, Lf1/s;->T:J

    .line 176
    .line 177
    ushr-long v16, v10, v2

    .line 178
    .line 179
    xor-long v10, v10, v16

    .line 180
    .line 181
    long-to-int v2, v10

    .line 182
    invoke-virtual {v9}, Lf1/s;->l()Lf1/q1;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    sget-object v11, Lr1/m;->a:Lr1/m;

    .line 187
    .line 188
    invoke-static {v9, v11}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    invoke-virtual {v9}, Lf1/s;->a0()V

    .line 193
    .line 194
    .line 195
    iget-boolean v12, v9, Lf1/s;->S:Z

    .line 196
    .line 197
    if-eqz v12, :cond_6

    .line 198
    .line 199
    invoke-virtual {v9, v6}, Lf1/s;->k(Lf9/a;)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    invoke-virtual {v9}, Lf1/s;->k0()V

    .line 204
    .line 205
    .line 206
    :goto_2
    invoke-static {v9, v7, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v9, v1, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-boolean v1, v9, Lf1/s;->S:Z

    .line 213
    .line 214
    if-nez v1, :cond_7

    .line 215
    .line 216
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v1, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_8

    .line 229
    .line 230
    :cond_7
    invoke-static {v2, v9, v2, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    invoke-static {v9, v5, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    const v1, 0x4c5de2

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-ne v1, v13, :cond_9

    .line 247
    .line 248
    new-instance v1, Lj8/h;

    .line 249
    .line 250
    const/16 v2, 0xf

    .line 251
    .line 252
    invoke-direct {v1, v14, v2}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    move-object v2, v1

    .line 259
    check-cast v2, Lf9/a;

    .line 260
    .line 261
    invoke-virtual {v9, v3}, Lf1/s;->p(Z)V

    .line 262
    .line 263
    .line 264
    sget-object v1, Lp9/x1;->a:Le2/f;

    .line 265
    .line 266
    const/high16 v12, 0x40a00000    # 5.0f

    .line 267
    .line 268
    const/high16 v4, 0x40400000    # 3.0f

    .line 269
    .line 270
    const/high16 v5, 0x40000000    # 2.0f

    .line 271
    .line 272
    if-eqz v1, :cond_a

    .line 273
    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :cond_a
    new-instance v17, Le2/e;

    .line 277
    .line 278
    const/16 v25, 0x0

    .line 279
    .line 280
    const/16 v27, 0x60

    .line 281
    .line 282
    const-string v18, "AutoMirrored.Filled.ExitToApp"

    .line 283
    .line 284
    const/high16 v19, 0x41c00000    # 24.0f

    .line 285
    .line 286
    const/high16 v20, 0x41c00000    # 24.0f

    .line 287
    .line 288
    const/high16 v21, 0x41c00000    # 24.0f

    .line 289
    .line 290
    const/high16 v22, 0x41c00000    # 24.0f

    .line 291
    .line 292
    const-wide/16 v23, 0x0

    .line 293
    .line 294
    const/16 v26, 0x1

    .line 295
    .line 296
    invoke-direct/range {v17 .. v27}, Le2/e;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 297
    .line 298
    .line 299
    move-object/from16 v1, v17

    .line 300
    .line 301
    sget v6, Le2/i0;->a:I

    .line 302
    .line 303
    new-instance v6, Ly1/n0;

    .line 304
    .line 305
    sget-wide v7, Ly1/q;->b:J

    .line 306
    .line 307
    invoke-direct {v6, v7, v8}, Ly1/n0;-><init>(J)V

    .line 308
    .line 309
    .line 310
    new-instance v7, Le2/g;

    .line 311
    .line 312
    invoke-direct {v7}, Le2/g;-><init>()V

    .line 313
    .line 314
    .line 315
    const v8, 0x412170a4    # 10.09f

    .line 316
    .line 317
    .line 318
    const v10, 0x417970a4    # 15.59f

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, v8, v10}, Le2/g;->i(FF)V

    .line 322
    .line 323
    .line 324
    const/high16 v8, 0x41380000    # 11.5f

    .line 325
    .line 326
    const/high16 v10, 0x41880000    # 17.0f

    .line 327
    .line 328
    invoke-virtual {v7, v8, v10}, Le2/g;->g(FF)V

    .line 329
    .line 330
    .line 331
    const/high16 v8, -0x3f600000    # -5.0f

    .line 332
    .line 333
    invoke-virtual {v7, v12, v8}, Le2/g;->h(FF)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v7, v8, v8}, Le2/g;->h(FF)V

    .line 337
    .line 338
    .line 339
    const v8, -0x404b851f    # -1.41f

    .line 340
    .line 341
    .line 342
    const v10, 0x3fb47ae1    # 1.41f

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7, v8, v10}, Le2/g;->h(FF)V

    .line 346
    .line 347
    .line 348
    const v8, 0x414ab852    # 12.67f

    .line 349
    .line 350
    .line 351
    const/high16 v10, 0x41300000    # 11.0f

    .line 352
    .line 353
    invoke-virtual {v7, v8, v10}, Le2/g;->g(FF)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v4}, Le2/g;->e(F)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7, v5}, Le2/g;->l(F)V

    .line 360
    .line 361
    .line 362
    const v8, 0x411ab852    # 9.67f

    .line 363
    .line 364
    .line 365
    invoke-virtual {v7, v8}, Le2/g;->f(F)V

    .line 366
    .line 367
    .line 368
    const v8, -0x3fdae148    # -2.58f

    .line 369
    .line 370
    .line 371
    const v10, 0x4025c28f    # 2.59f

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7, v8, v10}, Le2/g;->h(FF)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7}, Le2/g;->c()V

    .line 378
    .line 379
    .line 380
    const/high16 v8, 0x41980000    # 19.0f

    .line 381
    .line 382
    invoke-virtual {v7, v8, v4}, Le2/g;->i(FF)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v12}, Le2/g;->e(F)V

    .line 386
    .line 387
    .line 388
    const/high16 v22, -0x40000000    # -2.0f

    .line 389
    .line 390
    const/high16 v23, 0x40000000    # 2.0f

    .line 391
    .line 392
    const v18, -0x4071eb85    # -1.11f

    .line 393
    .line 394
    .line 395
    const/16 v19, 0x0

    .line 396
    .line 397
    const/high16 v20, -0x40000000    # -2.0f

    .line 398
    .line 399
    const v21, 0x3f666666    # 0.9f

    .line 400
    .line 401
    .line 402
    move-object/from16 v17, v7

    .line 403
    .line 404
    invoke-virtual/range {v17 .. v23}, Le2/g;->d(FFFFFF)V

    .line 405
    .line 406
    .line 407
    const/high16 v8, 0x40800000    # 4.0f

    .line 408
    .line 409
    invoke-virtual {v7, v8}, Le2/g;->l(F)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7, v5}, Le2/g;->f(F)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v7, v12}, Le2/g;->k(F)V

    .line 416
    .line 417
    .line 418
    const/high16 v10, 0x41600000    # 14.0f

    .line 419
    .line 420
    invoke-virtual {v7, v10}, Le2/g;->f(F)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7, v10}, Le2/g;->l(F)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v7, v12}, Le2/g;->e(F)V

    .line 427
    .line 428
    .line 429
    const/high16 v11, -0x3f800000    # -4.0f

    .line 430
    .line 431
    invoke-virtual {v7, v11}, Le2/g;->l(F)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v4}, Le2/g;->e(F)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7, v8}, Le2/g;->l(F)V

    .line 438
    .line 439
    .line 440
    const/high16 v22, 0x40000000    # 2.0f

    .line 441
    .line 442
    const/16 v18, 0x0

    .line 443
    .line 444
    const v19, 0x3f8ccccd    # 1.1f

    .line 445
    .line 446
    .line 447
    const v20, 0x3f63d70a    # 0.89f

    .line 448
    .line 449
    .line 450
    const/high16 v21, 0x40000000    # 2.0f

    .line 451
    .line 452
    invoke-virtual/range {v17 .. v23}, Le2/g;->d(FFFFFF)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7, v10}, Le2/g;->f(F)V

    .line 456
    .line 457
    .line 458
    const/high16 v23, -0x40000000    # -2.0f

    .line 459
    .line 460
    const v18, 0x3f8ccccd    # 1.1f

    .line 461
    .line 462
    .line 463
    const/16 v19, 0x0

    .line 464
    .line 465
    const/high16 v20, 0x40000000    # 2.0f

    .line 466
    .line 467
    const v21, -0x4099999a    # -0.9f

    .line 468
    .line 469
    .line 470
    invoke-virtual/range {v17 .. v23}, Le2/g;->d(FFFFFF)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7, v12}, Le2/g;->k(F)V

    .line 474
    .line 475
    .line 476
    const/high16 v22, -0x40000000    # -2.0f

    .line 477
    .line 478
    const/16 v18, 0x0

    .line 479
    .line 480
    const v19, -0x40733333    # -1.1f

    .line 481
    .line 482
    .line 483
    const v20, -0x4099999a    # -0.9f

    .line 484
    .line 485
    .line 486
    const/high16 v21, -0x40000000    # -2.0f

    .line 487
    .line 488
    invoke-virtual/range {v17 .. v23}, Le2/g;->d(FFFFFF)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7}, Le2/g;->c()V

    .line 492
    .line 493
    .line 494
    iget-object v7, v7, Le2/g;->a:Ljava/util/ArrayList;

    .line 495
    .line 496
    invoke-static {v1, v7, v6}, Le2/e;->a(Le2/e;Ljava/util/ArrayList;Ly1/n0;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1}, Le2/e;->b()Le2/f;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    sput-object v1, Lp9/x1;->a:Le2/f;

    .line 504
    .line 505
    :goto_3
    const/16 v10, 0x6036

    .line 506
    .line 507
    const/16 v11, 0x68

    .line 508
    .line 509
    move-object v3, v1

    .line 510
    const/4 v6, 0x0

    .line 511
    const-string v1, "\u9000\u51fa"

    .line 512
    .line 513
    const/high16 v7, 0x40400000    # 3.0f

    .line 514
    .line 515
    const/high16 v8, 0x40000000    # 2.0f

    .line 516
    .line 517
    const-wide/16 v4, 0x0

    .line 518
    .line 519
    const/16 v17, 0x0

    .line 520
    .line 521
    const/high16 v6, 0x43340000    # 180.0f

    .line 522
    .line 523
    const/high16 v18, 0x40400000    # 3.0f

    .line 524
    .line 525
    const/4 v7, 0x0

    .line 526
    const/high16 v19, 0x40000000    # 2.0f

    .line 527
    .line 528
    const/4 v8, 0x0

    .line 529
    const/4 v15, 0x0

    .line 530
    invoke-static/range {v1 .. v11}, Lg5/a;->n(Ljava/lang/String;Lf9/a;Le2/f;JFIILf1/s;II)V

    .line 531
    .line 532
    .line 533
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Ljava/lang/Boolean;

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    new-instance v2, La8/m;

    .line 544
    .line 545
    const/16 v3, 0x10

    .line 546
    .line 547
    invoke-direct {v2, v14, v3}, La8/m;-><init>(Lf1/b1;I)V

    .line 548
    .line 549
    .line 550
    const v3, -0x1243c76d

    .line 551
    .line 552
    .line 553
    invoke-static {v3, v2, v9}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    sget-object v10, Lm7/c;->a:Ln1/c;

    .line 558
    .line 559
    sget-object v11, Lm7/c;->c:Ln1/c;

    .line 560
    .line 561
    move-object v2, v13

    .line 562
    const/high16 v13, 0x30c00000

    .line 563
    .line 564
    const/16 v14, 0x17e

    .line 565
    .line 566
    move-object v3, v2

    .line 567
    const/4 v2, 0x0

    .line 568
    move-object v5, v3

    .line 569
    const-wide/16 v3, 0x0

    .line 570
    .line 571
    move-object v6, v5

    .line 572
    const/4 v5, 0x0

    .line 573
    move-object v7, v6

    .line 574
    const/4 v6, 0x0

    .line 575
    move-object/from16 v17, v7

    .line 576
    .line 577
    const/4 v7, 0x0

    .line 578
    const/4 v9, 0x0

    .line 579
    move-object/from16 v12, p2

    .line 580
    .line 581
    move-object/from16 v0, v17

    .line 582
    .line 583
    const v15, 0x6e3c21fe

    .line 584
    .line 585
    .line 586
    invoke-static/range {v1 .. v14}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 587
    .line 588
    .line 589
    move-object v9, v12

    .line 590
    invoke-virtual {v9, v15}, Lf1/s;->W(I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    if-ne v1, v0, :cond_b

    .line 598
    .line 599
    new-instance v1, Lm7/e;

    .line 600
    .line 601
    const/4 v2, 0x3

    .line 602
    invoke-direct {v1, v2}, Lm7/e;-><init>(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v9, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    :cond_b
    move-object v2, v1

    .line 609
    check-cast v2, Lf9/a;

    .line 610
    .line 611
    const/4 v6, 0x0

    .line 612
    invoke-virtual {v9, v6}, Lf1/s;->p(Z)V

    .line 613
    .line 614
    .line 615
    sget-object v1, Lp9/q;->b:Le2/f;

    .line 616
    .line 617
    if-eqz v1, :cond_c

    .line 618
    .line 619
    :goto_4
    move-object v3, v1

    .line 620
    goto/16 :goto_5

    .line 621
    .line 622
    :cond_c
    new-instance v28, Le2/e;

    .line 623
    .line 624
    const/16 v36, 0x0

    .line 625
    .line 626
    const/16 v38, 0x60

    .line 627
    .line 628
    const-string v29, "Outlined.Home"

    .line 629
    .line 630
    const/high16 v30, 0x41c00000    # 24.0f

    .line 631
    .line 632
    const/high16 v31, 0x41c00000    # 24.0f

    .line 633
    .line 634
    const/high16 v32, 0x41c00000    # 24.0f

    .line 635
    .line 636
    const/high16 v33, 0x41c00000    # 24.0f

    .line 637
    .line 638
    const-wide/16 v34, 0x0

    .line 639
    .line 640
    const/16 v37, 0x0

    .line 641
    .line 642
    invoke-direct/range {v28 .. v38}, Le2/e;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 643
    .line 644
    .line 645
    move-object/from16 v1, v28

    .line 646
    .line 647
    sget v3, Le2/i0;->a:I

    .line 648
    .line 649
    new-instance v3, Ly1/n0;

    .line 650
    .line 651
    sget-wide v4, Ly1/q;->b:J

    .line 652
    .line 653
    invoke-direct {v3, v4, v5}, Ly1/n0;-><init>(J)V

    .line 654
    .line 655
    .line 656
    new-instance v4, Le2/g;

    .line 657
    .line 658
    invoke-direct {v4}, Le2/g;-><init>()V

    .line 659
    .line 660
    .line 661
    const v5, 0x40b6147b    # 5.69f

    .line 662
    .line 663
    .line 664
    const/high16 v6, 0x41400000    # 12.0f

    .line 665
    .line 666
    invoke-virtual {v4, v6, v5}, Le2/g;->i(FF)V

    .line 667
    .line 668
    .line 669
    const/high16 v5, 0x40900000    # 4.5f

    .line 670
    .line 671
    const/high16 v7, 0x40a00000    # 5.0f

    .line 672
    .line 673
    invoke-virtual {v4, v7, v5}, Le2/g;->h(FF)V

    .line 674
    .line 675
    .line 676
    const/high16 v5, 0x41900000    # 18.0f

    .line 677
    .line 678
    invoke-virtual {v4, v5}, Le2/g;->k(F)V

    .line 679
    .line 680
    .line 681
    const/high16 v5, -0x40000000    # -2.0f

    .line 682
    .line 683
    invoke-virtual {v4, v5}, Le2/g;->f(F)V

    .line 684
    .line 685
    .line 686
    const/high16 v5, -0x3f400000    # -6.0f

    .line 687
    .line 688
    invoke-virtual {v4, v5}, Le2/g;->l(F)V

    .line 689
    .line 690
    .line 691
    const/high16 v8, 0x41100000    # 9.0f

    .line 692
    .line 693
    invoke-virtual {v4, v8}, Le2/g;->e(F)V

    .line 694
    .line 695
    .line 696
    const/high16 v8, 0x40c00000    # 6.0f

    .line 697
    .line 698
    invoke-virtual {v4, v8}, Le2/g;->l(F)V

    .line 699
    .line 700
    .line 701
    const/high16 v10, 0x40e00000    # 7.0f

    .line 702
    .line 703
    invoke-virtual {v4, v10}, Le2/g;->e(F)V

    .line 704
    .line 705
    .line 706
    const v10, -0x3f06147b    # -7.81f

    .line 707
    .line 708
    .line 709
    invoke-virtual {v4, v10}, Le2/g;->l(F)V

    .line 710
    .line 711
    .line 712
    const/high16 v10, -0x3f700000    # -4.5f

    .line 713
    .line 714
    invoke-virtual {v4, v7, v10}, Le2/g;->h(FF)V

    .line 715
    .line 716
    .line 717
    const/high16 v7, 0x40400000    # 3.0f

    .line 718
    .line 719
    invoke-virtual {v4, v6, v7}, Le2/g;->i(FF)V

    .line 720
    .line 721
    .line 722
    const/high16 v10, 0x40000000    # 2.0f

    .line 723
    .line 724
    invoke-virtual {v4, v10, v6}, Le2/g;->g(FF)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v4, v7}, Le2/g;->f(F)V

    .line 728
    .line 729
    .line 730
    const/high16 v11, 0x41000000    # 8.0f

    .line 731
    .line 732
    invoke-virtual {v4, v11}, Le2/g;->l(F)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v4, v8}, Le2/g;->f(F)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4, v5}, Le2/g;->l(F)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4, v10}, Le2/g;->f(F)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v4, v8}, Le2/g;->l(F)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4, v8}, Le2/g;->f(F)V

    .line 748
    .line 749
    .line 750
    const/high16 v5, -0x3f000000    # -8.0f

    .line 751
    .line 752
    invoke-virtual {v4, v5}, Le2/g;->l(F)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v4, v7}, Le2/g;->f(F)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v4, v6, v7}, Le2/g;->g(FF)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v4}, Le2/g;->c()V

    .line 762
    .line 763
    .line 764
    iget-object v4, v4, Le2/g;->a:Ljava/util/ArrayList;

    .line 765
    .line 766
    invoke-static {v1, v4, v3}, Le2/e;->a(Le2/e;Ljava/util/ArrayList;Ly1/n0;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1}, Le2/e;->b()Le2/f;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    sput-object v1, Lp9/q;->b:Le2/f;

    .line 774
    .line 775
    goto/16 :goto_4

    .line 776
    .line 777
    :goto_5
    const/16 v10, 0x36

    .line 778
    .line 779
    const/16 v11, 0x78

    .line 780
    .line 781
    const-string v1, "\u8fd4\u56de\u684c\u9762"

    .line 782
    .line 783
    const-wide/16 v4, 0x0

    .line 784
    .line 785
    const/4 v6, 0x0

    .line 786
    const/4 v7, 0x0

    .line 787
    const/4 v8, 0x0

    .line 788
    invoke-static/range {v1 .. v11}, Lg5/a;->n(Ljava/lang/String;Lf9/a;Le2/f;JFIILf1/s;II)V

    .line 789
    .line 790
    .line 791
    const/4 v12, 0x1

    .line 792
    invoke-static {v9, v12, v15}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    if-ne v1, v0, :cond_d

    .line 797
    .line 798
    new-instance v1, Lm7/e;

    .line 799
    .line 800
    const/4 v0, 0x4

    .line 801
    invoke-direct {v1, v0}, Lm7/e;-><init>(I)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v9, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    :cond_d
    move-object v2, v1

    .line 808
    check-cast v2, Lf9/a;

    .line 809
    .line 810
    const/4 v6, 0x0

    .line 811
    invoke-virtual {v9, v6}, Lf1/s;->p(Z)V

    .line 812
    .line 813
    .line 814
    const/16 v10, 0x36

    .line 815
    .line 816
    const/16 v11, 0x7c

    .line 817
    .line 818
    const-string v1, "\u8bbe\u7f6e"

    .line 819
    .line 820
    const/4 v3, 0x0

    .line 821
    const-wide/16 v4, 0x0

    .line 822
    .line 823
    const/4 v6, 0x0

    .line 824
    const/4 v7, 0x0

    .line 825
    const/4 v8, 0x0

    .line 826
    invoke-static/range {v1 .. v11}, Lg5/a;->n(Ljava/lang/String;Lf9/a;Le2/f;JFIILf1/s;II)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v9, v12}, Lf1/s;->p(Z)V

    .line 830
    .line 831
    .line 832
    :goto_6
    invoke-virtual {v9}, Lf1/s;->r()Lf1/w1;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    if-eqz v0, :cond_e

    .line 837
    .line 838
    new-instance v1, Lm7/l;

    .line 839
    .line 840
    const/4 v4, 0x2

    .line 841
    move-object/from16 v2, p0

    .line 842
    .line 843
    move/from16 v3, p1

    .line 844
    .line 845
    invoke-direct {v1, v2, v3, v4}, Lm7/l;-><init>(Lm7/n;II)V

    .line 846
    .line 847
    .line 848
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 849
    .line 850
    return-void

    .line 851
    :cond_e
    move-object/from16 v2, p0

    .line 852
    .line 853
    return-void
.end method

.method public b(Lm7/z;Lf1/s;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v4, p2

    .line 4
    .line 5
    const v1, 0x7f07005a

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f070059

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "state"

    .line 20
    .line 21
    invoke-static {v0, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lm7/z;->i:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v5, v0, Lm7/z;->j:Ljava/lang/String;

    .line 27
    .line 28
    iget v10, v0, Lm7/z;->a:I

    .line 29
    .line 30
    iget-object v11, v0, Lm7/z;->b:Lm7/a0;

    .line 31
    .line 32
    const v6, -0x3bff6d51

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v6}, Lf1/s;->Y(I)Lf1/s;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x2

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v6, 0x2

    .line 48
    :goto_0
    or-int v6, p3, v6

    .line 49
    .line 50
    and-int/lit8 v6, v6, 0x3

    .line 51
    .line 52
    if-ne v6, v7, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_2
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v12, 0x1

    .line 71
    if-eqz v6, :cond_6

    .line 72
    .line 73
    if-eq v6, v12, :cond_4

    .line 74
    .line 75
    if-eq v6, v7, :cond_3

    .line 76
    .line 77
    iget-object v1, v0, Lm7/z;->k:Ljava/lang/String;

    .line 78
    .line 79
    const v2, 0x7f070058

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v3, Lr8/j;

    .line 87
    .line 88
    invoke-direct {v3, v1, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    new-instance v3, Lr8/j;

    .line 93
    .line 94
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    const/16 v6, 0x64

    .line 99
    .line 100
    if-ne v10, v6, :cond_5

    .line 101
    .line 102
    new-instance v3, Lr8/j;

    .line 103
    .line 104
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    new-instance v2, Lr8/j;

    .line 109
    .line 110
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    move-object v3, v2

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    new-instance v2, Lr8/j;

    .line 116
    .line 117
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :goto_3
    iget-object v1, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .line 125
    iget-object v2, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    const v3, 0x4c5de2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v3}, Lf1/s;->W(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 148
    .line 149
    const/4 v13, 0x0

    .line 150
    if-nez v3, :cond_7

    .line 151
    .line 152
    if-ne v5, v6, :cond_9

    .line 153
    .line 154
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-lez v3, :cond_8

    .line 159
    .line 160
    new-instance v3, Ljava/io/File;

    .line 161
    .line 162
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v5, v13}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const-string v8, "cover/"

    .line 171
    .line 172
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-direct {v3, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    new-instance v3, Ly1/f;

    .line 196
    .line 197
    invoke-direct {v3, v1}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    .line 199
    .line 200
    move-object v5, v3

    .line 201
    goto :goto_4

    .line 202
    :cond_8
    move-object v5, v13

    .line 203
    :goto_4
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_9
    move-object v1, v5

    .line 207
    check-cast v1, Ly1/f;

    .line 208
    .line 209
    const/4 v14, 0x0

    .line 210
    invoke-virtual {v4, v14}, Lf1/s;->p(Z)V

    .line 211
    .line 212
    .line 213
    sget-object v3, Lr1/c;->n:Lr1/f;

    .line 214
    .line 215
    const v5, 0x6e3c21fe

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v5}, Lf1/s;->W(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    if-ne v8, v6, :cond_a

    .line 226
    .line 227
    invoke-static {v4}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    :cond_a
    move-object/from16 v16, v8

    .line 232
    .line 233
    check-cast v16, Lb0/k;

    .line 234
    .line 235
    invoke-static {v4, v14, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    if-ne v5, v6, :cond_b

    .line 240
    .line 241
    new-instance v5, Lm7/e;

    .line 242
    .line 243
    const/4 v6, 0x2

    .line 244
    invoke-direct {v5, v6}, Lm7/e;-><init>(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_b
    move-object/from16 v19, v5

    .line 251
    .line 252
    check-cast v19, Lf9/a;

    .line 253
    .line 254
    invoke-virtual {v4, v14}, Lf1/s;->p(Z)V

    .line 255
    .line 256
    .line 257
    const/16 v20, 0x1c

    .line 258
    .line 259
    sget-object v15, Lr1/m;->a:Lr1/m;

    .line 260
    .line 261
    const/16 v17, 0x0

    .line 262
    .line 263
    const/16 v18, 0x0

    .line 264
    .line 265
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    sget-object v6, Ld0/h;->c:Ld0/b;

    .line 270
    .line 271
    const/16 v8, 0x30

    .line 272
    .line 273
    invoke-static {v6, v3, v4, v8}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    iget-wide v8, v4, Lf1/s;->T:J

    .line 278
    .line 279
    const/16 v6, 0x20

    .line 280
    .line 281
    ushr-long v16, v8, v6

    .line 282
    .line 283
    xor-long v8, v8, v16

    .line 284
    .line 285
    long-to-int v6, v8

    .line 286
    invoke-virtual {v4}, Lf1/s;->l()Lf1/q1;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    invoke-static {v4, v5}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    sget-object v9, Lq2/j;->d0:Lq2/i;

    .line 295
    .line 296
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    sget-object v9, Lq2/i;->b:Lq2/a0;

    .line 300
    .line 301
    invoke-virtual {v4}, Lf1/s;->a0()V

    .line 302
    .line 303
    .line 304
    iget-boolean v12, v4, Lf1/s;->S:Z

    .line 305
    .line 306
    if-eqz v12, :cond_c

    .line 307
    .line 308
    invoke-virtual {v4, v9}, Lf1/s;->k(Lf9/a;)V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_c
    invoke-virtual {v4}, Lf1/s;->k0()V

    .line 313
    .line 314
    .line 315
    :goto_5
    sget-object v9, Lq2/i;->e:Lq2/h;

    .line 316
    .line 317
    invoke-static {v4, v9, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    sget-object v3, Lq2/i;->d:Lq2/h;

    .line 321
    .line 322
    invoke-static {v4, v3, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    sget-object v3, Lq2/i;->f:Lq2/h;

    .line 326
    .line 327
    iget-boolean v8, v4, Lf1/s;->S:Z

    .line 328
    .line 329
    if-nez v8, :cond_d

    .line 330
    .line 331
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-static {v8, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-nez v8, :cond_e

    .line 344
    .line 345
    :cond_d
    invoke-static {v6, v4, v6, v3}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 346
    .line 347
    .line 348
    :cond_e
    sget-object v3, Lq2/i;->c:Lq2/h;

    .line 349
    .line 350
    invoke-static {v4, v3, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    const v3, 0x3fdc53ef    # 1.7213115f

    .line 354
    .line 355
    .line 356
    const/4 v5, 0x0

    .line 357
    const/16 v12, 0x10

    .line 358
    .line 359
    if-eqz v1, :cond_f

    .line 360
    .line 361
    const v2, 0x3875903b

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v2}, Lf1/s;->W(I)V

    .line 365
    .line 366
    .line 367
    invoke-static {v12, v4}, Lg5/a;->B(ILf1/s;)F

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    invoke-static {v15, v2, v5, v7}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    const/16 v5, 0x6030

    .line 380
    .line 381
    const/16 v6, 0xe8

    .line 382
    .line 383
    const/4 v2, 0x0

    .line 384
    invoke-static/range {v1 .. v6}, Lp9/q;->c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v14}, Lf1/s;->p(Z)V

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_f
    const v1, 0x387b05e5

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v1}, Lf1/s;->W(I)V

    .line 395
    .line 396
    .line 397
    invoke-static {v2, v4}, Lp9/p1;->B(ILf1/s;)Ld2/b;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-static {v12, v4}, Lg5/a;->B(ILf1/s;)F

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-static {v15, v2, v5, v7}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    const/16 v8, 0x6030

    .line 414
    .line 415
    const/16 v9, 0x68

    .line 416
    .line 417
    const/4 v2, 0x0

    .line 418
    const/4 v4, 0x0

    .line 419
    sget-object v5, Lo2/j;->a:Lo2/i;

    .line 420
    .line 421
    const/4 v6, 0x0

    .line 422
    move-object/from16 v7, p2

    .line 423
    .line 424
    invoke-static/range {v1 .. v9}, Lp9/q;->b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V

    .line 425
    .line 426
    .line 427
    move-object v4, v7

    .line 428
    invoke-virtual {v4, v14}, Lf1/s;->p(Z)V

    .line 429
    .line 430
    .line 431
    :goto_6
    sget-object v1, Lm7/a0;->c:Lm7/n;

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    sget-object v1, Lm7/a0;->k:Lz8/b;

    .line 437
    .line 438
    invoke-virtual {v1}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-eqz v2, :cond_11

    .line 447
    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    move-object v3, v2

    .line 453
    check-cast v3, Lm7/a0;

    .line 454
    .line 455
    iget v3, v3, Lm7/a0;->b:I

    .line 456
    .line 457
    iget v5, v11, Lm7/a0;->b:I

    .line 458
    .line 459
    if-ne v3, v5, :cond_10

    .line 460
    .line 461
    move-object v13, v2

    .line 462
    :cond_11
    check-cast v13, Lm7/a0;

    .line 463
    .line 464
    if-eqz v13, :cond_12

    .line 465
    .line 466
    iget-object v1, v13, Lm7/a0;->a:Ljava/lang/String;

    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_12
    const-string v1, "\u672a\u77e5\u72b6\u6001"

    .line 470
    .line 471
    :goto_7
    sget-object v2, Lm7/a0;->e:Lm7/a0;

    .line 472
    .line 473
    if-ne v11, v2, :cond_13

    .line 474
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v3, "%"

    .line 484
    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    goto :goto_8

    .line 493
    :cond_13
    const-string v2, ""

    .line 494
    .line 495
    :goto_8
    invoke-static {v1, v2}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-static {v12, v4}, Lg5/a;->B(ILf1/s;)F

    .line 500
    .line 501
    .line 502
    move-result v23

    .line 503
    const/16 v25, 0x0

    .line 504
    .line 505
    const/16 v26, 0xd

    .line 506
    .line 507
    const/16 v22, 0x0

    .line 508
    .line 509
    const/16 v24, 0x0

    .line 510
    .line 511
    move-object/from16 v21, v15

    .line 512
    .line 513
    invoke-static/range {v21 .. v26}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    const/16 v3, 0x16

    .line 518
    .line 519
    invoke-static {v3, v4}, Lg5/a;->B(ILf1/s;)F

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    const-wide v5, 0x100000000L

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    invoke-static {v3, v5, v6}, Lc7/a;->M(FJ)J

    .line 529
    .line 530
    .line 531
    move-result-wide v5

    .line 532
    sget-object v3, Lc1/y;->a:Lf1/w2;

    .line 533
    .line 534
    invoke-virtual {v4, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    check-cast v3, Lc1/w;

    .line 539
    .line 540
    iget-wide v7, v3, Lc1/w;->o:J

    .line 541
    .line 542
    const/16 v20, 0x0

    .line 543
    .line 544
    const v21, 0x1fff0

    .line 545
    .line 546
    .line 547
    move-wide v3, v7

    .line 548
    const/4 v7, 0x0

    .line 549
    const-wide/16 v8, 0x0

    .line 550
    .line 551
    const/4 v10, 0x0

    .line 552
    const-wide/16 v11, 0x0

    .line 553
    .line 554
    const/4 v13, 0x0

    .line 555
    const/4 v14, 0x0

    .line 556
    const/4 v15, 0x0

    .line 557
    const/16 v17, 0x1

    .line 558
    .line 559
    const/16 v16, 0x0

    .line 560
    .line 561
    const/16 v18, 0x1

    .line 562
    .line 563
    const/16 v17, 0x0

    .line 564
    .line 565
    const/16 v19, 0x0

    .line 566
    .line 567
    move-object/from16 v18, p2

    .line 568
    .line 569
    const/4 v0, 0x1

    .line 570
    invoke-static/range {v1 .. v21}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 571
    .line 572
    .line 573
    move-object/from16 v4, v18

    .line 574
    .line 575
    invoke-virtual {v4, v0}, Lf1/s;->p(Z)V

    .line 576
    .line 577
    .line 578
    :goto_9
    invoke-virtual {v4}, Lf1/s;->r()Lf1/w1;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    if-eqz v0, :cond_14

    .line 583
    .line 584
    new-instance v1, Lm7/m;

    .line 585
    .line 586
    const/4 v2, 0x0

    .line 587
    move-object/from16 v3, p0

    .line 588
    .line 589
    move-object/from16 v4, p1

    .line 590
    .line 591
    move/from16 v5, p3

    .line 592
    .line 593
    invoke-direct {v1, v3, v4, v5, v2}, Lm7/m;-><init>(Lm7/n;Lm7/z;II)V

    .line 594
    .line 595
    .line 596
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 597
    .line 598
    return-void

    .line 599
    :cond_14
    move-object/from16 v3, p0

    .line 600
    .line 601
    return-void
.end method

.method public c(Lm7/z;Lf1/s;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "state"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Lm7/z;->c:I

    .line 11
    .line 12
    const v3, -0xec8f509

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x2

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x2

    .line 29
    :goto_0
    or-int v3, p3, v3

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0x3

    .line 32
    .line 33
    if-ne v3, v5, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v6, v0, Lm7/z;->b:Lm7/a0;

    .line 52
    .line 53
    const v7, 0x6e3c21fe

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 64
    .line 65
    if-ne v8, v9, :cond_3

    .line 66
    .line 67
    new-instance v8, Lc1/j2;

    .line 68
    .line 69
    const/4 v10, 0x1

    .line 70
    const/4 v11, 0x0

    .line 71
    invoke-direct {v8, v5, v11, v10}, Lc1/j2;-><init>(ILw8/c;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    check-cast v8, Lf9/n;

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v6, v8, v1}, Lf1/b;->g(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lf1/s;)V

    .line 84
    .line 85
    .line 86
    sget-object v3, Ld/c;->a:Lf1/c0;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/app/Activity;

    .line 93
    .line 94
    new-instance v6, Lm7/j;

    .line 95
    .line 96
    const/16 v8, 0x9

    .line 97
    .line 98
    invoke-direct {v6, v8}, Lm7/j;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v2, v6}, Lm7/f0;->a(Landroid/app/Activity;ILf9/k;)V

    .line 102
    .line 103
    .line 104
    const/16 v6, 0x30

    .line 105
    .line 106
    invoke-static {v6, v1}, Lg5/a;->B(ILf1/s;)F

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    const/16 v6, 0x20

    .line 111
    .line 112
    invoke-static {v6, v1}, Lg5/a;->B(ILf1/s;)F

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    const/16 v16, 0x5

    .line 117
    .line 118
    sget-object v11, Lr1/m;->a:Lr1/m;

    .line 119
    .line 120
    const/4 v12, 0x0

    .line 121
    const/4 v14, 0x0

    .line 122
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    sget-object v12, Ld0/h;->a:Ld0/b;

    .line 127
    .line 128
    sget-object v13, Lr1/c;->j:Lr1/g;

    .line 129
    .line 130
    invoke-static {v12, v13, v1, v10}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    iget-wide v13, v1, Lf1/s;->T:J

    .line 135
    .line 136
    ushr-long v15, v13, v6

    .line 137
    .line 138
    xor-long/2addr v13, v15

    .line 139
    long-to-int v14, v13

    .line 140
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-static {v1, v8}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    sget-object v15, Lq2/j;->d0:Lq2/i;

    .line 149
    .line 150
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    sget-object v15, Lq2/i;->b:Lq2/a0;

    .line 154
    .line 155
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 156
    .line 157
    .line 158
    const/16 v16, 0x20

    .line 159
    .line 160
    iget-boolean v6, v1, Lf1/s;->S:Z

    .line 161
    .line 162
    if-eqz v6, :cond_4

    .line 163
    .line 164
    invoke-virtual {v1, v15}, Lf1/s;->k(Lf9/a;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 169
    .line 170
    .line 171
    :goto_2
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 172
    .line 173
    invoke-static {v1, v6, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 177
    .line 178
    invoke-static {v1, v6, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    sget-object v6, Lq2/i;->f:Lq2/h;

    .line 182
    .line 183
    iget-boolean v12, v1, Lf1/s;->S:Z

    .line 184
    .line 185
    if-nez v12, :cond_5

    .line 186
    .line 187
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    invoke-static {v12, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-nez v12, :cond_6

    .line 200
    .line 201
    :cond_5
    invoke-static {v14, v1, v14, v6}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    sget-object v6, Lq2/i;->c:Lq2/h;

    .line 205
    .line 206
    invoke-static {v1, v6, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const v6, 0x3794cf25

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v6}, Lf1/s;->W(I)V

    .line 213
    .line 214
    .line 215
    sget-object v6, Lm7/g0;->e:Lz8/b;

    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance v8, Lg9/b;

    .line 221
    .line 222
    const/4 v12, 0x6

    .line 223
    invoke-direct {v8, v12, v6}, Lg9/b;-><init>(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :goto_3
    invoke-virtual {v8}, Lg9/b;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_e

    .line 231
    .line 232
    invoke-virtual {v8}, Lg9/b;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    check-cast v6, Lm7/g0;

    .line 237
    .line 238
    invoke-static {v4, v1}, Lg5/a;->B(ILf1/s;)F

    .line 239
    .line 240
    .line 241
    move-result v13

    .line 242
    const/4 v14, 0x0

    .line 243
    invoke-static {v11, v13, v14, v5}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 244
    .line 245
    .line 246
    move-result-object v17

    .line 247
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    if-ne v13, v9, :cond_7

    .line 255
    .line 256
    invoke-static {v1}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    :cond_7
    move-object/from16 v18, v13

    .line 261
    .line 262
    check-cast v18, Lb0/k;

    .line 263
    .line 264
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 265
    .line 266
    .line 267
    const v13, -0x615d173a

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 278
    .line 279
    .line 280
    move-result v14

    .line 281
    invoke-virtual {v1, v14}, Lf1/s;->d(I)Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    or-int/2addr v13, v14

    .line 286
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    if-nez v13, :cond_8

    .line 291
    .line 292
    if-ne v14, v9, :cond_9

    .line 293
    .line 294
    :cond_8
    new-instance v14, La8/n0;

    .line 295
    .line 296
    const/16 v13, 0x9

    .line 297
    .line 298
    invoke-direct {v14, v13, v3, v6}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v14}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_9
    move-object/from16 v21, v14

    .line 305
    .line 306
    check-cast v21, Lf9/a;

    .line 307
    .line 308
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 309
    .line 310
    .line 311
    const/16 v22, 0x1c

    .line 312
    .line 313
    const/16 v19, 0x0

    .line 314
    .line 315
    const/16 v20, 0x0

    .line 316
    .line 317
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 318
    .line 319
    .line 320
    move-result-object v13

    .line 321
    sget-object v14, Lr1/c;->a:Lr1/h;

    .line 322
    .line 323
    invoke-static {v14, v10}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    iget-wide v4, v1, Lf1/s;->T:J

    .line 328
    .line 329
    ushr-long v18, v4, v16

    .line 330
    .line 331
    xor-long v4, v4, v18

    .line 332
    .line 333
    long-to-int v5, v4

    .line 334
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-static {v1, v13}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 339
    .line 340
    .line 341
    move-result-object v13

    .line 342
    sget-object v18, Lq2/j;->d0:Lq2/i;

    .line 343
    .line 344
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    sget-object v7, Lq2/i;->b:Lq2/a0;

    .line 348
    .line 349
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 350
    .line 351
    .line 352
    iget-boolean v12, v1, Lf1/s;->S:Z

    .line 353
    .line 354
    if-eqz v12, :cond_a

    .line 355
    .line 356
    invoke-virtual {v1, v7}, Lf1/s;->k(Lf9/a;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_a
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 361
    .line 362
    .line 363
    :goto_4
    sget-object v7, Lq2/i;->e:Lq2/h;

    .line 364
    .line 365
    invoke-static {v1, v7, v14}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    sget-object v7, Lq2/i;->d:Lq2/h;

    .line 369
    .line 370
    invoke-static {v1, v7, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 374
    .line 375
    iget-boolean v7, v1, Lf1/s;->S:Z

    .line 376
    .line 377
    if-nez v7, :cond_b

    .line 378
    .line 379
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-static {v7, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-nez v7, :cond_c

    .line 392
    .line 393
    :cond_b
    invoke-static {v5, v1, v5, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 394
    .line 395
    .line 396
    :cond_c
    sget-object v4, Lq2/i;->c:Lq2/h;

    .line 397
    .line 398
    invoke-static {v1, v4, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    iget-object v4, v6, Lm7/g0;->a:Ljava/lang/String;

    .line 402
    .line 403
    const/16 v5, 0x16

    .line 404
    .line 405
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    const-wide v12, 0x100000000L

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    invoke-static {v5, v12, v13}, Lc7/a;->M(FJ)J

    .line 415
    .line 416
    .line 417
    move-result-wide v12

    .line 418
    iget v5, v6, Lm7/g0;->b:I

    .line 419
    .line 420
    if-ne v2, v5, :cond_d

    .line 421
    .line 422
    const v5, 0x75208315

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 426
    .line 427
    .line 428
    sget-object v5, Lc1/y;->a:Lf1/w2;

    .line 429
    .line 430
    invoke-virtual {v1, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    check-cast v5, Lc1/w;

    .line 435
    .line 436
    iget-wide v5, v5, Lc1/w;->a:J

    .line 437
    .line 438
    :goto_5
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 439
    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_d
    const v5, 0x752087fa

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 446
    .line 447
    .line 448
    sget-object v5, Lc1/y;->a:Lf1/w2;

    .line 449
    .line 450
    invoke-virtual {v1, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    check-cast v5, Lc1/w;

    .line 455
    .line 456
    iget-wide v5, v5, Lc1/w;->o:J

    .line 457
    .line 458
    goto :goto_5

    .line 459
    :goto_6
    const/16 v7, 0xc

    .line 460
    .line 461
    invoke-static {v7, v1}, Lg5/a;->B(ILf1/s;)F

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    const/16 v14, 0x8

    .line 466
    .line 467
    invoke-static {v14, v1}, Lg5/a;->B(ILf1/s;)F

    .line 468
    .line 469
    .line 470
    move-result v14

    .line 471
    invoke-static {v11, v7, v14}, Landroidx/compose/foundation/layout/a;->i(Lr1/p;FF)Lr1/p;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    const/16 v20, 0x0

    .line 476
    .line 477
    const v21, 0x1fff0

    .line 478
    .line 479
    .line 480
    move v14, v2

    .line 481
    move-object v2, v7

    .line 482
    const/4 v7, 0x0

    .line 483
    move-object/from16 v22, v8

    .line 484
    .line 485
    move-object/from16 v23, v9

    .line 486
    .line 487
    const-wide/16 v8, 0x0

    .line 488
    .line 489
    const/16 v24, 0x0

    .line 490
    .line 491
    const/4 v10, 0x0

    .line 492
    move-object v1, v4

    .line 493
    move-object/from16 v25, v11

    .line 494
    .line 495
    move-wide/from16 v32, v12

    .line 496
    .line 497
    move-object v13, v3

    .line 498
    move-wide v3, v5

    .line 499
    move-wide/from16 v5, v32

    .line 500
    .line 501
    const-wide/16 v11, 0x0

    .line 502
    .line 503
    move-object/from16 v26, v13

    .line 504
    .line 505
    const/4 v13, 0x0

    .line 506
    move/from16 v27, v14

    .line 507
    .line 508
    const/4 v14, 0x0

    .line 509
    const/16 v28, 0x4

    .line 510
    .line 511
    const/4 v15, 0x0

    .line 512
    const/16 v29, 0x20

    .line 513
    .line 514
    const/16 v16, 0x0

    .line 515
    .line 516
    const/16 v30, 0x2

    .line 517
    .line 518
    const/16 v17, 0x0

    .line 519
    .line 520
    const/16 v31, 0x1

    .line 521
    .line 522
    const/16 v19, 0x0

    .line 523
    .line 524
    move-object/from16 v18, p2

    .line 525
    .line 526
    const/4 v0, 0x1

    .line 527
    const v24, 0x6e3c21fe

    .line 528
    .line 529
    .line 530
    invoke-static/range {v1 .. v21}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v1, v18

    .line 534
    .line 535
    invoke-virtual {v1, v0}, Lf1/s;->p(Z)V

    .line 536
    .line 537
    .line 538
    move-object/from16 v0, p1

    .line 539
    .line 540
    move-object/from16 v8, v22

    .line 541
    .line 542
    move-object/from16 v9, v23

    .line 543
    .line 544
    move-object/from16 v11, v25

    .line 545
    .line 546
    move-object/from16 v3, v26

    .line 547
    .line 548
    move/from16 v2, v27

    .line 549
    .line 550
    const/4 v4, 0x4

    .line 551
    const/4 v5, 0x2

    .line 552
    const v7, 0x6e3c21fe

    .line 553
    .line 554
    .line 555
    const/4 v10, 0x0

    .line 556
    const/16 v16, 0x20

    .line 557
    .line 558
    goto/16 :goto_3

    .line 559
    .line 560
    :cond_e
    const/4 v0, 0x1

    .line 561
    const/4 v2, 0x0

    .line 562
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v0}, Lf1/s;->p(Z)V

    .line 566
    .line 567
    .line 568
    :goto_7
    invoke-virtual {v1}, Lf1/s;->r()Lf1/w1;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    if-eqz v0, :cond_f

    .line 573
    .line 574
    new-instance v1, Lm7/m;

    .line 575
    .line 576
    const/4 v2, 0x1

    .line 577
    move-object/from16 v3, p0

    .line 578
    .line 579
    move-object/from16 v4, p1

    .line 580
    .line 581
    move/from16 v5, p3

    .line 582
    .line 583
    invoke-direct {v1, v3, v4, v5, v2}, Lm7/m;-><init>(Lm7/n;Lm7/z;II)V

    .line 584
    .line 585
    .line 586
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 587
    .line 588
    return-void

    .line 589
    :cond_f
    move-object/from16 v3, p0

    .line 590
    .line 591
    return-void
.end method

.method public d(ILf1/s;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const v3, -0x591a9404

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v3, v1, 0x1

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_1
    :goto_0
    sget-object v3, Lm7/z;->n:Ldc/l0;

    .line 32
    .line 33
    invoke-static {v3, v2}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lm7/z;

    .line 42
    .line 43
    iget-object v5, v5, Lm7/z;->b:Lm7/a0;

    .line 44
    .line 45
    sget-object v6, Lm7/a0;->f:Lm7/a0;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    if-ne v5, v6, :cond_3

    .line 49
    .line 50
    invoke-virtual {v2}, Lf1/s;->r()Lf1/w1;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    new-instance v3, Lm7/l;

    .line 57
    .line 58
    invoke-direct {v3, v0, v1, v7}, Lm7/l;-><init>(Lm7/n;II)V

    .line 59
    .line 60
    .line 61
    iput-object v3, v2, Lf1/w1;->d:Lf9/n;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    move-object v4, v0

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_3
    sget-object v5, Lr1/c;->e:Lr1/h;

    .line 68
    .line 69
    sget-object v6, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 70
    .line 71
    sget-object v8, Lc1/y;->a:Lf1/w2;

    .line 72
    .line 73
    invoke-virtual {v2, v8}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Lc1/w;

    .line 78
    .line 79
    iget-wide v9, v9, Lc1/w;->F:J

    .line 80
    .line 81
    new-instance v11, Ly1/q;

    .line 82
    .line 83
    invoke-direct {v11, v9, v10}, Ly1/q;-><init>(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v8}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    check-cast v9, Lc1/w;

    .line 91
    .line 92
    iget-wide v9, v9, Lc1/w;->n:J

    .line 93
    .line 94
    new-instance v12, Ly1/q;

    .line 95
    .line 96
    invoke-direct {v12, v9, v10}, Ly1/q;-><init>(J)V

    .line 97
    .line 98
    .line 99
    const/4 v9, 0x2

    .line 100
    new-array v9, v9, [Ly1/q;

    .line 101
    .line 102
    aput-object v11, v9, v7

    .line 103
    .line 104
    aput-object v12, v9, v4

    .line 105
    .line 106
    invoke-static {v9}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v18

    .line 110
    const/4 v9, 0x0

    .line 111
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    int-to-long v10, v10

    .line 116
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    int-to-long v12, v12

    .line 121
    const/16 v19, 0x20

    .line 122
    .line 123
    shl-long v10, v10, v19

    .line 124
    .line 125
    const-wide v14, 0xffffffffL

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    and-long/2addr v12, v14

    .line 131
    or-long/2addr v10, v12

    .line 132
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    int-to-long v12, v9

    .line 137
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 138
    .line 139
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    move-wide/from16 v16, v14

    .line 144
    .line 145
    int-to-long v14, v9

    .line 146
    shl-long v12, v12, v19

    .line 147
    .line 148
    and-long v14, v14, v16

    .line 149
    .line 150
    or-long v16, v12, v14

    .line 151
    .line 152
    new-instance v13, Ly1/z;

    .line 153
    .line 154
    move-wide v14, v10

    .line 155
    invoke-direct/range {v13 .. v18}, Ly1/z;-><init>(JJLjava/util/List;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v6, v13}, Landroidx/compose/foundation/a;->a(Lr1/p;Ly1/z;)Lr1/p;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v5, v7}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-wide v9, v2, Lf1/s;->T:J

    .line 167
    .line 168
    ushr-long v11, v9, v19

    .line 169
    .line 170
    xor-long/2addr v9, v11

    .line 171
    long-to-int v10, v9

    .line 172
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-static {v2, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    sget-object v11, Lq2/j;->d0:Lq2/i;

    .line 181
    .line 182
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 186
    .line 187
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 188
    .line 189
    .line 190
    iget-boolean v12, v2, Lf1/s;->S:Z

    .line 191
    .line 192
    if-eqz v12, :cond_4

    .line 193
    .line 194
    invoke-virtual {v2, v11}, Lf1/s;->k(Lf9/a;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 199
    .line 200
    .line 201
    :goto_1
    sget-object v12, Lq2/i;->e:Lq2/h;

    .line 202
    .line 203
    invoke-static {v2, v12, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    sget-object v5, Lq2/i;->d:Lq2/h;

    .line 207
    .line 208
    invoke-static {v2, v5, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    sget-object v9, Lq2/i;->f:Lq2/h;

    .line 212
    .line 213
    iget-boolean v13, v2, Lf1/s;->S:Z

    .line 214
    .line 215
    if-nez v13, :cond_5

    .line 216
    .line 217
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    invoke-static {v13, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    if-nez v13, :cond_6

    .line 230
    .line 231
    :cond_5
    invoke-static {v10, v2, v10, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 232
    .line 233
    .line 234
    :cond_6
    sget-object v10, Lq2/i;->c:Lq2/h;

    .line 235
    .line 236
    invoke-static {v2, v10, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    sget-object v6, Lr1/c;->b:Lr1/h;

    .line 240
    .line 241
    sget-object v13, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 242
    .line 243
    invoke-virtual {v13, v6}, Landroidx/compose/foundation/layout/b;->a(Lr1/d;)Lr1/p;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-instance v14, Ld0/w0;

    .line 248
    .line 249
    invoke-direct {v14, v4}, Ld0/w0;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v6, v14}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    new-instance v14, Ld0/w0;

    .line 257
    .line 258
    invoke-direct {v14, v7}, Ld0/w0;-><init>(I)V

    .line 259
    .line 260
    .line 261
    invoke-static {v6, v14}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    sget-object v14, Lr1/c;->a:Lr1/h;

    .line 266
    .line 267
    invoke-static {v14, v7}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    move-object/from16 v17, v8

    .line 272
    .line 273
    iget-wide v7, v2, Lf1/s;->T:J

    .line 274
    .line 275
    ushr-long v20, v7, v19

    .line 276
    .line 277
    xor-long v7, v7, v20

    .line 278
    .line 279
    long-to-int v8, v7

    .line 280
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-static {v2, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 289
    .line 290
    .line 291
    iget-boolean v4, v2, Lf1/s;->S:Z

    .line 292
    .line 293
    if-eqz v4, :cond_7

    .line 294
    .line 295
    invoke-virtual {v2, v11}, Lf1/s;->k(Lf9/a;)V

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_7
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 300
    .line 301
    .line 302
    :goto_2
    invoke-static {v2, v12, v15}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v2, v5, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    iget-boolean v4, v2, Lf1/s;->S:Z

    .line 309
    .line 310
    if-nez v4, :cond_8

    .line 311
    .line 312
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-static {v4, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_9

    .line 325
    .line 326
    :cond_8
    invoke-static {v8, v2, v8, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 327
    .line 328
    .line 329
    :cond_9
    invoke-static {v2, v10, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    sget-object v4, Lm7/n;->a:Lm7/n;

    .line 333
    .line 334
    const/4 v6, 0x6

    .line 335
    invoke-virtual {v4, v6, v2}, Lm7/n;->a(ILf1/s;)V

    .line 336
    .line 337
    .line 338
    const/4 v6, 0x1

    .line 339
    invoke-virtual {v2, v6}, Lf1/s;->p(Z)V

    .line 340
    .line 341
    .line 342
    sget-object v6, Lr1/c;->n:Lr1/f;

    .line 343
    .line 344
    sget-object v7, Ld0/h;->d:Ld0/d;

    .line 345
    .line 346
    const/high16 v8, 0x3f800000    # 1.0f

    .line 347
    .line 348
    sget-object v15, Lr1/m;->a:Lr1/m;

    .line 349
    .line 350
    invoke-static {v15, v8}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    move-object/from16 v20, v3

    .line 355
    .line 356
    const/16 v3, 0x36

    .line 357
    .line 358
    invoke-static {v7, v6, v2, v3}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    iget-wide v6, v2, Lf1/s;->T:J

    .line 363
    .line 364
    ushr-long v21, v6, v19

    .line 365
    .line 366
    xor-long v6, v6, v21

    .line 367
    .line 368
    long-to-int v7, v6

    .line 369
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-static {v2, v8}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 378
    .line 379
    .line 380
    iget-boolean v0, v2, Lf1/s;->S:Z

    .line 381
    .line 382
    if-eqz v0, :cond_a

    .line 383
    .line 384
    invoke-virtual {v2, v11}, Lf1/s;->k(Lf9/a;)V

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_a
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 389
    .line 390
    .line 391
    :goto_3
    invoke-static {v2, v12, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v2, v5, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    iget-boolean v0, v2, Lf1/s;->S:Z

    .line 398
    .line 399
    if-nez v0, :cond_b

    .line 400
    .line 401
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-static {v0, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-nez v0, :cond_c

    .line 414
    .line 415
    :cond_b
    invoke-static {v7, v2, v7, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 416
    .line 417
    .line 418
    :cond_c
    invoke-static {v2, v10, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-interface/range {v20 .. v20}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Lm7/z;

    .line 426
    .line 427
    const/16 v3, 0x30

    .line 428
    .line 429
    invoke-virtual {v4, v0, v2, v3}, Lm7/n;->b(Lm7/z;Lf1/s;I)V

    .line 430
    .line 431
    .line 432
    invoke-interface/range {v20 .. v20}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    check-cast v0, Lm7/z;

    .line 437
    .line 438
    invoke-virtual {v4, v0, v2, v3}, Lm7/n;->c(Lm7/z;Lf1/s;I)V

    .line 439
    .line 440
    .line 441
    const/4 v6, 0x1

    .line 442
    invoke-virtual {v2, v6}, Lf1/s;->p(Z)V

    .line 443
    .line 444
    .line 445
    sget-object v0, Lr1/c;->i:Lr1/h;

    .line 446
    .line 447
    invoke-virtual {v13, v0}, Landroidx/compose/foundation/layout/b;->a(Lr1/d;)Lr1/p;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    new-instance v3, Ld0/w0;

    .line 452
    .line 453
    const/4 v4, 0x0

    .line 454
    invoke-direct {v3, v4}, Ld0/w0;-><init>(I)V

    .line 455
    .line 456
    .line 457
    invoke-static {v0, v3}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v14, v4}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    iget-wide v7, v2, Lf1/s;->T:J

    .line 466
    .line 467
    ushr-long v13, v7, v19

    .line 468
    .line 469
    xor-long/2addr v7, v13

    .line 470
    long-to-int v4, v7

    .line 471
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    invoke-static {v2, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 480
    .line 481
    .line 482
    iget-boolean v8, v2, Lf1/s;->S:Z

    .line 483
    .line 484
    if-eqz v8, :cond_d

    .line 485
    .line 486
    invoke-virtual {v2, v11}, Lf1/s;->k(Lf9/a;)V

    .line 487
    .line 488
    .line 489
    goto :goto_4

    .line 490
    :cond_d
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 491
    .line 492
    .line 493
    :goto_4
    invoke-static {v2, v12, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-static {v2, v5, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    iget-boolean v3, v2, Lf1/s;->S:Z

    .line 500
    .line 501
    if-nez v3, :cond_e

    .line 502
    .line 503
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-static {v3, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    if-nez v3, :cond_f

    .line 516
    .line 517
    :cond_e
    invoke-static {v4, v2, v4, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 518
    .line 519
    .line 520
    :cond_f
    invoke-static {v2, v10, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    sget-object v0, Ll8/a;->b:Lr8/o;

    .line 524
    .line 525
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 530
    .line 531
    if-eqz v0, :cond_10

    .line 532
    .line 533
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 534
    .line 535
    if-nez v0, :cond_11

    .line 536
    .line 537
    :cond_10
    const-string v0, "\u672a\u77e5\u7248\u672c"

    .line 538
    .line 539
    :cond_11
    const-string v3, "v"

    .line 540
    .line 541
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    const/16 v3, 0x28

    .line 546
    .line 547
    invoke-static {v3, v2}, Lg5/a;->B(ILf1/s;)F

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    invoke-static {v15, v3}, Landroidx/compose/foundation/layout/a;->h(Lr1/p;F)Lr1/p;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    const/16 v4, 0x14

    .line 556
    .line 557
    invoke-static {v4, v2}, Lg5/a;->B(ILf1/s;)F

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    const-wide v7, 0x100000000L

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    invoke-static {v4, v7, v8}, Lc7/a;->M(FJ)J

    .line 567
    .line 568
    .line 569
    move-result-wide v4

    .line 570
    move-object/from16 v7, v17

    .line 571
    .line 572
    invoke-virtual {v2, v7}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    check-cast v7, Lc1/w;

    .line 577
    .line 578
    iget-wide v7, v7, Lc1/w;->o:J

    .line 579
    .line 580
    const/16 v21, 0x0

    .line 581
    .line 582
    const v22, 0x1fff0

    .line 583
    .line 584
    .line 585
    move-wide/from16 v23, v7

    .line 586
    .line 587
    move-wide v6, v4

    .line 588
    move-wide/from16 v4, v23

    .line 589
    .line 590
    const/16 v18, 0x1

    .line 591
    .line 592
    const/4 v8, 0x0

    .line 593
    const-wide/16 v9, 0x0

    .line 594
    .line 595
    const/4 v11, 0x0

    .line 596
    const-wide/16 v12, 0x0

    .line 597
    .line 598
    const/4 v14, 0x0

    .line 599
    const/4 v15, 0x0

    .line 600
    const/16 v16, 0x0

    .line 601
    .line 602
    const/16 v17, 0x0

    .line 603
    .line 604
    const/16 v19, 0x1

    .line 605
    .line 606
    const/16 v18, 0x0

    .line 607
    .line 608
    const/16 v20, 0x0

    .line 609
    .line 610
    move-object/from16 v19, v2

    .line 611
    .line 612
    move-object v2, v0

    .line 613
    const/4 v0, 0x1

    .line 614
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 615
    .line 616
    .line 617
    move-object/from16 v2, v19

    .line 618
    .line 619
    invoke-virtual {v2, v0}, Lf1/s;->p(Z)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2, v0}, Lf1/s;->p(Z)V

    .line 623
    .line 624
    .line 625
    :goto_5
    invoke-virtual {v2}, Lf1/s;->r()Lf1/w1;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    if-eqz v2, :cond_12

    .line 630
    .line 631
    new-instance v3, Lm7/l;

    .line 632
    .line 633
    move-object/from16 v4, p0

    .line 634
    .line 635
    invoke-direct {v3, v4, v1, v0}, Lm7/l;-><init>(Lm7/n;II)V

    .line 636
    .line 637
    .line 638
    iput-object v3, v2, Lf1/w1;->d:Lf9/n;

    .line 639
    .line 640
    return-void

    .line 641
    :cond_12
    move-object/from16 v4, p0

    .line 642
    .line 643
    :goto_6
    return-void
.end method

.method public e(Lr8/j;Lf9/k;Lf9/k;Lf1/s;I)V
    .locals 26

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v11, p4

    .line 6
    .line 7
    const-string v0, "fetchOptions"

    .line 8
    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "callback"

    .line 15
    .line 16
    invoke-static {v6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x3c837fb3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v11, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v7, 0x4

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    or-int v0, p5, v0

    .line 36
    .line 37
    and-int/lit16 v3, v0, 0x93

    .line 38
    .line 39
    const/16 v4, 0x92

    .line 40
    .line 41
    if-ne v3, v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_2
    :goto_1
    sget-object v3, Ld/c;->a:Lf1/c0;

    .line 56
    .line 57
    invoke-virtual {v11, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v8, v3

    .line 62
    check-cast v8, Landroid/app/Activity;

    .line 63
    .line 64
    const v3, 0x6e3c21fe

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11, v3}, Lf1/s;->W(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const/4 v5, 0x1

    .line 75
    const/4 v9, 0x0

    .line 76
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 77
    .line 78
    if-ne v4, v10, :cond_3

    .line 79
    .line 80
    new-instance v12, Lj8/k0;

    .line 81
    .line 82
    new-instance v14, Lj8/n0;

    .line 83
    .line 84
    const-string v4, ""

    .line 85
    .line 86
    invoke-direct {v14, v4}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x1c

    .line 92
    .line 93
    const-string v13, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e\u4e2d..."

    .line 94
    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    invoke-direct/range {v12 .. v18}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 99
    .line 100
    .line 101
    new-array v4, v5, [Lj8/k0;

    .line 102
    .line 103
    aput-object v12, v4, v9

    .line 104
    .line 105
    new-instance v12, Lp1/p;

    .line 106
    .line 107
    invoke-direct {v12}, Lp1/p;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {v4}, Ls8/l;->j0([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v12, v4}, Lp1/p;->addAll(Ljava/util/Collection;)Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    move-object v4, v12

    .line 121
    :cond_3
    check-cast v4, Lp1/p;

    .line 122
    .line 123
    invoke-static {v11, v9, v3}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    if-ne v12, v10, :cond_4

    .line 128
    .line 129
    invoke-static {v4}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-static {v12}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-virtual {v11, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    check-cast v12, Lf1/b1;

    .line 141
    .line 142
    invoke-static {v11, v9, v3}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-ne v3, v10, :cond_5

    .line 147
    .line 148
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v11, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    move-object v13, v3

    .line 158
    check-cast v13, Lf1/b1;

    .line 159
    .line 160
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    move-object v14, v3

    .line 168
    check-cast v14, Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    const v3, -0x48fade91

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11, v3}, Lf1/s;->W(I)V

    .line 177
    .line 178
    .line 179
    and-int/lit8 v0, v0, 0xe

    .line 180
    .line 181
    if-ne v0, v7, :cond_6

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    const/4 v5, 0x0

    .line 185
    :goto_2
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-nez v5, :cond_8

    .line 190
    .line 191
    if-ne v0, v10, :cond_7

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    move-object v1, v2

    .line 195
    move-object v2, v4

    .line 196
    move-object v3, v12

    .line 197
    goto :goto_4

    .line 198
    :cond_8
    :goto_3
    new-instance v0, Lj8/x;

    .line 199
    .line 200
    const/4 v5, 0x0

    .line 201
    move-object v3, v2

    .line 202
    move-object v2, v4

    .line 203
    move-object v4, v12

    .line 204
    invoke-direct/range {v0 .. v5}, Lj8/x;-><init>(Lf9/k;Lp1/p;Lr8/j;Lf1/b1;Lw8/c;)V

    .line 205
    .line 206
    .line 207
    move-object v1, v3

    .line 208
    move-object v3, v4

    .line 209
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :goto_4
    check-cast v0, Lf9/n;

    .line 213
    .line 214
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 215
    .line 216
    .line 217
    invoke-static {v11, v0, v14}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    sget-object v15, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 221
    .line 222
    invoke-static {v9, v11}, Lg5/a;->B(ILf1/s;)F

    .line 223
    .line 224
    .line 225
    move-result v17

    .line 226
    const/16 v0, 0x8

    .line 227
    .line 228
    invoke-static {v0, v11}, Lg5/a;->B(ILf1/s;)F

    .line 229
    .line 230
    .line 231
    move-result v19

    .line 232
    const/16 v20, 0x5

    .line 233
    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object v4, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v4, Ljava/lang/String;

    .line 245
    .line 246
    const v5, 0x4c5de2

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v5}, Lf1/s;->W(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    if-ne v12, v10, :cond_9

    .line 257
    .line 258
    new-instance v12, Lc8/x;

    .line 259
    .line 260
    invoke-direct {v12, v6, v7}, Lc8/x;-><init>(Lf9/k;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v11, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_9
    check-cast v12, Lf9/k;

    .line 267
    .line 268
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 269
    .line 270
    .line 271
    new-instance v7, Lm7/s;

    .line 272
    .line 273
    invoke-direct {v7, v1, v9}, Lm7/s;-><init>(Lr8/j;I)V

    .line 274
    .line 275
    .line 276
    const v14, 0x73c27059

    .line 277
    .line 278
    .line 279
    invoke-static {v14, v7, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    new-instance v14, Lm7/t;

    .line 284
    .line 285
    invoke-direct {v14, v8, v13, v9}, Lm7/t;-><init>(Landroid/app/Activity;Lf1/b1;I)V

    .line 286
    .line 287
    .line 288
    const v8, -0x4303ea4

    .line 289
    .line 290
    .line 291
    invoke-static {v8, v14, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    const/high16 v24, 0xc00000

    .line 296
    .line 297
    const v25, 0x7dfdb8

    .line 298
    .line 299
    .line 300
    move-object v14, v10

    .line 301
    const/4 v10, 0x0

    .line 302
    const/4 v11, 0x0

    .line 303
    move-object v15, v14

    .line 304
    const/4 v14, 0x0

    .line 305
    move-object/from16 v16, v15

    .line 306
    .line 307
    const/4 v15, 0x0

    .line 308
    move-object/from16 v17, v16

    .line 309
    .line 310
    const/16 v16, 0x0

    .line 311
    .line 312
    move-object/from16 v18, v17

    .line 313
    .line 314
    const/16 v17, 0x1

    .line 315
    .line 316
    move-object/from16 v19, v18

    .line 317
    .line 318
    const/16 v18, 0x0

    .line 319
    .line 320
    move-object/from16 v20, v19

    .line 321
    .line 322
    const/16 v19, 0x0

    .line 323
    .line 324
    move-object/from16 v21, v20

    .line 325
    .line 326
    const/16 v20, 0x0

    .line 327
    .line 328
    move-object/from16 v22, v21

    .line 329
    .line 330
    const/16 v21, 0x0

    .line 331
    .line 332
    const/high16 v23, 0x30180000

    .line 333
    .line 334
    move-object v9, v7

    .line 335
    move-object v7, v4

    .line 336
    move-object v4, v13

    .line 337
    move-object v13, v8

    .line 338
    move-object v8, v12

    .line 339
    move-object v12, v9

    .line 340
    move-object v9, v0

    .line 341
    move-object/from16 v0, v22

    .line 342
    .line 343
    move-object/from16 v22, p4

    .line 344
    .line 345
    invoke-static/range {v7 .. v25}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v11, v22

    .line 349
    .line 350
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    check-cast v7, Ljava/lang/Boolean;

    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    invoke-virtual {v11, v5}, Lf1/s;->W(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    if-ne v5, v0, :cond_a

    .line 368
    .line 369
    new-instance v5, Lj8/h;

    .line 370
    .line 371
    const/16 v0, 0x14

    .line 372
    .line 373
    invoke-direct {v5, v4, v0}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v11, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :cond_a
    move-object v8, v5

    .line 380
    check-cast v8, Lf9/a;

    .line 381
    .line 382
    const/4 v0, 0x0

    .line 383
    invoke-virtual {v11, v0}, Lf1/s;->p(Z)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Lc8/m;

    .line 387
    .line 388
    const/4 v5, 0x6

    .line 389
    move-object v1, v2

    .line 390
    move-object v2, v6

    .line 391
    invoke-direct/range {v0 .. v5}, Lc8/m;-><init>(Ljava/lang/Object;Lr8/e;Lf1/b1;Lf1/b1;I)V

    .line 392
    .line 393
    .line 394
    const v1, -0x3e0c98a4

    .line 395
    .line 396
    .line 397
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    const/16 v12, 0x30

    .line 402
    .line 403
    const/16 v13, 0x3fc

    .line 404
    .line 405
    const-wide/16 v2, 0x0

    .line 406
    .line 407
    const/4 v4, 0x0

    .line 408
    const/4 v5, 0x0

    .line 409
    const/4 v6, 0x0

    .line 410
    move v0, v7

    .line 411
    const/4 v7, 0x0

    .line 412
    move-object v1, v8

    .line 413
    const/4 v8, 0x0

    .line 414
    const/4 v9, 0x0

    .line 415
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 416
    .line 417
    .line 418
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    if-eqz v7, :cond_b

    .line 423
    .line 424
    new-instance v0, Lh0/w;

    .line 425
    .line 426
    const/4 v6, 0x1

    .line 427
    move-object/from16 v1, p0

    .line 428
    .line 429
    move-object/from16 v2, p1

    .line 430
    .line 431
    move-object/from16 v3, p2

    .line 432
    .line 433
    move-object/from16 v4, p3

    .line 434
    .line 435
    move/from16 v5, p5

    .line 436
    .line 437
    invoke-direct/range {v0 .. v6}, Lh0/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 438
    .line 439
    .line 440
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 441
    .line 442
    :cond_b
    return-void
.end method

.method public f(Lr8/j;Lf9/k;Lf1/s;I)V
    .locals 23

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    const-string v1, "callback"

    .line 8
    .line 9
    invoke-static {v3, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x2c1676e0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x2

    .line 27
    :goto_0
    or-int v1, p4, v1

    .line 28
    .line 29
    and-int/lit8 v1, v1, 0x13

    .line 30
    .line 31
    const/16 v4, 0x12

    .line 32
    .line 33
    if-ne v1, v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    sget-object v4, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 47
    .line 48
    const/4 v1, 0x6

    .line 49
    invoke-static {v1, v0}, Lg5/a;->B(ILf1/s;)F

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/16 v1, 0xc

    .line 54
    .line 55
    invoke-static {v1, v0}, Lg5/a;->B(ILf1/s;)F

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    const/4 v9, 0x5

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v1, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v4, v1

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    const v1, 0x4c5de2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lf1/s;->W(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 82
    .line 83
    if-ne v1, v5, :cond_3

    .line 84
    .line 85
    new-instance v1, Lc8/x;

    .line 86
    .line 87
    const/4 v5, 0x5

    .line 88
    invoke-direct {v1, v3, v5}, Lc8/x;-><init>(Lf9/k;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    move-object v5, v1

    .line 95
    check-cast v5, Lf9/k;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Lf1/s;->p(Z)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lm7/s;

    .line 102
    .line 103
    const/4 v7, 0x1

    .line 104
    invoke-direct {v1, v2, v7}, Lm7/s;-><init>(Lr8/j;I)V

    .line 105
    .line 106
    .line 107
    const v7, 0x1eecb086

    .line 108
    .line 109
    .line 110
    invoke-static {v7, v1, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    const/high16 v21, 0xc00000

    .line 115
    .line 116
    const v22, 0x7dffb8

    .line 117
    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v11, 0x0

    .line 123
    const/4 v12, 0x0

    .line 124
    const/4 v13, 0x0

    .line 125
    const/4 v14, 0x1

    .line 126
    const/4 v15, 0x0

    .line 127
    const/16 v16, 0x0

    .line 128
    .line 129
    const/16 v17, 0x0

    .line 130
    .line 131
    const/16 v18, 0x0

    .line 132
    .line 133
    const/high16 v20, 0x180000

    .line 134
    .line 135
    move-object/from16 v19, v0

    .line 136
    .line 137
    invoke-static/range {v4 .. v22}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    if-eqz v6, :cond_4

    .line 145
    .line 146
    new-instance v0, Ll0/p;

    .line 147
    .line 148
    const/4 v5, 0x3

    .line 149
    move-object/from16 v1, p0

    .line 150
    .line 151
    move/from16 v4, p4

    .line 152
    .line 153
    invoke-direct/range {v0 .. v5}, Ll0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr8/e;II)V

    .line 154
    .line 155
    .line 156
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 157
    .line 158
    :cond_4
    return-void
.end method

.method public g(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, -0x4927feb5

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "\u8fde\u63a5\u8bbe\u7f6e"

    .line 33
    .line 34
    const-string v1, "CarLife\u8fde\u63a5\u8bbe\u7f6e"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    sget-object v0, Ld/c;->a:Lf1/c0;

    .line 45
    .line 46
    invoke-virtual {v4, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v7, v0

    .line 51
    check-cast v7, Landroid/app/Activity;

    .line 52
    .line 53
    sget-object v0, Lm7/z;->n:Ldc/l0;

    .line 54
    .line 55
    invoke-static {v0, v4}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const v0, 0x6e3c21fe

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 70
    .line 71
    if-ne v0, v9, :cond_2

    .line 72
    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    move-object v10, v0

    .line 83
    check-cast v10, Lf1/b1;

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    invoke-virtual {v4, v11}, Lf1/s;->p(Z)V

    .line 87
    .line 88
    .line 89
    new-instance v0, La8/j;

    .line 90
    .line 91
    const/16 v1, 0xf

    .line 92
    .line 93
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 94
    .line 95
    .line 96
    const v1, 0x7ba5afb4

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v1, Lm7/d;->a:Ln1/c;

    .line 104
    .line 105
    const v12, 0x4c5de2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v12}, Lf1/s;->W(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-ne v2, v9, :cond_3

    .line 116
    .line 117
    new-instance v2, Lj8/h;

    .line 118
    .line 119
    const/16 v3, 0x11

    .line 120
    .line 121
    invoke-direct {v2, v10, v3}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    move-object v3, v2

    .line 128
    check-cast v3, Lf9/a;

    .line 129
    .line 130
    invoke-virtual {v4, v11}, Lf1/s;->p(Z)V

    .line 131
    .line 132
    .line 133
    const/16 v5, 0xdb6

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {v4, v12}, Lf1/s;->W(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-ne v1, v9, :cond_4

    .line 158
    .line 159
    new-instance v1, Lj8/h;

    .line 160
    .line 161
    const/16 v2, 0x12

    .line 162
    .line 163
    invoke-direct {v1, v10, v2}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    check-cast v1, Lf9/a;

    .line 170
    .line 171
    invoke-virtual {v4, v11}, Lf1/s;->p(Z)V

    .line 172
    .line 173
    .line 174
    new-instance v2, Lk7/i;

    .line 175
    .line 176
    invoke-direct {v2, v8, v7}, Lk7/i;-><init>(Lf1/b1;Landroid/app/Activity;)V

    .line 177
    .line 178
    .line 179
    const v3, -0x6b472f8c

    .line 180
    .line 181
    .line 182
    invoke-static {v3, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    const/16 v12, 0x30

    .line 187
    .line 188
    const/16 v13, 0x3fc

    .line 189
    .line 190
    const-wide/16 v2, 0x0

    .line 191
    .line 192
    const/4 v4, 0x0

    .line 193
    const/4 v5, 0x0

    .line 194
    const/4 v6, 0x0

    .line 195
    const/4 v7, 0x0

    .line 196
    const/4 v8, 0x0

    .line 197
    const/4 v9, 0x0

    .line 198
    move-object/from16 v11, p2

    .line 199
    .line 200
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 201
    .line 202
    .line 203
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_5

    .line 208
    .line 209
    new-instance v1, Lm7/r;

    .line 210
    .line 211
    const/4 v2, 0x0

    .line 212
    move-object/from16 v3, p0

    .line 213
    .line 214
    invoke-direct {v1, v3, v15, v14, v2}, Lm7/r;-><init>(Lm7/n;Ljava/util/List;II)V

    .line 215
    .line 216
    .line 217
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 218
    .line 219
    return-void

    .line 220
    :cond_5
    move-object/from16 v3, p0

    .line 221
    .line 222
    return-void
.end method

.method public h(Ljava/util/List;Lf1/s;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v12, p2

    .line 4
    .line 5
    move/from16 v15, p3

    .line 6
    .line 7
    const v1, -0x12696188

    .line 8
    .line 9
    .line 10
    invoke-virtual {v12, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v15, 0x3

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v12}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v12}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    :goto_0
    sget-object v1, Lr2/n0;->b:Lf1/w2;

    .line 32
    .line 33
    invoke-virtual {v12, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v9, v1

    .line 38
    check-cast v9, Landroid/content/Context;

    .line 39
    .line 40
    const v1, 0x6e3c21fe

    .line 41
    .line 42
    .line 43
    invoke-virtual {v12, v1}, Lf1/s;->W(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 51
    .line 52
    if-ne v2, v3, :cond_2

    .line 53
    .line 54
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v12, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    move-object v10, v2

    .line 64
    check-cast v10, Lf1/b1;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v12, v2}, Lf1/s;->p(Z)V

    .line 68
    .line 69
    .line 70
    sget-object v4, Ll8/d;->a:Lr8/o;

    .line 71
    .line 72
    const-string v4, "CONNECT_USB_DEVICE_IGNORE"

    .line 73
    .line 74
    sget-object v5, Ls8/y;->a:Ls8/y;

    .line 75
    .line 76
    :try_start_0
    invoke-static {}, Ll8/d;->c()Landroid/content/SharedPreferences;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v7, 0x0

    .line 81
    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move-object v5, v4

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    invoke-static {}, Ll8/d;->c()Landroid/content/SharedPreferences;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const-string v7, "<get-sharedPreferences>(...)"

    .line 95
    .line 96
    invoke-static {v6, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-interface {v6, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    .line 105
    .line 106
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {v12, v1}, Lf1/s;->W(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-ne v1, v3, :cond_4

    .line 117
    .line 118
    new-instance v1, Lp1/p;

    .line 119
    .line 120
    invoke-direct {v1}, Lp1/p;-><init>()V

    .line 121
    .line 122
    .line 123
    check-cast v5, Ljava/util/Collection;

    .line 124
    .line 125
    invoke-virtual {v1, v5}, Lp1/p;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {v12, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    move-object v11, v1

    .line 132
    check-cast v11, Lp1/p;

    .line 133
    .line 134
    invoke-virtual {v12, v2}, Lf1/s;->p(Z)V

    .line 135
    .line 136
    .line 137
    new-instance v1, La8/j;

    .line 138
    .line 139
    const/16 v4, 0x10

    .line 140
    .line 141
    invoke-direct {v1, v4, v0}, La8/j;-><init>(ILjava/util/List;)V

    .line 142
    .line 143
    .line 144
    const v4, 0x400497ef

    .line 145
    .line 146
    .line 147
    invoke-static {v4, v1, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    sget-object v4, Lm7/d;->c:Ln1/c;

    .line 152
    .line 153
    const v5, 0x4c5de2

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12, v5}, Lf1/s;->W(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    if-ne v5, v3, :cond_5

    .line 164
    .line 165
    new-instance v5, Lj8/h;

    .line 166
    .line 167
    const/16 v3, 0x13

    .line 168
    .line 169
    invoke-direct {v5, v10, v3}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_5
    check-cast v5, Lf9/a;

    .line 176
    .line 177
    invoke-virtual {v12, v2}, Lf1/s;->p(Z)V

    .line 178
    .line 179
    .line 180
    const/16 v6, 0xc36

    .line 181
    .line 182
    const/4 v7, 0x4

    .line 183
    const/4 v3, 0x0

    .line 184
    move-object v2, v4

    .line 185
    move-object v4, v5

    .line 186
    move-object v5, v12

    .line 187
    invoke-static/range {v1 .. v7}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    new-instance v2, La8/m;

    .line 201
    .line 202
    const/16 v3, 0x11

    .line 203
    .line 204
    invoke-direct {v2, v10, v3}, La8/m;-><init>(Lf1/b1;I)V

    .line 205
    .line 206
    .line 207
    const v3, 0x2a9eadf

    .line 208
    .line 209
    .line 210
    invoke-static {v3, v2, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    new-instance v3, La8/p;

    .line 215
    .line 216
    const/4 v4, 0x4

    .line 217
    invoke-direct {v3, v11, v4}, La8/p;-><init>(Lp1/p;I)V

    .line 218
    .line 219
    .line 220
    const v4, -0x709fbae0

    .line 221
    .line 222
    .line 223
    invoke-static {v4, v3, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    new-instance v4, La8/o0;

    .line 228
    .line 229
    invoke-direct {v4, v11, v10, v8}, La8/o0;-><init>(Lp1/p;Lf1/b1;I)V

    .line 230
    .line 231
    .line 232
    const v5, 0x1c169f61

    .line 233
    .line 234
    .line 235
    invoke-static {v5, v4, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    new-instance v4, Lc8/s;

    .line 240
    .line 241
    const/16 v5, 0xd

    .line 242
    .line 243
    invoke-direct {v4, v5, v9, v11}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    const v5, 0x6a0f1f2f

    .line 247
    .line 248
    .line 249
    invoke-static {v5, v4, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    const/high16 v13, 0x36c00000

    .line 254
    .line 255
    const/16 v14, 0x7e

    .line 256
    .line 257
    move-object v8, v2

    .line 258
    const/4 v4, 0x1

    .line 259
    const/4 v2, 0x0

    .line 260
    move-object v9, v3

    .line 261
    const/4 v5, 0x1

    .line 262
    const-wide/16 v3, 0x0

    .line 263
    .line 264
    const/4 v6, 0x1

    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v7, 0x1

    .line 267
    const/4 v6, 0x0

    .line 268
    const/16 v16, 0x1

    .line 269
    .line 270
    const/4 v7, 0x0

    .line 271
    invoke-static/range {v1 .. v14}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 272
    .line 273
    .line 274
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-eqz v1, :cond_6

    .line 279
    .line 280
    new-instance v2, Lm7/r;

    .line 281
    .line 282
    const/4 v4, 0x1

    .line 283
    move-object/from16 v3, p0

    .line 284
    .line 285
    invoke-direct {v2, v3, v0, v15, v4}, Lm7/r;-><init>(Lm7/n;Ljava/util/List;II)V

    .line 286
    .line 287
    .line 288
    iput-object v2, v1, Lf1/w1;->d:Lf9/n;

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_6
    move-object/from16 v3, p0

    .line 292
    .line 293
    :goto_3
    return-void
.end method
