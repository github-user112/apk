.class public final synthetic Lk7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lk7/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk7/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lk7/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lk7/d;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lk7/d;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lk7/d;->f:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lk7/d;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 9
    .line 10
    iget-object v6, v0, Lk7/d;->f:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, v0, Lk7/d;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, Lk7/d;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Lk7/d;->c:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v10, v0, Lk7/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v10, Lz/v0;

    .line 24
    .line 25
    check-cast v9, Lg9/x;

    .line 26
    .line 27
    check-cast v8, Lg9/u;

    .line 28
    .line 29
    check-cast v7, Lz/s1;

    .line 30
    .line 31
    check-cast v6, Lg9/t;

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Float;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, v10, Lz/v0;->f:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lcc/h;

    .line 44
    .line 45
    invoke-static {v2}, Lz/v0;->f(Lcc/h;)Lz/q0;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v10, v2}, Lz/v0;->g(Lz/q0;)V

    .line 52
    .line 53
    .line 54
    iget-object v5, v9, Lg9/x;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Lz/q0;

    .line 57
    .line 58
    invoke-virtual {v5, v2}, Lz/q0;->a(Lz/q0;)Lz/q0;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iput-object v5, v9, Lg9/x;->b:Ljava/lang/Object;

    .line 63
    .line 64
    iget-wide v9, v5, Lz/q0;->a:J

    .line 65
    .line 66
    invoke-virtual {v7, v9, v10}, Lz/s1;->e(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    invoke-virtual {v7, v9, v10}, Lz/s1;->g(J)F

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iput v5, v8, Lg9/u;->a:F

    .line 75
    .line 76
    sub-float/2addr v5, v1

    .line 77
    invoke-static {v5}, Lz/p0;->a(F)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    xor-int/2addr v1, v4

    .line 82
    iput-boolean v1, v6, Lg9/t;->a:Z

    .line 83
    .line 84
    :cond_0
    if-eqz v2, :cond_1

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    return-object v1

    .line 92
    :pswitch_0
    check-cast v10, Lg3/w;

    .line 93
    .line 94
    check-cast v9, Lu0/b;

    .line 95
    .line 96
    check-cast v8, Lg3/k;

    .line 97
    .line 98
    check-cast v7, Ll0/u;

    .line 99
    .line 100
    check-cast v6, Lf9/k;

    .line 101
    .line 102
    move-object/from16 v1, p1

    .line 103
    .line 104
    check-cast v1, Lu0/o;

    .line 105
    .line 106
    iget-object v3, v9, Lu0/b;->a:Lu0/k;

    .line 107
    .line 108
    iput-object v10, v1, Lu0/o;->h:Lg3/w;

    .line 109
    .line 110
    iput-object v8, v1, Lu0/o;->i:Lg3/k;

    .line 111
    .line 112
    iput-object v7, v1, Lu0/o;->c:Lf9/k;

    .line 113
    .line 114
    iput-object v6, v1, Lu0/o;->d:Lf9/k;

    .line 115
    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    iget-object v4, v3, Lu0/k;->p:Ll0/s0;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    move-object v4, v2

    .line 122
    :goto_0
    iput-object v4, v1, Lu0/o;->e:Ll0/s0;

    .line 123
    .line 124
    if-eqz v3, :cond_3

    .line 125
    .line 126
    iget-object v4, v3, Lu0/k;->q:Lw0/r1;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move-object v4, v2

    .line 130
    :goto_1
    iput-object v4, v1, Lu0/o;->f:Lw0/r1;

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    sget-object v2, Lr2/i1;->s:Lf1/w2;

    .line 135
    .line 136
    invoke-static {v3, v2}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lr2/q2;

    .line 141
    .line 142
    :cond_4
    iput-object v2, v1, Lu0/o;->g:Lr2/q2;

    .line 143
    .line 144
    return-object v5

    .line 145
    :pswitch_1
    check-cast v10, Lu0/f;

    .line 146
    .line 147
    check-cast v9, Lg3/q;

    .line 148
    .line 149
    check-cast v8, Lg3/w;

    .line 150
    .line 151
    check-cast v7, Ll0/s0;

    .line 152
    .line 153
    check-cast v6, Ly1/n0;

    .line 154
    .line 155
    move-object/from16 v1, p1

    .line 156
    .line 157
    check-cast v1, Lq2/j0;

    .line 158
    .line 159
    invoke-virtual {v1}, Lq2/j0;->b()V

    .line 160
    .line 161
    .line 162
    iget-object v11, v1, Lq2/j0;->a:La2/c;

    .line 163
    .line 164
    iget-object v10, v10, Lu0/f;->c:Lf1/g1;

    .line 165
    .line 166
    invoke-virtual {v10}, Lf1/g1;->f()F

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    const/4 v12, 0x0

    .line 171
    cmpg-float v13, v10, v12

    .line 172
    .line 173
    if-nez v13, :cond_5

    .line 174
    .line 175
    goto/16 :goto_c

    .line 176
    .line 177
    :cond_5
    iget-wide v13, v8, Lg3/w;->b:J

    .line 178
    .line 179
    sget v8, Lb3/n0;->c:I

    .line 180
    .line 181
    const/16 v8, 0x20

    .line 182
    .line 183
    shr-long/2addr v13, v8

    .line 184
    long-to-int v14, v13

    .line 185
    invoke-interface {v9, v14}, Lg3/q;->b(I)I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    invoke-virtual {v7}, Ll0/s0;->d()Ll0/q1;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    if-eqz v7, :cond_6

    .line 194
    .line 195
    iget-object v7, v7, Ll0/q1;->a:Lb3/l0;

    .line 196
    .line 197
    invoke-virtual {v7, v9}, Lb3/l0;->c(I)Lx1/c;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    goto :goto_2

    .line 202
    :cond_6
    new-instance v7, Lx1/c;

    .line 203
    .line 204
    invoke-direct {v7, v12, v12, v12, v12}, Lx1/c;-><init>(FFFF)V

    .line 205
    .line 206
    .line 207
    :goto_2
    sget v9, Ll0/b1;->a:F

    .line 208
    .line 209
    invoke-virtual {v1, v9}, Lq2/j0;->S(F)F

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    float-to-double v12, v1

    .line 214
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v12

    .line 218
    double-to-float v1, v12

    .line 219
    const/high16 v9, 0x3f800000    # 1.0f

    .line 220
    .line 221
    cmpg-float v12, v1, v9

    .line 222
    .line 223
    if-gez v12, :cond_7

    .line 224
    .line 225
    const/high16 v1, 0x3f800000    # 1.0f

    .line 226
    .line 227
    :cond_7
    iget v9, v7, Lx1/c;->a:F

    .line 228
    .line 229
    const/4 v12, 0x2

    .line 230
    int-to-float v13, v12

    .line 231
    div-float v13, v1, v13

    .line 232
    .line 233
    add-float/2addr v9, v13

    .line 234
    iget-object v14, v11, La2/c;->b:La2/b;

    .line 235
    .line 236
    invoke-virtual {v14}, La2/b;->J()J

    .line 237
    .line 238
    .line 239
    move-result-wide v14

    .line 240
    shr-long/2addr v14, v8

    .line 241
    long-to-int v15, v14

    .line 242
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 243
    .line 244
    .line 245
    move-result v14

    .line 246
    sub-float/2addr v14, v13

    .line 247
    cmpl-float v15, v9, v14

    .line 248
    .line 249
    if-lez v15, :cond_8

    .line 250
    .line 251
    move v9, v14

    .line 252
    :cond_8
    cmpg-float v14, v9, v13

    .line 253
    .line 254
    if-gez v14, :cond_9

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_9
    move v13, v9

    .line 258
    :goto_3
    float-to-int v9, v1

    .line 259
    rem-int/2addr v9, v12

    .line 260
    if-ne v9, v4, :cond_a

    .line 261
    .line 262
    float-to-double v12, v13

    .line 263
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 264
    .line 265
    .line 266
    move-result-wide v12

    .line 267
    double-to-float v9, v12

    .line 268
    const/high16 v12, 0x3f000000    # 0.5f

    .line 269
    .line 270
    add-float/2addr v9, v12

    .line 271
    goto :goto_4

    .line 272
    :cond_a
    float-to-double v12, v13

    .line 273
    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    .line 274
    .line 275
    .line 276
    move-result-wide v12

    .line 277
    double-to-float v9, v12

    .line 278
    :goto_4
    iget v12, v7, Lx1/c;->b:F

    .line 279
    .line 280
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    int-to-long v13, v13

    .line 285
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    move v15, v9

    .line 290
    const/16 p1, 0x20

    .line 291
    .line 292
    int-to-long v8, v12

    .line 293
    shl-long v12, v13, p1

    .line 294
    .line 295
    const-wide v16, 0xffffffffL

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    and-long v8, v8, v16

    .line 301
    .line 302
    or-long v19, v12, v8

    .line 303
    .line 304
    iget v7, v7, Lx1/c;->d:F

    .line 305
    .line 306
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    int-to-long v8, v8

    .line 311
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    int-to-long v12, v7

    .line 316
    shl-long v7, v8, p1

    .line 317
    .line 318
    and-long v12, v12, v16

    .line 319
    .line 320
    or-long v21, v7, v12

    .line 321
    .line 322
    iget-object v7, v11, La2/c;->a:La2/a;

    .line 323
    .line 324
    iget-object v7, v7, La2/a;->c:Ly1/o;

    .line 325
    .line 326
    iget-object v8, v11, La2/c;->d:Ld7/q;

    .line 327
    .line 328
    if-nez v8, :cond_b

    .line 329
    .line 330
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    invoke-virtual {v8, v4}, Ld7/q;->r(I)V

    .line 335
    .line 336
    .line 337
    iput-object v8, v11, La2/c;->d:Ld7/q;

    .line 338
    .line 339
    :cond_b
    iget-object v9, v8, Ld7/q;->c:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v9, Landroid/graphics/Paint;

    .line 342
    .line 343
    iget-object v11, v11, La2/c;->b:La2/b;

    .line 344
    .line 345
    invoke-virtual {v11}, La2/b;->J()J

    .line 346
    .line 347
    .line 348
    move-result-wide v11

    .line 349
    invoke-virtual {v6, v10, v11, v12, v8}, Ly1/n0;->a(FJLd7/q;)V

    .line 350
    .line 351
    .line 352
    iget-object v6, v8, Ld7/q;->e:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v6, Ly1/k;

    .line 355
    .line 356
    invoke-static {v6, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    if-nez v6, :cond_c

    .line 361
    .line 362
    invoke-virtual {v8, v2}, Ld7/q;->l(Ly1/k;)V

    .line 363
    .line 364
    .line 365
    :cond_c
    iget v2, v8, Ld7/q;->b:I

    .line 366
    .line 367
    const/4 v6, 0x3

    .line 368
    if-ne v2, v6, :cond_d

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_d
    invoke-virtual {v8, v6}, Ld7/q;->j(I)V

    .line 372
    .line 373
    .line 374
    :goto_5
    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    cmpg-float v2, v2, v1

    .line 379
    .line 380
    if-nez v2, :cond_e

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_e
    invoke-virtual {v8, v1}, Ld7/q;->q(F)V

    .line 384
    .line 385
    .line 386
    :goto_6
    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    const/high16 v2, 0x40800000    # 4.0f

    .line 391
    .line 392
    cmpg-float v1, v1, v2

    .line 393
    .line 394
    if-nez v1, :cond_f

    .line 395
    .line 396
    goto :goto_7

    .line 397
    :cond_f
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 398
    .line 399
    .line 400
    :goto_7
    invoke-virtual {v8}, Ld7/q;->e()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-nez v1, :cond_10

    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_10
    invoke-virtual {v8, v3}, Ld7/q;->o(I)V

    .line 408
    .line 409
    .line 410
    :goto_8
    invoke-virtual {v8}, Ld7/q;->f()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-nez v1, :cond_11

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_11
    invoke-virtual {v8, v3}, Ld7/q;->p(I)V

    .line 418
    .line 419
    .line 420
    :goto_9
    invoke-virtual {v9}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-ne v1, v4, :cond_12

    .line 425
    .line 426
    :goto_a
    move-object/from16 v18, v7

    .line 427
    .line 428
    move-object/from16 v23, v8

    .line 429
    .line 430
    goto :goto_b

    .line 431
    :cond_12
    invoke-virtual {v8, v4}, Ld7/q;->m(I)V

    .line 432
    .line 433
    .line 434
    goto :goto_a

    .line 435
    :goto_b
    invoke-interface/range {v18 .. v23}, Ly1/o;->c(JJLd7/q;)V

    .line 436
    .line 437
    .line 438
    :goto_c
    return-object v5

    .line 439
    :pswitch_2
    check-cast v10, Lr8/j;

    .line 440
    .line 441
    check-cast v9, Lf9/o;

    .line 442
    .line 443
    check-cast v8, Lf1/h1;

    .line 444
    .line 445
    check-cast v7, Lf1/b1;

    .line 446
    .line 447
    check-cast v6, Lf1/b1;

    .line 448
    .line 449
    move-object/from16 v1, p1

    .line 450
    .line 451
    check-cast v1, Lj8/k0;

    .line 452
    .line 453
    const-string v2, "it"

    .line 454
    .line 455
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v1, Lj8/k0;->b:Lj8/o0;

    .line 459
    .line 460
    invoke-interface {v1}, Lj8/o0;->a()I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-virtual {v8, v1}, Lf1/h1;->g(I)V

    .line 465
    .line 466
    .line 467
    sget-object v1, Ll8/d;->a:Lr8/o;

    .line 468
    .line 469
    iget-object v1, v10, Lr8/j;->a:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v1, Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v8}, Lf1/h1;->f()I

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    invoke-static {v2, v1}, Ll8/d;->f(ILjava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Ljava/lang/Boolean;

    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 487
    .line 488
    .line 489
    invoke-virtual {v8}, Lf1/h1;->f()I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    check-cast v3, Ljava/lang/Boolean;

    .line 502
    .line 503
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 504
    .line 505
    .line 506
    invoke-interface {v9, v1, v2, v3}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    return-object v5

    .line 510
    nop

    .line 511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
