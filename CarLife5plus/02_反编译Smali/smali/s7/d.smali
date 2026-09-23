.class public final synthetic Ls7/d;
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
    iput p1, p0, Ls7/d;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ls7/d;->a:I

    .line 4
    .line 5
    const-string v2, "it"

    .line 6
    .line 7
    const-wide v3, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/16 v5, 0x20

    .line 13
    .line 14
    const-string v6, "$this$update"

    .line 15
    .line 16
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Lv/m;

    .line 24
    .line 25
    iget v2, v1, Lv/m;->a:F

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v6, 0x0

    .line 32
    if-gez v2, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :cond_0
    iget v1, v1, Lv/m;->b:F

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-gez v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v6, v1

    .line 45
    :goto_0
    int-to-long v1, v2

    .line 46
    shl-long/2addr v1, v5

    .line 47
    int-to-long v5, v6

    .line 48
    and-long/2addr v3, v5

    .line 49
    or-long/2addr v1, v3

    .line 50
    new-instance v3, Ln3/l;

    .line 51
    .line 52
    invoke-direct {v3, v1, v2}, Ln3/l;-><init>(J)V

    .line 53
    .line 54
    .line 55
    return-object v3

    .line 56
    :pswitch_0
    move-object/from16 v1, p1

    .line 57
    .line 58
    check-cast v1, Ln3/l;

    .line 59
    .line 60
    new-instance v2, Lv/m;

    .line 61
    .line 62
    iget-wide v6, v1, Ln3/l;->a:J

    .line 63
    .line 64
    shr-long v8, v6, v5

    .line 65
    .line 66
    long-to-int v1, v8

    .line 67
    int-to-float v1, v1

    .line 68
    and-long/2addr v3, v6

    .line 69
    long-to-int v4, v3

    .line 70
    int-to-float v3, v4

    .line 71
    invoke-direct {v2, v1, v3}, Lv/m;-><init>(FF)V

    .line 72
    .line 73
    .line 74
    return-object v2

    .line 75
    :pswitch_1
    move-object/from16 v1, p1

    .line 76
    .line 77
    check-cast v1, Lv/m;

    .line 78
    .line 79
    iget v2, v1, Lv/m;->a:F

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iget v1, v1, Lv/m;->b:F

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    int-to-long v6, v2

    .line 92
    shl-long v5, v6, v5

    .line 93
    .line 94
    int-to-long v1, v1

    .line 95
    and-long/2addr v1, v3

    .line 96
    or-long/2addr v1, v5

    .line 97
    new-instance v3, Ln3/j;

    .line 98
    .line 99
    invoke-direct {v3, v1, v2}, Ln3/j;-><init>(J)V

    .line 100
    .line 101
    .line 102
    return-object v3

    .line 103
    :pswitch_2
    move-object/from16 v1, p1

    .line 104
    .line 105
    check-cast v1, Ln3/j;

    .line 106
    .line 107
    new-instance v2, Lv/m;

    .line 108
    .line 109
    iget-wide v6, v1, Ln3/j;->a:J

    .line 110
    .line 111
    shr-long v8, v6, v5

    .line 112
    .line 113
    long-to-int v1, v8

    .line 114
    int-to-float v1, v1

    .line 115
    and-long/2addr v3, v6

    .line 116
    long-to-int v4, v3

    .line 117
    int-to-float v3, v4

    .line 118
    invoke-direct {v2, v1, v3}, Lv/m;-><init>(FF)V

    .line 119
    .line 120
    .line 121
    return-object v2

    .line 122
    :pswitch_3
    move-object/from16 v1, p1

    .line 123
    .line 124
    check-cast v1, Lv/m;

    .line 125
    .line 126
    iget v2, v1, Lv/m;->a:F

    .line 127
    .line 128
    iget v1, v1, Lv/m;->b:F

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    int-to-long v6, v2

    .line 135
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    int-to-long v1, v1

    .line 140
    shl-long v5, v6, v5

    .line 141
    .line 142
    and-long/2addr v1, v3

    .line 143
    or-long/2addr v1, v5

    .line 144
    new-instance v3, Lx1/b;

    .line 145
    .line 146
    invoke-direct {v3, v1, v2}, Lx1/b;-><init>(J)V

    .line 147
    .line 148
    .line 149
    return-object v3

    .line 150
    :pswitch_4
    move-object/from16 v1, p1

    .line 151
    .line 152
    check-cast v1, Lx1/b;

    .line 153
    .line 154
    new-instance v2, Lv/m;

    .line 155
    .line 156
    iget-wide v6, v1, Lx1/b;->a:J

    .line 157
    .line 158
    shr-long v5, v6, v5

    .line 159
    .line 160
    long-to-int v6, v5

    .line 161
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    iget-wide v6, v1, Lx1/b;->a:J

    .line 166
    .line 167
    and-long/2addr v3, v6

    .line 168
    long-to-int v1, v3

    .line 169
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-direct {v2, v5, v1}, Lv/m;-><init>(FF)V

    .line 174
    .line 175
    .line 176
    return-object v2

    .line 177
    :pswitch_5
    move-object/from16 v1, p1

    .line 178
    .line 179
    check-cast v1, Lv/m;

    .line 180
    .line 181
    iget v2, v1, Lv/m;->a:F

    .line 182
    .line 183
    iget v1, v1, Lv/m;->b:F

    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    int-to-long v6, v2

    .line 190
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    int-to-long v1, v1

    .line 195
    shl-long v5, v6, v5

    .line 196
    .line 197
    and-long/2addr v1, v3

    .line 198
    or-long/2addr v1, v5

    .line 199
    new-instance v3, Lx1/e;

    .line 200
    .line 201
    invoke-direct {v3, v1, v2}, Lx1/e;-><init>(J)V

    .line 202
    .line 203
    .line 204
    return-object v3

    .line 205
    :pswitch_6
    move-object/from16 v1, p1

    .line 206
    .line 207
    check-cast v1, Lx1/e;

    .line 208
    .line 209
    new-instance v2, Lv/m;

    .line 210
    .line 211
    iget-wide v6, v1, Lx1/e;->a:J

    .line 212
    .line 213
    shr-long v5, v6, v5

    .line 214
    .line 215
    long-to-int v6, v5

    .line 216
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    iget-wide v6, v1, Lx1/e;->a:J

    .line 221
    .line 222
    and-long/2addr v3, v6

    .line 223
    long-to-int v1, v3

    .line 224
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-direct {v2, v5, v1}, Lv/m;-><init>(FF)V

    .line 229
    .line 230
    .line 231
    return-object v2

    .line 232
    :pswitch_7
    move-object/from16 v1, p1

    .line 233
    .line 234
    check-cast v1, Lv/m;

    .line 235
    .line 236
    iget v2, v1, Lv/m;->a:F

    .line 237
    .line 238
    iget v1, v1, Lv/m;->b:F

    .line 239
    .line 240
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    int-to-long v6, v2

    .line 245
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    int-to-long v1, v1

    .line 250
    shl-long v5, v6, v5

    .line 251
    .line 252
    and-long/2addr v1, v3

    .line 253
    or-long/2addr v1, v5

    .line 254
    new-instance v3, Ln3/g;

    .line 255
    .line 256
    invoke-direct {v3, v1, v2}, Ln3/g;-><init>(J)V

    .line 257
    .line 258
    .line 259
    return-object v3

    .line 260
    :pswitch_8
    move-object/from16 v1, p1

    .line 261
    .line 262
    check-cast v1, Ln3/g;

    .line 263
    .line 264
    new-instance v2, Lv/m;

    .line 265
    .line 266
    iget-wide v6, v1, Ln3/g;->a:J

    .line 267
    .line 268
    shr-long v5, v6, v5

    .line 269
    .line 270
    long-to-int v6, v5

    .line 271
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    iget-wide v6, v1, Ln3/g;->a:J

    .line 276
    .line 277
    and-long/2addr v3, v6

    .line 278
    long-to-int v1, v3

    .line 279
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-direct {v2, v5, v1}, Lv/m;-><init>(FF)V

    .line 284
    .line 285
    .line 286
    return-object v2

    .line 287
    :pswitch_9
    move-object/from16 v1, p1

    .line 288
    .line 289
    check-cast v1, Lv/l;

    .line 290
    .line 291
    iget v1, v1, Lv/l;->a:F

    .line 292
    .line 293
    new-instance v2, Ln3/f;

    .line 294
    .line 295
    invoke-direct {v2, v1}, Ln3/f;-><init>(F)V

    .line 296
    .line 297
    .line 298
    return-object v2

    .line 299
    :pswitch_a
    move-object/from16 v1, p1

    .line 300
    .line 301
    check-cast v1, Ln3/f;

    .line 302
    .line 303
    new-instance v2, Lv/l;

    .line 304
    .line 305
    iget v1, v1, Ln3/f;->a:F

    .line 306
    .line 307
    invoke-direct {v2, v1}, Lv/l;-><init>(F)V

    .line 308
    .line 309
    .line 310
    return-object v2

    .line 311
    :pswitch_b
    move-object/from16 v1, p1

    .line 312
    .line 313
    check-cast v1, Lv/l;

    .line 314
    .line 315
    iget v1, v1, Lv/l;->a:F

    .line 316
    .line 317
    float-to-int v1, v1

    .line 318
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    return-object v1

    .line 323
    :pswitch_c
    move-object/from16 v1, p1

    .line 324
    .line 325
    check-cast v1, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    new-instance v2, Lv/l;

    .line 332
    .line 333
    int-to-float v1, v1

    .line 334
    invoke-direct {v2, v1}, Lv/l;-><init>(F)V

    .line 335
    .line 336
    .line 337
    return-object v2

    .line 338
    :pswitch_d
    move-object/from16 v1, p1

    .line 339
    .line 340
    check-cast v1, Ljava/lang/Float;

    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    new-instance v2, Lv/l;

    .line 347
    .line 348
    invoke-direct {v2, v1}, Lv/l;-><init>(F)V

    .line 349
    .line 350
    .line 351
    return-object v2

    .line 352
    :pswitch_e
    move-object/from16 v1, p1

    .line 353
    .line 354
    check-cast v1, Lf9/a;

    .line 355
    .line 356
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    return-object v7

    .line 360
    :pswitch_f
    move-object/from16 v1, p1

    .line 361
    .line 362
    check-cast v1, Lv/i;

    .line 363
    .line 364
    return-object v7

    .line 365
    :pswitch_10
    move-object/from16 v1, p1

    .line 366
    .line 367
    check-cast v1, Lg3/j;

    .line 368
    .line 369
    return-object v7

    .line 370
    :pswitch_11
    move-object/from16 v1, p1

    .line 371
    .line 372
    check-cast v1, Ljava/util/List;

    .line 373
    .line 374
    return-object v7

    .line 375
    :pswitch_12
    move-object/from16 v1, p1

    .line 376
    .line 377
    check-cast v1, Ljava/lang/Integer;

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 380
    .line 381
    .line 382
    move-result v21

    .line 383
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 384
    .line 385
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 386
    .line 387
    :cond_2
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    move-object v8, v2

    .line 392
    check-cast v8, Ls7/h;

    .line 393
    .line 394
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const/16 v20, 0x0

    .line 398
    .line 399
    const/16 v22, 0x2fff

    .line 400
    .line 401
    const/4 v9, 0x0

    .line 402
    const/4 v10, 0x0

    .line 403
    const/4 v11, 0x0

    .line 404
    const/4 v12, 0x0

    .line 405
    const/4 v13, 0x0

    .line 406
    const/4 v14, 0x0

    .line 407
    const/4 v15, 0x0

    .line 408
    const/16 v16, 0x0

    .line 409
    .line 410
    const/16 v17, 0x0

    .line 411
    .line 412
    const/16 v18, 0x0

    .line 413
    .line 414
    const/16 v19, 0x0

    .line 415
    .line 416
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eqz v2, :cond_2

    .line 425
    .line 426
    return-object v7

    .line 427
    :pswitch_13
    move-object/from16 v1, p1

    .line 428
    .line 429
    check-cast v1, Ljava/lang/Integer;

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result v20

    .line 435
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 436
    .line 437
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 438
    .line 439
    :cond_3
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    move-object v8, v2

    .line 444
    check-cast v8, Ls7/h;

    .line 445
    .line 446
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const/16 v21, 0x0

    .line 450
    .line 451
    const/16 v22, 0x37ff

    .line 452
    .line 453
    const/4 v9, 0x0

    .line 454
    const/4 v10, 0x0

    .line 455
    const/4 v11, 0x0

    .line 456
    const/4 v12, 0x0

    .line 457
    const/4 v13, 0x0

    .line 458
    const/4 v14, 0x0

    .line 459
    const/4 v15, 0x0

    .line 460
    const/16 v16, 0x0

    .line 461
    .line 462
    const/16 v17, 0x0

    .line 463
    .line 464
    const/16 v18, 0x0

    .line 465
    .line 466
    const/16 v19, 0x0

    .line 467
    .line 468
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_3

    .line 477
    .line 478
    return-object v7

    .line 479
    :pswitch_14
    move-object/from16 v1, p1

    .line 480
    .line 481
    check-cast v1, Ljava/lang/Integer;

    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 484
    .line 485
    .line 486
    move-result v14

    .line 487
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 488
    .line 489
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 490
    .line 491
    :cond_4
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    move-object v8, v2

    .line 496
    check-cast v8, Ls7/h;

    .line 497
    .line 498
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    const/16 v21, 0x0

    .line 502
    .line 503
    const/16 v22, 0x3fdf

    .line 504
    .line 505
    const/4 v9, 0x0

    .line 506
    const/4 v10, 0x0

    .line 507
    const/4 v11, 0x0

    .line 508
    const/4 v12, 0x0

    .line 509
    const/4 v13, 0x0

    .line 510
    const/4 v15, 0x0

    .line 511
    const/16 v16, 0x0

    .line 512
    .line 513
    const/16 v17, 0x0

    .line 514
    .line 515
    const/16 v18, 0x0

    .line 516
    .line 517
    const/16 v19, 0x0

    .line 518
    .line 519
    const/16 v20, 0x0

    .line 520
    .line 521
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-eqz v2, :cond_4

    .line 530
    .line 531
    return-object v7

    .line 532
    :pswitch_15
    move-object/from16 v1, p1

    .line 533
    .line 534
    check-cast v1, Ljava/lang/Integer;

    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v13

    .line 540
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 541
    .line 542
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 543
    .line 544
    :cond_5
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    move-object v8, v2

    .line 549
    check-cast v8, Ls7/h;

    .line 550
    .line 551
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const/16 v21, 0x0

    .line 555
    .line 556
    const/16 v22, 0x3fef

    .line 557
    .line 558
    const/4 v9, 0x0

    .line 559
    const/4 v10, 0x0

    .line 560
    const/4 v11, 0x0

    .line 561
    const/4 v12, 0x0

    .line 562
    const/4 v14, 0x0

    .line 563
    const/4 v15, 0x0

    .line 564
    const/16 v16, 0x0

    .line 565
    .line 566
    const/16 v17, 0x0

    .line 567
    .line 568
    const/16 v18, 0x0

    .line 569
    .line 570
    const/16 v19, 0x0

    .line 571
    .line 572
    const/16 v20, 0x0

    .line 573
    .line 574
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-eqz v2, :cond_5

    .line 583
    .line 584
    return-object v7

    .line 585
    :pswitch_16
    move-object/from16 v1, p1

    .line 586
    .line 587
    check-cast v1, Lj8/k0;

    .line 588
    .line 589
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    sget-object v2, Ls7/h;->n:Ldc/l0;

    .line 593
    .line 594
    sget-object v2, Ls7/h;->n:Ldc/l0;

    .line 595
    .line 596
    :cond_6
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    move-object v8, v3

    .line 601
    check-cast v8, Ls7/h;

    .line 602
    .line 603
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 607
    .line 608
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 609
    .line 610
    .line 611
    move-result v10

    .line 612
    const/16 v21, 0x0

    .line 613
    .line 614
    const/16 v22, 0x3ffd

    .line 615
    .line 616
    const/4 v9, 0x0

    .line 617
    const/4 v11, 0x0

    .line 618
    const/4 v12, 0x0

    .line 619
    const/4 v13, 0x0

    .line 620
    const/4 v14, 0x0

    .line 621
    const/4 v15, 0x0

    .line 622
    const/16 v16, 0x0

    .line 623
    .line 624
    const/16 v17, 0x0

    .line 625
    .line 626
    const/16 v18, 0x0

    .line 627
    .line 628
    const/16 v19, 0x0

    .line 629
    .line 630
    const/16 v20, 0x0

    .line 631
    .line 632
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    if-eqz v3, :cond_6

    .line 641
    .line 642
    return-object v7

    .line 643
    :pswitch_17
    move-object/from16 v1, p1

    .line 644
    .line 645
    check-cast v1, Ljava/lang/Boolean;

    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 648
    .line 649
    .line 650
    move-result v17

    .line 651
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 652
    .line 653
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 654
    .line 655
    :cond_7
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    move-object v7, v2

    .line 660
    check-cast v7, Ls7/h;

    .line 661
    .line 662
    invoke-static {v7, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    const/16 v20, 0x0

    .line 666
    .line 667
    const/16 v21, 0x3dff

    .line 668
    .line 669
    const/4 v8, 0x0

    .line 670
    const/4 v9, 0x0

    .line 671
    const/4 v10, 0x0

    .line 672
    const/4 v11, 0x0

    .line 673
    const/4 v12, 0x0

    .line 674
    const/4 v13, 0x0

    .line 675
    const/4 v14, 0x0

    .line 676
    const/4 v15, 0x0

    .line 677
    const/16 v16, 0x0

    .line 678
    .line 679
    const/16 v18, 0x0

    .line 680
    .line 681
    const/16 v19, 0x0

    .line 682
    .line 683
    invoke-static/range {v7 .. v21}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    if-eqz v2, :cond_7

    .line 692
    .line 693
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 694
    .line 695
    return-object v1

    .line 696
    :pswitch_18
    move-object/from16 v1, p1

    .line 697
    .line 698
    check-cast v1, Ljava/lang/Integer;

    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v19

    .line 704
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 705
    .line 706
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 707
    .line 708
    :cond_8
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    move-object v8, v2

    .line 713
    check-cast v8, Ls7/h;

    .line 714
    .line 715
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    const/16 v21, 0x0

    .line 719
    .line 720
    const/16 v22, 0x3bff

    .line 721
    .line 722
    const/4 v9, 0x0

    .line 723
    const/4 v10, 0x0

    .line 724
    const/4 v11, 0x0

    .line 725
    const/4 v12, 0x0

    .line 726
    const/4 v13, 0x0

    .line 727
    const/4 v14, 0x0

    .line 728
    const/4 v15, 0x0

    .line 729
    const/16 v16, 0x0

    .line 730
    .line 731
    const/16 v17, 0x0

    .line 732
    .line 733
    const/16 v18, 0x0

    .line 734
    .line 735
    const/16 v20, 0x0

    .line 736
    .line 737
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    if-eqz v2, :cond_8

    .line 746
    .line 747
    return-object v7

    .line 748
    :pswitch_19
    move-object/from16 v1, p1

    .line 749
    .line 750
    check-cast v1, Ljava/lang/Integer;

    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 753
    .line 754
    .line 755
    move-result v17

    .line 756
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 757
    .line 758
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 759
    .line 760
    :cond_9
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    move-object v8, v2

    .line 765
    check-cast v8, Ls7/h;

    .line 766
    .line 767
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const/16 v21, 0x0

    .line 771
    .line 772
    const/16 v22, 0x3eff

    .line 773
    .line 774
    const/4 v9, 0x0

    .line 775
    const/4 v10, 0x0

    .line 776
    const/4 v11, 0x0

    .line 777
    const/4 v12, 0x0

    .line 778
    const/4 v13, 0x0

    .line 779
    const/4 v14, 0x0

    .line 780
    const/4 v15, 0x0

    .line 781
    const/16 v16, 0x0

    .line 782
    .line 783
    const/16 v18, 0x0

    .line 784
    .line 785
    const/16 v19, 0x0

    .line 786
    .line 787
    const/16 v20, 0x0

    .line 788
    .line 789
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    if-eqz v2, :cond_9

    .line 798
    .line 799
    return-object v7

    .line 800
    :pswitch_1a
    move-object/from16 v1, p1

    .line 801
    .line 802
    check-cast v1, Ljava/lang/String;

    .line 803
    .line 804
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    sget-object v2, Ls7/h;->n:Ldc/l0;

    .line 808
    .line 809
    sget-object v2, Ls7/h;->n:Ldc/l0;

    .line 810
    .line 811
    :goto_1
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    move-object v4, v3

    .line 816
    check-cast v4, Ls7/h;

    .line 817
    .line 818
    invoke-static {v4, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    const/16 v31, 0x0

    .line 822
    .line 823
    const/16 v32, 0x3f7f

    .line 824
    .line 825
    const/16 v19, 0x0

    .line 826
    .line 827
    const/16 v20, 0x0

    .line 828
    .line 829
    const/16 v21, 0x0

    .line 830
    .line 831
    const/16 v22, 0x0

    .line 832
    .line 833
    const/16 v23, 0x0

    .line 834
    .line 835
    const/16 v24, 0x0

    .line 836
    .line 837
    const/16 v25, 0x0

    .line 838
    .line 839
    const/16 v27, 0x0

    .line 840
    .line 841
    const/16 v28, 0x0

    .line 842
    .line 843
    const/16 v29, 0x0

    .line 844
    .line 845
    const/16 v30, 0x0

    .line 846
    .line 847
    move-object/from16 v26, v1

    .line 848
    .line 849
    move-object/from16 v18, v4

    .line 850
    .line 851
    invoke-static/range {v18 .. v32}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-virtual {v2, v3, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    if-eqz v1, :cond_a

    .line 860
    .line 861
    return-object v7

    .line 862
    :cond_a
    move-object/from16 v1, v26

    .line 863
    .line 864
    goto :goto_1

    .line 865
    :pswitch_1b
    move-object/from16 v1, p1

    .line 866
    .line 867
    check-cast v1, Ljava/lang/Integer;

    .line 868
    .line 869
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 870
    .line 871
    .line 872
    move-result v12

    .line 873
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 874
    .line 875
    sget-object v1, Ls7/h;->n:Ldc/l0;

    .line 876
    .line 877
    :cond_b
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    move-object v8, v2

    .line 882
    check-cast v8, Ls7/h;

    .line 883
    .line 884
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    const/16 v21, 0x0

    .line 888
    .line 889
    const/16 v22, 0x3ff7

    .line 890
    .line 891
    const/4 v9, 0x0

    .line 892
    const/4 v10, 0x0

    .line 893
    const/4 v11, 0x0

    .line 894
    const/4 v13, 0x0

    .line 895
    const/4 v14, 0x0

    .line 896
    const/4 v15, 0x0

    .line 897
    const/16 v16, 0x0

    .line 898
    .line 899
    const/16 v17, 0x0

    .line 900
    .line 901
    const/16 v18, 0x0

    .line 902
    .line 903
    const/16 v19, 0x0

    .line 904
    .line 905
    const/16 v20, 0x0

    .line 906
    .line 907
    invoke-static/range {v8 .. v22}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v2

    .line 915
    if-eqz v2, :cond_b

    .line 916
    .line 917
    return-object v7

    .line 918
    :pswitch_1c
    move-object/from16 v1, p1

    .line 919
    .line 920
    check-cast v1, Ljava/lang/String;

    .line 921
    .line 922
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    sget-object v2, Ls7/h;->n:Ldc/l0;

    .line 926
    .line 927
    sget-object v2, Ls7/h;->n:Ldc/l0;

    .line 928
    .line 929
    :goto_2
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    move-object v13, v3

    .line 934
    check-cast v13, Ls7/h;

    .line 935
    .line 936
    invoke-static {v13, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    const/16 v26, 0x0

    .line 940
    .line 941
    const/16 v27, 0x3ffb

    .line 942
    .line 943
    const/4 v14, 0x0

    .line 944
    const/4 v15, 0x0

    .line 945
    const/16 v17, 0x0

    .line 946
    .line 947
    const/16 v18, 0x0

    .line 948
    .line 949
    const/16 v19, 0x0

    .line 950
    .line 951
    const/16 v20, 0x0

    .line 952
    .line 953
    const/16 v21, 0x0

    .line 954
    .line 955
    const/16 v22, 0x0

    .line 956
    .line 957
    const/16 v23, 0x0

    .line 958
    .line 959
    const/16 v24, 0x0

    .line 960
    .line 961
    const/16 v25, 0x0

    .line 962
    .line 963
    move-object/from16 v16, v1

    .line 964
    .line 965
    invoke-static/range {v13 .. v27}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    invoke-virtual {v2, v3, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-eqz v1, :cond_c

    .line 974
    .line 975
    return-object v7

    .line 976
    :cond_c
    move-object/from16 v1, v16

    .line 977
    .line 978
    goto :goto_2

    .line 979
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
