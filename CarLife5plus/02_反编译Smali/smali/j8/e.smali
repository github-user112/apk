.class public final Lj8/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/p;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:F

.field public final synthetic c:Lj8/k0;

.field public final synthetic d:Lf9/k;

.field public final synthetic e:Lf9/o;


# direct methods
.method public constructor <init>(Ljava/util/List;FLj8/k0;Lf9/k;Lf9/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/e;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lj8/e;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Lj8/e;->c:Lj8/k0;

    .line 9
    .line 10
    iput-object p4, p0, Lj8/e;->d:Lf9/k;

    .line 11
    .line 12
    iput-object p5, p0, Lj8/e;->e:Lf9/o;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

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
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Lf1/s;

    .line 18
    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    check-cast v4, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    and-int/lit8 v5, v4, 0x6

    .line 28
    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v1, v4

    .line 43
    :goto_1
    and-int/lit8 v4, v4, 0x30

    .line 44
    .line 45
    const/16 v5, 0x20

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lf1/s;->d(I)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    const/16 v4, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v4, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v1, v4

    .line 61
    :cond_3
    and-int/lit16 v4, v1, 0x93

    .line 62
    .line 63
    const/16 v6, 0x92

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    const/4 v8, 0x0

    .line 67
    if-eq v4, v6, :cond_4

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/4 v4, 0x0

    .line 72
    :goto_3
    and-int/2addr v1, v7

    .line 73
    invoke-virtual {v3, v1, v4}, Lf1/s;->N(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sget-object v24, Lr8/z;->a:Lr8/z;

    .line 78
    .line 79
    if-eqz v1, :cond_f

    .line 80
    .line 81
    iget-object v1, v0, Lj8/e;->a:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lj8/k0;

    .line 88
    .line 89
    const v2, 0x1ed154f5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2}, Lf1/s;->W(I)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lr1/c;->k:Lr1/g;

    .line 96
    .line 97
    sget-object v4, Ld0/h;->d:Ld0/d;

    .line 98
    .line 99
    sget-object v6, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 100
    .line 101
    iget v9, v0, Lj8/e;->b:F

    .line 102
    .line 103
    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const/4 v9, 0x0

    .line 108
    iget-object v10, v0, Lj8/e;->c:Lj8/k0;

    .line 109
    .line 110
    if-eqz v10, :cond_5

    .line 111
    .line 112
    iget-object v10, v10, Lj8/k0;->b:Lj8/o0;

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move-object v10, v9

    .line 116
    :goto_4
    iget-object v11, v1, Lj8/k0;->b:Lj8/o0;

    .line 117
    .line 118
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_6

    .line 123
    .line 124
    const v10, 0x64177499

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v10}, Lf1/s;->W(I)V

    .line 128
    .line 129
    .line 130
    sget-object v10, Lc1/y;->a:Lf1/w2;

    .line 131
    .line 132
    invoke-virtual {v3, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    check-cast v10, Lc1/w;

    .line 137
    .line 138
    iget-wide v10, v10, Lc1/w;->e:J

    .line 139
    .line 140
    invoke-virtual {v3, v8}, Lf1/s;->p(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_6
    const v10, 0x641781e2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v10}, Lf1/s;->W(I)V

    .line 148
    .line 149
    .line 150
    sget-object v10, Lc1/y;->a:Lf1/w2;

    .line 151
    .line 152
    invoke-virtual {v3, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    check-cast v10, Lc1/w;

    .line 157
    .line 158
    iget-wide v10, v10, Lc1/w;->H:J

    .line 159
    .line 160
    invoke-virtual {v3, v8}, Lf1/s;->p(Z)V

    .line 161
    .line 162
    .line 163
    :goto_5
    const/16 v12, 0xc

    .line 164
    .line 165
    invoke-static {v12, v3}, Lg5/a;->B(ILf1/s;)F

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    invoke-static {v12}, Lk0/e;->a(F)Lk0/d;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-static {v6, v10, v11, v12}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    const v6, 0x6e3c21fe

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v6}, Lf1/s;->W(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Lf1/s;->K()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 188
    .line 189
    if-ne v6, v10, :cond_7

    .line 190
    .line 191
    invoke-static {v3}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    :cond_7
    move-object v14, v6

    .line 196
    check-cast v14, Lb0/k;

    .line 197
    .line 198
    invoke-virtual {v3, v8}, Lf1/s;->p(Z)V

    .line 199
    .line 200
    .line 201
    const v6, -0x615d173a

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v6}, Lf1/s;->W(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    iget-object v11, v0, Lj8/e;->d:Lf9/k;

    .line 212
    .line 213
    invoke-virtual {v3, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    or-int/2addr v6, v12

    .line 218
    invoke-virtual {v3}, Lf1/s;->K()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    if-nez v6, :cond_8

    .line 223
    .line 224
    if-ne v12, v10, :cond_9

    .line 225
    .line 226
    :cond_8
    new-instance v12, La8/f0;

    .line 227
    .line 228
    const/4 v6, 0x7

    .line 229
    invoke-direct {v12, v6, v1, v11}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_9
    move-object/from16 v17, v12

    .line 236
    .line 237
    check-cast v17, Lf9/a;

    .line 238
    .line 239
    invoke-virtual {v3, v8}, Lf1/s;->p(Z)V

    .line 240
    .line 241
    .line 242
    const/16 v18, 0x1c

    .line 243
    .line 244
    const/4 v15, 0x0

    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    const/16 v10, 0x36

    .line 252
    .line 253
    invoke-static {v4, v2, v3, v10}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    iget-wide v10, v3, Lf1/s;->T:J

    .line 258
    .line 259
    ushr-long v4, v10, v5

    .line 260
    .line 261
    xor-long/2addr v4, v10

    .line 262
    long-to-int v5, v4

    .line 263
    invoke-virtual {v3}, Lf1/s;->l()Lf1/q1;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-static {v3, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    sget-object v10, Lq2/j;->d0:Lq2/i;

    .line 272
    .line 273
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    sget-object v10, Lq2/i;->b:Lq2/a0;

    .line 277
    .line 278
    invoke-virtual {v3}, Lf1/s;->a0()V

    .line 279
    .line 280
    .line 281
    iget-boolean v11, v3, Lf1/s;->S:Z

    .line 282
    .line 283
    if-eqz v11, :cond_a

    .line 284
    .line 285
    invoke-virtual {v3, v10}, Lf1/s;->k(Lf9/a;)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_a
    invoke-virtual {v3}, Lf1/s;->k0()V

    .line 290
    .line 291
    .line 292
    :goto_6
    sget-object v10, Lq2/i;->e:Lq2/h;

    .line 293
    .line 294
    invoke-static {v3, v10, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 298
    .line 299
    invoke-static {v3, v2, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 303
    .line 304
    iget-boolean v4, v3, Lf1/s;->S:Z

    .line 305
    .line 306
    if-nez v4, :cond_b

    .line 307
    .line 308
    invoke-virtual {v3}, Lf1/s;->K()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    invoke-static {v4, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-nez v4, :cond_c

    .line 321
    .line 322
    :cond_b
    invoke-static {v5, v3, v5, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 323
    .line 324
    .line 325
    :cond_c
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 326
    .line 327
    invoke-static {v3, v2, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    const v2, -0x490c1c23

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v2}, Lf1/s;->W(I)V

    .line 334
    .line 335
    .line 336
    iget-object v2, v0, Lj8/e;->e:Lf9/o;

    .line 337
    .line 338
    if-nez v2, :cond_d

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-interface {v2, v1, v3, v4}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-object/from16 v9, v24

    .line 349
    .line 350
    :goto_7
    invoke-virtual {v3, v8}, Lf1/s;->p(Z)V

    .line 351
    .line 352
    .line 353
    const v2, -0x490c1cbb

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v2}, Lf1/s;->W(I)V

    .line 357
    .line 358
    .line 359
    if-nez v9, :cond_e

    .line 360
    .line 361
    iget-object v1, v1, Lj8/k0;->a:Ljava/lang/String;

    .line 362
    .line 363
    const/16 v2, 0x12

    .line 364
    .line 365
    invoke-static {v2, v3}, Lg5/a;->B(ILf1/s;)F

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    const-wide v4, 0x100000000L

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    invoke-static {v2, v4, v5}, Lc7/a;->M(FJ)J

    .line 375
    .line 376
    .line 377
    move-result-wide v4

    .line 378
    new-instance v12, Lm3/k;

    .line 379
    .line 380
    const/4 v2, 0x3

    .line 381
    invoke-direct {v12, v2}, Lm3/k;-><init>(I)V

    .line 382
    .line 383
    .line 384
    const/16 v22, 0x0

    .line 385
    .line 386
    const v23, 0x1fdf6

    .line 387
    .line 388
    .line 389
    move-wide v7, v4

    .line 390
    const/4 v2, 0x1

    .line 391
    const/4 v5, 0x0

    .line 392
    const/4 v4, 0x0

    .line 393
    const/4 v9, 0x0

    .line 394
    const-wide/16 v5, 0x0

    .line 395
    .line 396
    const/4 v10, 0x0

    .line 397
    const/4 v9, 0x0

    .line 398
    const/4 v13, 0x0

    .line 399
    const-wide/16 v10, 0x0

    .line 400
    .line 401
    const/4 v15, 0x0

    .line 402
    const-wide/16 v13, 0x0

    .line 403
    .line 404
    const/16 v16, 0x0

    .line 405
    .line 406
    const/4 v15, 0x0

    .line 407
    const/16 v17, 0x0

    .line 408
    .line 409
    const/16 v16, 0x0

    .line 410
    .line 411
    const/16 v18, 0x0

    .line 412
    .line 413
    const/16 v17, 0x0

    .line 414
    .line 415
    const/16 v19, 0x0

    .line 416
    .line 417
    const/16 v18, 0x0

    .line 418
    .line 419
    const/16 v20, 0x0

    .line 420
    .line 421
    const/16 v19, 0x0

    .line 422
    .line 423
    const/16 v21, 0x0

    .line 424
    .line 425
    move-object/from16 v20, v3

    .line 426
    .line 427
    move-object v3, v1

    .line 428
    const/4 v1, 0x0

    .line 429
    invoke-static/range {v3 .. v23}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 430
    .line 431
    .line 432
    move-object/from16 v3, v20

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_e
    const/4 v1, 0x0

    .line 436
    const/4 v2, 0x1

    .line 437
    :goto_8
    invoke-virtual {v3, v1}, Lf1/s;->p(Z)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v2}, Lf1/s;->p(Z)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, v1}, Lf1/s;->p(Z)V

    .line 444
    .line 445
    .line 446
    return-object v24

    .line 447
    :cond_f
    invoke-virtual {v3}, Lf1/s;->Q()V

    .line 448
    .line 449
    .line 450
    return-object v24
.end method
