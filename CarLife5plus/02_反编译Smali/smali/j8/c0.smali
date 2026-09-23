.class public final Lj8/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr8/j;

.field public final synthetic c:Lf1/h1;

.field public final synthetic d:Lf1/h1;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lr8/j;Lf1/h1;Lf1/h1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj8/c0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/c0;->e:Ljava/util/List;

    iput-object p2, p0, Lj8/c0;->b:Lr8/j;

    iput-object p3, p0, Lj8/c0;->c:Lf1/h1;

    iput-object p4, p0, Lj8/c0;->d:Lf1/h1;

    return-void
.end method

.method public constructor <init>(Lr8/j;Lf1/h1;Lf1/h1;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj8/c0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/c0;->b:Lr8/j;

    iput-object p2, p0, Lj8/c0;->c:Lf1/h1;

    iput-object p3, p0, Lj8/c0;->d:Lf1/h1;

    iput-object p4, p0, Lj8/c0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj8/c0;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v3, v0, Lj8/c0;->e:Ljava/util/List;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    iget-object v6, v0, Lj8/c0;->b:Lr8/j;

    .line 11
    .line 12
    iget-object v7, v0, Lj8/c0;->c:Lf1/h1;

    .line 13
    .line 14
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 15
    .line 16
    iget-object v9, v0, Lj8/c0;->d:Lf1/h1;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Lf1/s;

    .line 24
    .line 25
    move-object/from16 v14, p2

    .line 26
    .line 27
    check-cast v14, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v14

    .line 33
    iget-object v15, v6, Lr8/j;->b:Ljava/lang/Object;

    .line 34
    .line 35
    and-int/lit8 v14, v14, 0x3

    .line 36
    .line 37
    if-ne v14, v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 40
    .line 41
    .line 42
    move-result v14

    .line 43
    if-nez v14, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 47
    .line 48
    .line 49
    move-object/from16 v25, v2

    .line 50
    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :cond_1
    :goto_0
    const v14, -0xd852154

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v14}, Lf1/s;->W(I)V

    .line 57
    .line 58
    .line 59
    move-object v14, v15

    .line 60
    check-cast v14, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    const/16 v22, 0x20

    .line 67
    .line 68
    move-object/from16 v16, v15

    .line 69
    .line 70
    const/high16 v11, -0x3ee00000    # -10.0f

    .line 71
    .line 72
    const v12, 0x408f5c29    # 4.48f

    .line 73
    .line 74
    .line 75
    const/high16 v4, 0x41200000    # 10.0f

    .line 76
    .line 77
    const/high16 v15, 0x40000000    # 2.0f

    .line 78
    .line 79
    const/high16 v13, 0x41400000    # 12.0f

    .line 80
    .line 81
    if-nez v14, :cond_6

    .line 82
    .line 83
    sget-object v14, Lg5/a;->a:Le2/f;

    .line 84
    .line 85
    if-eqz v14, :cond_2

    .line 86
    .line 87
    move-object/from16 v25, v6

    .line 88
    .line 89
    const v11, 0x3ee66666    # 0.45f

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_2
    new-instance v24, Le2/e;

    .line 95
    .line 96
    const/16 v32, 0x0

    .line 97
    .line 98
    const/16 v34, 0x60

    .line 99
    .line 100
    const-string v25, "Rounded.RemoveCircle"

    .line 101
    .line 102
    const/high16 v26, 0x41c00000    # 24.0f

    .line 103
    .line 104
    const/high16 v27, 0x41c00000    # 24.0f

    .line 105
    .line 106
    const/high16 v28, 0x41c00000    # 24.0f

    .line 107
    .line 108
    const/high16 v29, 0x41c00000    # 24.0f

    .line 109
    .line 110
    const-wide/16 v30, 0x0

    .line 111
    .line 112
    const/16 v33, 0x0

    .line 113
    .line 114
    invoke-direct/range {v24 .. v34}, Le2/e;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v14, v24

    .line 118
    .line 119
    sget v18, Le2/i0;->a:I

    .line 120
    .line 121
    new-instance v10, Ly1/n0;

    .line 122
    .line 123
    move-object/from16 v25, v6

    .line 124
    .line 125
    sget-wide v5, Ly1/q;->b:J

    .line 126
    .line 127
    invoke-direct {v10, v5, v6}, Ly1/n0;-><init>(J)V

    .line 128
    .line 129
    .line 130
    new-instance v5, Le2/g;

    .line 131
    .line 132
    invoke-direct {v5}, Le2/g;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v6, v5, Le2/g;->a:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v5, v13, v15}, Le2/g;->i(FF)V

    .line 138
    .line 139
    .line 140
    new-instance v27, Le2/l;

    .line 141
    .line 142
    const v28, 0x40cf5c29    # 6.48f

    .line 143
    .line 144
    .line 145
    const/high16 v29, 0x40000000    # 2.0f

    .line 146
    .line 147
    const/high16 v30, 0x40000000    # 2.0f

    .line 148
    .line 149
    const v31, 0x40cf5c29    # 6.48f

    .line 150
    .line 151
    .line 152
    const/high16 v32, 0x40000000    # 2.0f

    .line 153
    .line 154
    const/high16 v33, 0x41400000    # 12.0f

    .line 155
    .line 156
    invoke-direct/range {v27 .. v33}, Le2/l;-><init>(FFFFFF)V

    .line 157
    .line 158
    .line 159
    move-object/from16 v13, v27

    .line 160
    .line 161
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v12, v4, v4, v4}, Le2/g;->j(FFFF)V

    .line 165
    .line 166
    .line 167
    const v13, -0x3f70a3d7    # -4.48f

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v4, v13, v4, v11}, Le2/g;->j(FFFF)V

    .line 171
    .line 172
    .line 173
    new-instance v13, Le2/q;

    .line 174
    .line 175
    const/high16 v4, 0x41400000    # 12.0f

    .line 176
    .line 177
    const v11, 0x418c28f6    # 17.52f

    .line 178
    .line 179
    .line 180
    invoke-direct {v13, v11, v15, v4, v15}, Le2/q;-><init>(FFFF)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Le2/g;->c()V

    .line 187
    .line 188
    .line 189
    const/high16 v4, 0x41800000    # 16.0f

    .line 190
    .line 191
    const/high16 v11, 0x41500000    # 13.0f

    .line 192
    .line 193
    invoke-virtual {v5, v4, v11}, Le2/g;->i(FF)V

    .line 194
    .line 195
    .line 196
    const/high16 v4, 0x41000000    # 8.0f

    .line 197
    .line 198
    invoke-virtual {v5, v4, v11}, Le2/g;->g(FF)V

    .line 199
    .line 200
    .line 201
    const/high16 v32, -0x40800000    # -1.0f

    .line 202
    .line 203
    const/high16 v33, -0x40800000    # -1.0f

    .line 204
    .line 205
    const v28, -0x40f33333    # -0.55f

    .line 206
    .line 207
    .line 208
    const/16 v29, 0x0

    .line 209
    .line 210
    const/high16 v30, -0x40800000    # -1.0f

    .line 211
    .line 212
    const v31, -0x4119999a    # -0.45f

    .line 213
    .line 214
    .line 215
    move-object/from16 v27, v5

    .line 216
    .line 217
    invoke-virtual/range {v27 .. v33}, Le2/g;->d(FFFFFF)V

    .line 218
    .line 219
    .line 220
    const v11, 0x3ee66666    # 0.45f

    .line 221
    .line 222
    .line 223
    const/high16 v13, -0x40800000    # -1.0f

    .line 224
    .line 225
    const/high16 v15, 0x3f800000    # 1.0f

    .line 226
    .line 227
    invoke-virtual {v5, v11, v13, v15, v13}, Le2/g;->j(FFFF)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v4}, Le2/g;->f(F)V

    .line 231
    .line 232
    .line 233
    const/high16 v32, 0x3f800000    # 1.0f

    .line 234
    .line 235
    const/high16 v33, 0x3f800000    # 1.0f

    .line 236
    .line 237
    const v28, 0x3f0ccccd    # 0.55f

    .line 238
    .line 239
    .line 240
    const/high16 v30, 0x3f800000    # 1.0f

    .line 241
    .line 242
    const v31, 0x3ee66666    # 0.45f

    .line 243
    .line 244
    .line 245
    invoke-virtual/range {v27 .. v33}, Le2/g;->d(FFFFFF)V

    .line 246
    .line 247
    .line 248
    const v4, -0x4119999a    # -0.45f

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v4, v15, v13, v15}, Le2/g;->j(FFFF)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Le2/g;->c()V

    .line 255
    .line 256
    .line 257
    invoke-static {v14, v6, v10}, Le2/e;->a(Le2/e;Ljava/util/ArrayList;Ly1/n0;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v14}, Le2/e;->b()Le2/f;

    .line 261
    .line 262
    .line 263
    move-result-object v14

    .line 264
    sput-object v14, Lg5/a;->a:Le2/f;

    .line 265
    .line 266
    :goto_1
    sget-object v4, Lc1/y;->a:Lf1/w2;

    .line 267
    .line 268
    invoke-virtual {v1, v4}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    check-cast v4, Lc1/w;

    .line 273
    .line 274
    iget-wide v4, v4, Lc1/w;->A:J

    .line 275
    .line 276
    const/16 v6, 0x1e

    .line 277
    .line 278
    invoke-static {v6, v1}, Lg5/a;->B(ILf1/s;)F

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    invoke-static {v10}, Landroidx/compose/foundation/layout/c;->h(F)Lr1/p;

    .line 283
    .line 284
    .line 285
    move-result-object v27

    .line 286
    const v6, 0x6e3c21fe

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v6}, Lf1/s;->W(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    if-ne v6, v8, :cond_3

    .line 297
    .line 298
    invoke-static {v1}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    :cond_3
    move-object/from16 v28, v6

    .line 303
    .line 304
    check-cast v28, Lb0/k;

    .line 305
    .line 306
    const/4 v6, 0x0

    .line 307
    invoke-virtual {v1, v6}, Lf1/s;->p(Z)V

    .line 308
    .line 309
    .line 310
    const v10, -0x6815fd56

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v10}, Lf1/s;->W(I)V

    .line 314
    .line 315
    .line 316
    move-object/from16 v10, v25

    .line 317
    .line 318
    invoke-virtual {v1, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    if-nez v13, :cond_4

    .line 327
    .line 328
    if-ne v15, v8, :cond_5

    .line 329
    .line 330
    :cond_4
    new-instance v15, Lj8/d0;

    .line 331
    .line 332
    invoke-direct {v15, v10, v7, v9, v6}, Lj8/d0;-><init>(Lr8/j;Lf1/h1;Lf1/h1;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v15}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :cond_5
    move-object/from16 v31, v15

    .line 339
    .line 340
    check-cast v31, Lf9/a;

    .line 341
    .line 342
    invoke-virtual {v1, v6}, Lf1/s;->p(Z)V

    .line 343
    .line 344
    .line 345
    const/16 v32, 0x1c

    .line 346
    .line 347
    const/16 v29, 0x0

    .line 348
    .line 349
    const/16 v30, 0x0

    .line 350
    .line 351
    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 352
    .line 353
    .line 354
    move-result-object v13

    .line 355
    const/16 v20, 0x30

    .line 356
    .line 357
    const/16 v21, 0x0

    .line 358
    .line 359
    const/4 v15, 0x0

    .line 360
    move-object/from16 v19, v1

    .line 361
    .line 362
    move-wide/from16 v17, v4

    .line 363
    .line 364
    move-object/from16 v1, v16

    .line 365
    .line 366
    const/high16 v4, 0x40000000    # 2.0f

    .line 367
    .line 368
    move-object/from16 v16, v13

    .line 369
    .line 370
    invoke-static/range {v14 .. v21}, Lc1/k0;->b(Le2/f;Ljava/lang/String;Lr1/p;JLf1/s;II)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v5, v19

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_6
    move-object v5, v1

    .line 377
    move-object v10, v6

    .line 378
    move-object/from16 v1, v16

    .line 379
    .line 380
    const/high16 v4, 0x40000000    # 2.0f

    .line 381
    .line 382
    const/4 v6, 0x0

    .line 383
    const v11, 0x3ee66666    # 0.45f

    .line 384
    .line 385
    .line 386
    :goto_2
    invoke-virtual {v5, v6}, Lf1/s;->p(Z)V

    .line 387
    .line 388
    .line 389
    sget-object v6, Ld0/h;->d:Ld0/d;

    .line 390
    .line 391
    const/16 v13, 0x10

    .line 392
    .line 393
    invoke-static {v13, v5}, Lg5/a;->B(ILf1/s;)F

    .line 394
    .line 395
    .line 396
    move-result v13

    .line 397
    const/4 v14, 0x0

    .line 398
    const/4 v15, 0x2

    .line 399
    invoke-static {v13, v14, v15}, Landroidx/compose/foundation/layout/c;->l(FFI)Lr1/p;

    .line 400
    .line 401
    .line 402
    move-result-object v13

    .line 403
    const/4 v11, 0x4

    .line 404
    invoke-static {v11, v5}, Lg5/a;->B(ILf1/s;)F

    .line 405
    .line 406
    .line 407
    move-result v12

    .line 408
    invoke-static {v13, v12, v14, v15}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 409
    .line 410
    .line 411
    move-result-object v12

    .line 412
    sget-object v13, Lr1/c;->j:Lr1/g;

    .line 413
    .line 414
    const/4 v15, 0x6

    .line 415
    invoke-static {v6, v13, v5, v15}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    iget-wide v14, v5, Lf1/s;->T:J

    .line 420
    .line 421
    ushr-long v19, v14, v22

    .line 422
    .line 423
    xor-long v14, v14, v19

    .line 424
    .line 425
    long-to-int v15, v14

    .line 426
    invoke-virtual {v5}, Lf1/s;->l()Lf1/q1;

    .line 427
    .line 428
    .line 429
    move-result-object v14

    .line 430
    invoke-static {v5, v12}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    sget-object v19, Lq2/j;->d0:Lq2/i;

    .line 435
    .line 436
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 440
    .line 441
    invoke-virtual {v5}, Lf1/s;->a0()V

    .line 442
    .line 443
    .line 444
    iget-boolean v4, v5, Lf1/s;->S:Z

    .line 445
    .line 446
    if-eqz v4, :cond_7

    .line 447
    .line 448
    invoke-virtual {v5, v11}, Lf1/s;->k(Lf9/a;)V

    .line 449
    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_7
    invoke-virtual {v5}, Lf1/s;->k0()V

    .line 453
    .line 454
    .line 455
    :goto_3
    sget-object v4, Lq2/i;->e:Lq2/h;

    .line 456
    .line 457
    invoke-static {v5, v4, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 461
    .line 462
    invoke-static {v5, v6, v14}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    sget-object v14, Lq2/i;->f:Lq2/h;

    .line 466
    .line 467
    iget-boolean v0, v5, Lf1/s;->S:Z

    .line 468
    .line 469
    if-nez v0, :cond_8

    .line 470
    .line 471
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    move-object/from16 v20, v1

    .line 476
    .line 477
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-nez v0, :cond_9

    .line 486
    .line 487
    goto :goto_4

    .line 488
    :cond_8
    move-object/from16 v20, v1

    .line 489
    .line 490
    :goto_4
    invoke-static {v15, v5, v15, v14}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 491
    .line 492
    .line 493
    :cond_9
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 494
    .line 495
    invoke-static {v5, v0, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v7}, Lf1/h1;->f()I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    move-object/from16 v25, v2

    .line 507
    .line 508
    const/4 v2, 0x0

    .line 509
    const/4 v12, 0x0

    .line 510
    const/4 v15, 0x2

    .line 511
    invoke-static {v1, v12, v5, v2, v15}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 512
    .line 513
    .line 514
    const/4 v1, 0x1

    .line 515
    invoke-virtual {v5, v1}, Lf1/s;->p(Z)V

    .line 516
    .line 517
    .line 518
    const v1, -0xd84b4b0

    .line 519
    .line 520
    .line 521
    invoke-virtual {v5, v1}, Lf1/s;->W(I)V

    .line 522
    .line 523
    .line 524
    move-object/from16 v15, v20

    .line 525
    .line 526
    check-cast v15, Ljava/lang/Number;

    .line 527
    .line 528
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-nez v1, :cond_e

    .line 533
    .line 534
    sget-object v1, Lc7/a;->a:Le2/f;

    .line 535
    .line 536
    if-eqz v1, :cond_a

    .line 537
    .line 538
    move-object/from16 v26, v0

    .line 539
    .line 540
    move-object/from16 v35, v3

    .line 541
    .line 542
    move-object/from16 v23, v6

    .line 543
    .line 544
    move-object/from16 v20, v14

    .line 545
    .line 546
    :goto_5
    move-object v14, v1

    .line 547
    goto/16 :goto_6

    .line 548
    .line 549
    :cond_a
    new-instance v35, Le2/e;

    .line 550
    .line 551
    const/16 v43, 0x0

    .line 552
    .line 553
    const/16 v45, 0x60

    .line 554
    .line 555
    const-string v36, "Rounded.AddCircle"

    .line 556
    .line 557
    const/high16 v37, 0x41c00000    # 24.0f

    .line 558
    .line 559
    const/high16 v38, 0x41c00000    # 24.0f

    .line 560
    .line 561
    const/high16 v39, 0x41c00000    # 24.0f

    .line 562
    .line 563
    const/high16 v40, 0x41c00000    # 24.0f

    .line 564
    .line 565
    const-wide/16 v41, 0x0

    .line 566
    .line 567
    const/16 v44, 0x0

    .line 568
    .line 569
    invoke-direct/range {v35 .. v45}, Le2/e;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 570
    .line 571
    .line 572
    move-object/from16 v1, v35

    .line 573
    .line 574
    sget v2, Le2/i0;->a:I

    .line 575
    .line 576
    new-instance v2, Ly1/n0;

    .line 577
    .line 578
    move-object v12, v14

    .line 579
    sget-wide v14, Ly1/q;->b:J

    .line 580
    .line 581
    invoke-direct {v2, v14, v15}, Ly1/n0;-><init>(J)V

    .line 582
    .line 583
    .line 584
    new-instance v14, Le2/g;

    .line 585
    .line 586
    invoke-direct {v14}, Le2/g;-><init>()V

    .line 587
    .line 588
    .line 589
    iget-object v15, v14, Le2/g;->a:Ljava/util/ArrayList;

    .line 590
    .line 591
    move-object/from16 v35, v3

    .line 592
    .line 593
    move-object/from16 v20, v12

    .line 594
    .line 595
    const/high16 v3, 0x40000000    # 2.0f

    .line 596
    .line 597
    const/high16 v12, 0x41400000    # 12.0f

    .line 598
    .line 599
    invoke-virtual {v14, v12, v3}, Le2/g;->i(FF)V

    .line 600
    .line 601
    .line 602
    new-instance v27, Le2/l;

    .line 603
    .line 604
    const v28, 0x40cf5c29    # 6.48f

    .line 605
    .line 606
    .line 607
    const/high16 v29, 0x40000000    # 2.0f

    .line 608
    .line 609
    const/high16 v30, 0x40000000    # 2.0f

    .line 610
    .line 611
    const v31, 0x40cf5c29    # 6.48f

    .line 612
    .line 613
    .line 614
    const/high16 v32, 0x40000000    # 2.0f

    .line 615
    .line 616
    const/high16 v33, 0x41400000    # 12.0f

    .line 617
    .line 618
    invoke-direct/range {v27 .. v33}, Le2/l;-><init>(FFFFFF)V

    .line 619
    .line 620
    .line 621
    move-object/from16 v3, v27

    .line 622
    .line 623
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    const v3, 0x408f5c29    # 4.48f

    .line 627
    .line 628
    .line 629
    const/high16 v12, 0x41200000    # 10.0f

    .line 630
    .line 631
    invoke-virtual {v14, v3, v12, v12, v12}, Le2/g;->j(FFFF)V

    .line 632
    .line 633
    .line 634
    move-object/from16 v26, v0

    .line 635
    .line 636
    const v0, -0x3f70a3d7    # -4.48f

    .line 637
    .line 638
    .line 639
    const/high16 v3, -0x3ee00000    # -10.0f

    .line 640
    .line 641
    invoke-virtual {v14, v12, v0, v12, v3}, Le2/g;->j(FFFF)V

    .line 642
    .line 643
    .line 644
    new-instance v0, Le2/q;

    .line 645
    .line 646
    move-object/from16 v23, v6

    .line 647
    .line 648
    const v3, 0x418c28f6    # 17.52f

    .line 649
    .line 650
    .line 651
    const/high16 v6, 0x41400000    # 12.0f

    .line 652
    .line 653
    const/high16 v12, 0x40000000    # 2.0f

    .line 654
    .line 655
    invoke-direct {v0, v3, v12, v6, v12}, Le2/q;-><init>(FFFF)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    invoke-virtual {v14}, Le2/g;->c()V

    .line 662
    .line 663
    .line 664
    const/high16 v0, 0x41800000    # 16.0f

    .line 665
    .line 666
    const/high16 v3, 0x41500000    # 13.0f

    .line 667
    .line 668
    invoke-virtual {v14, v0, v3}, Le2/g;->i(FF)V

    .line 669
    .line 670
    .line 671
    const/high16 v0, -0x3fc00000    # -3.0f

    .line 672
    .line 673
    invoke-virtual {v14, v0}, Le2/g;->f(F)V

    .line 674
    .line 675
    .line 676
    const/high16 v3, 0x40400000    # 3.0f

    .line 677
    .line 678
    invoke-virtual {v14, v3}, Le2/g;->l(F)V

    .line 679
    .line 680
    .line 681
    const/high16 v32, -0x40800000    # -1.0f

    .line 682
    .line 683
    const/high16 v33, 0x3f800000    # 1.0f

    .line 684
    .line 685
    const/16 v28, 0x0

    .line 686
    .line 687
    const v29, 0x3f0ccccd    # 0.55f

    .line 688
    .line 689
    .line 690
    const v30, -0x4119999a    # -0.45f

    .line 691
    .line 692
    .line 693
    const/high16 v31, 0x3f800000    # 1.0f

    .line 694
    .line 695
    move-object/from16 v27, v14

    .line 696
    .line 697
    invoke-virtual/range {v27 .. v33}, Le2/g;->d(FFFFFF)V

    .line 698
    .line 699
    .line 700
    move-object/from16 v6, v27

    .line 701
    .line 702
    const v12, -0x4119999a    # -0.45f

    .line 703
    .line 704
    .line 705
    const/high16 v14, -0x40800000    # -1.0f

    .line 706
    .line 707
    invoke-virtual {v6, v14, v12, v14, v14}, Le2/g;->j(FFFF)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v6, v0}, Le2/g;->l(F)V

    .line 711
    .line 712
    .line 713
    const/high16 v0, 0x41500000    # 13.0f

    .line 714
    .line 715
    const/high16 v12, 0x41000000    # 8.0f

    .line 716
    .line 717
    invoke-virtual {v6, v12, v0}, Le2/g;->g(FF)V

    .line 718
    .line 719
    .line 720
    const/high16 v33, -0x40800000    # -1.0f

    .line 721
    .line 722
    const v28, -0x40f33333    # -0.55f

    .line 723
    .line 724
    .line 725
    const/16 v29, 0x0

    .line 726
    .line 727
    const/high16 v30, -0x40800000    # -1.0f

    .line 728
    .line 729
    const v31, -0x4119999a    # -0.45f

    .line 730
    .line 731
    .line 732
    invoke-virtual/range {v27 .. v33}, Le2/g;->d(FFFFFF)V

    .line 733
    .line 734
    .line 735
    const v0, 0x3ee66666    # 0.45f

    .line 736
    .line 737
    .line 738
    const/high16 v12, 0x3f800000    # 1.0f

    .line 739
    .line 740
    invoke-virtual {v6, v0, v14, v12, v14}, Le2/g;->j(FFFF)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v6, v3}, Le2/g;->f(F)V

    .line 744
    .line 745
    .line 746
    const/high16 v14, 0x41300000    # 11.0f

    .line 747
    .line 748
    const/high16 v3, 0x41000000    # 8.0f

    .line 749
    .line 750
    invoke-virtual {v6, v14, v3}, Le2/g;->g(FF)V

    .line 751
    .line 752
    .line 753
    const/high16 v32, 0x3f800000    # 1.0f

    .line 754
    .line 755
    const/16 v28, 0x0

    .line 756
    .line 757
    const v29, -0x40f33333    # -0.55f

    .line 758
    .line 759
    .line 760
    const v30, 0x3ee66666    # 0.45f

    .line 761
    .line 762
    .line 763
    const/high16 v31, -0x40800000    # -1.0f

    .line 764
    .line 765
    invoke-virtual/range {v27 .. v33}, Le2/g;->d(FFFFFF)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v6, v12, v0, v12, v12}, Le2/g;->j(FFFF)V

    .line 769
    .line 770
    .line 771
    const/high16 v0, 0x40400000    # 3.0f

    .line 772
    .line 773
    invoke-virtual {v6, v0}, Le2/g;->l(F)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v6, v0}, Le2/g;->f(F)V

    .line 777
    .line 778
    .line 779
    const/high16 v33, 0x3f800000    # 1.0f

    .line 780
    .line 781
    const v28, 0x3f0ccccd    # 0.55f

    .line 782
    .line 783
    .line 784
    const/16 v29, 0x0

    .line 785
    .line 786
    const/high16 v30, 0x3f800000    # 1.0f

    .line 787
    .line 788
    const v31, 0x3ee66666    # 0.45f

    .line 789
    .line 790
    .line 791
    invoke-virtual/range {v27 .. v33}, Le2/g;->d(FFFFFF)V

    .line 792
    .line 793
    .line 794
    const v0, -0x4119999a    # -0.45f

    .line 795
    .line 796
    .line 797
    const/high16 v14, -0x40800000    # -1.0f

    .line 798
    .line 799
    invoke-virtual {v6, v0, v12, v14, v12}, Le2/g;->j(FFFF)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v6}, Le2/g;->c()V

    .line 803
    .line 804
    .line 805
    invoke-static {v1, v15, v2}, Le2/e;->a(Le2/e;Ljava/util/ArrayList;Ly1/n0;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1}, Le2/e;->b()Le2/f;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    sput-object v1, Lc7/a;->a:Le2/f;

    .line 813
    .line 814
    goto/16 :goto_5

    .line 815
    .line 816
    :goto_6
    sget-object v0, Lc1/y;->a:Lf1/w2;

    .line 817
    .line 818
    invoke-virtual {v5, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    check-cast v0, Lc1/w;

    .line 823
    .line 824
    iget-wide v0, v0, Lc1/w;->A:J

    .line 825
    .line 826
    const/16 v6, 0x1e

    .line 827
    .line 828
    invoke-static {v6, v5}, Lg5/a;->B(ILf1/s;)F

    .line 829
    .line 830
    .line 831
    move-result v2

    .line 832
    invoke-static {v2}, Landroidx/compose/foundation/layout/c;->h(F)Lr1/p;

    .line 833
    .line 834
    .line 835
    move-result-object v27

    .line 836
    const v6, 0x6e3c21fe

    .line 837
    .line 838
    .line 839
    invoke-virtual {v5, v6}, Lf1/s;->W(I)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    if-ne v2, v8, :cond_b

    .line 847
    .line 848
    invoke-static {v5}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    :cond_b
    move-object/from16 v28, v2

    .line 853
    .line 854
    check-cast v28, Lb0/k;

    .line 855
    .line 856
    const/4 v2, 0x0

    .line 857
    invoke-virtual {v5, v2}, Lf1/s;->p(Z)V

    .line 858
    .line 859
    .line 860
    const v2, -0x6815fd56

    .line 861
    .line 862
    .line 863
    invoke-virtual {v5, v2}, Lf1/s;->W(I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v5, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result v2

    .line 870
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    if-nez v2, :cond_c

    .line 875
    .line 876
    if-ne v3, v8, :cond_d

    .line 877
    .line 878
    :cond_c
    new-instance v3, Lj8/d0;

    .line 879
    .line 880
    const/4 v2, 0x1

    .line 881
    invoke-direct {v3, v10, v7, v9, v2}, Lj8/d0;-><init>(Lr8/j;Lf1/h1;Lf1/h1;I)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v5, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    :cond_d
    move-object/from16 v31, v3

    .line 888
    .line 889
    check-cast v31, Lf9/a;

    .line 890
    .line 891
    const/4 v2, 0x0

    .line 892
    invoke-virtual {v5, v2}, Lf1/s;->p(Z)V

    .line 893
    .line 894
    .line 895
    const/16 v32, 0x1c

    .line 896
    .line 897
    const/16 v29, 0x0

    .line 898
    .line 899
    const/16 v30, 0x0

    .line 900
    .line 901
    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 902
    .line 903
    .line 904
    move-result-object v16

    .line 905
    move-object/from16 v12, v20

    .line 906
    .line 907
    const/16 v20, 0x30

    .line 908
    .line 909
    const/16 v21, 0x0

    .line 910
    .line 911
    const/4 v15, 0x0

    .line 912
    move-wide/from16 v17, v0

    .line 913
    .line 914
    move-object/from16 v19, v5

    .line 915
    .line 916
    const/4 v0, 0x0

    .line 917
    invoke-static/range {v14 .. v21}, Lc1/k0;->b(Le2/f;Ljava/lang/String;Lr1/p;JLf1/s;II)V

    .line 918
    .line 919
    .line 920
    goto :goto_7

    .line 921
    :cond_e
    move-object/from16 v26, v0

    .line 922
    .line 923
    move-object/from16 v35, v3

    .line 924
    .line 925
    move-object/from16 v23, v6

    .line 926
    .line 927
    move-object v12, v14

    .line 928
    const/4 v0, 0x0

    .line 929
    const/4 v2, 0x0

    .line 930
    :goto_7
    invoke-virtual {v5, v2}, Lf1/s;->p(Z)V

    .line 931
    .line 932
    .line 933
    const/4 v1, 0x4

    .line 934
    invoke-static {v1, v5}, Lg5/a;->B(ILf1/s;)F

    .line 935
    .line 936
    .line 937
    move-result v1

    .line 938
    sget-object v3, Lr1/m;->a:Lr1/m;

    .line 939
    .line 940
    const/4 v15, 0x2

    .line 941
    invoke-static {v3, v1, v0, v15}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    sget-object v1, Ld0/h;->a:Ld0/b;

    .line 946
    .line 947
    invoke-static {v1, v13, v5, v2}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    iget-wide v2, v5, Lf1/s;->T:J

    .line 952
    .line 953
    ushr-long v6, v2, v22

    .line 954
    .line 955
    xor-long/2addr v2, v6

    .line 956
    long-to-int v3, v2

    .line 957
    invoke-virtual {v5}, Lf1/s;->l()Lf1/q1;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    invoke-static {v5, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-virtual {v5}, Lf1/s;->a0()V

    .line 966
    .line 967
    .line 968
    iget-boolean v6, v5, Lf1/s;->S:Z

    .line 969
    .line 970
    if-eqz v6, :cond_f

    .line 971
    .line 972
    invoke-virtual {v5, v11}, Lf1/s;->k(Lf9/a;)V

    .line 973
    .line 974
    .line 975
    goto :goto_8

    .line 976
    :cond_f
    invoke-virtual {v5}, Lf1/s;->k0()V

    .line 977
    .line 978
    .line 979
    :goto_8
    invoke-static {v5, v4, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 980
    .line 981
    .line 982
    move-object/from16 v1, v23

    .line 983
    .line 984
    invoke-static {v5, v1, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 985
    .line 986
    .line 987
    iget-boolean v1, v5, Lf1/s;->S:Z

    .line 988
    .line 989
    if-nez v1, :cond_11

    .line 990
    .line 991
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    if-nez v1, :cond_10

    .line 1004
    .line 1005
    goto :goto_a

    .line 1006
    :cond_10
    :goto_9
    move-object/from16 v1, v26

    .line 1007
    .line 1008
    goto :goto_b

    .line 1009
    :cond_11
    :goto_a
    invoke-static {v3, v5, v3, v12}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1010
    .line 1011
    .line 1012
    goto :goto_9

    .line 1013
    :goto_b
    invoke-static {v5, v1, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-static/range {v35 .. v35}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    check-cast v0, Ljava/lang/String;

    .line 1021
    .line 1022
    const/4 v2, 0x0

    .line 1023
    const/4 v12, 0x0

    .line 1024
    const/4 v15, 0x2

    .line 1025
    invoke-static {v0, v12, v5, v2, v15}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 1026
    .line 1027
    .line 1028
    const/4 v1, 0x1

    .line 1029
    invoke-virtual {v5, v1}, Lf1/s;->p(Z)V

    .line 1030
    .line 1031
    .line 1032
    :goto_c
    return-object v25

    .line 1033
    :pswitch_0
    move-object/from16 v25, v2

    .line 1034
    .line 1035
    move-object/from16 v35, v3

    .line 1036
    .line 1037
    move-object v10, v6

    .line 1038
    const/4 v15, 0x2

    .line 1039
    const/16 v22, 0x20

    .line 1040
    .line 1041
    move-object/from16 v0, p1

    .line 1042
    .line 1043
    check-cast v0, Lf1/s;

    .line 1044
    .line 1045
    move-object/from16 v1, p2

    .line 1046
    .line 1047
    check-cast v1, Ljava/lang/Number;

    .line 1048
    .line 1049
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1050
    .line 1051
    .line 1052
    move-result v1

    .line 1053
    and-int/lit8 v1, v1, 0x3

    .line 1054
    .line 1055
    if-ne v1, v15, :cond_13

    .line 1056
    .line 1057
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v1

    .line 1061
    if-nez v1, :cond_12

    .line 1062
    .line 1063
    goto :goto_d

    .line 1064
    :cond_12
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 1065
    .line 1066
    .line 1067
    goto/16 :goto_f

    .line 1068
    .line 1069
    :cond_13
    :goto_d
    invoke-static/range {v35 .. v35}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    check-cast v1, Ljava/lang/String;

    .line 1074
    .line 1075
    const/4 v2, 0x0

    .line 1076
    const/4 v12, 0x0

    .line 1077
    invoke-static {v1, v12, v0, v2, v15}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 1078
    .line 1079
    .line 1080
    const/4 v15, 0x6

    .line 1081
    int-to-float v1, v15

    .line 1082
    const/16 v20, 0x0

    .line 1083
    .line 1084
    const/16 v21, 0xd

    .line 1085
    .line 1086
    sget-object v16, Lr1/m;->a:Lr1/m;

    .line 1087
    .line 1088
    const/16 v17, 0x0

    .line 1089
    .line 1090
    const/16 v19, 0x0

    .line 1091
    .line 1092
    move/from16 v18, v1

    .line 1093
    .line 1094
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v1

    .line 1098
    move-object/from16 v3, v16

    .line 1099
    .line 1100
    sget-object v4, Ld0/h;->a:Ld0/b;

    .line 1101
    .line 1102
    sget-object v5, Lr1/c;->j:Lr1/g;

    .line 1103
    .line 1104
    invoke-static {v4, v5, v0, v2}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    iget-wide v5, v0, Lf1/s;->T:J

    .line 1109
    .line 1110
    ushr-long v11, v5, v22

    .line 1111
    .line 1112
    xor-long/2addr v5, v11

    .line 1113
    long-to-int v2, v5

    .line 1114
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v5

    .line 1118
    invoke-static {v0, v1}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 1123
    .line 1124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1125
    .line 1126
    .line 1127
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 1128
    .line 1129
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 1130
    .line 1131
    .line 1132
    iget-boolean v11, v0, Lf1/s;->S:Z

    .line 1133
    .line 1134
    if-eqz v11, :cond_14

    .line 1135
    .line 1136
    invoke-virtual {v0, v6}, Lf1/s;->k(Lf9/a;)V

    .line 1137
    .line 1138
    .line 1139
    goto :goto_e

    .line 1140
    :cond_14
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 1141
    .line 1142
    .line 1143
    :goto_e
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 1144
    .line 1145
    invoke-static {v0, v6, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1146
    .line 1147
    .line 1148
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 1149
    .line 1150
    invoke-static {v0, v4, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1151
    .line 1152
    .line 1153
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 1154
    .line 1155
    iget-boolean v5, v0, Lf1/s;->S:Z

    .line 1156
    .line 1157
    if-nez v5, :cond_15

    .line 1158
    .line 1159
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v5

    .line 1163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v6

    .line 1167
    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v5

    .line 1171
    if-nez v5, :cond_16

    .line 1172
    .line 1173
    :cond_15
    invoke-static {v2, v0, v2, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1174
    .line 1175
    .line 1176
    :cond_16
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 1177
    .line 1178
    invoke-static {v0, v2, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v7}, Lf1/h1;->f()I

    .line 1182
    .line 1183
    .line 1184
    move-result v1

    .line 1185
    int-to-float v6, v1

    .line 1186
    iget-object v1, v10, Lr8/j;->b:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v1, Ljava/lang/Number;

    .line 1189
    .line 1190
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1191
    .line 1192
    .line 1193
    move-result v11

    .line 1194
    iget-object v1, v10, Lr8/j;->a:Ljava/lang/Object;

    .line 1195
    .line 1196
    move-object v10, v1

    .line 1197
    check-cast v10, Ll9/a;

    .line 1198
    .line 1199
    const/16 v1, 0x1b

    .line 1200
    .line 1201
    invoke-static {v1, v0}, Lg5/a;->B(ILf1/s;)F

    .line 1202
    .line 1203
    .line 1204
    move-result v1

    .line 1205
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    const v2, 0x4c5de2

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v0, v2}, Lf1/s;->W(I)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v2

    .line 1219
    if-ne v2, v8, :cond_17

    .line 1220
    .line 1221
    new-instance v2, Lc8/c0;

    .line 1222
    .line 1223
    const/4 v15, 0x6

    .line 1224
    invoke-direct {v2, v7, v15}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    :cond_17
    check-cast v2, Lf9/k;

    .line 1231
    .line 1232
    const v3, -0x615d173a

    .line 1233
    .line 1234
    .line 1235
    const/4 v4, 0x0

    .line 1236
    invoke-static {v0, v4, v3}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v3

    .line 1240
    if-ne v3, v8, :cond_18

    .line 1241
    .line 1242
    new-instance v3, La8/n0;

    .line 1243
    .line 1244
    const/4 v5, 0x5

    .line 1245
    invoke-direct {v3, v5, v7, v9}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1249
    .line 1250
    .line 1251
    :cond_18
    move-object v12, v3

    .line 1252
    check-cast v12, Lf9/a;

    .line 1253
    .line 1254
    invoke-virtual {v0, v4}, Lf1/s;->p(Z)V

    .line 1255
    .line 1256
    .line 1257
    const v16, 0x180030

    .line 1258
    .line 1259
    .line 1260
    const/16 v17, 0x188

    .line 1261
    .line 1262
    const/4 v9, 0x0

    .line 1263
    const/4 v13, 0x0

    .line 1264
    const/4 v14, 0x0

    .line 1265
    move-object v15, v0

    .line 1266
    move-object v8, v1

    .line 1267
    move-object v7, v2

    .line 1268
    invoke-static/range {v6 .. v17}, Lc1/g2;->b(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;Lf1/s;II)V

    .line 1269
    .line 1270
    .line 1271
    const/4 v1, 0x1

    .line 1272
    invoke-virtual {v15, v1}, Lf1/s;->p(Z)V

    .line 1273
    .line 1274
    .line 1275
    :goto_f
    return-object v25

    .line 1276
    nop

    .line 1277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
