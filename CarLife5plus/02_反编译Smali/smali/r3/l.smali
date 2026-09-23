.class public abstract Lr3/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lr3/e;->c:Lr3/e;

    .line 2
    .line 3
    new-instance v1, Lf1/c0;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lr3/l;->a:Lf1/c0;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lr3/y;Lf9/a;Lr3/z;Ln1/c;Lf1/s;II)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    move/from16 v9, p5

    .line 6
    .line 7
    const v0, -0x699ff8ef

    .line 8
    .line 9
    .line 10
    invoke-virtual {v8, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v9, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v8, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, v9

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v9

    .line 29
    :goto_1
    and-int/lit8 v2, p6, 0x2

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    or-int/lit8 v0, v0, 0x30

    .line 34
    .line 35
    :cond_2
    move-object/from16 v3, p1

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    and-int/lit8 v3, v9, 0x30

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    move-object/from16 v3, p1

    .line 43
    .line 44
    invoke-virtual {v8, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    const/16 v4, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    const/16 v4, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v4

    .line 56
    :goto_3
    and-int/lit16 v4, v9, 0x180

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    move-object/from16 v4, p2

    .line 61
    .line 62
    invoke-virtual {v8, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    const/16 v5, 0x100

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_5
    const/16 v5, 0x80

    .line 72
    .line 73
    :goto_4
    or-int/2addr v0, v5

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    move-object/from16 v4, p2

    .line 76
    .line 77
    :goto_5
    and-int/lit16 v5, v9, 0xc00

    .line 78
    .line 79
    move-object/from16 v13, p3

    .line 80
    .line 81
    if-nez v5, :cond_8

    .line 82
    .line 83
    invoke-virtual {v8, v13}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_7

    .line 88
    .line 89
    const/16 v5, 0x800

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_7
    const/16 v5, 0x400

    .line 93
    .line 94
    :goto_6
    or-int/2addr v0, v5

    .line 95
    :cond_8
    move v14, v0

    .line 96
    and-int/lit16 v0, v14, 0x493

    .line 97
    .line 98
    const/16 v5, 0x492

    .line 99
    .line 100
    const/4 v15, 0x0

    .line 101
    if-eq v0, v5, :cond_9

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    goto :goto_7

    .line 105
    :cond_9
    const/4 v0, 0x0

    .line 106
    :goto_7
    and-int/lit8 v5, v14, 0x1

    .line 107
    .line 108
    invoke-virtual {v8, v5, v0}, Lf1/s;->N(IZ)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_21

    .line 113
    .line 114
    if-eqz v2, :cond_a

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    goto :goto_8

    .line 118
    :cond_a
    move-object v1, v3

    .line 119
    :goto_8
    sget-object v2, Lr2/n0;->f:Lf1/w2;

    .line 120
    .line 121
    invoke-virtual {v8, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroid/view/View;

    .line 126
    .line 127
    sget-object v3, Lr2/i1;->h:Lf1/w2;

    .line 128
    .line 129
    invoke-virtual {v8, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    move-object v5, v3

    .line 134
    check-cast v5, Ln3/c;

    .line 135
    .line 136
    sget-object v3, Lr3/l;->a:Lf1/c0;

    .line 137
    .line 138
    invoke-virtual {v8, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    move-object/from16 v17, v3

    .line 143
    .line 144
    check-cast v17, Ljava/lang/String;

    .line 145
    .line 146
    sget-object v3, Lr2/i1;->n:Lf1/w2;

    .line 147
    .line 148
    invoke-virtual {v8, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    move-object/from16 v18, v3

    .line 153
    .line 154
    check-cast v18, Ln3/m;

    .line 155
    .line 156
    invoke-static {v8}, Lf1/b;->u(Lf1/s;)Lf1/q;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static/range {p3 .. p4}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    new-array v0, v15, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 171
    .line 172
    if-ne v6, v10, :cond_b

    .line 173
    .line 174
    sget-object v6, Lr3/e;->d:Lr3/e;

    .line 175
    .line 176
    invoke-virtual {v8, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_b
    check-cast v6, Lf9/a;

    .line 180
    .line 181
    invoke-static {v0, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sget-object v15, Lo1/k;->a:Lu0/j;

    .line 186
    .line 187
    const/16 v12, 0xd80

    .line 188
    .line 189
    invoke-static {v0, v15, v6, v8, v12}, Lo1/k;->c([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Ljava/util/UUID;

    .line 194
    .line 195
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    if-ne v6, v10, :cond_c

    .line 200
    .line 201
    move-object v12, v7

    .line 202
    move-object v7, v0

    .line 203
    new-instance v0, Lr3/v;

    .line 204
    .line 205
    move-object v6, v4

    .line 206
    move-object v4, v2

    .line 207
    move-object v2, v6

    .line 208
    move-object/from16 v6, p0

    .line 209
    .line 210
    move-object v15, v3

    .line 211
    move-object v11, v12

    .line 212
    move-object/from16 v3, v17

    .line 213
    .line 214
    const/4 v12, 0x1

    .line 215
    invoke-direct/range {v0 .. v7}, Lr3/v;-><init>(Lf9/a;Lr3/z;Ljava/lang/String;Landroid/view/View;Ln3/c;Lr3/y;Ljava/util/UUID;)V

    .line 216
    .line 217
    .line 218
    move-object v2, v3

    .line 219
    move-object v3, v1

    .line 220
    move-object v1, v6

    .line 221
    new-instance v4, Lc1/h;

    .line 222
    .line 223
    const/4 v5, 0x6

    .line 224
    invoke-direct {v4, v5, v0, v11}, Lc1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    new-instance v5, Ln1/c;

    .line 228
    .line 229
    const v6, -0x11bbdae4

    .line 230
    .line 231
    .line 232
    invoke-direct {v5, v4, v6, v12}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v15, v5}, Lr3/v;->i(Lf1/v;Lf9/n;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    move-object v6, v0

    .line 242
    goto :goto_9

    .line 243
    :cond_c
    const/4 v12, 0x1

    .line 244
    move-object v3, v1

    .line 245
    move-object/from16 v2, v17

    .line 246
    .line 247
    move-object/from16 v1, p0

    .line 248
    .line 249
    :goto_9
    check-cast v6, Lr3/v;

    .line 250
    .line 251
    invoke-virtual {v8, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    and-int/lit8 v4, v14, 0x70

    .line 256
    .line 257
    const/16 v5, 0x20

    .line 258
    .line 259
    if-ne v4, v5, :cond_d

    .line 260
    .line 261
    const/4 v5, 0x1

    .line 262
    goto :goto_a

    .line 263
    :cond_d
    const/4 v5, 0x0

    .line 264
    :goto_a
    or-int/2addr v0, v5

    .line 265
    and-int/lit16 v5, v14, 0x380

    .line 266
    .line 267
    const/16 v7, 0x100

    .line 268
    .line 269
    if-ne v5, v7, :cond_e

    .line 270
    .line 271
    const/4 v7, 0x1

    .line 272
    goto :goto_b

    .line 273
    :cond_e
    const/4 v7, 0x0

    .line 274
    :goto_b
    or-int/2addr v0, v7

    .line 275
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    or-int/2addr v0, v7

    .line 280
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    invoke-virtual {v8, v7}, Lf1/s;->d(I)Z

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    or-int/2addr v0, v7

    .line 289
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    if-nez v0, :cond_10

    .line 294
    .line 295
    if-ne v7, v10, :cond_f

    .line 296
    .line 297
    goto :goto_c

    .line 298
    :cond_f
    move-object v15, v3

    .line 299
    move v0, v14

    .line 300
    const/16 v20, 0x0

    .line 301
    .line 302
    move-object v14, v6

    .line 303
    goto :goto_d

    .line 304
    :cond_10
    :goto_c
    new-instance v13, Lr3/g;

    .line 305
    .line 306
    move-object/from16 v16, p2

    .line 307
    .line 308
    move-object/from16 v17, v2

    .line 309
    .line 310
    move-object v15, v3

    .line 311
    move v0, v14

    .line 312
    const/16 v20, 0x0

    .line 313
    .line 314
    move-object v14, v6

    .line 315
    invoke-direct/range {v13 .. v18}, Lr3/g;-><init>(Lr3/v;Lf9/a;Lr3/z;Ljava/lang/String;Ln3/m;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    move-object v7, v13

    .line 322
    :goto_d
    check-cast v7, Lf9/k;

    .line 323
    .line 324
    invoke-static {v14, v7, v8}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v8, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    const/16 v6, 0x20

    .line 332
    .line 333
    if-ne v4, v6, :cond_11

    .line 334
    .line 335
    const/4 v4, 0x1

    .line 336
    goto :goto_e

    .line 337
    :cond_11
    const/4 v4, 0x0

    .line 338
    :goto_e
    or-int/2addr v3, v4

    .line 339
    const/16 v7, 0x100

    .line 340
    .line 341
    if-ne v5, v7, :cond_12

    .line 342
    .line 343
    const/4 v4, 0x1

    .line 344
    goto :goto_f

    .line 345
    :cond_12
    const/4 v4, 0x0

    .line 346
    :goto_f
    or-int/2addr v3, v4

    .line 347
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    or-int/2addr v3, v4

    .line 352
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-virtual {v8, v4}, Lf1/s;->d(I)Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    or-int/2addr v3, v4

    .line 361
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    if-nez v3, :cond_14

    .line 366
    .line 367
    if-ne v4, v10, :cond_13

    .line 368
    .line 369
    goto :goto_10

    .line 370
    :cond_13
    move-object/from16 v3, v18

    .line 371
    .line 372
    goto :goto_11

    .line 373
    :cond_14
    :goto_10
    new-instance v13, Lr3/h;

    .line 374
    .line 375
    move-object/from16 v16, p2

    .line 376
    .line 377
    move-object/from16 v17, v2

    .line 378
    .line 379
    invoke-direct/range {v13 .. v18}, Lr3/h;-><init>(Lr3/v;Lf9/a;Lr3/z;Ljava/lang/String;Ln3/m;)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v3, v18

    .line 383
    .line 384
    invoke-virtual {v8, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    move-object v4, v13

    .line 388
    :goto_11
    check-cast v4, Lf9/a;

    .line 389
    .line 390
    invoke-static {v4, v8}, Lf1/b;->h(Lf9/a;Lf1/s;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v8, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    and-int/lit8 v0, v0, 0xe

    .line 398
    .line 399
    const/4 v4, 0x4

    .line 400
    if-ne v0, v4, :cond_15

    .line 401
    .line 402
    const/16 v20, 0x1

    .line 403
    .line 404
    :cond_15
    or-int v0, v2, v20

    .line 405
    .line 406
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    if-nez v0, :cond_16

    .line 411
    .line 412
    if-ne v2, v10, :cond_17

    .line 413
    .line 414
    :cond_16
    new-instance v2, Lc1/a1;

    .line 415
    .line 416
    const/16 v0, 0xe

    .line 417
    .line 418
    invoke-direct {v2, v0, v14, v1}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v8, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    :cond_17
    check-cast v2, Lf9/k;

    .line 425
    .line 426
    invoke-static {v1, v2, v8}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v8, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    if-nez v0, :cond_18

    .line 438
    .line 439
    if-ne v2, v10, :cond_19

    .line 440
    .line 441
    :cond_18
    new-instance v2, Lb0/g;

    .line 442
    .line 443
    const/16 v0, 0xf

    .line 444
    .line 445
    const/4 v4, 0x0

    .line 446
    invoke-direct {v2, v14, v4, v0}, Lb0/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v8, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    :cond_19
    check-cast v2, Lf9/n;

    .line 453
    .line 454
    invoke-static {v8, v2, v14}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v8, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    if-nez v0, :cond_1a

    .line 466
    .line 467
    if-ne v2, v10, :cond_1b

    .line 468
    .line 469
    :cond_1a
    new-instance v2, Lr3/j;

    .line 470
    .line 471
    const/4 v0, 0x0

    .line 472
    invoke-direct {v2, v14, v0}, Lr3/j;-><init>(Lr3/v;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v8, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :cond_1b
    check-cast v2, Lf9/k;

    .line 479
    .line 480
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 481
    .line 482
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/a;->d(Lr1/p;Lf9/k;)Lr1/p;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v8, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    invoke-virtual {v8, v4}, Lf1/s;->d(I)Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    or-int/2addr v2, v4

    .line 499
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    if-nez v2, :cond_1c

    .line 504
    .line 505
    if-ne v4, v10, :cond_1d

    .line 506
    .line 507
    :cond_1c
    new-instance v4, Lq3/d;

    .line 508
    .line 509
    const/4 v2, 0x1

    .line 510
    invoke-direct {v4, v14, v3, v2}, Lq3/d;-><init>(Landroid/view/ViewGroup;Ljava/lang/Object;I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v8, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    :cond_1d
    check-cast v4, Lo2/m0;

    .line 517
    .line 518
    iget-wide v2, v8, Lf1/s;->T:J

    .line 519
    .line 520
    const/16 v19, 0x20

    .line 521
    .line 522
    ushr-long v5, v2, v19

    .line 523
    .line 524
    xor-long/2addr v2, v5

    .line 525
    long-to-int v3, v2

    .line 526
    invoke-virtual {v8}, Lf1/s;->l()Lf1/q1;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-static {v8, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    sget-object v5, Lq2/j;->d0:Lq2/i;

    .line 535
    .line 536
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    sget-object v5, Lq2/i;->b:Lq2/a0;

    .line 540
    .line 541
    invoke-virtual {v8}, Lf1/s;->a0()V

    .line 542
    .line 543
    .line 544
    iget-boolean v6, v8, Lf1/s;->S:Z

    .line 545
    .line 546
    if-eqz v6, :cond_1e

    .line 547
    .line 548
    invoke-virtual {v8, v5}, Lf1/s;->k(Lf9/a;)V

    .line 549
    .line 550
    .line 551
    goto :goto_12

    .line 552
    :cond_1e
    invoke-virtual {v8}, Lf1/s;->k0()V

    .line 553
    .line 554
    .line 555
    :goto_12
    sget-object v5, Lq2/i;->e:Lq2/h;

    .line 556
    .line 557
    invoke-static {v8, v5, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 561
    .line 562
    invoke-static {v8, v4, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 566
    .line 567
    iget-boolean v4, v8, Lf1/s;->S:Z

    .line 568
    .line 569
    if-nez v4, :cond_1f

    .line 570
    .line 571
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    invoke-static {v4, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-nez v4, :cond_20

    .line 584
    .line 585
    :cond_1f
    invoke-static {v3, v8, v3, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 586
    .line 587
    .line 588
    :cond_20
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 589
    .line 590
    invoke-static {v8, v2, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v8, v12}, Lf1/s;->p(Z)V

    .line 594
    .line 595
    .line 596
    move-object v2, v15

    .line 597
    goto :goto_13

    .line 598
    :cond_21
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 599
    .line 600
    .line 601
    move-object v2, v3

    .line 602
    :goto_13
    invoke-virtual {v8}, Lf1/s;->r()Lf1/w1;

    .line 603
    .line 604
    .line 605
    move-result-object v7

    .line 606
    if-eqz v7, :cond_22

    .line 607
    .line 608
    new-instance v0, Lr3/k;

    .line 609
    .line 610
    move-object/from16 v3, p2

    .line 611
    .line 612
    move-object/from16 v4, p3

    .line 613
    .line 614
    move/from16 v6, p6

    .line 615
    .line 616
    move v5, v9

    .line 617
    invoke-direct/range {v0 .. v6}, Lr3/k;-><init>(Lr3/y;Lf9/a;Lr3/z;Ln1/c;II)V

    .line 618
    .line 619
    .line 620
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 621
    .line 622
    :cond_22
    return-void
.end method

.method public static final b(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 21
    .line 22
    and-int/lit16 p0, p0, 0x2000

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    return v0
.end method
