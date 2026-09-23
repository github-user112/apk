.class public final Lc8/d0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Lf1/h1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc8/d0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/d0;->b:Lf1/h1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/d0;->a:I

    .line 4
    .line 5
    const-string v2, "\u9009\u62e9\u4eae\u5ea6\u503c"

    .line 6
    .line 7
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 8
    .line 9
    const v4, 0x4c5de2

    .line 10
    .line 11
    .line 12
    const/16 v5, 0x1b

    .line 13
    .line 14
    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/16 v7, 0x20

    .line 17
    .line 18
    const/4 v8, 0x6

    .line 19
    const/4 v9, 0x1

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    sget-object v12, Lr8/z;->a:Lr8/z;

    .line 23
    .line 24
    iget-object v13, v0, Lc8/d0;->b:Lf1/h1;

    .line 25
    .line 26
    const/4 v14, 0x2

    .line 27
    const/4 v15, 0x3

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
    and-int/2addr v2, v15

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
    new-instance v2, Lc8/d0;

    .line 58
    .line 59
    invoke-direct {v2, v13, v8}, Lc8/d0;-><init>(Lf1/h1;I)V

    .line 60
    .line 61
    .line 62
    const v3, -0x5f016af3

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/16 v3, 0x30

    .line 70
    .line 71
    invoke-static {v11, v2, v1, v3, v9}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-object v12

    .line 75
    :pswitch_0
    move-object/from16 v1, p1

    .line 76
    .line 77
    check-cast v1, Lf1/s;

    .line 78
    .line 79
    move-object/from16 v2, p2

    .line 80
    .line 81
    check-cast v2, Ljava/lang/Number;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    and-int/2addr v2, v15

    .line 88
    if-ne v2, v14, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    :goto_2
    new-instance v2, Lc8/d0;

    .line 102
    .line 103
    const/4 v3, 0x4

    .line 104
    invoke-direct {v2, v13, v3}, Lc8/d0;-><init>(Lf1/h1;I)V

    .line 105
    .line 106
    .line 107
    const v3, 0x699babb6

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-instance v3, Lc8/d0;

    .line 115
    .line 116
    const/4 v4, 0x5

    .line 117
    invoke-direct {v3, v13, v4}, Lc8/d0;-><init>(Lf1/h1;I)V

    .line 118
    .line 119
    .line 120
    const v4, 0x5f6cde15

    .line 121
    .line 122
    .line 123
    invoke-static {v4, v3, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    const/16 v18, 0x1b6

    .line 128
    .line 129
    const/16 v19, 0x8

    .line 130
    .line 131
    const/4 v15, 0x0

    .line 132
    const/16 v16, 0x0

    .line 133
    .line 134
    move-object/from16 v17, v1

    .line 135
    .line 136
    move-object v13, v2

    .line 137
    invoke-static/range {v13 .. v19}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 138
    .line 139
    .line 140
    :goto_3
    return-object v12

    .line 141
    :pswitch_1
    move-object/from16 v1, p1

    .line 142
    .line 143
    check-cast v1, Lf1/s;

    .line 144
    .line 145
    move-object/from16 v2, p2

    .line 146
    .line 147
    check-cast v2, Ljava/lang/Number;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    and-int/2addr v2, v15

    .line 154
    if-ne v2, v14, :cond_5

    .line 155
    .line 156
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_4

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_4
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_5
    :goto_4
    invoke-virtual {v13}, Lf1/h1;->f()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, "\u79d2"

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v2, v11, v1, v10, v14}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 189
    .line 190
    .line 191
    invoke-static {v10, v1}, Lg5/a;->d(ILf1/s;)V

    .line 192
    .line 193
    .line 194
    :goto_5
    return-object v12

    .line 195
    :pswitch_2
    move-object/from16 v1, p1

    .line 196
    .line 197
    check-cast v1, Lf1/s;

    .line 198
    .line 199
    move-object/from16 v2, p2

    .line 200
    .line 201
    check-cast v2, Ljava/lang/Number;

    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    and-int/2addr v2, v15

    .line 208
    if-ne v2, v14, :cond_7

    .line 209
    .line 210
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-nez v2, :cond_6

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_6
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_8

    .line 221
    .line 222
    :cond_7
    :goto_6
    const-string v2, "\u5ef6\u8fdf\u6267\u884c"

    .line 223
    .line 224
    invoke-static {v2, v11, v1, v8, v14}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 225
    .line 226
    .line 227
    int-to-float v2, v8

    .line 228
    const/16 v19, 0x0

    .line 229
    .line 230
    const/16 v20, 0xd

    .line 231
    .line 232
    sget-object v15, Lr1/m;->a:Lr1/m;

    .line 233
    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    move/from16 v17, v2

    .line 239
    .line 240
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    sget-object v8, Ld0/h;->a:Ld0/b;

    .line 245
    .line 246
    sget-object v11, Lr1/c;->j:Lr1/g;

    .line 247
    .line 248
    invoke-static {v8, v11, v1, v10}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    iget-wide v9, v1, Lf1/s;->T:J

    .line 253
    .line 254
    ushr-long v17, v9, v7

    .line 255
    .line 256
    xor-long v9, v9, v17

    .line 257
    .line 258
    long-to-int v7, v9

    .line 259
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-static {v1, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    sget-object v10, Lq2/j;->d0:Lq2/i;

    .line 268
    .line 269
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    sget-object v10, Lq2/i;->b:Lq2/a0;

    .line 273
    .line 274
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 275
    .line 276
    .line 277
    iget-boolean v11, v1, Lf1/s;->S:Z

    .line 278
    .line 279
    if-eqz v11, :cond_8

    .line 280
    .line 281
    invoke-virtual {v1, v10}, Lf1/s;->k(Lf9/a;)V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_8
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 286
    .line 287
    .line 288
    :goto_7
    sget-object v10, Lq2/i;->e:Lq2/h;

    .line 289
    .line 290
    invoke-static {v1, v10, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    sget-object v8, Lq2/i;->d:Lq2/h;

    .line 294
    .line 295
    invoke-static {v1, v8, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    sget-object v8, Lq2/i;->f:Lq2/h;

    .line 299
    .line 300
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 301
    .line 302
    if-nez v9, :cond_9

    .line 303
    .line 304
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    invoke-static {v9, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    if-nez v9, :cond_a

    .line 317
    .line 318
    :cond_9
    invoke-static {v7, v1, v7, v8}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 319
    .line 320
    .line 321
    :cond_a
    sget-object v7, Lq2/i;->c:Lq2/h;

    .line 322
    .line 323
    invoke-static {v1, v7, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v13}, Lf1/h1;->f()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    int-to-float v2, v2

    .line 331
    new-instance v7, Ll9/a;

    .line 332
    .line 333
    const/high16 v8, 0x42700000    # 60.0f

    .line 334
    .line 335
    invoke-direct {v7, v6, v8}, Ll9/a;-><init>(FF)V

    .line 336
    .line 337
    .line 338
    int-to-float v5, v5

    .line 339
    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 340
    .line 341
    .line 342
    move-result-object v17

    .line 343
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    if-ne v4, v3, :cond_b

    .line 351
    .line 352
    new-instance v4, Lc8/c0;

    .line 353
    .line 354
    const/4 v3, 0x7

    .line 355
    invoke-direct {v4, v13, v3}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_b
    check-cast v4, Lf9/k;

    .line 362
    .line 363
    const/4 v3, 0x0

    .line 364
    invoke-virtual {v1, v3}, Lf1/s;->p(Z)V

    .line 365
    .line 366
    .line 367
    const v25, 0x301b0

    .line 368
    .line 369
    .line 370
    const/16 v26, 0x1c8

    .line 371
    .line 372
    const/16 v18, 0x0

    .line 373
    .line 374
    const/16 v20, 0x0

    .line 375
    .line 376
    const/16 v21, 0x0

    .line 377
    .line 378
    const/16 v22, 0x0

    .line 379
    .line 380
    const/16 v23, 0x0

    .line 381
    .line 382
    move-object/from16 v24, v1

    .line 383
    .line 384
    move v15, v2

    .line 385
    move-object/from16 v16, v4

    .line 386
    .line 387
    move-object/from16 v19, v7

    .line 388
    .line 389
    invoke-static/range {v15 .. v26}, Lc1/g2;->b(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;Lf1/s;II)V

    .line 390
    .line 391
    .line 392
    const/4 v2, 0x1

    .line 393
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 394
    .line 395
    .line 396
    :goto_8
    return-object v12

    .line 397
    :pswitch_3
    move-object/from16 v1, p1

    .line 398
    .line 399
    check-cast v1, Lf1/s;

    .line 400
    .line 401
    move-object/from16 v2, p2

    .line 402
    .line 403
    check-cast v2, Ljava/lang/Number;

    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    and-int/2addr v2, v15

    .line 410
    if-ne v2, v14, :cond_d

    .line 411
    .line 412
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-nez v2, :cond_c

    .line 417
    .line 418
    goto :goto_9

    .line 419
    :cond_c
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 420
    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_d
    :goto_9
    invoke-virtual {v13}, Lf1/h1;->f()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v2, "lux"

    .line 436
    .line 437
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    const/4 v3, 0x0

    .line 445
    invoke-static {v2, v11, v1, v3, v14}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 446
    .line 447
    .line 448
    invoke-static {v3, v1}, Lg5/a;->d(ILf1/s;)V

    .line 449
    .line 450
    .line 451
    :goto_a
    return-object v12

    .line 452
    :pswitch_4
    move-object/from16 v1, p1

    .line 453
    .line 454
    check-cast v1, Lf1/s;

    .line 455
    .line 456
    move-object/from16 v9, p2

    .line 457
    .line 458
    check-cast v9, Ljava/lang/Number;

    .line 459
    .line 460
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    and-int/2addr v9, v15

    .line 465
    if-ne v9, v14, :cond_f

    .line 466
    .line 467
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 468
    .line 469
    .line 470
    move-result v9

    .line 471
    if-nez v9, :cond_e

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_e
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_d

    .line 478
    .line 479
    :cond_f
    :goto_b
    invoke-static {v2, v11, v1, v8, v14}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 480
    .line 481
    .line 482
    int-to-float v2, v8

    .line 483
    const/16 v21, 0x0

    .line 484
    .line 485
    const/16 v22, 0xd

    .line 486
    .line 487
    sget-object v17, Lr1/m;->a:Lr1/m;

    .line 488
    .line 489
    const/16 v18, 0x0

    .line 490
    .line 491
    const/16 v20, 0x0

    .line 492
    .line 493
    move/from16 v19, v2

    .line 494
    .line 495
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    move-object/from16 v8, v17

    .line 500
    .line 501
    sget-object v9, Ld0/h;->a:Ld0/b;

    .line 502
    .line 503
    sget-object v10, Lr1/c;->j:Lr1/g;

    .line 504
    .line 505
    const/4 v11, 0x0

    .line 506
    invoke-static {v9, v10, v1, v11}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    iget-wide v10, v1, Lf1/s;->T:J

    .line 511
    .line 512
    ushr-long v17, v10, v7

    .line 513
    .line 514
    xor-long v10, v10, v17

    .line 515
    .line 516
    long-to-int v7, v10

    .line 517
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 518
    .line 519
    .line 520
    move-result-object v10

    .line 521
    invoke-static {v1, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    sget-object v11, Lq2/j;->d0:Lq2/i;

    .line 526
    .line 527
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 531
    .line 532
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 533
    .line 534
    .line 535
    iget-boolean v14, v1, Lf1/s;->S:Z

    .line 536
    .line 537
    if-eqz v14, :cond_10

    .line 538
    .line 539
    invoke-virtual {v1, v11}, Lf1/s;->k(Lf9/a;)V

    .line 540
    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_10
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 544
    .line 545
    .line 546
    :goto_c
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 547
    .line 548
    invoke-static {v1, v11, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    sget-object v9, Lq2/i;->d:Lq2/h;

    .line 552
    .line 553
    invoke-static {v1, v9, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    sget-object v9, Lq2/i;->f:Lq2/h;

    .line 557
    .line 558
    iget-boolean v10, v1, Lf1/s;->S:Z

    .line 559
    .line 560
    if-nez v10, :cond_11

    .line 561
    .line 562
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v10

    .line 566
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v10

    .line 574
    if-nez v10, :cond_12

    .line 575
    .line 576
    :cond_11
    invoke-static {v7, v1, v7, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 577
    .line 578
    .line 579
    :cond_12
    sget-object v7, Lq2/i;->c:Lq2/h;

    .line 580
    .line 581
    invoke-static {v1, v7, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v13}, Lf1/h1;->f()I

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    int-to-float v2, v2

    .line 589
    new-instance v7, Ll9/a;

    .line 590
    .line 591
    const/high16 v9, 0x43fa0000    # 500.0f

    .line 592
    .line 593
    invoke-direct {v7, v6, v9}, Ll9/a;-><init>(FF)V

    .line 594
    .line 595
    .line 596
    int-to-float v5, v5

    .line 597
    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 598
    .line 599
    .line 600
    move-result-object v17

    .line 601
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    if-ne v4, v3, :cond_13

    .line 609
    .line 610
    new-instance v4, Lc8/c0;

    .line 611
    .line 612
    invoke-direct {v4, v13, v15}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    :cond_13
    check-cast v4, Lf9/k;

    .line 619
    .line 620
    const/4 v3, 0x0

    .line 621
    invoke-virtual {v1, v3}, Lf1/s;->p(Z)V

    .line 622
    .line 623
    .line 624
    const v25, 0x301b0

    .line 625
    .line 626
    .line 627
    const/16 v26, 0x1c8

    .line 628
    .line 629
    const/16 v18, 0x0

    .line 630
    .line 631
    const/16 v20, 0x0

    .line 632
    .line 633
    const/16 v21, 0x0

    .line 634
    .line 635
    const/16 v22, 0x0

    .line 636
    .line 637
    const/16 v23, 0x0

    .line 638
    .line 639
    move-object/from16 v24, v1

    .line 640
    .line 641
    move v15, v2

    .line 642
    move-object/from16 v16, v4

    .line 643
    .line 644
    move-object/from16 v19, v7

    .line 645
    .line 646
    invoke-static/range {v15 .. v26}, Lc1/g2;->b(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;Lf1/s;II)V

    .line 647
    .line 648
    .line 649
    const/4 v2, 0x1

    .line 650
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 651
    .line 652
    .line 653
    :goto_d
    return-object v12

    .line 654
    :pswitch_5
    move-object/from16 v1, p1

    .line 655
    .line 656
    check-cast v1, Lf1/s;

    .line 657
    .line 658
    move-object/from16 v2, p2

    .line 659
    .line 660
    check-cast v2, Ljava/lang/Number;

    .line 661
    .line 662
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    and-int/2addr v2, v15

    .line 667
    if-ne v2, v14, :cond_15

    .line 668
    .line 669
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    if-nez v2, :cond_14

    .line 674
    .line 675
    goto :goto_e

    .line 676
    :cond_14
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 677
    .line 678
    .line 679
    goto :goto_f

    .line 680
    :cond_15
    :goto_e
    sget v2, Lc8/g0;->h:I

    .line 681
    .line 682
    invoke-virtual {v13}, Lf1/h1;->f()I

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    const-string v2, "nit"

    .line 695
    .line 696
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    const/4 v3, 0x0

    .line 704
    invoke-static {v2, v11, v1, v3, v14}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 705
    .line 706
    .line 707
    invoke-static {v3, v1}, Lg5/a;->d(ILf1/s;)V

    .line 708
    .line 709
    .line 710
    :goto_f
    return-object v12

    .line 711
    :pswitch_6
    move-object/from16 v1, p1

    .line 712
    .line 713
    check-cast v1, Lf1/s;

    .line 714
    .line 715
    move-object/from16 v9, p2

    .line 716
    .line 717
    check-cast v9, Ljava/lang/Number;

    .line 718
    .line 719
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 720
    .line 721
    .line 722
    move-result v9

    .line 723
    and-int/2addr v9, v15

    .line 724
    if-ne v9, v14, :cond_17

    .line 725
    .line 726
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 727
    .line 728
    .line 729
    move-result v9

    .line 730
    if-nez v9, :cond_16

    .line 731
    .line 732
    goto :goto_10

    .line 733
    :cond_16
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 734
    .line 735
    .line 736
    goto/16 :goto_13

    .line 737
    .line 738
    :cond_17
    :goto_10
    invoke-static {v2, v11, v1, v8, v14}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 739
    .line 740
    .line 741
    int-to-float v2, v8

    .line 742
    const/16 v21, 0x0

    .line 743
    .line 744
    const/16 v22, 0xd

    .line 745
    .line 746
    sget-object v17, Lr1/m;->a:Lr1/m;

    .line 747
    .line 748
    const/16 v18, 0x0

    .line 749
    .line 750
    const/16 v20, 0x0

    .line 751
    .line 752
    move/from16 v19, v2

    .line 753
    .line 754
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    move-object/from16 v8, v17

    .line 759
    .line 760
    sget-object v9, Ld0/h;->a:Ld0/b;

    .line 761
    .line 762
    sget-object v10, Lr1/c;->j:Lr1/g;

    .line 763
    .line 764
    const/4 v11, 0x0

    .line 765
    invoke-static {v9, v10, v1, v11}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 766
    .line 767
    .line 768
    move-result-object v9

    .line 769
    iget-wide v10, v1, Lf1/s;->T:J

    .line 770
    .line 771
    ushr-long v14, v10, v7

    .line 772
    .line 773
    xor-long/2addr v10, v14

    .line 774
    long-to-int v7, v10

    .line 775
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 776
    .line 777
    .line 778
    move-result-object v10

    .line 779
    invoke-static {v1, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    sget-object v11, Lq2/j;->d0:Lq2/i;

    .line 784
    .line 785
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 789
    .line 790
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 791
    .line 792
    .line 793
    iget-boolean v14, v1, Lf1/s;->S:Z

    .line 794
    .line 795
    if-eqz v14, :cond_18

    .line 796
    .line 797
    invoke-virtual {v1, v11}, Lf1/s;->k(Lf9/a;)V

    .line 798
    .line 799
    .line 800
    goto :goto_11

    .line 801
    :cond_18
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 802
    .line 803
    .line 804
    :goto_11
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 805
    .line 806
    invoke-static {v1, v11, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    sget-object v9, Lq2/i;->d:Lq2/h;

    .line 810
    .line 811
    invoke-static {v1, v9, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 812
    .line 813
    .line 814
    sget-object v9, Lq2/i;->f:Lq2/h;

    .line 815
    .line 816
    iget-boolean v10, v1, Lf1/s;->S:Z

    .line 817
    .line 818
    if-nez v10, :cond_19

    .line 819
    .line 820
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v10

    .line 824
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v11

    .line 828
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    move-result v10

    .line 832
    if-nez v10, :cond_1a

    .line 833
    .line 834
    :cond_19
    invoke-static {v7, v1, v7, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 835
    .line 836
    .line 837
    :cond_1a
    sget-object v7, Lq2/i;->c:Lq2/h;

    .line 838
    .line 839
    invoke-static {v1, v7, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 840
    .line 841
    .line 842
    sget v2, Lc8/g0;->h:I

    .line 843
    .line 844
    invoke-virtual {v13}, Lf1/h1;->f()I

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    int-to-float v15, v2

    .line 849
    new-instance v2, Ll9/a;

    .line 850
    .line 851
    const/high16 v7, 0x437f0000    # 255.0f

    .line 852
    .line 853
    invoke-direct {v2, v6, v7}, Ll9/a;-><init>(FF)V

    .line 854
    .line 855
    .line 856
    int-to-float v5, v5

    .line 857
    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 858
    .line 859
    .line 860
    move-result-object v17

    .line 861
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    if-ne v4, v3, :cond_1b

    .line 869
    .line 870
    new-instance v4, Lc8/c0;

    .line 871
    .line 872
    const/4 v3, 0x0

    .line 873
    invoke-direct {v4, v13, v3}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 877
    .line 878
    .line 879
    goto :goto_12

    .line 880
    :cond_1b
    const/4 v3, 0x0

    .line 881
    :goto_12
    move-object/from16 v16, v4

    .line 882
    .line 883
    check-cast v16, Lf9/k;

    .line 884
    .line 885
    invoke-virtual {v1, v3}, Lf1/s;->p(Z)V

    .line 886
    .line 887
    .line 888
    const v25, 0x301b0

    .line 889
    .line 890
    .line 891
    const/16 v26, 0x1c8

    .line 892
    .line 893
    const/16 v18, 0x0

    .line 894
    .line 895
    const/16 v20, 0x0

    .line 896
    .line 897
    const/16 v21, 0x0

    .line 898
    .line 899
    const/16 v22, 0x0

    .line 900
    .line 901
    const/16 v23, 0x0

    .line 902
    .line 903
    move-object/from16 v24, v1

    .line 904
    .line 905
    move-object/from16 v19, v2

    .line 906
    .line 907
    invoke-static/range {v15 .. v26}, Lc1/g2;->b(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;Lf1/s;II)V

    .line 908
    .line 909
    .line 910
    const/4 v2, 0x1

    .line 911
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 912
    .line 913
    .line 914
    :goto_13
    return-object v12

    .line 915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
