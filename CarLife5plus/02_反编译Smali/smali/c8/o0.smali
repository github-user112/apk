.class public final Lc8/o0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw1/o;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/h1;

.field public final synthetic f:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lw1/o;Lf1/b1;Lf1/b1;Lf1/h1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p6, p0, Lc8/o0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/o0;->b:Lw1/o;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/o0;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Lc8/o0;->d:Lf1/b1;

    .line 8
    .line 9
    iput-object p4, p0, Lc8/o0;->e:Lf1/h1;

    .line 10
    .line 11
    iput-object p5, p0, Lc8/o0;->f:Lf1/b1;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/o0;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Lf1/s;

    .line 16
    .line 17
    move-object/from16 v6, p2

    .line 18
    .line 19
    check-cast v6, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    and-int/lit8 v6, v6, 0x3

    .line 26
    .line 27
    if-ne v6, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    new-instance v6, Lc8/o0;

    .line 41
    .line 42
    iget-object v11, v0, Lc8/o0;->f:Lf1/b1;

    .line 43
    .line 44
    const/4 v12, 0x0

    .line 45
    iget-object v7, v0, Lc8/o0;->b:Lw1/o;

    .line 46
    .line 47
    iget-object v8, v0, Lc8/o0;->c:Lf1/b1;

    .line 48
    .line 49
    iget-object v9, v0, Lc8/o0;->d:Lf1/b1;

    .line 50
    .line 51
    iget-object v10, v0, Lc8/o0;->e:Lf1/h1;

    .line 52
    .line 53
    invoke-direct/range {v6 .. v12}, Lc8/o0;-><init>(Lw1/o;Lf1/b1;Lf1/b1;Lf1/h1;Lf1/b1;I)V

    .line 54
    .line 55
    .line 56
    const v4, 0x6c7cfe3f

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v6, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/16 v6, 0x30

    .line 64
    .line 65
    invoke-static {v3, v4, v1, v6, v5}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-object v2

    .line 69
    :pswitch_0
    move-object/from16 v13, p1

    .line 70
    .line 71
    check-cast v13, Lf1/s;

    .line 72
    .line 73
    move-object/from16 v1, p2

    .line 74
    .line 75
    check-cast v1, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    and-int/lit8 v1, v1, 0x3

    .line 82
    .line 83
    if-ne v1, v4, :cond_3

    .line 84
    .line 85
    invoke-virtual {v13}, Lf1/s;->z()Z

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
    invoke-virtual {v13}, Lf1/s;->Q()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_3
    :goto_2
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 98
    .line 99
    iget-object v6, v0, Lc8/o0;->b:Lw1/o;

    .line 100
    .line 101
    invoke-static {v1, v6}, Landroidx/compose/ui/focus/a;->a(Lr1/p;Lw1/o;)Lr1/p;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v1, v5, v3}, Landroidx/compose/foundation/a;->f(Lr1/p;ZLb0/k;)Lr1/p;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const v7, 0x4c5de2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13, v7}, Lf1/s;->W(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 120
    .line 121
    iget-object v10, v0, Lc8/o0;->c:Lf1/b1;

    .line 122
    .line 123
    if-ne v8, v9, :cond_4

    .line 124
    .line 125
    new-instance v8, Lba/j;

    .line 126
    .line 127
    invoke-direct {v8, v5, v10}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    check-cast v8, Lf9/k;

    .line 134
    .line 135
    const/4 v11, 0x0

    .line 136
    invoke-virtual {v13, v11}, Lf1/s;->p(Z)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v8}, Landroidx/compose/ui/input/key/a;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v1, v13, v11}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13, v7}, Lf1/s;->W(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-ne v1, v9, :cond_5

    .line 154
    .line 155
    new-instance v1, La8/k0;

    .line 156
    .line 157
    invoke-direct {v1, v6, v3, v4}, La8/k0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    check-cast v1, Lf9/n;

    .line 164
    .line 165
    invoke-virtual {v13, v11}, Lf1/s;->p(Z)V

    .line 166
    .line 167
    .line 168
    invoke-static {v13, v1, v2}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object v14, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 172
    .line 173
    const/4 v1, 0x4

    .line 174
    int-to-float v3, v1

    .line 175
    const/16 v17, 0x0

    .line 176
    .line 177
    const/16 v19, 0x5

    .line 178
    .line 179
    const/4 v15, 0x0

    .line 180
    move/from16 v18, v3

    .line 181
    .line 182
    move/from16 v16, v3

    .line 183
    .line 184
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v13, v7}, Lf1/s;->W(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    iget-object v12, v0, Lc8/o0;->d:Lf1/b1;

    .line 196
    .line 197
    if-ne v8, v9, :cond_6

    .line 198
    .line 199
    new-instance v8, La8/s0;

    .line 200
    .line 201
    invoke-direct {v8, v12, v1}, La8/s0;-><init>(Lf1/b1;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_6
    check-cast v8, Lf9/k;

    .line 208
    .line 209
    invoke-virtual {v13, v11}, Lf1/s;->p(Z)V

    .line 210
    .line 211
    .line 212
    invoke-static {v3, v8}, Landroidx/compose/ui/focus/a;->b(Lr1/p;Lf9/k;)Lr1/p;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    check-cast v8, Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v13, v7}, Lf1/s;->W(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v14

    .line 229
    if-ne v14, v9, :cond_7

    .line 230
    .line 231
    new-instance v14, La8/s0;

    .line 232
    .line 233
    const/4 v15, 0x5

    .line 234
    invoke-direct {v14, v10, v15}, La8/s0;-><init>(Lf1/b1;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v13, v14}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_7
    check-cast v14, Lf9/k;

    .line 241
    .line 242
    invoke-virtual {v13, v11}, Lf1/s;->p(Z)V

    .line 243
    .line 244
    .line 245
    sget-object v10, Lc8/d;->a:Ln1/c;

    .line 246
    .line 247
    new-instance v15, Lc8/s;

    .line 248
    .line 249
    invoke-direct {v15, v1, v6, v12}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    const v1, -0x4fab7b4a

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v15, v13}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    const/high16 v24, 0xc00000

    .line 260
    .line 261
    const v25, 0x7dfdb8

    .line 262
    .line 263
    .line 264
    move-object v12, v10

    .line 265
    const/4 v10, 0x0

    .line 266
    const/4 v6, 0x0

    .line 267
    const/4 v11, 0x0

    .line 268
    move-object v7, v8

    .line 269
    move-object v8, v14

    .line 270
    const v15, 0x4c5de2

    .line 271
    .line 272
    .line 273
    const/4 v14, 0x0

    .line 274
    const v16, 0x4c5de2

    .line 275
    .line 276
    .line 277
    const/4 v15, 0x0

    .line 278
    const v17, 0x4c5de2

    .line 279
    .line 280
    .line 281
    const/16 v16, 0x0

    .line 282
    .line 283
    const v18, 0x4c5de2

    .line 284
    .line 285
    .line 286
    const/16 v17, 0x1

    .line 287
    .line 288
    const v19, 0x4c5de2

    .line 289
    .line 290
    .line 291
    const/16 v18, 0x0

    .line 292
    .line 293
    const v20, 0x4c5de2

    .line 294
    .line 295
    .line 296
    const/16 v19, 0x0

    .line 297
    .line 298
    const v21, 0x4c5de2

    .line 299
    .line 300
    .line 301
    const/16 v20, 0x0

    .line 302
    .line 303
    const v22, 0x4c5de2

    .line 304
    .line 305
    .line 306
    const/16 v21, 0x0

    .line 307
    .line 308
    const v23, 0x30180030

    .line 309
    .line 310
    .line 311
    move-object/from16 v22, v13

    .line 312
    .line 313
    move-object v13, v1

    .line 314
    move-object v1, v9

    .line 315
    move-object v9, v3

    .line 316
    const v3, 0x4c5de2

    .line 317
    .line 318
    .line 319
    invoke-static/range {v7 .. v25}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 320
    .line 321
    .line 322
    move-object/from16 v13, v22

    .line 323
    .line 324
    const-string v7, "\u6309\u952e\u52a8\u4f5c"

    .line 325
    .line 326
    const-string v8, "\u9009\u62e9\u6309\u952e\u52a8\u4f5c"

    .line 327
    .line 328
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-static {v7}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    new-instance v8, Ljava/util/ArrayList;

    .line 337
    .line 338
    const/16 v9, 0xa

    .line 339
    .line 340
    sget-object v10, Lz7/a;->e:Lz8/b;

    .line 341
    .line 342
    invoke-static {v10, v9}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v10}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-eqz v10, :cond_8

    .line 358
    .line 359
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    check-cast v10, Lz7/a;

    .line 364
    .line 365
    new-instance v14, Lj8/k0;

    .line 366
    .line 367
    iget-object v15, v10, Lz7/a;->a:Ljava/lang/String;

    .line 368
    .line 369
    new-instance v11, Lj8/m0;

    .line 370
    .line 371
    iget v10, v10, Lz7/a;->b:I

    .line 372
    .line 373
    invoke-direct {v11, v10}, Lj8/m0;-><init>(I)V

    .line 374
    .line 375
    .line 376
    const/16 v19, 0x0

    .line 377
    .line 378
    const/16 v20, 0x1c

    .line 379
    .line 380
    const/16 v17, 0x0

    .line 381
    .line 382
    const/16 v18, 0x0

    .line 383
    .line 384
    move-object/from16 v16, v11

    .line 385
    .line 386
    invoke-direct/range {v14 .. v20}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_8
    invoke-virtual {v13, v3}, Lf1/s;->W(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    if-ne v9, v1, :cond_9

    .line 401
    .line 402
    new-instance v9, Lc8/c0;

    .line 403
    .line 404
    iget-object v10, v0, Lc8/o0;->e:Lf1/h1;

    .line 405
    .line 406
    invoke-direct {v9, v10, v5}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v13, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_9
    move-object v12, v9

    .line 413
    check-cast v12, Lf9/k;

    .line 414
    .line 415
    invoke-virtual {v13, v6}, Lf1/s;->p(Z)V

    .line 416
    .line 417
    .line 418
    const v14, 0x30006

    .line 419
    .line 420
    .line 421
    const/16 v15, 0x1c

    .line 422
    .line 423
    const/4 v9, 0x0

    .line 424
    const/4 v10, 0x0

    .line 425
    const/4 v11, 0x0

    .line 426
    invoke-static/range {v7 .. v15}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 427
    .line 428
    .line 429
    const-string v7, "\u6309\u952e\u62e6\u622a"

    .line 430
    .line 431
    const-string v8, "\u963b\u6b62\u5176\u4ed6\u4e8b\u4ef6\u6267\u884c"

    .line 432
    .line 433
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    invoke-static {v7}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    new-instance v14, Lj8/k0;

    .line 442
    .line 443
    new-instance v8, Lj8/l0;

    .line 444
    .line 445
    invoke-direct {v8, v5}, Lj8/l0;-><init>(Z)V

    .line 446
    .line 447
    .line 448
    const/16 v19, 0x0

    .line 449
    .line 450
    const/16 v20, 0x1c

    .line 451
    .line 452
    const-string v15, "\u62e6\u622a"

    .line 453
    .line 454
    const/16 v17, 0x0

    .line 455
    .line 456
    const/16 v18, 0x0

    .line 457
    .line 458
    move-object/from16 v16, v8

    .line 459
    .line 460
    invoke-direct/range {v14 .. v20}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 461
    .line 462
    .line 463
    new-instance v15, Lj8/k0;

    .line 464
    .line 465
    new-instance v8, Lj8/l0;

    .line 466
    .line 467
    invoke-direct {v8, v6}, Lj8/l0;-><init>(Z)V

    .line 468
    .line 469
    .line 470
    const/16 v20, 0x0

    .line 471
    .line 472
    const/16 v21, 0x1c

    .line 473
    .line 474
    const-string v16, "\u4e0d\u62e6\u622a"

    .line 475
    .line 476
    move-object/from16 v17, v8

    .line 477
    .line 478
    invoke-direct/range {v15 .. v21}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 479
    .line 480
    .line 481
    new-array v4, v4, [Lj8/k0;

    .line 482
    .line 483
    aput-object v14, v4, v6

    .line 484
    .line 485
    aput-object v15, v4, v5

    .line 486
    .line 487
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    invoke-virtual {v13, v3}, Lf1/s;->W(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    if-ne v3, v1, :cond_a

    .line 499
    .line 500
    new-instance v3, La8/s0;

    .line 501
    .line 502
    const/4 v1, 0x6

    .line 503
    iget-object v4, v0, Lc8/o0;->f:Lf1/b1;

    .line 504
    .line 505
    invoke-direct {v3, v4, v1}, La8/s0;-><init>(Lf1/b1;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v13, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    :cond_a
    move-object v12, v3

    .line 512
    check-cast v12, Lf9/k;

    .line 513
    .line 514
    invoke-virtual {v13, v6}, Lf1/s;->p(Z)V

    .line 515
    .line 516
    .line 517
    const v14, 0x36006

    .line 518
    .line 519
    .line 520
    const/16 v15, 0xc

    .line 521
    .line 522
    const/4 v9, 0x0

    .line 523
    const/4 v10, 0x0

    .line 524
    const/4 v11, 0x0

    .line 525
    invoke-static/range {v7 .. v15}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 526
    .line 527
    .line 528
    :goto_4
    return-object v2

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
