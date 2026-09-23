.class public final La8/i0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/p;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf9/k;


# direct methods
.method public constructor <init>(Ljava/util/List;Lf1/b1;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La8/i0;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, La8/i0;->b:Lf1/b1;

    .line 7
    .line 8
    iput-object p3, p0, La8/i0;->c:Lf9/k;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lg0/i;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v7, p3

    .line 16
    .line 17
    check-cast v7, Lf1/s;

    .line 18
    .line 19
    move-object/from16 v3, p4

    .line 20
    .line 21
    check-cast v3, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    and-int/lit8 v4, v3, 0x6

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v7, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x2

    .line 40
    :goto_0
    or-int/2addr v1, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v1, v3

    .line 43
    :goto_1
    and-int/lit8 v3, v3, 0x30

    .line 44
    .line 45
    const/16 v4, 0x20

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v7, v2}, Lf1/s;->d(I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const/16 v3, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v3, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v1, v3

    .line 61
    :cond_3
    and-int/lit16 v3, v1, 0x93

    .line 62
    .line 63
    const/16 v5, 0x92

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    const/4 v8, 0x0

    .line 67
    if-eq v3, v5, :cond_4

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/4 v3, 0x0

    .line 72
    :goto_3
    and-int/2addr v1, v6

    .line 73
    invoke-virtual {v7, v1, v3}, Lf1/s;->N(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_e

    .line 78
    .line 79
    iget-object v1, v0, La8/i0;->a:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lz7/v1;

    .line 86
    .line 87
    const v2, 0x29cc584d

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v2}, Lf1/s;->W(I)V

    .line 91
    .line 92
    .line 93
    sget-object v2, Lr1/c;->e:Lr1/h;

    .line 94
    .line 95
    sget-object v3, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 96
    .line 97
    const/16 v5, 0x40

    .line 98
    .line 99
    invoke-static {v5, v7}, Lg5/a;->B(ILf1/s;)F

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    sget-object v5, Lc1/y;->a:Lf1/w2;

    .line 108
    .line 109
    invoke-virtual {v7, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lc1/w;

    .line 114
    .line 115
    iget-wide v9, v5, Lc1/w;->H:J

    .line 116
    .line 117
    const/16 v5, 0xc

    .line 118
    .line 119
    invoke-static {v5, v7}, Lg5/a;->B(ILf1/s;)F

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-static {v5}, Lk0/e;->a(F)Lk0/d;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-static {v3, v9, v10, v5}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    const v3, 0x6e3c21fe

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v3}, Lf1/s;->W(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 142
    .line 143
    if-ne v3, v5, :cond_5

    .line 144
    .line 145
    invoke-static {v7}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    :cond_5
    move-object v12, v3

    .line 150
    check-cast v12, Lb0/k;

    .line 151
    .line 152
    invoke-virtual {v7, v8}, Lf1/s;->p(Z)V

    .line 153
    .line 154
    .line 155
    const v3, -0x615d173a

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v3}, Lf1/s;->W(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    iget-object v13, v0, La8/i0;->b:Lf1/b1;

    .line 170
    .line 171
    if-nez v9, :cond_6

    .line 172
    .line 173
    if-ne v10, v5, :cond_7

    .line 174
    .line 175
    :cond_6
    new-instance v10, La8/f0;

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    invoke-direct {v10, v9, v1, v13}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    move-object v15, v10

    .line 185
    check-cast v15, Lf9/a;

    .line 186
    .line 187
    invoke-virtual {v7, v8}, Lf1/s;->p(Z)V

    .line 188
    .line 189
    .line 190
    const/16 v16, 0x1c

    .line 191
    .line 192
    move-object v9, v13

    .line 193
    const/4 v13, 0x0

    .line 194
    const/4 v14, 0x0

    .line 195
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-static {v2, v8}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-wide v11, v7, Lf1/s;->T:J

    .line 204
    .line 205
    ushr-long v13, v11, v4

    .line 206
    .line 207
    xor-long/2addr v11, v13

    .line 208
    long-to-int v4, v11

    .line 209
    invoke-virtual {v7}, Lf1/s;->l()Lf1/q1;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-static {v7, v10}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    sget-object v12, Lq2/j;->d0:Lq2/i;

    .line 218
    .line 219
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    sget-object v12, Lq2/i;->b:Lq2/a0;

    .line 223
    .line 224
    invoke-virtual {v7}, Lf1/s;->a0()V

    .line 225
    .line 226
    .line 227
    iget-boolean v13, v7, Lf1/s;->S:Z

    .line 228
    .line 229
    if-eqz v13, :cond_8

    .line 230
    .line 231
    invoke-virtual {v7, v12}, Lf1/s;->k(Lf9/a;)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_8
    invoke-virtual {v7}, Lf1/s;->k0()V

    .line 236
    .line 237
    .line 238
    :goto_4
    sget-object v12, Lq2/i;->e:Lq2/h;

    .line 239
    .line 240
    invoke-static {v7, v12, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 244
    .line 245
    invoke-static {v7, v2, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 249
    .line 250
    iget-boolean v11, v7, Lf1/s;->S:Z

    .line 251
    .line 252
    if-nez v11, :cond_9

    .line 253
    .line 254
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    invoke-static {v11, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-nez v11, :cond_a

    .line 267
    .line 268
    :cond_9
    invoke-static {v4, v7, v4, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 272
    .line 273
    invoke-static {v7, v2, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    const v2, -0x615d173a

    .line 277
    .line 278
    .line 279
    invoke-interface {v1}, Lz7/v1;->b()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    const/16 v4, 0x12

    .line 284
    .line 285
    invoke-static {v4, v7}, Lg5/a;->B(ILf1/s;)F

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    const-wide v10, 0x100000000L

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    invoke-static {v4, v10, v11}, Lc7/a;->M(FJ)J

    .line 295
    .line 296
    .line 297
    move-result-wide v10

    .line 298
    new-instance v12, Lm3/k;

    .line 299
    .line 300
    const/4 v4, 0x3

    .line 301
    invoke-direct {v12, v4}, Lm3/k;-><init>(I)V

    .line 302
    .line 303
    .line 304
    const/16 v22, 0x0

    .line 305
    .line 306
    const v23, 0x1fdf6

    .line 307
    .line 308
    .line 309
    const/4 v4, 0x0

    .line 310
    move-object v14, v5

    .line 311
    const/4 v13, 0x1

    .line 312
    const-wide/16 v5, 0x0

    .line 313
    .line 314
    move-object v15, v9

    .line 315
    const/4 v9, 0x0

    .line 316
    move-object/from16 v20, v7

    .line 317
    .line 318
    move-wide v7, v10

    .line 319
    const/16 v16, 0x0

    .line 320
    .line 321
    const-wide/16 v10, 0x0

    .line 322
    .line 323
    move-object/from16 v18, v14

    .line 324
    .line 325
    const/16 v17, 0x1

    .line 326
    .line 327
    const-wide/16 v13, 0x0

    .line 328
    .line 329
    move-object/from16 v19, v15

    .line 330
    .line 331
    const/4 v15, 0x0

    .line 332
    const/16 v21, 0x0

    .line 333
    .line 334
    const/16 v16, 0x0

    .line 335
    .line 336
    const/16 v24, 0x1

    .line 337
    .line 338
    const/16 v17, 0x0

    .line 339
    .line 340
    move-object/from16 v25, v18

    .line 341
    .line 342
    const/16 v18, 0x0

    .line 343
    .line 344
    move-object/from16 v26, v19

    .line 345
    .line 346
    const/16 v19, 0x0

    .line 347
    .line 348
    const/16 v27, 0x0

    .line 349
    .line 350
    const/16 v21, 0x0

    .line 351
    .line 352
    move-object/from16 v2, v25

    .line 353
    .line 354
    invoke-static/range {v3 .. v23}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 355
    .line 356
    .line 357
    move-object/from16 v7, v20

    .line 358
    .line 359
    invoke-interface/range {v26 .. v26}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    check-cast v3, Ljava/lang/String;

    .line 364
    .line 365
    invoke-interface {v1}, Lz7/v1;->getName()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    const v3, 0x4c5de2

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7, v3}, Lf1/s;->W(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-ne v3, v2, :cond_b

    .line 384
    .line 385
    new-instance v3, La8/g0;

    .line 386
    .line 387
    const/4 v5, 0x0

    .line 388
    move-object/from16 v9, v26

    .line 389
    .line 390
    invoke-direct {v3, v5, v9}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_b
    move-object/from16 v9, v26

    .line 398
    .line 399
    :goto_5
    move-object v5, v3

    .line 400
    check-cast v5, Lf9/a;

    .line 401
    .line 402
    const/4 v3, 0x0

    .line 403
    invoke-virtual {v7, v3}, Lf1/s;->p(Z)V

    .line 404
    .line 405
    .line 406
    const v3, -0x615d173a

    .line 407
    .line 408
    .line 409
    invoke-virtual {v7, v3}, Lf1/s;->W(I)V

    .line 410
    .line 411
    .line 412
    iget-object v3, v0, La8/i0;->c:Lf9/k;

    .line 413
    .line 414
    invoke-virtual {v7, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    if-nez v6, :cond_c

    .line 423
    .line 424
    if-ne v8, v2, :cond_d

    .line 425
    .line 426
    :cond_c
    new-instance v8, La8/h0;

    .line 427
    .line 428
    const/4 v2, 0x0

    .line 429
    invoke-direct {v8, v2, v3, v9}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v7, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    :cond_d
    move-object v6, v8

    .line 436
    check-cast v6, Lf9/k;

    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    invoke-virtual {v7, v2}, Lf1/s;->p(Z)V

    .line 440
    .line 441
    .line 442
    const/16 v8, 0x30

    .line 443
    .line 444
    move-object v3, v1

    .line 445
    invoke-interface/range {v3 .. v8}, Lz7/v1;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 446
    .line 447
    .line 448
    const/4 v13, 0x1

    .line 449
    invoke-virtual {v7, v13}, Lf1/s;->p(Z)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v2}, Lf1/s;->p(Z)V

    .line 453
    .line 454
    .line 455
    goto :goto_6

    .line 456
    :cond_e
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 457
    .line 458
    .line 459
    :goto_6
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 460
    .line 461
    return-object v1
.end method
