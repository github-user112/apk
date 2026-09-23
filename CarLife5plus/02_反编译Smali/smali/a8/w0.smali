.class public final La8/w0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:La8/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La8/w0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La8/w0;->a:La8/w0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lf9/k;Lf1/s;I)V
    .locals 20

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move-object/from16 v10, p5

    .line 6
    .line 7
    const-string v0, "selectedItems"

    .line 8
    .line 9
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onValueChange"

    .line 13
    .line 14
    invoke-static {v5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x6ba79aa8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v10, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v10, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/16 v0, 0x20

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v0, 0x10

    .line 35
    .line 36
    :goto_0
    or-int v0, p6, v0

    .line 37
    .line 38
    move-object/from16 v4, p3

    .line 39
    .line 40
    invoke-virtual {v10, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    const/16 v6, 0x100

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v6, 0x80

    .line 50
    .line 51
    :goto_1
    or-int/2addr v0, v6

    .line 52
    and-int/lit16 v6, v0, 0x2493

    .line 53
    .line 54
    const/16 v7, 0x2492

    .line 55
    .line 56
    if-ne v6, v7, :cond_3

    .line 57
    .line 58
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_3
    :goto_2
    const v6, 0x6e3c21fe

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v6}, Lf1/s;->W(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    sget-object v13, Lf1/n;->a:Lf1/w0;

    .line 81
    .line 82
    if-ne v6, v13, :cond_4

    .line 83
    .line 84
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v10, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    move-object v14, v6

    .line 94
    check-cast v14, Lf1/b1;

    .line 95
    .line 96
    const/4 v15, 0x0

    .line 97
    invoke-virtual {v10, v15}, Lf1/s;->p(Z)V

    .line 98
    .line 99
    .line 100
    new-instance v6, La8/b0;

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    move-object/from16 v8, p1

    .line 104
    .line 105
    invoke-direct {v6, v7, v8}, La8/b0;-><init>(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const v7, 0x574aeb51

    .line 109
    .line 110
    .line 111
    invoke-static {v7, v6, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    sget-object v7, La8/c;->e:Ln1/c;

    .line 116
    .line 117
    const v9, 0x4c5de2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v9}, Lf1/s;->W(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    if-ne v11, v13, :cond_5

    .line 128
    .line 129
    new-instance v11, La8/f;

    .line 130
    .line 131
    const/16 v12, 0x8

    .line 132
    .line 133
    invoke-direct {v11, v14, v12}, La8/f;-><init>(Lf1/b1;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    check-cast v11, Lf9/a;

    .line 140
    .line 141
    invoke-virtual {v10, v15}, Lf1/s;->p(Z)V

    .line 142
    .line 143
    .line 144
    move-object v9, v11

    .line 145
    const v12, 0x4c5de2

    .line 146
    .line 147
    .line 148
    const/16 v11, 0xc36

    .line 149
    .line 150
    const v16, 0x4c5de2

    .line 151
    .line 152
    .line 153
    const/4 v12, 0x4

    .line 154
    const/4 v8, 0x0

    .line 155
    const v2, 0x4c5de2

    .line 156
    .line 157
    .line 158
    const/16 v16, 0x20

    .line 159
    .line 160
    invoke-static/range {v6 .. v12}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 161
    .line 162
    .line 163
    const v6, 0x202bcd82

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v6}, Lf1/s;->W(I)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v8, 0x1

    .line 175
    const/4 v9, 0x6

    .line 176
    if-eqz v6, :cond_9

    .line 177
    .line 178
    sget-object v6, Ld0/h;->d:Ld0/d;

    .line 179
    .line 180
    sget-object v11, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 181
    .line 182
    int-to-float v1, v1

    .line 183
    const/4 v12, 0x0

    .line 184
    invoke-static {v11, v12, v1, v8}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget-object v11, Lr1/c;->j:Lr1/g;

    .line 189
    .line 190
    invoke-static {v6, v11, v10, v9}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    iget-wide v11, v10, Lf1/s;->T:J

    .line 195
    .line 196
    ushr-long v16, v11, v16

    .line 197
    .line 198
    xor-long v11, v11, v16

    .line 199
    .line 200
    long-to-int v12, v11

    .line 201
    invoke-virtual {v10}, Lf1/s;->l()Lf1/q1;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-static {v10, v1}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sget-object v16, Lq2/j;->d0:Lq2/i;

    .line 210
    .line 211
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    sget-object v2, Lq2/i;->b:Lq2/a0;

    .line 215
    .line 216
    invoke-virtual {v10}, Lf1/s;->a0()V

    .line 217
    .line 218
    .line 219
    iget-boolean v15, v10, Lf1/s;->S:Z

    .line 220
    .line 221
    if-eqz v15, :cond_6

    .line 222
    .line 223
    invoke-virtual {v10, v2}, Lf1/s;->k(Lf9/a;)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_6
    invoke-virtual {v10}, Lf1/s;->k0()V

    .line 228
    .line 229
    .line 230
    :goto_3
    sget-object v2, Lq2/i;->e:Lq2/h;

    .line 231
    .line 232
    invoke-static {v10, v2, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 236
    .line 237
    invoke-static {v10, v2, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 241
    .line 242
    iget-boolean v6, v10, Lf1/s;->S:Z

    .line 243
    .line 244
    if-nez v6, :cond_7

    .line 245
    .line 246
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    invoke-static {v6, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-nez v6, :cond_8

    .line 259
    .line 260
    :cond_7
    invoke-static {v12, v10, v12, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 264
    .line 265
    invoke-static {v10, v2, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    const-string v1, "\u672a\u6dfb\u52a0"

    .line 269
    .line 270
    const/4 v2, 0x2

    .line 271
    invoke-static {v1, v7, v10, v9, v2}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v8}, Lf1/s;->p(Z)V

    .line 275
    .line 276
    .line 277
    :cond_9
    const/4 v1, 0x0

    .line 278
    invoke-virtual {v10, v1}, Lf1/s;->p(Z)V

    .line 279
    .line 280
    .line 281
    const v1, 0x202bfd2a

    .line 282
    .line 283
    .line 284
    invoke-virtual {v10, v1}, Lf1/s;->W(I)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    const/4 v2, 0x0

    .line 292
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_c

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    add-int/lit8 v15, v2, 0x1

    .line 303
    .line 304
    if-ltz v2, :cond_b

    .line 305
    .line 306
    check-cast v6, Lz7/a2;

    .line 307
    .line 308
    invoke-virtual {v6}, Lz7/a2;->hashCode()I

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    const v12, -0x44cb8690

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, v12, v11}, Lf1/s;->U(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    new-instance v11, La8/c0;

    .line 323
    .line 324
    const/4 v12, 0x0

    .line 325
    invoke-direct {v11, v12, v6}, La8/c0;-><init>(ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    const v6, 0x28661c28

    .line 329
    .line 330
    .line 331
    invoke-static {v6, v11, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    new-instance v11, La8/e0;

    .line 336
    .line 337
    invoke-direct {v11, v2, v5, v3}, La8/e0;-><init>(ILf9/k;Ljava/util/List;)V

    .line 338
    .line 339
    .line 340
    const v12, 0x10e3fc29

    .line 341
    .line 342
    .line 343
    invoke-static {v12, v11, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    invoke-static {v3}, Lp9/x1;->u(Ljava/util/List;)I

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-eq v2, v12, :cond_a

    .line 352
    .line 353
    :goto_5
    move-object v12, v7

    .line 354
    move-object v7, v11

    .line 355
    const/4 v2, 0x1

    .line 356
    goto :goto_6

    .line 357
    :cond_a
    const/4 v8, 0x0

    .line 358
    goto :goto_5

    .line 359
    :goto_6
    const/16 v11, 0x36

    .line 360
    .line 361
    move-object/from16 v18, v12

    .line 362
    .line 363
    const/16 v12, 0x8

    .line 364
    .line 365
    const/16 v19, 0x6

    .line 366
    .line 367
    const/4 v9, 0x0

    .line 368
    invoke-static/range {v6 .. v12}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 369
    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    invoke-virtual {v10, v6}, Lf1/s;->p(Z)V

    .line 373
    .line 374
    .line 375
    move v2, v15

    .line 376
    move-object/from16 v7, v18

    .line 377
    .line 378
    const/4 v8, 0x1

    .line 379
    const/4 v9, 0x6

    .line 380
    goto :goto_4

    .line 381
    :cond_b
    move-object/from16 v18, v7

    .line 382
    .line 383
    invoke-static {}, Lp9/x1;->L()V

    .line 384
    .line 385
    .line 386
    throw v18

    .line 387
    :cond_c
    const/4 v6, 0x0

    .line 388
    const/16 v19, 0x6

    .line 389
    .line 390
    invoke-virtual {v10, v6}, Lf1/s;->p(Z)V

    .line 391
    .line 392
    .line 393
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, Ljava/lang/Boolean;

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    const v12, 0x4c5de2

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10, v12}, Lf1/s;->W(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    if-ne v1, v13, :cond_d

    .line 414
    .line 415
    new-instance v1, La8/f;

    .line 416
    .line 417
    const/16 v2, 0x9

    .line 418
    .line 419
    invoke-direct {v1, v14, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v10, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_d
    move-object v9, v1

    .line 426
    check-cast v9, Lf9/a;

    .line 427
    .line 428
    const/4 v1, 0x0

    .line 429
    invoke-virtual {v10, v1}, Lf1/s;->p(Z)V

    .line 430
    .line 431
    .line 432
    const v1, -0x6815fd56

    .line 433
    .line 434
    .line 435
    invoke-virtual {v10, v1}, Lf1/s;->W(I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v10, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    if-nez v1, :cond_e

    .line 447
    .line 448
    if-ne v2, v13, :cond_f

    .line 449
    .line 450
    :cond_e
    new-instance v2, La8/z;

    .line 451
    .line 452
    invoke-direct {v2, v5, v3, v14}, La8/z;-><init>(Lf9/k;Ljava/util/List;Lf1/b1;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v10, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    :cond_f
    check-cast v2, Lf9/k;

    .line 459
    .line 460
    const/4 v1, 0x0

    .line 461
    invoke-virtual {v10, v1}, Lf1/s;->p(Z)V

    .line 462
    .line 463
    .line 464
    shr-int/lit8 v0, v0, 0x6

    .line 465
    .line 466
    and-int/lit8 v0, v0, 0xe

    .line 467
    .line 468
    or-int/lit16 v12, v0, 0x6180

    .line 469
    .line 470
    move-object/from16 v6, p0

    .line 471
    .line 472
    move-object v7, v4

    .line 473
    move-object v11, v10

    .line 474
    move-object v10, v2

    .line 475
    invoke-virtual/range {v6 .. v12}, La8/w0;->b(Ljava/util/List;ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 476
    .line 477
    .line 478
    :goto_7
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    if-eqz v7, :cond_10

    .line 483
    .line 484
    new-instance v0, La8/a0;

    .line 485
    .line 486
    move-object/from16 v1, p0

    .line 487
    .line 488
    move-object/from16 v2, p1

    .line 489
    .line 490
    move-object/from16 v4, p3

    .line 491
    .line 492
    move/from16 v6, p6

    .line 493
    .line 494
    invoke-direct/range {v0 .. v6}, La8/a0;-><init>(La8/w0;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lf9/k;I)V

    .line 495
    .line 496
    .line 497
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 498
    .line 499
    :cond_10
    return-void
.end method

.method public final b(Ljava/util/List;ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 14

    .line 1
    move-object/from16 v11, p5

    .line 2
    .line 3
    const v0, -0x3c557440

    .line 4
    .line 5
    .line 6
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p6, 0x6

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v11, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int v0, p6, v0

    .line 24
    .line 25
    :goto_1
    move/from16 v9, p2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    move/from16 v0, p6

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_2
    invoke-virtual {v11, v9}, Lf1/s;->g(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_2
    const/16 v2, 0x10

    .line 43
    .line 44
    :goto_3
    or-int/2addr v0, v2

    .line 45
    move-object/from16 v7, p4

    .line 46
    .line 47
    invoke-virtual {v11, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const/16 v2, 0x800

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_3
    const/16 v2, 0x400

    .line 57
    .line 58
    :goto_4
    or-int/2addr v0, v2

    .line 59
    and-int/lit16 v2, v0, 0x493

    .line 60
    .line 61
    const/16 v5, 0x492

    .line 62
    .line 63
    if-ne v2, v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_4
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 73
    .line 74
    .line 75
    goto :goto_7

    .line 76
    :cond_5
    :goto_5
    const v2, 0x6e3c21fe

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v2}, Lf1/s;->W(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 87
    .line 88
    if-ne v2, v5, :cond_6

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v11, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    move-object v8, v2

    .line 99
    check-cast v8, Lf1/b1;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-virtual {v11, v2}, Lf1/s;->p(Z)V

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x40

    .line 106
    .line 107
    invoke-static {v2, v11}, Lg5/a;->B(ILf1/s;)F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-static {v3, v11}, Lg5/a;->B(ILf1/s;)F

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    const/4 v6, 0x1

    .line 120
    const/4 v10, 0x6

    .line 121
    if-le v3, v10, :cond_7

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_7
    const/4 v1, 0x1

    .line 125
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    add-int/2addr v3, v1

    .line 130
    sub-int/2addr v3, v6

    .line 131
    div-int/2addr v3, v1

    .line 132
    add-float/2addr v2, v5

    .line 133
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    int-to-float v3, v3

    .line 138
    mul-float v3, v3, v2

    .line 139
    .line 140
    new-instance v2, La8/j0;

    .line 141
    .line 142
    move-object v6, p1

    .line 143
    move v4, v1

    .line 144
    invoke-direct/range {v2 .. v8}, La8/j0;-><init>(FIFLjava/util/List;Lf9/k;Lf1/b1;)V

    .line 145
    .line 146
    .line 147
    const v1, 0x421c977

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v2, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    shr-int/lit8 v0, v0, 0x3

    .line 155
    .line 156
    and-int/lit8 v12, v0, 0x7e

    .line 157
    .line 158
    const/16 v13, 0x3fc

    .line 159
    .line 160
    const-wide/16 v2, 0x0

    .line 161
    .line 162
    const/4 v4, 0x0

    .line 163
    const/4 v5, 0x0

    .line 164
    const/4 v6, 0x0

    .line 165
    const/4 v7, 0x0

    .line 166
    const/4 v8, 0x0

    .line 167
    const/4 v9, 0x0

    .line 168
    move/from16 v0, p2

    .line 169
    .line 170
    move-object/from16 v1, p3

    .line 171
    .line 172
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 173
    .line 174
    .line 175
    :goto_7
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    new-instance v2, La8/u;

    .line 182
    .line 183
    move-object v3, p0

    .line 184
    move-object v4, p1

    .line 185
    move/from16 v5, p2

    .line 186
    .line 187
    move-object/from16 v6, p3

    .line 188
    .line 189
    move-object/from16 v7, p4

    .line 190
    .line 191
    move/from16 v8, p6

    .line 192
    .line 193
    invoke-direct/range {v2 .. v8}, La8/u;-><init>(La8/w0;Ljava/util/List;ZLf9/a;Lf9/k;I)V

    .line 194
    .line 195
    .line 196
    iput-object v2, v0, Lf1/w1;->d:Lf9/n;

    .line 197
    .line 198
    :cond_8
    return-void
.end method

.method public final c(Ljava/util/List;Lf1/s;I)V
    .locals 15

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v6, p3

    .line 4
    .line 5
    const v0, 0x2095252c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v6, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x13

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    move-object/from16 v7, p1

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    const-string v0, "\u6dfb\u52a0\u4efb\u52a1"

    .line 34
    .line 35
    const-string v1, "\u5229\u7528\u6309\u952e\u6216\u65e5\u5fd7\u89e6\u53d1\u6267\u884c\u6307\u5b9a\u64cd\u4f5c"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const v0, 0x6e3c21fe

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 56
    .line 57
    if-ne v1, v2, :cond_2

    .line 58
    .line 59
    new-instance v1, Lp1/p;

    .line 60
    .line 61
    invoke-direct {v1}, Lp1/p;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v3, Lz7/b2;->Companion:Lz7/x1;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lz7/x1;->a()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Lp1/p;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    check-cast v1, Lp1/p;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-static {v4, v3, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v5, 0x0

    .line 87
    if-ne v0, v2, :cond_3

    .line 88
    .line 89
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    check-cast v0, Lf1/b1;

    .line 97
    .line 98
    invoke-virtual {v4, v3}, Lf1/s;->p(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lp1/q;->e(Lp1/p;)Lp1/w;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget-object v8, v8, Lp1/w;->c:Lj1/c;

    .line 109
    .line 110
    const v9, 0x4c5de2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v9}, Lf1/s;->W(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    if-ne v10, v2, :cond_4

    .line 121
    .line 122
    new-instance v10, La8/k0;

    .line 123
    .line 124
    const/4 v11, 0x0

    .line 125
    invoke-direct {v10, v1, v5, v11}, La8/k0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    check-cast v10, Lf9/n;

    .line 132
    .line 133
    invoke-virtual {v4, v3}, Lf1/s;->p(Z)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v10, v8}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object v8, Ld0/h;->c:Ld0/b;

    .line 140
    .line 141
    sget-object v10, Lr1/c;->m:Lr1/f;

    .line 142
    .line 143
    invoke-static {v8, v10, v4, v3}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    iget-wide v10, v4, Lf1/s;->T:J

    .line 148
    .line 149
    const/16 v12, 0x20

    .line 150
    .line 151
    ushr-long v12, v10, v12

    .line 152
    .line 153
    xor-long/2addr v10, v12

    .line 154
    long-to-int v11, v10

    .line 155
    invoke-virtual {v4}, Lf1/s;->l()Lf1/q1;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    sget-object v12, Lr1/m;->a:Lr1/m;

    .line 160
    .line 161
    invoke-static {v4, v12}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    sget-object v13, Lq2/j;->d0:Lq2/i;

    .line 166
    .line 167
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sget-object v13, Lq2/i;->b:Lq2/a0;

    .line 171
    .line 172
    invoke-virtual {v4}, Lf1/s;->a0()V

    .line 173
    .line 174
    .line 175
    iget-boolean v14, v4, Lf1/s;->S:Z

    .line 176
    .line 177
    if-eqz v14, :cond_5

    .line 178
    .line 179
    invoke-virtual {v4, v13}, Lf1/s;->k(Lf9/a;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {v4}, Lf1/s;->k0()V

    .line 184
    .line 185
    .line 186
    :goto_1
    sget-object v13, Lq2/i;->e:Lq2/h;

    .line 187
    .line 188
    invoke-static {v4, v13, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    sget-object v8, Lq2/i;->d:Lq2/h;

    .line 192
    .line 193
    invoke-static {v4, v8, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    sget-object v8, Lq2/i;->f:Lq2/h;

    .line 197
    .line 198
    iget-boolean v10, v4, Lf1/s;->S:Z

    .line 199
    .line 200
    if-nez v10, :cond_6

    .line 201
    .line 202
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    invoke-static {v10, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-nez v10, :cond_7

    .line 215
    .line 216
    :cond_6
    invoke-static {v11, v4, v11, v8}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    sget-object v8, Lq2/i;->c:Lq2/h;

    .line 220
    .line 221
    invoke-static {v4, v8, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance v8, La8/m0;

    .line 225
    .line 226
    const/4 v10, 0x0

    .line 227
    invoke-direct {v8, v7, v1, v0, v10}, La8/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 228
    .line 229
    .line 230
    const v10, -0x12b82ed3

    .line 231
    .line 232
    .line 233
    invoke-static {v10, v8, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    const/16 v10, 0x30

    .line 238
    .line 239
    const/4 v11, 0x1

    .line 240
    invoke-static {v5, v8, v4, v10, v11}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 241
    .line 242
    .line 243
    new-instance v5, La8/o0;

    .line 244
    .line 245
    const/4 v8, 0x0

    .line 246
    invoke-direct {v5, v1, v0, v8}, La8/o0;-><init>(Lp1/p;Lf1/b1;I)V

    .line 247
    .line 248
    .line 249
    const v8, -0x356cf0ea    # -4818827.0f

    .line 250
    .line 251
    .line 252
    invoke-static {v8, v5, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    const-string v8, "\u4efb\u52a1\u5217\u8868"

    .line 257
    .line 258
    const/16 v10, 0x36

    .line 259
    .line 260
    invoke-static {v8, v5, v4, v10, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v11}, Lf1/s;->p(Z)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Lz7/b2;

    .line 271
    .line 272
    if-eqz v5, :cond_a

    .line 273
    .line 274
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Lz7/b2;

    .line 279
    .line 280
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v9}, Lf1/s;->W(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    if-ne v8, v2, :cond_8

    .line 291
    .line 292
    new-instance v8, La8/f;

    .line 293
    .line 294
    const/4 v9, 0x7

    .line 295
    invoke-direct {v8, v0, v9}, La8/f;-><init>(Lf1/b1;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :cond_8
    check-cast v8, Lf9/a;

    .line 302
    .line 303
    const v9, -0x615d173a

    .line 304
    .line 305
    .line 306
    invoke-static {v4, v3, v9}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    if-ne v9, v2, :cond_9

    .line 311
    .line 312
    new-instance v9, La8/v;

    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    invoke-direct {v9, v2, v1, v0}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_9
    check-cast v9, Lf9/k;

    .line 322
    .line 323
    invoke-virtual {v4, v3}, Lf1/s;->p(Z)V

    .line 324
    .line 325
    .line 326
    move-object v1, v5

    .line 327
    const/16 v5, 0xdb0

    .line 328
    .line 329
    move-object v0, p0

    .line 330
    move-object v2, v8

    .line 331
    move-object v3, v9

    .line 332
    invoke-virtual/range {v0 .. v5}, La8/w0;->d(Lz7/b2;Lf9/a;Lf9/k;Lf1/s;I)V

    .line 333
    .line 334
    .line 335
    :cond_a
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    if-eqz v1, :cond_b

    .line 340
    .line 341
    new-instance v2, La8/w;

    .line 342
    .line 343
    const/4 v3, 0x0

    .line 344
    invoke-direct {v2, v6, v3, p0, v7}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iput-object v2, v1, Lf1/w1;->d:Lf9/n;

    .line 348
    .line 349
    :cond_b
    return-void
.end method

.method public final d(Lz7/b2;Lf9/a;Lf9/k;Lf1/s;I)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v11, p4

    .line 6
    .line 7
    move/from16 v14, p5

    .line 8
    .line 9
    const v0, -0x722d57bf

    .line 10
    .line 11
    .line 12
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v14, 0x6

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, v14

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v14

    .line 31
    :goto_1
    and-int/lit8 v1, v14, 0x30

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v11, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v1, 0x10

    .line 45
    .line 46
    :goto_2
    or-int/2addr v0, v1

    .line 47
    :cond_3
    and-int/lit16 v1, v14, 0x180

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    move-object/from16 v1, p3

    .line 52
    .line 53
    invoke-virtual {v11, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    const/16 v3, 0x100

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    const/16 v3, 0x80

    .line 63
    .line 64
    :goto_3
    or-int/2addr v0, v3

    .line 65
    :goto_4
    move v8, v0

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    move-object/from16 v1, p3

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :goto_5
    and-int/lit16 v0, v8, 0x93

    .line 71
    .line 72
    const/16 v3, 0x92

    .line 73
    .line 74
    if-ne v0, v3, :cond_7

    .line 75
    .line 76
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_6
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :cond_7
    :goto_6
    const v0, 0x6e3c21fe

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11, v0}, Lf1/s;->W(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 99
    .line 100
    if-ne v3, v4, :cond_8

    .line 101
    .line 102
    iget-object v3, v2, Lz7/b2;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v11, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_8
    move-object v5, v3

    .line 112
    check-cast v5, Lf1/b1;

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-static {v11, v3, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-ne v6, v4, :cond_9

    .line 120
    .line 121
    iget-object v6, v2, Lz7/b2;->c:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v11, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_9
    check-cast v6, Lf1/b1;

    .line 131
    .line 132
    invoke-static {v11, v3, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-ne v0, v4, :cond_a

    .line 137
    .line 138
    iget-object v0, v2, Lz7/b2;->d:Ljava/util/List;

    .line 139
    .line 140
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_a
    move-object v4, v0

    .line 148
    check-cast v4, Lf1/b1;

    .line 149
    .line 150
    invoke-virtual {v11, v3}, Lf1/s;->p(Z)V

    .line 151
    .line 152
    .line 153
    new-instance v0, La8/p0;

    .line 154
    .line 155
    const/4 v3, 0x0

    .line 156
    invoke-direct {v0, v7, v3}, La8/p0;-><init>(Lf9/a;I)V

    .line 157
    .line 158
    .line 159
    const v3, 0x120b8a7a

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    new-instance v0, La8/r0;

    .line 167
    .line 168
    move-object v3, v6

    .line 169
    const/4 v6, 0x0

    .line 170
    invoke-direct/range {v0 .. v6}, La8/r0;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 171
    .line 172
    .line 173
    const v1, -0x63230948

    .line 174
    .line 175
    .line 176
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, La8/u0;

    .line 181
    .line 182
    const/4 v2, 0x0

    .line 183
    invoke-direct {v1, v2, v5, v3, v4}, La8/u0;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 184
    .line 185
    .line 186
    const v2, -0x4c448bd6

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v1, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    and-int/lit8 v1, v8, 0x70

    .line 194
    .line 195
    const v2, 0x30c00006

    .line 196
    .line 197
    .line 198
    or-int v12, v1, v2

    .line 199
    .line 200
    const/16 v13, 0x17c

    .line 201
    .line 202
    move-object v7, v9

    .line 203
    move-object v9, v0

    .line 204
    const/4 v0, 0x1

    .line 205
    const-wide/16 v2, 0x0

    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    const/4 v5, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    const/4 v8, 0x0

    .line 211
    move-object/from16 v1, p2

    .line 212
    .line 213
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 214
    .line 215
    .line 216
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    if-eqz v7, :cond_b

    .line 221
    .line 222
    new-instance v0, La8/x;

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    move-object v1, p0

    .line 226
    move-object/from16 v2, p1

    .line 227
    .line 228
    move-object/from16 v3, p2

    .line 229
    .line 230
    move-object/from16 v4, p3

    .line 231
    .line 232
    move v5, v14

    .line 233
    invoke-direct/range {v0 .. v6}, La8/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 234
    .line 235
    .line 236
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 237
    .line 238
    :cond_b
    return-void
.end method

.method public final e(Lz7/b2;ZLf9/k;Lf9/a;Lf9/a;Lf1/s;I)V
    .locals 13

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move-object/from16 v10, p6

    .line 6
    .line 7
    const v0, 0x4f4a98c5

    .line 8
    .line 9
    .line 10
    invoke-virtual {v10, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v10, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int v0, p7, v0

    .line 23
    .line 24
    invoke-virtual {v10, p2}, Lf1/s;->g(Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v1, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr v0, v1

    .line 36
    invoke-virtual {v10, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_2
    or-int/2addr v0, v1

    .line 48
    invoke-virtual {v10, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const/16 v1, 0x800

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    const/16 v1, 0x400

    .line 58
    .line 59
    :goto_3
    or-int/2addr v0, v1

    .line 60
    move-object/from16 v9, p5

    .line 61
    .line 62
    invoke-virtual {v10, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    const/16 v1, 0x4000

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const/16 v1, 0x2000

    .line 72
    .line 73
    :goto_4
    or-int/2addr v0, v1

    .line 74
    and-int/lit16 v1, v0, 0x2493

    .line 75
    .line 76
    const/16 v2, 0x2492

    .line 77
    .line 78
    if-ne v1, v2, :cond_6

    .line 79
    .line 80
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_5
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 88
    .line 89
    .line 90
    goto :goto_6

    .line 91
    :cond_6
    :goto_5
    new-instance v1, La8/c0;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-direct {v1, v2, p1}, La8/c0;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const v2, -0x2c86d7c4

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v1, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    new-instance v1, La8/m0;

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-direct {v1, p1, v4, v5, v2}, La8/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    const v2, 0x5725b8bd

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v1, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    xor-int/lit8 v8, p2, 0x1

    .line 118
    .line 119
    shr-int/lit8 v0, v0, 0x3

    .line 120
    .line 121
    and-int/lit16 v0, v0, 0x1c00

    .line 122
    .line 123
    or-int/lit8 v11, v0, 0x36

    .line 124
    .line 125
    const/4 v12, 0x0

    .line 126
    invoke-static/range {v6 .. v12}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 127
    .line 128
    .line 129
    :goto_6
    invoke-virtual/range {p6 .. p6}, Lf1/s;->r()Lf1/w1;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    if-eqz v8, :cond_7

    .line 134
    .line 135
    new-instance v0, La8/y;

    .line 136
    .line 137
    move-object v1, p0

    .line 138
    move-object v2, p1

    .line 139
    move v3, p2

    .line 140
    move-object/from16 v6, p5

    .line 141
    .line 142
    move/from16 v7, p7

    .line 143
    .line 144
    invoke-direct/range {v0 .. v7}, La8/y;-><init>(La8/w0;Lz7/b2;ZLf9/k;Lf9/a;Lf9/a;I)V

    .line 145
    .line 146
    .line 147
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 148
    .line 149
    :cond_7
    return-void
.end method
