.class public final synthetic Ls0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ls0/d;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ls0/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Ls0/d;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lz/s1;

    .line 13
    .line 14
    check-cast v0, Lx1/b;

    .line 15
    .line 16
    iget-object v3, v2, Lz/s1;->k:Lz/c1;

    .line 17
    .line 18
    iget-wide v4, v0, Lx1/b;->a:J

    .line 19
    .line 20
    iget v0, v2, Lz/s1;->j:I

    .line 21
    .line 22
    invoke-virtual {v2, v3, v4, v5, v0}, Lz/s1;->c(Lz/c1;JI)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    new-instance v0, Lx1/b;

    .line 27
    .line 28
    invoke-direct {v0, v2, v3}, Lx1/b;-><init>(J)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_0
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lz/l1;

    .line 35
    .line 36
    check-cast v0, Lo2/w;

    .line 37
    .line 38
    iget-object v2, v2, Lz/l1;->G:Lz/f;

    .line 39
    .line 40
    iput-object v0, v2, Lz/f;->s:Lo2/w;

    .line 41
    .line 42
    iget-boolean v0, v2, Lz/f;->u:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2}, Lz/f;->B0()Lx1/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-wide v3, v2, Lz/f;->v:J

    .line 53
    .line 54
    invoke-virtual {v2, v0, v3, v4}, Lz/f;->C0(Lx1/c;J)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, v2, Lz/f;->t:Z

    .line 62
    .line 63
    invoke-virtual {v2}, Lz/f;->D0()V

    .line 64
    .line 65
    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, v2, Lz/f;->u:Z

    .line 68
    .line 69
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_1
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Ll0/p;

    .line 75
    .line 76
    check-cast v0, Lk2/w;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-static {v0, v3}, Lk2/v;->f(Lk2/w;Z)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    const/16 v5, 0x20

    .line 84
    .line 85
    shr-long/2addr v3, v5

    .line 86
    long-to-int v4, v3

    .line 87
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v0, v3}, Ll0/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lk2/w;->a()V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 102
    .line 103
    return-object v0

    .line 104
    :pswitch_2
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v2, Lx/n1;

    .line 107
    .line 108
    check-cast v0, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iget-object v3, v2, Lx/n1;->a:Lf1/h1;

    .line 115
    .line 116
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    int-to-float v4, v4

    .line 121
    add-float/2addr v4, v0

    .line 122
    iget v5, v2, Lx/n1;->e:F

    .line 123
    .line 124
    add-float/2addr v4, v5

    .line 125
    iget-object v5, v2, Lx/n1;->d:Lf1/h1;

    .line 126
    .line 127
    invoke-virtual {v5}, Lf1/h1;->f()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    int-to-float v5, v5

    .line 132
    const/4 v6, 0x0

    .line 133
    invoke-static {v4, v6, v5}, Li9/a;->m(FFF)F

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    cmpg-float v4, v4, v5

    .line 138
    .line 139
    if-nez v4, :cond_1

    .line 140
    .line 141
    const/4 v4, 0x1

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    const/4 v4, 0x0

    .line 144
    :goto_0
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    int-to-float v6, v6

    .line 149
    sub-float/2addr v5, v6

    .line 150
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    add-int/2addr v7, v6

    .line 159
    invoke-virtual {v3, v7}, Lf1/h1;->g(I)V

    .line 160
    .line 161
    .line 162
    int-to-float v3, v6

    .line 163
    sub-float v3, v5, v3

    .line 164
    .line 165
    iput v3, v2, Lx/n1;->e:F

    .line 166
    .line 167
    if-nez v4, :cond_2

    .line 168
    .line 169
    move v0, v5

    .line 170
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0

    .line 175
    :pswitch_3
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v2, Lx/p;

    .line 178
    .line 179
    check-cast v0, Lv1/c;

    .line 180
    .line 181
    iget v3, v2, Lx/p;->r:F

    .line 182
    .line 183
    invoke-virtual {v0}, Lv1/c;->a()F

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    mul-float v4, v4, v3

    .line 188
    .line 189
    const/4 v3, 0x0

    .line 190
    cmpl-float v4, v4, v3

    .line 191
    .line 192
    if-ltz v4, :cond_1f

    .line 193
    .line 194
    iget-object v4, v0, Lv1/c;->a:Lv1/a;

    .line 195
    .line 196
    invoke-interface {v4}, Lv1/a;->g()J

    .line 197
    .line 198
    .line 199
    move-result-wide v4

    .line 200
    invoke-static {v4, v5}, Lx1/e;->c(J)F

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    cmpl-float v4, v4, v3

    .line 205
    .line 206
    if-lez v4, :cond_1f

    .line 207
    .line 208
    iget v4, v2, Lx/p;->r:F

    .line 209
    .line 210
    invoke-static {v4, v3}, Ln3/f;->a(FF)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    const/high16 v4, 0x3f800000    # 1.0f

    .line 215
    .line 216
    if-eqz v3, :cond_3

    .line 217
    .line 218
    const/high16 v3, 0x3f800000    # 1.0f

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_3
    iget v3, v2, Lx/p;->r:F

    .line 222
    .line 223
    invoke-virtual {v0}, Lv1/c;->a()F

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    mul-float v5, v5, v3

    .line 228
    .line 229
    float-to-double v5, v5

    .line 230
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    double-to-float v3, v5

    .line 235
    :goto_1
    iget-object v5, v0, Lv1/c;->a:Lv1/a;

    .line 236
    .line 237
    invoke-interface {v5}, Lv1/a;->g()J

    .line 238
    .line 239
    .line 240
    move-result-wide v5

    .line 241
    invoke-static {v5, v6}, Lx1/e;->c(J)F

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    const/4 v6, 0x2

    .line 246
    int-to-float v6, v6

    .line 247
    div-float/2addr v5, v6

    .line 248
    float-to-double v7, v5

    .line 249
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 250
    .line 251
    .line 252
    move-result-wide v7

    .line 253
    double-to-float v5, v7

    .line 254
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    div-float v3, v8, v6

    .line 259
    .line 260
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    int-to-long v9, v5

    .line 265
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    int-to-long v11, v5

    .line 270
    const/16 v5, 0x20

    .line 271
    .line 272
    shl-long/2addr v9, v5

    .line 273
    const-wide v13, 0xffffffffL

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    and-long/2addr v11, v13

    .line 279
    or-long v15, v9, v11

    .line 280
    .line 281
    iget-object v7, v0, Lv1/c;->a:Lv1/a;

    .line 282
    .line 283
    invoke-interface {v7}, Lv1/a;->g()J

    .line 284
    .line 285
    .line 286
    move-result-wide v9

    .line 287
    shr-long/2addr v9, v5

    .line 288
    long-to-int v7, v9

    .line 289
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    sub-float/2addr v7, v8

    .line 294
    iget-object v9, v0, Lv1/c;->a:Lv1/a;

    .line 295
    .line 296
    invoke-interface {v9}, Lv1/a;->g()J

    .line 297
    .line 298
    .line 299
    move-result-wide v9

    .line 300
    and-long/2addr v9, v13

    .line 301
    long-to-int v10, v9

    .line 302
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    sub-float/2addr v9, v8

    .line 307
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    int-to-long v10, v7

    .line 312
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    move v9, v6

    .line 317
    const/16 p1, 0x20

    .line 318
    .line 319
    int-to-long v5, v7

    .line 320
    shl-long v10, v10, p1

    .line 321
    .line 322
    and-long/2addr v5, v13

    .line 323
    or-long/2addr v5, v10

    .line 324
    mul-float v18, v8, v9

    .line 325
    .line 326
    iget-object v7, v0, Lv1/c;->a:Lv1/a;

    .line 327
    .line 328
    invoke-interface {v7}, Lv1/a;->g()J

    .line 329
    .line 330
    .line 331
    move-result-wide v9

    .line 332
    invoke-static {v9, v10}, Lx1/e;->c(J)F

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    cmpl-float v7, v18, v7

    .line 337
    .line 338
    if-lez v7, :cond_4

    .line 339
    .line 340
    const/16 v17, 0x1

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_4
    const/16 v17, 0x0

    .line 344
    .line 345
    :goto_2
    iget-object v7, v2, Lx/p;->t:Ly1/l0;

    .line 346
    .line 347
    iget-object v11, v0, Lv1/c;->a:Lv1/a;

    .line 348
    .line 349
    invoke-interface {v11}, Lv1/a;->g()J

    .line 350
    .line 351
    .line 352
    move-result-wide v11

    .line 353
    move-wide/from16 v23, v13

    .line 354
    .line 355
    iget-object v13, v0, Lv1/c;->a:Lv1/a;

    .line 356
    .line 357
    invoke-interface {v13}, Lv1/a;->getLayoutDirection()Ln3/m;

    .line 358
    .line 359
    .line 360
    move-result-object v13

    .line 361
    invoke-interface {v7, v11, v12, v13, v0}, Ly1/l0;->a(JLn3/m;Ln3/c;)Ly1/h0;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    instance-of v11, v7, Ly1/b0;

    .line 366
    .line 367
    if-eqz v11, :cond_15

    .line 368
    .line 369
    iget-object v3, v2, Lx/p;->s:Ly1/n0;

    .line 370
    .line 371
    check-cast v7, Ly1/b0;

    .line 372
    .line 373
    iget-object v5, v7, Ly1/b0;->e:Ly1/e0;

    .line 374
    .line 375
    if-eqz v17, :cond_5

    .line 376
    .line 377
    new-instance v2, La8/v;

    .line 378
    .line 379
    const/16 v4, 0x18

    .line 380
    .line 381
    invoke-direct {v2, v4, v7, v3}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v2}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    goto/16 :goto_11

    .line 389
    .line 390
    :cond_5
    invoke-static {v3}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-eqz v6, :cond_6

    .line 395
    .line 396
    iget-wide v11, v3, Ly1/n0;->a:J

    .line 397
    .line 398
    invoke-static {v4, v11, v12}, Ly1/q;->b(FJ)J

    .line 399
    .line 400
    .line 401
    move-result-wide v11

    .line 402
    new-instance v4, Ly1/k;

    .line 403
    .line 404
    const/4 v6, 0x5

    .line 405
    invoke-direct {v4, v6, v11, v12}, Ly1/k;-><init>(IJ)V

    .line 406
    .line 407
    .line 408
    const/4 v6, 0x1

    .line 409
    goto :goto_3

    .line 410
    :cond_6
    const/4 v4, 0x0

    .line 411
    const/4 v6, 0x0

    .line 412
    :goto_3
    move-object v11, v5

    .line 413
    check-cast v11, Ly1/h;

    .line 414
    .line 415
    invoke-virtual {v11}, Ly1/h;->a()Lx1/c;

    .line 416
    .line 417
    .line 418
    move-result-object v11

    .line 419
    iget v12, v11, Lx1/c;->b:F

    .line 420
    .line 421
    iget v13, v11, Lx1/c;->a:F

    .line 422
    .line 423
    iget-object v14, v2, Lx/p;->q:Lx/m;

    .line 424
    .line 425
    if-nez v14, :cond_7

    .line 426
    .line 427
    new-instance v14, Lx/m;

    .line 428
    .line 429
    invoke-direct {v14}, Lx/m;-><init>()V

    .line 430
    .line 431
    .line 432
    iput-object v14, v2, Lx/p;->q:Lx/m;

    .line 433
    .line 434
    :cond_7
    iget-object v14, v2, Lx/p;->q:Lx/m;

    .line 435
    .line 436
    invoke-static {v14}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    iget-object v15, v14, Lx/m;->d:Ly1/h;

    .line 440
    .line 441
    if-nez v15, :cond_8

    .line 442
    .line 443
    invoke-static {}, Ly1/j;->a()Ly1/h;

    .line 444
    .line 445
    .line 446
    move-result-object v15

    .line 447
    iput-object v15, v14, Lx/m;->d:Ly1/h;

    .line 448
    .line 449
    :cond_8
    invoke-virtual {v15}, Ly1/h;->c()V

    .line 450
    .line 451
    .line 452
    iget v14, v11, Lx1/c;->a:F

    .line 453
    .line 454
    iget v8, v11, Lx1/c;->d:F

    .line 455
    .line 456
    iget v9, v11, Lx1/c;->c:F

    .line 457
    .line 458
    iget v10, v11, Lx1/c;->b:F

    .line 459
    .line 460
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 461
    .line 462
    .line 463
    move-result v17

    .line 464
    if-nez v17, :cond_a

    .line 465
    .line 466
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 467
    .line 468
    .line 469
    move-result v17

    .line 470
    if-nez v17, :cond_a

    .line 471
    .line 472
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 473
    .line 474
    .line 475
    move-result v17

    .line 476
    if-nez v17, :cond_a

    .line 477
    .line 478
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 479
    .line 480
    .line 481
    move-result v17

    .line 482
    if-eqz v17, :cond_9

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_9
    :goto_4
    move-object/from16 v27, v3

    .line 486
    .line 487
    goto :goto_6

    .line 488
    :cond_a
    :goto_5
    const-string v17, "Invalid rectangle, make sure no value is NaN"

    .line 489
    .line 490
    invoke-static/range {v17 .. v17}, Ly1/j;->b(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    goto :goto_4

    .line 494
    :goto_6
    iget-object v3, v15, Ly1/h;->b:Landroid/graphics/RectF;

    .line 495
    .line 496
    if-nez v3, :cond_b

    .line 497
    .line 498
    new-instance v3, Landroid/graphics/RectF;

    .line 499
    .line 500
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 501
    .line 502
    .line 503
    iput-object v3, v15, Ly1/h;->b:Landroid/graphics/RectF;

    .line 504
    .line 505
    :cond_b
    iget-object v3, v15, Ly1/h;->b:Landroid/graphics/RectF;

    .line 506
    .line 507
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v14, v10, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 511
    .line 512
    .line 513
    iget-object v3, v15, Ly1/h;->a:Landroid/graphics/Path;

    .line 514
    .line 515
    iget-object v8, v15, Ly1/h;->b:Landroid/graphics/RectF;

    .line 516
    .line 517
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 521
    .line 522
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 523
    .line 524
    .line 525
    const/4 v9, 0x0

    .line 526
    invoke-virtual {v15, v15, v5, v9}, Ly1/h;->b(Ly1/e0;Ly1/e0;I)Z

    .line 527
    .line 528
    .line 529
    new-instance v3, Lg9/x;

    .line 530
    .line 531
    invoke-direct {v3}, Lg9/x;-><init>()V

    .line 532
    .line 533
    .line 534
    iget v5, v11, Lx1/c;->c:F

    .line 535
    .line 536
    sub-float/2addr v5, v13

    .line 537
    float-to-double v9, v5

    .line 538
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 539
    .line 540
    .line 541
    move-result-wide v8

    .line 542
    double-to-float v5, v8

    .line 543
    float-to-int v5, v5

    .line 544
    iget v8, v11, Lx1/c;->d:F

    .line 545
    .line 546
    sub-float/2addr v8, v12

    .line 547
    float-to-double v8, v8

    .line 548
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 549
    .line 550
    .line 551
    move-result-wide v8

    .line 552
    double-to-float v8, v8

    .line 553
    float-to-int v8, v8

    .line 554
    int-to-long v9, v5

    .line 555
    shl-long v9, v9, p1

    .line 556
    .line 557
    move-object v14, v4

    .line 558
    int-to-long v4, v8

    .line 559
    and-long v4, v4, v23

    .line 560
    .line 561
    or-long/2addr v4, v9

    .line 562
    iget-object v2, v2, Lx/p;->q:Lx/m;

    .line 563
    .line 564
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    iget-object v8, v2, Lx/m;->a:Ly1/f;

    .line 568
    .line 569
    iget-object v9, v2, Lx/m;->b:Ly1/b;

    .line 570
    .line 571
    if-eqz v8, :cond_c

    .line 572
    .line 573
    invoke-virtual {v8}, Ly1/f;->a()I

    .line 574
    .line 575
    .line 576
    move-result v10

    .line 577
    move-wide/from16 v31, v4

    .line 578
    .line 579
    new-instance v4, Ly1/x;

    .line 580
    .line 581
    invoke-direct {v4, v10}, Ly1/x;-><init>(I)V

    .line 582
    .line 583
    .line 584
    goto :goto_7

    .line 585
    :cond_c
    move-wide/from16 v31, v4

    .line 586
    .line 587
    const/4 v4, 0x0

    .line 588
    :goto_7
    if-nez v4, :cond_d

    .line 589
    .line 590
    goto :goto_8

    .line 591
    :cond_d
    iget v4, v4, Ly1/x;->a:I

    .line 592
    .line 593
    if-nez v4, :cond_e

    .line 594
    .line 595
    goto :goto_b

    .line 596
    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    .line 597
    .line 598
    invoke-virtual {v8}, Ly1/f;->a()I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    new-instance v5, Ly1/x;

    .line 603
    .line 604
    invoke-direct {v5, v4}, Ly1/x;-><init>(I)V

    .line 605
    .line 606
    .line 607
    goto :goto_9

    .line 608
    :cond_f
    const/4 v5, 0x0

    .line 609
    :goto_9
    invoke-static {v5}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    if-nez v4, :cond_10

    .line 614
    .line 615
    goto :goto_a

    .line 616
    :cond_10
    iget v4, v5, Ly1/x;->a:I

    .line 617
    .line 618
    if-eq v6, v4, :cond_11

    .line 619
    .line 620
    :goto_a
    const/4 v10, 0x0

    .line 621
    goto :goto_c

    .line 622
    :cond_11
    :goto_b
    const/4 v10, 0x1

    .line 623
    :goto_c
    if-eqz v8, :cond_12

    .line 624
    .line 625
    if-eqz v9, :cond_12

    .line 626
    .line 627
    iget-object v4, v0, Lv1/c;->a:Lv1/a;

    .line 628
    .line 629
    invoke-interface {v4}, Lv1/a;->g()J

    .line 630
    .line 631
    .line 632
    move-result-wide v4

    .line 633
    shr-long v4, v4, p1

    .line 634
    .line 635
    long-to-int v5, v4

    .line 636
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    iget-object v5, v8, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 641
    .line 642
    move/from16 v16, v4

    .line 643
    .line 644
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    int-to-float v4, v4

    .line 649
    cmpl-float v4, v16, v4

    .line 650
    .line 651
    if-gtz v4, :cond_12

    .line 652
    .line 653
    iget-object v4, v0, Lv1/c;->a:Lv1/a;

    .line 654
    .line 655
    invoke-interface {v4}, Lv1/a;->g()J

    .line 656
    .line 657
    .line 658
    move-result-wide v16

    .line 659
    move-object/from16 v19, v5

    .line 660
    .line 661
    and-long v4, v16, v23

    .line 662
    .line 663
    long-to-int v5, v4

    .line 664
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    int-to-float v5, v5

    .line 673
    cmpl-float v4, v4, v5

    .line 674
    .line 675
    if-gtz v4, :cond_12

    .line 676
    .line 677
    if-nez v10, :cond_13

    .line 678
    .line 679
    :cond_12
    shr-long v4, v31, p1

    .line 680
    .line 681
    long-to-int v5, v4

    .line 682
    and-long v8, v31, v23

    .line 683
    .line 684
    long-to-int v4, v8

    .line 685
    invoke-static {v5, v4, v6}, Ly1/h0;->f(III)Ly1/f;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    iput-object v8, v2, Lx/m;->a:Ly1/f;

    .line 690
    .line 691
    invoke-static {v8}, Ly1/h0;->a(Ly1/f;)Ly1/b;

    .line 692
    .line 693
    .line 694
    move-result-object v9

    .line 695
    iput-object v9, v2, Lx/m;->b:Ly1/b;

    .line 696
    .line 697
    :cond_13
    iget-object v4, v2, Lx/m;->c:La2/c;

    .line 698
    .line 699
    if-nez v4, :cond_14

    .line 700
    .line 701
    new-instance v4, La2/c;

    .line 702
    .line 703
    invoke-direct {v4}, La2/c;-><init>()V

    .line 704
    .line 705
    .line 706
    iput-object v4, v2, Lx/m;->c:La2/c;

    .line 707
    .line 708
    :cond_14
    iget-object v2, v4, La2/c;->b:La2/b;

    .line 709
    .line 710
    iget-object v5, v4, La2/c;->a:La2/a;

    .line 711
    .line 712
    move-object v6, v11

    .line 713
    invoke-static/range {v31 .. v32}, La/a;->S(J)J

    .line 714
    .line 715
    .line 716
    move-result-wide v10

    .line 717
    move-object/from16 v33, v4

    .line 718
    .line 719
    iget-object v4, v0, Lv1/c;->a:Lv1/a;

    .line 720
    .line 721
    invoke-interface {v4}, Lv1/a;->getLayoutDirection()Ln3/m;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    move-object/from16 v16, v6

    .line 726
    .line 727
    iget-object v6, v5, La2/a;->a:Ln3/c;

    .line 728
    .line 729
    move-object/from16 v41, v14

    .line 730
    .line 731
    iget-object v14, v5, La2/a;->b:Ln3/m;

    .line 732
    .line 733
    move-object/from16 v42, v15

    .line 734
    .line 735
    iget-object v15, v5, La2/a;->c:Ly1/o;

    .line 736
    .line 737
    move-object/from16 v43, v14

    .line 738
    .line 739
    move-object/from16 v44, v15

    .line 740
    .line 741
    iget-wide v14, v5, La2/a;->d:J

    .line 742
    .line 743
    iput-object v0, v5, La2/a;->a:Ln3/c;

    .line 744
    .line 745
    iput-object v4, v5, La2/a;->b:Ln3/m;

    .line 746
    .line 747
    iput-object v9, v5, La2/a;->c:Ly1/o;

    .line 748
    .line 749
    iput-wide v10, v5, La2/a;->d:J

    .line 750
    .line 751
    invoke-virtual {v9}, Ly1/b;->f()V

    .line 752
    .line 753
    .line 754
    sget-wide v34, Ly1/q;->b:J

    .line 755
    .line 756
    const-wide/16 v36, 0x0

    .line 757
    .line 758
    const/16 v40, 0x3a

    .line 759
    .line 760
    move-wide/from16 v38, v10

    .line 761
    .line 762
    invoke-static/range {v33 .. v40}, La2/f;->x(La2/g;JJJI)V

    .line 763
    .line 764
    .line 765
    neg-float v4, v13

    .line 766
    neg-float v10, v12

    .line 767
    iget-object v11, v2, La2/b;->b:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v11, La2/d;

    .line 770
    .line 771
    invoke-virtual {v11, v4, v10}, La2/d;->y(FF)V

    .line 772
    .line 773
    .line 774
    :try_start_0
    iget-object v7, v7, Ly1/b0;->e:Ly1/e0;

    .line 775
    .line 776
    new-instance v17, La2/k;

    .line 777
    .line 778
    const/16 v21, 0x0

    .line 779
    .line 780
    const/16 v22, 0x1e

    .line 781
    .line 782
    const/16 v19, 0x0

    .line 783
    .line 784
    const/16 v20, 0x0

    .line 785
    .line 786
    invoke-direct/range {v17 .. v22}, La2/k;-><init>(FFIII)V

    .line 787
    .line 788
    .line 789
    const/16 v30, 0x34

    .line 790
    .line 791
    const/16 v28, 0x0

    .line 792
    .line 793
    move-object/from16 v26, v7

    .line 794
    .line 795
    move-object/from16 v29, v17

    .line 796
    .line 797
    move-object/from16 v25, v33

    .line 798
    .line 799
    invoke-static/range {v25 .. v30}, La2/f;->u(La2/g;Ly1/e0;Ly1/m;FLa2/k;I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v2}, La2/b;->J()J

    .line 803
    .line 804
    .line 805
    move-result-wide v11

    .line 806
    shr-long v11, v11, p1

    .line 807
    .line 808
    long-to-int v7, v11

    .line 809
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 810
    .line 811
    .line 812
    move-result v7

    .line 813
    const/4 v11, 0x1

    .line 814
    int-to-float v11, v11

    .line 815
    add-float/2addr v7, v11

    .line 816
    invoke-virtual {v2}, La2/b;->J()J

    .line 817
    .line 818
    .line 819
    move-result-wide v12

    .line 820
    shr-long v12, v12, p1

    .line 821
    .line 822
    long-to-int v13, v12

    .line 823
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 824
    .line 825
    .line 826
    move-result v12

    .line 827
    div-float/2addr v7, v12

    .line 828
    invoke-virtual {v2}, La2/b;->J()J

    .line 829
    .line 830
    .line 831
    move-result-wide v12

    .line 832
    and-long v12, v12, v23

    .line 833
    .line 834
    long-to-int v13, v12

    .line 835
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 836
    .line 837
    .line 838
    move-result v12

    .line 839
    add-float/2addr v12, v11

    .line 840
    invoke-virtual {v2}, La2/b;->J()J

    .line 841
    .line 842
    .line 843
    move-result-wide v17

    .line 844
    move/from16 p1, v12

    .line 845
    .line 846
    and-long v11, v17, v23

    .line 847
    .line 848
    long-to-int v12, v11

    .line 849
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 850
    .line 851
    .line 852
    move-result v11

    .line 853
    div-float v12, p1, v11

    .line 854
    .line 855
    move-object/from16 p1, v0

    .line 856
    .line 857
    invoke-virtual/range {v33 .. v33}, La2/c;->c0()J

    .line 858
    .line 859
    .line 860
    move-result-wide v0

    .line 861
    move-object v11, v8

    .line 862
    move-object v13, v9

    .line 863
    invoke-virtual {v2}, La2/b;->J()J

    .line 864
    .line 865
    .line 866
    move-result-wide v8

    .line 867
    invoke-virtual {v2}, La2/b;->z()Ly1/o;

    .line 868
    .line 869
    .line 870
    move-result-object v17

    .line 871
    invoke-interface/range {v17 .. v17}, Ly1/o;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    .line 873
    .line 874
    move-object/from16 v17, v11

    .line 875
    .line 876
    :try_start_1
    iget-object v11, v2, La2/b;->b:Ljava/lang/Object;

    .line 877
    .line 878
    check-cast v11, La2/d;

    .line 879
    .line 880
    invoke-virtual {v11, v7, v12, v0, v1}, La2/d;->v(FFJ)V

    .line 881
    .line 882
    .line 883
    const/16 v29, 0x0

    .line 884
    .line 885
    const/16 v30, 0x1c

    .line 886
    .line 887
    const/16 v28, 0x0

    .line 888
    .line 889
    move-object/from16 v25, v33

    .line 890
    .line 891
    move-object/from16 v26, v42

    .line 892
    .line 893
    invoke-static/range {v25 .. v30}, La2/f;->u(La2/g;Ly1/e0;Ly1/m;FLa2/k;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 894
    .line 895
    .line 896
    :try_start_2
    invoke-virtual {v2}, La2/b;->z()Ly1/o;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    invoke-interface {v0}, Ly1/o;->n()V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v2, v8, v9}, La2/b;->c0(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    .line 905
    .line 906
    iget-object v0, v2, La2/b;->b:Ljava/lang/Object;

    .line 907
    .line 908
    check-cast v0, La2/d;

    .line 909
    .line 910
    neg-float v1, v4

    .line 911
    neg-float v2, v10

    .line 912
    invoke-virtual {v0, v1, v2}, La2/d;->y(FF)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v13}, Ly1/b;->n()V

    .line 916
    .line 917
    .line 918
    iput-object v6, v5, La2/a;->a:Ln3/c;

    .line 919
    .line 920
    move-object/from16 v0, v43

    .line 921
    .line 922
    iput-object v0, v5, La2/a;->b:Ln3/m;

    .line 923
    .line 924
    move-object/from16 v0, v44

    .line 925
    .line 926
    iput-object v0, v5, La2/a;->c:Ly1/o;

    .line 927
    .line 928
    iput-wide v14, v5, La2/a;->d:J

    .line 929
    .line 930
    move-object/from16 v11, v17

    .line 931
    .line 932
    iget-object v0, v11, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 933
    .line 934
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 935
    .line 936
    .line 937
    iput-object v11, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 938
    .line 939
    new-instance v25, Lb3/n;

    .line 940
    .line 941
    move-object/from16 v27, v3

    .line 942
    .line 943
    move-object/from16 v26, v16

    .line 944
    .line 945
    move-wide/from16 v28, v31

    .line 946
    .line 947
    move-object/from16 v30, v41

    .line 948
    .line 949
    invoke-direct/range {v25 .. v30}, Lb3/n;-><init>(Lx1/c;Lg9/x;JLy1/k;)V

    .line 950
    .line 951
    .line 952
    move-object/from16 v0, p1

    .line 953
    .line 954
    move-object/from16 v1, v25

    .line 955
    .line 956
    invoke-virtual {v0, v1}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    goto/16 :goto_11

    .line 961
    .line 962
    :catchall_0
    move-exception v0

    .line 963
    goto :goto_d

    .line 964
    :catchall_1
    move-exception v0

    .line 965
    :try_start_3
    invoke-virtual {v2}, La2/b;->z()Ly1/o;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    invoke-interface {v1}, Ly1/o;->n()V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v2, v8, v9}, La2/b;->c0(J)V

    .line 973
    .line 974
    .line 975
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 976
    :goto_d
    iget-object v1, v2, La2/b;->b:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v1, La2/d;

    .line 979
    .line 980
    neg-float v2, v4

    .line 981
    neg-float v3, v10

    .line 982
    invoke-virtual {v1, v2, v3}, La2/d;->y(FF)V

    .line 983
    .line 984
    .line 985
    throw v0

    .line 986
    :cond_15
    instance-of v1, v7, Ly1/d0;

    .line 987
    .line 988
    if-eqz v1, :cond_1a

    .line 989
    .line 990
    iget-object v1, v2, Lx/p;->s:Ly1/n0;

    .line 991
    .line 992
    check-cast v7, Ly1/d0;

    .line 993
    .line 994
    iget-object v4, v7, Ly1/d0;->e:Lx1/d;

    .line 995
    .line 996
    invoke-static {v4}, Lp9/x1;->z(Lx1/d;)Z

    .line 997
    .line 998
    .line 999
    move-result v7

    .line 1000
    if-eqz v7, :cond_16

    .line 1001
    .line 1002
    iget-wide v13, v4, Lx1/d;->e:J

    .line 1003
    .line 1004
    new-instance v18, La2/k;

    .line 1005
    .line 1006
    const/4 v11, 0x0

    .line 1007
    const/16 v12, 0x1e

    .line 1008
    .line 1009
    const/4 v9, 0x0

    .line 1010
    const/4 v10, 0x0

    .line 1011
    move-object/from16 v7, v18

    .line 1012
    .line 1013
    invoke-direct/range {v7 .. v12}, La2/k;-><init>(FFIII)V

    .line 1014
    .line 1015
    .line 1016
    new-instance v7, Lx/o;

    .line 1017
    .line 1018
    move-object v9, v1

    .line 1019
    move v12, v3

    .line 1020
    move-wide v10, v13

    .line 1021
    move-wide v14, v15

    .line 1022
    move v13, v8

    .line 1023
    move/from16 v8, v17

    .line 1024
    .line 1025
    move-wide/from16 v16, v5

    .line 1026
    .line 1027
    invoke-direct/range {v7 .. v18}, Lx/o;-><init>(ZLy1/n0;JFFJJLa2/k;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0, v7}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    goto/16 :goto_11

    .line 1035
    .line 1036
    :cond_16
    move/from16 v9, v17

    .line 1037
    .line 1038
    iget-object v3, v2, Lx/p;->q:Lx/m;

    .line 1039
    .line 1040
    if-nez v3, :cond_17

    .line 1041
    .line 1042
    new-instance v3, Lx/m;

    .line 1043
    .line 1044
    invoke-direct {v3}, Lx/m;-><init>()V

    .line 1045
    .line 1046
    .line 1047
    iput-object v3, v2, Lx/p;->q:Lx/m;

    .line 1048
    .line 1049
    :cond_17
    iget-object v2, v2, Lx/p;->q:Lx/m;

    .line 1050
    .line 1051
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v3, v2, Lx/m;->d:Ly1/h;

    .line 1055
    .line 1056
    if-nez v3, :cond_18

    .line 1057
    .line 1058
    invoke-static {}, Ly1/j;->a()Ly1/h;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    iput-object v3, v2, Lx/m;->d:Ly1/h;

    .line 1063
    .line 1064
    :cond_18
    invoke-virtual {v3}, Ly1/h;->c()V

    .line 1065
    .line 1066
    .line 1067
    invoke-static {v3, v4}, Lp9/v;->h(Ly1/e0;Lx1/d;)V

    .line 1068
    .line 1069
    .line 1070
    if-nez v9, :cond_19

    .line 1071
    .line 1072
    invoke-static {}, Ly1/j;->a()Ly1/h;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v2

    .line 1076
    invoke-virtual {v4}, Lx1/d;->b()F

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    sub-float v10, v5, v8

    .line 1081
    .line 1082
    invoke-virtual {v4}, Lx1/d;->a()F

    .line 1083
    .line 1084
    .line 1085
    move-result v5

    .line 1086
    sub-float v11, v5, v8

    .line 1087
    .line 1088
    iget-wide v5, v4, Lx1/d;->e:J

    .line 1089
    .line 1090
    invoke-static {v8, v5, v6}, Lp9/x1;->K(FJ)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v12

    .line 1094
    iget-wide v5, v4, Lx1/d;->f:J

    .line 1095
    .line 1096
    invoke-static {v8, v5, v6}, Lp9/x1;->K(FJ)J

    .line 1097
    .line 1098
    .line 1099
    move-result-wide v14

    .line 1100
    iget-wide v5, v4, Lx1/d;->h:J

    .line 1101
    .line 1102
    invoke-static {v8, v5, v6}, Lp9/x1;->K(FJ)J

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v5

    .line 1106
    move-wide/from16 v16, v5

    .line 1107
    .line 1108
    iget-wide v4, v4, Lx1/d;->g:J

    .line 1109
    .line 1110
    invoke-static {v8, v4, v5}, Lp9/x1;->K(FJ)J

    .line 1111
    .line 1112
    .line 1113
    move-result-wide v4

    .line 1114
    new-instance v7, Lx1/d;

    .line 1115
    .line 1116
    move v9, v8

    .line 1117
    move-wide/from16 v18, v16

    .line 1118
    .line 1119
    move-wide/from16 v16, v4

    .line 1120
    .line 1121
    const/4 v4, 0x0

    .line 1122
    invoke-direct/range {v7 .. v19}, Lx1/d;-><init>(FFFFJJJJ)V

    .line 1123
    .line 1124
    .line 1125
    invoke-static {v2, v7}, Lp9/v;->h(Ly1/e0;Lx1/d;)V

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v3, v3, v2, v4}, Ly1/h;->b(Ly1/e0;Ly1/e0;I)Z

    .line 1129
    .line 1130
    .line 1131
    :cond_19
    new-instance v2, La8/v;

    .line 1132
    .line 1133
    const/16 v4, 0x17

    .line 1134
    .line 1135
    invoke-direct {v2, v4, v3, v1}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v0, v2}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    goto :goto_11

    .line 1143
    :cond_1a
    move-wide v14, v15

    .line 1144
    move/from16 v9, v17

    .line 1145
    .line 1146
    move-wide/from16 v16, v5

    .line 1147
    .line 1148
    instance-of v1, v7, Ly1/c0;

    .line 1149
    .line 1150
    if-eqz v1, :cond_1e

    .line 1151
    .line 1152
    iget-object v1, v2, Lx/p;->s:Ly1/n0;

    .line 1153
    .line 1154
    if-eqz v9, :cond_1b

    .line 1155
    .line 1156
    const-wide/16 v2, 0x0

    .line 1157
    .line 1158
    move-wide/from16 v20, v2

    .line 1159
    .line 1160
    goto :goto_e

    .line 1161
    :cond_1b
    move-wide/from16 v20, v14

    .line 1162
    .line 1163
    :goto_e
    if-eqz v9, :cond_1c

    .line 1164
    .line 1165
    iget-object v2, v0, Lv1/c;->a:Lv1/a;

    .line 1166
    .line 1167
    invoke-interface {v2}, Lv1/a;->g()J

    .line 1168
    .line 1169
    .line 1170
    move-result-wide v5

    .line 1171
    move-wide/from16 v22, v5

    .line 1172
    .line 1173
    goto :goto_f

    .line 1174
    :cond_1c
    move-wide/from16 v22, v16

    .line 1175
    .line 1176
    :goto_f
    if-eqz v9, :cond_1d

    .line 1177
    .line 1178
    sget-object v2, La2/j;->a:La2/j;

    .line 1179
    .line 1180
    move-object/from16 v24, v2

    .line 1181
    .line 1182
    goto :goto_10

    .line 1183
    :cond_1d
    new-instance v7, La2/k;

    .line 1184
    .line 1185
    const/4 v11, 0x0

    .line 1186
    const/16 v12, 0x1e

    .line 1187
    .line 1188
    const/4 v9, 0x0

    .line 1189
    const/4 v10, 0x0

    .line 1190
    invoke-direct/range {v7 .. v12}, La2/k;-><init>(FFIII)V

    .line 1191
    .line 1192
    .line 1193
    move-object/from16 v24, v7

    .line 1194
    .line 1195
    :goto_10
    new-instance v18, Lx/n;

    .line 1196
    .line 1197
    move-object/from16 v19, v1

    .line 1198
    .line 1199
    invoke-direct/range {v18 .. v24}, Lx/n;-><init>(Ly1/n0;JJLa2/h;)V

    .line 1200
    .line 1201
    .line 1202
    move-object/from16 v1, v18

    .line 1203
    .line 1204
    invoke-virtual {v0, v1}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    goto :goto_11

    .line 1209
    :cond_1e
    new-instance v0, Lac/p;

    .line 1210
    .line 1211
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1212
    .line 1213
    .line 1214
    throw v0

    .line 1215
    :cond_1f
    new-instance v1, Lv/x0;

    .line 1216
    .line 1217
    const/16 v2, 0x14

    .line 1218
    .line 1219
    invoke-direct {v1, v2}, Lv/x0;-><init>(I)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v0, v1}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    :goto_11
    return-object v0

    .line 1227
    :pswitch_4
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v2, Lv/s0;

    .line 1230
    .line 1231
    check-cast v0, Lf1/i0;

    .line 1232
    .line 1233
    new-instance v0, Lc8/p;

    .line 1234
    .line 1235
    const/16 v3, 0xc

    .line 1236
    .line 1237
    invoke-direct {v0, v3, v2}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 1238
    .line 1239
    .line 1240
    return-object v0

    .line 1241
    :pswitch_5
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v2, Ll0/p;

    .line 1244
    .line 1245
    sget-object v3, Lv/d;->j:Lv/w0;

    .line 1246
    .line 1247
    check-cast v0, Lv/i;

    .line 1248
    .line 1249
    iget-object v4, v0, Lv/i;->e:Lf1/k1;

    .line 1250
    .line 1251
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v4

    .line 1255
    iget-object v3, v3, Lv/w0;->b:Lf9/k;

    .line 1256
    .line 1257
    iget-object v0, v0, Lv/i;->f:Lv/p;

    .line 1258
    .line 1259
    invoke-interface {v3, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    invoke-virtual {v2, v4, v0}, Ll0/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1267
    .line 1268
    return-object v0

    .line 1269
    :pswitch_6
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 1270
    .line 1271
    check-cast v2, Lu0/p;

    .line 1272
    .line 1273
    check-cast v0, Lg3/g;

    .line 1274
    .line 1275
    invoke-virtual {v2, v0}, Lu0/p;->a(Lg3/g;)V

    .line 1276
    .line 1277
    .line 1278
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1279
    .line 1280
    return-object v0

    .line 1281
    :pswitch_7
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 1282
    .line 1283
    check-cast v2, Ls8/f;

    .line 1284
    .line 1285
    check-cast v0, Ljava/util/Map$Entry;

    .line 1286
    .line 1287
    const-string v3, "it"

    .line 1288
    .line 1289
    invoke-static {v0, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1295
    .line 1296
    .line 1297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v4

    .line 1301
    const-string v5, "(this Map)"

    .line 1302
    .line 1303
    if-ne v4, v2, :cond_20

    .line 1304
    .line 1305
    move-object v4, v5

    .line 1306
    goto :goto_12

    .line 1307
    :cond_20
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v4

    .line 1311
    :goto_12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    const/16 v4, 0x3d

    .line 1315
    .line 1316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0

    .line 1323
    if-ne v0, v2, :cond_21

    .line 1324
    .line 1325
    goto :goto_13

    .line 1326
    :cond_21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v5

    .line 1330
    :goto_13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    return-object v0

    .line 1338
    :pswitch_8
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 1339
    .line 1340
    check-cast v2, Ls8/a;

    .line 1341
    .line 1342
    if-ne v0, v2, :cond_22

    .line 1343
    .line 1344
    const-string v0, "(this Collection)"

    .line 1345
    .line 1346
    goto :goto_14

    .line 1347
    :cond_22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    :goto_14
    return-object v0

    .line 1352
    :pswitch_9
    iget-object v2, v1, Ls0/d;->b:Ljava/lang/Object;

    .line 1353
    .line 1354
    check-cast v2, Ls0/c;

    .line 1355
    .line 1356
    check-cast v0, Lf1/i0;

    .line 1357
    .line 1358
    new-instance v0, Lc8/p;

    .line 1359
    .line 1360
    const/16 v3, 0xb

    .line 1361
    .line 1362
    invoke-direct {v0, v3, v2}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 1363
    .line 1364
    .line 1365
    return-object v0

    .line 1366
    nop

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
