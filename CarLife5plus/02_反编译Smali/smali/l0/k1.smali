.class public final Ll0/k1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll0/k1;->a:I

    iput-object p2, p0, Ll0/k1;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll0/k1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf9/a;Lf9/k;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ll0/k1;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/k1;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll0/k1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll0/k1;->a:I

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x10

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    iget-object v8, v0, Ll0/k1;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v9, v0, Ll0/k1;->b:Ljava/lang/Object;

    .line 18
    .line 19
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Ld0/t;

    .line 28
    .line 29
    move-object/from16 v1, p2

    .line 30
    .line 31
    check-cast v1, Lf1/s;

    .line 32
    .line 33
    move-object/from16 v2, p3

    .line 34
    .line 35
    check-cast v2, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    and-int/lit8 v3, v2, 0x11

    .line 42
    .line 43
    if-eq v3, v4, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    and-int/2addr v2, v5

    .line 49
    invoke-virtual {v1, v2, v3}, Lf1/s;->N(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-ne v2, v10, :cond_1

    .line 60
    .line 61
    new-instance v2, Ly/e;

    .line 62
    .line 63
    invoke-direct {v2}, Ly/e;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    check-cast v2, Ly/e;

    .line 70
    .line 71
    check-cast v9, Lf9/k;

    .line 72
    .line 73
    check-cast v8, Ly/c;

    .line 74
    .line 75
    iget-object v3, v2, Ly/e;->a:Lp1/p;

    .line 76
    .line 77
    invoke-virtual {v3}, Lp1/p;->clear()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v9, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v8, v1, v11}, Ly/e;->a(Ly/c;Lf1/s;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-object v7

    .line 91
    :pswitch_0
    move-object/from16 v1, p1

    .line 92
    .line 93
    check-cast v1, Lr1/p;

    .line 94
    .line 95
    move-object/from16 v1, p2

    .line 96
    .line 97
    check-cast v1, Lf1/s;

    .line 98
    .line 99
    move-object/from16 v2, p3

    .line 100
    .line 101
    check-cast v2, Ljava/lang/Number;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 104
    .line 105
    .line 106
    const v2, -0x15193045

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 110
    .line 111
    .line 112
    check-cast v9, Lx/n0;

    .line 113
    .line 114
    check-cast v8, Lb0/k;

    .line 115
    .line 116
    invoke-interface {v9, v8, v1}, Lx/n0;->b(Lb0/k;Lf1/s;)Lx/o0;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-nez v3, :cond_3

    .line 129
    .line 130
    if-ne v4, v10, :cond_4

    .line 131
    .line 132
    :cond_3
    new-instance v4, Lx/p0;

    .line 133
    .line 134
    invoke-direct {v4, v2}, Lx/p0;-><init>(Lx/o0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    check-cast v4, Lx/p0;

    .line 141
    .line 142
    invoke-virtual {v1, v11}, Lf1/s;->p(Z)V

    .line 143
    .line 144
    .line 145
    return-object v4

    .line 146
    :pswitch_1
    move-object/from16 v1, p1

    .line 147
    .line 148
    check-cast v1, Lr1/p;

    .line 149
    .line 150
    move-object/from16 v1, p2

    .line 151
    .line 152
    check-cast v1, Lf1/s;

    .line 153
    .line 154
    move-object/from16 v4, p3

    .line 155
    .line 156
    check-cast v4, Ljava/lang/Number;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 159
    .line 160
    .line 161
    const v4, 0x2d4acc1b

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 165
    .line 166
    .line 167
    check-cast v8, Lf9/a;

    .line 168
    .line 169
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    if-ne v4, v10, :cond_5

    .line 174
    .line 175
    invoke-static {v8}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    check-cast v4, Lf1/v2;

    .line 183
    .line 184
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    if-ne v5, v10, :cond_6

    .line 189
    .line 190
    new-instance v5, Lv/c;

    .line 191
    .line 192
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    check-cast v8, Lx1/b;

    .line 197
    .line 198
    iget-wide v12, v8, Lx1/b;->a:J

    .line 199
    .line 200
    new-instance v8, Lx1/b;

    .line 201
    .line 202
    invoke-direct {v8, v12, v13}, Lx1/b;-><init>(J)V

    .line 203
    .line 204
    .line 205
    sget-object v12, Lw0/t0;->b:Lv/w0;

    .line 206
    .line 207
    sget-wide v13, Lw0/t0;->c:J

    .line 208
    .line 209
    new-instance v15, Lx1/b;

    .line 210
    .line 211
    invoke-direct {v15, v13, v14}, Lx1/b;-><init>(J)V

    .line 212
    .line 213
    .line 214
    invoke-direct {v5, v8, v12, v15, v6}, Lv/c;-><init>(Ljava/lang/Object;Lv/w0;Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    check-cast v5, Lv/c;

    .line 221
    .line 222
    invoke-virtual {v1, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    if-nez v6, :cond_7

    .line 231
    .line 232
    if-ne v8, v10, :cond_8

    .line 233
    .line 234
    :cond_7
    new-instance v8, Lb1/f;

    .line 235
    .line 236
    invoke-direct {v8, v4, v5, v3, v2}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    check-cast v8, Lf9/n;

    .line 243
    .line 244
    invoke-static {v1, v8, v7}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, v5, Lv/c;->c:Lv/k;

    .line 248
    .line 249
    check-cast v9, Lf9/k;

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    if-nez v3, :cond_9

    .line 260
    .line 261
    if-ne v4, v10, :cond_a

    .line 262
    .line 263
    :cond_9
    new-instance v4, Lw0/s0;

    .line 264
    .line 265
    invoke-direct {v4, v2, v11}, Lw0/s0;-><init>(Lf1/v2;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    check-cast v4, Lf9/a;

    .line 272
    .line 273
    invoke-interface {v9, v4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Lr1/p;

    .line 278
    .line 279
    invoke-virtual {v1, v11}, Lf1/s;->p(Z)V

    .line 280
    .line 281
    .line 282
    return-object v2

    .line 283
    :pswitch_2
    move-object/from16 v1, p1

    .line 284
    .line 285
    check-cast v1, Lj8/k0;

    .line 286
    .line 287
    move-object/from16 v15, p2

    .line 288
    .line 289
    check-cast v15, Lf1/s;

    .line 290
    .line 291
    move-object/from16 v3, p3

    .line 292
    .line 293
    check-cast v3, Ljava/lang/Number;

    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 296
    .line 297
    .line 298
    const-string v3, "item"

    .line 299
    .line 300
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    sget-object v3, Ld0/h;->e:Ld0/d;

    .line 304
    .line 305
    sget-object v12, Lr1/c;->k:Lr1/g;

    .line 306
    .line 307
    sget-object v13, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 308
    .line 309
    invoke-static {v4, v15}, Lg5/a;->B(ILf1/s;)F

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    invoke-static {v6, v15}, Lg5/a;->B(ILf1/s;)F

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-static {v13, v14, v4}, Landroidx/compose/foundation/layout/a;->i(Lr1/p;FF)Lr1/p;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v9, Lf1/b1;

    .line 322
    .line 323
    check-cast v8, Lf1/b1;

    .line 324
    .line 325
    const/16 v13, 0x36

    .line 326
    .line 327
    invoke-static {v3, v12, v15, v13}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    iget-wide v13, v15, Lf1/s;->T:J

    .line 332
    .line 333
    const/16 v33, 0x20

    .line 334
    .line 335
    ushr-long v16, v13, v33

    .line 336
    .line 337
    xor-long v13, v13, v16

    .line 338
    .line 339
    long-to-int v14, v13

    .line 340
    invoke-virtual {v15}, Lf1/s;->l()Lf1/q1;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    invoke-static {v15, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    sget-object v16, Lq2/j;->d0:Lq2/i;

    .line 349
    .line 350
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 354
    .line 355
    invoke-virtual {v15}, Lf1/s;->a0()V

    .line 356
    .line 357
    .line 358
    iget-boolean v5, v15, Lf1/s;->S:Z

    .line 359
    .line 360
    if-eqz v5, :cond_b

    .line 361
    .line 362
    invoke-virtual {v15, v6}, Lf1/s;->k(Lf9/a;)V

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_b
    invoke-virtual {v15}, Lf1/s;->k0()V

    .line 367
    .line 368
    .line 369
    :goto_2
    sget-object v5, Lq2/i;->e:Lq2/h;

    .line 370
    .line 371
    invoke-static {v15, v5, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    sget-object v3, Lq2/i;->d:Lq2/h;

    .line 375
    .line 376
    invoke-static {v15, v3, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    sget-object v13, Lq2/i;->f:Lq2/h;

    .line 380
    .line 381
    iget-boolean v2, v15, Lf1/s;->S:Z

    .line 382
    .line 383
    if-nez v2, :cond_c

    .line 384
    .line 385
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    invoke-static {v2, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-nez v2, :cond_d

    .line 398
    .line 399
    :cond_c
    invoke-static {v14, v15, v14, v13}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 400
    .line 401
    .line 402
    :cond_d
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 403
    .line 404
    invoke-static {v15, v2, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    sget-object v4, Ld0/h;->a:Ld0/b;

    .line 408
    .line 409
    const/16 v11, 0x30

    .line 410
    .line 411
    invoke-static {v4, v12, v15, v11}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 412
    .line 413
    .line 414
    move-result-object v14

    .line 415
    move-object/from16 p1, v12

    .line 416
    .line 417
    iget-wide v11, v15, Lf1/s;->T:J

    .line 418
    .line 419
    ushr-long v16, v11, v33

    .line 420
    .line 421
    xor-long v11, v11, v16

    .line 422
    .line 423
    long-to-int v12, v11

    .line 424
    invoke-virtual {v15}, Lf1/s;->l()Lf1/q1;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 429
    .line 430
    move-object/from16 v34, v7

    .line 431
    .line 432
    invoke-static {v15, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-virtual {v15}, Lf1/s;->a0()V

    .line 437
    .line 438
    .line 439
    move-object/from16 p3, v9

    .line 440
    .line 441
    iget-boolean v9, v15, Lf1/s;->S:Z

    .line 442
    .line 443
    if-eqz v9, :cond_e

    .line 444
    .line 445
    invoke-virtual {v15, v6}, Lf1/s;->k(Lf9/a;)V

    .line 446
    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_e
    invoke-virtual {v15}, Lf1/s;->k0()V

    .line 450
    .line 451
    .line 452
    :goto_3
    invoke-static {v15, v5, v14}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    invoke-static {v15, v3, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    iget-boolean v9, v15, Lf1/s;->S:Z

    .line 459
    .line 460
    if-nez v9, :cond_f

    .line 461
    .line 462
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    invoke-static {v9, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v9

    .line 474
    if-nez v9, :cond_10

    .line 475
    .line 476
    :cond_f
    invoke-static {v12, v15, v12, v13}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 477
    .line 478
    .line 479
    :cond_10
    invoke-static {v15, v2, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    sget-object v7, Lm7/k;->a:Lm7/k;

    .line 483
    .line 484
    invoke-interface/range {p3 .. p3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    check-cast v7, Ljava/lang/String;

    .line 489
    .line 490
    const v9, 0x4c5de2

    .line 491
    .line 492
    .line 493
    invoke-virtual {v15, v9}, Lf1/s;->W(I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v15, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    if-nez v7, :cond_11

    .line 505
    .line 506
    if-ne v9, v10, :cond_12

    .line 507
    .line 508
    :cond_11
    iget-object v7, v1, Lj8/k0;->c:Ljava/lang/String;

    .line 509
    .line 510
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    invoke-virtual {v15, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    :cond_12
    check-cast v9, Landroid/graphics/Bitmap;

    .line 518
    .line 519
    const/4 v7, 0x0

    .line 520
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 521
    .line 522
    .line 523
    const v7, 0x3fdc53ef    # 1.7213115f

    .line 524
    .line 525
    .line 526
    const/16 v11, 0x3c

    .line 527
    .line 528
    if-eqz v9, :cond_13

    .line 529
    .line 530
    const v12, -0x7e8b65c9

    .line 531
    .line 532
    .line 533
    invoke-virtual {v15, v12}, Lf1/s;->W(I)V

    .line 534
    .line 535
    .line 536
    new-instance v12, Ly1/f;

    .line 537
    .line 538
    invoke-direct {v12, v9}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 539
    .line 540
    .line 541
    int-to-float v9, v11

    .line 542
    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    invoke-static {v9, v7}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    const/16 v9, 0xc

    .line 551
    .line 552
    invoke-static {v9, v15}, Lg5/a;->B(ILf1/s;)F

    .line 553
    .line 554
    .line 555
    move-result v11

    .line 556
    invoke-static {v11}, Lk0/e;->a(F)Lk0/d;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    invoke-static {v7, v9}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 561
    .line 562
    .line 563
    move-result-object v14

    .line 564
    const/16 v16, 0x6030

    .line 565
    .line 566
    const/16 v17, 0xe8

    .line 567
    .line 568
    move-object v7, v13

    .line 569
    const/4 v13, 0x0

    .line 570
    move-object/from16 v9, p1

    .line 571
    .line 572
    invoke-static/range {v12 .. v17}, Lp9/q;->c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V

    .line 573
    .line 574
    .line 575
    const/4 v11, 0x0

    .line 576
    invoke-virtual {v15, v11}, Lf1/s;->p(Z)V

    .line 577
    .line 578
    .line 579
    :goto_4
    const/16 v11, 0xc

    .line 580
    .line 581
    goto :goto_5

    .line 582
    :cond_13
    move-object/from16 v9, p1

    .line 583
    .line 584
    move-object v12, v13

    .line 585
    const v13, -0x7e82b2c0

    .line 586
    .line 587
    .line 588
    invoke-virtual {v15, v13}, Lf1/s;->W(I)V

    .line 589
    .line 590
    .line 591
    const v13, 0x7f070057

    .line 592
    .line 593
    .line 594
    invoke-static {v13, v15}, Lp9/p1;->B(ILf1/s;)Ld2/b;

    .line 595
    .line 596
    .line 597
    move-result-object v13

    .line 598
    int-to-float v11, v11

    .line 599
    invoke-static {v0, v11}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 600
    .line 601
    .line 602
    move-result-object v11

    .line 603
    invoke-static {v11, v7}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    const/16 v11, 0xc

    .line 608
    .line 609
    invoke-static {v11, v15}, Lg5/a;->B(ILf1/s;)F

    .line 610
    .line 611
    .line 612
    move-result v14

    .line 613
    invoke-static {v14}, Lk0/e;->a(F)Lk0/d;

    .line 614
    .line 615
    .line 616
    move-result-object v11

    .line 617
    invoke-static {v7, v11}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 618
    .line 619
    .line 620
    move-result-object v14

    .line 621
    const/16 v19, 0x6030

    .line 622
    .line 623
    const/16 v20, 0x68

    .line 624
    .line 625
    move-object v7, v12

    .line 626
    move-object v12, v13

    .line 627
    const/4 v13, 0x0

    .line 628
    move-object/from16 v29, v15

    .line 629
    .line 630
    const/4 v15, 0x0

    .line 631
    sget-object v16, Lo2/j;->a:Lo2/i;

    .line 632
    .line 633
    const/16 v17, 0x0

    .line 634
    .line 635
    move-object/from16 v18, v29

    .line 636
    .line 637
    invoke-static/range {v12 .. v20}, Lp9/q;->b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V

    .line 638
    .line 639
    .line 640
    move-object/from16 v15, v18

    .line 641
    .line 642
    const/4 v11, 0x0

    .line 643
    invoke-virtual {v15, v11}, Lf1/s;->p(Z)V

    .line 644
    .line 645
    .line 646
    goto :goto_4

    .line 647
    :goto_5
    invoke-static {v11, v15}, Lg5/a;->B(ILf1/s;)F

    .line 648
    .line 649
    .line 650
    move-result v11

    .line 651
    invoke-static {v0, v11}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 652
    .line 653
    .line 654
    move-result-object v11

    .line 655
    invoke-static {v15, v11}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 656
    .line 657
    .line 658
    iget-object v12, v1, Lj8/k0;->a:Ljava/lang/String;

    .line 659
    .line 660
    const/16 v11, 0x12

    .line 661
    .line 662
    invoke-static {v11, v15}, Lg5/a;->B(ILf1/s;)F

    .line 663
    .line 664
    .line 665
    move-result v13

    .line 666
    move-object v14, v12

    .line 667
    const-wide v11, 0x100000000L

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    invoke-static {v13, v11, v12}, Lc7/a;->M(FJ)J

    .line 673
    .line 674
    .line 675
    move-result-wide v16

    .line 676
    const/16 v31, 0x0

    .line 677
    .line 678
    const v32, 0x1fff6

    .line 679
    .line 680
    .line 681
    const/4 v13, 0x0

    .line 682
    move-wide/from16 v18, v11

    .line 683
    .line 684
    move-object v12, v14

    .line 685
    move-object/from16 v29, v15

    .line 686
    .line 687
    const-wide/16 v14, 0x0

    .line 688
    .line 689
    move-wide/from16 v19, v18

    .line 690
    .line 691
    const/16 v18, 0x0

    .line 692
    .line 693
    move-wide/from16 v21, v19

    .line 694
    .line 695
    const-wide/16 v19, 0x0

    .line 696
    .line 697
    move-wide/from16 v22, v21

    .line 698
    .line 699
    const/16 v21, 0x0

    .line 700
    .line 701
    move-wide/from16 v24, v22

    .line 702
    .line 703
    const-wide/16 v22, 0x0

    .line 704
    .line 705
    move-wide/from16 v25, v24

    .line 706
    .line 707
    const/16 v24, 0x0

    .line 708
    .line 709
    move-wide/from16 v26, v25

    .line 710
    .line 711
    const/16 v25, 0x0

    .line 712
    .line 713
    move-wide/from16 v27, v26

    .line 714
    .line 715
    const/16 v26, 0x0

    .line 716
    .line 717
    move-wide/from16 v35, v27

    .line 718
    .line 719
    const/16 v27, 0x0

    .line 720
    .line 721
    const/16 v28, 0x0

    .line 722
    .line 723
    const/16 v30, 0x0

    .line 724
    .line 725
    move-object/from16 v37, v10

    .line 726
    .line 727
    move-wide/from16 v10, v35

    .line 728
    .line 729
    invoke-static/range {v12 .. v32}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 730
    .line 731
    .line 732
    move-object/from16 v15, v29

    .line 733
    .line 734
    const/4 v12, 0x1

    .line 735
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    .line 736
    .line 737
    .line 738
    const/16 v12, 0x30

    .line 739
    .line 740
    invoke-static {v4, v9, v15, v12}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    iget-wide v12, v15, Lf1/s;->T:J

    .line 745
    .line 746
    ushr-long v16, v12, v33

    .line 747
    .line 748
    xor-long v12, v12, v16

    .line 749
    .line 750
    long-to-int v9, v12

    .line 751
    invoke-virtual {v15}, Lf1/s;->l()Lf1/q1;

    .line 752
    .line 753
    .line 754
    move-result-object v12

    .line 755
    invoke-static {v15, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 756
    .line 757
    .line 758
    move-result-object v13

    .line 759
    invoke-virtual {v15}, Lf1/s;->a0()V

    .line 760
    .line 761
    .line 762
    iget-boolean v14, v15, Lf1/s;->S:Z

    .line 763
    .line 764
    if-eqz v14, :cond_14

    .line 765
    .line 766
    invoke-virtual {v15, v6}, Lf1/s;->k(Lf9/a;)V

    .line 767
    .line 768
    .line 769
    goto :goto_6

    .line 770
    :cond_14
    invoke-virtual {v15}, Lf1/s;->k0()V

    .line 771
    .line 772
    .line 773
    :goto_6
    invoke-static {v15, v5, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 774
    .line 775
    .line 776
    invoke-static {v15, v3, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    iget-boolean v3, v15, Lf1/s;->S:Z

    .line 780
    .line 781
    if-nez v3, :cond_15

    .line 782
    .line 783
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v3

    .line 795
    if-nez v3, :cond_16

    .line 796
    .line 797
    :cond_15
    invoke-static {v9, v15, v9, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 798
    .line 799
    .line 800
    :cond_16
    invoke-static {v15, v2, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    const/16 v2, 0x12

    .line 804
    .line 805
    invoke-static {v2, v15}, Lg5/a;->B(ILf1/s;)F

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    invoke-static {v3, v10, v11}, Lc7/a;->M(FJ)J

    .line 810
    .line 811
    .line 812
    move-result-wide v16

    .line 813
    const/16 v31, 0x0

    .line 814
    .line 815
    const v32, 0x1fff6

    .line 816
    .line 817
    .line 818
    const-string v12, "\u9009\u62e9"

    .line 819
    .line 820
    const/4 v13, 0x0

    .line 821
    move-object/from16 v29, v15

    .line 822
    .line 823
    const-wide/16 v14, 0x0

    .line 824
    .line 825
    const/16 v18, 0x0

    .line 826
    .line 827
    const-wide/16 v19, 0x0

    .line 828
    .line 829
    const/16 v21, 0x0

    .line 830
    .line 831
    const-wide/16 v22, 0x0

    .line 832
    .line 833
    const/16 v24, 0x0

    .line 834
    .line 835
    const/16 v25, 0x0

    .line 836
    .line 837
    const/16 v26, 0x0

    .line 838
    .line 839
    const/16 v27, 0x0

    .line 840
    .line 841
    const/16 v28, 0x0

    .line 842
    .line 843
    const/16 v30, 0x6

    .line 844
    .line 845
    invoke-static/range {v12 .. v32}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 846
    .line 847
    .line 848
    move-object/from16 v15, v29

    .line 849
    .line 850
    const/16 v2, 0x18

    .line 851
    .line 852
    invoke-static {v2, v15}, Lg5/a;->B(ILf1/s;)F

    .line 853
    .line 854
    .line 855
    move-result v2

    .line 856
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-static {v15, v2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 861
    .line 862
    .line 863
    const/16 v2, 0x12

    .line 864
    .line 865
    invoke-static {v2, v15}, Lg5/a;->B(ILf1/s;)F

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    invoke-static {v2, v10, v11}, Lc7/a;->M(FJ)J

    .line 870
    .line 871
    .line 872
    move-result-wide v16

    .line 873
    const/16 v2, 0x10

    .line 874
    .line 875
    invoke-static {v2, v15}, Lg5/a;->B(ILf1/s;)F

    .line 876
    .line 877
    .line 878
    move-result v25

    .line 879
    const/16 v26, 0x0

    .line 880
    .line 881
    const/16 v27, 0xb

    .line 882
    .line 883
    const/16 v23, 0x0

    .line 884
    .line 885
    const/16 v24, 0x0

    .line 886
    .line 887
    move-object/from16 v22, v0

    .line 888
    .line 889
    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    const v0, 0x6e3c21fe

    .line 894
    .line 895
    .line 896
    invoke-virtual {v15, v0}, Lf1/s;->W(I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    move-object/from16 v4, v37

    .line 904
    .line 905
    if-ne v0, v4, :cond_17

    .line 906
    .line 907
    invoke-static {v15}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    :cond_17
    move-object v3, v0

    .line 912
    check-cast v3, Lb0/k;

    .line 913
    .line 914
    const/4 v11, 0x0

    .line 915
    invoke-virtual {v15, v11}, Lf1/s;->p(Z)V

    .line 916
    .line 917
    .line 918
    const v0, -0x615d173a

    .line 919
    .line 920
    .line 921
    invoke-virtual {v15, v0}, Lf1/s;->W(I)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v15, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    if-nez v0, :cond_18

    .line 933
    .line 934
    if-ne v5, v4, :cond_19

    .line 935
    .line 936
    :cond_18
    new-instance v5, La8/n0;

    .line 937
    .line 938
    const/16 v0, 0x8

    .line 939
    .line 940
    invoke-direct {v5, v0, v1, v8}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    :cond_19
    move-object v6, v5

    .line 947
    check-cast v6, Lf9/a;

    .line 948
    .line 949
    const/4 v11, 0x0

    .line 950
    invoke-virtual {v15, v11}, Lf1/s;->p(Z)V

    .line 951
    .line 952
    .line 953
    const/16 v7, 0x1c

    .line 954
    .line 955
    const/4 v4, 0x0

    .line 956
    const/4 v5, 0x0

    .line 957
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 958
    .line 959
    .line 960
    move-result-object v13

    .line 961
    const/16 v31, 0x0

    .line 962
    .line 963
    const v32, 0x1fff4

    .line 964
    .line 965
    .line 966
    const-string v12, "\u5220\u9664"

    .line 967
    .line 968
    move-object/from16 v29, v15

    .line 969
    .line 970
    const-wide/16 v14, 0x0

    .line 971
    .line 972
    const/16 v18, 0x0

    .line 973
    .line 974
    const-wide/16 v19, 0x0

    .line 975
    .line 976
    const/16 v21, 0x0

    .line 977
    .line 978
    const-wide/16 v22, 0x0

    .line 979
    .line 980
    const/16 v24, 0x0

    .line 981
    .line 982
    const/16 v25, 0x0

    .line 983
    .line 984
    const/16 v26, 0x0

    .line 985
    .line 986
    const/16 v27, 0x0

    .line 987
    .line 988
    const/16 v28, 0x0

    .line 989
    .line 990
    const/16 v30, 0x6

    .line 991
    .line 992
    invoke-static/range {v12 .. v32}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 993
    .line 994
    .line 995
    move-object/from16 v15, v29

    .line 996
    .line 997
    const/4 v12, 0x1

    .line 998
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    .line 1002
    .line 1003
    .line 1004
    return-object v34

    .line 1005
    :pswitch_3
    move-object v4, v10

    .line 1006
    move-object/from16 v0, p1

    .line 1007
    .line 1008
    check-cast v0, Lr1/p;

    .line 1009
    .line 1010
    move-object/from16 v0, p2

    .line 1011
    .line 1012
    check-cast v0, Lf1/s;

    .line 1013
    .line 1014
    move-object/from16 v1, p3

    .line 1015
    .line 1016
    check-cast v1, Ljava/lang/Number;

    .line 1017
    .line 1018
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1019
    .line 1020
    .line 1021
    check-cast v8, Lb0/k;

    .line 1022
    .line 1023
    const v1, -0x620472b

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0, v1}, Lf1/s;->W(I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    if-ne v1, v4, :cond_1a

    .line 1034
    .line 1035
    invoke-static {v0}, Lf1/b;->l(Lf1/s;)Lac/w;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v1

    .line 1039
    invoke-virtual {v0, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1040
    .line 1041
    .line 1042
    :cond_1a
    check-cast v1, Lac/w;

    .line 1043
    .line 1044
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    if-ne v2, v4, :cond_1b

    .line 1049
    .line 1050
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v2

    .line 1054
    invoke-virtual {v0, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    :cond_1b
    check-cast v2, Lf1/b1;

    .line 1058
    .line 1059
    check-cast v9, Lf9/k;

    .line 1060
    .line 1061
    invoke-static {v9, v0}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v5

    .line 1065
    invoke-virtual {v0, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v6

    .line 1069
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v7

    .line 1073
    if-nez v6, :cond_1c

    .line 1074
    .line 1075
    if-ne v7, v4, :cond_1d

    .line 1076
    .line 1077
    :cond_1c
    new-instance v7, La8/v;

    .line 1078
    .line 1079
    const/16 v6, 0xe

    .line 1080
    .line 1081
    const/4 v11, 0x0

    .line 1082
    invoke-direct {v7, v6, v2, v8, v11}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v0, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1086
    .line 1087
    .line 1088
    :cond_1d
    check-cast v7, Lf9/k;

    .line 1089
    .line 1090
    invoke-static {v8, v7, v0}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v6

    .line 1097
    invoke-virtual {v0, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v7

    .line 1101
    or-int/2addr v6, v7

    .line 1102
    invoke-virtual {v0, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v7

    .line 1106
    or-int/2addr v6, v7

    .line 1107
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v7

    .line 1111
    if-nez v6, :cond_1e

    .line 1112
    .line 1113
    if-ne v7, v4, :cond_1f

    .line 1114
    .line 1115
    :cond_1e
    new-instance v7, Ll0/j1;

    .line 1116
    .line 1117
    invoke-direct {v7, v1, v2, v8, v5}, Ll0/j1;-><init>(Lac/w;Lf1/b1;Lb0/k;Lf1/b1;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v0, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1121
    .line 1122
    .line 1123
    :cond_1f
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 1124
    .line 1125
    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 1126
    .line 1127
    const/4 v2, 0x6

    .line 1128
    invoke-direct {v1, v8, v3, v7, v2}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 1129
    .line 1130
    .line 1131
    const/4 v11, 0x0

    .line 1132
    invoke-virtual {v0, v11}, Lf1/s;->p(Z)V

    .line 1133
    .line 1134
    .line 1135
    return-object v1

    .line 1136
    nop

    .line 1137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
