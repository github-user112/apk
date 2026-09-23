.class public final Lc8/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Lz7/v1;Lf1/b1;Lf1/h1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lc8/m;->a:I

    iput-object p1, p0, Lc8/m;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc8/m;->d:Ljava/lang/Object;

    iput-object p3, p0, Lc8/m;->b:Ljava/lang/Object;

    iput-object p4, p0, Lc8/m;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lc8/m;->a:I

    iput-object p1, p0, Lc8/m;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc8/m;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc8/m;->d:Ljava/lang/Object;

    iput-object p4, p0, Lc8/m;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lr8/e;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 3
    iput p5, p0, Lc8/m;->a:I

    iput-object p1, p0, Lc8/m;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc8/m;->e:Ljava/lang/Object;

    iput-object p3, p0, Lc8/m;->b:Ljava/lang/Object;

    iput-object p4, p0, Lc8/m;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/m;->a:I

    .line 4
    .line 5
    const v2, -0x6815fd56

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x6

    .line 9
    const/4 v4, 0x1

    .line 10
    const v5, -0x48fade91

    .line 11
    .line 12
    .line 13
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 17
    .line 18
    const/4 v9, 0x2

    .line 19
    iget-object v10, v0, Lc8/m;->c:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v11, v0, Lc8/m;->b:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v12, v0, Lc8/m;->d:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v13, v0, Lc8/m;->e:Ljava/lang/Object;

    .line 26
    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    move-object/from16 v1, p1

    .line 31
    .line 32
    check-cast v1, Lf1/s;

    .line 33
    .line 34
    move-object/from16 v2, p2

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    check-cast v13, Ljava/lang/String;

    .line 43
    .line 44
    check-cast v12, Ljava/lang/String;

    .line 45
    .line 46
    check-cast v11, Lr2/d1;

    .line 47
    .line 48
    move-object v15, v10

    .line 49
    check-cast v15, Lac/w;

    .line 50
    .line 51
    and-int/lit8 v2, v2, 0x3

    .line 52
    .line 53
    if-ne v2, v9, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v15}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v1, v11}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    or-int/2addr v2, v3

    .line 78
    invoke-virtual {v1, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    or-int/2addr v2, v3

    .line 83
    invoke-virtual {v1, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    or-int/2addr v2, v3

    .line 88
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    if-ne v3, v8, :cond_3

    .line 95
    .line 96
    :cond_2
    new-instance v14, Lc8/b0;

    .line 97
    .line 98
    const/16 v19, 0x3

    .line 99
    .line 100
    move-object/from16 v16, v11

    .line 101
    .line 102
    move-object/from16 v17, v12

    .line 103
    .line 104
    move-object/from16 v18, v13

    .line 105
    .line 106
    invoke-direct/range {v14 .. v19}, Lc8/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v14}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    move-object v3, v14

    .line 113
    :cond_3
    move-object/from16 v19, v3

    .line 114
    .line 115
    check-cast v19, Lf9/a;

    .line 116
    .line 117
    invoke-virtual {v1, v7}, Lf1/s;->p(Z)V

    .line 118
    .line 119
    .line 120
    const/16 v21, 0x6

    .line 121
    .line 122
    const/16 v22, 0x6

    .line 123
    .line 124
    const-string v14, "\u590d\u5236"

    .line 125
    .line 126
    const-wide/16 v15, 0x0

    .line 127
    .line 128
    const-wide/16 v17, 0x0

    .line 129
    .line 130
    move-object/from16 v20, v1

    .line 131
    .line 132
    invoke-static/range {v14 .. v22}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-object v6

    .line 136
    :pswitch_0
    move-object/from16 v1, p1

    .line 137
    .line 138
    check-cast v1, Lf1/s;

    .line 139
    .line 140
    move-object/from16 v2, p2

    .line 141
    .line 142
    check-cast v2, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    check-cast v11, Lf1/b1;

    .line 149
    .line 150
    and-int/lit8 v5, v2, 0x3

    .line 151
    .line 152
    if-eq v5, v9, :cond_4

    .line 153
    .line 154
    const/4 v5, 0x1

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    const/4 v5, 0x0

    .line 157
    :goto_2
    and-int/2addr v2, v4

    .line 158
    invoke-virtual {v1, v2, v5}, Lf1/s;->N(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_a

    .line 163
    .line 164
    check-cast v10, Lr1/p;

    .line 165
    .line 166
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    if-ne v2, v8, :cond_5

    .line 171
    .line 172
    new-instance v2, La8/s0;

    .line 173
    .line 174
    const/16 v5, 0x17

    .line 175
    .line 176
    invoke-direct {v2, v11, v5}, La8/s0;-><init>(Lf1/b1;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    check-cast v2, Lf9/k;

    .line 183
    .line 184
    invoke-static {v10, v2}, Landroidx/compose/ui/layout/a;->d(Lr1/p;Lf9/k;)Lr1/p;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v12, Ln1/c;

    .line 189
    .line 190
    check-cast v13, Ls0/c;

    .line 191
    .line 192
    sget-object v5, Lr1/c;->a:Lr1/h;

    .line 193
    .line 194
    invoke-static {v5, v4}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    iget-wide v9, v1, Lf1/s;->T:J

    .line 199
    .line 200
    const/16 v14, 0x20

    .line 201
    .line 202
    ushr-long v14, v9, v14

    .line 203
    .line 204
    xor-long/2addr v9, v14

    .line 205
    long-to-int v10, v9

    .line 206
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-static {v1, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sget-object v14, Lq2/j;->d0:Lq2/i;

    .line 215
    .line 216
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    sget-object v14, Lq2/i;->b:Lq2/a0;

    .line 220
    .line 221
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 222
    .line 223
    .line 224
    iget-boolean v15, v1, Lf1/s;->S:Z

    .line 225
    .line 226
    if-eqz v15, :cond_6

    .line 227
    .line 228
    invoke-virtual {v1, v14}, Lf1/s;->k(Lf9/a;)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 233
    .line 234
    .line 235
    :goto_3
    sget-object v14, Lq2/i;->e:Lq2/h;

    .line 236
    .line 237
    invoke-static {v1, v14, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    sget-object v5, Lq2/i;->d:Lq2/h;

    .line 241
    .line 242
    invoke-static {v1, v5, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    sget-object v5, Lq2/i;->f:Lq2/h;

    .line 246
    .line 247
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 248
    .line 249
    if-nez v9, :cond_7

    .line 250
    .line 251
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    invoke-static {v9, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    if-nez v9, :cond_8

    .line 264
    .line 265
    :cond_7
    invoke-static {v10, v1, v10, v5}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 266
    .line 267
    .line 268
    :cond_8
    sget-object v5, Lq2/i;->c:Lq2/h;

    .line 269
    .line 270
    invoke-static {v1, v5, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v12, v1, v2}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    if-ne v2, v8, :cond_9

    .line 285
    .line 286
    new-instance v2, Lj8/h;

    .line 287
    .line 288
    const/16 v5, 0x1d

    .line 289
    .line 290
    invoke-direct {v2, v11, v5}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_9
    check-cast v2, Lf9/a;

    .line 297
    .line 298
    invoke-virtual {v13, v2, v1, v3}, Ls0/c;->b(Lf9/a;Lf1/s;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v4}, Lf1/s;->p(Z)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 306
    .line 307
    .line 308
    :goto_4
    return-object v6

    .line 309
    :pswitch_1
    move-object/from16 v1, p1

    .line 310
    .line 311
    check-cast v1, Lf1/s;

    .line 312
    .line 313
    move-object/from16 v3, p2

    .line 314
    .line 315
    check-cast v3, Ljava/lang/Number;

    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    check-cast v13, Lf9/k;

    .line 322
    .line 323
    check-cast v11, Lf1/b1;

    .line 324
    .line 325
    and-int/lit8 v3, v3, 0x3

    .line 326
    .line 327
    if-ne v3, v9, :cond_c

    .line 328
    .line 329
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-nez v3, :cond_b

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_b
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_c
    :goto_5
    move-object v14, v10

    .line 341
    check-cast v14, Lp1/p;

    .line 342
    .line 343
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    move-object v15, v3

    .line 348
    check-cast v15, Lj8/k0;

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    check-cast v12, Lf1/b1;

    .line 358
    .line 359
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    if-nez v2, :cond_d

    .line 364
    .line 365
    if-ne v3, v8, :cond_e

    .line 366
    .line 367
    :cond_d
    new-instance v3, Ll0/h;

    .line 368
    .line 369
    invoke-direct {v3, v13, v12, v11, v4}, Ll0/h;-><init>(Lf9/k;Lf1/b1;Lf1/b1;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :cond_e
    move-object/from16 v20, v3

    .line 376
    .line 377
    check-cast v20, Lf9/k;

    .line 378
    .line 379
    invoke-virtual {v1, v7}, Lf1/s;->p(Z)V

    .line 380
    .line 381
    .line 382
    const/16 v22, 0x1c6

    .line 383
    .line 384
    const/16 v23, 0x38

    .line 385
    .line 386
    const/16 v16, 0x1

    .line 387
    .line 388
    const/16 v17, 0x0

    .line 389
    .line 390
    const/16 v18, 0x0

    .line 391
    .line 392
    const/16 v19, 0x0

    .line 393
    .line 394
    move-object/from16 v21, v1

    .line 395
    .line 396
    invoke-static/range {v14 .. v23}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 397
    .line 398
    .line 399
    :goto_6
    return-object v6

    .line 400
    :pswitch_2
    move-object/from16 v1, p1

    .line 401
    .line 402
    check-cast v1, Lf1/s;

    .line 403
    .line 404
    move-object/from16 v5, p2

    .line 405
    .line 406
    check-cast v5, Ljava/lang/Number;

    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    check-cast v13, Lf9/a;

    .line 413
    .line 414
    check-cast v10, Lf9/n;

    .line 415
    .line 416
    check-cast v12, Lf1/b1;

    .line 417
    .line 418
    check-cast v11, Lf1/b1;

    .line 419
    .line 420
    and-int/lit8 v5, v5, 0x3

    .line 421
    .line 422
    if-ne v5, v9, :cond_10

    .line 423
    .line 424
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-nez v5, :cond_f

    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_f
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_9

    .line 435
    .line 436
    :cond_10
    :goto_7
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    check-cast v5, [Ljava/io/File;

    .line 441
    .line 442
    new-instance v9, Ljava/util/ArrayList;

    .line 443
    .line 444
    array-length v14, v5

    .line 445
    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    .line 447
    .line 448
    array-length v14, v5

    .line 449
    const/4 v15, 0x0

    .line 450
    :goto_8
    if-ge v15, v14, :cond_11

    .line 451
    .line 452
    aget-object v16, v5, v15

    .line 453
    .line 454
    new-instance v17, Lj8/k0;

    .line 455
    .line 456
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v7

    .line 460
    const-string v3, "getName(...)"

    .line 461
    .line 462
    invoke-static {v7, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    new-instance v3, Lj8/m0;

    .line 466
    .line 467
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->hashCode()I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    invoke-direct {v3, v2}, Lj8/m0;-><init>(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    const-string v4, "getCanonicalPath(...)"

    .line 479
    .line 480
    invoke-static {v2, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const/16 v22, 0x0

    .line 484
    .line 485
    const/16 v23, 0x18

    .line 486
    .line 487
    const/16 v21, 0x0

    .line 488
    .line 489
    move-object/from16 v20, v2

    .line 490
    .line 491
    move-object/from16 v19, v3

    .line 492
    .line 493
    move-object/from16 v18, v7

    .line 494
    .line 495
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 496
    .line 497
    .line 498
    move-object/from16 v2, v17

    .line 499
    .line 500
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    add-int/lit8 v15, v15, 0x1

    .line 504
    .line 505
    const v2, -0x6815fd56

    .line 506
    .line 507
    .line 508
    const/4 v3, 0x6

    .line 509
    const/4 v4, 0x1

    .line 510
    const/4 v7, 0x0

    .line 511
    goto :goto_8

    .line 512
    :cond_11
    const/16 v2, 0x58

    .line 513
    .line 514
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 515
    .line 516
    .line 517
    move-result v28

    .line 518
    new-instance v2, Ll0/k1;

    .line 519
    .line 520
    const/4 v3, 0x1

    .line 521
    invoke-direct {v2, v3, v12, v11}, Ll0/k1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    const v3, 0x7fa688cb

    .line 525
    .line 526
    .line 527
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 528
    .line 529
    .line 530
    move-result-object v27

    .line 531
    const v2, -0x6815fd56

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    invoke-virtual {v1, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    or-int/2addr v2, v3

    .line 546
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    if-nez v2, :cond_12

    .line 551
    .line 552
    if-ne v3, v8, :cond_13

    .line 553
    .line 554
    :cond_12
    new-instance v3, Ll0/u;

    .line 555
    .line 556
    const/4 v2, 0x6

    .line 557
    invoke-direct {v3, v10, v13, v12, v2}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    :cond_13
    move-object/from16 v30, v3

    .line 564
    .line 565
    check-cast v30, Lf9/k;

    .line 566
    .line 567
    const/4 v2, 0x0

    .line 568
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 569
    .line 570
    .line 571
    const/16 v32, 0xd80

    .line 572
    .line 573
    const/16 v33, 0x22

    .line 574
    .line 575
    const/16 v25, 0x0

    .line 576
    .line 577
    const/16 v26, 0x1

    .line 578
    .line 579
    const/16 v29, 0x0

    .line 580
    .line 581
    move-object/from16 v31, v1

    .line 582
    .line 583
    move-object/from16 v24, v9

    .line 584
    .line 585
    invoke-static/range {v24 .. v33}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 586
    .line 587
    .line 588
    :goto_9
    return-object v6

    .line 589
    :pswitch_3
    move-object/from16 v1, p1

    .line 590
    .line 591
    check-cast v1, Lf1/s;

    .line 592
    .line 593
    move-object/from16 v2, p2

    .line 594
    .line 595
    check-cast v2, Ljava/lang/Number;

    .line 596
    .line 597
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    check-cast v13, Lf9/k;

    .line 602
    .line 603
    check-cast v10, Lr8/j;

    .line 604
    .line 605
    and-int/lit8 v2, v2, 0x3

    .line 606
    .line 607
    if-ne v2, v9, :cond_15

    .line 608
    .line 609
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-nez v2, :cond_14

    .line 614
    .line 615
    goto :goto_a

    .line 616
    :cond_14
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 617
    .line 618
    .line 619
    goto :goto_b

    .line 620
    :cond_15
    :goto_a
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    invoke-virtual {v1, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    or-int/2addr v2, v3

    .line 632
    check-cast v11, Lf1/b1;

    .line 633
    .line 634
    check-cast v12, Lf1/b1;

    .line 635
    .line 636
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    if-nez v2, :cond_16

    .line 641
    .line 642
    if-ne v3, v8, :cond_17

    .line 643
    .line 644
    :cond_16
    new-instance v3, Lc8/b0;

    .line 645
    .line 646
    invoke-direct {v3, v10, v13, v11, v12}, Lc8/b0;-><init>(Lr8/j;Lf9/k;Lf1/b1;Lf1/b1;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    :cond_17
    check-cast v3, Lf9/a;

    .line 653
    .line 654
    const/4 v2, 0x0

    .line 655
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 656
    .line 657
    .line 658
    const-string v2, "\u9ed8\u8ba4"

    .line 659
    .line 660
    const/4 v4, 0x6

    .line 661
    invoke-static {v2, v3, v1, v4}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 662
    .line 663
    .line 664
    :goto_b
    return-object v6

    .line 665
    :pswitch_4
    move-object v1, v13

    .line 666
    move-object/from16 v13, p1

    .line 667
    .line 668
    check-cast v13, Lf1/s;

    .line 669
    .line 670
    move-object/from16 v2, p2

    .line 671
    .line 672
    check-cast v2, Ljava/lang/Number;

    .line 673
    .line 674
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    check-cast v12, Lc8/e1;

    .line 679
    .line 680
    check-cast v10, Lf9/k;

    .line 681
    .line 682
    and-int/lit8 v2, v2, 0x3

    .line 683
    .line 684
    if-ne v2, v9, :cond_19

    .line 685
    .line 686
    invoke-virtual {v13}, Lf1/s;->z()Z

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    if-nez v2, :cond_18

    .line 691
    .line 692
    goto :goto_c

    .line 693
    :cond_18
    invoke-virtual {v13}, Lf1/s;->Q()V

    .line 694
    .line 695
    .line 696
    goto :goto_d

    .line 697
    :cond_19
    :goto_c
    invoke-virtual {v13, v5}, Lf1/s;->W(I)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v13, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    invoke-virtual {v13, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    or-int/2addr v2, v3

    .line 709
    check-cast v11, Lf1/b1;

    .line 710
    .line 711
    check-cast v1, Lf1/h1;

    .line 712
    .line 713
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    if-nez v2, :cond_1a

    .line 718
    .line 719
    if-ne v3, v8, :cond_1b

    .line 720
    .line 721
    :cond_1a
    new-instance v3, Lc8/c1;

    .line 722
    .line 723
    invoke-direct {v3, v10, v12, v11, v1}, Lc8/c1;-><init>(Lf9/k;Lc8/e1;Lf1/b1;Lf1/h1;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v13, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    :cond_1b
    move-object v12, v3

    .line 730
    check-cast v12, Lf9/a;

    .line 731
    .line 732
    const/4 v2, 0x0

    .line 733
    invoke-virtual {v13, v2}, Lf1/s;->p(Z)V

    .line 734
    .line 735
    .line 736
    const/4 v14, 0x6

    .line 737
    const/4 v15, 0x6

    .line 738
    const-string v7, "\u6dfb\u52a0"

    .line 739
    .line 740
    const-wide/16 v8, 0x0

    .line 741
    .line 742
    const-wide/16 v10, 0x0

    .line 743
    .line 744
    invoke-static/range {v7 .. v15}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 745
    .line 746
    .line 747
    :goto_d
    return-object v6

    .line 748
    :pswitch_5
    move-object v1, v13

    .line 749
    move-object/from16 v2, p1

    .line 750
    .line 751
    check-cast v2, Lf1/s;

    .line 752
    .line 753
    move-object/from16 v3, p2

    .line 754
    .line 755
    check-cast v3, Ljava/lang/Number;

    .line 756
    .line 757
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    move-object v15, v12

    .line 762
    check-cast v15, Lc8/b1;

    .line 763
    .line 764
    move-object v14, v10

    .line 765
    check-cast v14, Lf9/k;

    .line 766
    .line 767
    and-int/lit8 v3, v3, 0x3

    .line 768
    .line 769
    if-ne v3, v9, :cond_1d

    .line 770
    .line 771
    invoke-virtual {v2}, Lf1/s;->z()Z

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    if-nez v3, :cond_1c

    .line 776
    .line 777
    goto :goto_e

    .line 778
    :cond_1c
    invoke-virtual {v2}, Lf1/s;->Q()V

    .line 779
    .line 780
    .line 781
    goto :goto_f

    .line 782
    :cond_1d
    :goto_e
    invoke-virtual {v2, v5}, Lf1/s;->W(I)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v2, v14}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    invoke-virtual {v2, v15}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    or-int/2addr v3, v4

    .line 794
    move-object/from16 v16, v11

    .line 795
    .line 796
    check-cast v16, Lf1/b1;

    .line 797
    .line 798
    move-object/from16 v17, v1

    .line 799
    .line 800
    check-cast v17, Lf1/h1;

    .line 801
    .line 802
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    if-nez v3, :cond_1e

    .line 807
    .line 808
    if-ne v1, v8, :cond_1f

    .line 809
    .line 810
    :cond_1e
    new-instance v13, Lc8/b0;

    .line 811
    .line 812
    const/16 v18, 0x1

    .line 813
    .line 814
    invoke-direct/range {v13 .. v18}, Lc8/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v2, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 818
    .line 819
    .line 820
    move-object v1, v13

    .line 821
    :cond_1f
    move-object/from16 v21, v1

    .line 822
    .line 823
    check-cast v21, Lf9/a;

    .line 824
    .line 825
    const/4 v1, 0x0

    .line 826
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 827
    .line 828
    .line 829
    const/16 v23, 0x6

    .line 830
    .line 831
    const/16 v24, 0x6

    .line 832
    .line 833
    const-string v16, "\u6dfb\u52a0"

    .line 834
    .line 835
    const-wide/16 v17, 0x0

    .line 836
    .line 837
    const-wide/16 v19, 0x0

    .line 838
    .line 839
    move-object/from16 v22, v2

    .line 840
    .line 841
    invoke-static/range {v16 .. v24}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 842
    .line 843
    .line 844
    :goto_f
    return-object v6

    .line 845
    :pswitch_6
    move-object v1, v13

    .line 846
    move-object/from16 v13, p1

    .line 847
    .line 848
    check-cast v13, Lf1/s;

    .line 849
    .line 850
    move-object/from16 v2, p2

    .line 851
    .line 852
    check-cast v2, Ljava/lang/Number;

    .line 853
    .line 854
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    check-cast v12, Lc8/g0;

    .line 859
    .line 860
    move-object v15, v10

    .line 861
    check-cast v15, Lf9/k;

    .line 862
    .line 863
    and-int/lit8 v2, v2, 0x3

    .line 864
    .line 865
    if-ne v2, v9, :cond_21

    .line 866
    .line 867
    invoke-virtual {v13}, Lf1/s;->z()Z

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    if-nez v2, :cond_20

    .line 872
    .line 873
    goto :goto_10

    .line 874
    :cond_20
    invoke-virtual {v13}, Lf1/s;->Q()V

    .line 875
    .line 876
    .line 877
    goto :goto_11

    .line 878
    :cond_21
    :goto_10
    invoke-virtual {v13, v5}, Lf1/s;->W(I)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v13, v15}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    invoke-virtual {v13, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    or-int/2addr v2, v3

    .line 890
    move-object/from16 v17, v11

    .line 891
    .line 892
    check-cast v17, Lf1/b1;

    .line 893
    .line 894
    move-object/from16 v18, v1

    .line 895
    .line 896
    check-cast v18, Lf1/h1;

    .line 897
    .line 898
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    if-nez v2, :cond_22

    .line 903
    .line 904
    if-ne v1, v8, :cond_23

    .line 905
    .line 906
    :cond_22
    new-instance v14, Lc8/b0;

    .line 907
    .line 908
    const/16 v19, 0x0

    .line 909
    .line 910
    move-object/from16 v16, v12

    .line 911
    .line 912
    invoke-direct/range {v14 .. v19}, Lc8/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v13, v14}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    move-object v1, v14

    .line 919
    :cond_23
    move-object v12, v1

    .line 920
    check-cast v12, Lf9/a;

    .line 921
    .line 922
    const/4 v2, 0x0

    .line 923
    invoke-virtual {v13, v2}, Lf1/s;->p(Z)V

    .line 924
    .line 925
    .line 926
    const/4 v14, 0x6

    .line 927
    const/4 v15, 0x6

    .line 928
    const-string v7, "\u6dfb\u52a0"

    .line 929
    .line 930
    const-wide/16 v8, 0x0

    .line 931
    .line 932
    const-wide/16 v10, 0x0

    .line 933
    .line 934
    invoke-static/range {v7 .. v15}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 935
    .line 936
    .line 937
    :goto_11
    return-object v6

    .line 938
    :pswitch_7
    move-object v1, v13

    .line 939
    move-object/from16 v2, p1

    .line 940
    .line 941
    check-cast v2, Lf1/s;

    .line 942
    .line 943
    move-object/from16 v3, p2

    .line 944
    .line 945
    check-cast v3, Ljava/lang/Number;

    .line 946
    .line 947
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 948
    .line 949
    .line 950
    move-result v3

    .line 951
    check-cast v11, Lf1/b1;

    .line 952
    .line 953
    and-int/lit8 v3, v3, 0x3

    .line 954
    .line 955
    if-ne v3, v9, :cond_25

    .line 956
    .line 957
    invoke-virtual {v2}, Lf1/s;->z()Z

    .line 958
    .line 959
    .line 960
    move-result v3

    .line 961
    if-nez v3, :cond_24

    .line 962
    .line 963
    goto :goto_12

    .line 964
    :cond_24
    invoke-virtual {v2}, Lf1/s;->Q()V

    .line 965
    .line 966
    .line 967
    goto :goto_13

    .line 968
    :cond_25
    :goto_12
    check-cast v10, Ljava/util/ArrayList;

    .line 969
    .line 970
    sget v3, Lc8/v;->e:I

    .line 971
    .line 972
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    move-object/from16 v17, v3

    .line 977
    .line 978
    check-cast v17, Lj8/k0;

    .line 979
    .line 980
    const v3, -0x6815fd56

    .line 981
    .line 982
    .line 983
    invoke-virtual {v2, v3}, Lf1/s;->W(I)V

    .line 984
    .line 985
    .line 986
    check-cast v12, Lf1/b1;

    .line 987
    .line 988
    move-object v13, v1

    .line 989
    check-cast v13, Lf1/b1;

    .line 990
    .line 991
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    if-ne v1, v8, :cond_26

    .line 996
    .line 997
    new-instance v1, Lc8/k;

    .line 998
    .line 999
    const/4 v3, 0x1

    .line 1000
    invoke-direct {v1, v3, v11, v12, v13}, Lc8/k;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v2, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1004
    .line 1005
    .line 1006
    :cond_26
    move-object/from16 v22, v1

    .line 1007
    .line 1008
    check-cast v22, Lf9/k;

    .line 1009
    .line 1010
    const/4 v1, 0x0

    .line 1011
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 1012
    .line 1013
    .line 1014
    const v24, 0x1801c0

    .line 1015
    .line 1016
    .line 1017
    const/16 v25, 0x38

    .line 1018
    .line 1019
    const/16 v18, 0x2

    .line 1020
    .line 1021
    const/16 v19, 0x0

    .line 1022
    .line 1023
    const/16 v20, 0x0

    .line 1024
    .line 1025
    const/16 v21, 0x0

    .line 1026
    .line 1027
    move-object/from16 v23, v2

    .line 1028
    .line 1029
    move-object/from16 v16, v10

    .line 1030
    .line 1031
    invoke-static/range {v16 .. v25}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 1032
    .line 1033
    .line 1034
    :goto_13
    return-object v6

    .line 1035
    :pswitch_data_0
    .packed-switch 0x0
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
