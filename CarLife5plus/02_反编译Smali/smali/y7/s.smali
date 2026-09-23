.class public final Ly7/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly7/s;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/s;->b:Lf1/b1;

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
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly7/s;->a:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/16 v3, 0x30

    .line 7
    .line 8
    const v4, 0x4c5de2

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    sget-object v9, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    iget-object v10, v0, Ly7/s;->b:Lf1/b1;

    .line 19
    .line 20
    const/4 v11, 0x3

    .line 21
    const/4 v12, 0x2

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
    move-object/from16 v2, p2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    and-int/2addr v2, v11

    .line 38
    if-ne v2, v12, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

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
    new-instance v2, Ly7/s;

    .line 52
    .line 53
    const/4 v4, 0x5

    .line 54
    invoke-direct {v2, v10, v4}, Ly7/s;-><init>(Lf1/b1;I)V

    .line 55
    .line 56
    .line 57
    const v4, -0x2cfda8b1

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v5, v2, v1, v3, v7}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-object v9

    .line 68
    :pswitch_0
    move-object/from16 v16, p1

    .line 69
    .line 70
    check-cast v16, Lf1/s;

    .line 71
    .line 72
    move-object/from16 v1, p2

    .line 73
    .line 74
    check-cast v1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    and-int/2addr v1, v11

    .line 81
    if-ne v1, v12, :cond_3

    .line 82
    .line 83
    invoke-virtual/range {v16 .. v16}, Lf1/s;->z()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lf1/s;->Q()V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_3
    :goto_2
    const-string v1, "\u540e\u53f0\u5b9a\u4f4d"

    .line 96
    .line 97
    const-string v3, "\u53ef\u80fd\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 98
    .line 99
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {}, Lw6/a;->a()Ly6/a;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    new-array v13, v11, [Ly6/a;

    .line 120
    .line 121
    aput-object v1, v13, v8

    .line 122
    .line 123
    aput-object v3, v13, v7

    .line 124
    .line 125
    aput-object v5, v13, v12

    .line 126
    .line 127
    invoke-static {v13}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    const/16 v18, 0xc06

    .line 132
    .line 133
    const/16 v19, 0x4

    .line 134
    .line 135
    sget-object v13, Lu7/h;->a:Lu7/h;

    .line 136
    .line 137
    move-object/from16 v17, v16

    .line 138
    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    invoke-virtual/range {v13 .. v19}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v1, v17

    .line 145
    .line 146
    const-string v3, "WiFi\u5f00\u5173"

    .line 147
    .line 148
    const-string v5, "\u9009\u62e9WiFi\u5f00\u5173"

    .line 149
    .line 150
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    new-instance v13, Lj8/k0;

    .line 159
    .line 160
    new-instance v15, Lj8/l0;

    .line 161
    .line 162
    invoke-direct {v15, v7}, Lj8/l0;-><init>(Z)V

    .line 163
    .line 164
    .line 165
    const/16 v18, 0x0

    .line 166
    .line 167
    const/16 v19, 0x1c

    .line 168
    .line 169
    const-string v14, "\u6253\u5f00WiFi"

    .line 170
    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    const/16 v17, 0x0

    .line 174
    .line 175
    invoke-direct/range {v13 .. v19}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 176
    .line 177
    .line 178
    new-instance v14, Lj8/k0;

    .line 179
    .line 180
    new-instance v5, Lj8/l0;

    .line 181
    .line 182
    invoke-direct {v5, v8}, Lj8/l0;-><init>(Z)V

    .line 183
    .line 184
    .line 185
    const/16 v19, 0x0

    .line 186
    .line 187
    const/16 v20, 0x1c

    .line 188
    .line 189
    const-string v15, "\u5173\u95edWiFi"

    .line 190
    .line 191
    move-object/from16 v16, v5

    .line 192
    .line 193
    invoke-direct/range {v14 .. v20}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 194
    .line 195
    .line 196
    new-array v5, v12, [Lj8/k0;

    .line 197
    .line 198
    aput-object v13, v5, v8

    .line 199
    .line 200
    aput-object v14, v5, v7

    .line 201
    .line 202
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    if-ne v4, v6, :cond_4

    .line 214
    .line 215
    new-instance v4, Ly7/y;

    .line 216
    .line 217
    invoke-direct {v4, v10, v11}, Ly7/y;-><init>(Lf1/b1;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    move-object v15, v4

    .line 224
    check-cast v15, Lf9/k;

    .line 225
    .line 226
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 227
    .line 228
    .line 229
    const v17, 0x30006

    .line 230
    .line 231
    .line 232
    const/16 v18, 0x1c

    .line 233
    .line 234
    const/4 v12, 0x0

    .line 235
    const/4 v13, 0x0

    .line 236
    const/4 v14, 0x0

    .line 237
    move-object/from16 v16, v1

    .line 238
    .line 239
    move-object v10, v3

    .line 240
    move-object v11, v5

    .line 241
    invoke-static/range {v10 .. v18}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 242
    .line 243
    .line 244
    const-string v3, "\u5b89\u53539\u4ee5\u4e0a\u7cfb\u7edf\u53ef\u80fd\u65e0\u6548"

    .line 245
    .line 246
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v3, v1, v2}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 251
    .line 252
    .line 253
    :goto_3
    return-object v9

    .line 254
    :pswitch_1
    move-object/from16 v1, p1

    .line 255
    .line 256
    check-cast v1, Lf1/s;

    .line 257
    .line 258
    move-object/from16 v2, p2

    .line 259
    .line 260
    check-cast v2, Ljava/lang/Number;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    and-int/2addr v2, v11

    .line 267
    if-ne v2, v12, :cond_6

    .line 268
    .line 269
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_5

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_5
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 277
    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_6
    :goto_4
    new-instance v2, Ly7/s;

    .line 281
    .line 282
    invoke-direct {v2, v10, v11}, Ly7/s;-><init>(Lf1/b1;I)V

    .line 283
    .line 284
    .line 285
    const v4, 0x69e6b36d

    .line 286
    .line 287
    .line 288
    invoke-static {v4, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-static {v5, v2, v1, v3, v7}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 293
    .line 294
    .line 295
    :goto_5
    return-object v9

    .line 296
    :pswitch_2
    move-object/from16 v1, p1

    .line 297
    .line 298
    check-cast v1, Lf1/s;

    .line 299
    .line 300
    move-object/from16 v3, p2

    .line 301
    .line 302
    check-cast v3, Ljava/lang/Number;

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    and-int/2addr v3, v11

    .line 309
    if-ne v3, v12, :cond_8

    .line 310
    .line 311
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-nez v3, :cond_7

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_7
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_8
    :goto_6
    sget-object v13, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 323
    .line 324
    const/4 v3, 0x4

    .line 325
    int-to-float v15, v3

    .line 326
    int-to-float v3, v8

    .line 327
    const/16 v18, 0x5

    .line 328
    .line 329
    const/4 v14, 0x0

    .line 330
    const/16 v16, 0x0

    .line 331
    .line 332
    move/from16 v17, v3

    .line 333
    .line 334
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    if-ne v4, v6, :cond_9

    .line 352
    .line 353
    new-instance v4, Ly7/y;

    .line 354
    .line 355
    invoke-direct {v4, v10, v12}, Ly7/y;-><init>(Lf1/b1;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_9
    move-object v11, v4

    .line 362
    check-cast v11, Lf9/k;

    .line 363
    .line 364
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 365
    .line 366
    .line 367
    sget-object v15, Ly7/g;->a:Ln1/c;

    .line 368
    .line 369
    new-instance v4, Ly7/s;

    .line 370
    .line 371
    invoke-direct {v4, v10, v12}, Ly7/s;-><init>(Lf1/b1;I)V

    .line 372
    .line 373
    .line 374
    const v6, 0x4abe9856    # 6245419.0f

    .line 375
    .line 376
    .line 377
    invoke-static {v6, v4, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 378
    .line 379
    .line 380
    move-result-object v16

    .line 381
    const/high16 v27, 0x6000000

    .line 382
    .line 383
    const v28, 0x7bfdb8

    .line 384
    .line 385
    .line 386
    const/4 v13, 0x0

    .line 387
    const/4 v14, 0x0

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
    const/16 v20, 0x0

    .line 395
    .line 396
    const/16 v21, 0x5

    .line 397
    .line 398
    const/16 v22, 0x0

    .line 399
    .line 400
    const/16 v23, 0x0

    .line 401
    .line 402
    const/16 v24, 0x0

    .line 403
    .line 404
    const v26, 0x301801b0

    .line 405
    .line 406
    .line 407
    move-object/from16 v25, v1

    .line 408
    .line 409
    move-object v12, v3

    .line 410
    move-object v10, v5

    .line 411
    invoke-static/range {v10 .. v28}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 412
    .line 413
    .line 414
    const-string v3, "\u53d1\u9001\u4e00\u4e2a\u7f51\u7edc\u8bf7\u6c42"

    .line 415
    .line 416
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-static {v3, v1, v2}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 421
    .line 422
    .line 423
    :goto_7
    return-object v9

    .line 424
    :pswitch_3
    move-object/from16 v1, p1

    .line 425
    .line 426
    check-cast v1, Lf1/s;

    .line 427
    .line 428
    move-object/from16 v2, p2

    .line 429
    .line 430
    check-cast v2, Ljava/lang/Number;

    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    and-int/2addr v2, v11

    .line 437
    if-ne v2, v12, :cond_b

    .line 438
    .line 439
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-nez v2, :cond_a

    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 447
    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_b
    :goto_8
    const v2, -0x615d173a

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    if-ne v2, v6, :cond_c

    .line 461
    .line 462
    new-instance v2, Lu7/e;

    .line 463
    .line 464
    const/16 v3, 0x11

    .line 465
    .line 466
    invoke-direct {v2, v10, v3}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :cond_c
    move-object v10, v2

    .line 473
    check-cast v10, Lf9/a;

    .line 474
    .line 475
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 476
    .line 477
    .line 478
    const/4 v2, -0x8

    .line 479
    int-to-float v2, v2

    .line 480
    invoke-static {v2}, Landroidx/compose/foundation/layout/a;->f(F)Lr1/p;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    sget-object v17, Ly7/g;->b:Ln1/c;

    .line 485
    .line 486
    const v19, 0x30000036

    .line 487
    .line 488
    .line 489
    const/4 v12, 0x0

    .line 490
    const/4 v13, 0x0

    .line 491
    const/4 v14, 0x0

    .line 492
    const/4 v15, 0x0

    .line 493
    const/16 v16, 0x0

    .line 494
    .line 495
    move-object/from16 v18, v1

    .line 496
    .line 497
    invoke-static/range {v10 .. v19}, Lc1/g1;->c(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;Lf1/s;I)V

    .line 498
    .line 499
    .line 500
    :goto_9
    return-object v9

    .line 501
    :pswitch_4
    move-object/from16 v1, p1

    .line 502
    .line 503
    check-cast v1, Lf1/s;

    .line 504
    .line 505
    move-object/from16 v2, p2

    .line 506
    .line 507
    check-cast v2, Ljava/lang/Number;

    .line 508
    .line 509
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    and-int/2addr v2, v11

    .line 514
    if-ne v2, v12, :cond_e

    .line 515
    .line 516
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-nez v2, :cond_d

    .line 521
    .line 522
    goto :goto_a

    .line 523
    :cond_d
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 524
    .line 525
    .line 526
    goto :goto_b

    .line 527
    :cond_e
    :goto_a
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    if-nez v3, :cond_f

    .line 538
    .line 539
    const-string v2, "\u9009\u62e9"

    .line 540
    .line 541
    :cond_f
    invoke-static {v2, v5, v1, v8, v12}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 542
    .line 543
    .line 544
    invoke-static {v8, v1}, Lg5/a;->d(ILf1/s;)V

    .line 545
    .line 546
    .line 547
    :goto_b
    return-object v9

    .line 548
    :pswitch_5
    move-object/from16 v1, p1

    .line 549
    .line 550
    check-cast v1, Lf1/s;

    .line 551
    .line 552
    move-object/from16 v2, p2

    .line 553
    .line 554
    check-cast v2, Ljava/lang/Number;

    .line 555
    .line 556
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    and-int/2addr v2, v11

    .line 561
    if-ne v2, v12, :cond_11

    .line 562
    .line 563
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-nez v2, :cond_10

    .line 568
    .line 569
    goto :goto_c

    .line 570
    :cond_10
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 571
    .line 572
    .line 573
    goto :goto_d

    .line 574
    :cond_11
    :goto_c
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    if-ne v2, v6, :cond_12

    .line 582
    .line 583
    new-instance v2, Lu7/e;

    .line 584
    .line 585
    const/16 v3, 0xf

    .line 586
    .line 587
    invoke-direct {v2, v10, v3}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    :cond_12
    check-cast v2, Lf9/a;

    .line 594
    .line 595
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 596
    .line 597
    .line 598
    const/16 v3, 0x36

    .line 599
    .line 600
    const-string v4, "\u4e0a\u4f20"

    .line 601
    .line 602
    invoke-static {v4, v2, v1, v3}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 603
    .line 604
    .line 605
    :goto_d
    return-object v9

    .line 606
    nop

    .line 607
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
