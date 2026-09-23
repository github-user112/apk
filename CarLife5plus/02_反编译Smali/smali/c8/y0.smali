.class public final synthetic Lc8/y0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc8/y0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILf0/m;)V
    .locals 0

    .line 2
    const/4 p1, 0x7

    iput p1, p0, Lc8/y0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/y0;->a:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "$this$Slider"

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const-string v5, "it"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v7, "$this$update"

    .line 13
    .line 14
    const-wide v8, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    sget-object v11, Lr8/z;->a:Lr8/z;

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lm7/z;->m:Ldc/l0;

    .line 34
    .line 35
    sget-object v2, Lm7/z;->m:Ldc/l0;

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object v13, v3

    .line 42
    check-cast v13, Lm7/z;

    .line 43
    .line 44
    invoke-static {v13, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/16 v25, 0x0

    .line 48
    .line 49
    const/16 v26, 0xeff

    .line 50
    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    const/16 v20, 0x0

    .line 62
    .line 63
    const/16 v21, 0x0

    .line 64
    .line 65
    const/16 v23, 0x0

    .line 66
    .line 67
    const/16 v24, 0x0

    .line 68
    .line 69
    move-object/from16 v22, v1

    .line 70
    .line 71
    invoke-static/range {v13 .. v26}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v3, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    return-object v11

    .line 82
    :cond_0
    move-object/from16 v1, v22

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_0
    move-object/from16 v1, p1

    .line 86
    .line 87
    check-cast v1, Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v1}, Lm0/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    return-object v1

    .line 94
    :pswitch_1
    move-object/from16 v1, p1

    .line 95
    .line 96
    check-cast v1, Ll5/l;

    .line 97
    .line 98
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-array v2, v4, [Ly1/q;

    .line 102
    .line 103
    sget-wide v3, Ly1/q;->b:J

    .line 104
    .line 105
    new-instance v5, Ly1/q;

    .line 106
    .line 107
    invoke-direct {v5, v3, v4}, Ly1/q;-><init>(J)V

    .line 108
    .line 109
    .line 110
    aput-object v5, v2, v12

    .line 111
    .line 112
    iget-object v1, v1, Ll5/l;->g:Lf1/k1;

    .line 113
    .line 114
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    aput-object v1, v2, v10

    .line 119
    .line 120
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    return-object v1

    .line 125
    :pswitch_2
    move-object/from16 v1, p1

    .line 126
    .line 127
    check-cast v1, Ll5/l;

    .line 128
    .line 129
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v1, Ll5/l;->i:Lf1/g1;

    .line 133
    .line 134
    invoke-virtual {v1}, Lf1/g1;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    return-object v1

    .line 149
    :pswitch_3
    move-object/from16 v1, p1

    .line 150
    .line 151
    check-cast v1, Ll5/l;

    .line 152
    .line 153
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v1, Ll5/l;->g:Lf1/k1;

    .line 157
    .line 158
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ly1/q;

    .line 163
    .line 164
    iget-wide v1, v1, Ly1/q;->a:J

    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-static {v3, v1, v2}, Ly1/q;->b(FJ)J

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    new-instance v3, Ly1/q;

    .line 172
    .line 173
    invoke-direct {v3, v5, v6}, Ly1/q;-><init>(J)V

    .line 174
    .line 175
    .line 176
    const/high16 v5, 0x3f800000    # 1.0f

    .line 177
    .line 178
    invoke-static {v5, v1, v2}, Ly1/q;->b(FJ)J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    new-instance v5, Ly1/q;

    .line 183
    .line 184
    invoke-direct {v5, v1, v2}, Ly1/q;-><init>(J)V

    .line 185
    .line 186
    .line 187
    new-array v1, v4, [Ly1/q;

    .line 188
    .line 189
    aput-object v3, v1, v12

    .line 190
    .line 191
    aput-object v5, v1, v10

    .line 192
    .line 193
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    return-object v1

    .line 198
    :pswitch_4
    move-object/from16 v1, p1

    .line 199
    .line 200
    check-cast v1, Ll5/l;

    .line 201
    .line 202
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v1, Ll5/l;->h:Lf1/g1;

    .line 206
    .line 207
    invoke-virtual {v1}, Lf1/g1;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Ljava/lang/Number;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    return-object v1

    .line 222
    :pswitch_5
    move-object/from16 v1, p1

    .line 223
    .line 224
    check-cast v1, Ljava/util/List;

    .line 225
    .line 226
    new-instance v2, Ll0/o1;

    .line 227
    .line 228
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    .line 233
    .line 234
    invoke-static {v3, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    check-cast v3, Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_1

    .line 244
    .line 245
    sget-object v3, Lz/w0;->a:Lz/w0;

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_1
    sget-object v3, Lz/w0;->b:Lz/w0;

    .line 249
    .line 250
    :goto_1
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v4, "null cannot be cast to non-null type kotlin.Float"

    .line 255
    .line 256
    invoke-static {v1, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    check-cast v1, Ljava/lang/Float;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-direct {v2, v3, v1}, Ll0/o1;-><init>(Lz/w0;F)V

    .line 266
    .line 267
    .line 268
    return-object v2

    .line 269
    :pswitch_6
    move-object/from16 v1, p1

    .line 270
    .line 271
    check-cast v1, Lw0/h1;

    .line 272
    .line 273
    invoke-virtual {v1}, Lw0/h1;->b()Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    if-eqz v2, :cond_2

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    new-instance v6, Lg3/e;

    .line 284
    .line 285
    iget-wide v3, v1, Lw0/h1;->f:J

    .line 286
    .line 287
    sget v1, Lb3/n0;->c:I

    .line 288
    .line 289
    and-long/2addr v3, v8

    .line 290
    long-to-int v1, v3

    .line 291
    sub-int/2addr v2, v1

    .line 292
    invoke-direct {v6, v12, v2}, Lg3/e;-><init>(II)V

    .line 293
    .line 294
    .line 295
    :cond_2
    return-object v6

    .line 296
    :pswitch_7
    move-object/from16 v1, p1

    .line 297
    .line 298
    check-cast v1, Lw0/h1;

    .line 299
    .line 300
    invoke-virtual {v1}, Lw0/h1;->c()Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    if-eqz v2, :cond_3

    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    new-instance v6, Lg3/e;

    .line 311
    .line 312
    iget-wide v3, v1, Lw0/h1;->f:J

    .line 313
    .line 314
    sget v1, Lb3/n0;->c:I

    .line 315
    .line 316
    and-long/2addr v3, v8

    .line 317
    long-to-int v1, v3

    .line 318
    sub-int/2addr v1, v2

    .line 319
    invoke-direct {v6, v1, v12}, Lg3/e;-><init>(II)V

    .line 320
    .line 321
    .line 322
    :cond_3
    return-object v6

    .line 323
    :pswitch_8
    move-object/from16 v1, p1

    .line 324
    .line 325
    check-cast v1, Lw0/h1;

    .line 326
    .line 327
    invoke-virtual {v1}, Lw0/h1;->d()Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_4

    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    new-instance v6, Lg3/e;

    .line 338
    .line 339
    iget-wide v3, v1, Lw0/h1;->f:J

    .line 340
    .line 341
    sget v1, Lb3/n0;->c:I

    .line 342
    .line 343
    and-long/2addr v3, v8

    .line 344
    long-to-int v1, v3

    .line 345
    sub-int/2addr v2, v1

    .line 346
    invoke-direct {v6, v12, v2}, Lg3/e;-><init>(II)V

    .line 347
    .line 348
    .line 349
    :cond_4
    return-object v6

    .line 350
    :pswitch_9
    move-object/from16 v1, p1

    .line 351
    .line 352
    check-cast v1, Lw0/h1;

    .line 353
    .line 354
    invoke-virtual {v1}, Lw0/h1;->e()Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    if-eqz v2, :cond_5

    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    new-instance v6, Lg3/e;

    .line 365
    .line 366
    iget-wide v3, v1, Lw0/h1;->f:J

    .line 367
    .line 368
    sget v1, Lb3/n0;->c:I

    .line 369
    .line 370
    and-long/2addr v3, v8

    .line 371
    long-to-int v1, v3

    .line 372
    sub-int/2addr v1, v2

    .line 373
    invoke-direct {v6, v1, v12}, Lg3/e;-><init>(II)V

    .line 374
    .line 375
    .line 376
    :cond_5
    return-object v6

    .line 377
    :pswitch_a
    move-object/from16 v1, p1

    .line 378
    .line 379
    check-cast v1, Lw0/h1;

    .line 380
    .line 381
    iget-object v3, v1, Lw0/h1;->g:Lb3/g;

    .line 382
    .line 383
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 384
    .line 385
    iget-wide v4, v1, Lw0/h1;->f:J

    .line 386
    .line 387
    sget v7, Lb3/n0;->c:I

    .line 388
    .line 389
    and-long/2addr v4, v8

    .line 390
    long-to-int v5, v4

    .line 391
    invoke-static {v5, v3}, Ll0/p0;->o(ILjava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eq v3, v2, :cond_6

    .line 396
    .line 397
    new-instance v6, Lg3/e;

    .line 398
    .line 399
    iget-wide v1, v1, Lw0/h1;->f:J

    .line 400
    .line 401
    and-long/2addr v1, v8

    .line 402
    long-to-int v2, v1

    .line 403
    sub-int/2addr v3, v2

    .line 404
    invoke-direct {v6, v12, v3}, Lg3/e;-><init>(II)V

    .line 405
    .line 406
    .line 407
    :cond_6
    return-object v6

    .line 408
    :pswitch_b
    move-object/from16 v1, p1

    .line 409
    .line 410
    check-cast v1, Lw0/h1;

    .line 411
    .line 412
    iget-object v3, v1, Lw0/h1;->g:Lb3/g;

    .line 413
    .line 414
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 415
    .line 416
    iget-wide v4, v1, Lw0/h1;->f:J

    .line 417
    .line 418
    sget v7, Lb3/n0;->c:I

    .line 419
    .line 420
    and-long/2addr v4, v8

    .line 421
    long-to-int v5, v4

    .line 422
    if-gtz v5, :cond_7

    .line 423
    .line 424
    :goto_2
    const/4 v3, -0x1

    .line 425
    goto :goto_3

    .line 426
    :cond_7
    invoke-static {}, Ll0/p0;->s()Ll4/j;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    if-nez v4, :cond_9

    .line 431
    .line 432
    if-gtz v5, :cond_8

    .line 433
    .line 434
    goto :goto_2

    .line 435
    :cond_8
    invoke-static {v3, v5, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    goto :goto_3

    .line 440
    :cond_9
    add-int/lit8 v7, v5, -0x1

    .line 441
    .line 442
    invoke-virtual {v4, v3, v7}, Ll4/j;->b(Ljava/lang/CharSequence;I)I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-gez v4, :cond_b

    .line 447
    .line 448
    if-gtz v5, :cond_a

    .line 449
    .line 450
    goto :goto_2

    .line 451
    :cond_a
    invoke-static {v3, v5, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    goto :goto_3

    .line 456
    :cond_b
    move v3, v4

    .line 457
    :goto_3
    if-ne v3, v2, :cond_c

    .line 458
    .line 459
    goto :goto_4

    .line 460
    :cond_c
    new-instance v6, Lg3/e;

    .line 461
    .line 462
    iget-wide v1, v1, Lw0/h1;->f:J

    .line 463
    .line 464
    and-long/2addr v1, v8

    .line 465
    long-to-int v2, v1

    .line 466
    sub-int/2addr v2, v3

    .line 467
    invoke-direct {v6, v2, v12}, Lg3/e;-><init>(II)V

    .line 468
    .line 469
    .line 470
    :goto_4
    return-object v6

    .line 471
    :pswitch_c
    move-object/from16 v1, p1

    .line 472
    .line 473
    check-cast v1, Lg3/w;

    .line 474
    .line 475
    return-object v11

    .line 476
    :pswitch_d
    move-object/from16 v1, p1

    .line 477
    .line 478
    check-cast v1, Ljava/lang/Long;

    .line 479
    .line 480
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 481
    .line 482
    .line 483
    return-object v1

    .line 484
    :pswitch_e
    move-object/from16 v1, p1

    .line 485
    .line 486
    check-cast v1, Lb3/l0;

    .line 487
    .line 488
    sget v1, Ll0/j;->a:I

    .line 489
    .line 490
    return-object v11

    .line 491
    :pswitch_f
    move-object/from16 v1, p1

    .line 492
    .line 493
    check-cast v1, Ljava/lang/Integer;

    .line 494
    .line 495
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v13

    .line 499
    sget-boolean v1, Lk7/k;->l:Z

    .line 500
    .line 501
    sget-object v1, Lk7/k;->m:Ldc/l0;

    .line 502
    .line 503
    :cond_d
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    move-object v12, v2

    .line 508
    check-cast v12, Lk7/k;

    .line 509
    .line 510
    invoke-static {v12, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const/16 v22, 0x0

    .line 514
    .line 515
    const/16 v23, 0x7fe

    .line 516
    .line 517
    const/4 v14, 0x0

    .line 518
    const/4 v15, 0x0

    .line 519
    const/16 v16, 0x0

    .line 520
    .line 521
    const/16 v17, 0x0

    .line 522
    .line 523
    const/16 v18, 0x0

    .line 524
    .line 525
    const/16 v19, 0x0

    .line 526
    .line 527
    const/16 v20, 0x0

    .line 528
    .line 529
    const/16 v21, 0x0

    .line 530
    .line 531
    invoke-static/range {v12 .. v23}, Lk7/k;->a(Lk7/k;IZZZZZZIIII)Lk7/k;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-eqz v2, :cond_d

    .line 540
    .line 541
    return-object v11

    .line 542
    :pswitch_10
    move-object/from16 v1, p1

    .line 543
    .line 544
    check-cast v1, Ljava/lang/Boolean;

    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 550
    .line 551
    return-object v1

    .line 552
    :pswitch_11
    move-object/from16 v13, p1

    .line 553
    .line 554
    check-cast v13, La2/g;

    .line 555
    .line 556
    const-string v1, "$this$Canvas"

    .line 557
    .line 558
    invoke-static {v13, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-interface {v13}, La2/g;->g()J

    .line 562
    .line 563
    .line 564
    move-result-wide v1

    .line 565
    and-long/2addr v1, v8

    .line 566
    long-to-int v2, v1

    .line 567
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    const/high16 v2, 0x41200000    # 10.0f

    .line 572
    .line 573
    div-float/2addr v1, v2

    .line 574
    float-to-int v1, v1

    .line 575
    invoke-interface {v13}, La2/g;->g()J

    .line 576
    .line 577
    .line 578
    move-result-wide v5

    .line 579
    const/16 v3, 0x20

    .line 580
    .line 581
    shr-long/2addr v5, v3

    .line 582
    long-to-int v6, v5

    .line 583
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    div-float/2addr v5, v2

    .line 588
    float-to-int v5, v5

    .line 589
    if-ltz v1, :cond_11

    .line 590
    .line 591
    const/4 v6, 0x0

    .line 592
    :goto_5
    if-ltz v5, :cond_f

    .line 593
    .line 594
    const/4 v7, 0x0

    .line 595
    :goto_6
    add-int v10, v6, v7

    .line 596
    .line 597
    rem-int/2addr v10, v4

    .line 598
    const v14, 0x3f4ccccd    # 0.8f

    .line 599
    .line 600
    .line 601
    if-nez v10, :cond_e

    .line 602
    .line 603
    const/high16 p1, 0x41200000    # 10.0f

    .line 604
    .line 605
    const/16 v10, 0x20

    .line 606
    .line 607
    sget-wide v2, Ly1/q;->d:J

    .line 608
    .line 609
    :goto_7
    invoke-static {v14, v2, v3}, Ly1/q;->b(FJ)J

    .line 610
    .line 611
    .line 612
    move-result-wide v2

    .line 613
    move-wide v14, v2

    .line 614
    goto :goto_8

    .line 615
    :cond_e
    const/high16 p1, 0x41200000    # 10.0f

    .line 616
    .line 617
    const/16 v10, 0x20

    .line 618
    .line 619
    sget-wide v2, Ly1/q;->e:J

    .line 620
    .line 621
    goto :goto_7

    .line 622
    :goto_8
    int-to-float v2, v7

    .line 623
    mul-float v2, v2, p1

    .line 624
    .line 625
    int-to-float v3, v6

    .line 626
    mul-float v3, v3, p1

    .line 627
    .line 628
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    move-wide/from16 v21, v8

    .line 633
    .line 634
    int-to-long v8, v2

    .line 635
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    int-to-long v2, v2

    .line 640
    shl-long/2addr v8, v10

    .line 641
    and-long v2, v2, v21

    .line 642
    .line 643
    or-long v16, v8, v2

    .line 644
    .line 645
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    int-to-long v2, v2

    .line 650
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 651
    .line 652
    .line 653
    move-result v8

    .line 654
    int-to-long v8, v8

    .line 655
    shl-long/2addr v2, v10

    .line 656
    and-long v8, v8, v21

    .line 657
    .line 658
    or-long v18, v2, v8

    .line 659
    .line 660
    const/16 v20, 0x78

    .line 661
    .line 662
    invoke-static/range {v13 .. v20}, La2/f;->x(La2/g;JJJI)V

    .line 663
    .line 664
    .line 665
    if-eq v7, v5, :cond_10

    .line 666
    .line 667
    add-int/lit8 v7, v7, 0x1

    .line 668
    .line 669
    move-wide/from16 v8, v21

    .line 670
    .line 671
    const/high16 v2, 0x41200000    # 10.0f

    .line 672
    .line 673
    const/16 v3, 0x20

    .line 674
    .line 675
    goto :goto_6

    .line 676
    :cond_f
    move-wide/from16 v21, v8

    .line 677
    .line 678
    const/high16 p1, 0x41200000    # 10.0f

    .line 679
    .line 680
    const/16 v10, 0x20

    .line 681
    .line 682
    :cond_10
    if-eq v6, v1, :cond_11

    .line 683
    .line 684
    add-int/lit8 v6, v6, 0x1

    .line 685
    .line 686
    move-wide/from16 v8, v21

    .line 687
    .line 688
    const/high16 v2, 0x41200000    # 10.0f

    .line 689
    .line 690
    const/16 v3, 0x20

    .line 691
    .line 692
    goto :goto_5

    .line 693
    :cond_11
    return-object v11

    .line 694
    :pswitch_12
    move-object/from16 v1, p1

    .line 695
    .line 696
    check-cast v1, Ljava/lang/Integer;

    .line 697
    .line 698
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    sget-object v1, Lg0/w;->a:Lg0/m;

    .line 702
    .line 703
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    return-object v1

    .line 708
    :pswitch_13
    move-object/from16 v1, p1

    .line 709
    .line 710
    check-cast v1, Ljava/lang/Integer;

    .line 711
    .line 712
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    sget-object v1, Lg0/w;->a:Lg0/m;

    .line 716
    .line 717
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 718
    .line 719
    return-object v1

    .line 720
    :pswitch_14
    move-object/from16 v1, p1

    .line 721
    .line 722
    check-cast v1, Ljava/util/List;

    .line 723
    .line 724
    new-instance v2, Lg0/u;

    .line 725
    .line 726
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    check-cast v3, Ljava/lang/Number;

    .line 731
    .line 732
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    check-cast v1, Ljava/lang/Number;

    .line 741
    .line 742
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    invoke-direct {v2, v3, v1}, Lg0/u;-><init>(II)V

    .line 747
    .line 748
    .line 749
    return-object v2

    .line 750
    :pswitch_15
    move-object/from16 v1, p1

    .line 751
    .line 752
    check-cast v1, Lh0/q0;

    .line 753
    .line 754
    return-object v11

    .line 755
    :pswitch_16
    move-object/from16 v1, p1

    .line 756
    .line 757
    check-cast v1, Ljava/util/List;

    .line 758
    .line 759
    new-instance v2, Lf0/u;

    .line 760
    .line 761
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    check-cast v3, Ljava/lang/Number;

    .line 766
    .line 767
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    check-cast v1, Ljava/lang/Number;

    .line 776
    .line 777
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    invoke-direct {v2, v3, v1}, Lf0/u;-><init>(II)V

    .line 782
    .line 783
    .line 784
    return-object v2

    .line 785
    :pswitch_17
    move-object/from16 v1, p1

    .line 786
    .line 787
    check-cast v1, Lj8/k0;

    .line 788
    .line 789
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    sget-object v2, Le8/i;->g:Ldc/l0;

    .line 793
    .line 794
    sget-object v2, Le8/i;->g:Ldc/l0;

    .line 795
    .line 796
    :cond_12
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    move-object v12, v3

    .line 801
    check-cast v12, Le8/i;

    .line 802
    .line 803
    invoke-static {v12, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 807
    .line 808
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 809
    .line 810
    .line 811
    move-result v15

    .line 812
    const/16 v16, 0x0

    .line 813
    .line 814
    const/16 v17, 0x3b

    .line 815
    .line 816
    const/4 v13, 0x0

    .line 817
    const/4 v14, 0x0

    .line 818
    invoke-static/range {v12 .. v17}, Le8/i;->a(Le8/i;IIIII)Le8/i;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result v3

    .line 826
    if-eqz v3, :cond_12

    .line 827
    .line 828
    return-object v11

    .line 829
    :pswitch_18
    move-object/from16 v1, p1

    .line 830
    .line 831
    check-cast v1, Ljava/lang/Integer;

    .line 832
    .line 833
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 834
    .line 835
    .line 836
    move-result v14

    .line 837
    sget-object v1, Le8/i;->g:Ldc/l0;

    .line 838
    .line 839
    sget-object v1, Le8/i;->g:Ldc/l0;

    .line 840
    .line 841
    :cond_13
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    move-object v12, v2

    .line 846
    check-cast v12, Le8/i;

    .line 847
    .line 848
    invoke-static {v12, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    const/16 v16, 0x0

    .line 852
    .line 853
    const/16 v17, 0x3d

    .line 854
    .line 855
    const/4 v13, 0x0

    .line 856
    const/4 v15, 0x0

    .line 857
    invoke-static/range {v12 .. v17}, Le8/i;->a(Le8/i;IIIII)Le8/i;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    if-eqz v2, :cond_13

    .line 866
    .line 867
    return-object v11

    .line 868
    :pswitch_19
    move-object/from16 v1, p1

    .line 869
    .line 870
    check-cast v1, Ljava/lang/Integer;

    .line 871
    .line 872
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 873
    .line 874
    .line 875
    move-result v13

    .line 876
    sget-object v1, Le8/i;->g:Ldc/l0;

    .line 877
    .line 878
    sget-object v1, Le8/i;->g:Ldc/l0;

    .line 879
    .line 880
    :cond_14
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    move-object v12, v2

    .line 885
    check-cast v12, Le8/i;

    .line 886
    .line 887
    invoke-static {v12, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    const/16 v16, 0x0

    .line 891
    .line 892
    const/16 v17, 0x3e

    .line 893
    .line 894
    const/4 v14, 0x0

    .line 895
    const/4 v15, 0x0

    .line 896
    invoke-static/range {v12 .. v17}, Le8/i;->a(Le8/i;IIIII)Le8/i;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    if-eqz v2, :cond_14

    .line 905
    .line 906
    return-object v11

    .line 907
    :pswitch_1a
    move-object/from16 v1, p1

    .line 908
    .line 909
    check-cast v1, Lj8/k0;

    .line 910
    .line 911
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    sget-object v2, Le8/i;->g:Ldc/l0;

    .line 915
    .line 916
    sget-object v2, Le8/i;->g:Ldc/l0;

    .line 917
    .line 918
    :cond_15
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    move-object v12, v3

    .line 923
    check-cast v12, Le8/i;

    .line 924
    .line 925
    invoke-static {v12, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 929
    .line 930
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 931
    .line 932
    .line 933
    move-result v16

    .line 934
    const/16 v17, 0x2f

    .line 935
    .line 936
    const/4 v13, 0x0

    .line 937
    const/4 v14, 0x0

    .line 938
    const/4 v15, 0x0

    .line 939
    invoke-static/range {v12 .. v17}, Le8/i;->a(Le8/i;IIIII)Le8/i;

    .line 940
    .line 941
    .line 942
    move-result-object v4

    .line 943
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    move-result v3

    .line 947
    if-eqz v3, :cond_15

    .line 948
    .line 949
    return-object v11

    .line 950
    :pswitch_1b
    move-object/from16 v1, p1

    .line 951
    .line 952
    check-cast v1, Lj8/k0;

    .line 953
    .line 954
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    iget-object v1, v1, Lj8/k0;->b:Lj8/o0;

    .line 958
    .line 959
    invoke-interface {v1}, Lj8/o0;->a()I

    .line 960
    .line 961
    .line 962
    move-result v1

    .line 963
    sget-object v2, Lz7/t1;->c:Lz7/s1;

    .line 964
    .line 965
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 966
    .line 967
    .line 968
    invoke-static {v1}, Lz7/s1;->a(I)V

    .line 969
    .line 970
    .line 971
    return-object v11

    .line 972
    :pswitch_1c
    move-object/from16 v1, p1

    .line 973
    .line 974
    check-cast v1, Landroid/view/KeyEvent;

    .line 975
    .line 976
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    sget v2, Lb8/b;->b:I

    .line 980
    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 982
    .line 983
    .line 984
    move-result-wide v2

    .line 985
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    .line 986
    .line 987
    .line 988
    move-result v5

    .line 989
    const-string v6, "CarLife_Vehicle"

    .line 990
    .line 991
    const-wide/16 v7, 0x28a

    .line 992
    .line 993
    if-eqz v5, :cond_1f

    .line 994
    .line 995
    if-eq v5, v10, :cond_16

    .line 996
    .line 997
    goto/16 :goto_a

    .line 998
    .line 999
    :cond_16
    sget v5, Lb8/b;->b:I

    .line 1000
    .line 1001
    if-nez v5, :cond_17

    .line 1002
    .line 1003
    sput v10, Lb8/b;->b:I

    .line 1004
    .line 1005
    :cond_17
    sget-boolean v5, Lb8/b;->d:Z

    .line 1006
    .line 1007
    if-eqz v5, :cond_18

    .line 1008
    .line 1009
    sput v12, Lb8/b;->b:I

    .line 1010
    .line 1011
    :cond_18
    sget-wide v13, Lb8/b;->c:J

    .line 1012
    .line 1013
    sub-long v13, v2, v13

    .line 1014
    .line 1015
    cmp-long v9, v13, v7

    .line 1016
    .line 1017
    if-ltz v9, :cond_1a

    .line 1018
    .line 1019
    if-nez v5, :cond_19

    .line 1020
    .line 1021
    invoke-static {v4, v1}, Lb8/b;->b(ILandroid/view/KeyEvent;)V

    .line 1022
    .line 1023
    .line 1024
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 1025
    .line 1026
    new-array v4, v10, [Ljava/lang/Object;

    .line 1027
    .line 1028
    const-string v5, "\u3010\u5a92\u4f53\u6309\u952e\u3011\u957f\u6309\u4e8b\u4ef6\u89e6\u53d1 (ACTION_UP)"

    .line 1029
    .line 1030
    aput-object v5, v4, v12

    .line 1031
    .line 1032
    invoke-virtual {v1, v6, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    .line 1034
    .line 1035
    :cond_19
    sput-boolean v12, Lb8/b;->d:Z

    .line 1036
    .line 1037
    sput v12, Lb8/b;->b:I

    .line 1038
    .line 1039
    goto :goto_9

    .line 1040
    :cond_1a
    sget v6, Lb8/b;->b:I

    .line 1041
    .line 1042
    const-wide/16 v7, 0x1f4

    .line 1043
    .line 1044
    if-ne v6, v4, :cond_1b

    .line 1045
    .line 1046
    sget-wide v15, Lb8/b;->a:J

    .line 1047
    .line 1048
    sub-long v15, v2, v15

    .line 1049
    .line 1050
    cmp-long v9, v15, v7

    .line 1051
    .line 1052
    if-gtz v9, :cond_1b

    .line 1053
    .line 1054
    invoke-static {v10, v1}, Lb8/b;->b(ILandroid/view/KeyEvent;)V

    .line 1055
    .line 1056
    .line 1057
    sput v12, Lb8/b;->b:I

    .line 1058
    .line 1059
    goto :goto_9

    .line 1060
    :cond_1b
    if-ne v6, v10, :cond_1c

    .line 1061
    .line 1062
    sget-object v5, Lb8/b;->e:Landroid/os/Handler;

    .line 1063
    .line 1064
    new-instance v6, Landroidx/lifecycle/z;

    .line 1065
    .line 1066
    invoke-direct {v6, v4, v1}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1070
    .line 1071
    .line 1072
    goto :goto_9

    .line 1073
    :cond_1c
    cmp-long v4, v7, v13

    .line 1074
    .line 1075
    if-gtz v4, :cond_1d

    .line 1076
    .line 1077
    const-wide/16 v6, 0x28b

    .line 1078
    .line 1079
    cmp-long v4, v13, v6

    .line 1080
    .line 1081
    if-gez v4, :cond_1d

    .line 1082
    .line 1083
    if-nez v5, :cond_1e

    .line 1084
    .line 1085
    invoke-static {v12, v1}, Lb8/b;->b(ILandroid/view/KeyEvent;)V

    .line 1086
    .line 1087
    .line 1088
    sput v12, Lb8/b;->b:I

    .line 1089
    .line 1090
    goto :goto_9

    .line 1091
    :cond_1d
    sput-boolean v12, Lb8/b;->d:Z

    .line 1092
    .line 1093
    sput v12, Lb8/b;->b:I

    .line 1094
    .line 1095
    :cond_1e
    :goto_9
    sput-wide v2, Lb8/b;->a:J

    .line 1096
    .line 1097
    sput-wide v2, Lb8/b;->c:J

    .line 1098
    .line 1099
    goto :goto_a

    .line 1100
    :cond_1f
    sget v5, Lb8/b;->b:I

    .line 1101
    .line 1102
    if-nez v5, :cond_20

    .line 1103
    .line 1104
    const-wide/16 v13, 0x1

    .line 1105
    .line 1106
    sub-long v13, v2, v13

    .line 1107
    .line 1108
    sput-wide v13, Lb8/b;->c:J

    .line 1109
    .line 1110
    :cond_20
    sget-wide v13, Lb8/b;->c:J

    .line 1111
    .line 1112
    sub-long/2addr v2, v13

    .line 1113
    cmp-long v9, v2, v7

    .line 1114
    .line 1115
    if-ltz v9, :cond_21

    .line 1116
    .line 1117
    sget-boolean v2, Lb8/b;->d:Z

    .line 1118
    .line 1119
    if-nez v2, :cond_21

    .line 1120
    .line 1121
    invoke-static {v4, v1}, Lb8/b;->b(ILandroid/view/KeyEvent;)V

    .line 1122
    .line 1123
    .line 1124
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 1125
    .line 1126
    new-array v2, v10, [Ljava/lang/Object;

    .line 1127
    .line 1128
    const-string v3, "\u3010\u5a92\u4f53\u6309\u952e\u3011\u957f\u6309\u4e8b\u4ef6\u89e6\u53d1 (ACTION_DOWN)"

    .line 1129
    .line 1130
    aput-object v3, v2, v12

    .line 1131
    .line 1132
    invoke-virtual {v1, v6, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    .line 1134
    .line 1135
    sput-boolean v10, Lb8/b;->d:Z

    .line 1136
    .line 1137
    sput v12, Lb8/b;->b:I

    .line 1138
    .line 1139
    goto :goto_a

    .line 1140
    :cond_21
    add-int/2addr v5, v10

    .line 1141
    sput v5, Lb8/b;->b:I

    .line 1142
    .line 1143
    :goto_a
    return-object v11

    .line 1144
    nop

    .line 1145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
