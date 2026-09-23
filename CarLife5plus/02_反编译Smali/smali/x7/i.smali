.class public final Lx7/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILf1/v2;I)V
    .locals 0

    .line 1
    iput p4, p0, Lx7/i;->a:I

    iput p1, p0, Lx7/i;->b:I

    iput p2, p0, Lx7/i;->c:I

    iput-object p3, p0, Lx7/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 2
    iput p4, p0, Lx7/i;->a:I

    iput-object p1, p0, Lx7/i;->d:Ljava/lang/Object;

    iput p2, p0, Lx7/i;->b:I

    iput p3, p0, Lx7/i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lx7/i;->a:I

    .line 4
    .line 5
    const-string v2, "#00000000"

    .line 6
    .line 7
    const-string v4, "px"

    .line 8
    .line 9
    const-string v5, "px)"

    .line 10
    .line 11
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 12
    .line 13
    const v7, 0x6e3c21fe

    .line 14
    .line 15
    .line 16
    sget-object v8, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    iget v9, v0, Lx7/i;->c:I

    .line 19
    .line 20
    iget v10, v0, Lx7/i;->b:I

    .line 21
    .line 22
    iget-object v11, v0, Lx7/i;->d:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v12, 0x3

    .line 25
    const/4 v13, 0x1

    .line 26
    const/4 v14, 0x2

    .line 27
    const/4 v15, 0x0

    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    move-object/from16 v1, p1

    .line 32
    .line 33
    check-cast v1, Lf1/s;

    .line 34
    .line 35
    move-object/from16 v2, p2

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    and-int/2addr v2, v12

    .line 44
    if-ne v2, v14, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    check-cast v11, Lq7/d;

    .line 58
    .line 59
    invoke-virtual {v11, v10, v9, v1, v15}, Lq7/d;->f(IILf1/s;I)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-object v8

    .line 63
    :pswitch_0
    move-object/from16 v1, p1

    .line 64
    .line 65
    check-cast v1, Lf1/s;

    .line 66
    .line 67
    move-object/from16 v2, p2

    .line 68
    .line 69
    check-cast v2, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    check-cast v11, Lf1/v2;

    .line 76
    .line 77
    and-int/2addr v2, v12

    .line 78
    if-ne v2, v14, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    :goto_2
    new-instance v2, Le8/h;

    .line 92
    .line 93
    const/16 v3, 0xe

    .line 94
    .line 95
    invoke-direct {v2, v11, v3}, Le8/h;-><init>(Lf1/v2;I)V

    .line 96
    .line 97
    .line 98
    const v3, 0x2aeeaf74

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/16 v3, 0x30

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-static {v4, v2, v1, v3, v13}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lx7/i;

    .line 112
    .line 113
    invoke-direct {v2, v10, v9, v11, v15}, Lx7/i;-><init>(IILf1/v2;I)V

    .line 114
    .line 115
    .line 116
    const v3, 0x710891d

    .line 117
    .line 118
    .line 119
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v3, "\u72b6\u6001\u680f\u8bbe\u7f6e"

    .line 124
    .line 125
    const/16 v4, 0x36

    .line 126
    .line 127
    invoke-static {v3, v2, v1, v4, v15}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Lx7/i;

    .line 131
    .line 132
    invoke-direct {v2, v10, v9, v11, v13}, Lx7/i;-><init>(IILf1/v2;I)V

    .line 133
    .line 134
    .line 135
    const v3, 0x180f5d3c

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v3, "\u5bfc\u822a\u680f\u8bbe\u7f6e"

    .line 143
    .line 144
    invoke-static {v3, v2, v1, v4, v15}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 145
    .line 146
    .line 147
    const-string v2, "\u5168\u5c4f\u8bbe\u7f6e"

    .line 148
    .line 149
    sget-object v3, Lx7/b;->b:Ln1/c;

    .line 150
    .line 151
    invoke-static {v2, v3, v1, v4, v15}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 152
    .line 153
    .line 154
    :goto_3
    return-object v8

    .line 155
    :pswitch_1
    move-object/from16 v1, p1

    .line 156
    .line 157
    check-cast v1, Lf1/s;

    .line 158
    .line 159
    move-object/from16 v16, p2

    .line 160
    .line 161
    check-cast v16, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v16

    .line 167
    and-int/lit8 v3, v16, 0x3

    .line 168
    .line 169
    if-ne v3, v14, :cond_5

    .line 170
    .line 171
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_4

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_4
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_5

    .line 182
    .line 183
    :cond_5
    :goto_4
    const-string v3, "\u5bfc\u822a\u680f"

    .line 184
    .line 185
    const-string v12, "\u662f\u5426\u663e\u793a\u5bfc\u822a\u680f"

    .line 186
    .line 187
    filled-new-array {v3, v12}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v16

    .line 195
    new-instance v17, Lj8/k0;

    .line 196
    .line 197
    new-instance v3, Lj8/l0;

    .line 198
    .line 199
    invoke-direct {v3, v15}, Lj8/l0;-><init>(Z)V

    .line 200
    .line 201
    .line 202
    const/16 v22, 0x0

    .line 203
    .line 204
    const/16 v23, 0x1c

    .line 205
    .line 206
    const-string v18, "\u9690\u85cf"

    .line 207
    .line 208
    const/16 v20, 0x0

    .line 209
    .line 210
    const/16 v21, 0x0

    .line 211
    .line 212
    move-object/from16 v19, v3

    .line 213
    .line 214
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 215
    .line 216
    .line 217
    new-instance v18, Lj8/k0;

    .line 218
    .line 219
    new-instance v3, Lj8/l0;

    .line 220
    .line 221
    invoke-direct {v3, v13}, Lj8/l0;-><init>(Z)V

    .line 222
    .line 223
    .line 224
    const/16 v23, 0x0

    .line 225
    .line 226
    const/16 v24, 0x1c

    .line 227
    .line 228
    const-string v19, "\u663e\u793a"

    .line 229
    .line 230
    move-object/from16 v20, v3

    .line 231
    .line 232
    invoke-direct/range {v18 .. v24}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 233
    .line 234
    .line 235
    new-array v3, v14, [Lj8/k0;

    .line 236
    .line 237
    aput-object v17, v3, v15

    .line 238
    .line 239
    aput-object v18, v3, v13

    .line 240
    .line 241
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v17

    .line 245
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    if-ne v3, v6, :cond_6

    .line 253
    .line 254
    new-instance v3, Lx7/h;

    .line 255
    .line 256
    invoke-direct {v3, v14}, Lx7/h;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_6
    move-object/from16 v21, v3

    .line 263
    .line 264
    check-cast v21, Lf9/k;

    .line 265
    .line 266
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 267
    .line 268
    .line 269
    const/16 v24, 0x18

    .line 270
    .line 271
    const-string v18, "NAVIGATION_SHOW"

    .line 272
    .line 273
    const/16 v19, 0x0

    .line 274
    .line 275
    const/16 v20, 0x0

    .line 276
    .line 277
    const v23, 0x301c6

    .line 278
    .line 279
    .line 280
    move-object/from16 v22, v1

    .line 281
    .line 282
    invoke-static/range {v16 .. v24}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 283
    .line 284
    .line 285
    const-string v3, "\u5bfc\u822a\u680f\u4f4d\u7f6e"

    .line 286
    .line 287
    const-string v12, "\u5bfc\u822a\u680f\u5728\u4ec0\u4e48\u4f4d\u7f6e?"

    .line 288
    .line 289
    filled-new-array {v3, v12}, [Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v16

    .line 297
    new-instance v27, Lj8/k0;

    .line 298
    .line 299
    new-instance v3, Lj8/l0;

    .line 300
    .line 301
    invoke-direct {v3, v15}, Lj8/l0;-><init>(Z)V

    .line 302
    .line 303
    .line 304
    const/16 v32, 0x0

    .line 305
    .line 306
    const/16 v33, 0x1c

    .line 307
    .line 308
    const-string v28, "\u5de6\u4fa7"

    .line 309
    .line 310
    const/16 v30, 0x0

    .line 311
    .line 312
    const/16 v31, 0x0

    .line 313
    .line 314
    move-object/from16 v29, v3

    .line 315
    .line 316
    invoke-direct/range {v27 .. v33}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 317
    .line 318
    .line 319
    new-instance v28, Lj8/k0;

    .line 320
    .line 321
    new-instance v3, Lj8/l0;

    .line 322
    .line 323
    invoke-direct {v3, v13}, Lj8/l0;-><init>(Z)V

    .line 324
    .line 325
    .line 326
    const/16 v33, 0x0

    .line 327
    .line 328
    const/16 v34, 0x1c

    .line 329
    .line 330
    const-string v29, "\u5e95\u90e8"

    .line 331
    .line 332
    move-object/from16 v30, v3

    .line 333
    .line 334
    invoke-direct/range {v28 .. v34}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 335
    .line 336
    .line 337
    new-array v3, v14, [Lj8/k0;

    .line 338
    .line 339
    aput-object v27, v3, v15

    .line 340
    .line 341
    aput-object v28, v3, v13

    .line 342
    .line 343
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 344
    .line 345
    .line 346
    move-result-object v17

    .line 347
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    if-ne v3, v6, :cond_7

    .line 355
    .line 356
    new-instance v3, Lx7/h;

    .line 357
    .line 358
    const/4 v12, 0x3

    .line 359
    invoke-direct {v3, v12}, Lx7/h;-><init>(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    :cond_7
    move-object/from16 v21, v3

    .line 366
    .line 367
    check-cast v21, Lf9/k;

    .line 368
    .line 369
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 370
    .line 371
    .line 372
    const/16 v24, 0x18

    .line 373
    .line 374
    const-string v18, "NAVIGATION_POSITION"

    .line 375
    .line 376
    const/16 v19, 0x0

    .line 377
    .line 378
    const/16 v20, 0x0

    .line 379
    .line 380
    move-object/from16 v22, v1

    .line 381
    .line 382
    invoke-static/range {v16 .. v24}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 383
    .line 384
    .line 385
    sget-object v3, Ll8/g;->a:Lr8/o;

    .line 386
    .line 387
    invoke-static {}, Ll8/g;->d()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    const-string v12, "\u5bfc\u822a\u680f\u5927\u5c0f(\u9ed8\u8ba4"

    .line 392
    .line 393
    invoke-static {v12, v5, v3}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object v16

    .line 405
    check-cast v11, Lf1/v2;

    .line 406
    .line 407
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    check-cast v3, Lx7/j;

    .line 412
    .line 413
    iget v3, v3, Lx7/j;->f:I

    .line 414
    .line 415
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    new-instance v4, Lr8/j;

    .line 420
    .line 421
    const-string v5, "NAVIGATION_SIZE"

    .line 422
    .line 423
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    div-int/2addr v3, v14

    .line 431
    int-to-float v3, v3

    .line 432
    new-instance v5, Ll9/a;

    .line 433
    .line 434
    const/4 v9, 0x0

    .line 435
    invoke-direct {v5, v9, v3}, Ll9/a;-><init>(FF)V

    .line 436
    .line 437
    .line 438
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-static {v5, v3, v1, v7}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 443
    .line 444
    .line 445
    move-result-object v18

    .line 446
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    if-ne v3, v6, :cond_8

    .line 451
    .line 452
    new-instance v3, Lx7/h;

    .line 453
    .line 454
    const/4 v5, 0x4

    .line 455
    invoke-direct {v3, v5}, Lx7/h;-><init>(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :cond_8
    move-object/from16 v20, v3

    .line 462
    .line 463
    check-cast v20, Lf9/k;

    .line 464
    .line 465
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 466
    .line 467
    .line 468
    const/16 v22, 0x6000

    .line 469
    .line 470
    const/16 v23, 0x8

    .line 471
    .line 472
    const/16 v19, 0x0

    .line 473
    .line 474
    move-object/from16 v21, v1

    .line 475
    .line 476
    move-object/from16 v17, v4

    .line 477
    .line 478
    invoke-static/range {v16 .. v23}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 479
    .line 480
    .line 481
    const-string v3, "\u5bfc\u822a\u680f\u989c\u8272"

    .line 482
    .line 483
    const-string v4, "\u8bbe\u7f6e\u5bfc\u822a\u680f\u989c\u8272"

    .line 484
    .line 485
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 490
    .line 491
    .line 492
    move-result-object v16

    .line 493
    new-instance v3, Lr8/j;

    .line 494
    .line 495
    const-string v4, "NAVIGATION_COLOR"

    .line 496
    .line 497
    invoke-direct {v3, v4, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    if-ne v2, v6, :cond_9

    .line 508
    .line 509
    new-instance v2, Lx7/h;

    .line 510
    .line 511
    const/4 v4, 0x5

    .line 512
    invoke-direct {v2, v4}, Lx7/h;-><init>(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    :cond_9
    move-object/from16 v19, v2

    .line 519
    .line 520
    check-cast v19, Lf9/k;

    .line 521
    .line 522
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 523
    .line 524
    .line 525
    const/16 v21, 0xdb6

    .line 526
    .line 527
    const/16 v22, 0x0

    .line 528
    .line 529
    const/16 v18, 0x0

    .line 530
    .line 531
    move-object/from16 v20, v1

    .line 532
    .line 533
    move-object/from16 v17, v3

    .line 534
    .line 535
    invoke-static/range {v16 .. v22}, Li2/c;->d(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 536
    .line 537
    .line 538
    :goto_5
    return-object v8

    .line 539
    :pswitch_2
    move-object/from16 v1, p1

    .line 540
    .line 541
    check-cast v1, Lf1/s;

    .line 542
    .line 543
    move-object/from16 v3, p2

    .line 544
    .line 545
    check-cast v3, Ljava/lang/Number;

    .line 546
    .line 547
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    const/16 v26, 0x3

    .line 552
    .line 553
    and-int/lit8 v3, v3, 0x3

    .line 554
    .line 555
    if-ne v3, v14, :cond_b

    .line 556
    .line 557
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-nez v3, :cond_a

    .line 562
    .line 563
    goto :goto_6

    .line 564
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_7

    .line 568
    .line 569
    :cond_b
    :goto_6
    const-string v3, "\u72b6\u6001\u680f"

    .line 570
    .line 571
    const-string v12, "\u662f\u5426\u663e\u793a\u72b6\u6001\u680f"

    .line 572
    .line 573
    filled-new-array {v3, v12}, [Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 578
    .line 579
    .line 580
    move-result-object v26

    .line 581
    new-instance v16, Lj8/k0;

    .line 582
    .line 583
    new-instance v3, Lj8/l0;

    .line 584
    .line 585
    invoke-direct {v3, v15}, Lj8/l0;-><init>(Z)V

    .line 586
    .line 587
    .line 588
    const/16 v21, 0x0

    .line 589
    .line 590
    const/16 v22, 0x1c

    .line 591
    .line 592
    const-string v17, "\u9690\u85cf"

    .line 593
    .line 594
    const/16 v19, 0x0

    .line 595
    .line 596
    const/16 v20, 0x0

    .line 597
    .line 598
    move-object/from16 v18, v3

    .line 599
    .line 600
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 601
    .line 602
    .line 603
    new-instance v17, Lj8/k0;

    .line 604
    .line 605
    new-instance v3, Lj8/l0;

    .line 606
    .line 607
    invoke-direct {v3, v13}, Lj8/l0;-><init>(Z)V

    .line 608
    .line 609
    .line 610
    const/16 v22, 0x0

    .line 611
    .line 612
    const/16 v23, 0x1c

    .line 613
    .line 614
    const-string v18, "\u663e\u793a"

    .line 615
    .line 616
    move-object/from16 v19, v3

    .line 617
    .line 618
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 619
    .line 620
    .line 621
    new-array v3, v14, [Lj8/k0;

    .line 622
    .line 623
    aput-object v16, v3, v15

    .line 624
    .line 625
    aput-object v17, v3, v13

    .line 626
    .line 627
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 628
    .line 629
    .line 630
    move-result-object v27

    .line 631
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    if-ne v3, v6, :cond_c

    .line 639
    .line 640
    new-instance v3, Lv/x0;

    .line 641
    .line 642
    const/16 v12, 0x1d

    .line 643
    .line 644
    invoke-direct {v3, v12}, Lv/x0;-><init>(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    :cond_c
    move-object/from16 v31, v3

    .line 651
    .line 652
    check-cast v31, Lf9/k;

    .line 653
    .line 654
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 655
    .line 656
    .line 657
    const v33, 0x301c6

    .line 658
    .line 659
    .line 660
    const/16 v34, 0x18

    .line 661
    .line 662
    const-string v28, "STATUS_SHOW"

    .line 663
    .line 664
    const/16 v29, 0x0

    .line 665
    .line 666
    const/16 v30, 0x0

    .line 667
    .line 668
    move-object/from16 v32, v1

    .line 669
    .line 670
    invoke-static/range {v26 .. v34}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 671
    .line 672
    .line 673
    sget-object v3, Ll8/g;->a:Lr8/o;

    .line 674
    .line 675
    invoke-static {}, Ll8/g;->e()I

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    const-string v12, "\u72b6\u6001\u680f\u5927\u5c0f(\u9ed8\u8ba4"

    .line 680
    .line 681
    invoke-static {v12, v5, v3}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 690
    .line 691
    .line 692
    move-result-object v23

    .line 693
    check-cast v11, Lf1/v2;

    .line 694
    .line 695
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    check-cast v3, Lx7/j;

    .line 700
    .line 701
    iget v3, v3, Lx7/j;->c:I

    .line 702
    .line 703
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    new-instance v4, Lr8/j;

    .line 708
    .line 709
    const-string v5, "STATUS_SIZE"

    .line 710
    .line 711
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    div-int/2addr v3, v14

    .line 719
    int-to-float v3, v3

    .line 720
    new-instance v5, Ll9/a;

    .line 721
    .line 722
    const/4 v9, 0x0

    .line 723
    invoke-direct {v5, v9, v3}, Ll9/a;-><init>(FF)V

    .line 724
    .line 725
    .line 726
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    invoke-static {v5, v3, v1, v7}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 731
    .line 732
    .line 733
    move-result-object v25

    .line 734
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    if-ne v3, v6, :cond_d

    .line 739
    .line 740
    new-instance v3, Lx7/h;

    .line 741
    .line 742
    invoke-direct {v3, v15}, Lx7/h;-><init>(I)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    :cond_d
    move-object/from16 v27, v3

    .line 749
    .line 750
    check-cast v27, Lf9/k;

    .line 751
    .line 752
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 753
    .line 754
    .line 755
    const/16 v29, 0x6000

    .line 756
    .line 757
    const/16 v30, 0x8

    .line 758
    .line 759
    const/16 v26, 0x0

    .line 760
    .line 761
    move-object/from16 v28, v1

    .line 762
    .line 763
    move-object/from16 v24, v4

    .line 764
    .line 765
    invoke-static/range {v23 .. v30}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 766
    .line 767
    .line 768
    const-string v3, "\u72b6\u6001\u680f\u989c\u8272"

    .line 769
    .line 770
    const-string v4, "\u8bbe\u7f6e\u72b6\u6001\u680f\u989c\u8272"

    .line 771
    .line 772
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 777
    .line 778
    .line 779
    move-result-object v9

    .line 780
    new-instance v10, Lr8/j;

    .line 781
    .line 782
    const-string v3, "STATUS_COLOR"

    .line 783
    .line 784
    invoke-direct {v10, v3, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    if-ne v2, v6, :cond_e

    .line 795
    .line 796
    new-instance v2, Lx7/h;

    .line 797
    .line 798
    invoke-direct {v2, v13}, Lx7/h;-><init>(I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    :cond_e
    move-object v12, v2

    .line 805
    check-cast v12, Lf9/k;

    .line 806
    .line 807
    invoke-virtual {v1, v15}, Lf1/s;->p(Z)V

    .line 808
    .line 809
    .line 810
    const/16 v14, 0xdb6

    .line 811
    .line 812
    const/4 v15, 0x0

    .line 813
    const/4 v11, 0x0

    .line 814
    move-object v13, v1

    .line 815
    invoke-static/range {v9 .. v15}, Li2/c;->d(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 816
    .line 817
    .line 818
    :goto_7
    return-object v8

    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
