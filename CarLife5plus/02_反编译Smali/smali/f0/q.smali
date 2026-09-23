.class public final synthetic Lf0/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf0/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lf0/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v2, v1, Lf0/q;->a:I

    .line 6
    .line 7
    const-string v3, "element"

    .line 8
    .line 9
    const-string v4, "acc"

    .line 10
    .line 11
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x1

    .line 17
    packed-switch v2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v0, Lo1/a;

    .line 21
    .line 22
    move-object/from16 v0, p2

    .line 23
    .line 24
    check-cast v0, Lx/n1;

    .line 25
    .line 26
    iget-object v0, v0, Lx/n1;->a:Lf1/h1;

    .line 27
    .line 28
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_0
    check-cast v0, Lw8/h;

    .line 38
    .line 39
    move-object/from16 v2, p2

    .line 40
    .line 41
    check-cast v2, Lw8/f;

    .line 42
    .line 43
    invoke-static {v0, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Lw8/f;->getKey()Lw8/g;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v0, v3}, Lw8/h;->g(Lw8/g;)Lw8/h;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v3, Lw8/i;->a:Lw8/i;

    .line 58
    .line 59
    if-ne v0, v3, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    sget-object v4, Lw8/d;->a:Lw8/d;

    .line 63
    .line 64
    invoke-interface {v0, v4}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lw8/e;

    .line 69
    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    new-instance v3, Lw8/b;

    .line 73
    .line 74
    invoke-direct {v3, v2, v0}, Lw8/b;-><init>(Lw8/f;Lw8/h;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    move-object v2, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {v0, v4}, Lw8/h;->g(Lw8/g;)Lw8/h;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-ne v0, v3, :cond_2

    .line 84
    .line 85
    new-instance v0, Lw8/b;

    .line 86
    .line 87
    invoke-direct {v0, v5, v2}, Lw8/b;-><init>(Lw8/f;Lw8/h;)V

    .line 88
    .line 89
    .line 90
    move-object v2, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance v3, Lw8/b;

    .line 93
    .line 94
    new-instance v4, Lw8/b;

    .line 95
    .line 96
    invoke-direct {v4, v2, v0}, Lw8/b;-><init>(Lw8/f;Lw8/h;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v3, v5, v4}, Lw8/b;-><init>(Lw8/f;Lw8/h;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_1
    return-object v2

    .line 104
    :pswitch_1
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    move-object/from16 v2, p2

    .line 107
    .line 108
    check-cast v2, Lw8/f;

    .line 109
    .line 110
    invoke-static {v0, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_3

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, ", "

    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :goto_2
    return-object v0

    .line 148
    :pswitch_2
    check-cast v0, Lo1/a;

    .line 149
    .line 150
    move-object/from16 v0, p2

    .line 151
    .line 152
    check-cast v0, Lw0/c1;

    .line 153
    .line 154
    iget-object v0, v0, Lw0/c1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :pswitch_3
    check-cast v0, Lo1/a;

    .line 166
    .line 167
    return-object p2

    .line 168
    :pswitch_4
    check-cast v0, Lo1/a;

    .line 169
    .line 170
    move-object/from16 v0, p2

    .line 171
    .line 172
    check-cast v0, Lo1/d;

    .line 173
    .line 174
    iget-object v2, v0, Lo1/d;->a:Ljava/util/Map;

    .line 175
    .line 176
    iget-object v0, v0, Lo1/d;->b:Ls/h0;

    .line 177
    .line 178
    iget-object v3, v0, Ls/h0;->b:[Ljava/lang/Object;

    .line 179
    .line 180
    iget-object v4, v0, Ls/h0;->c:[Ljava/lang/Object;

    .line 181
    .line 182
    iget-object v0, v0, Ls/h0;->a:[J

    .line 183
    .line 184
    array-length v5, v0

    .line 185
    sub-int/2addr v5, v7

    .line 186
    if-ltz v5, :cond_8

    .line 187
    .line 188
    const/4 v7, 0x0

    .line 189
    :goto_3
    aget-wide v9, v0, v7

    .line 190
    .line 191
    not-long v11, v9

    .line 192
    const/4 v13, 0x7

    .line 193
    shl-long/2addr v11, v13

    .line 194
    and-long/2addr v11, v9

    .line 195
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    and-long/2addr v11, v13

    .line 201
    cmp-long v15, v11, v13

    .line 202
    .line 203
    if-eqz v15, :cond_7

    .line 204
    .line 205
    sub-int v11, v7, v5

    .line 206
    .line 207
    not-int v11, v11

    .line 208
    ushr-int/lit8 v11, v11, 0x1f

    .line 209
    .line 210
    const/16 v12, 0x8

    .line 211
    .line 212
    rsub-int/lit8 v11, v11, 0x8

    .line 213
    .line 214
    const/4 v13, 0x0

    .line 215
    :goto_4
    if-ge v13, v11, :cond_6

    .line 216
    .line 217
    const-wide/16 v14, 0xff

    .line 218
    .line 219
    and-long/2addr v14, v9

    .line 220
    const-wide/16 v16, 0x80

    .line 221
    .line 222
    cmp-long v18, v14, v16

    .line 223
    .line 224
    if-gez v18, :cond_5

    .line 225
    .line 226
    shl-int/lit8 v14, v7, 0x3

    .line 227
    .line 228
    add-int/2addr v14, v13

    .line 229
    aget-object v15, v3, v14

    .line 230
    .line 231
    aget-object v14, v4, v14

    .line 232
    .line 233
    check-cast v14, Lo1/f;

    .line 234
    .line 235
    invoke-interface {v14}, Lo1/f;->b()Ljava/util/Map;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v16

    .line 243
    if-eqz v16, :cond_4

    .line 244
    .line 245
    invoke-interface {v2, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_4
    invoke-interface {v2, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    :cond_5
    :goto_5
    shr-long/2addr v9, v12

    .line 253
    add-int/lit8 v13, v13, 0x1

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_6
    if-ne v11, v12, :cond_8

    .line 257
    .line 258
    :cond_7
    if-eq v7, v5, :cond_8

    .line 259
    .line 260
    add-int/lit8 v7, v7, 0x1

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_8
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_9

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_9
    move-object v6, v2

    .line 271
    :goto_6
    return-object v6

    .line 272
    :pswitch_5
    check-cast v0, Ly1/o;

    .line 273
    .line 274
    move-object/from16 v2, p2

    .line 275
    .line 276
    check-cast v2, Ln3/l;

    .line 277
    .line 278
    const-string v2, "<this>"

    .line 279
    .line 280
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-object v5

    .line 284
    :pswitch_6
    check-cast v0, Lo1/a;

    .line 285
    .line 286
    move-object/from16 v0, p2

    .line 287
    .line 288
    check-cast v0, Ll0/o1;

    .line 289
    .line 290
    iget-object v2, v0, Ll0/o1;->a:Lf1/g1;

    .line 291
    .line 292
    invoke-virtual {v2}, Lf1/g1;->f()F

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-object v0, v0, Ll0/o1;->f:Lf1/k1;

    .line 301
    .line 302
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Lz/w0;

    .line 307
    .line 308
    sget-object v3, Lz/w0;->a:Lz/w0;

    .line 309
    .line 310
    if-ne v0, v3, :cond_a

    .line 311
    .line 312
    const/4 v0, 0x1

    .line 313
    goto :goto_7

    .line 314
    :cond_a
    const/4 v0, 0x0

    .line 315
    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    new-array v3, v7, [Ljava/lang/Object;

    .line 320
    .line 321
    aput-object v2, v3, v8

    .line 322
    .line 323
    aput-object v0, v3, v9

    .line 324
    .line 325
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    return-object v0

    .line 330
    :pswitch_7
    check-cast v0, Lf1/s;

    .line 331
    .line 332
    move-object/from16 v2, p2

    .line 333
    .line 334
    check-cast v2, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-static {v9}, Lf1/b;->y(I)I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    invoke-static {v2, v0}, Lg5/a;->d(ILf1/s;)V

    .line 344
    .line 345
    .line 346
    return-object v5

    .line 347
    :pswitch_8
    check-cast v0, Lf1/s;

    .line 348
    .line 349
    move-object/from16 v2, p2

    .line 350
    .line 351
    check-cast v2, Ljava/lang/Integer;

    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-static {v9}, Lf1/b;->y(I)I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    invoke-static {v2, v0}, Lg5/a;->i(ILf1/s;)V

    .line 361
    .line 362
    .line 363
    return-object v5

    .line 364
    :pswitch_9
    check-cast v0, Lo1/a;

    .line 365
    .line 366
    move-object/from16 v0, p2

    .line 367
    .line 368
    check-cast v0, Lh0/o0;

    .line 369
    .line 370
    invoke-virtual {v0}, Lh0/o0;->b()Ljava/util/Map;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_b

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_b
    move-object v6, v0

    .line 382
    :goto_8
    return-object v6

    .line 383
    :pswitch_a
    check-cast v0, Lo1/a;

    .line 384
    .line 385
    move-object/from16 v0, p2

    .line 386
    .line 387
    check-cast v0, Lg0/u;

    .line 388
    .line 389
    iget-object v2, v0, Lg0/u;->d:Lf0/p;

    .line 390
    .line 391
    iget-object v2, v2, Lf0/p;->b:Lf1/h1;

    .line 392
    .line 393
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    iget-object v0, v0, Lg0/u;->d:Lf0/p;

    .line 402
    .line 403
    iget-object v0, v0, Lf0/p;->c:Lf1/h1;

    .line 404
    .line 405
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    new-array v3, v7, [Ljava/lang/Integer;

    .line 414
    .line 415
    aput-object v2, v3, v8

    .line 416
    .line 417
    aput-object v0, v3, v9

    .line 418
    .line 419
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    return-object v0

    .line 424
    :pswitch_b
    check-cast v0, Lg0/q;

    .line 425
    .line 426
    move-object/from16 v0, p2

    .line 427
    .line 428
    check-cast v0, Ljava/lang/Integer;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    int-to-long v2, v9

    .line 434
    new-instance v0, Lg0/b;

    .line 435
    .line 436
    invoke-direct {v0, v2, v3}, Lg0/b;-><init>(J)V

    .line 437
    .line 438
    .line 439
    return-object v0

    .line 440
    :pswitch_c
    check-cast v0, Lfc/v;

    .line 441
    .line 442
    move-object/from16 v2, p2

    .line 443
    .line 444
    check-cast v2, Lw8/f;

    .line 445
    .line 446
    return-object v0

    .line 447
    :pswitch_d
    check-cast v0, Lac/m1;

    .line 448
    .line 449
    move-object/from16 v2, p2

    .line 450
    .line 451
    check-cast v2, Lw8/f;

    .line 452
    .line 453
    if-eqz v0, :cond_c

    .line 454
    .line 455
    move-object v6, v0

    .line 456
    goto :goto_9

    .line 457
    :cond_c
    instance-of v0, v2, Lac/m1;

    .line 458
    .line 459
    if-eqz v0, :cond_d

    .line 460
    .line 461
    move-object v6, v2

    .line 462
    check-cast v6, Lac/m1;

    .line 463
    .line 464
    :cond_d
    :goto_9
    return-object v6

    .line 465
    :pswitch_e
    move-object/from16 v2, p2

    .line 466
    .line 467
    check-cast v2, Lw8/f;

    .line 468
    .line 469
    instance-of v3, v2, Lac/m1;

    .line 470
    .line 471
    if-eqz v3, :cond_11

    .line 472
    .line 473
    instance-of v3, v0, Ljava/lang/Integer;

    .line 474
    .line 475
    if-eqz v3, :cond_e

    .line 476
    .line 477
    move-object v6, v0

    .line 478
    check-cast v6, Ljava/lang/Integer;

    .line 479
    .line 480
    :cond_e
    if-eqz v6, :cond_f

    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    goto :goto_a

    .line 487
    :cond_f
    const/4 v0, 0x1

    .line 488
    :goto_a
    if-nez v0, :cond_10

    .line 489
    .line 490
    move-object v0, v2

    .line 491
    goto :goto_b

    .line 492
    :cond_10
    add-int/2addr v0, v9

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    :cond_11
    :goto_b
    return-object v0

    .line 498
    :pswitch_f
    check-cast v0, Lo1/a;

    .line 499
    .line 500
    move-object/from16 v0, p2

    .line 501
    .line 502
    check-cast v0, Lf0/u;

    .line 503
    .line 504
    iget-object v2, v0, Lf0/u;->e:Lf0/p;

    .line 505
    .line 506
    iget-object v2, v2, Lf0/p;->b:Lf1/h1;

    .line 507
    .line 508
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    iget-object v0, v0, Lf0/u;->e:Lf0/p;

    .line 517
    .line 518
    iget-object v0, v0, Lf0/p;->c:Lf1/h1;

    .line 519
    .line 520
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    new-array v3, v7, [Ljava/lang/Integer;

    .line 529
    .line 530
    aput-object v2, v3, v8

    .line 531
    .line 532
    aput-object v0, v3, v9

    .line 533
    .line 534
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    return-object v0

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
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
