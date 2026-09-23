.class public final La8/m0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, La8/m0;->a:I

    iput-object p1, p0, La8/m0;->b:Ljava/lang/Object;

    iput-object p2, p0, La8/m0;->c:Ljava/lang/Object;

    iput-object p3, p0, La8/m0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr1/p;Lf1/b1;Ln1/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, La8/m0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/m0;->b:Ljava/lang/Object;

    iput-object p2, p0, La8/m0;->d:Ljava/lang/Object;

    iput-object p3, p0, La8/m0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/m0;->a:I

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    const/4 v4, 0x1

    .line 9
    const v5, -0x6815fd56

    .line 10
    .line 11
    .line 12
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 13
    .line 14
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    iget-object v8, v0, La8/m0;->d:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v9, 0x2

    .line 19
    iget-object v10, v0, La8/m0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v11, v0, La8/m0;->c:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v12, 0x0

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Lf1/s;

    .line 30
    .line 31
    move-object/from16 v2, p2

    .line 32
    .line 33
    check-cast v2, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    check-cast v11, Ly7/f0;

    .line 40
    .line 41
    check-cast v10, Lf9/k;

    .line 42
    .line 43
    and-int/lit8 v2, v2, 0x3

    .line 44
    .line 45
    if-ne v2, v9, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    or-int/2addr v2, v3

    .line 70
    check-cast v8, Lf1/b1;

    .line 71
    .line 72
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    if-ne v3, v6, :cond_3

    .line 79
    .line 80
    :cond_2
    new-instance v3, Ly7/b0;

    .line 81
    .line 82
    invoke-direct {v3, v10, v11, v8, v4}, Ly7/b0;-><init>(Lf9/k;Lz7/v1;Lf1/b1;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    move-object/from16 v18, v3

    .line 89
    .line 90
    check-cast v18, Lf9/a;

    .line 91
    .line 92
    invoke-virtual {v1, v12}, Lf1/s;->p(Z)V

    .line 93
    .line 94
    .line 95
    const/16 v20, 0x6

    .line 96
    .line 97
    const/16 v21, 0x6

    .line 98
    .line 99
    const-string v13, "\u6dfb\u52a0"

    .line 100
    .line 101
    const-wide/16 v14, 0x0

    .line 102
    .line 103
    const-wide/16 v16, 0x0

    .line 104
    .line 105
    move-object/from16 v19, v1

    .line 106
    .line 107
    invoke-static/range {v13 .. v21}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 108
    .line 109
    .line 110
    :goto_1
    return-object v7

    .line 111
    :pswitch_0
    move-object/from16 v1, p1

    .line 112
    .line 113
    check-cast v1, Lf1/s;

    .line 114
    .line 115
    move-object/from16 v2, p2

    .line 116
    .line 117
    check-cast v2, Ljava/lang/Number;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    check-cast v11, Ly7/d0;

    .line 124
    .line 125
    check-cast v10, Lf9/k;

    .line 126
    .line 127
    and-int/lit8 v2, v2, 0x3

    .line 128
    .line 129
    if-ne v2, v9, :cond_5

    .line 130
    .line 131
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_4

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    :goto_2
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {v1, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    or-int/2addr v2, v3

    .line 154
    check-cast v8, Lf1/b1;

    .line 155
    .line 156
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    if-nez v2, :cond_6

    .line 161
    .line 162
    if-ne v3, v6, :cond_7

    .line 163
    .line 164
    :cond_6
    new-instance v3, Ly7/b0;

    .line 165
    .line 166
    invoke-direct {v3, v10, v11, v8, v12}, Ly7/b0;-><init>(Lf9/k;Lz7/v1;Lf1/b1;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    move-object/from16 v27, v3

    .line 173
    .line 174
    check-cast v27, Lf9/a;

    .line 175
    .line 176
    invoke-virtual {v1, v12}, Lf1/s;->p(Z)V

    .line 177
    .line 178
    .line 179
    const/16 v29, 0x6

    .line 180
    .line 181
    const/16 v30, 0x6

    .line 182
    .line 183
    const-string v22, "\u6dfb\u52a0"

    .line 184
    .line 185
    const-wide/16 v23, 0x0

    .line 186
    .line 187
    const-wide/16 v25, 0x0

    .line 188
    .line 189
    move-object/from16 v28, v1

    .line 190
    .line 191
    invoke-static/range {v22 .. v30}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 192
    .line 193
    .line 194
    :goto_3
    return-object v7

    .line 195
    :pswitch_1
    move-object/from16 v14, p1

    .line 196
    .line 197
    check-cast v14, Lf1/s;

    .line 198
    .line 199
    move-object/from16 v1, p2

    .line 200
    .line 201
    check-cast v1, Ljava/lang/Number;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    check-cast v11, Ly7/x;

    .line 208
    .line 209
    check-cast v10, Lf9/k;

    .line 210
    .line 211
    and-int/lit8 v1, v1, 0x3

    .line 212
    .line 213
    if-ne v1, v9, :cond_9

    .line 214
    .line 215
    invoke-virtual {v14}, Lf1/s;->z()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_8

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    invoke-virtual {v14}, Lf1/s;->Q()V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_9
    :goto_4
    invoke-virtual {v14, v5}, Lf1/s;->W(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v14, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-virtual {v14, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    or-int/2addr v1, v2

    .line 238
    check-cast v8, Lf1/h1;

    .line 239
    .line 240
    invoke-virtual {v14}, Lf1/s;->K()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-nez v1, :cond_a

    .line 245
    .line 246
    if-ne v2, v6, :cond_b

    .line 247
    .line 248
    :cond_a
    new-instance v2, La8/n0;

    .line 249
    .line 250
    invoke-direct {v2, v10, v11, v8}, La8/n0;-><init>(Lf9/k;Ly7/x;Lf1/h1;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v14, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_b
    move-object v13, v2

    .line 257
    check-cast v13, Lf9/a;

    .line 258
    .line 259
    invoke-virtual {v14, v12}, Lf1/s;->p(Z)V

    .line 260
    .line 261
    .line 262
    const/4 v15, 0x6

    .line 263
    const/16 v16, 0x6

    .line 264
    .line 265
    const-string v8, "\u6dfb\u52a0"

    .line 266
    .line 267
    const-wide/16 v9, 0x0

    .line 268
    .line 269
    const-wide/16 v11, 0x0

    .line 270
    .line 271
    invoke-static/range {v8 .. v16}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 272
    .line 273
    .line 274
    :goto_5
    return-object v7

    .line 275
    :pswitch_2
    move-object/from16 v1, p1

    .line 276
    .line 277
    check-cast v1, Lf1/s;

    .line 278
    .line 279
    move-object/from16 v3, p2

    .line 280
    .line 281
    check-cast v3, Ljava/lang/Number;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    and-int/lit8 v5, v3, 0x3

    .line 288
    .line 289
    if-eq v5, v9, :cond_c

    .line 290
    .line 291
    const/4 v5, 0x1

    .line 292
    goto :goto_6

    .line 293
    :cond_c
    const/4 v5, 0x0

    .line 294
    :goto_6
    and-int/2addr v3, v4

    .line 295
    invoke-virtual {v1, v3, v5}, Lf1/s;->N(IZ)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_11

    .line 300
    .line 301
    check-cast v10, Lr1/p;

    .line 302
    .line 303
    check-cast v8, Lf1/b1;

    .line 304
    .line 305
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    if-ne v3, v6, :cond_d

    .line 310
    .line 311
    new-instance v3, La8/s0;

    .line 312
    .line 313
    const/16 v5, 0x14

    .line 314
    .line 315
    invoke-direct {v3, v8, v5}, La8/s0;-><init>(Lf1/b1;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_d
    check-cast v3, Lf9/k;

    .line 322
    .line 323
    invoke-static {v10, v3}, Landroidx/compose/ui/layout/a;->d(Lr1/p;Lf9/k;)Lr1/p;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v11, Ln1/c;

    .line 328
    .line 329
    sget-object v5, Lr1/c;->a:Lr1/h;

    .line 330
    .line 331
    invoke-static {v5, v4}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    iget-wide v8, v1, Lf1/s;->T:J

    .line 336
    .line 337
    ushr-long v13, v8, v2

    .line 338
    .line 339
    xor-long/2addr v8, v13

    .line 340
    long-to-int v2, v8

    .line 341
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-static {v1, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    sget-object v8, Lq2/j;->d0:Lq2/i;

    .line 350
    .line 351
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 355
    .line 356
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 357
    .line 358
    .line 359
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 360
    .line 361
    if-eqz v9, :cond_e

    .line 362
    .line 363
    invoke-virtual {v1, v8}, Lf1/s;->k(Lf9/a;)V

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_e
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 368
    .line 369
    .line 370
    :goto_7
    sget-object v8, Lq2/i;->e:Lq2/h;

    .line 371
    .line 372
    invoke-static {v1, v8, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    sget-object v5, Lq2/i;->d:Lq2/h;

    .line 376
    .line 377
    invoke-static {v1, v5, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    sget-object v5, Lq2/i;->f:Lq2/h;

    .line 381
    .line 382
    iget-boolean v6, v1, Lf1/s;->S:Z

    .line 383
    .line 384
    if-nez v6, :cond_f

    .line 385
    .line 386
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    invoke-static {v6, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    if-nez v6, :cond_10

    .line 399
    .line 400
    :cond_f
    invoke-static {v2, v1, v2, v5}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 401
    .line 402
    .line 403
    :cond_10
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 404
    .line 405
    invoke-static {v1, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v11, v1, v2}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v4}, Lf1/s;->p(Z)V

    .line 416
    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_11
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 420
    .line 421
    .line 422
    :goto_8
    return-object v7

    .line 423
    :pswitch_3
    move-object/from16 v1, p1

    .line 424
    .line 425
    check-cast v1, Lf1/s;

    .line 426
    .line 427
    move-object/from16 v2, p2

    .line 428
    .line 429
    check-cast v2, Ljava/lang/Number;

    .line 430
    .line 431
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    check-cast v11, Lf9/a;

    .line 436
    .line 437
    check-cast v10, Lf9/n;

    .line 438
    .line 439
    and-int/lit8 v2, v2, 0x3

    .line 440
    .line 441
    if-ne v2, v9, :cond_13

    .line 442
    .line 443
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-nez v2, :cond_12

    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_12
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 451
    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_13
    :goto_9
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    invoke-virtual {v1, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    or-int/2addr v2, v4

    .line 466
    check-cast v8, Lf1/b1;

    .line 467
    .line 468
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    if-nez v2, :cond_14

    .line 473
    .line 474
    if-ne v4, v6, :cond_15

    .line 475
    .line 476
    :cond_14
    new-instance v4, Lc8/c1;

    .line 477
    .line 478
    const/4 v2, 0x5

    .line 479
    invoke-direct {v4, v10, v11, v8, v2}, Lc8/c1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/b1;I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    :cond_15
    check-cast v4, Lf9/a;

    .line 486
    .line 487
    invoke-virtual {v1, v12}, Lf1/s;->p(Z)V

    .line 488
    .line 489
    .line 490
    const-string v2, "\u9ed8\u8ba4"

    .line 491
    .line 492
    invoke-static {v2, v4, v1, v3}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 493
    .line 494
    .line 495
    :goto_a
    return-object v7

    .line 496
    :pswitch_4
    move-object/from16 v1, p1

    .line 497
    .line 498
    check-cast v1, Lf1/s;

    .line 499
    .line 500
    move-object/from16 v5, p2

    .line 501
    .line 502
    check-cast v5, Ljava/lang/Number;

    .line 503
    .line 504
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    and-int/lit8 v5, v5, 0x3

    .line 509
    .line 510
    if-ne v5, v9, :cond_17

    .line 511
    .line 512
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    if-nez v5, :cond_16

    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_16
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_d

    .line 523
    .line 524
    :cond_17
    :goto_b
    sget-object v5, Ld0/h;->a:Ld0/b;

    .line 525
    .line 526
    const/16 v5, 0x10

    .line 527
    .line 528
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    invoke-static {v5}, Ld0/h;->g(F)Ld0/f;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    sget-object v6, Lr1/c;->n:Lr1/f;

    .line 537
    .line 538
    check-cast v10, Lz7/b2;

    .line 539
    .line 540
    move-object v14, v11

    .line 541
    check-cast v14, Lf9/k;

    .line 542
    .line 543
    check-cast v8, Lf9/a;

    .line 544
    .line 545
    const/16 v9, 0x30

    .line 546
    .line 547
    invoke-static {v5, v6, v1, v9}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    const/16 v13, 0x20

    .line 552
    .line 553
    iget-wide v2, v1, Lf1/s;->T:J

    .line 554
    .line 555
    ushr-long v15, v2, v13

    .line 556
    .line 557
    xor-long/2addr v2, v15

    .line 558
    long-to-int v3, v2

    .line 559
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    sget-object v6, Lr1/m;->a:Lr1/m;

    .line 564
    .line 565
    invoke-static {v1, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    sget-object v9, Lq2/j;->d0:Lq2/i;

    .line 570
    .line 571
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    sget-object v9, Lq2/i;->b:Lq2/a0;

    .line 575
    .line 576
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 577
    .line 578
    .line 579
    iget-boolean v11, v1, Lf1/s;->S:Z

    .line 580
    .line 581
    if-eqz v11, :cond_18

    .line 582
    .line 583
    invoke-virtual {v1, v9}, Lf1/s;->k(Lf9/a;)V

    .line 584
    .line 585
    .line 586
    goto :goto_c

    .line 587
    :cond_18
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 588
    .line 589
    .line 590
    :goto_c
    sget-object v9, Lq2/i;->e:Lq2/h;

    .line 591
    .line 592
    invoke-static {v1, v9, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    sget-object v5, Lq2/i;->d:Lq2/h;

    .line 596
    .line 597
    invoke-static {v1, v5, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 601
    .line 602
    iget-boolean v5, v1, Lf1/s;->S:Z

    .line 603
    .line 604
    if-nez v5, :cond_19

    .line 605
    .line 606
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v9

    .line 614
    invoke-static {v5, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v5

    .line 618
    if-nez v5, :cond_1a

    .line 619
    .line 620
    :cond_19
    invoke-static {v3, v1, v3, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 621
    .line 622
    .line 623
    :cond_1a
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 624
    .line 625
    invoke-static {v1, v2, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    iget-boolean v13, v10, Lz7/b2;->e:Z

    .line 629
    .line 630
    const/16 v17, 0x0

    .line 631
    .line 632
    const/16 v19, 0x0

    .line 633
    .line 634
    const/4 v15, 0x0

    .line 635
    const/16 v16, 0x0

    .line 636
    .line 637
    move-object/from16 v18, v1

    .line 638
    .line 639
    invoke-static/range {v13 .. v19}, Landroidx/compose/material3/a;->a(ZLf9/k;Lr1/p;ZLc1/n2;Lf1/s;I)V

    .line 640
    .line 641
    .line 642
    const-string v2, "\u5220\u9664"

    .line 643
    .line 644
    const/4 v3, 0x6

    .line 645
    invoke-static {v2, v8, v1, v3, v12}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v4}, Lf1/s;->p(Z)V

    .line 649
    .line 650
    .line 651
    :goto_d
    return-object v7

    .line 652
    :pswitch_5
    move-object/from16 v1, p1

    .line 653
    .line 654
    check-cast v1, Lf1/s;

    .line 655
    .line 656
    move-object/from16 v2, p2

    .line 657
    .line 658
    check-cast v2, Ljava/lang/Number;

    .line 659
    .line 660
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    and-int/lit8 v2, v2, 0x3

    .line 665
    .line 666
    if-ne v2, v9, :cond_1c

    .line 667
    .line 668
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    if-nez v2, :cond_1b

    .line 673
    .line 674
    goto :goto_e

    .line 675
    :cond_1b
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 676
    .line 677
    .line 678
    goto :goto_f

    .line 679
    :cond_1c
    :goto_e
    sget-object v2, La8/t;->a:La8/t;

    .line 680
    .line 681
    const-string v3, "\u67e5\u770b\u5e94\u7528\u65e5\u5fd7"

    .line 682
    .line 683
    const-string v5, "\u67e5\u770b\u5f53\u524d\u5e94\u7528\u548c\u7cfb\u7edf\u65e5\u5fd7"

    .line 684
    .line 685
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    sget v5, La8/t;->c:I

    .line 694
    .line 695
    shl-int/lit8 v5, v5, 0x3

    .line 696
    .line 697
    const/16 v20, 0x6

    .line 698
    .line 699
    or-int/lit8 v5, v5, 0x6

    .line 700
    .line 701
    invoke-virtual {v2, v3, v1, v5}, La8/t;->a(Ljava/util/List;Lf1/s;I)V

    .line 702
    .line 703
    .line 704
    new-instance v2, La8/j;

    .line 705
    .line 706
    check-cast v10, Ljava/util/List;

    .line 707
    .line 708
    invoke-direct {v2, v4, v10}, La8/j;-><init>(ILjava/util/List;)V

    .line 709
    .line 710
    .line 711
    const v3, 0xcf6a0d6    # 3.79991E-31f

    .line 712
    .line 713
    .line 714
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 715
    .line 716
    .line 717
    move-result-object v13

    .line 718
    sget-object v14, La8/c;->a:Ln1/c;

    .line 719
    .line 720
    const v2, -0x615d173a

    .line 721
    .line 722
    .line 723
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 724
    .line 725
    .line 726
    check-cast v11, Lp1/p;

    .line 727
    .line 728
    check-cast v8, Lf1/b1;

    .line 729
    .line 730
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    if-ne v2, v6, :cond_1d

    .line 735
    .line 736
    new-instance v2, La8/l0;

    .line 737
    .line 738
    invoke-direct {v2, v11, v8, v12}, La8/l0;-><init>(Lp1/p;Lf1/b1;I)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    :cond_1d
    move-object/from16 v16, v2

    .line 745
    .line 746
    check-cast v16, Lf9/a;

    .line 747
    .line 748
    invoke-virtual {v1, v12}, Lf1/s;->p(Z)V

    .line 749
    .line 750
    .line 751
    const/16 v18, 0xdb6

    .line 752
    .line 753
    const/16 v19, 0x0

    .line 754
    .line 755
    const/4 v15, 0x0

    .line 756
    move-object/from16 v17, v1

    .line 757
    .line 758
    invoke-static/range {v13 .. v19}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 759
    .line 760
    .line 761
    :goto_f
    return-object v7

    .line 762
    nop

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
