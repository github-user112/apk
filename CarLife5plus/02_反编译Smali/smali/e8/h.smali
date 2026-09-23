.class public final Le8/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/v2;


# direct methods
.method public synthetic constructor <init>(Lf1/v2;I)V
    .locals 0

    .line 1
    iput p2, p0, Le8/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le8/h;->b:Lf1/v2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v4, p1

    .line 2
    .line 3
    check-cast v4, Lf1/s;

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v9, 0x0

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    and-int/lit8 v0, v0, 0x3

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 31
    .line 32
    .line 33
    move-object/from16 v8, p0

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_1
    :goto_0
    const-string v0, "\u65f6\u95f4\u683c\u5f0f"

    .line 38
    .line 39
    const-string v1, "\u8bf7\u9009\u62e9\u65f6\u95f4\u683c\u5f0f"

    .line 40
    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    const/16 v2, 0xa

    .line 52
    .line 53
    sget-object v3, Ls7/g;->e:Lz8/b;

    .line 54
    .line 55
    invoke-static {v3, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ls7/g;

    .line 77
    .line 78
    new-instance v11, Lj8/k0;

    .line 79
    .line 80
    iget-object v12, v3, Ls7/g;->a:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v13, Lj8/n0;

    .line 83
    .line 84
    iget-object v3, v3, Ls7/g;->b:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v13, v3}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/16 v17, 0x1c

    .line 92
    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    invoke-direct/range {v11 .. v17}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const v11, 0x6e3c21fe

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 113
    .line 114
    if-ne v2, v12, :cond_3

    .line 115
    .line 116
    new-instance v2, Lm7/j;

    .line 117
    .line 118
    const/16 v3, 0x1d

    .line 119
    .line 120
    invoke-direct {v2, v3}, Lm7/j;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    move-object v5, v2

    .line 127
    check-cast v5, Lf9/k;

    .line 128
    .line 129
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 130
    .line 131
    .line 132
    const v7, 0x30186

    .line 133
    .line 134
    .line 135
    const/16 v8, 0x18

    .line 136
    .line 137
    const-string v2, "TIME_FORMAT"

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    move-object v6, v4

    .line 141
    const/4 v4, 0x0

    .line 142
    invoke-static/range {v0 .. v8}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 143
    .line 144
    .line 145
    move-object v4, v6

    .line 146
    const-string v0, "\u80cc\u666f\u989c\u8272"

    .line 147
    .line 148
    const-string v1, "\u8c03\u6574\u80cc\u666f\u989c\u8272"

    .line 149
    .line 150
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, Lr8/j;

    .line 159
    .line 160
    const-string v2, "TIME_BACKGROUND_COLOR"

    .line 161
    .line 162
    const-string v3, "#80000000"

    .line 163
    .line 164
    invoke-direct {v1, v2, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    if-ne v2, v12, :cond_4

    .line 175
    .line 176
    new-instance v2, Ls7/d;

    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    invoke-direct {v2, v3}, Ls7/d;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    move-object v3, v2

    .line 186
    check-cast v3, Lf9/k;

    .line 187
    .line 188
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 189
    .line 190
    .line 191
    const/16 v5, 0xc36

    .line 192
    .line 193
    const/4 v6, 0x4

    .line 194
    const/4 v2, 0x0

    .line 195
    invoke-static/range {v0 .. v6}, Li2/c;->d(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 196
    .line 197
    .line 198
    const-string v0, "\u80cc\u666f\u5706\u89d2"

    .line 199
    .line 200
    const-string v1, "dp"

    .line 201
    .line 202
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    move-object/from16 v8, p0

    .line 211
    .line 212
    iget-object v13, v8, Le8/h;->b:Lf1/v2;

    .line 213
    .line 214
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Ls7/h;

    .line 219
    .line 220
    iget v1, v1, Ls7/h;->d:I

    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    new-instance v2, Lr8/j;

    .line 227
    .line 228
    const-string v3, "TIME_ROUNDED_CORNER"

    .line 229
    .line 230
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Ll9/a;

    .line 234
    .line 235
    const/4 v14, 0x0

    .line 236
    const/high16 v15, 0x42c80000    # 100.0f

    .line 237
    .line 238
    invoke-direct {v1, v14, v15}, Ll9/a;-><init>(FF)V

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v10, v4, v11}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    if-ne v3, v12, :cond_5

    .line 250
    .line 251
    new-instance v3, Ls7/d;

    .line 252
    .line 253
    const/4 v5, 0x1

    .line 254
    invoke-direct {v3, v5}, Ls7/d;-><init>(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_5
    check-cast v3, Lf9/k;

    .line 261
    .line 262
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 263
    .line 264
    .line 265
    const/16 v6, 0x6006

    .line 266
    .line 267
    const/16 v7, 0x8

    .line 268
    .line 269
    move-object v5, v4

    .line 270
    move-object v4, v3

    .line 271
    const/4 v3, 0x0

    .line 272
    move-object/from16 v18, v2

    .line 273
    .line 274
    move-object v2, v1

    .line 275
    move-object/from16 v1, v18

    .line 276
    .line 277
    invoke-static/range {v0 .. v7}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 278
    .line 279
    .line 280
    move-object v4, v5

    .line 281
    const-string v0, "\u6587\u5b57\u989c\u8272"

    .line 282
    .line 283
    const-string v1, "\u8c03\u6574\u6587\u5b57\u989c\u8272"

    .line 284
    .line 285
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    new-instance v1, Lr8/j;

    .line 294
    .line 295
    const-string v2, "TIME_FONT_COLOR"

    .line 296
    .line 297
    const-string v3, "#FFFFFFFF"

    .line 298
    .line 299
    invoke-direct {v1, v2, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    if-ne v2, v12, :cond_6

    .line 310
    .line 311
    new-instance v2, Ls7/d;

    .line 312
    .line 313
    const/4 v3, 0x2

    .line 314
    invoke-direct {v2, v3}, Ls7/d;-><init>(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_6
    move-object v3, v2

    .line 321
    check-cast v3, Lf9/k;

    .line 322
    .line 323
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 324
    .line 325
    .line 326
    const/16 v5, 0xc36

    .line 327
    .line 328
    const/4 v6, 0x4

    .line 329
    const/4 v2, 0x0

    .line 330
    invoke-static/range {v0 .. v6}, Li2/c;->d(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 331
    .line 332
    .line 333
    const-string v0, "\u6587\u5b57\u5927\u5c0f"

    .line 334
    .line 335
    const-string v1, "sp"

    .line 336
    .line 337
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    check-cast v2, Ls7/h;

    .line 350
    .line 351
    iget v2, v2, Ls7/h;->i:I

    .line 352
    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    move-object v3, v1

    .line 358
    new-instance v1, Lr8/j;

    .line 359
    .line 360
    const-string v5, "TIME_FONT_SIZE"

    .line 361
    .line 362
    invoke-direct {v1, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    new-instance v2, Ll9/a;

    .line 366
    .line 367
    invoke-direct {v2, v14, v15}, Ll9/a;-><init>(FF)V

    .line 368
    .line 369
    .line 370
    invoke-static {v2, v10, v4, v11}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    if-ne v5, v12, :cond_7

    .line 379
    .line 380
    new-instance v5, Ls7/d;

    .line 381
    .line 382
    const/4 v6, 0x3

    .line 383
    invoke-direct {v5, v6}, Ls7/d;-><init>(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    :cond_7
    check-cast v5, Lf9/k;

    .line 390
    .line 391
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 392
    .line 393
    .line 394
    const/16 v6, 0x6006

    .line 395
    .line 396
    const/16 v7, 0x8

    .line 397
    .line 398
    move-object/from16 v16, v3

    .line 399
    .line 400
    const/4 v3, 0x0

    .line 401
    move-object v9, v5

    .line 402
    move-object v5, v4

    .line 403
    move-object v4, v9

    .line 404
    move-object/from16 v9, v16

    .line 405
    .line 406
    invoke-static/range {v0 .. v7}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 407
    .line 408
    .line 409
    move-object v4, v5

    .line 410
    const-string v0, "\u6587\u5b57\u884c\u9ad8"

    .line 411
    .line 412
    filled-new-array {v0, v9}, [Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    check-cast v1, Ls7/h;

    .line 425
    .line 426
    iget v1, v1, Ls7/h;->k:I

    .line 427
    .line 428
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    new-instance v2, Lr8/j;

    .line 433
    .line 434
    const-string v3, "TIME_LINE_HEIGHT"

    .line 435
    .line 436
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    new-instance v1, Ll9/a;

    .line 440
    .line 441
    invoke-direct {v1, v14, v15}, Ll9/a;-><init>(FF)V

    .line 442
    .line 443
    .line 444
    invoke-static {v1, v10, v4, v11}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    if-ne v3, v12, :cond_8

    .line 453
    .line 454
    new-instance v3, Ls7/d;

    .line 455
    .line 456
    const/4 v5, 0x4

    .line 457
    invoke-direct {v3, v5}, Ls7/d;-><init>(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    :cond_8
    check-cast v3, Lf9/k;

    .line 464
    .line 465
    const/4 v5, 0x0

    .line 466
    invoke-virtual {v4, v5}, Lf1/s;->p(Z)V

    .line 467
    .line 468
    .line 469
    const/16 v6, 0x6006

    .line 470
    .line 471
    const/16 v7, 0x8

    .line 472
    .line 473
    move-object v5, v4

    .line 474
    move-object v4, v3

    .line 475
    const/4 v3, 0x0

    .line 476
    move-object/from16 v18, v2

    .line 477
    .line 478
    move-object v2, v1

    .line 479
    move-object/from16 v1, v18

    .line 480
    .line 481
    invoke-static/range {v0 .. v7}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 482
    .line 483
    .line 484
    move-object v4, v5

    .line 485
    const-string v0, "\u6587\u5b57\u7c97\u4f53"

    .line 486
    .line 487
    const-string v1, "\u8c03\u6574\u6587\u5b57\u7c97\u7ec6"

    .line 488
    .line 489
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    check-cast v1, Ls7/h;

    .line 502
    .line 503
    iget-boolean v1, v1, Ls7/h;->j:Z

    .line 504
    .line 505
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    new-instance v2, Lr8/j;

    .line 510
    .line 511
    const-string v3, "TIME_FONT_WEIGHT"

    .line 512
    .line 513
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    if-ne v1, v12, :cond_9

    .line 524
    .line 525
    new-instance v1, Ls7/d;

    .line 526
    .line 527
    const/4 v3, 0x5

    .line 528
    invoke-direct {v1, v3}, Ls7/d;-><init>(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    :cond_9
    move-object v3, v1

    .line 535
    check-cast v3, Lf9/k;

    .line 536
    .line 537
    const/4 v5, 0x0

    .line 538
    invoke-virtual {v4, v5}, Lf1/s;->p(Z)V

    .line 539
    .line 540
    .line 541
    const/16 v5, 0xd86

    .line 542
    .line 543
    const/4 v6, 0x0

    .line 544
    move-object v1, v2

    .line 545
    const/4 v2, 0x0

    .line 546
    invoke-static/range {v0 .. v6}, Lc7/a;->e(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 547
    .line 548
    .line 549
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 550
    .line 551
    return-object v0
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    check-cast v5, Lf1/s;

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v9, 0x0

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    const/4 v11, 0x3

    .line 19
    and-int/2addr v0, v11

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v5}, Lf1/s;->z()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 31
    .line 32
    .line 33
    move-object/from16 v14, p0

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    :goto_0
    const-string v0, "\u65f6\u95f4\u4f4d\u7f6e"

    .line 38
    .line 39
    const-string v2, "\u8bf7\u9009\u62e9\u65f6\u95f4\u4f4d\u7f6e"

    .line 40
    .line 41
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v12, Lj8/k0;

    .line 50
    .line 51
    new-instance v14, Lj8/m0;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v14, v2}, Lj8/m0;-><init>(I)V

    .line 55
    .line 56
    .line 57
    const/16 v17, 0x0

    .line 58
    .line 59
    const/16 v18, 0x1c

    .line 60
    .line 61
    const-string v13, "\u5de6\u4e0a"

    .line 62
    .line 63
    const/4 v15, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    invoke-direct/range {v12 .. v18}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 67
    .line 68
    .line 69
    new-instance v13, Lj8/k0;

    .line 70
    .line 71
    new-instance v15, Lj8/m0;

    .line 72
    .line 73
    invoke-direct {v15, v9}, Lj8/m0;-><init>(I)V

    .line 74
    .line 75
    .line 76
    const/16 v18, 0x0

    .line 77
    .line 78
    const/16 v19, 0x1c

    .line 79
    .line 80
    const-string v14, "\u53f3\u4e0a"

    .line 81
    .line 82
    invoke-direct/range {v13 .. v19}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 83
    .line 84
    .line 85
    new-instance v14, Lj8/k0;

    .line 86
    .line 87
    new-instance v3, Lj8/m0;

    .line 88
    .line 89
    invoke-direct {v3, v1}, Lj8/m0;-><init>(I)V

    .line 90
    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    const/16 v20, 0x1c

    .line 95
    .line 96
    const-string v15, "\u5de6\u4e0b"

    .line 97
    .line 98
    move-object/from16 v16, v3

    .line 99
    .line 100
    invoke-direct/range {v14 .. v20}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 101
    .line 102
    .line 103
    new-instance v15, Lj8/k0;

    .line 104
    .line 105
    new-instance v3, Lj8/m0;

    .line 106
    .line 107
    invoke-direct {v3, v11}, Lj8/m0;-><init>(I)V

    .line 108
    .line 109
    .line 110
    const/16 v20, 0x0

    .line 111
    .line 112
    const/16 v21, 0x1c

    .line 113
    .line 114
    const-string v16, "\u53f3\u4e0b"

    .line 115
    .line 116
    move-object/from16 v17, v3

    .line 117
    .line 118
    invoke-direct/range {v15 .. v21}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 119
    .line 120
    .line 121
    const/4 v3, 0x4

    .line 122
    new-array v3, v3, [Lj8/k0;

    .line 123
    .line 124
    aput-object v12, v3, v9

    .line 125
    .line 126
    aput-object v13, v3, v2

    .line 127
    .line 128
    aput-object v14, v3, v1

    .line 129
    .line 130
    aput-object v15, v3, v11

    .line 131
    .line 132
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const v12, 0x6e3c21fe

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v12}, Lf1/s;->W(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    sget-object v13, Lf1/n;->a:Lf1/w0;

    .line 147
    .line 148
    if-ne v2, v13, :cond_2

    .line 149
    .line 150
    new-instance v2, Ls7/d;

    .line 151
    .line 152
    const/4 v3, 0x6

    .line 153
    invoke-direct {v2, v3}, Ls7/d;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    check-cast v2, Lf9/k;

    .line 160
    .line 161
    invoke-virtual {v5, v9}, Lf1/s;->p(Z)V

    .line 162
    .line 163
    .line 164
    const v7, 0x30186

    .line 165
    .line 166
    .line 167
    const/16 v8, 0x18

    .line 168
    .line 169
    move-object v6, v5

    .line 170
    move-object v5, v2

    .line 171
    const-string v2, "TIME_ALIGNMENT"

    .line 172
    .line 173
    const/4 v3, 0x0

    .line 174
    const/4 v4, 0x0

    .line 175
    invoke-static/range {v0 .. v8}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 176
    .line 177
    .line 178
    move-object v5, v6

    .line 179
    const-string v0, "\u4e0a\u4e0b\u5916\u8fb9\u8ddd"

    .line 180
    .line 181
    const-string v8, "dp"

    .line 182
    .line 183
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    move-object/from16 v14, p0

    .line 192
    .line 193
    iget-object v15, v14, Le8/h;->b:Lf1/v2;

    .line 194
    .line 195
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Ls7/h;

    .line 200
    .line 201
    iget v1, v1, Ls7/h;->e:I

    .line 202
    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    new-instance v2, Lr8/j;

    .line 208
    .line 209
    const-string v3, "TIME_MARGIN_VERTICAL"

    .line 210
    .line 211
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget-object v1, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v1, Ljava/lang/Number;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    int-to-float v1, v1

    .line 227
    int-to-float v11, v11

    .line 228
    div-float/2addr v1, v11

    .line 229
    new-instance v3, Ll9/a;

    .line 230
    .line 231
    const/4 v4, 0x0

    .line 232
    invoke-direct {v3, v4, v1}, Ll9/a;-><init>(FF)V

    .line 233
    .line 234
    .line 235
    invoke-static {v3, v10, v5, v12}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    if-ne v3, v13, :cond_3

    .line 244
    .line 245
    new-instance v3, Ls7/d;

    .line 246
    .line 247
    const/4 v6, 0x7

    .line 248
    invoke-direct {v3, v6}, Ls7/d;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_3
    check-cast v3, Lf9/k;

    .line 255
    .line 256
    invoke-virtual {v5, v9}, Lf1/s;->p(Z)V

    .line 257
    .line 258
    .line 259
    const/16 v6, 0x6006

    .line 260
    .line 261
    const/16 v7, 0x8

    .line 262
    .line 263
    move-object v4, v3

    .line 264
    const/16 v16, 0x0

    .line 265
    .line 266
    const/4 v3, 0x0

    .line 267
    move-object v9, v2

    .line 268
    move-object v2, v1

    .line 269
    move-object v1, v9

    .line 270
    const/4 v9, 0x0

    .line 271
    invoke-static/range {v0 .. v7}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 272
    .line 273
    .line 274
    const-string v0, "\u5de6\u53f3\u5916\u8fb9\u8ddd"

    .line 275
    .line 276
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ls7/h;

    .line 289
    .line 290
    iget v1, v1, Ls7/h;->f:I

    .line 291
    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    new-instance v2, Lr8/j;

    .line 297
    .line 298
    const-string v3, "TIME_MARGIN_HORIZONTAL"

    .line 299
    .line 300
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget-object v1, v1, Lr8/j;->a:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v1, Ljava/lang/Number;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    int-to-float v1, v1

    .line 316
    div-float/2addr v1, v11

    .line 317
    new-instance v3, Ll9/a;

    .line 318
    .line 319
    invoke-direct {v3, v9, v1}, Ll9/a;-><init>(FF)V

    .line 320
    .line 321
    .line 322
    invoke-static {v3, v10, v5, v12}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-ne v3, v13, :cond_4

    .line 331
    .line 332
    new-instance v3, Ls7/d;

    .line 333
    .line 334
    const/16 v4, 0x8

    .line 335
    .line 336
    invoke-direct {v3, v4}, Ls7/d;-><init>(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_4
    move-object v4, v3

    .line 343
    check-cast v4, Lf9/k;

    .line 344
    .line 345
    const/4 v3, 0x0

    .line 346
    invoke-virtual {v5, v3}, Lf1/s;->p(Z)V

    .line 347
    .line 348
    .line 349
    const/16 v6, 0x6006

    .line 350
    .line 351
    const/16 v7, 0x8

    .line 352
    .line 353
    const/4 v3, 0x0

    .line 354
    move-object/from16 v22, v2

    .line 355
    .line 356
    move-object v2, v1

    .line 357
    move-object/from16 v1, v22

    .line 358
    .line 359
    invoke-static/range {v0 .. v7}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 360
    .line 361
    .line 362
    const-string v0, "\u4e0a\u4e0b\u5185\u8fb9\u8ddd"

    .line 363
    .line 364
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Ls7/h;

    .line 377
    .line 378
    iget v1, v1, Ls7/h;->l:I

    .line 379
    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    new-instance v2, Lr8/j;

    .line 385
    .line 386
    const-string v3, "TIME_PADDING_VERTICAL"

    .line 387
    .line 388
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    new-instance v1, Ll9/a;

    .line 392
    .line 393
    const/high16 v11, 0x42c80000    # 100.0f

    .line 394
    .line 395
    invoke-direct {v1, v9, v11}, Ll9/a;-><init>(FF)V

    .line 396
    .line 397
    .line 398
    invoke-static {v1, v10, v5, v12}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    if-ne v3, v13, :cond_5

    .line 407
    .line 408
    new-instance v3, Ls7/d;

    .line 409
    .line 410
    const/16 v4, 0x9

    .line 411
    .line 412
    invoke-direct {v3, v4}, Ls7/d;-><init>(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_5
    move-object v4, v3

    .line 419
    check-cast v4, Lf9/k;

    .line 420
    .line 421
    const/4 v3, 0x0

    .line 422
    invoke-virtual {v5, v3}, Lf1/s;->p(Z)V

    .line 423
    .line 424
    .line 425
    const/16 v6, 0x6006

    .line 426
    .line 427
    const/16 v7, 0x8

    .line 428
    .line 429
    const/4 v3, 0x0

    .line 430
    move-object/from16 v22, v2

    .line 431
    .line 432
    move-object v2, v1

    .line 433
    move-object/from16 v1, v22

    .line 434
    .line 435
    invoke-static/range {v0 .. v7}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 436
    .line 437
    .line 438
    const-string v0, "\u5de6\u53f3\u5185\u8fb9\u8ddd"

    .line 439
    .line 440
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Ls7/h;

    .line 453
    .line 454
    iget v1, v1, Ls7/h;->m:I

    .line 455
    .line 456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    new-instance v2, Lr8/j;

    .line 461
    .line 462
    const-string v3, "TIME_PADDING_HORIZONTAL"

    .line 463
    .line 464
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    new-instance v1, Ll9/a;

    .line 468
    .line 469
    invoke-direct {v1, v9, v11}, Ll9/a;-><init>(FF)V

    .line 470
    .line 471
    .line 472
    invoke-static {v1, v10, v5, v12}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    if-ne v3, v13, :cond_6

    .line 481
    .line 482
    new-instance v3, Ls7/d;

    .line 483
    .line 484
    const/16 v4, 0xa

    .line 485
    .line 486
    invoke-direct {v3, v4}, Ls7/d;-><init>(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    :cond_6
    move-object v4, v3

    .line 493
    check-cast v4, Lf9/k;

    .line 494
    .line 495
    const/4 v3, 0x0

    .line 496
    invoke-virtual {v5, v3}, Lf1/s;->p(Z)V

    .line 497
    .line 498
    .line 499
    const/16 v6, 0x6c06

    .line 500
    .line 501
    const/4 v7, 0x0

    .line 502
    const/4 v3, 0x0

    .line 503
    move-object/from16 v22, v2

    .line 504
    .line 505
    move-object v2, v1

    .line 506
    move-object/from16 v1, v22

    .line 507
    .line 508
    invoke-static/range {v0 .. v7}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 509
    .line 510
    .line 511
    :goto_1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 512
    .line 513
    return-object v0
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le8/h;->a:I

    .line 4
    .line 5
    const/16 v5, 0x36

    .line 6
    .line 7
    const/high16 v6, 0x42c80000    # 100.0f

    .line 8
    .line 9
    const-string v7, "\u91cd\u542fCarLife\u751f\u6548"

    .line 10
    .line 11
    const-string v9, "px"

    .line 12
    .line 13
    const/16 v11, 0x30

    .line 14
    .line 15
    const/4 v12, 0x0

    .line 16
    const/4 v14, 0x0

    .line 17
    const/16 v16, 0x5

    .line 18
    .line 19
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 20
    .line 21
    const v13, 0x6e3c21fe

    .line 22
    .line 23
    .line 24
    sget-object v18, Lr8/z;->a:Lr8/z;

    .line 25
    .line 26
    iget-object v2, v0, Le8/h;->b:Lf1/v2;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v15, 0x0

    .line 30
    const/4 v10, 0x2

    .line 31
    const/4 v4, 0x3

    .line 32
    packed-switch v1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Lf1/s;

    .line 38
    .line 39
    move-object/from16 v3, p2

    .line 40
    .line 41
    check-cast v3, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    and-int/2addr v3, v4

    .line 48
    if-ne v3, v10, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    const-string v3, "\u5c4f\u5e55\u5706\u89d2"

    .line 62
    .line 63
    const-string v4, "dp"

    .line 64
    .line 65
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v24

    .line 73
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lx7/j;

    .line 78
    .line 79
    iget v2, v2, Lx7/j;->a:I

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Lr8/j;

    .line 86
    .line 87
    const-string v4, "ROUNDED_CORNER"

    .line 88
    .line 89
    invoke-direct {v3, v4, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Ll9/a;

    .line 93
    .line 94
    invoke-direct {v2, v12, v6}, Ll9/a;-><init>(FF)V

    .line 95
    .line 96
    .line 97
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    new-instance v5, Lr8/j;

    .line 102
    .line 103
    invoke-direct {v5, v2, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-ne v2, v8, :cond_2

    .line 114
    .line 115
    new-instance v2, Lv/x0;

    .line 116
    .line 117
    const/16 v4, 0x1c

    .line 118
    .line 119
    invoke-direct {v2, v4}, Lv/x0;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    move-object/from16 v28, v2

    .line 126
    .line 127
    check-cast v28, Lf9/k;

    .line 128
    .line 129
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 130
    .line 131
    .line 132
    const/16 v30, 0x6c06

    .line 133
    .line 134
    const/16 v31, 0x0

    .line 135
    .line 136
    const/16 v27, 0x0

    .line 137
    .line 138
    move-object/from16 v29, v1

    .line 139
    .line 140
    move-object/from16 v25, v3

    .line 141
    .line 142
    move-object/from16 v26, v5

    .line 143
    .line 144
    invoke-static/range {v24 .. v31}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-object v18

    .line 148
    :pswitch_0
    move-object/from16 v1, p1

    .line 149
    .line 150
    check-cast v1, Lf1/s;

    .line 151
    .line 152
    move-object/from16 v6, p2

    .line 153
    .line 154
    check-cast v6, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    and-int/2addr v4, v6

    .line 161
    if-ne v4, v10, :cond_4

    .line 162
    .line 163
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_3

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_4
    :goto_2
    sget-object v4, Ls7/b;->a:Ln1/c;

    .line 175
    .line 176
    invoke-static {v14, v4, v1, v11, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Le8/h;

    .line 180
    .line 181
    const/16 v4, 0xb

    .line 182
    .line 183
    invoke-direct {v3, v2, v4}, Le8/h;-><init>(Lf1/v2;I)V

    .line 184
    .line 185
    .line 186
    const v4, 0x53cbca26

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v3, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, "\u6837\u5f0f"

    .line 194
    .line 195
    invoke-static {v4, v3, v1, v5, v15}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 196
    .line 197
    .line 198
    new-instance v3, Le8/h;

    .line 199
    .line 200
    const/16 v4, 0xc

    .line 201
    .line 202
    invoke-direct {v3, v2, v4}, Le8/h;-><init>(Lf1/v2;I)V

    .line 203
    .line 204
    .line 205
    const v2, 0x27000f45

    .line 206
    .line 207
    .line 208
    invoke-static {v2, v3, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    const-string v3, "\u4f4d\u7f6e"

    .line 213
    .line 214
    invoke-static {v3, v2, v1, v5, v15}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 215
    .line 216
    .line 217
    :goto_3
    return-object v18

    .line 218
    :pswitch_1
    invoke-direct/range {p0 .. p2}, Le8/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    return-object v1

    .line 223
    :pswitch_2
    invoke-direct/range {p0 .. p2}, Le8/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    return-object v1

    .line 228
    :pswitch_3
    move-object/from16 v1, p1

    .line 229
    .line 230
    check-cast v1, Lf1/s;

    .line 231
    .line 232
    move-object/from16 v5, p2

    .line 233
    .line 234
    check-cast v5, Ljava/lang/Number;

    .line 235
    .line 236
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    and-int/2addr v4, v5

    .line 241
    if-ne v4, v10, :cond_6

    .line 242
    .line 243
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-nez v4, :cond_5

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_5
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_6
    :goto_4
    new-instance v4, Le8/h;

    .line 255
    .line 256
    const/16 v5, 0x9

    .line 257
    .line 258
    invoke-direct {v4, v2, v5}, Le8/h;-><init>(Lf1/v2;I)V

    .line 259
    .line 260
    .line 261
    const v2, 0x74a3d8ed

    .line 262
    .line 263
    .line 264
    invoke-static {v2, v4, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-static {v14, v2, v1, v11, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 269
    .line 270
    .line 271
    :goto_5
    return-object v18

    .line 272
    :pswitch_4
    move-object/from16 v1, p1

    .line 273
    .line 274
    check-cast v1, Lf1/s;

    .line 275
    .line 276
    move-object/from16 v3, p2

    .line 277
    .line 278
    check-cast v3, Ljava/lang/Number;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    and-int/2addr v3, v4

    .line 289
    if-ne v3, v10, :cond_8

    .line 290
    .line 291
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-nez v3, :cond_7

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_7
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_7

    .line 302
    .line 303
    :cond_8
    :goto_6
    const-string v3, "\u5c0f\u767d\u6761"

    .line 304
    .line 305
    const-string v4, "\u5c4f\u5e55\u5e95\u90e8\u5c0f\u767d\u6761"

    .line 306
    .line 307
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v22

    .line 315
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 316
    .line 317
    new-instance v4, Lr8/j;

    .line 318
    .line 319
    const-string v6, "FLOAT_GESTURE_SWITCH"

    .line 320
    .line 321
    invoke-direct {v4, v6, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    if-ne v3, v8, :cond_9

    .line 332
    .line 333
    new-instance v3, Lm7/j;

    .line 334
    .line 335
    const/16 v6, 0x15

    .line 336
    .line 337
    invoke-direct {v3, v6}, Lm7/j;-><init>(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_9
    move-object/from16 v25, v3

    .line 344
    .line 345
    check-cast v25, Lf9/k;

    .line 346
    .line 347
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 348
    .line 349
    .line 350
    const/16 v27, 0xc36

    .line 351
    .line 352
    const/16 v28, 0x4

    .line 353
    .line 354
    const/16 v24, 0x0

    .line 355
    .line 356
    move-object/from16 v26, v1

    .line 357
    .line 358
    move-object/from16 v23, v4

    .line 359
    .line 360
    invoke-static/range {v22 .. v28}, Lc7/a;->e(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 361
    .line 362
    .line 363
    const-string v3, "\u5c0f\u767d\u6761\u5bbd\u5ea6"

    .line 364
    .line 365
    filled-new-array {v3, v9}, [Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v22

    .line 373
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Lp7/b;

    .line 378
    .line 379
    iget v3, v3, Lp7/b;->b:I

    .line 380
    .line 381
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    new-instance v4, Lr8/j;

    .line 386
    .line 387
    const-string v6, "FLOAT_GESTURE_WIDTH"

    .line 388
    .line 389
    invoke-direct {v4, v6, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    new-instance v3, Ll9/a;

    .line 393
    .line 394
    const/high16 v6, 0x43960000    # 300.0f

    .line 395
    .line 396
    invoke-direct {v3, v12, v6}, Ll9/a;-><init>(FF)V

    .line 397
    .line 398
    .line 399
    invoke-static {v3, v5, v1, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 400
    .line 401
    .line 402
    move-result-object v24

    .line 403
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    if-ne v3, v8, :cond_a

    .line 408
    .line 409
    new-instance v3, Lm7/j;

    .line 410
    .line 411
    const/16 v6, 0x16

    .line 412
    .line 413
    invoke-direct {v3, v6}, Lm7/j;-><init>(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    :cond_a
    move-object/from16 v26, v3

    .line 420
    .line 421
    check-cast v26, Lf9/k;

    .line 422
    .line 423
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 424
    .line 425
    .line 426
    const/16 v28, 0x6006

    .line 427
    .line 428
    const/16 v29, 0x8

    .line 429
    .line 430
    const/16 v25, 0x0

    .line 431
    .line 432
    move-object/from16 v27, v1

    .line 433
    .line 434
    move-object/from16 v23, v4

    .line 435
    .line 436
    invoke-static/range {v22 .. v29}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 437
    .line 438
    .line 439
    const-string v3, "\u5c0f\u767d\u6761\u9ad8\u5ea6"

    .line 440
    .line 441
    filled-new-array {v3, v9}, [Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 446
    .line 447
    .line 448
    move-result-object v22

    .line 449
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    check-cast v3, Lp7/b;

    .line 454
    .line 455
    iget v3, v3, Lp7/b;->c:I

    .line 456
    .line 457
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    new-instance v4, Lr8/j;

    .line 462
    .line 463
    const-string v6, "FLOAT_GESTURE_HEIGHT"

    .line 464
    .line 465
    invoke-direct {v4, v6, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    new-instance v3, Ll9/a;

    .line 469
    .line 470
    const/high16 v6, 0x42480000    # 50.0f

    .line 471
    .line 472
    invoke-direct {v3, v12, v6}, Ll9/a;-><init>(FF)V

    .line 473
    .line 474
    .line 475
    invoke-static {v3, v5, v1, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 476
    .line 477
    .line 478
    move-result-object v24

    .line 479
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    if-ne v3, v8, :cond_b

    .line 484
    .line 485
    new-instance v3, Lm7/j;

    .line 486
    .line 487
    const/16 v6, 0x17

    .line 488
    .line 489
    invoke-direct {v3, v6}, Lm7/j;-><init>(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :cond_b
    move-object/from16 v26, v3

    .line 496
    .line 497
    check-cast v26, Lf9/k;

    .line 498
    .line 499
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 500
    .line 501
    .line 502
    const/16 v28, 0x6006

    .line 503
    .line 504
    const/16 v29, 0x8

    .line 505
    .line 506
    const/16 v25, 0x0

    .line 507
    .line 508
    move-object/from16 v27, v1

    .line 509
    .line 510
    move-object/from16 v23, v4

    .line 511
    .line 512
    invoke-static/range {v22 .. v29}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 513
    .line 514
    .line 515
    const-string v3, "\u5c0f\u767d\u6761\u5e95\u8fb9\u8ddd"

    .line 516
    .line 517
    filled-new-array {v3, v9}, [Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 522
    .line 523
    .line 524
    move-result-object v22

    .line 525
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    check-cast v2, Lp7/b;

    .line 530
    .line 531
    iget v2, v2, Lp7/b;->d:I

    .line 532
    .line 533
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    new-instance v3, Lr8/j;

    .line 538
    .line 539
    const-string v4, "FLOAT_GESTURE_BOTTOM"

    .line 540
    .line 541
    invoke-direct {v3, v4, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    new-instance v2, Ll9/a;

    .line 545
    .line 546
    const/high16 v4, 0x43160000    # 150.0f

    .line 547
    .line 548
    invoke-direct {v2, v12, v4}, Ll9/a;-><init>(FF)V

    .line 549
    .line 550
    .line 551
    invoke-static {v2, v5, v1, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 552
    .line 553
    .line 554
    move-result-object v24

    .line 555
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    if-ne v2, v8, :cond_c

    .line 560
    .line 561
    new-instance v2, Lm7/j;

    .line 562
    .line 563
    const/16 v4, 0x18

    .line 564
    .line 565
    invoke-direct {v2, v4}, Lm7/j;-><init>(I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    :cond_c
    move-object/from16 v26, v2

    .line 572
    .line 573
    check-cast v26, Lf9/k;

    .line 574
    .line 575
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 576
    .line 577
    .line 578
    const/16 v28, 0x6006

    .line 579
    .line 580
    const/16 v29, 0x8

    .line 581
    .line 582
    const/16 v25, 0x0

    .line 583
    .line 584
    move-object/from16 v27, v1

    .line 585
    .line 586
    move-object/from16 v23, v3

    .line 587
    .line 588
    invoke-static/range {v22 .. v29}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 589
    .line 590
    .line 591
    const-string v2, "\u5355\u51fb\u8fd4\u56de\u684c\u9762, \u957f\u6309\u6253\u5f00\u8bbe\u7f6e"

    .line 592
    .line 593
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    const/4 v3, 0x6

    .line 598
    invoke-static {v2, v1, v3}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 599
    .line 600
    .line 601
    :goto_7
    return-object v18

    .line 602
    :pswitch_5
    move-object/from16 v1, p1

    .line 603
    .line 604
    check-cast v1, Lf1/s;

    .line 605
    .line 606
    move-object/from16 v5, p2

    .line 607
    .line 608
    check-cast v5, Ljava/lang/Number;

    .line 609
    .line 610
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    and-int/2addr v4, v5

    .line 615
    if-ne v4, v10, :cond_e

    .line 616
    .line 617
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    if-nez v4, :cond_d

    .line 622
    .line 623
    goto :goto_8

    .line 624
    :cond_d
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 625
    .line 626
    .line 627
    goto :goto_9

    .line 628
    :cond_e
    :goto_8
    new-instance v4, Le8/h;

    .line 629
    .line 630
    const/4 v5, 0x7

    .line 631
    invoke-direct {v4, v2, v5}, Le8/h;-><init>(Lf1/v2;I)V

    .line 632
    .line 633
    .line 634
    const v2, 0x6cce4115

    .line 635
    .line 636
    .line 637
    invoke-static {v2, v4, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-static {v14, v2, v1, v11, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 642
    .line 643
    .line 644
    :goto_9
    return-object v18

    .line 645
    :pswitch_6
    move-object/from16 v1, p1

    .line 646
    .line 647
    check-cast v1, Lf1/s;

    .line 648
    .line 649
    move-object/from16 v5, p2

    .line 650
    .line 651
    check-cast v5, Ljava/lang/Number;

    .line 652
    .line 653
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 654
    .line 655
    .line 656
    move-result v5

    .line 657
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    and-int/2addr v5, v4

    .line 662
    if-ne v5, v10, :cond_10

    .line 663
    .line 664
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-nez v5, :cond_f

    .line 669
    .line 670
    goto :goto_a

    .line 671
    :cond_f
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_b

    .line 675
    .line 676
    :cond_10
    :goto_a
    const-string v5, "\u5e94\u7528\u60ac\u6d6e"

    .line 677
    .line 678
    const-string v7, "\u914d\u5408\u652f\u6301\u60ac\u6d6e\u5e94\u7528\u7684\u684c\u9762\u4f7f\u7528"

    .line 679
    .line 680
    filled-new-array {v5, v7}, [Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 685
    .line 686
    .line 687
    move-result-object v22

    .line 688
    new-instance v24, Lj8/k0;

    .line 689
    .line 690
    new-instance v5, Lj8/m0;

    .line 691
    .line 692
    invoke-direct {v5, v15}, Lj8/m0;-><init>(I)V

    .line 693
    .line 694
    .line 695
    const/16 v29, 0x0

    .line 696
    .line 697
    const/16 v30, 0x1c

    .line 698
    .line 699
    const-string v25, "\u5173\u95ed"

    .line 700
    .line 701
    const/16 v27, 0x0

    .line 702
    .line 703
    const/16 v28, 0x0

    .line 704
    .line 705
    move-object/from16 v26, v5

    .line 706
    .line 707
    invoke-direct/range {v24 .. v30}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 708
    .line 709
    .line 710
    new-instance v25, Lj8/k0;

    .line 711
    .line 712
    new-instance v5, Lj8/m0;

    .line 713
    .line 714
    invoke-direct {v5, v3}, Lj8/m0;-><init>(I)V

    .line 715
    .line 716
    .line 717
    const/16 v30, 0x0

    .line 718
    .line 719
    const/16 v31, 0x1c

    .line 720
    .line 721
    const-string v26, "\u60ac\u6d6e(\u914d\u5408\u684c\u9762\u4f7f\u7528)"

    .line 722
    .line 723
    move-object/from16 v27, v5

    .line 724
    .line 725
    invoke-direct/range {v25 .. v31}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 726
    .line 727
    .line 728
    new-instance v26, Lj8/k0;

    .line 729
    .line 730
    new-instance v5, Lj8/m0;

    .line 731
    .line 732
    invoke-direct {v5, v10}, Lj8/m0;-><init>(I)V

    .line 733
    .line 734
    .line 735
    const/16 v31, 0x0

    .line 736
    .line 737
    const/16 v32, 0x1c

    .line 738
    .line 739
    const-string v27, "\u81ea\u5b9a\u4e49(\u53cc\u6307\u53cc\u51fb\u5173\u95ed)"

    .line 740
    .line 741
    move-object/from16 v28, v5

    .line 742
    .line 743
    invoke-direct/range {v26 .. v32}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 744
    .line 745
    .line 746
    new-array v4, v4, [Lj8/k0;

    .line 747
    .line 748
    aput-object v24, v4, v15

    .line 749
    .line 750
    aput-object v25, v4, v3

    .line 751
    .line 752
    aput-object v26, v4, v10

    .line 753
    .line 754
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 755
    .line 756
    .line 757
    move-result-object v3

    .line 758
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    if-ne v4, v8, :cond_11

    .line 766
    .line 767
    new-instance v4, Lm7/j;

    .line 768
    .line 769
    const/16 v5, 0xc

    .line 770
    .line 771
    invoke-direct {v4, v5}, Lm7/j;-><init>(I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    :cond_11
    move-object/from16 v27, v4

    .line 778
    .line 779
    check-cast v27, Lf9/k;

    .line 780
    .line 781
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 782
    .line 783
    .line 784
    const v29, 0x30186

    .line 785
    .line 786
    .line 787
    const/16 v30, 0x18

    .line 788
    .line 789
    const-string v24, "FLOAT_APP_SWITCH"

    .line 790
    .line 791
    const/16 v25, 0x0

    .line 792
    .line 793
    const/16 v26, 0x0

    .line 794
    .line 795
    move-object/from16 v28, v1

    .line 796
    .line 797
    move-object/from16 v23, v3

    .line 798
    .line 799
    invoke-static/range {v22 .. v30}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 800
    .line 801
    .line 802
    const-string v3, "\u5bbd\u5ea6"

    .line 803
    .line 804
    filled-new-array {v3, v9}, [Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 809
    .line 810
    .line 811
    move-result-object v22

    .line 812
    sget v3, Lo7/h;->e:I

    .line 813
    .line 814
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    check-cast v3, Lo7/i;

    .line 819
    .line 820
    iget v3, v3, Lo7/i;->b:I

    .line 821
    .line 822
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    new-instance v4, Lr8/j;

    .line 827
    .line 828
    const-string v5, "FLOAT_APP_WIDTH"

    .line 829
    .line 830
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    .line 832
    .line 833
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    iget-object v3, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast v3, Ljava/lang/Number;

    .line 840
    .line 841
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 842
    .line 843
    .line 844
    move-result v3

    .line 845
    int-to-float v3, v3

    .line 846
    new-instance v5, Ll9/a;

    .line 847
    .line 848
    invoke-direct {v5, v12, v3}, Ll9/a;-><init>(FF)V

    .line 849
    .line 850
    .line 851
    invoke-static {v5, v6, v1, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 852
    .line 853
    .line 854
    move-result-object v24

    .line 855
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    if-ne v3, v8, :cond_12

    .line 860
    .line 861
    new-instance v3, Lm7/j;

    .line 862
    .line 863
    const/16 v5, 0xd

    .line 864
    .line 865
    invoke-direct {v3, v5}, Lm7/j;-><init>(I)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    :cond_12
    move-object/from16 v26, v3

    .line 872
    .line 873
    check-cast v26, Lf9/k;

    .line 874
    .line 875
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 876
    .line 877
    .line 878
    const/16 v28, 0x6006

    .line 879
    .line 880
    const/16 v29, 0x8

    .line 881
    .line 882
    const/16 v25, 0x0

    .line 883
    .line 884
    move-object/from16 v27, v1

    .line 885
    .line 886
    move-object/from16 v23, v4

    .line 887
    .line 888
    invoke-static/range {v22 .. v29}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 889
    .line 890
    .line 891
    const-string v3, "\u9ad8\u5ea6"

    .line 892
    .line 893
    filled-new-array {v3, v9}, [Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v3

    .line 897
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 898
    .line 899
    .line 900
    move-result-object v22

    .line 901
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    check-cast v3, Lo7/i;

    .line 906
    .line 907
    iget v3, v3, Lo7/i;->c:I

    .line 908
    .line 909
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    new-instance v4, Lr8/j;

    .line 914
    .line 915
    const-string v5, "FLOAT_APP_HEIGHT"

    .line 916
    .line 917
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 918
    .line 919
    .line 920
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v3, Ljava/lang/Number;

    .line 927
    .line 928
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    int-to-float v3, v3

    .line 933
    new-instance v5, Ll9/a;

    .line 934
    .line 935
    invoke-direct {v5, v12, v3}, Ll9/a;-><init>(FF)V

    .line 936
    .line 937
    .line 938
    invoke-static {v5, v6, v1, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 939
    .line 940
    .line 941
    move-result-object v24

    .line 942
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    if-ne v3, v8, :cond_13

    .line 947
    .line 948
    new-instance v3, Lm7/j;

    .line 949
    .line 950
    const/16 v5, 0xe

    .line 951
    .line 952
    invoke-direct {v3, v5}, Lm7/j;-><init>(I)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 956
    .line 957
    .line 958
    :cond_13
    move-object/from16 v26, v3

    .line 959
    .line 960
    check-cast v26, Lf9/k;

    .line 961
    .line 962
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 963
    .line 964
    .line 965
    const/16 v28, 0x6006

    .line 966
    .line 967
    const/16 v29, 0x8

    .line 968
    .line 969
    const/16 v25, 0x0

    .line 970
    .line 971
    move-object/from16 v27, v1

    .line 972
    .line 973
    move-object/from16 v23, v4

    .line 974
    .line 975
    invoke-static/range {v22 .. v29}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 976
    .line 977
    .line 978
    const-string v3, "\u5de6\u504f\u79fbX"

    .line 979
    .line 980
    filled-new-array {v3, v9}, [Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 985
    .line 986
    .line 987
    move-result-object v22

    .line 988
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    check-cast v3, Lo7/i;

    .line 993
    .line 994
    iget v3, v3, Lo7/i;->d:I

    .line 995
    .line 996
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 997
    .line 998
    .line 999
    move-result-object v3

    .line 1000
    new-instance v4, Lr8/j;

    .line 1001
    .line 1002
    const-string v5, "FLOAT_APP_OFFSET_X"

    .line 1003
    .line 1004
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1005
    .line 1006
    .line 1007
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    iget-object v3, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast v3, Ljava/lang/Number;

    .line 1014
    .line 1015
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1016
    .line 1017
    .line 1018
    move-result v3

    .line 1019
    int-to-float v3, v3

    .line 1020
    int-to-float v5, v10

    .line 1021
    div-float/2addr v3, v5

    .line 1022
    new-instance v7, Ll9/a;

    .line 1023
    .line 1024
    invoke-direct {v7, v12, v3}, Ll9/a;-><init>(FF)V

    .line 1025
    .line 1026
    .line 1027
    invoke-static {v7, v6, v1, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v24

    .line 1031
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v3

    .line 1035
    if-ne v3, v8, :cond_14

    .line 1036
    .line 1037
    new-instance v3, Lm7/j;

    .line 1038
    .line 1039
    const/16 v7, 0xf

    .line 1040
    .line 1041
    invoke-direct {v3, v7}, Lm7/j;-><init>(I)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1045
    .line 1046
    .line 1047
    :cond_14
    move-object/from16 v26, v3

    .line 1048
    .line 1049
    check-cast v26, Lf9/k;

    .line 1050
    .line 1051
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 1052
    .line 1053
    .line 1054
    const/16 v28, 0x6006

    .line 1055
    .line 1056
    const/16 v29, 0x8

    .line 1057
    .line 1058
    const/16 v25, 0x0

    .line 1059
    .line 1060
    move-object/from16 v27, v1

    .line 1061
    .line 1062
    move-object/from16 v23, v4

    .line 1063
    .line 1064
    invoke-static/range {v22 .. v29}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1065
    .line 1066
    .line 1067
    const-string v3, "\u4e0a\u504f\u79fbY"

    .line 1068
    .line 1069
    filled-new-array {v3, v9}, [Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v22

    .line 1077
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    check-cast v2, Lo7/i;

    .line 1082
    .line 1083
    iget v2, v2, Lo7/i;->e:I

    .line 1084
    .line 1085
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    new-instance v3, Lr8/j;

    .line 1090
    .line 1091
    const-string v4, "FLOAT_APP_OFFSET_Y"

    .line 1092
    .line 1093
    invoke-direct {v3, v4, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v2

    .line 1100
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 1101
    .line 1102
    check-cast v2, Ljava/lang/Number;

    .line 1103
    .line 1104
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1105
    .line 1106
    .line 1107
    move-result v2

    .line 1108
    int-to-float v2, v2

    .line 1109
    div-float/2addr v2, v5

    .line 1110
    new-instance v4, Ll9/a;

    .line 1111
    .line 1112
    invoke-direct {v4, v12, v2}, Ll9/a;-><init>(FF)V

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v4, v6, v1, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v24

    .line 1119
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    if-ne v2, v8, :cond_15

    .line 1124
    .line 1125
    new-instance v2, Lm7/j;

    .line 1126
    .line 1127
    const/16 v4, 0x10

    .line 1128
    .line 1129
    invoke-direct {v2, v4}, Lm7/j;-><init>(I)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1133
    .line 1134
    .line 1135
    :cond_15
    move-object/from16 v26, v2

    .line 1136
    .line 1137
    check-cast v26, Lf9/k;

    .line 1138
    .line 1139
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 1140
    .line 1141
    .line 1142
    const/16 v28, 0x6006

    .line 1143
    .line 1144
    const/16 v29, 0x8

    .line 1145
    .line 1146
    const/16 v25, 0x0

    .line 1147
    .line 1148
    move-object/from16 v27, v1

    .line 1149
    .line 1150
    move-object/from16 v23, v3

    .line 1151
    .line 1152
    invoke-static/range {v22 .. v29}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1153
    .line 1154
    .line 1155
    const-string v2, "\u81ea\u5b9a\u4e49\u60ac\u6d6e\u8bbe\u7f6e"

    .line 1156
    .line 1157
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    const/4 v3, 0x6

    .line 1162
    invoke-static {v2, v1, v3}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 1163
    .line 1164
    .line 1165
    :goto_b
    return-object v18

    .line 1166
    :pswitch_7
    move-object/from16 v1, p1

    .line 1167
    .line 1168
    check-cast v1, Lf1/s;

    .line 1169
    .line 1170
    move-object/from16 v3, p2

    .line 1171
    .line 1172
    check-cast v3, Ljava/lang/Number;

    .line 1173
    .line 1174
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1175
    .line 1176
    .line 1177
    move-result v3

    .line 1178
    and-int/2addr v3, v4

    .line 1179
    if-ne v3, v10, :cond_17

    .line 1180
    .line 1181
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 1182
    .line 1183
    .line 1184
    move-result v3

    .line 1185
    if-nez v3, :cond_16

    .line 1186
    .line 1187
    goto :goto_c

    .line 1188
    :cond_16
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 1189
    .line 1190
    .line 1191
    goto/16 :goto_d

    .line 1192
    .line 1193
    :cond_17
    :goto_c
    sget-object v3, Lm7/k;->a:Lm7/k;

    .line 1194
    .line 1195
    sget v5, Lm7/k;->c:I

    .line 1196
    .line 1197
    shl-int/2addr v5, v4

    .line 1198
    invoke-virtual {v3, v14, v1, v5}, Lm7/k;->c(Ljava/util/List;Lf1/s;I)V

    .line 1199
    .line 1200
    .line 1201
    const-string v3, "\u8fde\u63a5\u8d85\u65f6\u65f6\u95f4"

    .line 1202
    .line 1203
    const-string v5, "\u79d2"

    .line 1204
    .line 1205
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v3

    .line 1209
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v19

    .line 1213
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v3

    .line 1217
    check-cast v3, Lm7/z;

    .line 1218
    .line 1219
    iget v3, v3, Lm7/z;->g:I

    .line 1220
    .line 1221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v3

    .line 1225
    new-instance v5, Lr8/j;

    .line 1226
    .line 1227
    const-string v6, "CONNECT_HEARTBEAT_TIMEOUT"

    .line 1228
    .line 1229
    invoke-direct {v5, v6, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1230
    .line 1231
    .line 1232
    new-instance v3, Ll9/a;

    .line 1233
    .line 1234
    const/high16 v6, 0x40a00000    # 5.0f

    .line 1235
    .line 1236
    const/high16 v7, 0x42700000    # 60.0f

    .line 1237
    .line 1238
    invoke-direct {v3, v6, v7}, Ll9/a;-><init>(FF)V

    .line 1239
    .line 1240
    .line 1241
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v6

    .line 1245
    new-instance v7, Lr8/j;

    .line 1246
    .line 1247
    invoke-direct {v7, v3, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v3

    .line 1257
    if-ne v3, v8, :cond_18

    .line 1258
    .line 1259
    new-instance v3, Lm7/j;

    .line 1260
    .line 1261
    invoke-direct {v3, v4}, Lm7/j;-><init>(I)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1265
    .line 1266
    .line 1267
    :cond_18
    move-object/from16 v23, v3

    .line 1268
    .line 1269
    check-cast v23, Lf9/k;

    .line 1270
    .line 1271
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 1272
    .line 1273
    .line 1274
    const/16 v25, 0x6006

    .line 1275
    .line 1276
    const/16 v26, 0x8

    .line 1277
    .line 1278
    const/16 v22, 0x0

    .line 1279
    .line 1280
    move-object/from16 v24, v1

    .line 1281
    .line 1282
    move-object/from16 v20, v5

    .line 1283
    .line 1284
    move-object/from16 v21, v7

    .line 1285
    .line 1286
    invoke-static/range {v19 .. v26}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1287
    .line 1288
    .line 1289
    sget-object v3, Lm7/n;->b:Lm7/n;

    .line 1290
    .line 1291
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v2

    .line 1295
    check-cast v2, Lm7/z;

    .line 1296
    .line 1297
    iget-object v2, v2, Lm7/z;->f:Ljava/lang/String;

    .line 1298
    .line 1299
    new-instance v4, Lr8/j;

    .line 1300
    .line 1301
    const-string v5, "\u624b\u673a\u7aefIP\u5730\u5740(\u91cd\u542fCarLife\u751f\u6548)"

    .line 1302
    .line 1303
    invoke-direct {v4, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    if-ne v2, v8, :cond_19

    .line 1314
    .line 1315
    new-instance v2, Lm7/j;

    .line 1316
    .line 1317
    const/4 v5, 0x4

    .line 1318
    invoke-direct {v2, v5}, Lm7/j;-><init>(I)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1322
    .line 1323
    .line 1324
    :cond_19
    check-cast v2, Lf9/k;

    .line 1325
    .line 1326
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 1327
    .line 1328
    .line 1329
    const/16 v5, 0x1b0

    .line 1330
    .line 1331
    invoke-virtual {v3, v4, v2, v1, v5}, Lm7/n;->f(Lr8/j;Lf9/k;Lf1/s;I)V

    .line 1332
    .line 1333
    .line 1334
    :goto_d
    return-object v18

    .line 1335
    :pswitch_8
    move-object/from16 v1, p1

    .line 1336
    .line 1337
    check-cast v1, Lf1/s;

    .line 1338
    .line 1339
    move-object/from16 v5, p2

    .line 1340
    .line 1341
    check-cast v5, Ljava/lang/Number;

    .line 1342
    .line 1343
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 1344
    .line 1345
    .line 1346
    move-result v5

    .line 1347
    and-int/2addr v4, v5

    .line 1348
    if-ne v4, v10, :cond_1b

    .line 1349
    .line 1350
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 1351
    .line 1352
    .line 1353
    move-result v4

    .line 1354
    if-nez v4, :cond_1a

    .line 1355
    .line 1356
    goto :goto_e

    .line 1357
    :cond_1a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 1358
    .line 1359
    .line 1360
    goto/16 :goto_f

    .line 1361
    .line 1362
    :cond_1b
    :goto_e
    sget-object v19, Lm7/k;->a:Lm7/k;

    .line 1363
    .line 1364
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v4

    .line 1368
    check-cast v4, Lm7/z;

    .line 1369
    .line 1370
    iget-object v4, v4, Lm7/z;->i:Ljava/lang/String;

    .line 1371
    .line 1372
    new-instance v5, Lr8/j;

    .line 1373
    .line 1374
    const-string v6, "CONNECT_COVER_WAIT"

    .line 1375
    .line 1376
    invoke-direct {v5, v6, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v4

    .line 1386
    if-ne v4, v8, :cond_1c

    .line 1387
    .line 1388
    new-instance v4, Lc8/y0;

    .line 1389
    .line 1390
    const/16 v6, 0x1d

    .line 1391
    .line 1392
    invoke-direct {v4, v6}, Lc8/y0;-><init>(I)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1396
    .line 1397
    .line 1398
    :cond_1c
    move-object/from16 v22, v4

    .line 1399
    .line 1400
    check-cast v22, Lf9/k;

    .line 1401
    .line 1402
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 1403
    .line 1404
    .line 1405
    sget-object v4, Ll8/p;->l:Ldc/l0;

    .line 1406
    .line 1407
    const v21, 0x7f07005a

    .line 1408
    .line 1409
    .line 1410
    const/16 v24, 0x1180

    .line 1411
    .line 1412
    move-object/from16 v23, v1

    .line 1413
    .line 1414
    move-object/from16 v20, v5

    .line 1415
    .line 1416
    invoke-virtual/range {v19 .. v24}, Lm7/k;->b(Lr8/j;ILf9/k;Lf1/s;I)V

    .line 1417
    .line 1418
    .line 1419
    move-object/from16 v10, v23

    .line 1420
    .line 1421
    const/16 v1, 0x10

    .line 1422
    .line 1423
    invoke-static {v1, v10}, Lg5/a;->B(ILf1/s;)F

    .line 1424
    .line 1425
    .line 1426
    move-result v4

    .line 1427
    sget-object v5, Lr1/m;->a:Lr1/m;

    .line 1428
    .line 1429
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v4

    .line 1433
    invoke-static {v10, v4}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 1434
    .line 1435
    .line 1436
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v4

    .line 1440
    check-cast v4, Lm7/z;

    .line 1441
    .line 1442
    iget-object v4, v4, Lm7/z;->j:Ljava/lang/String;

    .line 1443
    .line 1444
    new-instance v6, Lr8/j;

    .line 1445
    .line 1446
    const-string v7, "CONNECT_COVER_SUCCESS"

    .line 1447
    .line 1448
    invoke-direct {v6, v7, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v10, v13}, Lf1/s;->W(I)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v4

    .line 1458
    if-ne v4, v8, :cond_1d

    .line 1459
    .line 1460
    new-instance v4, Lm7/j;

    .line 1461
    .line 1462
    invoke-direct {v4, v15}, Lm7/j;-><init>(I)V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v10, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1466
    .line 1467
    .line 1468
    :cond_1d
    move-object/from16 v22, v4

    .line 1469
    .line 1470
    check-cast v22, Lf9/k;

    .line 1471
    .line 1472
    invoke-virtual {v10, v15}, Lf1/s;->p(Z)V

    .line 1473
    .line 1474
    .line 1475
    const v21, 0x7f070059

    .line 1476
    .line 1477
    .line 1478
    move-object/from16 v20, v6

    .line 1479
    .line 1480
    move-object/from16 v23, v10

    .line 1481
    .line 1482
    invoke-virtual/range {v19 .. v24}, Lm7/k;->b(Lr8/j;ILf9/k;Lf1/s;I)V

    .line 1483
    .line 1484
    .line 1485
    invoke-static {v1, v10}, Lg5/a;->B(ILf1/s;)F

    .line 1486
    .line 1487
    .line 1488
    move-result v1

    .line 1489
    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v1

    .line 1493
    invoke-static {v10, v1}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v1

    .line 1500
    check-cast v1, Lm7/z;

    .line 1501
    .line 1502
    iget-object v1, v1, Lm7/z;->k:Ljava/lang/String;

    .line 1503
    .line 1504
    new-instance v7, Lr8/j;

    .line 1505
    .line 1506
    const-string v2, "CONNECT_COVER_FAIL"

    .line 1507
    .line 1508
    invoke-direct {v7, v2, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v10, v13}, Lf1/s;->W(I)V

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v1

    .line 1518
    if-ne v1, v8, :cond_1e

    .line 1519
    .line 1520
    new-instance v1, Lm7/j;

    .line 1521
    .line 1522
    invoke-direct {v1, v3}, Lm7/j;-><init>(I)V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v10, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1526
    .line 1527
    .line 1528
    :cond_1e
    move-object v9, v1

    .line 1529
    check-cast v9, Lf9/k;

    .line 1530
    .line 1531
    invoke-virtual {v10, v15}, Lf1/s;->p(Z)V

    .line 1532
    .line 1533
    .line 1534
    const v8, 0x7f070058

    .line 1535
    .line 1536
    .line 1537
    move-object/from16 v6, v19

    .line 1538
    .line 1539
    const/16 v11, 0x1180

    .line 1540
    .line 1541
    invoke-virtual/range {v6 .. v11}, Lm7/k;->b(Lr8/j;ILf9/k;Lf1/s;I)V

    .line 1542
    .line 1543
    .line 1544
    :goto_f
    return-object v18

    .line 1545
    :pswitch_9
    move-object/from16 v29, p1

    .line 1546
    .line 1547
    check-cast v29, Lf1/s;

    .line 1548
    .line 1549
    move-object/from16 v1, p2

    .line 1550
    .line 1551
    check-cast v1, Ljava/lang/Number;

    .line 1552
    .line 1553
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1554
    .line 1555
    .line 1556
    move-result v1

    .line 1557
    and-int/2addr v1, v4

    .line 1558
    if-ne v1, v10, :cond_20

    .line 1559
    .line 1560
    invoke-virtual/range {v29 .. v29}, Lf1/s;->z()Z

    .line 1561
    .line 1562
    .line 1563
    move-result v1

    .line 1564
    if-nez v1, :cond_1f

    .line 1565
    .line 1566
    goto :goto_10

    .line 1567
    :cond_1f
    invoke-virtual/range {v29 .. v29}, Lf1/s;->Q()V

    .line 1568
    .line 1569
    .line 1570
    goto/16 :goto_11

    .line 1571
    .line 1572
    :cond_20
    :goto_10
    const-string v1, "\u5a92\u4f53\u4fe1\u606f\u663e\u793a"

    .line 1573
    .line 1574
    const-string v5, "\u7cfb\u7edf\u663e\u793a\u97f3\u4e50\u6b4c\u8bcd\u5c01\u9762\u7b49\u4fe1\u606f"

    .line 1575
    .line 1576
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v1

    .line 1580
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v25

    .line 1584
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v1

    .line 1588
    new-instance v5, Lr8/j;

    .line 1589
    .line 1590
    const-string v9, "MUSIC_HUD"

    .line 1591
    .line 1592
    invoke-direct {v5, v9, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1593
    .line 1594
    .line 1595
    const/16 v30, 0x36

    .line 1596
    .line 1597
    const/16 v31, 0xc

    .line 1598
    .line 1599
    const/16 v27, 0x0

    .line 1600
    .line 1601
    const/16 v28, 0x0

    .line 1602
    .line 1603
    move-object/from16 v26, v5

    .line 1604
    .line 1605
    invoke-static/range {v25 .. v31}, Lc7/a;->e(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1606
    .line 1607
    .line 1608
    const-string v1, "\u5a92\u4f53\u6570\u636e\u538b\u7f29"

    .line 1609
    .line 1610
    const-string v5, "AAC\u6709\u635f\u538b\u7f29, \u6570\u636e\u4f53\u79ef\u5c0f"

    .line 1611
    .line 1612
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v1

    .line 1616
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v25

    .line 1620
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v1

    .line 1624
    new-instance v5, Lr8/j;

    .line 1625
    .line 1626
    const-string v9, "AAC_SUPPORT"

    .line 1627
    .line 1628
    invoke-direct {v5, v9, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1629
    .line 1630
    .line 1631
    move-object/from16 v26, v5

    .line 1632
    .line 1633
    invoke-static/range {v25 .. v31}, Lc7/a;->e(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1634
    .line 1635
    .line 1636
    move-object/from16 v1, v29

    .line 1637
    .line 1638
    const-string v5, "\u8bed\u97f3\u64ad\u62a5\u65f6\u5a92\u4f53\u97f3\u91cf"

    .line 1639
    .line 1640
    const-string v9, "%"

    .line 1641
    .line 1642
    filled-new-array {v5, v9}, [Ljava/lang/String;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v5

    .line 1646
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v25

    .line 1650
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v2

    .line 1654
    check-cast v2, Lk7/k;

    .line 1655
    .line 1656
    iget v2, v2, Lk7/k;->a:I

    .line 1657
    .line 1658
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v2

    .line 1662
    new-instance v5, Lr8/j;

    .line 1663
    .line 1664
    const-string v9, "AUDIO_MEDIA_VOLUME"

    .line 1665
    .line 1666
    invoke-direct {v5, v9, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1667
    .line 1668
    .line 1669
    new-instance v2, Ll9/a;

    .line 1670
    .line 1671
    invoke-direct {v2, v12, v6}, Ll9/a;-><init>(FF)V

    .line 1672
    .line 1673
    .line 1674
    const/16 v22, 0x9

    .line 1675
    .line 1676
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v6

    .line 1680
    new-instance v9, Lr8/j;

    .line 1681
    .line 1682
    invoke-direct {v9, v2, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v2

    .line 1692
    if-ne v2, v8, :cond_21

    .line 1693
    .line 1694
    new-instance v2, Lc8/y0;

    .line 1695
    .line 1696
    const/16 v6, 0xd

    .line 1697
    .line 1698
    invoke-direct {v2, v6}, Lc8/y0;-><init>(I)V

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1702
    .line 1703
    .line 1704
    :cond_21
    move-object/from16 v29, v2

    .line 1705
    .line 1706
    check-cast v29, Lf9/k;

    .line 1707
    .line 1708
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 1709
    .line 1710
    .line 1711
    const/16 v31, 0x6006

    .line 1712
    .line 1713
    const/16 v32, 0x8

    .line 1714
    .line 1715
    const/16 v28, 0x0

    .line 1716
    .line 1717
    move-object/from16 v30, v1

    .line 1718
    .line 1719
    move-object/from16 v26, v5

    .line 1720
    .line 1721
    move-object/from16 v27, v9

    .line 1722
    .line 1723
    invoke-static/range {v25 .. v32}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1724
    .line 1725
    .line 1726
    move-object/from16 v29, v30

    .line 1727
    .line 1728
    const-string v1, "\u5a92\u4f53\u7f13\u5b58"

    .line 1729
    .line 1730
    const-string v2, "\u5a92\u4f53\u64ad\u653e\u7f13\u5b58\u5927\u5c0f\u8bbe\u7f6e"

    .line 1731
    .line 1732
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v1

    .line 1736
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v25

    .line 1740
    new-instance v30, Lj8/k0;

    .line 1741
    .line 1742
    new-instance v1, Lj8/m0;

    .line 1743
    .line 1744
    const/16 v2, 0x40

    .line 1745
    .line 1746
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 1747
    .line 1748
    .line 1749
    const/16 v35, 0x0

    .line 1750
    .line 1751
    const/16 v36, 0x1c

    .line 1752
    .line 1753
    const-string v31, "64KB"

    .line 1754
    .line 1755
    const/16 v33, 0x0

    .line 1756
    .line 1757
    const/16 v34, 0x0

    .line 1758
    .line 1759
    move-object/from16 v32, v1

    .line 1760
    .line 1761
    invoke-direct/range {v30 .. v36}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1762
    .line 1763
    .line 1764
    new-instance v31, Lj8/k0;

    .line 1765
    .line 1766
    new-instance v1, Lj8/m0;

    .line 1767
    .line 1768
    const/16 v2, 0x80

    .line 1769
    .line 1770
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 1771
    .line 1772
    .line 1773
    const/16 v36, 0x0

    .line 1774
    .line 1775
    const/16 v37, 0x1c

    .line 1776
    .line 1777
    const-string v32, "128KB"

    .line 1778
    .line 1779
    move-object/from16 v33, v1

    .line 1780
    .line 1781
    invoke-direct/range {v31 .. v37}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1782
    .line 1783
    .line 1784
    new-instance v32, Lj8/k0;

    .line 1785
    .line 1786
    new-instance v1, Lj8/m0;

    .line 1787
    .line 1788
    const/16 v2, 0xc0

    .line 1789
    .line 1790
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 1791
    .line 1792
    .line 1793
    const/16 v37, 0x0

    .line 1794
    .line 1795
    const/16 v38, 0x1c

    .line 1796
    .line 1797
    const-string v33, "192KB"

    .line 1798
    .line 1799
    move-object/from16 v34, v1

    .line 1800
    .line 1801
    invoke-direct/range {v32 .. v38}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1802
    .line 1803
    .line 1804
    new-instance v33, Lj8/k0;

    .line 1805
    .line 1806
    new-instance v1, Lj8/m0;

    .line 1807
    .line 1808
    const/16 v2, 0x100

    .line 1809
    .line 1810
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 1811
    .line 1812
    .line 1813
    const/16 v38, 0x0

    .line 1814
    .line 1815
    const/16 v39, 0x1c

    .line 1816
    .line 1817
    const-string v34, "256KB"

    .line 1818
    .line 1819
    move-object/from16 v35, v1

    .line 1820
    .line 1821
    invoke-direct/range {v33 .. v39}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1822
    .line 1823
    .line 1824
    new-instance v34, Lj8/k0;

    .line 1825
    .line 1826
    new-instance v1, Lj8/m0;

    .line 1827
    .line 1828
    const/16 v5, 0x180

    .line 1829
    .line 1830
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 1831
    .line 1832
    .line 1833
    const/16 v39, 0x0

    .line 1834
    .line 1835
    const/16 v40, 0x1c

    .line 1836
    .line 1837
    const-string v35, "384KB"

    .line 1838
    .line 1839
    move-object/from16 v36, v1

    .line 1840
    .line 1841
    invoke-direct/range {v34 .. v40}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1842
    .line 1843
    .line 1844
    new-instance v35, Lj8/k0;

    .line 1845
    .line 1846
    new-instance v1, Lj8/m0;

    .line 1847
    .line 1848
    const/16 v5, 0x200

    .line 1849
    .line 1850
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 1851
    .line 1852
    .line 1853
    const/16 v40, 0x0

    .line 1854
    .line 1855
    const/16 v41, 0x1c

    .line 1856
    .line 1857
    const-string v36, "512KB"

    .line 1858
    .line 1859
    move-object/from16 v37, v1

    .line 1860
    .line 1861
    invoke-direct/range {v35 .. v41}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1862
    .line 1863
    .line 1864
    new-instance v36, Lj8/k0;

    .line 1865
    .line 1866
    new-instance v1, Lj8/m0;

    .line 1867
    .line 1868
    const/16 v5, 0x280

    .line 1869
    .line 1870
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 1871
    .line 1872
    .line 1873
    const/16 v41, 0x0

    .line 1874
    .line 1875
    const/16 v42, 0x1c

    .line 1876
    .line 1877
    const-string v37, "640KB"

    .line 1878
    .line 1879
    move-object/from16 v38, v1

    .line 1880
    .line 1881
    invoke-direct/range {v36 .. v42}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1882
    .line 1883
    .line 1884
    new-instance v37, Lj8/k0;

    .line 1885
    .line 1886
    new-instance v1, Lj8/m0;

    .line 1887
    .line 1888
    const/16 v5, 0x300

    .line 1889
    .line 1890
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 1891
    .line 1892
    .line 1893
    const/16 v42, 0x0

    .line 1894
    .line 1895
    const/16 v43, 0x1c

    .line 1896
    .line 1897
    const-string v38, "768KB"

    .line 1898
    .line 1899
    move-object/from16 v39, v1

    .line 1900
    .line 1901
    invoke-direct/range {v37 .. v43}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1902
    .line 1903
    .line 1904
    new-instance v38, Lj8/k0;

    .line 1905
    .line 1906
    new-instance v1, Lj8/m0;

    .line 1907
    .line 1908
    const/16 v5, 0x400

    .line 1909
    .line 1910
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 1911
    .line 1912
    .line 1913
    const/16 v43, 0x0

    .line 1914
    .line 1915
    const/16 v44, 0x1c

    .line 1916
    .line 1917
    const-string v39, "1MB"

    .line 1918
    .line 1919
    move-object/from16 v40, v1

    .line 1920
    .line 1921
    invoke-direct/range {v38 .. v44}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1922
    .line 1923
    .line 1924
    const/16 v5, 0x9

    .line 1925
    .line 1926
    new-array v1, v5, [Lj8/k0;

    .line 1927
    .line 1928
    aput-object v30, v1, v15

    .line 1929
    .line 1930
    aput-object v31, v1, v3

    .line 1931
    .line 1932
    aput-object v32, v1, v10

    .line 1933
    .line 1934
    aput-object v33, v1, v4

    .line 1935
    .line 1936
    const/16 v17, 0x4

    .line 1937
    .line 1938
    aput-object v34, v1, v17

    .line 1939
    .line 1940
    aput-object v35, v1, v16

    .line 1941
    .line 1942
    const/16 v21, 0x6

    .line 1943
    .line 1944
    aput-object v36, v1, v21

    .line 1945
    .line 1946
    const/16 v20, 0x7

    .line 1947
    .line 1948
    aput-object v37, v1, v20

    .line 1949
    .line 1950
    const/16 v3, 0x8

    .line 1951
    .line 1952
    aput-object v38, v1, v3

    .line 1953
    .line 1954
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v26

    .line 1958
    new-instance v1, Lj8/m0;

    .line 1959
    .line 1960
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 1961
    .line 1962
    .line 1963
    new-instance v2, Lr8/j;

    .line 1964
    .line 1965
    const-string v3, "AUDIO_MEDIA_CACHE"

    .line 1966
    .line 1967
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1968
    .line 1969
    .line 1970
    const/16 v32, 0x46

    .line 1971
    .line 1972
    const/16 v33, 0x38

    .line 1973
    .line 1974
    move-object/from16 v30, v29

    .line 1975
    .line 1976
    const/16 v29, 0x0

    .line 1977
    .line 1978
    move-object/from16 v31, v30

    .line 1979
    .line 1980
    const/16 v30, 0x0

    .line 1981
    .line 1982
    move-object/from16 v27, v2

    .line 1983
    .line 1984
    invoke-static/range {v25 .. v33}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

    .line 1985
    .line 1986
    .line 1987
    move-object/from16 v1, v31

    .line 1988
    .line 1989
    invoke-static {v7}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v2

    .line 1993
    const/4 v3, 0x6

    .line 1994
    invoke-static {v2, v1, v3}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 1995
    .line 1996
    .line 1997
    :goto_11
    return-object v18

    .line 1998
    :pswitch_a
    move-object/from16 v1, p1

    .line 1999
    .line 2000
    check-cast v1, Lf1/s;

    .line 2001
    .line 2002
    move-object/from16 v5, p2

    .line 2003
    .line 2004
    check-cast v5, Ljava/lang/Number;

    .line 2005
    .line 2006
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 2007
    .line 2008
    .line 2009
    move-result v5

    .line 2010
    and-int/2addr v4, v5

    .line 2011
    if-ne v4, v10, :cond_23

    .line 2012
    .line 2013
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 2014
    .line 2015
    .line 2016
    move-result v4

    .line 2017
    if-nez v4, :cond_22

    .line 2018
    .line 2019
    goto :goto_12

    .line 2020
    :cond_22
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 2021
    .line 2022
    .line 2023
    goto/16 :goto_13

    .line 2024
    .line 2025
    :cond_23
    :goto_12
    const-string v4, "\u5a92\u4f53\u97f3\u9891\u901a\u9053"

    .line 2026
    .line 2027
    const-string v5, "\u5a92\u4f53\u97f3\u9891\u901a\u9053\u8bbe\u7f6e"

    .line 2028
    .line 2029
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v4

    .line 2033
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v23

    .line 2037
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v4

    .line 2041
    check-cast v4, Lk7/k;

    .line 2042
    .line 2043
    iget v4, v4, Lk7/k;->i:I

    .line 2044
    .line 2045
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v4

    .line 2049
    new-instance v5, Lr8/j;

    .line 2050
    .line 2051
    const-string v6, "AUDIO_MEDIA"

    .line 2052
    .line 2053
    invoke-direct {v5, v6, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2054
    .line 2055
    .line 2056
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 2057
    .line 2058
    .line 2059
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v4

    .line 2063
    if-ne v4, v8, :cond_24

    .line 2064
    .line 2065
    new-instance v4, Lk7/h;

    .line 2066
    .line 2067
    invoke-direct {v4, v15}, Lk7/h;-><init>(I)V

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2071
    .line 2072
    .line 2073
    :cond_24
    move-object/from16 v26, v4

    .line 2074
    .line 2075
    check-cast v26, Lf9/o;

    .line 2076
    .line 2077
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 2078
    .line 2079
    .line 2080
    const/16 v28, 0x6c06

    .line 2081
    .line 2082
    sget-object v22, Lk7/j;->a:Lk7/j;

    .line 2083
    .line 2084
    const/16 v25, 0x0

    .line 2085
    .line 2086
    move-object/from16 v27, v1

    .line 2087
    .line 2088
    move-object/from16 v24, v5

    .line 2089
    .line 2090
    invoke-virtual/range {v22 .. v28}, Lk7/j;->a(Ljava/util/List;Lr8/j;ZLf9/o;Lf1/s;I)V

    .line 2091
    .line 2092
    .line 2093
    const-string v4, "\u5bfc\u822a\u97f3\u9891\u901a\u9053"

    .line 2094
    .line 2095
    const-string v5, "\u5bfc\u822a\u97f3\u9891\u901a\u9053\u8bbe\u7f6e"

    .line 2096
    .line 2097
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v4

    .line 2101
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v23

    .line 2105
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v4

    .line 2109
    check-cast v4, Lk7/k;

    .line 2110
    .line 2111
    iget v4, v4, Lk7/k;->j:I

    .line 2112
    .line 2113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v4

    .line 2117
    new-instance v5, Lr8/j;

    .line 2118
    .line 2119
    const-string v6, "AUDIO_TTS"

    .line 2120
    .line 2121
    invoke-direct {v5, v6, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2122
    .line 2123
    .line 2124
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 2125
    .line 2126
    .line 2127
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v4

    .line 2131
    if-ne v4, v8, :cond_25

    .line 2132
    .line 2133
    new-instance v4, Lk7/h;

    .line 2134
    .line 2135
    invoke-direct {v4, v3}, Lk7/h;-><init>(I)V

    .line 2136
    .line 2137
    .line 2138
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2139
    .line 2140
    .line 2141
    :cond_25
    move-object/from16 v26, v4

    .line 2142
    .line 2143
    check-cast v26, Lf9/o;

    .line 2144
    .line 2145
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 2146
    .line 2147
    .line 2148
    const/16 v28, 0x6c06

    .line 2149
    .line 2150
    const/16 v25, 0x0

    .line 2151
    .line 2152
    move-object/from16 v27, v1

    .line 2153
    .line 2154
    move-object/from16 v24, v5

    .line 2155
    .line 2156
    invoke-virtual/range {v22 .. v28}, Lk7/j;->a(Ljava/util/List;Lr8/j;ZLf9/o;Lf1/s;I)V

    .line 2157
    .line 2158
    .line 2159
    const-string v3, "\u8bed\u97f3\u52a9\u624b\u97f3\u9891\u901a\u9053"

    .line 2160
    .line 2161
    const-string v4, "\u8bed\u97f3\u52a9\u624b\u97f3\u9891\u901a\u9053\u8bbe\u7f6e"

    .line 2162
    .line 2163
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v3

    .line 2167
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v9

    .line 2171
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v2

    .line 2175
    check-cast v2, Lk7/k;

    .line 2176
    .line 2177
    iget v2, v2, Lk7/k;->k:I

    .line 2178
    .line 2179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v2

    .line 2183
    new-instance v3, Lr8/j;

    .line 2184
    .line 2185
    const-string v4, "AUDIO_VR"

    .line 2186
    .line 2187
    invoke-direct {v3, v4, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 2191
    .line 2192
    .line 2193
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v2

    .line 2197
    if-ne v2, v8, :cond_26

    .line 2198
    .line 2199
    new-instance v2, Lk7/h;

    .line 2200
    .line 2201
    invoke-direct {v2, v10}, Lk7/h;-><init>(I)V

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2205
    .line 2206
    .line 2207
    :cond_26
    move-object v12, v2

    .line 2208
    check-cast v12, Lf9/o;

    .line 2209
    .line 2210
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 2211
    .line 2212
    .line 2213
    const/16 v14, 0x6c06

    .line 2214
    .line 2215
    const/4 v11, 0x0

    .line 2216
    move-object v13, v1

    .line 2217
    move-object v10, v3

    .line 2218
    move-object/from16 v8, v22

    .line 2219
    .line 2220
    invoke-virtual/range {v8 .. v14}, Lk7/j;->a(Ljava/util/List;Lr8/j;ZLf9/o;Lf1/s;I)V

    .line 2221
    .line 2222
    .line 2223
    invoke-static {v7}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v2

    .line 2227
    const/4 v3, 0x6

    .line 2228
    invoke-static {v2, v1, v3}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 2229
    .line 2230
    .line 2231
    :goto_13
    return-object v18

    .line 2232
    :pswitch_b
    move-object/from16 v1, p1

    .line 2233
    .line 2234
    check-cast v1, Lf1/s;

    .line 2235
    .line 2236
    move-object/from16 v6, p2

    .line 2237
    .line 2238
    check-cast v6, Ljava/lang/Number;

    .line 2239
    .line 2240
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 2241
    .line 2242
    .line 2243
    move-result v6

    .line 2244
    and-int/2addr v4, v6

    .line 2245
    if-ne v4, v10, :cond_28

    .line 2246
    .line 2247
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 2248
    .line 2249
    .line 2250
    move-result v4

    .line 2251
    if-nez v4, :cond_27

    .line 2252
    .line 2253
    goto :goto_14

    .line 2254
    :cond_27
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 2255
    .line 2256
    .line 2257
    goto :goto_15

    .line 2258
    :cond_28
    :goto_14
    new-instance v4, Le8/h;

    .line 2259
    .line 2260
    invoke-direct {v4, v2, v15}, Le8/h;-><init>(Lf1/v2;I)V

    .line 2261
    .line 2262
    .line 2263
    const v6, 0x63894a59

    .line 2264
    .line 2265
    .line 2266
    invoke-static {v6, v4, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v4

    .line 2270
    invoke-static {v14, v4, v1, v11, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 2271
    .line 2272
    .line 2273
    new-instance v4, Le8/h;

    .line 2274
    .line 2275
    invoke-direct {v4, v2, v3}, Le8/h;-><init>(Lf1/v2;I)V

    .line 2276
    .line 2277
    .line 2278
    const v2, -0x8de7ebe

    .line 2279
    .line 2280
    .line 2281
    invoke-static {v2, v4, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v2

    .line 2285
    const-string v3, "\u663e\u793a\u8bbe\u7f6e"

    .line 2286
    .line 2287
    invoke-static {v3, v2, v1, v5, v15}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 2288
    .line 2289
    .line 2290
    :goto_15
    return-object v18

    .line 2291
    :pswitch_c
    move-object/from16 v12, p1

    .line 2292
    .line 2293
    check-cast v12, Lf1/s;

    .line 2294
    .line 2295
    move-object/from16 v1, p2

    .line 2296
    .line 2297
    check-cast v1, Ljava/lang/Number;

    .line 2298
    .line 2299
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2300
    .line 2301
    .line 2302
    move-result v1

    .line 2303
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v3

    .line 2307
    and-int/2addr v1, v4

    .line 2308
    if-ne v1, v10, :cond_2a

    .line 2309
    .line 2310
    invoke-virtual {v12}, Lf1/s;->z()Z

    .line 2311
    .line 2312
    .line 2313
    move-result v1

    .line 2314
    if-nez v1, :cond_29

    .line 2315
    .line 2316
    goto :goto_16

    .line 2317
    :cond_29
    invoke-virtual {v12}, Lf1/s;->Q()V

    .line 2318
    .line 2319
    .line 2320
    goto/16 :goto_18

    .line 2321
    .line 2322
    :cond_2a
    :goto_16
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v1

    .line 2326
    iget-object v5, v1, Lr8/j;->a:Ljava/lang/Object;

    .line 2327
    .line 2328
    check-cast v5, Ljava/lang/Number;

    .line 2329
    .line 2330
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 2331
    .line 2332
    .line 2333
    move-result v5

    .line 2334
    iget-object v1, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 2335
    .line 2336
    check-cast v1, Ljava/lang/Number;

    .line 2337
    .line 2338
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2339
    .line 2340
    .line 2341
    move-result v1

    .line 2342
    const-string v6, "\u663e\u793a\u5bbd\u5ea6"

    .line 2343
    .line 2344
    filled-new-array {v6, v9}, [Ljava/lang/String;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v6

    .line 2348
    invoke-static {v6}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v19

    .line 2352
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2353
    .line 2354
    .line 2355
    move-result-object v6

    .line 2356
    check-cast v6, Le8/i;

    .line 2357
    .line 2358
    iget v6, v6, Le8/i;->a:I

    .line 2359
    .line 2360
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v6

    .line 2364
    new-instance v7, Lr8/j;

    .line 2365
    .line 2366
    const-string v10, "VIDEO_WIDTH"

    .line 2367
    .line 2368
    invoke-direct {v7, v10, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2369
    .line 2370
    .line 2371
    int-to-float v5, v5

    .line 2372
    const/16 v6, 0xa

    .line 2373
    .line 2374
    int-to-float v10, v6

    .line 2375
    div-float v11, v5, v10

    .line 2376
    .line 2377
    new-instance v14, Ll9/a;

    .line 2378
    .line 2379
    invoke-direct {v14, v11, v5}, Ll9/a;-><init>(FF)V

    .line 2380
    .line 2381
    .line 2382
    new-instance v5, Lr8/j;

    .line 2383
    .line 2384
    invoke-direct {v5, v14, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2385
    .line 2386
    .line 2387
    invoke-virtual {v12, v13}, Lf1/s;->W(I)V

    .line 2388
    .line 2389
    .line 2390
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 2391
    .line 2392
    .line 2393
    move-result-object v11

    .line 2394
    if-ne v11, v8, :cond_2b

    .line 2395
    .line 2396
    new-instance v11, Lc8/y0;

    .line 2397
    .line 2398
    invoke-direct {v11, v4}, Lc8/y0;-><init>(I)V

    .line 2399
    .line 2400
    .line 2401
    invoke-virtual {v12, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2402
    .line 2403
    .line 2404
    :cond_2b
    move-object/from16 v23, v11

    .line 2405
    .line 2406
    check-cast v23, Lf9/k;

    .line 2407
    .line 2408
    invoke-virtual {v12, v15}, Lf1/s;->p(Z)V

    .line 2409
    .line 2410
    .line 2411
    const/16 v25, 0x6006

    .line 2412
    .line 2413
    const/16 v26, 0x8

    .line 2414
    .line 2415
    const/16 v22, 0x0

    .line 2416
    .line 2417
    move-object/from16 v21, v5

    .line 2418
    .line 2419
    move-object/from16 v20, v7

    .line 2420
    .line 2421
    move-object/from16 v24, v12

    .line 2422
    .line 2423
    invoke-static/range {v19 .. v26}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 2424
    .line 2425
    .line 2426
    const-string v4, "\u663e\u793a\u9ad8\u5ea6"

    .line 2427
    .line 2428
    filled-new-array {v4, v9}, [Ljava/lang/String;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v4

    .line 2432
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v19

    .line 2436
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v4

    .line 2440
    check-cast v4, Le8/i;

    .line 2441
    .line 2442
    iget v4, v4, Le8/i;->b:I

    .line 2443
    .line 2444
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v4

    .line 2448
    new-instance v5, Lr8/j;

    .line 2449
    .line 2450
    const-string v7, "VIDEO_HEIGHT"

    .line 2451
    .line 2452
    invoke-direct {v5, v7, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2453
    .line 2454
    .line 2455
    int-to-float v1, v1

    .line 2456
    div-float v4, v1, v10

    .line 2457
    .line 2458
    new-instance v7, Ll9/a;

    .line 2459
    .line 2460
    invoke-direct {v7, v4, v1}, Ll9/a;-><init>(FF)V

    .line 2461
    .line 2462
    .line 2463
    invoke-static {v7, v3, v12, v13}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v21

    .line 2467
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v1

    .line 2471
    if-ne v1, v8, :cond_2c

    .line 2472
    .line 2473
    new-instance v1, Lc8/y0;

    .line 2474
    .line 2475
    const/4 v3, 0x4

    .line 2476
    invoke-direct {v1, v3}, Lc8/y0;-><init>(I)V

    .line 2477
    .line 2478
    .line 2479
    invoke-virtual {v12, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2480
    .line 2481
    .line 2482
    :cond_2c
    move-object/from16 v23, v1

    .line 2483
    .line 2484
    check-cast v23, Lf9/k;

    .line 2485
    .line 2486
    invoke-virtual {v12, v15}, Lf1/s;->p(Z)V

    .line 2487
    .line 2488
    .line 2489
    const/16 v25, 0x6006

    .line 2490
    .line 2491
    const/16 v26, 0x8

    .line 2492
    .line 2493
    const/16 v22, 0x0

    .line 2494
    .line 2495
    move-object/from16 v20, v5

    .line 2496
    .line 2497
    move-object/from16 v24, v12

    .line 2498
    .line 2499
    invoke-static/range {v19 .. v26}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 2500
    .line 2501
    .line 2502
    const-string v1, "\u663e\u793a\u4f4d\u7f6e"

    .line 2503
    .line 2504
    const-string v3, "\u9009\u62e9\u5bf9\u9f50\u4f4d\u7f6e"

    .line 2505
    .line 2506
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v1

    .line 2510
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2511
    .line 2512
    .line 2513
    move-result-object v1

    .line 2514
    sget-object v3, Le8/c;->f:Lz8/b;

    .line 2515
    .line 2516
    new-instance v7, Ljava/util/ArrayList;

    .line 2517
    .line 2518
    invoke-static {v3, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 2519
    .line 2520
    .line 2521
    move-result v4

    .line 2522
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2523
    .line 2524
    .line 2525
    invoke-virtual {v3}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v3

    .line 2529
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2530
    .line 2531
    .line 2532
    move-result v4

    .line 2533
    if-eqz v4, :cond_2d

    .line 2534
    .line 2535
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v4

    .line 2539
    check-cast v4, Le8/c;

    .line 2540
    .line 2541
    new-instance v19, Lj8/k0;

    .line 2542
    .line 2543
    iget-object v5, v4, Le8/c;->a:Ljava/lang/String;

    .line 2544
    .line 2545
    new-instance v6, Lj8/m0;

    .line 2546
    .line 2547
    iget v4, v4, Le8/c;->b:I

    .line 2548
    .line 2549
    invoke-direct {v6, v4}, Lj8/m0;-><init>(I)V

    .line 2550
    .line 2551
    .line 2552
    const/16 v24, 0x0

    .line 2553
    .line 2554
    const/16 v25, 0x1c

    .line 2555
    .line 2556
    const/16 v22, 0x0

    .line 2557
    .line 2558
    const/16 v23, 0x0

    .line 2559
    .line 2560
    move-object/from16 v20, v5

    .line 2561
    .line 2562
    move-object/from16 v21, v6

    .line 2563
    .line 2564
    invoke-direct/range {v19 .. v25}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2565
    .line 2566
    .line 2567
    move-object/from16 v4, v19

    .line 2568
    .line 2569
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    .line 2571
    .line 2572
    goto :goto_17

    .line 2573
    :cond_2d
    new-instance v3, Lj8/m0;

    .line 2574
    .line 2575
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2576
    .line 2577
    .line 2578
    move-result-object v2

    .line 2579
    check-cast v2, Le8/i;

    .line 2580
    .line 2581
    iget v2, v2, Le8/i;->c:I

    .line 2582
    .line 2583
    invoke-direct {v3, v2}, Lj8/m0;-><init>(I)V

    .line 2584
    .line 2585
    .line 2586
    new-instance v2, Lr8/j;

    .line 2587
    .line 2588
    const-string v4, "VIDEO_ALIGNMENT"

    .line 2589
    .line 2590
    invoke-direct {v2, v4, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2591
    .line 2592
    .line 2593
    invoke-virtual {v12, v13}, Lf1/s;->W(I)V

    .line 2594
    .line 2595
    .line 2596
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 2597
    .line 2598
    .line 2599
    move-result-object v3

    .line 2600
    if-ne v3, v8, :cond_2e

    .line 2601
    .line 2602
    new-instance v3, Lc8/y0;

    .line 2603
    .line 2604
    const/4 v4, 0x5

    .line 2605
    invoke-direct {v3, v4}, Lc8/y0;-><init>(I)V

    .line 2606
    .line 2607
    .line 2608
    invoke-virtual {v12, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2609
    .line 2610
    .line 2611
    :cond_2e
    move-object v11, v3

    .line 2612
    check-cast v11, Lf9/k;

    .line 2613
    .line 2614
    invoke-virtual {v12, v15}, Lf1/s;->p(Z)V

    .line 2615
    .line 2616
    .line 2617
    const v13, 0x36006

    .line 2618
    .line 2619
    .line 2620
    const/16 v14, 0x8

    .line 2621
    .line 2622
    const/4 v9, 0x0

    .line 2623
    const/4 v10, 0x0

    .line 2624
    move-object v6, v1

    .line 2625
    move-object v8, v2

    .line 2626
    invoke-static/range {v6 .. v14}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

    .line 2627
    .line 2628
    .line 2629
    :goto_18
    return-object v18

    .line 2630
    :pswitch_d
    move-object/from16 v1, p1

    .line 2631
    .line 2632
    check-cast v1, Lf1/s;

    .line 2633
    .line 2634
    move-object/from16 v5, p2

    .line 2635
    .line 2636
    check-cast v5, Ljava/lang/Number;

    .line 2637
    .line 2638
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 2639
    .line 2640
    .line 2641
    move-result v5

    .line 2642
    and-int/2addr v5, v4

    .line 2643
    if-ne v5, v10, :cond_30

    .line 2644
    .line 2645
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 2646
    .line 2647
    .line 2648
    move-result v5

    .line 2649
    if-nez v5, :cond_2f

    .line 2650
    .line 2651
    goto :goto_19

    .line 2652
    :cond_2f
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 2653
    .line 2654
    .line 2655
    goto/16 :goto_1b

    .line 2656
    .line 2657
    :cond_30
    :goto_19
    const-string v5, "\u6e32\u67d3\u65b9\u5f0f"

    .line 2658
    .line 2659
    const-string v6, "\u9009\u62e9CarLife\u753b\u9762\u6e32\u67d3\u65b9\u5f0f"

    .line 2660
    .line 2661
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 2662
    .line 2663
    .line 2664
    move-result-object v5

    .line 2665
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v22

    .line 2669
    new-instance v5, Ljava/util/ArrayList;

    .line 2670
    .line 2671
    const/16 v6, 0xa

    .line 2672
    .line 2673
    sget-object v9, Le8/g;->d:Lz8/b;

    .line 2674
    .line 2675
    invoke-static {v9, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 2676
    .line 2677
    .line 2678
    move-result v6

    .line 2679
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2680
    .line 2681
    .line 2682
    invoke-virtual {v9}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 2683
    .line 2684
    .line 2685
    move-result-object v6

    .line 2686
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2687
    .line 2688
    .line 2689
    move-result v9

    .line 2690
    if-eqz v9, :cond_31

    .line 2691
    .line 2692
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2693
    .line 2694
    .line 2695
    move-result-object v9

    .line 2696
    check-cast v9, Le8/g;

    .line 2697
    .line 2698
    new-instance v23, Lj8/k0;

    .line 2699
    .line 2700
    iget-object v11, v9, Le8/g;->a:Ljava/lang/String;

    .line 2701
    .line 2702
    new-instance v12, Lj8/m0;

    .line 2703
    .line 2704
    iget v9, v9, Le8/g;->b:I

    .line 2705
    .line 2706
    invoke-direct {v12, v9}, Lj8/m0;-><init>(I)V

    .line 2707
    .line 2708
    .line 2709
    const/16 v28, 0x0

    .line 2710
    .line 2711
    const/16 v29, 0x1c

    .line 2712
    .line 2713
    const/16 v26, 0x0

    .line 2714
    .line 2715
    const/16 v27, 0x0

    .line 2716
    .line 2717
    move-object/from16 v24, v11

    .line 2718
    .line 2719
    move-object/from16 v25, v12

    .line 2720
    .line 2721
    invoke-direct/range {v23 .. v29}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2722
    .line 2723
    .line 2724
    move-object/from16 v9, v23

    .line 2725
    .line 2726
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    .line 2728
    .line 2729
    goto :goto_1a

    .line 2730
    :cond_31
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 2731
    .line 2732
    .line 2733
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v6

    .line 2737
    if-ne v6, v8, :cond_32

    .line 2738
    .line 2739
    new-instance v6, Lc8/y0;

    .line 2740
    .line 2741
    invoke-direct {v6, v10}, Lc8/y0;-><init>(I)V

    .line 2742
    .line 2743
    .line 2744
    invoke-virtual {v1, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2745
    .line 2746
    .line 2747
    :cond_32
    move-object/from16 v27, v6

    .line 2748
    .line 2749
    check-cast v27, Lf9/k;

    .line 2750
    .line 2751
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 2752
    .line 2753
    .line 2754
    const v29, 0x30186

    .line 2755
    .line 2756
    .line 2757
    const/16 v30, 0x18

    .line 2758
    .line 2759
    const-string v24, "VIDEO_RENDER_TYPE"

    .line 2760
    .line 2761
    const/16 v25, 0x0

    .line 2762
    .line 2763
    const/16 v26, 0x0

    .line 2764
    .line 2765
    move-object/from16 v28, v1

    .line 2766
    .line 2767
    move-object/from16 v23, v5

    .line 2768
    .line 2769
    invoke-static/range {v22 .. v30}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 2770
    .line 2771
    .line 2772
    const-string v1, "\u5e27\u7387"

    .line 2773
    .line 2774
    const-string v5, "\u6bcf\u79d2\u663e\u793a\u7684\u753b\u9762\u6570\u91cf"

    .line 2775
    .line 2776
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 2777
    .line 2778
    .line 2779
    move-result-object v1

    .line 2780
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2781
    .line 2782
    .line 2783
    move-result-object v22

    .line 2784
    new-instance v29, Lj8/k0;

    .line 2785
    .line 2786
    new-instance v1, Lj8/m0;

    .line 2787
    .line 2788
    const/16 v5, 0xf

    .line 2789
    .line 2790
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 2791
    .line 2792
    .line 2793
    const/16 v34, 0x0

    .line 2794
    .line 2795
    const/16 v35, 0x1c

    .line 2796
    .line 2797
    const-string v30, "15FPS"

    .line 2798
    .line 2799
    const/16 v32, 0x0

    .line 2800
    .line 2801
    const/16 v33, 0x0

    .line 2802
    .line 2803
    move-object/from16 v31, v1

    .line 2804
    .line 2805
    invoke-direct/range {v29 .. v35}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2806
    .line 2807
    .line 2808
    new-instance v30, Lj8/k0;

    .line 2809
    .line 2810
    new-instance v1, Lj8/m0;

    .line 2811
    .line 2812
    const/16 v5, 0x14

    .line 2813
    .line 2814
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 2815
    .line 2816
    .line 2817
    const/16 v35, 0x0

    .line 2818
    .line 2819
    const/16 v36, 0x1c

    .line 2820
    .line 2821
    const-string v31, "20FPS"

    .line 2822
    .line 2823
    move-object/from16 v32, v1

    .line 2824
    .line 2825
    invoke-direct/range {v30 .. v36}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2826
    .line 2827
    .line 2828
    new-instance v31, Lj8/k0;

    .line 2829
    .line 2830
    new-instance v1, Lj8/m0;

    .line 2831
    .line 2832
    const/16 v5, 0x1e

    .line 2833
    .line 2834
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 2835
    .line 2836
    .line 2837
    const/16 v36, 0x0

    .line 2838
    .line 2839
    const/16 v37, 0x1c

    .line 2840
    .line 2841
    const-string v32, "30FPS"

    .line 2842
    .line 2843
    move-object/from16 v33, v1

    .line 2844
    .line 2845
    invoke-direct/range {v31 .. v37}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2846
    .line 2847
    .line 2848
    new-instance v32, Lj8/k0;

    .line 2849
    .line 2850
    new-instance v1, Lj8/m0;

    .line 2851
    .line 2852
    const/16 v6, 0x3c

    .line 2853
    .line 2854
    invoke-direct {v1, v6}, Lj8/m0;-><init>(I)V

    .line 2855
    .line 2856
    .line 2857
    const/16 v37, 0x0

    .line 2858
    .line 2859
    const/16 v38, 0x1c

    .line 2860
    .line 2861
    const-string v33, "60FPS"

    .line 2862
    .line 2863
    move-object/from16 v34, v1

    .line 2864
    .line 2865
    invoke-direct/range {v32 .. v38}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2866
    .line 2867
    .line 2868
    const/4 v1, 0x4

    .line 2869
    new-array v8, v1, [Lj8/k0;

    .line 2870
    .line 2871
    aput-object v29, v8, v15

    .line 2872
    .line 2873
    aput-object v30, v8, v3

    .line 2874
    .line 2875
    aput-object v31, v8, v10

    .line 2876
    .line 2877
    aput-object v32, v8, v4

    .line 2878
    .line 2879
    invoke-static {v8}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2880
    .line 2881
    .line 2882
    move-result-object v23

    .line 2883
    new-instance v1, Lj8/m0;

    .line 2884
    .line 2885
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2886
    .line 2887
    .line 2888
    move-result-object v2

    .line 2889
    check-cast v2, Le8/i;

    .line 2890
    .line 2891
    iget v2, v2, Le8/i;->d:I

    .line 2892
    .line 2893
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 2894
    .line 2895
    .line 2896
    new-instance v2, Lr8/j;

    .line 2897
    .line 2898
    const-string v8, "VIDEO_FRAME_RATE"

    .line 2899
    .line 2900
    invoke-direct {v2, v8, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2901
    .line 2902
    .line 2903
    const/16 v30, 0x38

    .line 2904
    .line 2905
    const/16 v27, 0x0

    .line 2906
    .line 2907
    const/16 v29, 0x46

    .line 2908
    .line 2909
    move-object/from16 v24, v2

    .line 2910
    .line 2911
    invoke-static/range {v22 .. v30}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

    .line 2912
    .line 2913
    .line 2914
    const-string v1, "I\u5e27\u95f4\u9694"

    .line 2915
    .line 2916
    const-string v2, "\u9009\u62e9\u7f16\u7801\u65f6\u7684\u5173\u952e\u5e27\u63d2\u5165\u95f4\u9694"

    .line 2917
    .line 2918
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 2919
    .line 2920
    .line 2921
    move-result-object v1

    .line 2922
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2923
    .line 2924
    .line 2925
    move-result-object v22

    .line 2926
    new-instance v30, Lj8/k0;

    .line 2927
    .line 2928
    new-instance v1, Lj8/m0;

    .line 2929
    .line 2930
    invoke-direct {v1, v3}, Lj8/m0;-><init>(I)V

    .line 2931
    .line 2932
    .line 2933
    const/16 v36, 0x1c

    .line 2934
    .line 2935
    const-string v31, "\u5b9e\u65f6\u6a21\u5f0f-1"

    .line 2936
    .line 2937
    const/16 v33, 0x0

    .line 2938
    .line 2939
    const/16 v34, 0x0

    .line 2940
    .line 2941
    move-object/from16 v32, v1

    .line 2942
    .line 2943
    invoke-direct/range {v30 .. v36}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2944
    .line 2945
    .line 2946
    new-instance v31, Lj8/k0;

    .line 2947
    .line 2948
    new-instance v1, Lj8/m0;

    .line 2949
    .line 2950
    invoke-direct {v1, v5}, Lj8/m0;-><init>(I)V

    .line 2951
    .line 2952
    .line 2953
    const/16 v36, 0x0

    .line 2954
    .line 2955
    const/16 v37, 0x1c

    .line 2956
    .line 2957
    const-string v32, "\u6807\u51c6\u6a21\u5f0f-30"

    .line 2958
    .line 2959
    move-object/from16 v33, v1

    .line 2960
    .line 2961
    invoke-direct/range {v31 .. v37}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2962
    .line 2963
    .line 2964
    new-instance v32, Lj8/k0;

    .line 2965
    .line 2966
    new-instance v1, Lj8/m0;

    .line 2967
    .line 2968
    invoke-direct {v1, v6}, Lj8/m0;-><init>(I)V

    .line 2969
    .line 2970
    .line 2971
    const/16 v37, 0x0

    .line 2972
    .line 2973
    const-string v33, "\u5747\u8861\u6a21\u5f0f-60"

    .line 2974
    .line 2975
    move-object/from16 v34, v1

    .line 2976
    .line 2977
    invoke-direct/range {v32 .. v38}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2978
    .line 2979
    .line 2980
    new-instance v33, Lj8/k0;

    .line 2981
    .line 2982
    new-instance v1, Lj8/m0;

    .line 2983
    .line 2984
    const/16 v2, 0x78

    .line 2985
    .line 2986
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 2987
    .line 2988
    .line 2989
    const/16 v38, 0x0

    .line 2990
    .line 2991
    const/16 v39, 0x1c

    .line 2992
    .line 2993
    const-string v34, "\u4f4e\u7801\u7387\u6a21\u5f0f-120"

    .line 2994
    .line 2995
    move-object/from16 v35, v1

    .line 2996
    .line 2997
    invoke-direct/range {v33 .. v39}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2998
    .line 2999
    .line 3000
    new-instance v34, Lj8/k0;

    .line 3001
    .line 3002
    new-instance v1, Lj8/m0;

    .line 3003
    .line 3004
    const/16 v2, 0xf0

    .line 3005
    .line 3006
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 3007
    .line 3008
    .line 3009
    const/16 v39, 0x0

    .line 3010
    .line 3011
    const/16 v40, 0x1c

    .line 3012
    .line 3013
    const-string v35, "\u9759\u6001\u753b\u9762\u63a8\u8350-240"

    .line 3014
    .line 3015
    move-object/from16 v36, v1

    .line 3016
    .line 3017
    invoke-direct/range {v34 .. v40}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 3018
    .line 3019
    .line 3020
    new-instance v35, Lj8/k0;

    .line 3021
    .line 3022
    new-instance v1, Lj8/m0;

    .line 3023
    .line 3024
    const/16 v2, 0x12c

    .line 3025
    .line 3026
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 3027
    .line 3028
    .line 3029
    const/16 v40, 0x0

    .line 3030
    .line 3031
    const/16 v41, 0x1c

    .line 3032
    .line 3033
    const-string v36, "\u957f\u95f4\u9694\u6a21\u5f0f-300"

    .line 3034
    .line 3035
    move-object/from16 v37, v1

    .line 3036
    .line 3037
    invoke-direct/range {v35 .. v41}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 3038
    .line 3039
    .line 3040
    const/4 v1, 0x6

    .line 3041
    new-array v5, v1, [Lj8/k0;

    .line 3042
    .line 3043
    aput-object v30, v5, v15

    .line 3044
    .line 3045
    aput-object v31, v5, v3

    .line 3046
    .line 3047
    aput-object v32, v5, v10

    .line 3048
    .line 3049
    aput-object v33, v5, v4

    .line 3050
    .line 3051
    const/16 v17, 0x4

    .line 3052
    .line 3053
    aput-object v34, v5, v17

    .line 3054
    .line 3055
    const/16 v16, 0x5

    .line 3056
    .line 3057
    aput-object v35, v5, v16

    .line 3058
    .line 3059
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 3060
    .line 3061
    .line 3062
    move-result-object v23

    .line 3063
    new-instance v1, Lj8/m0;

    .line 3064
    .line 3065
    invoke-direct {v1, v2}, Lj8/m0;-><init>(I)V

    .line 3066
    .line 3067
    .line 3068
    new-instance v2, Lr8/j;

    .line 3069
    .line 3070
    const-string v3, "I_FRAME_INTERVAL"

    .line 3071
    .line 3072
    invoke-direct {v2, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3073
    .line 3074
    .line 3075
    const/16 v30, 0x38

    .line 3076
    .line 3077
    move-object/from16 v24, v2

    .line 3078
    .line 3079
    invoke-static/range {v22 .. v30}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

    .line 3080
    .line 3081
    .line 3082
    move-object/from16 v1, v28

    .line 3083
    .line 3084
    invoke-static {v7}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 3085
    .line 3086
    .line 3087
    move-result-object v2

    .line 3088
    const/4 v3, 0x6

    .line 3089
    invoke-static {v2, v1, v3}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 3090
    .line 3091
    .line 3092
    :goto_1b
    return-object v18

    .line 3093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
