.class public final Lf0/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld0/h0;

.field public final synthetic c:Lf9/a;

.field public final synthetic d:Ld0/g;

.field public final synthetic e:Lac/w;

.field public final synthetic f:Lh0/a0;

.field public final synthetic g:Lz/m1;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf0/u;Ld0/h0;Lm9/r;Ld0/g;Lac/w;Ly1/v;Lh0/a0;Lr1/f;)V
    .locals 0

    const/4 p6, 0x0

    iput p6, p0, Lf0/k;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/k;->g:Lz/m1;

    iput-object p2, p0, Lf0/k;->b:Ld0/h0;

    iput-object p3, p0, Lf0/k;->c:Lf9/a;

    iput-object p4, p0, Lf0/k;->d:Ld0/g;

    iput-object p5, p0, Lf0/k;->e:Lac/w;

    iput-object p7, p0, Lf0/k;->f:Lh0/a0;

    iput-object p8, p0, Lf0/k;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg0/u;Ld0/h0;Lm9/r;Lg0/c;Ld0/g;Ld0/e;Lac/w;Ly1/v;Lh0/a0;)V
    .locals 0

    const/4 p6, 0x1

    iput p6, p0, Lf0/k;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/k;->g:Lz/m1;

    iput-object p2, p0, Lf0/k;->b:Ld0/h0;

    iput-object p3, p0, Lf0/k;->c:Lf9/a;

    iput-object p4, p0, Lf0/k;->h:Ljava/lang/Object;

    iput-object p5, p0, Lf0/k;->d:Ld0/g;

    iput-object p7, p0, Lf0/k;->e:Lac/w;

    iput-object p9, p0, Lf0/k;->f:Lh0/a0;

    return-void
.end method

.method private final b(Lh0/x;J)Lo2/n0;
    .locals 57

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    invoke-static {v4, v5, v4, v5}, Ln3/l;->a(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v15, v11, Lh0/x;->b:Lo2/i1;

    .line 14
    .line 15
    iget-object v6, v1, Lf0/k;->g:Lz/m1;

    .line 16
    .line 17
    check-cast v6, Lf0/u;

    .line 18
    .line 19
    iget-object v7, v6, Lf0/u;->s:Lf1/b1;

    .line 20
    .line 21
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-boolean v7, v6, Lf0/u;->b:Z

    .line 25
    .line 26
    const/16 v16, 0x1

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    invoke-interface {v15}, Lo2/r;->Q()Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v25, 0x0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/16 v25, 0x1

    .line 41
    .line 42
    :goto_1
    sget-object v7, Lz/w0;->a:Lz/w0;

    .line 43
    .line 44
    invoke-static {v2, v3, v7}, Lp4/o;->z(JLz/w0;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v15}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    iget-object v10, v1, Lf0/k;->b:Ld0/h0;

    .line 52
    .line 53
    invoke-virtual {v10, v9}, Ld0/h0;->a(Ln3/m;)F

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    invoke-interface {v15, v9}, Ln3/c;->b0(F)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    invoke-interface {v15}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    invoke-virtual {v10, v12}, Ld0/h0;->b(Ln3/m;)F

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-interface {v15, v12}, Ln3/c;->b0(F)I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    iget v13, v10, Ld0/h0;->b:F

    .line 74
    .line 75
    invoke-interface {v15, v13}, Ln3/c;->b0(F)I

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    iget v10, v10, Ld0/h0;->d:F

    .line 80
    .line 81
    invoke-interface {v15, v10}, Ln3/c;->b0(F)I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    add-int/2addr v10, v13

    .line 86
    add-int/2addr v12, v9

    .line 87
    sub-int v19, v10, v13

    .line 88
    .line 89
    neg-int v14, v12

    .line 90
    neg-int v4, v10

    .line 91
    invoke-static {v14, v4, v2, v3}, Ln3/b;->i(IIJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    iget-object v14, v1, Lf0/k;->c:Lf9/a;

    .line 96
    .line 97
    invoke-interface {v14}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    check-cast v14, Lf0/i;

    .line 102
    .line 103
    iget-object v8, v14, Lf0/i;->c:Lf0/c;

    .line 104
    .line 105
    move/from16 v28, v0

    .line 106
    .line 107
    invoke-static {v4, v5}, Ln3/a;->h(J)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v4, v5}, Ln3/a;->g(J)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget-object v3, v8, Lf0/c;->a:Lf1/h1;

    .line 116
    .line 117
    invoke-virtual {v3, v0}, Lf1/h1;->g(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v8, Lf0/c;->b:Lf1/h1;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lf1/h1;->g(I)V

    .line 123
    .line 124
    .line 125
    const-string v0, "null verticalArrangement when isVertical == true"

    .line 126
    .line 127
    iget-object v2, v1, Lf0/k;->d:Ld0/g;

    .line 128
    .line 129
    if-eqz v2, :cond_60

    .line 130
    .line 131
    invoke-interface {v2}, Ld0/g;->a()F

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-interface {v15, v3}, Ln3/c;->b0(F)I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    iget-object v3, v14, Lf0/i;->b:Lf0/g;

    .line 140
    .line 141
    invoke-virtual {v3}, Lf0/g;->k()Le7/l;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iget v3, v3, Le7/l;->b:I

    .line 146
    .line 147
    invoke-static/range {p2 .. p3}, Ln3/a;->g(J)I

    .line 148
    .line 149
    .line 150
    move-result v21

    .line 151
    move-object/from16 v22, v0

    .line 152
    .line 153
    sub-int v0, v21, v10

    .line 154
    .line 155
    move-object/from16 v21, v2

    .line 156
    .line 157
    move/from16 v23, v3

    .line 158
    .line 159
    int-to-long v2, v9

    .line 160
    const/16 v9, 0x20

    .line 161
    .line 162
    shl-long/2addr v2, v9

    .line 163
    move-wide/from16 v26, v2

    .line 164
    .line 165
    int-to-long v2, v13

    .line 166
    const-wide v29, 0xffffffffL

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    and-long v2, v2, v29

    .line 172
    .line 173
    or-long v2, v26, v2

    .line 174
    .line 175
    move v9, v12

    .line 176
    move/from16 v31, v13

    .line 177
    .line 178
    move-wide v12, v2

    .line 179
    new-instance v2, Lf0/j;

    .line 180
    .line 181
    iget-object v3, v1, Lf0/k;->h:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v3, Lr1/f;

    .line 184
    .line 185
    move-object/from16 v24, v2

    .line 186
    .line 187
    iget-object v2, v1, Lf0/k;->g:Lz/m1;

    .line 188
    .line 189
    check-cast v2, Lf0/u;

    .line 190
    .line 191
    move/from16 v35, v0

    .line 192
    .line 193
    move-object v0, v6

    .line 194
    move-object/from16 v29, v7

    .line 195
    .line 196
    move/from16 v37, v9

    .line 197
    .line 198
    move/from16 v36, v10

    .line 199
    .line 200
    move-object v6, v11

    .line 201
    move/from16 v11, v19

    .line 202
    .line 203
    move-object/from16 v40, v21

    .line 204
    .line 205
    move/from16 v7, v23

    .line 206
    .line 207
    move/from16 v10, v31

    .line 208
    .line 209
    move-object v9, v3

    .line 210
    move-wide v3, v4

    .line 211
    move-object v5, v14

    .line 212
    move-object v14, v2

    .line 213
    move-object/from16 v2, v24

    .line 214
    .line 215
    invoke-direct/range {v2 .. v14}, Lf0/j;-><init>(JLf0/i;Lh0/x;IILr1/f;IIJLf0/u;)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    if-eqz v6, :cond_2

    .line 223
    .line 224
    invoke-virtual {v6}, Lp1/f;->e()Lf9/k;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    goto :goto_2

    .line 229
    :cond_2
    const/4 v12, 0x0

    .line 230
    :goto_2
    invoke-static {v6}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    :try_start_0
    iget-object v14, v0, Lf0/u;->e:Lf0/p;

    .line 235
    .line 236
    iget-object v9, v14, Lf0/p;->b:Lf1/h1;

    .line 237
    .line 238
    invoke-virtual {v9}, Lf1/h1;->f()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    move/from16 v30, v8

    .line 243
    .line 244
    iget-object v8, v14, Lf0/p;->e:Ljava/lang/Object;

    .line 245
    .line 246
    invoke-static {v9, v5, v8}, Lh0/z;->i(ILh0/v;Ljava/lang/Object;)I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eq v9, v8, :cond_3

    .line 251
    .line 252
    move/from16 v31, v11

    .line 253
    .line 254
    iget-object v11, v14, Lf0/p;->b:Lf1/h1;

    .line 255
    .line 256
    invoke-virtual {v11, v8}, Lf1/h1;->g(I)V

    .line 257
    .line 258
    .line 259
    iget-object v11, v14, Lf0/p;->f:Lh0/b0;

    .line 260
    .line 261
    invoke-virtual {v11, v9}, Lh0/b0;->b(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    goto/16 :goto_4b

    .line 267
    .line 268
    :cond_3
    move/from16 v31, v11

    .line 269
    .line 270
    :goto_3
    iget-object v9, v14, Lf0/p;->c:Lf1/h1;

    .line 271
    .line 272
    invoke-virtual {v9}, Lf1/h1;->f()I

    .line 273
    .line 274
    .line 275
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-static {v6, v13, v12}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 277
    .line 278
    .line 279
    iget-object v6, v0, Lf0/u;->r:Lh0/e0;

    .line 280
    .line 281
    iget-object v11, v0, Lf0/u;->o:Lh0/k;

    .line 282
    .line 283
    invoke-static {v5, v6, v11}, Lh0/z;->g(Lh0/v;Lh0/e0;Lh0/k;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-interface {v15}, Lo2/r;->Q()Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-nez v6, :cond_5

    .line 292
    .line 293
    if-nez v25, :cond_4

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_4
    iget-object v6, v0, Lf0/u;->w:Lu0/j;

    .line 297
    .line 298
    iget-object v6, v6, Lu0/j;->c:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v6, Lv/k;

    .line 301
    .line 302
    iget-object v6, v6, Lv/k;->b:Lf1/k1;

    .line 303
    .line 304
    invoke-virtual {v6}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    check-cast v6, Ljava/lang/Number;

    .line 309
    .line 310
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    goto :goto_5

    .line 315
    :cond_5
    :goto_4
    iget v6, v0, Lf0/u;->h:F

    .line 316
    .line 317
    :goto_5
    iget-object v11, v0, Lf0/u;->n:Landroidx/compose/foundation/lazy/layout/b;

    .line 318
    .line 319
    invoke-interface {v15}, Lo2/r;->Q()Z

    .line 320
    .line 321
    .line 322
    move-result v23

    .line 323
    iget-object v12, v0, Lf0/u;->c:Lf0/m;

    .line 324
    .line 325
    iget-object v13, v0, Lf0/u;->v:Lf1/b1;

    .line 326
    .line 327
    if-ltz v10, :cond_6

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_6
    const-string v14, "invalid beforeContentPadding"

    .line 331
    .line 332
    invoke-static {v14}, Lc0/b;->a(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :goto_6
    if-ltz v31, :cond_7

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_7
    const-string v14, "invalid afterContentPadding"

    .line 339
    .line 340
    invoke-static {v14}, Lc0/b;->a(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :goto_7
    sget-object v14, Ls8/x;->a:Ls8/x;

    .line 344
    .line 345
    move/from16 v17, v6

    .line 346
    .line 347
    iget-object v6, v2, Lf0/j;->b:Lf0/i;

    .line 348
    .line 349
    move-object/from16 v24, v2

    .line 350
    .line 351
    iget-object v2, v1, Lf0/k;->e:Lac/w;

    .line 352
    .line 353
    sget-object v32, Ls8/w;->a:Ls8/w;

    .line 354
    .line 355
    if-gtz v7, :cond_9

    .line 356
    .line 357
    invoke-static {v3, v4}, Ln3/a;->j(J)I

    .line 358
    .line 359
    .line 360
    move-result v18

    .line 361
    invoke-static {v3, v4}, Ln3/a;->i(J)I

    .line 362
    .line 363
    .line 364
    move-result v19

    .line 365
    new-instance v20, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .line 369
    .line 370
    iget-object v5, v6, Lf0/i;->d:Le7/l;

    .line 371
    .line 372
    const/16 v26, 0x0

    .line 373
    .line 374
    const/16 v27, 0x0

    .line 375
    .line 376
    move-object/from16 v22, v24

    .line 377
    .line 378
    const/16 v24, 0x1

    .line 379
    .line 380
    move-object/from16 v21, v5

    .line 381
    .line 382
    move-object/from16 v17, v11

    .line 383
    .line 384
    invoke-virtual/range {v17 .. v27}, Landroidx/compose/foundation/lazy/layout/b;->c(IILjava/util/ArrayList;Le7/l;Lfb/a;ZIZII)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v20, v17

    .line 388
    .line 389
    move-object/from16 v11, v22

    .line 390
    .line 391
    if-nez v23, :cond_8

    .line 392
    .line 393
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/layout/b;->b()J

    .line 394
    .line 395
    .line 396
    if-nez v28, :cond_8

    .line 397
    .line 398
    const-wide/16 v5, 0x0

    .line 399
    .line 400
    long-to-int v7, v5

    .line 401
    invoke-static {v7, v3, v4}, Ln3/b;->g(IJ)I

    .line 402
    .line 403
    .line 404
    move-result v18

    .line 405
    long-to-int v6, v5

    .line 406
    invoke-static {v6, v3, v4}, Ln3/b;->f(IJ)I

    .line 407
    .line 408
    .line 409
    move-result v19

    .line 410
    :cond_8
    new-instance v3, Lv/x0;

    .line 411
    .line 412
    const/16 v4, 0x15

    .line 413
    .line 414
    invoke-direct {v3, v4}, Lv/x0;-><init>(I)V

    .line 415
    .line 416
    .line 417
    add-int v4, v18, v37

    .line 418
    .line 419
    move-wide/from16 v5, p2

    .line 420
    .line 421
    invoke-static {v4, v5, v6}, Ln3/b;->g(IJ)I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    add-int v7, v19, v36

    .line 426
    .line 427
    invoke-static {v7, v5, v6}, Ln3/b;->f(IJ)I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    invoke-interface {v15, v4, v5, v14, v3}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    move-object v3, v15

    .line 436
    neg-int v15, v10

    .line 437
    add-int v16, v35, v31

    .line 438
    .line 439
    move-object v10, v2

    .line 440
    new-instance v2, Lf0/m;

    .line 441
    .line 442
    const/4 v9, 0x0

    .line 443
    const/16 v17, 0x0

    .line 444
    .line 445
    move-object v4, v3

    .line 446
    const/4 v3, 0x0

    .line 447
    move-object v5, v4

    .line 448
    const/4 v4, 0x0

    .line 449
    move-object v6, v5

    .line 450
    const/4 v5, 0x0

    .line 451
    move-object v8, v6

    .line 452
    const/4 v6, 0x0

    .line 453
    move-object v12, v8

    .line 454
    const/4 v8, 0x0

    .line 455
    move-object v14, v12

    .line 456
    iget-wide v12, v11, Lf0/j;->d:J

    .line 457
    .line 458
    move-object/from16 v11, p1

    .line 459
    .line 460
    move-object/from16 v38, v0

    .line 461
    .line 462
    move-object v0, v14

    .line 463
    move-object/from16 v18, v29

    .line 464
    .line 465
    move/from16 v20, v30

    .line 466
    .line 467
    move/from16 v19, v31

    .line 468
    .line 469
    move-object/from16 v14, v32

    .line 470
    .line 471
    invoke-direct/range {v2 .. v20}, Lf0/m;-><init>(Lf0/n;IZFLo2/n0;FZLac/w;Ln3/c;JLjava/util/List;IIILz/w0;II)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_4a

    .line 475
    .line 476
    :cond_9
    move-object/from16 v38, v0

    .line 477
    .line 478
    move-object/from16 v49, v2

    .line 479
    .line 480
    move-object/from16 v20, v11

    .line 481
    .line 482
    move-object/from16 v42, v13

    .line 483
    .line 484
    move-object/from16 v39, v14

    .line 485
    .line 486
    move-object v0, v15

    .line 487
    move-object/from16 v11, v24

    .line 488
    .line 489
    move-object/from16 v48, v29

    .line 490
    .line 491
    move/from16 v2, v30

    .line 492
    .line 493
    move/from16 v47, v31

    .line 494
    .line 495
    const-wide/16 v13, 0x0

    .line 496
    .line 497
    if-lt v8, v7, :cond_a

    .line 498
    .line 499
    add-int/lit8 v8, v7, -0x1

    .line 500
    .line 501
    move v9, v8

    .line 502
    const/4 v8, 0x0

    .line 503
    goto :goto_8

    .line 504
    :cond_a
    move/from16 v56, v9

    .line 505
    .line 506
    move v9, v8

    .line 507
    move/from16 v8, v56

    .line 508
    .line 509
    :goto_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 510
    .line 511
    .line 512
    move-result v18

    .line 513
    sub-int v8, v8, v18

    .line 514
    .line 515
    if-nez v9, :cond_b

    .line 516
    .line 517
    if-gez v8, :cond_b

    .line 518
    .line 519
    add-int v18, v18, v8

    .line 520
    .line 521
    const/4 v8, 0x0

    .line 522
    :cond_b
    new-instance v13, Ls8/k;

    .line 523
    .line 524
    invoke-direct {v13}, Ls8/k;-><init>()V

    .line 525
    .line 526
    .line 527
    neg-int v14, v10

    .line 528
    if-gez v2, :cond_c

    .line 529
    .line 530
    move/from16 v19, v2

    .line 531
    .line 532
    move/from16 v50, v19

    .line 533
    .line 534
    goto :goto_9

    .line 535
    :cond_c
    move/from16 v50, v2

    .line 536
    .line 537
    const/16 v19, 0x0

    .line 538
    .line 539
    :goto_9
    add-int v2, v14, v19

    .line 540
    .line 541
    add-int/2addr v8, v2

    .line 542
    move-object/from16 v51, v0

    .line 543
    .line 544
    move/from16 v19, v9

    .line 545
    .line 546
    const/4 v9, 0x0

    .line 547
    :goto_a
    iget-wide v0, v11, Lf0/j;->d:J

    .line 548
    .line 549
    if-gez v8, :cond_d

    .line 550
    .line 551
    if-lez v19, :cond_d

    .line 552
    .line 553
    move/from16 v52, v14

    .line 554
    .line 555
    add-int/lit8 v14, v19, -0x1

    .line 556
    .line 557
    invoke-virtual {v11, v14, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    const/4 v1, 0x0

    .line 562
    invoke-virtual {v13, v1, v0}, Ls8/k;->add(ILjava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    iget v1, v0, Lf0/n;->m:I

    .line 566
    .line 567
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    .line 568
    .line 569
    .line 570
    move-result v9

    .line 571
    iget v0, v0, Lf0/n;->l:I

    .line 572
    .line 573
    add-int/2addr v8, v0

    .line 574
    move/from16 v19, v14

    .line 575
    .line 576
    move/from16 v14, v52

    .line 577
    .line 578
    goto :goto_a

    .line 579
    :cond_d
    move/from16 v52, v14

    .line 580
    .line 581
    if-ge v8, v2, :cond_e

    .line 582
    .line 583
    sub-int v8, v2, v8

    .line 584
    .line 585
    sub-int v18, v18, v8

    .line 586
    .line 587
    move v8, v2

    .line 588
    :cond_e
    move/from16 v14, v18

    .line 589
    .line 590
    sub-int/2addr v8, v2

    .line 591
    const/16 v41, 0x1

    .line 592
    .line 593
    add-int v16, v35, v47

    .line 594
    .line 595
    move/from16 v18, v9

    .line 596
    .line 597
    if-gez v16, :cond_f

    .line 598
    .line 599
    const/4 v9, 0x0

    .line 600
    :goto_b
    move-object/from16 v31, v6

    .line 601
    .line 602
    goto :goto_c

    .line 603
    :cond_f
    move/from16 v9, v16

    .line 604
    .line 605
    goto :goto_b

    .line 606
    :goto_c
    neg-int v6, v8

    .line 607
    move/from16 v21, v8

    .line 608
    .line 609
    move/from16 v26, v19

    .line 610
    .line 611
    const/4 v8, 0x0

    .line 612
    const/16 v24, 0x0

    .line 613
    .line 614
    :goto_d
    iget v15, v13, Ls8/k;->c:I

    .line 615
    .line 616
    if-ge v8, v15, :cond_11

    .line 617
    .line 618
    if-lt v6, v9, :cond_10

    .line 619
    .line 620
    invoke-virtual {v13, v8}, Ls8/k;->d(I)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    const/16 v24, 0x1

    .line 624
    .line 625
    goto :goto_d

    .line 626
    :cond_10
    add-int/lit8 v26, v26, 0x1

    .line 627
    .line 628
    invoke-virtual {v13, v8}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v15

    .line 632
    check-cast v15, Lf0/n;

    .line 633
    .line 634
    iget v15, v15, Lf0/n;->l:I

    .line 635
    .line 636
    add-int/2addr v6, v15

    .line 637
    add-int/lit8 v8, v8, 0x1

    .line 638
    .line 639
    goto :goto_d

    .line 640
    :cond_11
    move/from16 v15, v18

    .line 641
    .line 642
    move/from16 v18, v21

    .line 643
    .line 644
    move/from16 v53, v24

    .line 645
    .line 646
    move/from16 v8, v26

    .line 647
    .line 648
    :goto_e
    if-ge v8, v7, :cond_13

    .line 649
    .line 650
    if-lt v6, v9, :cond_12

    .line 651
    .line 652
    if-lez v6, :cond_12

    .line 653
    .line 654
    invoke-virtual {v13}, Ls8/k;->isEmpty()Z

    .line 655
    .line 656
    .line 657
    move-result v21

    .line 658
    if-eqz v21, :cond_13

    .line 659
    .line 660
    :cond_12
    move/from16 v21, v9

    .line 661
    .line 662
    goto :goto_f

    .line 663
    :cond_13
    move-wide/from16 v33, v3

    .line 664
    .line 665
    move/from16 v2, v35

    .line 666
    .line 667
    goto :goto_11

    .line 668
    :goto_f
    invoke-virtual {v11, v8, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 669
    .line 670
    .line 671
    move-result-object v9

    .line 672
    move-wide/from16 v33, v3

    .line 673
    .line 674
    iget v3, v9, Lf0/n;->l:I

    .line 675
    .line 676
    add-int/2addr v6, v3

    .line 677
    if-gt v6, v2, :cond_14

    .line 678
    .line 679
    add-int/lit8 v4, v7, -0x1

    .line 680
    .line 681
    if-eq v8, v4, :cond_14

    .line 682
    .line 683
    add-int/lit8 v4, v8, 0x1

    .line 684
    .line 685
    sub-int v3, v18, v3

    .line 686
    .line 687
    move/from16 v18, v3

    .line 688
    .line 689
    move/from16 v19, v4

    .line 690
    .line 691
    const/16 v53, 0x1

    .line 692
    .line 693
    goto :goto_10

    .line 694
    :cond_14
    iget v3, v9, Lf0/n;->m:I

    .line 695
    .line 696
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    invoke-virtual {v13, v9}, Ls8/k;->addLast(Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    move v15, v3

    .line 704
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 705
    .line 706
    move/from16 v9, v21

    .line 707
    .line 708
    move-wide/from16 v3, v33

    .line 709
    .line 710
    goto :goto_e

    .line 711
    :goto_11
    if-ge v6, v2, :cond_17

    .line 712
    .line 713
    sub-int v3, v2, v6

    .line 714
    .line 715
    sub-int v18, v18, v3

    .line 716
    .line 717
    add-int/2addr v6, v3

    .line 718
    move/from16 v4, v18

    .line 719
    .line 720
    :goto_12
    if-ge v4, v10, :cond_15

    .line 721
    .line 722
    if-lez v19, :cond_15

    .line 723
    .line 724
    add-int/lit8 v9, v19, -0x1

    .line 725
    .line 726
    move/from16 v21, v3

    .line 727
    .line 728
    invoke-virtual {v11, v9, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    move/from16 v18, v4

    .line 733
    .line 734
    const/4 v4, 0x0

    .line 735
    invoke-virtual {v13, v4, v3}, Ls8/k;->add(ILjava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    iget v4, v3, Lf0/n;->m:I

    .line 739
    .line 740
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 741
    .line 742
    .line 743
    move-result v15

    .line 744
    iget v3, v3, Lf0/n;->l:I

    .line 745
    .line 746
    add-int v4, v18, v3

    .line 747
    .line 748
    move/from16 v19, v9

    .line 749
    .line 750
    move/from16 v3, v21

    .line 751
    .line 752
    goto :goto_12

    .line 753
    :cond_15
    move/from16 v21, v3

    .line 754
    .line 755
    move/from16 v18, v4

    .line 756
    .line 757
    add-int v3, v14, v21

    .line 758
    .line 759
    if-gez v18, :cond_16

    .line 760
    .line 761
    add-int v3, v3, v18

    .line 762
    .line 763
    add-int v6, v6, v18

    .line 764
    .line 765
    move/from16 v9, v19

    .line 766
    .line 767
    const/4 v4, 0x0

    .line 768
    goto :goto_14

    .line 769
    :cond_16
    :goto_13
    move/from16 v4, v18

    .line 770
    .line 771
    move/from16 v9, v19

    .line 772
    .line 773
    goto :goto_14

    .line 774
    :cond_17
    move v3, v14

    .line 775
    goto :goto_13

    .line 776
    :goto_14
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 777
    .line 778
    .line 779
    move-result v18

    .line 780
    move/from16 v35, v10

    .line 781
    .line 782
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->signum(I)I

    .line 783
    .line 784
    .line 785
    move-result v10

    .line 786
    move/from16 v18, v15

    .line 787
    .line 788
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    .line 789
    .line 790
    .line 791
    move-result v15

    .line 792
    if-ne v10, v15, :cond_18

    .line 793
    .line 794
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 795
    .line 796
    .line 797
    move-result v10

    .line 798
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 799
    .line 800
    .line 801
    move-result v10

    .line 802
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 803
    .line 804
    .line 805
    move-result v15

    .line 806
    if-lt v10, v15, :cond_18

    .line 807
    .line 808
    int-to-float v10, v3

    .line 809
    goto :goto_15

    .line 810
    :cond_18
    move/from16 v10, v17

    .line 811
    .line 812
    :goto_15
    sub-float v15, v17, v10

    .line 813
    .line 814
    const/16 v17, 0x0

    .line 815
    .line 816
    if-eqz v23, :cond_19

    .line 817
    .line 818
    if-le v3, v14, :cond_19

    .line 819
    .line 820
    cmpg-float v19, v15, v17

    .line 821
    .line 822
    if-gtz v19, :cond_19

    .line 823
    .line 824
    sub-int/2addr v3, v14

    .line 825
    int-to-float v3, v3

    .line 826
    add-float/2addr v3, v15

    .line 827
    goto :goto_16

    .line 828
    :cond_19
    const/4 v3, 0x0

    .line 829
    :goto_16
    if-ltz v4, :cond_1a

    .line 830
    .line 831
    goto :goto_17

    .line 832
    :cond_1a
    const-string v14, "negative currentFirstItemScrollOffset"

    .line 833
    .line 834
    invoke-static {v14}, Lc0/b;->a(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    :goto_17
    neg-int v14, v4

    .line 838
    invoke-virtual {v13}, Ls8/k;->first()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v15

    .line 842
    check-cast v15, Lf0/n;

    .line 843
    .line 844
    if-gtz v35, :cond_1b

    .line 845
    .line 846
    if-gez v50, :cond_1c

    .line 847
    .line 848
    :cond_1b
    move/from16 v54, v3

    .line 849
    .line 850
    goto :goto_19

    .line 851
    :cond_1c
    move/from16 v54, v3

    .line 852
    .line 853
    move-object v3, v15

    .line 854
    :goto_18
    move/from16 v26, v4

    .line 855
    .line 856
    const/4 v15, 0x0

    .line 857
    goto :goto_1b

    .line 858
    :goto_19
    invoke-virtual {v13}, Ls8/k;->b()I

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    move-object/from16 v19, v15

    .line 863
    .line 864
    const/4 v15, 0x0

    .line 865
    :goto_1a
    if-ge v15, v3, :cond_1d

    .line 866
    .line 867
    invoke-virtual {v13, v15}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v21

    .line 871
    move/from16 v24, v3

    .line 872
    .line 873
    move-object/from16 v3, v21

    .line 874
    .line 875
    check-cast v3, Lf0/n;

    .line 876
    .line 877
    iget v3, v3, Lf0/n;->l:I

    .line 878
    .line 879
    if-eqz v4, :cond_1d

    .line 880
    .line 881
    if-gt v3, v4, :cond_1d

    .line 882
    .line 883
    move/from16 v21, v3

    .line 884
    .line 885
    invoke-static {v13}, Lp9/x1;->u(Ljava/util/List;)I

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    if-eq v15, v3, :cond_1d

    .line 890
    .line 891
    sub-int v4, v4, v21

    .line 892
    .line 893
    add-int/lit8 v15, v15, 0x1

    .line 894
    .line 895
    invoke-virtual {v13, v15}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    move-object/from16 v19, v3

    .line 900
    .line 901
    check-cast v19, Lf0/n;

    .line 902
    .line 903
    move/from16 v3, v24

    .line 904
    .line 905
    goto :goto_1a

    .line 906
    :cond_1d
    move-object/from16 v3, v19

    .line 907
    .line 908
    goto :goto_18

    .line 909
    :goto_1b
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    add-int/lit8 v9, v9, -0x1

    .line 914
    .line 915
    if-gt v4, v9, :cond_1f

    .line 916
    .line 917
    const/4 v15, 0x0

    .line 918
    :goto_1c
    if-nez v15, :cond_1e

    .line 919
    .line 920
    new-instance v15, Ljava/util/ArrayList;

    .line 921
    .line 922
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .line 924
    .line 925
    :cond_1e
    move/from16 v55, v10

    .line 926
    .line 927
    invoke-virtual {v11, v9, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 928
    .line 929
    .line 930
    move-result-object v10

    .line 931
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    if-eq v9, v4, :cond_20

    .line 935
    .line 936
    add-int/lit8 v9, v9, -0x1

    .line 937
    .line 938
    move/from16 v10, v55

    .line 939
    .line 940
    goto :goto_1c

    .line 941
    :cond_1f
    move/from16 v55, v10

    .line 942
    .line 943
    const/4 v15, 0x0

    .line 944
    :cond_20
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 945
    .line 946
    .line 947
    move-result v9

    .line 948
    const/4 v10, -0x1

    .line 949
    add-int/2addr v9, v10

    .line 950
    if-ltz v9, :cond_24

    .line 951
    .line 952
    :goto_1d
    add-int/lit8 v19, v9, -0x1

    .line 953
    .line 954
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v9

    .line 958
    check-cast v9, Ljava/lang/Number;

    .line 959
    .line 960
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 961
    .line 962
    .line 963
    move-result v9

    .line 964
    if-ge v9, v4, :cond_22

    .line 965
    .line 966
    if-nez v15, :cond_21

    .line 967
    .line 968
    new-instance v15, Ljava/util/ArrayList;

    .line 969
    .line 970
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .line 972
    .line 973
    :cond_21
    invoke-virtual {v11, v9, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 974
    .line 975
    .line 976
    move-result-object v9

    .line 977
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    :cond_22
    if-gez v19, :cond_23

    .line 981
    .line 982
    goto :goto_1e

    .line 983
    :cond_23
    move/from16 v9, v19

    .line 984
    .line 985
    goto :goto_1d

    .line 986
    :cond_24
    :goto_1e
    if-nez v15, :cond_25

    .line 987
    .line 988
    move-object/from16 v15, v32

    .line 989
    .line 990
    :cond_25
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 991
    .line 992
    .line 993
    move-result v4

    .line 994
    move/from16 v10, v18

    .line 995
    .line 996
    const/4 v9, 0x0

    .line 997
    :goto_1f
    if-ge v9, v4, :cond_26

    .line 998
    .line 999
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v19

    .line 1003
    move/from16 v21, v4

    .line 1004
    .line 1005
    move-object/from16 v4, v19

    .line 1006
    .line 1007
    check-cast v4, Lf0/n;

    .line 1008
    .line 1009
    iget v4, v4, Lf0/n;->m:I

    .line 1010
    .line 1011
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 1012
    .line 1013
    .line 1014
    move-result v10

    .line 1015
    add-int/lit8 v9, v9, 0x1

    .line 1016
    .line 1017
    move/from16 v4, v21

    .line 1018
    .line 1019
    goto :goto_1f

    .line 1020
    :cond_26
    invoke-static {v13}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v4

    .line 1024
    check-cast v4, Lf0/n;

    .line 1025
    .line 1026
    iget v4, v4, Lf0/n;->a:I

    .line 1027
    .line 1028
    add-int/lit8 v9, v7, -0x1

    .line 1029
    .line 1030
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 1031
    .line 1032
    .line 1033
    move-result v4

    .line 1034
    invoke-static {v13}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v19

    .line 1038
    move/from16 v21, v10

    .line 1039
    .line 1040
    move-object/from16 v10, v19

    .line 1041
    .line 1042
    check-cast v10, Lf0/n;

    .line 1043
    .line 1044
    iget v10, v10, Lf0/n;->a:I

    .line 1045
    .line 1046
    add-int/lit8 v10, v10, 0x1

    .line 1047
    .line 1048
    if-gt v10, v4, :cond_28

    .line 1049
    .line 1050
    const/16 v19, 0x0

    .line 1051
    .line 1052
    :goto_20
    if-nez v19, :cond_27

    .line 1053
    .line 1054
    new-instance v19, Ljava/util/ArrayList;

    .line 1055
    .line 1056
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .line 1058
    .line 1059
    :cond_27
    move/from16 v43, v8

    .line 1060
    .line 1061
    move/from16 v24, v14

    .line 1062
    .line 1063
    move-object/from16 v14, v19

    .line 1064
    .line 1065
    invoke-virtual {v11, v10, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v8

    .line 1069
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    .line 1071
    .line 1072
    if-eq v10, v4, :cond_29

    .line 1073
    .line 1074
    add-int/lit8 v10, v10, 0x1

    .line 1075
    .line 1076
    move-object/from16 v19, v14

    .line 1077
    .line 1078
    move/from16 v14, v24

    .line 1079
    .line 1080
    move/from16 v8, v43

    .line 1081
    .line 1082
    goto :goto_20

    .line 1083
    :cond_28
    move/from16 v43, v8

    .line 1084
    .line 1085
    move/from16 v24, v14

    .line 1086
    .line 1087
    const/4 v14, 0x0

    .line 1088
    :cond_29
    if-eqz v23, :cond_3c

    .line 1089
    .line 1090
    if-eqz v12, :cond_3c

    .line 1091
    .line 1092
    iget-object v8, v12, Lf0/m;->k:Ljava/lang/Object;

    .line 1093
    .line 1094
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v10

    .line 1098
    if-nez v10, :cond_3c

    .line 1099
    .line 1100
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1101
    .line 1102
    .line 1103
    move-result v10

    .line 1104
    add-int/lit8 v10, v10, -0x1

    .line 1105
    .line 1106
    move-object/from16 v18, v14

    .line 1107
    .line 1108
    :goto_21
    const/4 v14, -0x1

    .line 1109
    if-ge v14, v10, :cond_2c

    .line 1110
    .line 1111
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v19

    .line 1115
    move-object/from16 v14, v19

    .line 1116
    .line 1117
    check-cast v14, Lf0/n;

    .line 1118
    .line 1119
    iget v14, v14, Lf0/n;->a:I

    .line 1120
    .line 1121
    if-le v14, v4, :cond_2b

    .line 1122
    .line 1123
    if-eqz v10, :cond_2a

    .line 1124
    .line 1125
    add-int/lit8 v14, v10, -0x1

    .line 1126
    .line 1127
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v14

    .line 1131
    check-cast v14, Lf0/n;

    .line 1132
    .line 1133
    iget v14, v14, Lf0/n;->a:I

    .line 1134
    .line 1135
    if-gt v14, v4, :cond_2b

    .line 1136
    .line 1137
    :cond_2a
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v10

    .line 1141
    check-cast v10, Lf0/n;

    .line 1142
    .line 1143
    goto :goto_22

    .line 1144
    :cond_2b
    add-int/lit8 v10, v10, -0x1

    .line 1145
    .line 1146
    goto :goto_21

    .line 1147
    :cond_2c
    const/4 v10, 0x0

    .line 1148
    :goto_22
    invoke-static {v8}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v8

    .line 1152
    check-cast v8, Lf0/n;

    .line 1153
    .line 1154
    if-eqz v10, :cond_32

    .line 1155
    .line 1156
    iget v10, v10, Lf0/n;->a:I

    .line 1157
    .line 1158
    iget v14, v8, Lf0/n;->a:I

    .line 1159
    .line 1160
    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    .line 1161
    .line 1162
    .line 1163
    move-result v9

    .line 1164
    if-gt v10, v9, :cond_32

    .line 1165
    .line 1166
    move-object/from16 v14, v18

    .line 1167
    .line 1168
    :goto_23
    if-eqz v14, :cond_2f

    .line 1169
    .line 1170
    move-object/from16 v19, v15

    .line 1171
    .line 1172
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1173
    .line 1174
    .line 1175
    move-result v15

    .line 1176
    move/from16 v44, v2

    .line 1177
    .line 1178
    const/4 v2, 0x0

    .line 1179
    :goto_24
    if-ge v2, v15, :cond_2e

    .line 1180
    .line 1181
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v18

    .line 1185
    move/from16 v27, v2

    .line 1186
    .line 1187
    move-object/from16 v2, v18

    .line 1188
    .line 1189
    check-cast v2, Lf0/n;

    .line 1190
    .line 1191
    iget v2, v2, Lf0/n;->a:I

    .line 1192
    .line 1193
    if-ne v2, v10, :cond_2d

    .line 1194
    .line 1195
    goto :goto_25

    .line 1196
    :cond_2d
    add-int/lit8 v2, v27, 0x1

    .line 1197
    .line 1198
    goto :goto_24

    .line 1199
    :cond_2e
    const/16 v18, 0x0

    .line 1200
    .line 1201
    :goto_25
    check-cast v18, Lf0/n;

    .line 1202
    .line 1203
    goto :goto_26

    .line 1204
    :cond_2f
    move/from16 v44, v2

    .line 1205
    .line 1206
    move-object/from16 v19, v15

    .line 1207
    .line 1208
    const/16 v18, 0x0

    .line 1209
    .line 1210
    :goto_26
    if-nez v18, :cond_31

    .line 1211
    .line 1212
    if-nez v14, :cond_30

    .line 1213
    .line 1214
    new-instance v14, Ljava/util/ArrayList;

    .line 1215
    .line 1216
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .line 1218
    .line 1219
    :cond_30
    invoke-virtual {v11, v10, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v2

    .line 1223
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    :cond_31
    if-eq v10, v9, :cond_33

    .line 1227
    .line 1228
    add-int/lit8 v10, v10, 0x1

    .line 1229
    .line 1230
    move-object/from16 v15, v19

    .line 1231
    .line 1232
    move/from16 v2, v44

    .line 1233
    .line 1234
    goto :goto_23

    .line 1235
    :cond_32
    move/from16 v44, v2

    .line 1236
    .line 1237
    move-object/from16 v19, v15

    .line 1238
    .line 1239
    move-object/from16 v14, v18

    .line 1240
    .line 1241
    :cond_33
    iget v2, v12, Lf0/m;->m:I

    .line 1242
    .line 1243
    iget v9, v8, Lf0/n;->j:I

    .line 1244
    .line 1245
    sub-int/2addr v2, v9

    .line 1246
    iget v9, v8, Lf0/n;->k:I

    .line 1247
    .line 1248
    sub-int/2addr v2, v9

    .line 1249
    int-to-float v2, v2

    .line 1250
    sub-float v2, v2, v55

    .line 1251
    .line 1252
    cmpl-float v9, v2, v17

    .line 1253
    .line 1254
    if-lez v9, :cond_3d

    .line 1255
    .line 1256
    iget v8, v8, Lf0/n;->a:I

    .line 1257
    .line 1258
    add-int/lit8 v8, v8, 0x1

    .line 1259
    .line 1260
    const/4 v9, 0x0

    .line 1261
    :goto_27
    if-ge v8, v7, :cond_3d

    .line 1262
    .line 1263
    int-to-float v10, v9

    .line 1264
    cmpg-float v10, v10, v2

    .line 1265
    .line 1266
    if-gez v10, :cond_3d

    .line 1267
    .line 1268
    if-gt v8, v4, :cond_36

    .line 1269
    .line 1270
    invoke-virtual {v13}, Ls8/k;->b()I

    .line 1271
    .line 1272
    .line 1273
    move-result v10

    .line 1274
    const/4 v12, 0x0

    .line 1275
    :goto_28
    if-ge v12, v10, :cond_35

    .line 1276
    .line 1277
    invoke-virtual {v13, v12}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v15

    .line 1281
    move/from16 v17, v2

    .line 1282
    .line 1283
    move-object v2, v15

    .line 1284
    check-cast v2, Lf0/n;

    .line 1285
    .line 1286
    iget v2, v2, Lf0/n;->a:I

    .line 1287
    .line 1288
    if-ne v2, v8, :cond_34

    .line 1289
    .line 1290
    goto :goto_29

    .line 1291
    :cond_34
    add-int/lit8 v12, v12, 0x1

    .line 1292
    .line 1293
    move/from16 v2, v17

    .line 1294
    .line 1295
    goto :goto_28

    .line 1296
    :cond_35
    move/from16 v17, v2

    .line 1297
    .line 1298
    const/4 v15, 0x0

    .line 1299
    :goto_29
    check-cast v15, Lf0/n;

    .line 1300
    .line 1301
    goto :goto_2c

    .line 1302
    :cond_36
    move/from16 v17, v2

    .line 1303
    .line 1304
    if-eqz v14, :cond_39

    .line 1305
    .line 1306
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1307
    .line 1308
    .line 1309
    move-result v2

    .line 1310
    const/4 v10, 0x0

    .line 1311
    :goto_2a
    if-ge v10, v2, :cond_38

    .line 1312
    .line 1313
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v12

    .line 1317
    move-object v15, v12

    .line 1318
    check-cast v15, Lf0/n;

    .line 1319
    .line 1320
    iget v15, v15, Lf0/n;->a:I

    .line 1321
    .line 1322
    if-ne v15, v8, :cond_37

    .line 1323
    .line 1324
    goto :goto_2b

    .line 1325
    :cond_37
    add-int/lit8 v10, v10, 0x1

    .line 1326
    .line 1327
    goto :goto_2a

    .line 1328
    :cond_38
    const/4 v12, 0x0

    .line 1329
    :goto_2b
    move-object v15, v12

    .line 1330
    check-cast v15, Lf0/n;

    .line 1331
    .line 1332
    goto :goto_2c

    .line 1333
    :cond_39
    const/4 v15, 0x0

    .line 1334
    :goto_2c
    if-eqz v15, :cond_3a

    .line 1335
    .line 1336
    add-int/lit8 v8, v8, 0x1

    .line 1337
    .line 1338
    iget v2, v15, Lf0/n;->l:I

    .line 1339
    .line 1340
    :goto_2d
    add-int/2addr v9, v2

    .line 1341
    move/from16 v2, v17

    .line 1342
    .line 1343
    goto :goto_27

    .line 1344
    :cond_3a
    if-nez v14, :cond_3b

    .line 1345
    .line 1346
    new-instance v14, Ljava/util/ArrayList;

    .line 1347
    .line 1348
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .line 1350
    .line 1351
    :cond_3b
    invoke-virtual {v11, v8, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v2

    .line 1355
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    .line 1357
    .line 1358
    add-int/lit8 v8, v8, 0x1

    .line 1359
    .line 1360
    invoke-static {v14}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v2

    .line 1364
    check-cast v2, Lf0/n;

    .line 1365
    .line 1366
    iget v2, v2, Lf0/n;->l:I

    .line 1367
    .line 1368
    goto :goto_2d

    .line 1369
    :cond_3c
    move/from16 v44, v2

    .line 1370
    .line 1371
    move-object/from16 v18, v14

    .line 1372
    .line 1373
    move-object/from16 v19, v15

    .line 1374
    .line 1375
    move-object/from16 v14, v18

    .line 1376
    .line 1377
    :cond_3d
    if-eqz v14, :cond_3e

    .line 1378
    .line 1379
    invoke-static {v14}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v2

    .line 1383
    check-cast v2, Lf0/n;

    .line 1384
    .line 1385
    iget v2, v2, Lf0/n;->a:I

    .line 1386
    .line 1387
    if-le v2, v4, :cond_3e

    .line 1388
    .line 1389
    invoke-static {v14}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v2

    .line 1393
    check-cast v2, Lf0/n;

    .line 1394
    .line 1395
    iget v4, v2, Lf0/n;->a:I

    .line 1396
    .line 1397
    :cond_3e
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1398
    .line 1399
    .line 1400
    move-result v2

    .line 1401
    const/4 v8, 0x0

    .line 1402
    :goto_2e
    if-ge v8, v2, :cond_41

    .line 1403
    .line 1404
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v9

    .line 1408
    check-cast v9, Ljava/lang/Number;

    .line 1409
    .line 1410
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 1411
    .line 1412
    .line 1413
    move-result v9

    .line 1414
    if-le v9, v4, :cond_40

    .line 1415
    .line 1416
    if-nez v14, :cond_3f

    .line 1417
    .line 1418
    new-instance v14, Ljava/util/ArrayList;

    .line 1419
    .line 1420
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .line 1422
    .line 1423
    :cond_3f
    invoke-virtual {v11, v9, v0, v1}, Lf0/j;->u0(IJ)Lf0/n;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v9

    .line 1427
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    .line 1429
    .line 1430
    :cond_40
    add-int/lit8 v8, v8, 0x1

    .line 1431
    .line 1432
    goto :goto_2e

    .line 1433
    :cond_41
    if-nez v14, :cond_42

    .line 1434
    .line 1435
    move-object/from16 v14, v32

    .line 1436
    .line 1437
    :cond_42
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1438
    .line 1439
    .line 1440
    move-result v0

    .line 1441
    move/from16 v10, v21

    .line 1442
    .line 1443
    const/4 v8, 0x0

    .line 1444
    :goto_2f
    if-ge v8, v0, :cond_43

    .line 1445
    .line 1446
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v1

    .line 1450
    check-cast v1, Lf0/n;

    .line 1451
    .line 1452
    iget v1, v1, Lf0/n;->m:I

    .line 1453
    .line 1454
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 1455
    .line 1456
    .line 1457
    move-result v10

    .line 1458
    add-int/lit8 v8, v8, 0x1

    .line 1459
    .line 1460
    goto :goto_2f

    .line 1461
    :cond_43
    invoke-virtual {v13}, Ls8/k;->first()Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    invoke-static {v3, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v0

    .line 1469
    if-eqz v0, :cond_44

    .line 1470
    .line 1471
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 1472
    .line 1473
    .line 1474
    move-result v0

    .line 1475
    if-eqz v0, :cond_44

    .line 1476
    .line 1477
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 1478
    .line 1479
    .line 1480
    move-result v0

    .line 1481
    if-eqz v0, :cond_44

    .line 1482
    .line 1483
    const/4 v8, 0x1

    .line 1484
    :goto_30
    move-wide/from16 v0, v33

    .line 1485
    .line 1486
    goto :goto_31

    .line 1487
    :cond_44
    const/4 v8, 0x0

    .line 1488
    goto :goto_30

    .line 1489
    :goto_31
    invoke-static {v10, v0, v1}, Ln3/b;->g(IJ)I

    .line 1490
    .line 1491
    .line 1492
    move-result v2

    .line 1493
    invoke-static {v6, v0, v1}, Ln3/b;->f(IJ)I

    .line 1494
    .line 1495
    .line 1496
    move-result v4

    .line 1497
    move/from16 v5, v44

    .line 1498
    .line 1499
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 1500
    .line 1501
    .line 1502
    move-result v9

    .line 1503
    if-ge v6, v9, :cond_45

    .line 1504
    .line 1505
    const/4 v9, 0x1

    .line 1506
    goto :goto_32

    .line 1507
    :cond_45
    const/4 v9, 0x0

    .line 1508
    :goto_32
    if-eqz v9, :cond_47

    .line 1509
    .line 1510
    if-nez v24, :cond_46

    .line 1511
    .line 1512
    goto :goto_33

    .line 1513
    :cond_46
    const-string v10, "non-zero itemsScrollOffset"

    .line 1514
    .line 1515
    invoke-static {v10}, Lc0/b;->c(Ljava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    :cond_47
    :goto_33
    new-instance v10, Ljava/util/ArrayList;

    .line 1519
    .line 1520
    invoke-virtual {v13}, Ls8/k;->b()I

    .line 1521
    .line 1522
    .line 1523
    move-result v12

    .line 1524
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 1525
    .line 1526
    .line 1527
    move-result v15

    .line 1528
    add-int/2addr v15, v12

    .line 1529
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1530
    .line 1531
    .line 1532
    move-result v12

    .line 1533
    add-int/2addr v12, v15

    .line 1534
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1535
    .line 1536
    .line 1537
    if-eqz v9, :cond_4f

    .line 1538
    .line 1539
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v9

    .line 1543
    if-eqz v9, :cond_48

    .line 1544
    .line 1545
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 1546
    .line 1547
    .line 1548
    move-result v9

    .line 1549
    if-eqz v9, :cond_48

    .line 1550
    .line 1551
    goto :goto_34

    .line 1552
    :cond_48
    const-string v9, "no extra items"

    .line 1553
    .line 1554
    invoke-static {v9}, Lc0/b;->a(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    :goto_34
    invoke-virtual {v13}, Ls8/k;->b()I

    .line 1558
    .line 1559
    .line 1560
    move-result v9

    .line 1561
    new-array v12, v9, [I

    .line 1562
    .line 1563
    const/4 v14, 0x0

    .line 1564
    :goto_35
    if-ge v14, v9, :cond_49

    .line 1565
    .line 1566
    invoke-virtual {v13, v14}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v15

    .line 1570
    check-cast v15, Lf0/n;

    .line 1571
    .line 1572
    iget v15, v15, Lf0/n;->k:I

    .line 1573
    .line 1574
    aput v15, v12, v14

    .line 1575
    .line 1576
    add-int/lit8 v14, v14, 0x1

    .line 1577
    .line 1578
    goto :goto_35

    .line 1579
    :cond_49
    new-array v9, v9, [I

    .line 1580
    .line 1581
    move-object/from16 v14, v40

    .line 1582
    .line 1583
    if-eqz v14, :cond_4e

    .line 1584
    .line 1585
    move-object/from16 v15, p1

    .line 1586
    .line 1587
    invoke-interface {v14, v4, v15, v12, v9}, Ld0/g;->b(ILo2/o0;[I[I)V

    .line 1588
    .line 1589
    .line 1590
    invoke-static {v9}, Ls8/l;->Y([I)Ll9/d;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v12

    .line 1594
    iget v14, v12, Ll9/b;->a:I

    .line 1595
    .line 1596
    move-object/from16 v40, v3

    .line 1597
    .line 1598
    iget v3, v12, Ll9/b;->b:I

    .line 1599
    .line 1600
    iget v12, v12, Ll9/b;->c:I

    .line 1601
    .line 1602
    if-lez v12, :cond_4a

    .line 1603
    .line 1604
    if-le v14, v3, :cond_4b

    .line 1605
    .line 1606
    :cond_4a
    if-gez v12, :cond_4d

    .line 1607
    .line 1608
    if-gt v3, v14, :cond_4d

    .line 1609
    .line 1610
    :cond_4b
    move/from16 v27, v6

    .line 1611
    .line 1612
    :goto_36
    aget v6, v9, v14

    .line 1613
    .line 1614
    invoke-virtual {v13, v14}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v17

    .line 1618
    move/from16 v44, v8

    .line 1619
    .line 1620
    move-object/from16 v8, v17

    .line 1621
    .line 1622
    check-cast v8, Lf0/n;

    .line 1623
    .line 1624
    invoke-virtual {v8, v6, v2, v4}, Lf0/n;->k(III)V

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    .line 1629
    .line 1630
    if-eq v14, v3, :cond_4c

    .line 1631
    .line 1632
    add-int/2addr v14, v12

    .line 1633
    move/from16 v8, v44

    .line 1634
    .line 1635
    goto :goto_36

    .line 1636
    :cond_4c
    :goto_37
    move-object/from16 v3, v31

    .line 1637
    .line 1638
    goto/16 :goto_3b

    .line 1639
    .line 1640
    :cond_4d
    move/from16 v27, v6

    .line 1641
    .line 1642
    move/from16 v44, v8

    .line 1643
    .line 1644
    goto :goto_37

    .line 1645
    :cond_4e
    invoke-static/range {v22 .. v22}, Lc0/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 1646
    .line 1647
    .line 1648
    new-instance v0, Lac/p;

    .line 1649
    .line 1650
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1651
    .line 1652
    .line 1653
    throw v0

    .line 1654
    :cond_4f
    move-object/from16 v15, p1

    .line 1655
    .line 1656
    move-object/from16 v40, v3

    .line 1657
    .line 1658
    move/from16 v27, v6

    .line 1659
    .line 1660
    move/from16 v44, v8

    .line 1661
    .line 1662
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    .line 1663
    .line 1664
    .line 1665
    move-result v3

    .line 1666
    move/from16 v6, v24

    .line 1667
    .line 1668
    const/4 v8, 0x0

    .line 1669
    :goto_38
    if-ge v8, v3, :cond_50

    .line 1670
    .line 1671
    move-object/from16 v9, v19

    .line 1672
    .line 1673
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v12

    .line 1677
    check-cast v12, Lf0/n;

    .line 1678
    .line 1679
    move/from16 v17, v3

    .line 1680
    .line 1681
    iget v3, v12, Lf0/n;->l:I

    .line 1682
    .line 1683
    sub-int/2addr v6, v3

    .line 1684
    invoke-virtual {v12, v6, v2, v4}, Lf0/n;->k(III)V

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    .line 1689
    .line 1690
    add-int/lit8 v8, v8, 0x1

    .line 1691
    .line 1692
    move/from16 v3, v17

    .line 1693
    .line 1694
    goto :goto_38

    .line 1695
    :cond_50
    invoke-virtual {v13}, Ls8/k;->b()I

    .line 1696
    .line 1697
    .line 1698
    move-result v3

    .line 1699
    move/from16 v6, v24

    .line 1700
    .line 1701
    const/4 v8, 0x0

    .line 1702
    :goto_39
    if-ge v8, v3, :cond_51

    .line 1703
    .line 1704
    invoke-virtual {v13, v8}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v9

    .line 1708
    check-cast v9, Lf0/n;

    .line 1709
    .line 1710
    invoke-virtual {v9, v6, v2, v4}, Lf0/n;->k(III)V

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    .line 1715
    .line 1716
    iget v9, v9, Lf0/n;->l:I

    .line 1717
    .line 1718
    add-int/2addr v6, v9

    .line 1719
    add-int/lit8 v8, v8, 0x1

    .line 1720
    .line 1721
    goto :goto_39

    .line 1722
    :cond_51
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1723
    .line 1724
    .line 1725
    move-result v3

    .line 1726
    const/4 v8, 0x0

    .line 1727
    :goto_3a
    if-ge v8, v3, :cond_4c

    .line 1728
    .line 1729
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v9

    .line 1733
    check-cast v9, Lf0/n;

    .line 1734
    .line 1735
    invoke-virtual {v9, v6, v2, v4}, Lf0/n;->k(III)V

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    .line 1740
    .line 1741
    iget v9, v9, Lf0/n;->l:I

    .line 1742
    .line 1743
    add-int/2addr v6, v9

    .line 1744
    add-int/lit8 v8, v8, 0x1

    .line 1745
    .line 1746
    goto :goto_3a

    .line 1747
    :goto_3b
    iget-object v6, v3, Lf0/i;->d:Le7/l;

    .line 1748
    .line 1749
    const/16 v24, 0x1

    .line 1750
    .line 1751
    move/from16 v18, v2

    .line 1752
    .line 1753
    move/from16 v19, v4

    .line 1754
    .line 1755
    move-object/from16 v21, v6

    .line 1756
    .line 1757
    move-object/from16 v22, v11

    .line 1758
    .line 1759
    move-object/from16 v17, v20

    .line 1760
    .line 1761
    move-object/from16 v20, v10

    .line 1762
    .line 1763
    invoke-virtual/range {v17 .. v27}, Landroidx/compose/foundation/lazy/layout/b;->c(IILjava/util/ArrayList;Le7/l;Lfb/a;ZIZII)V

    .line 1764
    .line 1765
    .line 1766
    move-object/from16 v9, v20

    .line 1767
    .line 1768
    move/from16 v8, v26

    .line 1769
    .line 1770
    move/from16 v6, v27

    .line 1771
    .line 1772
    if-nez v23, :cond_53

    .line 1773
    .line 1774
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/b;->b()J

    .line 1775
    .line 1776
    .line 1777
    if-nez v28, :cond_53

    .line 1778
    .line 1779
    const-wide/16 v14, 0x0

    .line 1780
    .line 1781
    long-to-int v10, v14

    .line 1782
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    .line 1783
    .line 1784
    .line 1785
    move-result v2

    .line 1786
    invoke-static {v2, v0, v1}, Ln3/b;->g(IJ)I

    .line 1787
    .line 1788
    .line 1789
    move-result v2

    .line 1790
    long-to-int v10, v14

    .line 1791
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    .line 1792
    .line 1793
    .line 1794
    move-result v10

    .line 1795
    invoke-static {v10, v0, v1}, Ln3/b;->f(IJ)I

    .line 1796
    .line 1797
    .line 1798
    move-result v0

    .line 1799
    if-eq v0, v4, :cond_52

    .line 1800
    .line 1801
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1802
    .line 1803
    .line 1804
    move-result v1

    .line 1805
    const/4 v4, 0x0

    .line 1806
    :goto_3c
    if-ge v4, v1, :cond_52

    .line 1807
    .line 1808
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v10

    .line 1812
    check-cast v10, Lf0/n;

    .line 1813
    .line 1814
    iput v0, v10, Lf0/n;->o:I

    .line 1815
    .line 1816
    add-int/lit8 v4, v4, 0x1

    .line 1817
    .line 1818
    goto :goto_3c

    .line 1819
    :cond_52
    move/from16 v33, v0

    .line 1820
    .line 1821
    :goto_3d
    move/from16 v32, v2

    .line 1822
    .line 1823
    goto :goto_3e

    .line 1824
    :cond_53
    move/from16 v33, v4

    .line 1825
    .line 1826
    goto :goto_3d

    .line 1827
    :goto_3e
    invoke-virtual {v13}, Ls8/k;->isEmpty()Z

    .line 1828
    .line 1829
    .line 1830
    move-result v0

    .line 1831
    if-eqz v0, :cond_54

    .line 1832
    .line 1833
    const/4 v0, 0x0

    .line 1834
    goto :goto_3f

    .line 1835
    :cond_54
    iget-object v0, v13, Ls8/k;->b:[Ljava/lang/Object;

    .line 1836
    .line 1837
    iget v1, v13, Ls8/k;->a:I

    .line 1838
    .line 1839
    aget-object v0, v0, v1

    .line 1840
    .line 1841
    :goto_3f
    check-cast v0, Lf0/n;

    .line 1842
    .line 1843
    if-eqz v0, :cond_55

    .line 1844
    .line 1845
    iget v0, v0, Lf0/n;->a:I

    .line 1846
    .line 1847
    move/from16 v27, v0

    .line 1848
    .line 1849
    goto :goto_40

    .line 1850
    :cond_55
    const/16 v27, 0x0

    .line 1851
    .line 1852
    :goto_40
    invoke-virtual {v13}, Ls8/k;->m()Ljava/lang/Object;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    check-cast v0, Lf0/n;

    .line 1857
    .line 1858
    if-eqz v0, :cond_56

    .line 1859
    .line 1860
    iget v0, v0, Lf0/n;->a:I

    .line 1861
    .line 1862
    move/from16 v28, v0

    .line 1863
    .line 1864
    goto :goto_41

    .line 1865
    :cond_56
    const/16 v28, 0x0

    .line 1866
    .line 1867
    :goto_41
    iget-object v0, v3, Lf0/i;->b:Lf0/g;

    .line 1868
    .line 1869
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1870
    .line 1871
    .line 1872
    sget-object v30, Ls/j;->a:Ls/v;

    .line 1873
    .line 1874
    new-instance v0, La8/q;

    .line 1875
    .line 1876
    const/4 v1, 0x4

    .line 1877
    invoke-direct {v0, v1, v11}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 1878
    .line 1879
    .line 1880
    move-object/from16 v1, p0

    .line 1881
    .line 1882
    iget-object v2, v1, Lf0/k;->f:Lh0/a0;

    .line 1883
    .line 1884
    move-object/from16 v34, v0

    .line 1885
    .line 1886
    move-object/from16 v26, v2

    .line 1887
    .line 1888
    move-object/from16 v29, v9

    .line 1889
    .line 1890
    move/from16 v31, v35

    .line 1891
    .line 1892
    invoke-static/range {v26 .. v34}, Lh0/z;->f(Lh0/a0;IILjava/util/ArrayList;Ls/v;IIILf9/k;)Ljava/util/List;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v0

    .line 1896
    if-eqz v44, :cond_58

    .line 1897
    .line 1898
    invoke-static/range {v29 .. v29}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v2

    .line 1902
    check-cast v2, Lf0/n;

    .line 1903
    .line 1904
    if-eqz v2, :cond_57

    .line 1905
    .line 1906
    iget v2, v2, Lf0/n;->a:I

    .line 1907
    .line 1908
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v2

    .line 1912
    goto :goto_43

    .line 1913
    :cond_57
    const/4 v2, 0x0

    .line 1914
    goto :goto_43

    .line 1915
    :cond_58
    invoke-virtual {v13}, Ls8/k;->isEmpty()Z

    .line 1916
    .line 1917
    .line 1918
    move-result v2

    .line 1919
    if-eqz v2, :cond_59

    .line 1920
    .line 1921
    const/4 v2, 0x0

    .line 1922
    goto :goto_42

    .line 1923
    :cond_59
    iget-object v2, v13, Ls8/k;->b:[Ljava/lang/Object;

    .line 1924
    .line 1925
    iget v3, v13, Ls8/k;->a:I

    .line 1926
    .line 1927
    aget-object v2, v2, v3

    .line 1928
    .line 1929
    :goto_42
    check-cast v2, Lf0/n;

    .line 1930
    .line 1931
    if-eqz v2, :cond_57

    .line 1932
    .line 1933
    iget v2, v2, Lf0/n;->a:I

    .line 1934
    .line 1935
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v2

    .line 1939
    :goto_43
    if-eqz v44, :cond_5b

    .line 1940
    .line 1941
    invoke-static/range {v29 .. v29}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v3

    .line 1945
    check-cast v3, Lf0/n;

    .line 1946
    .line 1947
    if-eqz v3, :cond_5a

    .line 1948
    .line 1949
    iget v3, v3, Lf0/n;->a:I

    .line 1950
    .line 1951
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v9

    .line 1955
    :goto_44
    move/from16 v3, v43

    .line 1956
    .line 1957
    goto :goto_45

    .line 1958
    :cond_5a
    move/from16 v3, v43

    .line 1959
    .line 1960
    const/4 v9, 0x0

    .line 1961
    goto :goto_45

    .line 1962
    :cond_5b
    invoke-virtual {v13}, Ls8/k;->m()Ljava/lang/Object;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v3

    .line 1966
    check-cast v3, Lf0/n;

    .line 1967
    .line 1968
    if-eqz v3, :cond_5a

    .line 1969
    .line 1970
    iget v3, v3, Lf0/n;->a:I

    .line 1971
    .line 1972
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v9

    .line 1976
    goto :goto_44

    .line 1977
    :goto_45
    if-lt v3, v7, :cond_5d

    .line 1978
    .line 1979
    if-le v6, v5, :cond_5c

    .line 1980
    .line 1981
    goto :goto_46

    .line 1982
    :cond_5c
    const/4 v5, 0x0

    .line 1983
    goto :goto_47

    .line 1984
    :cond_5d
    :goto_46
    const/4 v5, 0x1

    .line 1985
    :goto_47
    new-instance v41, Lf0/l;

    .line 1986
    .line 1987
    const/16 v46, 0x0

    .line 1988
    .line 1989
    move-object/from16 v44, v0

    .line 1990
    .line 1991
    move/from16 v45, v23

    .line 1992
    .line 1993
    move-object/from16 v43, v29

    .line 1994
    .line 1995
    invoke-direct/range {v41 .. v46}, Lf0/l;-><init>(Lf1/b1;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 1996
    .line 1997
    .line 1998
    move-object/from16 v4, v41

    .line 1999
    .line 2000
    move-object/from16 v0, v43

    .line 2001
    .line 2002
    move-object/from16 v3, v44

    .line 2003
    .line 2004
    add-int v6, v32, v37

    .line 2005
    .line 2006
    move-wide/from16 v12, p2

    .line 2007
    .line 2008
    invoke-static {v6, v12, v13}, Ln3/b;->g(IJ)I

    .line 2009
    .line 2010
    .line 2011
    move-result v6

    .line 2012
    add-int v10, v33, v36

    .line 2013
    .line 2014
    invoke-static {v10, v12, v13}, Ln3/b;->f(IJ)I

    .line 2015
    .line 2016
    .line 2017
    move-result v10

    .line 2018
    move-object/from16 v13, v39

    .line 2019
    .line 2020
    move-object/from16 v12, v51

    .line 2021
    .line 2022
    invoke-interface {v12, v6, v10, v13, v4}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v4

    .line 2026
    if-eqz v2, :cond_5e

    .line 2027
    .line 2028
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2029
    .line 2030
    .line 2031
    move-result v2

    .line 2032
    goto :goto_48

    .line 2033
    :cond_5e
    const/4 v2, 0x0

    .line 2034
    :goto_48
    if-eqz v9, :cond_5f

    .line 2035
    .line 2036
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 2037
    .line 2038
    .line 2039
    move-result v6

    .line 2040
    goto :goto_49

    .line 2041
    :cond_5f
    const/4 v6, 0x0

    .line 2042
    :goto_49
    invoke-static {v2, v6, v0, v3}, Lh0/z;->m(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v14

    .line 2046
    new-instance v2, Lf0/m;

    .line 2047
    .line 2048
    iget-wide v9, v11, Lf0/j;->d:J

    .line 2049
    .line 2050
    move-object/from16 v11, p1

    .line 2051
    .line 2052
    move/from16 v17, v7

    .line 2053
    .line 2054
    move-object v0, v12

    .line 2055
    move-object/from16 v3, v40

    .line 2056
    .line 2057
    move/from16 v19, v47

    .line 2058
    .line 2059
    move-object/from16 v18, v48

    .line 2060
    .line 2061
    move/from16 v20, v50

    .line 2062
    .line 2063
    move/from16 v15, v52

    .line 2064
    .line 2065
    move/from16 v6, v55

    .line 2066
    .line 2067
    move-object v7, v4

    .line 2068
    move v4, v8

    .line 2069
    move-wide v12, v9

    .line 2070
    move-object/from16 v10, v49

    .line 2071
    .line 2072
    move/from16 v9, v53

    .line 2073
    .line 2074
    move/from16 v8, v54

    .line 2075
    .line 2076
    invoke-direct/range {v2 .. v20}, Lf0/m;-><init>(Lf0/n;IZFLo2/n0;FZLac/w;Ln3/c;JLjava/util/List;IIILz/w0;II)V

    .line 2077
    .line 2078
    .line 2079
    :goto_4a
    invoke-interface {v0}, Lo2/r;->Q()Z

    .line 2080
    .line 2081
    .line 2082
    move-result v0

    .line 2083
    move-object/from16 v6, v38

    .line 2084
    .line 2085
    const/4 v15, 0x0

    .line 2086
    invoke-virtual {v6, v2, v0, v15}, Lf0/u;->f(Lf0/m;ZZ)V

    .line 2087
    .line 2088
    .line 2089
    return-object v2

    .line 2090
    :goto_4b
    invoke-static {v6, v13, v12}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 2091
    .line 2092
    .line 2093
    throw v0

    .line 2094
    :cond_60
    move-object/from16 v22, v0

    .line 2095
    .line 2096
    invoke-static/range {v22 .. v22}, Lc0/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 2097
    .line 2098
    .line 2099
    new-instance v0, Lac/p;

    .line 2100
    .line 2101
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2102
    .line 2103
    .line 2104
    throw v0
.end method


# virtual methods
.method public final a(Lh0/x;J)Lo2/n0;
    .locals 64

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-wide/from16 v12, p2

    .line 6
    .line 7
    iget v0, v1, Lf0/k;->a:I

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-wide/16 v14, 0x0

    .line 13
    .line 14
    invoke-static {v14, v15, v14, v15}, Ln3/l;->a(JJ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, v11, Lh0/x;->b:Lo2/i1;

    .line 19
    .line 20
    iget-object v3, v1, Lf0/k;->g:Lz/m1;

    .line 21
    .line 22
    check-cast v3, Lg0/u;

    .line 23
    .line 24
    iget-object v4, v3, Lg0/u;->s:Lf1/b1;

    .line 25
    .line 26
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-boolean v4, v3, Lg0/u;->b:Z

    .line 30
    .line 31
    const/16 v16, 0x1

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    invoke-interface {v2}, Lo2/r;->Q()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v25, 0x0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/16 v25, 0x1

    .line 46
    .line 47
    :goto_1
    sget-object v4, Lz/w0;->a:Lz/w0;

    .line 48
    .line 49
    invoke-static {v12, v13, v4}, Lp4/o;->z(JLz/w0;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v7, v1, Lf0/k;->b:Ld0/h0;

    .line 57
    .line 58
    invoke-virtual {v7, v6}, Ld0/h0;->a(Ln3/m;)F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-interface {v2, v6}, Ln3/c;->b0(F)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-interface {v2}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v7, v8}, Ld0/h0;->b(Ln3/m;)F

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    invoke-interface {v2, v8}, Ln3/c;->b0(F)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    iget v9, v7, Ld0/h0;->b:F

    .line 79
    .line 80
    invoke-interface {v2, v9}, Ln3/c;->b0(F)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    iget v7, v7, Ld0/h0;->d:F

    .line 85
    .line 86
    invoke-interface {v2, v7}, Ln3/c;->b0(F)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    add-int/2addr v7, v9

    .line 91
    add-int/2addr v8, v6

    .line 92
    sub-int v20, v7, v9

    .line 93
    .line 94
    neg-int v10, v8

    .line 95
    neg-int v14, v7

    .line 96
    invoke-static {v10, v14, v12, v13}, Ln3/b;->i(IIJ)J

    .line 97
    .line 98
    .line 99
    move-result-wide v14

    .line 100
    iget-object v10, v1, Lf0/k;->c:Lf9/a;

    .line 101
    .line 102
    invoke-interface {v10}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Lg0/h;

    .line 107
    .line 108
    iget-object v5, v10, Lg0/h;->b:Lg0/g;

    .line 109
    .line 110
    iget-object v5, v5, Lg0/g;->b:Lg0/r;

    .line 111
    .line 112
    move/from16 v36, v0

    .line 113
    .line 114
    iget-object v0, v1, Lf0/k;->h:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lg0/c;

    .line 117
    .line 118
    move-object/from16 v18, v3

    .line 119
    .line 120
    iget-object v3, v0, Lg0/c;->d:Landroid/support/v4/media/session/t;

    .line 121
    .line 122
    move-object/from16 v19, v4

    .line 123
    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    iget-wide v3, v0, Lg0/c;->b:J

    .line 127
    .line 128
    invoke-static {v3, v4, v14, v15}, Ln3/a;->b(JJ)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    iget v3, v0, Lg0/c;->c:F

    .line 135
    .line 136
    invoke-interface {v2}, Ln3/c;->a()F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    cmpg-float v3, v3, v4

    .line 141
    .line 142
    if-nez v3, :cond_2

    .line 143
    .line 144
    iget-object v0, v0, Lg0/c;->d:Landroid/support/v4/media/session/t;

    .line 145
    .line 146
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    iput-wide v14, v0, Lg0/c;->b:J

    .line 151
    .line 152
    invoke-interface {v2}, Ln3/c;->a()F

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iput v3, v0, Lg0/c;->c:F

    .line 157
    .line 158
    iget-object v3, v0, Lg0/c;->a:La8/w;

    .line 159
    .line 160
    new-instance v4, Ln3/a;

    .line 161
    .line 162
    invoke-direct {v4, v14, v15}, Ln3/a;-><init>(J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v11, v4}, La8/w;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Landroid/support/v4/media/session/t;

    .line 170
    .line 171
    iput-object v3, v0, Lg0/c;->d:Landroid/support/v4/media/session/t;

    .line 172
    .line 173
    move-object v0, v3

    .line 174
    :goto_2
    iget-object v3, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v3, [I

    .line 177
    .line 178
    array-length v3, v3

    .line 179
    iget v4, v5, Lg0/r;->i:I

    .line 180
    .line 181
    move-object/from16 v31, v0

    .line 182
    .line 183
    if-eq v3, v4, :cond_3

    .line 184
    .line 185
    iput v3, v5, Lg0/r;->i:I

    .line 186
    .line 187
    iget-object v4, v5, Lg0/r;->b:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 190
    .line 191
    .line 192
    new-instance v0, Lg0/p;

    .line 193
    .line 194
    move/from16 v24, v3

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    invoke-direct {v0, v3, v3}, Lg0/p;-><init>(II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    iput v3, v5, Lg0/r;->c:I

    .line 204
    .line 205
    iput v3, v5, Lg0/r;->d:I

    .line 206
    .line 207
    iput v3, v5, Lg0/r;->e:I

    .line 208
    .line 209
    const/4 v0, -0x1

    .line 210
    iput v0, v5, Lg0/r;->f:I

    .line 211
    .line 212
    iget-object v0, v5, Lg0/r;->g:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_3
    move/from16 v24, v3

    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    :goto_3
    iget-object v0, v1, Lf0/k;->d:Ld0/g;

    .line 222
    .line 223
    invoke-interface {v0}, Ld0/g;->a()F

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    invoke-interface {v2, v4}, Ln3/c;->b0(F)I

    .line 228
    .line 229
    .line 230
    move-result v33

    .line 231
    iget-object v4, v10, Lg0/h;->b:Lg0/g;

    .line 232
    .line 233
    invoke-virtual {v4}, Lg0/g;->k()Le7/l;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget v4, v4, Le7/l;->b:I

    .line 238
    .line 239
    invoke-static {v12, v13}, Ln3/a;->g(J)I

    .line 240
    .line 241
    .line 242
    move-result v17

    .line 243
    sub-int v11, v17, v7

    .line 244
    .line 245
    move/from16 v32, v4

    .line 246
    .line 247
    int-to-long v3, v6

    .line 248
    const/16 v6, 0x20

    .line 249
    .line 250
    shl-long/2addr v3, v6

    .line 251
    move-object v6, v2

    .line 252
    move-wide/from16 v22, v3

    .line 253
    .line 254
    int-to-long v2, v9

    .line 255
    const-wide v26, 0xffffffffL

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    and-long v2, v2, v26

    .line 261
    .line 262
    or-long v2, v22, v2

    .line 263
    .line 264
    new-instance v37, Lg0/k;

    .line 265
    .line 266
    iget-object v4, v1, Lf0/k;->g:Lz/m1;

    .line 267
    .line 268
    check-cast v4, Lg0/u;

    .line 269
    .line 270
    move-object/from16 v22, v0

    .line 271
    .line 272
    move-object/from16 v35, v5

    .line 273
    .line 274
    move-object/from16 v44, v6

    .line 275
    .line 276
    move/from16 v45, v7

    .line 277
    .line 278
    move/from16 v46, v8

    .line 279
    .line 280
    move v7, v9

    .line 281
    move-object/from16 v0, v18

    .line 282
    .line 283
    move/from16 v8, v20

    .line 284
    .line 285
    move/from16 v5, v33

    .line 286
    .line 287
    move-object v6, v4

    .line 288
    move-object/from16 v4, p1

    .line 289
    .line 290
    move-wide/from16 v62, v2

    .line 291
    .line 292
    move-object v3, v10

    .line 293
    move-wide/from16 v9, v62

    .line 294
    .line 295
    move-object/from16 v2, v37

    .line 296
    .line 297
    move-object/from16 v37, v19

    .line 298
    .line 299
    invoke-direct/range {v2 .. v10}, Lg0/k;-><init>(Lg0/h;Lh0/x;ILg0/u;IIJ)V

    .line 300
    .line 301
    .line 302
    new-instance v30, Lg0/l;

    .line 303
    .line 304
    move-object/from16 v34, v2

    .line 305
    .line 306
    invoke-direct/range {v30 .. v35}, Lg0/l;-><init>(Landroid/support/v4/media/session/t;IILg0/k;Lg0/r;)V

    .line 307
    .line 308
    .line 309
    move-object/from16 v6, v30

    .line 310
    .line 311
    move/from16 v4, v32

    .line 312
    .line 313
    move-object/from16 v5, v34

    .line 314
    .line 315
    move-object/from16 v2, v35

    .line 316
    .line 317
    new-instance v9, La8/v;

    .line 318
    .line 319
    const/16 v10, 0x9

    .line 320
    .line 321
    invoke-direct {v9, v10, v2, v6}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    new-instance v10, La8/q;

    .line 325
    .line 326
    move/from16 v30, v8

    .line 327
    .line 328
    const/16 v8, 0xa

    .line 329
    .line 330
    invoke-direct {v10, v8, v2}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    const/16 v17, 0x0

    .line 338
    .line 339
    if-eqz v8, :cond_4

    .line 340
    .line 341
    invoke-virtual {v8}, Lp1/f;->e()Lf9/k;

    .line 342
    .line 343
    .line 344
    move-result-object v18

    .line 345
    move-object/from16 v31, v9

    .line 346
    .line 347
    move-object/from16 v9, v18

    .line 348
    .line 349
    :goto_4
    move-object/from16 v32, v10

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_4
    move-object/from16 v31, v9

    .line 353
    .line 354
    move-object/from16 v9, v17

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :goto_5
    invoke-static {v8}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    move/from16 v35, v11

    .line 362
    .line 363
    :try_start_0
    iget-object v11, v0, Lg0/u;->d:Lf0/p;

    .line 364
    .line 365
    move-object/from16 v34, v6

    .line 366
    .line 367
    iget-object v6, v11, Lf0/p;->b:Lf1/h1;

    .line 368
    .line 369
    invoke-virtual {v6}, Lf1/h1;->f()I

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    move/from16 v47, v7

    .line 374
    .line 375
    iget-object v7, v11, Lf0/p;->e:Ljava/lang/Object;

    .line 376
    .line 377
    invoke-static {v6, v3, v7}, Lh0/z;->i(ILh0/v;Ljava/lang/Object;)I

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    if-eq v6, v7, :cond_5

    .line 382
    .line 383
    iget-object v12, v11, Lf0/p;->b:Lf1/h1;

    .line 384
    .line 385
    invoke-virtual {v12, v7}, Lf1/h1;->g(I)V

    .line 386
    .line 387
    .line 388
    iget-object v12, v11, Lf0/p;->f:Lh0/b0;

    .line 389
    .line 390
    invoke-virtual {v12, v6}, Lh0/b0;->b(I)V

    .line 391
    .line 392
    .line 393
    :cond_5
    if-lt v7, v4, :cond_7

    .line 394
    .line 395
    if-gtz v4, :cond_6

    .line 396
    .line 397
    goto :goto_6

    .line 398
    :cond_6
    add-int/lit8 v6, v4, -0x1

    .line 399
    .line 400
    invoke-virtual {v2, v6}, Lg0/r;->c(I)I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    const/4 v6, 0x0

    .line 405
    goto :goto_7

    .line 406
    :catchall_0
    move-exception v0

    .line 407
    goto/16 :goto_46

    .line 408
    .line 409
    :cond_7
    :goto_6
    invoke-virtual {v2, v7}, Lg0/r;->c(I)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    iget-object v6, v11, Lf0/p;->c:Lf1/h1;

    .line 414
    .line 415
    invoke-virtual {v6}, Lf1/h1;->f()I

    .line 416
    .line 417
    .line 418
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :goto_7
    invoke-static {v8, v10, v9}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 420
    .line 421
    .line 422
    iget-object v7, v0, Lg0/u;->q:Lh0/e0;

    .line 423
    .line 424
    iget-object v8, v0, Lg0/u;->n:Lh0/k;

    .line 425
    .line 426
    invoke-static {v3, v7, v8}, Lh0/z;->g(Lh0/v;Lh0/e0;Lh0/k;)Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    invoke-interface/range {v44 .. v44}, Lo2/r;->Q()Z

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    if-nez v7, :cond_9

    .line 435
    .line 436
    if-nez v25, :cond_8

    .line 437
    .line 438
    goto :goto_8

    .line 439
    :cond_8
    iget-object v7, v0, Lg0/u;->v:Lu0/j;

    .line 440
    .line 441
    iget-object v7, v7, Lu0/j;->c:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v7, Lv/k;

    .line 444
    .line 445
    iget-object v7, v7, Lv/k;->b:Lf1/k1;

    .line 446
    .line 447
    invoke-virtual {v7}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    check-cast v7, Ljava/lang/Number;

    .line 452
    .line 453
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    goto :goto_9

    .line 458
    :cond_9
    :goto_8
    iget v7, v0, Lg0/u;->g:F

    .line 459
    .line 460
    :goto_9
    iget-object v8, v0, Lg0/u;->m:Landroidx/compose/foundation/lazy/layout/b;

    .line 461
    .line 462
    invoke-interface/range {v44 .. v44}, Lo2/r;->Q()Z

    .line 463
    .line 464
    .line 465
    move-result v23

    .line 466
    iget-object v9, v0, Lg0/u;->c:Lg0/m;

    .line 467
    .line 468
    iget-object v10, v0, Lg0/u;->r:Lf1/b1;

    .line 469
    .line 470
    if-ltz v47, :cond_a

    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_a
    const-string v11, "negative beforeContentPadding"

    .line 474
    .line 475
    invoke-static {v11}, Lc0/b;->a(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    :goto_a
    if-ltz v30, :cond_b

    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_b
    const-string v11, "negative afterContentPadding"

    .line 482
    .line 483
    invoke-static {v11}, Lc0/b;->a(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :goto_b
    sget-object v11, Ls8/x;->a:Ls8/x;

    .line 487
    .line 488
    iget-object v12, v5, Lg0/k;->b:Lg0/h;

    .line 489
    .line 490
    move-object v13, v10

    .line 491
    iget-object v10, v1, Lf0/k;->e:Lac/w;

    .line 492
    .line 493
    sget-object v38, Ls8/w;->a:Ls8/w;

    .line 494
    .line 495
    if-gtz v4, :cond_d

    .line 496
    .line 497
    invoke-static {v14, v15}, Ln3/a;->j(J)I

    .line 498
    .line 499
    .line 500
    move-result v18

    .line 501
    invoke-static {v14, v15}, Ln3/a;->i(J)I

    .line 502
    .line 503
    .line 504
    move-result v19

    .line 505
    new-instance v20, Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .line 509
    .line 510
    iget-object v2, v12, Lg0/h;->c:Le7/l;

    .line 511
    .line 512
    const/16 v26, 0x0

    .line 513
    .line 514
    const/16 v27, 0x0

    .line 515
    .line 516
    move-object/from16 v21, v2

    .line 517
    .line 518
    move-object/from16 v22, v5

    .line 519
    .line 520
    move-object/from16 v17, v8

    .line 521
    .line 522
    invoke-virtual/range {v17 .. v27}, Landroidx/compose/foundation/lazy/layout/b;->c(IILjava/util/ArrayList;Le7/l;Lfb/a;ZIZII)V

    .line 523
    .line 524
    .line 525
    move-object/from16 v5, v17

    .line 526
    .line 527
    if-nez v23, :cond_c

    .line 528
    .line 529
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/b;->b()J

    .line 530
    .line 531
    .line 532
    if-nez v36, :cond_c

    .line 533
    .line 534
    const-wide/16 v2, 0x0

    .line 535
    .line 536
    long-to-int v4, v2

    .line 537
    invoke-static {v4, v14, v15}, Ln3/b;->g(IJ)I

    .line 538
    .line 539
    .line 540
    move-result v18

    .line 541
    long-to-int v3, v2

    .line 542
    invoke-static {v3, v14, v15}, Ln3/b;->f(IJ)I

    .line 543
    .line 544
    .line 545
    move-result v19

    .line 546
    :cond_c
    new-instance v2, Lv/x0;

    .line 547
    .line 548
    const/16 v3, 0x15

    .line 549
    .line 550
    invoke-direct {v2, v3}, Lv/x0;-><init>(I)V

    .line 551
    .line 552
    .line 553
    add-int v3, v18, v46

    .line 554
    .line 555
    move-wide/from16 v4, p2

    .line 556
    .line 557
    invoke-static {v3, v4, v5}, Ln3/b;->g(IJ)I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    add-int v6, v19, v45

    .line 562
    .line 563
    invoke-static {v6, v4, v5}, Ln3/b;->f(IJ)I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    move-object/from16 v5, v44

    .line 568
    .line 569
    invoke-interface {v5, v3, v4, v11, v2}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    move/from16 v8, v47

    .line 574
    .line 575
    neg-int v2, v8

    .line 576
    add-int v17, v35, v30

    .line 577
    .line 578
    move/from16 v16, v2

    .line 579
    .line 580
    new-instance v2, Lg0/m;

    .line 581
    .line 582
    const/4 v9, 0x0

    .line 583
    const/16 v18, 0x0

    .line 584
    .line 585
    const/4 v3, 0x0

    .line 586
    const/4 v4, 0x0

    .line 587
    const/4 v5, 0x0

    .line 588
    const/4 v6, 0x0

    .line 589
    const/4 v8, 0x0

    .line 590
    move-object/from16 v11, p1

    .line 591
    .line 592
    move-object/from16 v47, v0

    .line 593
    .line 594
    move/from16 v12, v24

    .line 595
    .line 596
    move/from16 v20, v30

    .line 597
    .line 598
    move-object/from16 v13, v31

    .line 599
    .line 600
    move-object/from16 v14, v32

    .line 601
    .line 602
    move/from16 v21, v33

    .line 603
    .line 604
    move-object/from16 v19, v37

    .line 605
    .line 606
    move-object/from16 v15, v38

    .line 607
    .line 608
    move-object/from16 v0, v44

    .line 609
    .line 610
    invoke-direct/range {v2 .. v21}, Lg0/m;-><init>(Lg0/o;IZFLo2/n0;FZLac/w;Ln3/c;ILf9/k;Lf9/k;Ljava/util/List;IIILz/w0;II)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_45

    .line 614
    .line 615
    :cond_d
    move/from16 v19, v2

    .line 616
    .line 617
    move/from16 v20, v6

    .line 618
    .line 619
    move/from16 v27, v7

    .line 620
    .line 621
    move-object/from16 v51, v10

    .line 622
    .line 623
    move-object/from16 v49, v13

    .line 624
    .line 625
    move/from16 v26, v24

    .line 626
    .line 627
    move-object/from16 v13, v31

    .line 628
    .line 629
    move-object/from16 v48, v32

    .line 630
    .line 631
    move/from16 v10, v33

    .line 632
    .line 633
    move-object/from16 v50, v37

    .line 634
    .line 635
    move-object/from16 v18, v38

    .line 636
    .line 637
    move-object v7, v5

    .line 638
    move-object/from16 v24, v8

    .line 639
    .line 640
    move/from16 v8, v47

    .line 641
    .line 642
    move-object/from16 v47, v0

    .line 643
    .line 644
    move-object/from16 v0, v44

    .line 645
    .line 646
    move/from16 v44, v30

    .line 647
    .line 648
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    .line 649
    .line 650
    .line 651
    move-result v30

    .line 652
    sub-int v20, v20, v30

    .line 653
    .line 654
    if-nez v19, :cond_e

    .line 655
    .line 656
    if-gez v20, :cond_e

    .line 657
    .line 658
    add-int v30, v30, v20

    .line 659
    .line 660
    const/16 v20, 0x0

    .line 661
    .line 662
    :cond_e
    move/from16 v52, v10

    .line 663
    .line 664
    new-instance v10, Ls8/k;

    .line 665
    .line 666
    invoke-direct {v10}, Ls8/k;-><init>()V

    .line 667
    .line 668
    .line 669
    move-object/from16 v53, v13

    .line 670
    .line 671
    neg-int v13, v8

    .line 672
    if-gez v52, :cond_f

    .line 673
    .line 674
    move/from16 v31, v52

    .line 675
    .line 676
    :goto_c
    move/from16 v54, v13

    .line 677
    .line 678
    goto :goto_d

    .line 679
    :cond_f
    const/16 v31, 0x0

    .line 680
    .line 681
    goto :goto_c

    .line 682
    :goto_d
    add-int v13, v54, v31

    .line 683
    .line 684
    add-int v20, v20, v13

    .line 685
    .line 686
    move-object/from16 v55, v0

    .line 687
    .line 688
    move/from16 v0, v20

    .line 689
    .line 690
    :goto_e
    if-gez v0, :cond_10

    .line 691
    .line 692
    if-lez v19, :cond_10

    .line 693
    .line 694
    move-object/from16 v56, v11

    .line 695
    .line 696
    add-int/lit8 v11, v19, -0x1

    .line 697
    .line 698
    move-object/from16 v5, v34

    .line 699
    .line 700
    invoke-virtual {v5, v11}, Lg0/l;->b(I)Lg0/o;

    .line 701
    .line 702
    .line 703
    move-result-object v6

    .line 704
    move/from16 v19, v11

    .line 705
    .line 706
    const/4 v11, 0x0

    .line 707
    invoke-virtual {v10, v11, v6}, Ls8/k;->add(ILjava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    iget v6, v6, Lg0/o;->g:I

    .line 711
    .line 712
    add-int/2addr v0, v6

    .line 713
    move-object/from16 v11, v56

    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_10
    move-object/from16 v56, v11

    .line 717
    .line 718
    move-object/from16 v5, v34

    .line 719
    .line 720
    if-ge v0, v13, :cond_11

    .line 721
    .line 722
    sub-int v0, v13, v0

    .line 723
    .line 724
    sub-int v30, v30, v0

    .line 725
    .line 726
    move v0, v13

    .line 727
    :cond_11
    move/from16 v6, v30

    .line 728
    .line 729
    sub-int/2addr v0, v13

    .line 730
    add-int v11, v35, v44

    .line 731
    .line 732
    move/from16 v57, v11

    .line 733
    .line 734
    if-gez v11, :cond_12

    .line 735
    .line 736
    const/4 v11, 0x0

    .line 737
    :cond_12
    neg-int v1, v0

    .line 738
    move/from16 v20, v0

    .line 739
    .line 740
    move-object/from16 v32, v12

    .line 741
    .line 742
    move/from16 v31, v19

    .line 743
    .line 744
    const/4 v0, 0x0

    .line 745
    const/16 v30, 0x0

    .line 746
    .line 747
    :goto_f
    iget v12, v10, Ls8/k;->c:I

    .line 748
    .line 749
    if-ge v0, v12, :cond_14

    .line 750
    .line 751
    if-lt v1, v11, :cond_13

    .line 752
    .line 753
    invoke-virtual {v10, v0}, Ls8/k;->d(I)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    const/16 v30, 0x1

    .line 757
    .line 758
    goto :goto_f

    .line 759
    :cond_13
    add-int/lit8 v31, v31, 0x1

    .line 760
    .line 761
    invoke-virtual {v10, v0}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v12

    .line 765
    check-cast v12, Lg0/o;

    .line 766
    .line 767
    iget v12, v12, Lg0/o;->g:I

    .line 768
    .line 769
    add-int/2addr v1, v12

    .line 770
    add-int/lit8 v0, v0, 0x1

    .line 771
    .line 772
    goto :goto_f

    .line 773
    :cond_14
    move/from16 v0, v30

    .line 774
    .line 775
    move/from16 v12, v31

    .line 776
    .line 777
    :goto_10
    if-ge v12, v4, :cond_16

    .line 778
    .line 779
    if-lt v1, v11, :cond_15

    .line 780
    .line 781
    if-lez v1, :cond_15

    .line 782
    .line 783
    invoke-virtual {v10}, Ls8/k;->isEmpty()Z

    .line 784
    .line 785
    .line 786
    move-result v30

    .line 787
    if-eqz v30, :cond_16

    .line 788
    .line 789
    :cond_15
    move/from16 v58, v0

    .line 790
    .line 791
    goto :goto_12

    .line 792
    :cond_16
    move/from16 v58, v0

    .line 793
    .line 794
    :goto_11
    move/from16 v0, v35

    .line 795
    .line 796
    goto :goto_14

    .line 797
    :goto_12
    invoke-virtual {v5, v12}, Lg0/l;->b(I)Lg0/o;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    move/from16 v30, v11

    .line 802
    .line 803
    iget v11, v0, Lg0/o;->g:I

    .line 804
    .line 805
    move/from16 v31, v11

    .line 806
    .line 807
    iget-object v11, v0, Lg0/o;->b:[Lg0/n;

    .line 808
    .line 809
    move/from16 v33, v12

    .line 810
    .line 811
    array-length v12, v11

    .line 812
    if-nez v12, :cond_17

    .line 813
    .line 814
    goto :goto_11

    .line 815
    :cond_17
    add-int v1, v1, v31

    .line 816
    .line 817
    if-gt v1, v13, :cond_18

    .line 818
    .line 819
    invoke-static {v11}, Ls8/l;->e0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v11

    .line 823
    check-cast v11, Lg0/n;

    .line 824
    .line 825
    iget v11, v11, Lg0/n;->a:I

    .line 826
    .line 827
    add-int/lit8 v12, v4, -0x1

    .line 828
    .line 829
    if-eq v11, v12, :cond_18

    .line 830
    .line 831
    add-int/lit8 v12, v33, 0x1

    .line 832
    .line 833
    sub-int v20, v20, v31

    .line 834
    .line 835
    move/from16 v19, v12

    .line 836
    .line 837
    const/4 v0, 0x1

    .line 838
    goto :goto_13

    .line 839
    :cond_18
    invoke-virtual {v10, v0}, Ls8/k;->addLast(Ljava/lang/Object;)V

    .line 840
    .line 841
    .line 842
    move/from16 v0, v58

    .line 843
    .line 844
    :goto_13
    add-int/lit8 v12, v33, 0x1

    .line 845
    .line 846
    move/from16 v11, v30

    .line 847
    .line 848
    goto :goto_10

    .line 849
    :goto_14
    if-ge v1, v0, :cond_1b

    .line 850
    .line 851
    sub-int v11, v0, v1

    .line 852
    .line 853
    sub-int v20, v20, v11

    .line 854
    .line 855
    add-int/2addr v1, v11

    .line 856
    move/from16 v12, v20

    .line 857
    .line 858
    :goto_15
    if-ge v12, v8, :cond_19

    .line 859
    .line 860
    if-lez v19, :cond_19

    .line 861
    .line 862
    add-int/lit8 v13, v19, -0x1

    .line 863
    .line 864
    move/from16 v19, v1

    .line 865
    .line 866
    invoke-virtual {v5, v13}, Lg0/l;->b(I)Lg0/o;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    move/from16 v31, v8

    .line 871
    .line 872
    const/4 v8, 0x0

    .line 873
    invoke-virtual {v10, v8, v1}, Ls8/k;->add(ILjava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    iget v1, v1, Lg0/o;->g:I

    .line 877
    .line 878
    add-int/2addr v12, v1

    .line 879
    move/from16 v1, v19

    .line 880
    .line 881
    move/from16 v8, v31

    .line 882
    .line 883
    move/from16 v19, v13

    .line 884
    .line 885
    goto :goto_15

    .line 886
    :cond_19
    move/from16 v19, v1

    .line 887
    .line 888
    move/from16 v31, v8

    .line 889
    .line 890
    add-int/2addr v11, v6

    .line 891
    if-gez v12, :cond_1a

    .line 892
    .line 893
    add-int/2addr v11, v12

    .line 894
    add-int v1, v19, v12

    .line 895
    .line 896
    const/4 v12, 0x0

    .line 897
    goto :goto_16

    .line 898
    :cond_1a
    move/from16 v1, v19

    .line 899
    .line 900
    goto :goto_16

    .line 901
    :cond_1b
    move/from16 v31, v8

    .line 902
    .line 903
    move v11, v6

    .line 904
    move/from16 v12, v20

    .line 905
    .line 906
    :goto_16
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    .line 907
    .line 908
    .line 909
    move-result v8

    .line 910
    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    .line 911
    .line 912
    .line 913
    move-result v8

    .line 914
    invoke-static {v11}, Ljava/lang/Integer;->signum(I)I

    .line 915
    .line 916
    .line 917
    move-result v13

    .line 918
    if-ne v8, v13, :cond_1c

    .line 919
    .line 920
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    .line 921
    .line 922
    .line 923
    move-result v8

    .line 924
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 925
    .line 926
    .line 927
    move-result v8

    .line 928
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 929
    .line 930
    .line 931
    move-result v13

    .line 932
    if-lt v8, v13, :cond_1c

    .line 933
    .line 934
    int-to-float v8, v11

    .line 935
    goto :goto_17

    .line 936
    :cond_1c
    move/from16 v8, v27

    .line 937
    .line 938
    :goto_17
    sub-float v13, v27, v8

    .line 939
    .line 940
    const/16 v19, 0x0

    .line 941
    .line 942
    if-eqz v23, :cond_1d

    .line 943
    .line 944
    if-le v11, v6, :cond_1d

    .line 945
    .line 946
    cmpg-float v20, v13, v19

    .line 947
    .line 948
    if-gtz v20, :cond_1d

    .line 949
    .line 950
    sub-int/2addr v11, v6

    .line 951
    int-to-float v6, v11

    .line 952
    add-float v19, v6, v13

    .line 953
    .line 954
    move/from16 v6, v19

    .line 955
    .line 956
    goto :goto_18

    .line 957
    :cond_1d
    const/4 v6, 0x0

    .line 958
    :goto_18
    if-ltz v12, :cond_1e

    .line 959
    .line 960
    goto :goto_19

    .line 961
    :cond_1e
    const-string v11, "negative initial offset"

    .line 962
    .line 963
    invoke-static {v11}, Lc0/b;->a(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    :goto_19
    neg-int v11, v12

    .line 967
    invoke-virtual {v10}, Ls8/k;->first()Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v13

    .line 971
    check-cast v13, Lg0/o;

    .line 972
    .line 973
    move/from16 v35, v6

    .line 974
    .line 975
    iget-object v6, v13, Lg0/o;->b:[Lg0/n;

    .line 976
    .line 977
    invoke-static {v6}, Ls8/l;->X([Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v6

    .line 981
    check-cast v6, Lg0/n;

    .line 982
    .line 983
    if-eqz v6, :cond_1f

    .line 984
    .line 985
    iget v6, v6, Lg0/n;->a:I

    .line 986
    .line 987
    goto :goto_1a

    .line 988
    :cond_1f
    const/4 v6, 0x0

    .line 989
    :goto_1a
    invoke-virtual {v10}, Ls8/k;->m()Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v19

    .line 993
    move/from16 v59, v8

    .line 994
    .line 995
    move-object/from16 v8, v19

    .line 996
    .line 997
    check-cast v8, Lg0/o;

    .line 998
    .line 999
    if-eqz v8, :cond_21

    .line 1000
    .line 1001
    iget-object v8, v8, Lg0/o;->b:[Lg0/n;

    .line 1002
    .line 1003
    move/from16 v19, v11

    .line 1004
    .line 1005
    array-length v11, v8

    .line 1006
    if-nez v11, :cond_20

    .line 1007
    .line 1008
    move-object/from16 v8, v17

    .line 1009
    .line 1010
    goto :goto_1b

    .line 1011
    :cond_20
    array-length v11, v8

    .line 1012
    add-int/lit8 v11, v11, -0x1

    .line 1013
    .line 1014
    aget-object v8, v8, v11

    .line 1015
    .line 1016
    :goto_1b
    if-eqz v8, :cond_22

    .line 1017
    .line 1018
    iget v8, v8, Lg0/n;->a:I

    .line 1019
    .line 1020
    goto :goto_1c

    .line 1021
    :cond_21
    move/from16 v19, v11

    .line 1022
    .line 1023
    :cond_22
    const/4 v8, 0x0

    .line 1024
    :goto_1c
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1025
    .line 1026
    .line 1027
    move-result v11

    .line 1028
    move/from16 v20, v12

    .line 1029
    .line 1030
    move-object/from16 v30, v13

    .line 1031
    .line 1032
    move-object/from16 v27, v17

    .line 1033
    .line 1034
    const/4 v12, 0x0

    .line 1035
    :goto_1d
    iget-object v13, v5, Lg0/l;->e:Lg0/r;

    .line 1036
    .line 1037
    if-ge v12, v11, :cond_25

    .line 1038
    .line 1039
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v33

    .line 1043
    check-cast v33, Ljava/lang/Number;

    .line 1044
    .line 1045
    move/from16 v34, v11

    .line 1046
    .line 1047
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Number;->intValue()I

    .line 1048
    .line 1049
    .line 1050
    move-result v11

    .line 1051
    if-ltz v11, :cond_24

    .line 1052
    .line 1053
    if-ge v11, v6, :cond_24

    .line 1054
    .line 1055
    move/from16 v33, v6

    .line 1056
    .line 1057
    iget v6, v13, Lg0/r;->i:I

    .line 1058
    .line 1059
    invoke-virtual {v13, v11}, Lg0/r;->e(I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v6

    .line 1063
    const/4 v13, 0x0

    .line 1064
    invoke-virtual {v5, v13, v6}, Lg0/l;->a(II)J

    .line 1065
    .line 1066
    .line 1067
    move-result-wide v39

    .line 1068
    const/16 v41, 0x0

    .line 1069
    .line 1070
    iget v13, v7, Lg0/k;->d:I

    .line 1071
    .line 1072
    move/from16 v42, v6

    .line 1073
    .line 1074
    move-object/from16 v37, v7

    .line 1075
    .line 1076
    move/from16 v38, v11

    .line 1077
    .line 1078
    move/from16 v43, v13

    .line 1079
    .line 1080
    invoke-virtual/range {v37 .. v43}, Lg0/k;->u0(IJIII)Lg0/n;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v6

    .line 1084
    if-nez v27, :cond_23

    .line 1085
    .line 1086
    new-instance v27, Ljava/util/ArrayList;

    .line 1087
    .line 1088
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .line 1090
    .line 1091
    :cond_23
    move-object/from16 v11, v27

    .line 1092
    .line 1093
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-object/from16 v27, v11

    .line 1097
    .line 1098
    goto :goto_1e

    .line 1099
    :cond_24
    move/from16 v33, v6

    .line 1100
    .line 1101
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    .line 1102
    .line 1103
    move/from16 v6, v33

    .line 1104
    .line 1105
    move/from16 v11, v34

    .line 1106
    .line 1107
    goto :goto_1d

    .line 1108
    :cond_25
    move/from16 v33, v6

    .line 1109
    .line 1110
    if-nez v27, :cond_26

    .line 1111
    .line 1112
    move-object/from16 v6, v18

    .line 1113
    .line 1114
    goto :goto_1f

    .line 1115
    :cond_26
    move-object/from16 v6, v27

    .line 1116
    .line 1117
    :goto_1f
    if-eqz v23, :cond_31

    .line 1118
    .line 1119
    if-eqz v9, :cond_31

    .line 1120
    .line 1121
    iget-object v9, v9, Lg0/m;->m:Ljava/lang/Object;

    .line 1122
    .line 1123
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1124
    .line 1125
    .line 1126
    move-result v11

    .line 1127
    if-nez v11, :cond_31

    .line 1128
    .line 1129
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 1130
    .line 1131
    .line 1132
    move-result v11

    .line 1133
    add-int/lit8 v11, v11, -0x1

    .line 1134
    .line 1135
    :goto_20
    const/4 v12, -0x1

    .line 1136
    if-ge v12, v11, :cond_29

    .line 1137
    .line 1138
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v12

    .line 1142
    check-cast v12, Lg0/n;

    .line 1143
    .line 1144
    iget v12, v12, Lg0/n;->a:I

    .line 1145
    .line 1146
    if-le v12, v8, :cond_28

    .line 1147
    .line 1148
    if-eqz v11, :cond_27

    .line 1149
    .line 1150
    add-int/lit8 v12, v11, -0x1

    .line 1151
    .line 1152
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v12

    .line 1156
    check-cast v12, Lg0/n;

    .line 1157
    .line 1158
    iget v12, v12, Lg0/n;->a:I

    .line 1159
    .line 1160
    if-gt v12, v8, :cond_28

    .line 1161
    .line 1162
    :cond_27
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v11

    .line 1166
    check-cast v11, Lg0/n;

    .line 1167
    .line 1168
    goto :goto_21

    .line 1169
    :cond_28
    add-int/lit8 v11, v11, -0x1

    .line 1170
    .line 1171
    goto :goto_20

    .line 1172
    :cond_29
    move-object/from16 v11, v17

    .line 1173
    .line 1174
    :goto_21
    invoke-static {v9}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v9

    .line 1178
    check-cast v9, Lg0/n;

    .line 1179
    .line 1180
    invoke-static {v10}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v12

    .line 1184
    check-cast v12, Lg0/o;

    .line 1185
    .line 1186
    if-eqz v12, :cond_2a

    .line 1187
    .line 1188
    iget v12, v12, Lg0/o;->a:I

    .line 1189
    .line 1190
    add-int/lit8 v12, v12, 0x1

    .line 1191
    .line 1192
    goto :goto_22

    .line 1193
    :cond_2a
    const/4 v12, 0x0

    .line 1194
    :goto_22
    if-eqz v11, :cond_31

    .line 1195
    .line 1196
    iget v11, v11, Lg0/n;->a:I

    .line 1197
    .line 1198
    iget v9, v9, Lg0/n;->a:I

    .line 1199
    .line 1200
    move/from16 v34, v8

    .line 1201
    .line 1202
    add-int/lit8 v8, v4, -0x1

    .line 1203
    .line 1204
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    .line 1205
    .line 1206
    .line 1207
    move-result v8

    .line 1208
    if-gt v11, v8, :cond_30

    .line 1209
    .line 1210
    move-object/from16 v9, v17

    .line 1211
    .line 1212
    :goto_23
    move-object/from16 v27, v6

    .line 1213
    .line 1214
    if-eqz v9, :cond_2d

    .line 1215
    .line 1216
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 1217
    .line 1218
    .line 1219
    move-result v6

    .line 1220
    const/4 v2, 0x0

    .line 1221
    :goto_24
    if-ge v2, v6, :cond_2d

    .line 1222
    .line 1223
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v37

    .line 1227
    move/from16 v38, v2

    .line 1228
    .line 1229
    move-object/from16 v2, v37

    .line 1230
    .line 1231
    check-cast v2, Lg0/o;

    .line 1232
    .line 1233
    iget-object v2, v2, Lg0/o;->b:[Lg0/n;

    .line 1234
    .line 1235
    move/from16 v37, v6

    .line 1236
    .line 1237
    array-length v6, v2

    .line 1238
    move-object/from16 v39, v2

    .line 1239
    .line 1240
    const/4 v2, 0x0

    .line 1241
    :goto_25
    if-ge v2, v6, :cond_2c

    .line 1242
    .line 1243
    move/from16 v40, v2

    .line 1244
    .line 1245
    aget-object v2, v39, v40

    .line 1246
    .line 1247
    iget v2, v2, Lg0/n;->a:I

    .line 1248
    .line 1249
    if-ne v2, v11, :cond_2b

    .line 1250
    .line 1251
    goto :goto_26

    .line 1252
    :cond_2b
    add-int/lit8 v2, v40, 0x1

    .line 1253
    .line 1254
    goto :goto_25

    .line 1255
    :cond_2c
    add-int/lit8 v2, v38, 0x1

    .line 1256
    .line 1257
    move/from16 v6, v37

    .line 1258
    .line 1259
    goto :goto_24

    .line 1260
    :cond_2d
    if-nez v9, :cond_2e

    .line 1261
    .line 1262
    new-instance v9, Ljava/util/ArrayList;

    .line 1263
    .line 1264
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .line 1266
    .line 1267
    :cond_2e
    invoke-virtual {v5, v12}, Lg0/l;->b(I)Lg0/o;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    add-int/lit8 v12, v12, 0x1

    .line 1272
    .line 1273
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    :goto_26
    if-eq v11, v8, :cond_2f

    .line 1277
    .line 1278
    add-int/lit8 v11, v11, 0x1

    .line 1279
    .line 1280
    move-object/from16 v6, v27

    .line 1281
    .line 1282
    goto :goto_23

    .line 1283
    :cond_2f
    move-object/from16 v38, v9

    .line 1284
    .line 1285
    goto :goto_28

    .line 1286
    :cond_30
    move-object/from16 v27, v6

    .line 1287
    .line 1288
    goto :goto_27

    .line 1289
    :cond_31
    move-object/from16 v27, v6

    .line 1290
    .line 1291
    move/from16 v34, v8

    .line 1292
    .line 1293
    :goto_27
    move-object/from16 v38, v17

    .line 1294
    .line 1295
    :goto_28
    if-nez v38, :cond_32

    .line 1296
    .line 1297
    move-object/from16 v2, v18

    .line 1298
    .line 1299
    goto :goto_29

    .line 1300
    :cond_32
    move-object/from16 v2, v38

    .line 1301
    .line 1302
    :goto_29
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1303
    .line 1304
    .line 1305
    move-result v6

    .line 1306
    const/4 v8, 0x0

    .line 1307
    :goto_2a
    if-ge v8, v6, :cond_38

    .line 1308
    .line 1309
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v9

    .line 1313
    check-cast v9, Ljava/lang/Number;

    .line 1314
    .line 1315
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 1316
    .line 1317
    .line 1318
    move-result v9

    .line 1319
    add-int/lit8 v11, v34, 0x1

    .line 1320
    .line 1321
    if-gt v11, v9, :cond_37

    .line 1322
    .line 1323
    if-ge v9, v4, :cond_37

    .line 1324
    .line 1325
    if-eqz v23, :cond_35

    .line 1326
    .line 1327
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1328
    .line 1329
    .line 1330
    move-result v11

    .line 1331
    const/4 v12, 0x0

    .line 1332
    :goto_2b
    if-ge v12, v11, :cond_35

    .line 1333
    .line 1334
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v37

    .line 1338
    move-object/from16 v60, v3

    .line 1339
    .line 1340
    move-object/from16 v3, v37

    .line 1341
    .line 1342
    check-cast v3, Lg0/o;

    .line 1343
    .line 1344
    iget-object v3, v3, Lg0/o;->b:[Lg0/n;

    .line 1345
    .line 1346
    move/from16 v61, v4

    .line 1347
    .line 1348
    array-length v4, v3

    .line 1349
    move-object/from16 v37, v3

    .line 1350
    .line 1351
    const/4 v3, 0x0

    .line 1352
    :goto_2c
    if-ge v3, v4, :cond_34

    .line 1353
    .line 1354
    move/from16 v38, v3

    .line 1355
    .line 1356
    aget-object v3, v37, v38

    .line 1357
    .line 1358
    iget v3, v3, Lg0/n;->a:I

    .line 1359
    .line 1360
    if-ne v3, v9, :cond_33

    .line 1361
    .line 1362
    goto :goto_2d

    .line 1363
    :cond_33
    add-int/lit8 v3, v38, 0x1

    .line 1364
    .line 1365
    goto :goto_2c

    .line 1366
    :cond_34
    add-int/lit8 v12, v12, 0x1

    .line 1367
    .line 1368
    move-object/from16 v3, v60

    .line 1369
    .line 1370
    move/from16 v4, v61

    .line 1371
    .line 1372
    goto :goto_2b

    .line 1373
    :cond_35
    move-object/from16 v60, v3

    .line 1374
    .line 1375
    move/from16 v61, v4

    .line 1376
    .line 1377
    iget v3, v13, Lg0/r;->i:I

    .line 1378
    .line 1379
    invoke-virtual {v13, v9}, Lg0/r;->e(I)I

    .line 1380
    .line 1381
    .line 1382
    move-result v3

    .line 1383
    const/4 v11, 0x0

    .line 1384
    invoke-virtual {v5, v11, v3}, Lg0/l;->a(II)J

    .line 1385
    .line 1386
    .line 1387
    move-result-wide v39

    .line 1388
    const/16 v41, 0x0

    .line 1389
    .line 1390
    iget v4, v7, Lg0/k;->d:I

    .line 1391
    .line 1392
    move/from16 v42, v3

    .line 1393
    .line 1394
    move/from16 v43, v4

    .line 1395
    .line 1396
    move-object/from16 v37, v7

    .line 1397
    .line 1398
    move/from16 v38, v9

    .line 1399
    .line 1400
    invoke-virtual/range {v37 .. v43}, Lg0/k;->u0(IJIII)Lg0/n;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v3

    .line 1404
    if-nez v17, :cond_36

    .line 1405
    .line 1406
    new-instance v17, Ljava/util/ArrayList;

    .line 1407
    .line 1408
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .line 1410
    .line 1411
    :cond_36
    move-object/from16 v4, v17

    .line 1412
    .line 1413
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    move-object/from16 v17, v4

    .line 1417
    .line 1418
    goto :goto_2e

    .line 1419
    :cond_37
    move-object/from16 v60, v3

    .line 1420
    .line 1421
    move/from16 v61, v4

    .line 1422
    .line 1423
    :goto_2d
    move-object/from16 v37, v7

    .line 1424
    .line 1425
    :goto_2e
    add-int/lit8 v8, v8, 0x1

    .line 1426
    .line 1427
    move-object/from16 v7, v37

    .line 1428
    .line 1429
    move-object/from16 v3, v60

    .line 1430
    .line 1431
    move/from16 v4, v61

    .line 1432
    .line 1433
    goto :goto_2a

    .line 1434
    :cond_38
    move/from16 v61, v4

    .line 1435
    .line 1436
    move-object/from16 v37, v7

    .line 1437
    .line 1438
    if-nez v17, :cond_39

    .line 1439
    .line 1440
    move-object/from16 v3, v18

    .line 1441
    .line 1442
    goto :goto_2f

    .line 1443
    :cond_39
    move-object/from16 v3, v17

    .line 1444
    .line 1445
    :goto_2f
    if-gtz v31, :cond_3b

    .line 1446
    .line 1447
    if-gez v52, :cond_3a

    .line 1448
    .line 1449
    goto :goto_30

    .line 1450
    :cond_3a
    move/from16 v4, v20

    .line 1451
    .line 1452
    move-object/from16 v13, v30

    .line 1453
    .line 1454
    goto :goto_32

    .line 1455
    :cond_3b
    :goto_30
    invoke-virtual {v10}, Ls8/k;->b()I

    .line 1456
    .line 1457
    .line 1458
    move-result v4

    .line 1459
    move/from16 v12, v20

    .line 1460
    .line 1461
    move-object/from16 v13, v30

    .line 1462
    .line 1463
    const/4 v6, 0x0

    .line 1464
    :goto_31
    if-ge v6, v4, :cond_3c

    .line 1465
    .line 1466
    invoke-virtual {v10, v6}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v7

    .line 1470
    check-cast v7, Lg0/o;

    .line 1471
    .line 1472
    iget v7, v7, Lg0/o;->g:I

    .line 1473
    .line 1474
    if-eqz v12, :cond_3c

    .line 1475
    .line 1476
    if-gt v7, v12, :cond_3c

    .line 1477
    .line 1478
    invoke-static {v10}, Lp9/x1;->u(Ljava/util/List;)I

    .line 1479
    .line 1480
    .line 1481
    move-result v8

    .line 1482
    if-eq v6, v8, :cond_3c

    .line 1483
    .line 1484
    sub-int/2addr v12, v7

    .line 1485
    add-int/lit8 v6, v6, 0x1

    .line 1486
    .line 1487
    invoke-virtual {v10, v6}, Ls8/k;->get(I)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v7

    .line 1491
    move-object v13, v7

    .line 1492
    check-cast v13, Lg0/o;

    .line 1493
    .line 1494
    goto :goto_31

    .line 1495
    :cond_3c
    move v4, v12

    .line 1496
    :goto_32
    invoke-static {v14, v15}, Ln3/a;->h(J)I

    .line 1497
    .line 1498
    .line 1499
    move-result v6

    .line 1500
    invoke-static {v1, v14, v15}, Ln3/b;->f(IJ)I

    .line 1501
    .line 1502
    .line 1503
    move-result v7

    .line 1504
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v8

    .line 1508
    if-eqz v8, :cond_3d

    .line 1509
    .line 1510
    goto :goto_33

    .line 1511
    :cond_3d
    invoke-static {v2, v10}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v10

    .line 1515
    :goto_33
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 1516
    .line 1517
    .line 1518
    move-result v2

    .line 1519
    if-ge v1, v2, :cond_3e

    .line 1520
    .line 1521
    const/4 v2, 0x1

    .line 1522
    goto :goto_34

    .line 1523
    :cond_3e
    const/4 v2, 0x0

    .line 1524
    :goto_34
    if-eqz v2, :cond_40

    .line 1525
    .line 1526
    if-nez v19, :cond_3f

    .line 1527
    .line 1528
    goto :goto_35

    .line 1529
    :cond_3f
    const-string v8, "non-zero firstLineScrollOffset"

    .line 1530
    .line 1531
    invoke-static {v8}, Lc0/b;->c(Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    :cond_40
    :goto_35
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 1535
    .line 1536
    .line 1537
    move-result v8

    .line 1538
    const/4 v9, 0x0

    .line 1539
    const/4 v11, 0x0

    .line 1540
    :goto_36
    if-ge v9, v8, :cond_41

    .line 1541
    .line 1542
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v12

    .line 1546
    check-cast v12, Lg0/o;

    .line 1547
    .line 1548
    iget-object v12, v12, Lg0/o;->b:[Lg0/n;

    .line 1549
    .line 1550
    array-length v12, v12

    .line 1551
    add-int/2addr v11, v12

    .line 1552
    add-int/lit8 v9, v9, 0x1

    .line 1553
    .line 1554
    goto :goto_36

    .line 1555
    :cond_41
    new-instance v8, Ljava/util/ArrayList;

    .line 1556
    .line 1557
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1558
    .line 1559
    .line 1560
    if-eqz v2, :cond_49

    .line 1561
    .line 1562
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    .line 1563
    .line 1564
    .line 1565
    move-result v2

    .line 1566
    if-eqz v2, :cond_42

    .line 1567
    .line 1568
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1569
    .line 1570
    .line 1571
    move-result v2

    .line 1572
    if-eqz v2, :cond_42

    .line 1573
    .line 1574
    goto :goto_37

    .line 1575
    :cond_42
    const-string v2, "no items"

    .line 1576
    .line 1577
    invoke-static {v2}, Lc0/b;->a(Ljava/lang/String;)V

    .line 1578
    .line 1579
    .line 1580
    :goto_37
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1581
    .line 1582
    .line 1583
    move-result v2

    .line 1584
    new-array v3, v2, [I

    .line 1585
    .line 1586
    const/4 v9, 0x0

    .line 1587
    :goto_38
    if-ge v9, v2, :cond_43

    .line 1588
    .line 1589
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v11

    .line 1593
    check-cast v11, Lg0/o;

    .line 1594
    .line 1595
    iget v11, v11, Lg0/o;->f:I

    .line 1596
    .line 1597
    aput v11, v3, v9

    .line 1598
    .line 1599
    add-int/lit8 v9, v9, 0x1

    .line 1600
    .line 1601
    goto :goto_38

    .line 1602
    :cond_43
    new-array v2, v2, [I

    .line 1603
    .line 1604
    move-object/from16 v11, p1

    .line 1605
    .line 1606
    move-object/from16 v9, v22

    .line 1607
    .line 1608
    invoke-interface {v9, v7, v11, v3, v2}, Ld0/g;->b(ILo2/o0;[I[I)V

    .line 1609
    .line 1610
    .line 1611
    invoke-static {v2}, Ls8/l;->Y([I)Ll9/d;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v3

    .line 1615
    iget v9, v3, Ll9/b;->a:I

    .line 1616
    .line 1617
    iget v12, v3, Ll9/b;->b:I

    .line 1618
    .line 1619
    iget v3, v3, Ll9/b;->c:I

    .line 1620
    .line 1621
    if-lez v3, :cond_44

    .line 1622
    .line 1623
    if-le v9, v12, :cond_45

    .line 1624
    .line 1625
    :cond_44
    if-gez v3, :cond_48

    .line 1626
    .line 1627
    if-gt v12, v9, :cond_48

    .line 1628
    .line 1629
    :cond_45
    move/from16 v17, v1

    .line 1630
    .line 1631
    :goto_39
    aget v1, v2, v9

    .line 1632
    .line 1633
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v18

    .line 1637
    move-object/from16 v19, v2

    .line 1638
    .line 1639
    move-object/from16 v2, v18

    .line 1640
    .line 1641
    check-cast v2, Lg0/o;

    .line 1642
    .line 1643
    invoke-virtual {v2, v1, v6, v7}, Lg0/o;->a(III)[Lg0/n;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v1

    .line 1647
    array-length v2, v1

    .line 1648
    move-object/from16 v18, v1

    .line 1649
    .line 1650
    const/4 v1, 0x0

    .line 1651
    :goto_3a
    if-ge v1, v2, :cond_46

    .line 1652
    .line 1653
    move/from16 v20, v1

    .line 1654
    .line 1655
    aget-object v1, v18, v20

    .line 1656
    .line 1657
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    .line 1659
    .line 1660
    add-int/lit8 v1, v20, 0x1

    .line 1661
    .line 1662
    goto :goto_3a

    .line 1663
    :cond_46
    if-eq v9, v12, :cond_47

    .line 1664
    .line 1665
    add-int/2addr v9, v3

    .line 1666
    move-object/from16 v2, v19

    .line 1667
    .line 1668
    goto :goto_39

    .line 1669
    :cond_47
    :goto_3b
    move-object/from16 v1, v32

    .line 1670
    .line 1671
    goto/16 :goto_41

    .line 1672
    .line 1673
    :cond_48
    move/from16 v17, v1

    .line 1674
    .line 1675
    goto :goto_3b

    .line 1676
    :cond_49
    move-object/from16 v11, p1

    .line 1677
    .line 1678
    move/from16 v17, v1

    .line 1679
    .line 1680
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->size()I

    .line 1681
    .line 1682
    .line 1683
    move-result v1

    .line 1684
    const/16 v21, -0x1

    .line 1685
    .line 1686
    add-int/lit8 v1, v1, -0x1

    .line 1687
    .line 1688
    if-ltz v1, :cond_4b

    .line 1689
    .line 1690
    move/from16 v2, v19

    .line 1691
    .line 1692
    :goto_3c
    add-int/lit8 v9, v1, -0x1

    .line 1693
    .line 1694
    move-object/from16 v12, v27

    .line 1695
    .line 1696
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v1

    .line 1700
    check-cast v1, Lg0/n;

    .line 1701
    .line 1702
    move/from16 v18, v2

    .line 1703
    .line 1704
    iget v2, v1, Lg0/n;->l:I

    .line 1705
    .line 1706
    sub-int v2, v18, v2

    .line 1707
    .line 1708
    invoke-virtual {v1, v2, v6, v7}, Lg0/n;->h(III)V

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    .line 1713
    .line 1714
    if-gez v9, :cond_4a

    .line 1715
    .line 1716
    goto :goto_3d

    .line 1717
    :cond_4a
    move v1, v9

    .line 1718
    move-object/from16 v27, v12

    .line 1719
    .line 1720
    goto :goto_3c

    .line 1721
    :cond_4b
    :goto_3d
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 1722
    .line 1723
    .line 1724
    move-result v1

    .line 1725
    move/from16 v9, v19

    .line 1726
    .line 1727
    const/4 v2, 0x0

    .line 1728
    :goto_3e
    if-ge v2, v1, :cond_4d

    .line 1729
    .line 1730
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v12

    .line 1734
    check-cast v12, Lg0/o;

    .line 1735
    .line 1736
    move/from16 v18, v1

    .line 1737
    .line 1738
    invoke-virtual {v12, v9, v6, v7}, Lg0/o;->a(III)[Lg0/n;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v1

    .line 1742
    move/from16 v19, v2

    .line 1743
    .line 1744
    array-length v2, v1

    .line 1745
    move-object/from16 v20, v1

    .line 1746
    .line 1747
    const/4 v1, 0x0

    .line 1748
    :goto_3f
    if-ge v1, v2, :cond_4c

    .line 1749
    .line 1750
    move/from16 v21, v1

    .line 1751
    .line 1752
    aget-object v1, v20, v21

    .line 1753
    .line 1754
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    .line 1756
    .line 1757
    add-int/lit8 v1, v21, 0x1

    .line 1758
    .line 1759
    goto :goto_3f

    .line 1760
    :cond_4c
    iget v1, v12, Lg0/o;->g:I

    .line 1761
    .line 1762
    add-int/2addr v9, v1

    .line 1763
    add-int/lit8 v2, v19, 0x1

    .line 1764
    .line 1765
    move/from16 v1, v18

    .line 1766
    .line 1767
    goto :goto_3e

    .line 1768
    :cond_4d
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1769
    .line 1770
    .line 1771
    move-result v1

    .line 1772
    const/4 v2, 0x0

    .line 1773
    :goto_40
    if-ge v2, v1, :cond_47

    .line 1774
    .line 1775
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v10

    .line 1779
    check-cast v10, Lg0/n;

    .line 1780
    .line 1781
    invoke-virtual {v10, v9, v6, v7}, Lg0/n;->h(III)V

    .line 1782
    .line 1783
    .line 1784
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    iget v10, v10, Lg0/n;->l:I

    .line 1788
    .line 1789
    add-int/2addr v9, v10

    .line 1790
    add-int/lit8 v2, v2, 0x1

    .line 1791
    .line 1792
    goto :goto_40

    .line 1793
    :goto_41
    iget-object v2, v1, Lg0/h;->c:Le7/l;

    .line 1794
    .line 1795
    move-object/from16 v21, v2

    .line 1796
    .line 1797
    move/from16 v18, v6

    .line 1798
    .line 1799
    move/from16 v19, v7

    .line 1800
    .line 1801
    move-object/from16 v20, v8

    .line 1802
    .line 1803
    move/from16 v27, v17

    .line 1804
    .line 1805
    move-object/from16 v17, v24

    .line 1806
    .line 1807
    move/from16 v24, v26

    .line 1808
    .line 1809
    move-object/from16 v22, v37

    .line 1810
    .line 1811
    move/from16 v26, v4

    .line 1812
    .line 1813
    invoke-virtual/range {v17 .. v27}, Landroidx/compose/foundation/lazy/layout/b;->c(IILjava/util/ArrayList;Le7/l;Lfb/a;ZIZII)V

    .line 1814
    .line 1815
    .line 1816
    move-object/from16 v2, v22

    .line 1817
    .line 1818
    move/from16 v3, v27

    .line 1819
    .line 1820
    if-nez v23, :cond_4f

    .line 1821
    .line 1822
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/b;->b()J

    .line 1823
    .line 1824
    .line 1825
    if-nez v36, :cond_4f

    .line 1826
    .line 1827
    const-wide/16 v9, 0x0

    .line 1828
    .line 1829
    long-to-int v12, v9

    .line 1830
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 1831
    .line 1832
    .line 1833
    move-result v6

    .line 1834
    invoke-static {v6, v14, v15}, Ln3/b;->g(IJ)I

    .line 1835
    .line 1836
    .line 1837
    move-result v6

    .line 1838
    long-to-int v10, v9

    .line 1839
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 1840
    .line 1841
    .line 1842
    move-result v9

    .line 1843
    invoke-static {v9, v14, v15}, Ln3/b;->f(IJ)I

    .line 1844
    .line 1845
    .line 1846
    move-result v9

    .line 1847
    if-eq v9, v7, :cond_4e

    .line 1848
    .line 1849
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1850
    .line 1851
    .line 1852
    move-result v7

    .line 1853
    const/4 v10, 0x0

    .line 1854
    :goto_42
    if-ge v10, v7, :cond_4e

    .line 1855
    .line 1856
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v12

    .line 1860
    check-cast v12, Lg0/n;

    .line 1861
    .line 1862
    iput v9, v12, Lg0/n;->m:I

    .line 1863
    .line 1864
    add-int/lit8 v10, v10, 0x1

    .line 1865
    .line 1866
    goto :goto_42

    .line 1867
    :cond_4e
    move v7, v9

    .line 1868
    :cond_4f
    move/from16 v32, v6

    .line 1869
    .line 1870
    iget-object v1, v1, Lg0/h;->b:Lg0/g;

    .line 1871
    .line 1872
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1873
    .line 1874
    .line 1875
    sget-object v30, Ls/j;->a:Ls/v;

    .line 1876
    .line 1877
    new-instance v1, La8/v;

    .line 1878
    .line 1879
    const/16 v6, 0xa

    .line 1880
    .line 1881
    invoke-direct {v1, v6, v5, v2}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1882
    .line 1883
    .line 1884
    move-object/from16 v2, p0

    .line 1885
    .line 1886
    iget-object v5, v2, Lf0/k;->f:Lh0/a0;

    .line 1887
    .line 1888
    move-object/from16 v26, v5

    .line 1889
    .line 1890
    move-object/from16 v29, v8

    .line 1891
    .line 1892
    move/from16 v27, v33

    .line 1893
    .line 1894
    move/from16 v28, v34

    .line 1895
    .line 1896
    move-object/from16 v34, v1

    .line 1897
    .line 1898
    move/from16 v33, v7

    .line 1899
    .line 1900
    invoke-static/range {v26 .. v34}, Lh0/z;->f(Lh0/a0;IILjava/util/ArrayList;Ls/v;IIILf9/k;)Ljava/util/List;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v41

    .line 1904
    move/from16 v6, v27

    .line 1905
    .line 1906
    move/from16 v8, v28

    .line 1907
    .line 1908
    add-int/lit8 v1, v61, -0x1

    .line 1909
    .line 1910
    if-ne v8, v1, :cond_51

    .line 1911
    .line 1912
    if-le v3, v0, :cond_50

    .line 1913
    .line 1914
    goto :goto_43

    .line 1915
    :cond_50
    const/4 v5, 0x0

    .line 1916
    goto :goto_44

    .line 1917
    :cond_51
    :goto_43
    const/4 v5, 0x1

    .line 1918
    :goto_44
    new-instance v38, Lf0/l;

    .line 1919
    .line 1920
    const/16 v43, 0x1

    .line 1921
    .line 1922
    move/from16 v42, v23

    .line 1923
    .line 1924
    move-object/from16 v40, v29

    .line 1925
    .line 1926
    move-object/from16 v39, v49

    .line 1927
    .line 1928
    invoke-direct/range {v38 .. v43}, Lf0/l;-><init>(Lf1/b1;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 1929
    .line 1930
    .line 1931
    move-object/from16 v3, v38

    .line 1932
    .line 1933
    move-object/from16 v0, v40

    .line 1934
    .line 1935
    move-object/from16 v1, v41

    .line 1936
    .line 1937
    add-int v7, v32, v46

    .line 1938
    .line 1939
    move-wide/from16 v9, p2

    .line 1940
    .line 1941
    invoke-static {v7, v9, v10}, Ln3/b;->g(IJ)I

    .line 1942
    .line 1943
    .line 1944
    move-result v7

    .line 1945
    add-int v12, v33, v45

    .line 1946
    .line 1947
    invoke-static {v12, v9, v10}, Ln3/b;->f(IJ)I

    .line 1948
    .line 1949
    .line 1950
    move-result v9

    .line 1951
    move-object/from16 v10, v55

    .line 1952
    .line 1953
    move-object/from16 v12, v56

    .line 1954
    .line 1955
    invoke-interface {v10, v7, v9, v12, v3}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v7

    .line 1959
    invoke-static {v6, v8, v0, v1}, Lh0/z;->m(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v15

    .line 1963
    new-instance v2, Lg0/m;

    .line 1964
    .line 1965
    move-object v3, v13

    .line 1966
    move/from16 v12, v24

    .line 1967
    .line 1968
    move/from16 v8, v35

    .line 1969
    .line 1970
    move/from16 v20, v44

    .line 1971
    .line 1972
    move-object/from16 v14, v48

    .line 1973
    .line 1974
    move-object/from16 v19, v50

    .line 1975
    .line 1976
    move/from16 v21, v52

    .line 1977
    .line 1978
    move-object/from16 v13, v53

    .line 1979
    .line 1980
    move/from16 v16, v54

    .line 1981
    .line 1982
    move/from16 v17, v57

    .line 1983
    .line 1984
    move/from16 v9, v58

    .line 1985
    .line 1986
    move/from16 v6, v59

    .line 1987
    .line 1988
    move/from16 v18, v61

    .line 1989
    .line 1990
    move-object/from16 v44, v10

    .line 1991
    .line 1992
    move-object/from16 v10, v51

    .line 1993
    .line 1994
    invoke-direct/range {v2 .. v21}, Lg0/m;-><init>(Lg0/o;IZFLo2/n0;FZLac/w;Ln3/c;ILf9/k;Lf9/k;Ljava/util/List;IIILz/w0;II)V

    .line 1995
    .line 1996
    .line 1997
    :goto_45
    invoke-interface/range {v44 .. v44}, Lo2/r;->Q()Z

    .line 1998
    .line 1999
    .line 2000
    move-result v0

    .line 2001
    move-object/from16 v3, v47

    .line 2002
    .line 2003
    const/4 v11, 0x0

    .line 2004
    invoke-virtual {v3, v2, v0, v11}, Lg0/u;->f(Lg0/m;ZZ)V

    .line 2005
    .line 2006
    .line 2007
    return-object v2

    .line 2008
    :goto_46
    invoke-static {v8, v10, v9}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 2009
    .line 2010
    .line 2011
    throw v0

    .line 2012
    :pswitch_0
    move-wide v9, v12

    .line 2013
    invoke-direct/range {p0 .. p3}, Lf0/k;->b(Lh0/x;J)Lo2/n0;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v0

    .line 2017
    return-object v0

    .line 2018
    nop

    .line 2019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
