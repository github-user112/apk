.class public final Lm7/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm7/t;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm7/t;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p2, p0, Lm7/t;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lm7/t;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Lf1/s;

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    and-int/lit8 v2, v2, 0x3

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    new-instance v2, Lm7/t;

    .line 37
    .line 38
    iget-object v3, v0, Lm7/t;->c:Lf1/b1;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    iget-object v5, v0, Lm7/t;->b:Landroid/app/Activity;

    .line 42
    .line 43
    invoke-direct {v2, v5, v3, v4}, Lm7/t;-><init>(Landroid/app/Activity;Lf1/b1;I)V

    .line 44
    .line 45
    .line 46
    const v3, 0x1389c4a9

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/16 v3, 0x30

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-static {v4, v2, v1, v3, v5}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 58
    .line 59
    .line 60
    :goto_1
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_0
    move-object/from16 v7, p1

    .line 64
    .line 65
    check-cast v7, Lf1/s;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v10, 0x0

    .line 76
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    and-int/lit8 v1, v1, 0x3

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    if-ne v1, v2, :cond_3

    .line 84
    .line 85
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_3
    :goto_2
    const-string v1, "\u60ac\u6d6e\u56fe\u6807"

    .line 98
    .line 99
    const-string v2, "\u5e94\u7528\u540e\u53f0\u65f6\u663e\u793a\u60ac\u6d6e\u56fe\u6807"

    .line 100
    .line 101
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const v1, 0x4c5de2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v1}, Lf1/s;->W(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lm7/t;->b:Landroid/app/Activity;

    .line 116
    .line 117
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 126
    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    if-ne v4, v12, :cond_5

    .line 130
    .line 131
    :cond_4
    new-instance v4, Lm7/u;

    .line 132
    .line 133
    const/4 v3, 0x1

    .line 134
    invoke-direct {v4, v1, v3}, Lm7/u;-><init>(Landroid/app/Activity;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    move-object v6, v4

    .line 141
    check-cast v6, Lf9/k;

    .line 142
    .line 143
    invoke-virtual {v7, v10}, Lf1/s;->p(Z)V

    .line 144
    .line 145
    .line 146
    const/16 v8, 0x36

    .line 147
    .line 148
    const/16 v9, 0xc

    .line 149
    .line 150
    const-string v3, "FLOAT_ICON_SWITCH"

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    const/4 v5, 0x0

    .line 154
    invoke-static/range {v2 .. v9}, Lc7/a;->d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 155
    .line 156
    .line 157
    const-string v1, "\u60ac\u6d6e\u56fe\u6807\u5927\u5c0f"

    .line 158
    .line 159
    const-string v13, "px"

    .line 160
    .line 161
    filled-new-array {v1, v13}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v1, v0, Lm7/t;->c:Lf1/b1;

    .line 170
    .line 171
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Lq7/e;

    .line 176
    .line 177
    iget v3, v3, Lq7/e;->b:I

    .line 178
    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    new-instance v4, Lr8/j;

    .line 184
    .line 185
    const-string v5, "FLOAT_ICON_SIZE"

    .line 186
    .line 187
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    new-instance v3, Ll9/a;

    .line 191
    .line 192
    const/4 v14, 0x0

    .line 193
    const/high16 v5, 0x43480000    # 200.0f

    .line 194
    .line 195
    invoke-direct {v3, v14, v5}, Ll9/a;-><init>(FF)V

    .line 196
    .line 197
    .line 198
    const v15, 0x6e3c21fe

    .line 199
    .line 200
    .line 201
    invoke-static {v3, v11, v7, v15}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-ne v5, v12, :cond_6

    .line 210
    .line 211
    new-instance v5, Lm7/j;

    .line 212
    .line 213
    const/16 v6, 0x19

    .line 214
    .line 215
    invoke-direct {v5, v6}, Lm7/j;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    move-object v6, v5

    .line 222
    check-cast v6, Lf9/k;

    .line 223
    .line 224
    invoke-virtual {v7, v10}, Lf1/s;->p(Z)V

    .line 225
    .line 226
    .line 227
    const/16 v8, 0x6006

    .line 228
    .line 229
    const/16 v9, 0x8

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    move-object/from16 v18, v4

    .line 233
    .line 234
    move-object v4, v3

    .line 235
    move-object/from16 v3, v18

    .line 236
    .line 237
    invoke-static/range {v2 .. v9}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 238
    .line 239
    .line 240
    const-string v2, "\u60ac\u6d6e\u56fe\u6807\u5706\u89d2"

    .line 241
    .line 242
    filled-new-array {v2, v13}, [Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Lq7/e;

    .line 255
    .line 256
    iget v3, v3, Lq7/e;->c:I

    .line 257
    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    new-instance v4, Lr8/j;

    .line 263
    .line 264
    const-string v5, "FLOAT_ICON_CLIP"

    .line 265
    .line 266
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    new-instance v3, Ll9/a;

    .line 270
    .line 271
    const/high16 v5, 0x42c80000    # 100.0f

    .line 272
    .line 273
    invoke-direct {v3, v14, v5}, Ll9/a;-><init>(FF)V

    .line 274
    .line 275
    .line 276
    invoke-static {v3, v11, v7, v15}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    if-ne v5, v12, :cond_7

    .line 285
    .line 286
    new-instance v5, Lm7/j;

    .line 287
    .line 288
    const/16 v6, 0x1a

    .line 289
    .line 290
    invoke-direct {v5, v6}, Lm7/j;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_7
    move-object v6, v5

    .line 297
    check-cast v6, Lf9/k;

    .line 298
    .line 299
    invoke-virtual {v7, v10}, Lf1/s;->p(Z)V

    .line 300
    .line 301
    .line 302
    const/16 v8, 0x6006

    .line 303
    .line 304
    const/16 v9, 0x8

    .line 305
    .line 306
    const/4 v5, 0x0

    .line 307
    move-object/from16 v18, v4

    .line 308
    .line 309
    move-object v4, v3

    .line 310
    move-object/from16 v3, v18

    .line 311
    .line 312
    invoke-static/range {v2 .. v9}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 313
    .line 314
    .line 315
    const-string v2, "\u60ac\u6d6e\u56fe\u6807\u900f\u660e\u5ea6"

    .line 316
    .line 317
    const-string v3, ""

    .line 318
    .line 319
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, Lq7/e;

    .line 332
    .line 333
    iget v1, v1, Lq7/e;->d:I

    .line 334
    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v3, Lr8/j;

    .line 340
    .line 341
    const-string v4, "FLOAT_ICON_ALPHA"

    .line 342
    .line 343
    invoke-direct {v3, v4, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    new-instance v1, Ll9/a;

    .line 347
    .line 348
    const/high16 v4, 0x41200000    # 10.0f

    .line 349
    .line 350
    invoke-direct {v1, v14, v4}, Ll9/a;-><init>(FF)V

    .line 351
    .line 352
    .line 353
    invoke-static {v1, v11, v7, v15}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    if-ne v1, v12, :cond_8

    .line 362
    .line 363
    new-instance v1, Lm7/j;

    .line 364
    .line 365
    const/16 v5, 0x1b

    .line 366
    .line 367
    invoke-direct {v1, v5}, Lm7/j;-><init>(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_8
    move-object v6, v1

    .line 374
    check-cast v6, Lf9/k;

    .line 375
    .line 376
    invoke-virtual {v7, v10}, Lf1/s;->p(Z)V

    .line 377
    .line 378
    .line 379
    const/16 v8, 0x6c06

    .line 380
    .line 381
    const/4 v9, 0x0

    .line 382
    const/4 v5, 0x0

    .line 383
    invoke-static/range {v2 .. v9}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 384
    .line 385
    .line 386
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 387
    .line 388
    return-object v1

    .line 389
    :pswitch_1
    move-object/from16 v1, p1

    .line 390
    .line 391
    check-cast v1, Lf1/s;

    .line 392
    .line 393
    move-object/from16 v2, p2

    .line 394
    .line 395
    check-cast v2, Ljava/lang/Number;

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    and-int/lit8 v2, v2, 0x3

    .line 402
    .line 403
    const/4 v3, 0x2

    .line 404
    if-ne v2, v3, :cond_a

    .line 405
    .line 406
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-nez v2, :cond_9

    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_9
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_6

    .line 417
    .line 418
    :cond_a
    :goto_4
    sget-object v2, Lr1/c;->k:Lr1/g;

    .line 419
    .line 420
    sget-object v4, Ld0/h;->b:Ld0/b;

    .line 421
    .line 422
    const/16 v5, 0x8

    .line 423
    .line 424
    int-to-float v9, v5

    .line 425
    const/4 v10, 0x0

    .line 426
    const/16 v11, 0xb

    .line 427
    .line 428
    sget-object v6, Lr1/m;->a:Lr1/m;

    .line 429
    .line 430
    const/4 v7, 0x0

    .line 431
    const/4 v8, 0x0

    .line 432
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    const v5, 0x6e3c21fe

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 447
    .line 448
    if-ne v5, v6, :cond_b

    .line 449
    .line 450
    invoke-static {v1}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    :cond_b
    move-object v13, v5

    .line 455
    check-cast v13, Lb0/k;

    .line 456
    .line 457
    const/4 v5, 0x0

    .line 458
    invoke-virtual {v1, v5}, Lf1/s;->p(Z)V

    .line 459
    .line 460
    .line 461
    const v7, -0x615d173a

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 465
    .line 466
    .line 467
    iget-object v7, v0, Lm7/t;->b:Landroid/app/Activity;

    .line 468
    .line 469
    invoke-virtual {v1, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    if-nez v8, :cond_c

    .line 478
    .line 479
    if-ne v9, v6, :cond_d

    .line 480
    .line 481
    :cond_c
    new-instance v9, La8/n0;

    .line 482
    .line 483
    const/16 v6, 0xa

    .line 484
    .line 485
    iget-object v8, v0, Lm7/t;->c:Lf1/b1;

    .line 486
    .line 487
    invoke-direct {v9, v6, v7, v8}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    :cond_d
    move-object/from16 v16, v9

    .line 494
    .line 495
    check-cast v16, Lf9/a;

    .line 496
    .line 497
    invoke-virtual {v1, v5}, Lf1/s;->p(Z)V

    .line 498
    .line 499
    .line 500
    const/16 v17, 0x1c

    .line 501
    .line 502
    const/4 v14, 0x0

    .line 503
    const/4 v15, 0x0

    .line 504
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    const/16 v7, 0x36

    .line 509
    .line 510
    invoke-static {v4, v2, v1, v7}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    iget-wide v7, v1, Lf1/s;->T:J

    .line 515
    .line 516
    const/16 v4, 0x20

    .line 517
    .line 518
    ushr-long v9, v7, v4

    .line 519
    .line 520
    xor-long/2addr v7, v9

    .line 521
    long-to-int v4, v7

    .line 522
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    invoke-static {v1, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    sget-object v8, Lq2/j;->d0:Lq2/i;

    .line 531
    .line 532
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 536
    .line 537
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 538
    .line 539
    .line 540
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 541
    .line 542
    if-eqz v9, :cond_e

    .line 543
    .line 544
    invoke-virtual {v1, v8}, Lf1/s;->k(Lf9/a;)V

    .line 545
    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_e
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 549
    .line 550
    .line 551
    :goto_5
    sget-object v8, Lq2/i;->e:Lq2/h;

    .line 552
    .line 553
    invoke-static {v1, v8, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 557
    .line 558
    invoke-static {v1, v2, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 562
    .line 563
    iget-boolean v7, v1, Lf1/s;->S:Z

    .line 564
    .line 565
    if-nez v7, :cond_f

    .line 566
    .line 567
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    .line 573
    .line 574
    move-result-object v8

    .line 575
    invoke-static {v7, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v7

    .line 579
    if-nez v7, :cond_10

    .line 580
    .line 581
    :cond_f
    invoke-static {v4, v1, v4, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 582
    .line 583
    .line 584
    :cond_10
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 585
    .line 586
    invoke-static {v1, v2, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    const-string v2, "\u9009\u62e9"

    .line 590
    .line 591
    const/4 v4, 0x6

    .line 592
    const/4 v6, 0x0

    .line 593
    invoke-static {v2, v6, v1, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 594
    .line 595
    .line 596
    invoke-static {v5, v1}, Lg5/a;->i(ILf1/s;)V

    .line 597
    .line 598
    .line 599
    const/4 v2, 0x1

    .line 600
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 601
    .line 602
    .line 603
    :goto_6
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 604
    .line 605
    return-object v1

    .line 606
    nop

    .line 607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
