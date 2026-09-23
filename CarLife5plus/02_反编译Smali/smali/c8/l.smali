.class public final Lc8/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lf1/b1;


# direct methods
.method public constructor <init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lf1/b1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc8/l;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/l;->b:Lf1/b1;

    iput-object p2, p0, Lc8/l;->c:Lf1/b1;

    iput-object p3, p0, Lc8/l;->d:Ljava/util/List;

    iput-object p4, p0, Lc8/l;->e:Lf1/b1;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lf1/b1;Lf1/b1;Lf1/b1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc8/l;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/l;->d:Ljava/util/List;

    iput-object p2, p0, Lc8/l;->b:Lf1/b1;

    iput-object p3, p0, Lc8/l;->c:Lf1/b1;

    iput-object p4, p0, Lc8/l;->e:Lf1/b1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/l;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v3, v0, Lc8/l;->e:Lf1/b1;

    .line 8
    .line 9
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    iget-object v6, v0, Lc8/l;->b:Lf1/b1;

    .line 13
    .line 14
    iget-object v7, v0, Lc8/l;->c:Lf1/b1;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Lf1/s;

    .line 23
    .line 24
    move-object/from16 v9, p2

    .line 25
    .line 26
    check-cast v9, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    and-int/lit8 v9, v9, 0x3

    .line 33
    .line 34
    if-ne v9, v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-nez v9, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 44
    .line 45
    .line 46
    move-object/from16 v23, v2

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_1
    :goto_0
    const v9, 0x6e3c21fe

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v9}, Lf1/s;->W(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    if-ne v9, v4, :cond_2

    .line 61
    .line 62
    invoke-static {v1}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    :cond_2
    move-object v11, v9

    .line 67
    check-cast v11, Lb0/k;

    .line 68
    .line 69
    const v9, 0x4c5de2

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v8, v9}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    if-ne v10, v4, :cond_3

    .line 77
    .line 78
    new-instance v10, La8/f;

    .line 79
    .line 80
    const/16 v12, 0xe

    .line 81
    .line 82
    invoke-direct {v10, v6, v12}, La8/f;-><init>(Lf1/b1;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    move-object v14, v10

    .line 89
    check-cast v14, Lf9/a;

    .line 90
    .line 91
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 92
    .line 93
    .line 94
    const/16 v15, 0x1c

    .line 95
    .line 96
    sget-object v10, Lr1/m;->a:Lr1/m;

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    const/4 v13, 0x0

    .line 100
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    sget-object v12, Ld0/h;->c:Ld0/b;

    .line 105
    .line 106
    sget-object v13, Lr1/c;->m:Lr1/f;

    .line 107
    .line 108
    invoke-static {v12, v13, v1, v8}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    iget-wide v13, v1, Lf1/s;->T:J

    .line 113
    .line 114
    const/16 v15, 0x20

    .line 115
    .line 116
    ushr-long v16, v13, v15

    .line 117
    .line 118
    xor-long v13, v13, v16

    .line 119
    .line 120
    long-to-int v14, v13

    .line 121
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-static {v1, v11}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    sget-object v16, Lq2/j;->d0:Lq2/i;

    .line 130
    .line 131
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    const/16 p1, 0x20

    .line 135
    .line 136
    sget-object v15, Lq2/i;->b:Lq2/a0;

    .line 137
    .line 138
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 139
    .line 140
    .line 141
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 142
    .line 143
    if-eqz v9, :cond_4

    .line 144
    .line 145
    invoke-virtual {v1, v15}, Lf1/s;->k(Lf9/a;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 150
    .line 151
    .line 152
    :goto_1
    sget-object v9, Lq2/i;->e:Lq2/h;

    .line 153
    .line 154
    invoke-static {v1, v9, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    sget-object v12, Lq2/i;->d:Lq2/h;

    .line 158
    .line 159
    invoke-static {v1, v12, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    sget-object v13, Lq2/i;->f:Lq2/h;

    .line 163
    .line 164
    iget-boolean v8, v1, Lf1/s;->S:Z

    .line 165
    .line 166
    if-nez v8, :cond_5

    .line 167
    .line 168
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v8, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-nez v5, :cond_6

    .line 181
    .line 182
    :cond_5
    invoke-static {v14, v1, v14, v13}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    sget-object v5, Lq2/i;->c:Lq2/h;

    .line 186
    .line 187
    invoke-static {v1, v5, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    const-string v8, "\u9ad8\u5fb7\u5e7f\u64ad"

    .line 191
    .line 192
    const/4 v11, 0x0

    .line 193
    const/4 v14, 0x6

    .line 194
    move-object/from16 v23, v2

    .line 195
    .line 196
    const/4 v2, 0x2

    .line 197
    invoke-static {v8, v11, v1, v14, v2}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 198
    .line 199
    .line 200
    const/4 v2, 0x5

    .line 201
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v1, v2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 210
    .line 211
    .line 212
    sget-object v2, Ld0/h;->a:Ld0/b;

    .line 213
    .line 214
    sget-object v8, Lr1/c;->j:Lr1/g;

    .line 215
    .line 216
    const/4 v11, 0x0

    .line 217
    invoke-static {v2, v8, v1, v11}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    move-object v11, v7

    .line 222
    iget-wide v7, v1, Lf1/s;->T:J

    .line 223
    .line 224
    ushr-long v17, v7, p1

    .line 225
    .line 226
    xor-long v7, v7, v17

    .line 227
    .line 228
    long-to-int v8, v7

    .line 229
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-static {v1, v10}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 238
    .line 239
    .line 240
    iget-boolean v14, v1, Lf1/s;->S:Z

    .line 241
    .line 242
    if-eqz v14, :cond_7

    .line 243
    .line 244
    invoke-virtual {v1, v15}, Lf1/s;->k(Lf9/a;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_7
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 249
    .line 250
    .line 251
    :goto_2
    invoke-static {v1, v9, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v1, v12, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-boolean v2, v1, Lf1/s;->S:Z

    .line 258
    .line 259
    if-nez v2, :cond_8

    .line 260
    .line 261
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-static {v2, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_9

    .line 274
    .line 275
    :cond_8
    invoke-static {v8, v1, v8, v13}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 276
    .line 277
    .line 278
    :cond_9
    invoke-static {v1, v5, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    sget v2, Lc8/v;->e:I

    .line 282
    .line 283
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Lj8/k0;

    .line 288
    .line 289
    iget-object v2, v2, Lj8/k0;->a:Ljava/lang/String;

    .line 290
    .line 291
    const/4 v5, 0x0

    .line 292
    invoke-static {v2, v1, v5}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 293
    .line 294
    .line 295
    invoke-static {v5, v1}, Lg5/a;->i(ILf1/s;)V

    .line 296
    .line 297
    .line 298
    const/4 v2, 0x1

    .line 299
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    check-cast v2, Ljava/lang/Boolean;

    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    const v2, 0x4c5de2

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    if-ne v2, v4, :cond_a

    .line 326
    .line 327
    new-instance v2, La8/f;

    .line 328
    .line 329
    const/16 v4, 0xf

    .line 330
    .line 331
    invoke-direct {v2, v6, v4}, La8/f;-><init>(Lf1/b1;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_a
    move-object v10, v2

    .line 338
    check-cast v10, Lf9/a;

    .line 339
    .line 340
    const/4 v5, 0x0

    .line 341
    invoke-virtual {v1, v5}, Lf1/s;->p(Z)V

    .line 342
    .line 343
    .line 344
    new-instance v2, Lc8/l;

    .line 345
    .line 346
    iget-object v4, v0, Lc8/l;->d:Ljava/util/List;

    .line 347
    .line 348
    invoke-direct {v2, v4, v11, v6, v3}, Lc8/l;-><init>(Ljava/util/List;Lf1/b1;Lf1/b1;Lf1/b1;)V

    .line 349
    .line 350
    .line 351
    const v3, 0x7f4cf3f1

    .line 352
    .line 353
    .line 354
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 355
    .line 356
    .line 357
    move-result-object v19

    .line 358
    const/16 v21, 0x30

    .line 359
    .line 360
    const/16 v22, 0x3fc

    .line 361
    .line 362
    const-wide/16 v11, 0x0

    .line 363
    .line 364
    const/4 v13, 0x0

    .line 365
    const/4 v14, 0x0

    .line 366
    const/4 v15, 0x0

    .line 367
    const/16 v16, 0x0

    .line 368
    .line 369
    const/16 v17, 0x0

    .line 370
    .line 371
    const/16 v18, 0x0

    .line 372
    .line 373
    move-object/from16 v20, v1

    .line 374
    .line 375
    invoke-static/range {v9 .. v22}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 376
    .line 377
    .line 378
    :goto_3
    return-object v23

    .line 379
    :pswitch_0
    move-object/from16 v23, v2

    .line 380
    .line 381
    move-object v11, v7

    .line 382
    move-object/from16 v1, p1

    .line 383
    .line 384
    check-cast v1, Lf1/s;

    .line 385
    .line 386
    move-object/from16 v2, p2

    .line 387
    .line 388
    check-cast v2, Ljava/lang/Number;

    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    and-int/lit8 v2, v2, 0x3

    .line 395
    .line 396
    const/4 v5, 0x2

    .line 397
    if-ne v2, v5, :cond_c

    .line 398
    .line 399
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-nez v2, :cond_b

    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_b
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 407
    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_c
    :goto_4
    sget v2, Lc8/v;->e:I

    .line 411
    .line 412
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    move-object/from16 v25, v2

    .line 417
    .line 418
    check-cast v25, Lj8/k0;

    .line 419
    .line 420
    const v2, -0x6815fd56

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    if-ne v2, v4, :cond_d

    .line 431
    .line 432
    new-instance v2, Lc8/k;

    .line 433
    .line 434
    const/4 v5, 0x0

    .line 435
    invoke-direct {v2, v5, v6, v11, v3}, Lc8/k;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    goto :goto_5

    .line 442
    :cond_d
    const/4 v5, 0x0

    .line 443
    :goto_5
    move-object/from16 v30, v2

    .line 444
    .line 445
    check-cast v30, Lf9/k;

    .line 446
    .line 447
    invoke-virtual {v1, v5}, Lf1/s;->p(Z)V

    .line 448
    .line 449
    .line 450
    const v32, 0x180048

    .line 451
    .line 452
    .line 453
    const/16 v33, 0x3c

    .line 454
    .line 455
    iget-object v2, v0, Lc8/l;->d:Ljava/util/List;

    .line 456
    .line 457
    const/16 v26, 0x0

    .line 458
    .line 459
    const/16 v27, 0x0

    .line 460
    .line 461
    const/16 v28, 0x0

    .line 462
    .line 463
    const/16 v29, 0x0

    .line 464
    .line 465
    move-object/from16 v31, v1

    .line 466
    .line 467
    move-object/from16 v24, v2

    .line 468
    .line 469
    invoke-static/range {v24 .. v33}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 470
    .line 471
    .line 472
    :goto_6
    return-object v23

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
