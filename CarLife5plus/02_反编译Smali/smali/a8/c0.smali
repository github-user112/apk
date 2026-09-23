.class public final La8/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La8/c0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La8/c0;->b:Ljava/lang/Object;

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
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/c0;->a:I

    .line 4
    .line 5
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    iget-object v7, v0, La8/c0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Lf1/s;

    .line 21
    .line 22
    move-object/from16 v2, p2

    .line 23
    .line 24
    check-cast v2, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    check-cast v7, Lr7/g;

    .line 31
    .line 32
    and-int/lit8 v2, v2, 0x3

    .line 33
    .line 34
    if-ne v2, v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v7}, Lr7/g;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2, v3, v1, v8, v6}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v7}, Lr7/g;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2, v1, v8}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-object v5

    .line 62
    :pswitch_0
    move-object/from16 v1, p1

    .line 63
    .line 64
    check-cast v1, Lf1/s;

    .line 65
    .line 66
    move-object/from16 v2, p2

    .line 67
    .line 68
    check-cast v2, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    const v2, -0x520d2714

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 77
    .line 78
    .line 79
    check-cast v7, Landroid/app/RemoteAction;

    .line 80
    .line 81
    invoke-static {v7}, Lq0/o;->j(Landroid/app/RemoteAction;)Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :pswitch_1
    move-object/from16 v1, p1

    .line 94
    .line 95
    check-cast v1, Lf1/s;

    .line 96
    .line 97
    move-object/from16 v2, p2

    .line 98
    .line 99
    check-cast v2, Ljava/lang/Number;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 102
    .line 103
    .line 104
    const v2, 0x38a0c7d5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 108
    .line 109
    .line 110
    check-cast v7, Landroid/view/textclassifier/TextClassification;

    .line 111
    .line 112
    invoke-static {v7}, Lq0/o;->l(Landroid/view/textclassifier/TextClassification;)Ljava/lang/CharSequence;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 121
    .line 122
    .line 123
    return-object v2

    .line 124
    :pswitch_2
    move-object/from16 v1, p1

    .line 125
    .line 126
    check-cast v1, Lf1/s;

    .line 127
    .line 128
    move-object/from16 v2, p2

    .line 129
    .line 130
    check-cast v2, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 133
    .line 134
    .line 135
    const v2, 0x27b3a34e

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 139
    .line 140
    .line 141
    check-cast v7, Lo0/d;

    .line 142
    .line 143
    iget-object v2, v7, Lo0/d;->b:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 146
    .line 147
    .line 148
    return-object v2

    .line 149
    :pswitch_3
    move-object/from16 v15, p1

    .line 150
    .line 151
    check-cast v15, Lf1/s;

    .line 152
    .line 153
    move-object/from16 v1, p2

    .line 154
    .line 155
    check-cast v1, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    check-cast v7, Landroid/app/Activity;

    .line 162
    .line 163
    and-int/lit8 v1, v1, 0x3

    .line 164
    .line 165
    if-ne v1, v6, :cond_3

    .line 166
    .line 167
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_2

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_3

    .line 178
    .line 179
    :cond_3
    :goto_2
    const-string v1, "\u97f3\u9891\u4f20\u8f93\u901a\u9053"

    .line 180
    .line 181
    const-string v3, "\u624b\u673a\u5411\u8f66\u673a\u4f20\u8f93\u7684\u97f3\u9891\u6d41\u901a\u9053"

    .line 182
    .line 183
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    new-instance v16, Lj8/k0;

    .line 192
    .line 193
    new-instance v1, Lj8/m0;

    .line 194
    .line 195
    invoke-direct {v1, v8}, Lj8/m0;-><init>(I)V

    .line 196
    .line 197
    .line 198
    const/16 v21, 0x0

    .line 199
    .line 200
    const/16 v22, 0x1c

    .line 201
    .line 202
    const-string v17, "\u4e92\u8054\u901a\u9053"

    .line 203
    .line 204
    const/16 v19, 0x0

    .line 205
    .line 206
    const/16 v20, 0x0

    .line 207
    .line 208
    move-object/from16 v18, v1

    .line 209
    .line 210
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 211
    .line 212
    .line 213
    new-instance v17, Lj8/k0;

    .line 214
    .line 215
    new-instance v1, Lj8/m0;

    .line 216
    .line 217
    invoke-direct {v1, v4}, Lj8/m0;-><init>(I)V

    .line 218
    .line 219
    .line 220
    const/16 v22, 0x0

    .line 221
    .line 222
    const/16 v23, 0x1c

    .line 223
    .line 224
    const-string v18, "\u84dd\u7259\u901a\u9053"

    .line 225
    .line 226
    move-object/from16 v19, v1

    .line 227
    .line 228
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 229
    .line 230
    .line 231
    new-array v1, v6, [Lj8/k0;

    .line 232
    .line 233
    aput-object v16, v1, v8

    .line 234
    .line 235
    aput-object v17, v1, v4

    .line 236
    .line 237
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    const/16 v16, 0x1c6

    .line 242
    .line 243
    const/16 v17, 0x38

    .line 244
    .line 245
    const-string v11, "AUDIO_TRANSMISSION_MODE"

    .line 246
    .line 247
    const/4 v12, 0x0

    .line 248
    const/4 v13, 0x0

    .line 249
    const/4 v14, 0x0

    .line 250
    invoke-static/range {v9 .. v17}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 251
    .line 252
    .line 253
    const-string v1, "\u9ea6\u514b\u98ce\u9009\u62e9"

    .line 254
    .line 255
    const-string v3, "\u8bed\u97f3\u9ea6\u514b\u98ce\u9009\u62e9"

    .line 256
    .line 257
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    new-instance v1, Lj8/m0;

    .line 266
    .line 267
    invoke-direct {v1, v8}, Lj8/m0;-><init>(I)V

    .line 268
    .line 269
    .line 270
    const v3, 0x4c5de2

    .line 271
    .line 272
    .line 273
    invoke-virtual {v15, v3}, Lf1/s;->W(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v15, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    if-nez v3, :cond_4

    .line 285
    .line 286
    if-ne v10, v2, :cond_5

    .line 287
    .line 288
    :cond_4
    new-instance v10, Lk7/g;

    .line 289
    .line 290
    invoke-direct {v10, v7, v8}, Lk7/g;-><init>(Landroid/app/Activity;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_5
    move-object/from16 v21, v10

    .line 297
    .line 298
    check-cast v21, Lf9/a;

    .line 299
    .line 300
    invoke-virtual {v15, v8}, Lf1/s;->p(Z)V

    .line 301
    .line 302
    .line 303
    new-instance v16, Lj8/k0;

    .line 304
    .line 305
    const-string v17, "\u8f66\u673a\u9ea6\u514b\u98ce"

    .line 306
    .line 307
    const/16 v19, 0x0

    .line 308
    .line 309
    const/16 v20, 0x0

    .line 310
    .line 311
    const/16 v22, 0xc

    .line 312
    .line 313
    move-object/from16 v18, v1

    .line 314
    .line 315
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 316
    .line 317
    .line 318
    new-instance v17, Lj8/k0;

    .line 319
    .line 320
    new-instance v1, Lj8/m0;

    .line 321
    .line 322
    invoke-direct {v1, v4}, Lj8/m0;-><init>(I)V

    .line 323
    .line 324
    .line 325
    const/16 v22, 0x0

    .line 326
    .line 327
    const/16 v23, 0x1c

    .line 328
    .line 329
    const-string v18, "\u624b\u673a\u9ea6\u514b\u98ce"

    .line 330
    .line 331
    const/16 v21, 0x0

    .line 332
    .line 333
    move-object/from16 v19, v1

    .line 334
    .line 335
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 336
    .line 337
    .line 338
    new-array v1, v6, [Lj8/k0;

    .line 339
    .line 340
    aput-object v16, v1, v8

    .line 341
    .line 342
    aput-object v17, v1, v4

    .line 343
    .line 344
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    new-instance v1, Lj8/m0;

    .line 349
    .line 350
    invoke-direct {v1, v4}, Lj8/m0;-><init>(I)V

    .line 351
    .line 352
    .line 353
    new-instance v11, Lr8/j;

    .line 354
    .line 355
    const-string v2, "VOICE_MIC"

    .line 356
    .line 357
    invoke-direct {v11, v2, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    const/16 v16, 0x46

    .line 361
    .line 362
    const/16 v17, 0x38

    .line 363
    .line 364
    const/4 v12, 0x0

    .line 365
    const/4 v13, 0x0

    .line 366
    const/4 v14, 0x0

    .line 367
    invoke-static/range {v9 .. v17}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

    .line 368
    .line 369
    .line 370
    const-string v1, "\u91cd\u542fCarLife\u751f\u6548"

    .line 371
    .line 372
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    const/4 v2, 0x6

    .line 377
    invoke-static {v1, v15, v2}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 378
    .line 379
    .line 380
    :goto_3
    return-object v5

    .line 381
    :pswitch_4
    move-object/from16 v1, p1

    .line 382
    .line 383
    check-cast v1, Lf1/s;

    .line 384
    .line 385
    move-object/from16 v2, p2

    .line 386
    .line 387
    check-cast v2, Ljava/lang/Number;

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    and-int/lit8 v7, v2, 0x3

    .line 394
    .line 395
    if-eq v7, v6, :cond_6

    .line 396
    .line 397
    const/4 v8, 0x1

    .line 398
    :cond_6
    and-int/2addr v2, v4

    .line 399
    invoke-virtual {v1, v2, v8}, Lf1/s;->N(IZ)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-nez v2, :cond_7

    .line 404
    .line 405
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 406
    .line 407
    .line 408
    return-object v5

    .line 409
    :cond_7
    throw v3

    .line 410
    :pswitch_5
    move-object/from16 v1, p1

    .line 411
    .line 412
    check-cast v1, Lf1/s;

    .line 413
    .line 414
    move-object/from16 v9, p2

    .line 415
    .line 416
    check-cast v9, Ljava/lang/Number;

    .line 417
    .line 418
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    check-cast v7, Lz7/b2;

    .line 423
    .line 424
    and-int/lit8 v9, v9, 0x3

    .line 425
    .line 426
    if-ne v9, v6, :cond_9

    .line 427
    .line 428
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 429
    .line 430
    .line 431
    move-result v9

    .line 432
    if-nez v9, :cond_8

    .line 433
    .line 434
    goto :goto_4

    .line 435
    :cond_8
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 436
    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_9
    :goto_4
    iget-object v9, v7, Lz7/b2;->b:Ljava/lang/String;

    .line 440
    .line 441
    invoke-static {v9, v3, v1, v8, v6}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 442
    .line 443
    .line 444
    iget-object v10, v7, Lz7/b2;->c:Ljava/util/List;

    .line 445
    .line 446
    const v3, 0x6e3c21fe

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    if-ne v6, v2, :cond_a

    .line 457
    .line 458
    new-instance v6, La8/v0;

    .line 459
    .line 460
    invoke-direct {v6, v8}, La8/v0;-><init>(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_a
    move-object v14, v6

    .line 467
    check-cast v14, Lf9/k;

    .line 468
    .line 469
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 470
    .line 471
    .line 472
    const/16 v15, 0x1e

    .line 473
    .line 474
    const-string v11, " \u2192 "

    .line 475
    .line 476
    const/4 v12, 0x0

    .line 477
    const/4 v13, 0x0

    .line 478
    invoke-static/range {v10 .. v15}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    new-instance v9, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    const-string v10, "\u89e6\u53d1: "

    .line 485
    .line 486
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    invoke-static {v6, v1, v8}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 497
    .line 498
    .line 499
    iget-object v9, v7, Lz7/b2;->d:Ljava/util/List;

    .line 500
    .line 501
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    if-ne v3, v2, :cond_b

    .line 509
    .line 510
    new-instance v3, La8/v0;

    .line 511
    .line 512
    invoke-direct {v3, v4}, La8/v0;-><init>(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    :cond_b
    move-object v13, v3

    .line 519
    check-cast v13, Lf9/k;

    .line 520
    .line 521
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 522
    .line 523
    .line 524
    const/16 v14, 0x1e

    .line 525
    .line 526
    const-string v10, " \u2192 "

    .line 527
    .line 528
    const/4 v11, 0x0

    .line 529
    const/4 v12, 0x0

    .line 530
    invoke-static/range {v9 .. v14}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v4, "\u6267\u884c: "

    .line 537
    .line 538
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    invoke-static {v2, v1, v8}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 549
    .line 550
    .line 551
    :goto_5
    return-object v5

    .line 552
    :pswitch_6
    move-object/from16 v1, p1

    .line 553
    .line 554
    check-cast v1, Lf1/s;

    .line 555
    .line 556
    move-object/from16 v2, p2

    .line 557
    .line 558
    check-cast v2, Ljava/lang/Number;

    .line 559
    .line 560
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    check-cast v7, Lz7/a2;

    .line 565
    .line 566
    and-int/lit8 v2, v2, 0x3

    .line 567
    .line 568
    if-ne v2, v6, :cond_d

    .line 569
    .line 570
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-nez v2, :cond_c

    .line 575
    .line 576
    goto :goto_6

    .line 577
    :cond_c
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 578
    .line 579
    .line 580
    goto :goto_7

    .line 581
    :cond_d
    :goto_6
    iget-object v2, v7, Lz7/a2;->b:Ljava/lang/String;

    .line 582
    .line 583
    invoke-static {v2, v3, v1, v8, v6}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 584
    .line 585
    .line 586
    iget-object v2, v7, Lz7/a2;->c:Ljava/lang/String;

    .line 587
    .line 588
    invoke-static {v2, v1, v8}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 589
    .line 590
    .line 591
    :goto_7
    return-object v5

    .line 592
    nop

    .line 593
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
