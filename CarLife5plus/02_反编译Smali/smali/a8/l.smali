.class public final La8/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lp1/p;


# direct methods
.method public constructor <init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lp1/p;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La8/l;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/l;->b:Lf1/b1;

    iput-object p2, p0, La8/l;->c:Lf1/b1;

    iput-object p3, p0, La8/l;->d:Ljava/util/List;

    iput-object p4, p0, La8/l;->e:Lp1/p;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lf1/b1;Lp1/p;Lf1/b1;I)V
    .locals 0

    .line 2
    iput p5, p0, La8/l;->a:I

    iput-object p1, p0, La8/l;->d:Ljava/util/List;

    iput-object p2, p0, La8/l;->b:Lf1/b1;

    iput-object p3, p0, La8/l;->e:Lp1/p;

    iput-object p4, p0, La8/l;->c:Lf1/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/l;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v0, La8/l;->c:Lf1/b1;

    .line 7
    .line 8
    iget-object v4, v0, La8/l;->e:Lp1/p;

    .line 9
    .line 10
    const v5, -0x6815fd56

    .line 11
    .line 12
    .line 13
    iget-object v6, v0, La8/l;->b:Lf1/b1;

    .line 14
    .line 15
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 16
    .line 17
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 18
    .line 19
    const/4 v9, 0x2

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x3

    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Lf1/s;

    .line 28
    .line 29
    move-object/from16 v12, p2

    .line 30
    .line 31
    check-cast v12, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    and-int/2addr v11, v12

    .line 38
    if-ne v11, v9, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-nez v9, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    sget-object v9, La8/t;->a:La8/t;

    .line 52
    .line 53
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    move-object v13, v9

    .line 58
    check-cast v13, Lj8/k0;

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-ne v5, v8, :cond_2

    .line 68
    .line 69
    new-instance v5, La8/k;

    .line 70
    .line 71
    invoke-direct {v5, v4, v6, v3, v2}, La8/k;-><init>(Lp1/p;Lf1/b1;Lf1/b1;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    move-object/from16 v18, v5

    .line 78
    .line 79
    check-cast v18, Lf9/k;

    .line 80
    .line 81
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 82
    .line 83
    .line 84
    const/high16 v20, 0x180000

    .line 85
    .line 86
    const/16 v21, 0x3c

    .line 87
    .line 88
    iget-object v12, v0, La8/l;->d:Ljava/util/List;

    .line 89
    .line 90
    const/4 v14, 0x0

    .line 91
    const/4 v15, 0x0

    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const/16 v17, 0x0

    .line 95
    .line 96
    move-object/from16 v19, v1

    .line 97
    .line 98
    invoke-static/range {v12 .. v21}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-object v7

    .line 102
    :pswitch_0
    move-object/from16 v1, p1

    .line 103
    .line 104
    check-cast v1, Lf1/s;

    .line 105
    .line 106
    move-object/from16 v3, p2

    .line 107
    .line 108
    check-cast v3, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    and-int/2addr v3, v11

    .line 115
    if-ne v3, v9, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_4
    :goto_2
    const v3, 0x6e3c21fe

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-ne v3, v8, :cond_5

    .line 140
    .line 141
    invoke-static {v1}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :cond_5
    move-object v13, v3

    .line 146
    check-cast v13, Lb0/k;

    .line 147
    .line 148
    const v3, 0x4c5de2

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v10, v3}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v5, v0, La8/l;->b:Lf1/b1;

    .line 156
    .line 157
    if-ne v4, v8, :cond_6

    .line 158
    .line 159
    new-instance v4, La8/f;

    .line 160
    .line 161
    invoke-direct {v4, v5, v11}, La8/f;-><init>(Lf1/b1;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    move-object/from16 v16, v4

    .line 168
    .line 169
    check-cast v16, Lf9/a;

    .line 170
    .line 171
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 172
    .line 173
    .line 174
    const/16 v17, 0x1c

    .line 175
    .line 176
    sget-object v12, Lr1/m;->a:Lr1/m;

    .line 177
    .line 178
    const/4 v14, 0x0

    .line 179
    const/4 v15, 0x0

    .line 180
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    sget-object v6, Ld0/h;->c:Ld0/b;

    .line 185
    .line 186
    sget-object v11, Lr1/c;->m:Lr1/f;

    .line 187
    .line 188
    invoke-static {v6, v11, v1, v10}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    iget-wide v13, v1, Lf1/s;->T:J

    .line 193
    .line 194
    const/16 v11, 0x20

    .line 195
    .line 196
    ushr-long v15, v13, v11

    .line 197
    .line 198
    xor-long/2addr v13, v15

    .line 199
    long-to-int v14, v13

    .line 200
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-static {v1, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    sget-object v15, Lq2/j;->d0:Lq2/i;

    .line 209
    .line 210
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    sget-object v15, Lq2/i;->b:Lq2/a0;

    .line 214
    .line 215
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 216
    .line 217
    .line 218
    const/16 p1, 0x20

    .line 219
    .line 220
    iget-boolean v11, v1, Lf1/s;->S:Z

    .line 221
    .line 222
    if-eqz v11, :cond_7

    .line 223
    .line 224
    invoke-virtual {v1, v15}, Lf1/s;->k(Lf9/a;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 229
    .line 230
    .line 231
    :goto_3
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 232
    .line 233
    invoke-static {v1, v11, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 237
    .line 238
    invoke-static {v1, v6, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    sget-object v13, Lq2/i;->f:Lq2/h;

    .line 242
    .line 243
    iget-boolean v3, v1, Lf1/s;->S:Z

    .line 244
    .line 245
    if-nez v3, :cond_8

    .line 246
    .line 247
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v3, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_9

    .line 260
    .line 261
    :cond_8
    invoke-static {v14, v1, v14, v13}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 262
    .line 263
    .line 264
    :cond_9
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 265
    .line 266
    invoke-static {v1, v2, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    const-string v3, "\u5b9e\u65f6\u65e5\u5fd7"

    .line 270
    .line 271
    const/4 v4, 0x0

    .line 272
    const/4 v14, 0x6

    .line 273
    invoke-static {v3, v4, v1, v14, v9}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 274
    .line 275
    .line 276
    const/4 v3, 0x5

    .line 277
    invoke-static {v3, v1}, Lg5/a;->B(ILf1/s;)F

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-static {v1, v3}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 286
    .line 287
    .line 288
    sget-object v3, Ld0/h;->a:Ld0/b;

    .line 289
    .line 290
    sget-object v4, Lr1/c;->j:Lr1/g;

    .line 291
    .line 292
    invoke-static {v3, v4, v1, v10}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    move-object v4, v11

    .line 297
    iget-wide v10, v1, Lf1/s;->T:J

    .line 298
    .line 299
    ushr-long v17, v10, p1

    .line 300
    .line 301
    xor-long v10, v10, v17

    .line 302
    .line 303
    long-to-int v9, v10

    .line 304
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-static {v1, v12}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 313
    .line 314
    .line 315
    iget-boolean v12, v1, Lf1/s;->S:Z

    .line 316
    .line 317
    if-eqz v12, :cond_a

    .line 318
    .line 319
    invoke-virtual {v1, v15}, Lf1/s;->k(Lf9/a;)V

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_a
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 324
    .line 325
    .line 326
    :goto_4
    invoke-static {v1, v4, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v1, v6, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    iget-boolean v3, v1, Lf1/s;->S:Z

    .line 333
    .line 334
    if-nez v3, :cond_b

    .line 335
    .line 336
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-nez v3, :cond_c

    .line 349
    .line 350
    :cond_b
    invoke-static {v9, v1, v9, v13}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 351
    .line 352
    .line 353
    :cond_c
    invoke-static {v1, v2, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    sget-object v2, La8/t;->a:La8/t;

    .line 357
    .line 358
    iget-object v2, v0, La8/l;->c:Lf1/b1;

    .line 359
    .line 360
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    check-cast v3, Lj8/k0;

    .line 365
    .line 366
    iget-object v3, v3, Lj8/k0;->a:Ljava/lang/String;

    .line 367
    .line 368
    const/4 v14, 0x0

    .line 369
    invoke-static {v3, v1, v14}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 370
    .line 371
    .line 372
    invoke-static {v14, v1}, Lg5/a;->i(ILf1/s;)V

    .line 373
    .line 374
    .line 375
    const/4 v3, 0x1

    .line 376
    invoke-virtual {v1, v3}, Lf1/s;->p(Z)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v3}, Lf1/s;->p(Z)V

    .line 380
    .line 381
    .line 382
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    check-cast v3, Ljava/lang/Boolean;

    .line 387
    .line 388
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 389
    .line 390
    .line 391
    move-result v22

    .line 392
    const v3, 0x4c5de2

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    if-ne v3, v8, :cond_d

    .line 403
    .line 404
    new-instance v3, La8/f;

    .line 405
    .line 406
    const/4 v4, 0x4

    .line 407
    invoke-direct {v3, v5, v4}, La8/f;-><init>(Lf1/b1;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    :cond_d
    move-object/from16 v23, v3

    .line 414
    .line 415
    check-cast v23, Lf9/a;

    .line 416
    .line 417
    const/4 v14, 0x0

    .line 418
    invoke-virtual {v1, v14}, Lf1/s;->p(Z)V

    .line 419
    .line 420
    .line 421
    new-instance v14, La8/l;

    .line 422
    .line 423
    iget-object v3, v0, La8/l;->e:Lp1/p;

    .line 424
    .line 425
    const/16 v19, 0x0

    .line 426
    .line 427
    iget-object v15, v0, La8/l;->d:Ljava/util/List;

    .line 428
    .line 429
    move-object/from16 v16, v2

    .line 430
    .line 431
    move-object/from16 v17, v3

    .line 432
    .line 433
    move-object/from16 v18, v5

    .line 434
    .line 435
    invoke-direct/range {v14 .. v19}, La8/l;-><init>(Ljava/util/List;Lf1/b1;Lp1/p;Lf1/b1;I)V

    .line 436
    .line 437
    .line 438
    const v2, -0x6cc16772

    .line 439
    .line 440
    .line 441
    invoke-static {v2, v14, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 442
    .line 443
    .line 444
    move-result-object v32

    .line 445
    const/16 v34, 0x30

    .line 446
    .line 447
    const/16 v35, 0x3fc

    .line 448
    .line 449
    const-wide/16 v24, 0x0

    .line 450
    .line 451
    const/16 v26, 0x0

    .line 452
    .line 453
    const/16 v27, 0x0

    .line 454
    .line 455
    const/16 v28, 0x0

    .line 456
    .line 457
    const/16 v29, 0x0

    .line 458
    .line 459
    const/16 v30, 0x0

    .line 460
    .line 461
    const/16 v31, 0x0

    .line 462
    .line 463
    move-object/from16 v33, v1

    .line 464
    .line 465
    invoke-static/range {v22 .. v35}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 466
    .line 467
    .line 468
    :goto_5
    return-object v7

    .line 469
    :pswitch_1
    move-object/from16 v15, p1

    .line 470
    .line 471
    check-cast v15, Lf1/s;

    .line 472
    .line 473
    move-object/from16 v1, p2

    .line 474
    .line 475
    check-cast v1, Ljava/lang/Number;

    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    and-int/2addr v1, v11

    .line 482
    if-ne v1, v9, :cond_f

    .line 483
    .line 484
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_e

    .line 489
    .line 490
    goto :goto_6

    .line 491
    :cond_e
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 492
    .line 493
    .line 494
    goto :goto_8

    .line 495
    :cond_f
    :goto_6
    sget-object v1, La8/t;->a:La8/t;

    .line 496
    .line 497
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    move-object v9, v1

    .line 502
    check-cast v9, Lj8/k0;

    .line 503
    .line 504
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    if-ne v1, v8, :cond_10

    .line 512
    .line 513
    new-instance v1, La8/k;

    .line 514
    .line 515
    const/4 v14, 0x0

    .line 516
    invoke-direct {v1, v4, v6, v3, v14}, La8/k;-><init>(Lp1/p;Lf1/b1;Lf1/b1;I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v15, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_10
    const/4 v14, 0x0

    .line 524
    :goto_7
    check-cast v1, Lf9/k;

    .line 525
    .line 526
    invoke-virtual {v15, v14}, Lf1/s;->p(Z)V

    .line 527
    .line 528
    .line 529
    const/high16 v16, 0x180000

    .line 530
    .line 531
    const/16 v17, 0x3c

    .line 532
    .line 533
    iget-object v8, v0, La8/l;->d:Ljava/util/List;

    .line 534
    .line 535
    const/4 v10, 0x0

    .line 536
    const/4 v11, 0x0

    .line 537
    const/4 v12, 0x0

    .line 538
    const/4 v13, 0x0

    .line 539
    move-object v14, v1

    .line 540
    invoke-static/range {v8 .. v17}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 541
    .line 542
    .line 543
    :goto_8
    return-object v7

    .line 544
    nop

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
