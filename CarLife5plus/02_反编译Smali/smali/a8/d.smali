.class public final synthetic La8/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, La8/d;->a:I

    iput-object p3, p0, La8/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, La8/d;->a:I

    iput-object p2, p0, La8/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget v2, v1, La8/d;->a:I

    .line 6
    .line 7
    const/16 v7, 0x8

    .line 8
    .line 9
    const/4 v10, 0x2

    .line 10
    const-wide v11, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/16 v13, 0x20

    .line 16
    .line 17
    const/4 v14, 0x0

    .line 18
    const/4 v15, 0x7

    .line 19
    const-wide/16 v16, 0x80

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    packed-switch v2, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lo2/w;

    .line 29
    .line 30
    move-object/from16 v3, p1

    .line 31
    .line 32
    check-cast v3, Lw0/p;

    .line 33
    .line 34
    check-cast v0, Lw0/p;

    .line 35
    .line 36
    invoke-virtual {v3}, Lw0/p;->c()Lo2/w;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0}, Lw0/p;->c()Lo2/w;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-interface {v2, v3, v4, v5}, Lo2/w;->p(Lo2/w;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-wide v6, v4

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {v2, v0, v4, v5}, Lo2/w;->p(Lo2/w;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    :cond_1
    and-long v2, v6, v11

    .line 61
    .line 62
    long-to-int v0, v2

    .line 63
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    and-long v8, v4, v11

    .line 68
    .line 69
    long-to-int v3, v8

    .line 70
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    cmpg-float v2, v2, v8

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    shr-long v2, v6, v13

    .line 79
    .line 80
    long-to-int v0, v2

    .line 81
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    shr-long v2, v4, v13

    .line 90
    .line 91
    long-to-int v3, v2

    .line 92
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v0, v2}, Lp9/l;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v0, v2}, Lp9/l;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0

    .line 130
    :pswitch_0
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Lw0/w0;

    .line 133
    .line 134
    move-object/from16 v3, p1

    .line 135
    .line 136
    check-cast v3, Ln0/a;

    .line 137
    .line 138
    move-object v4, v0

    .line 139
    check-cast v4, Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {v2}, Lw0/w0;->e()Lr8/j;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_3

    .line 146
    .line 147
    iget-object v5, v0, Lr8/j;->a:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v5, Lb3/g;

    .line 150
    .line 151
    move-object v6, v5

    .line 152
    goto :goto_2

    .line 153
    :cond_3
    move-object v6, v14

    .line 154
    :goto_2
    if-eqz v0, :cond_4

    .line 155
    .line 156
    iget-object v0, v0, Lr8/j;->b:Ljava/lang/Object;

    .line 157
    .line 158
    move-object v14, v0

    .line 159
    check-cast v14, Lb3/n0;

    .line 160
    .line 161
    :cond_4
    move-object v7, v14

    .line 162
    iget-object v8, v2, Lw0/w0;->w:Lw0/t;

    .line 163
    .line 164
    new-instance v9, La8/v;

    .line 165
    .line 166
    const/16 v0, 0x16

    .line 167
    .line 168
    invoke-direct {v9, v0, v2, v4}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const/4 v5, 0x0

    .line 172
    invoke-static/range {v3 .. v9}, Lw0/v;->a(Ln0/a;Landroid/content/Context;ZLjava/lang/CharSequence;Lb3/n0;Lw0/t;Lf9/k;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 176
    .line 177
    return-object v0

    .line 178
    :pswitch_1
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v2, Lv7/g;

    .line 181
    .line 182
    move-object/from16 v3, p1

    .line 183
    .line 184
    check-cast v3, Lf1/s;

    .line 185
    .line 186
    check-cast v0, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {v2, v0, v3}, Lv7/g;->a(ILf1/s;)V

    .line 196
    .line 197
    .line 198
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 199
    .line 200
    return-object v0

    .line 201
    :pswitch_2
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v2, Lv7/c;

    .line 204
    .line 205
    move-object/from16 v3, p1

    .line 206
    .line 207
    check-cast v3, Lf1/s;

    .line 208
    .line 209
    check-cast v0, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-virtual {v2, v0, v3}, Lv7/c;->i(ILf1/s;)V

    .line 219
    .line 220
    .line 221
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 222
    .line 223
    return-object v0

    .line 224
    :pswitch_3
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v2, Lu7/h;

    .line 227
    .line 228
    move-object/from16 v3, p1

    .line 229
    .line 230
    check-cast v3, Lf1/s;

    .line 231
    .line 232
    check-cast v0, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v15}, Lf1/b;->y(I)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-virtual {v2, v0, v3}, Lu7/h;->d(ILf1/s;)V

    .line 242
    .line 243
    .line 244
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 245
    .line 246
    return-object v0

    .line 247
    :pswitch_4
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v2, Lu7/c;

    .line 250
    .line 251
    move-object/from16 v3, p1

    .line 252
    .line 253
    check-cast v3, Lf1/s;

    .line 254
    .line 255
    check-cast v0, Ljava/lang/Integer;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {v2, v0, v3}, Lu7/c;->b(ILf1/s;)V

    .line 265
    .line 266
    .line 267
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 268
    .line 269
    return-object v0

    .line 270
    :pswitch_5
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v2, Lt7/d;

    .line 273
    .line 274
    move-object/from16 v3, p1

    .line 275
    .line 276
    check-cast v3, Lf1/s;

    .line 277
    .line 278
    check-cast v0, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-virtual {v2, v0, v3}, Lt7/d;->c(ILf1/s;)V

    .line 288
    .line 289
    .line 290
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 291
    .line 292
    return-object v0

    .line 293
    :pswitch_6
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v2, Lt7/c;

    .line 296
    .line 297
    move-object/from16 v3, p1

    .line 298
    .line 299
    check-cast v3, Lf1/s;

    .line 300
    .line 301
    check-cast v0, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-static {v15}, Lf1/b;->y(I)I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    invoke-virtual {v2, v0, v3}, Lt7/c;->a(ILf1/s;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 314
    .line 315
    return-object v0

    .line 316
    :pswitch_7
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v2, Lp7/a;

    .line 319
    .line 320
    move-object/from16 v3, p1

    .line 321
    .line 322
    check-cast v3, Lf1/s;

    .line 323
    .line 324
    check-cast v0, Ljava/lang/Integer;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {v2, v0, v3}, Lp7/a;->c(ILf1/s;)V

    .line 334
    .line 335
    .line 336
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 337
    .line 338
    return-object v0

    .line 339
    :pswitch_8
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v2, Lp1/u;

    .line 342
    .line 343
    move-object/from16 v5, p1

    .line 344
    .line 345
    check-cast v5, Ljava/util/Set;

    .line 346
    .line 347
    check-cast v0, Lp1/f;

    .line 348
    .line 349
    iget-object v0, v2, Lp1/u;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 350
    .line 351
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    if-nez v6, :cond_5

    .line 356
    .line 357
    move-object v7, v5

    .line 358
    check-cast v7, Ljava/util/Collection;

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_5
    instance-of v7, v6, Ljava/util/Set;

    .line 362
    .line 363
    if-eqz v7, :cond_6

    .line 364
    .line 365
    new-array v7, v10, [Ljava/util/Set;

    .line 366
    .line 367
    aput-object v6, v7, v3

    .line 368
    .line 369
    aput-object v5, v7, v4

    .line 370
    .line 371
    invoke-static {v7}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    goto :goto_4

    .line 376
    :cond_6
    instance-of v7, v6, Ljava/util/List;

    .line 377
    .line 378
    if-eqz v7, :cond_a

    .line 379
    .line 380
    move-object v7, v6

    .line 381
    check-cast v7, Ljava/util/Collection;

    .line 382
    .line 383
    invoke-static {v5}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-static {v8, v7}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    :cond_7
    :goto_4
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    if-eqz v8, :cond_9

    .line 396
    .line 397
    invoke-virtual {v2}, Lp1/u;->b()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_8

    .line 402
    .line 403
    iget-object v0, v2, Lp1/u;->a:Lf9/k;

    .line 404
    .line 405
    new-instance v3, La5/e;

    .line 406
    .line 407
    const/16 v4, 0x14

    .line 408
    .line 409
    invoke-direct {v3, v4, v2}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v0, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    :cond_8
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 416
    .line 417
    return-object v0

    .line 418
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    if-eq v8, v6, :cond_7

    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_a
    const-string v0, "Unexpected notification"

    .line 426
    .line 427
    invoke-static {v0}, Lf1/t;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 428
    .line 429
    .line 430
    new-instance v0, Lac/p;

    .line 431
    .line 432
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :pswitch_9
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v2, Lf9/n;

    .line 439
    .line 440
    move-object/from16 v4, p1

    .line 441
    .line 442
    check-cast v4, Lo1/a;

    .line 443
    .line 444
    invoke-interface {v2, v4, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    check-cast v0, Ljava/util/List;

    .line 449
    .line 450
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    :goto_5
    if-ge v3, v2, :cond_d

    .line 455
    .line 456
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    if-eqz v5, :cond_c

    .line 461
    .line 462
    iget-object v6, v4, Lo1/a;->b:Lo1/f;

    .line 463
    .line 464
    if-eqz v6, :cond_c

    .line 465
    .line 466
    invoke-interface {v6, v5}, Lo1/f;->a(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    if-eqz v6, :cond_b

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v2, "item at index "

    .line 476
    .line 477
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v2, " can\'t be saved: "

    .line 484
    .line 485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v2

    .line 505
    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_d
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-nez v2, :cond_e

    .line 513
    .line 514
    new-instance v14, Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 517
    .line 518
    .line 519
    :cond_e
    return-object v14

    .line 520
    :pswitch_a
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v2, Ln7/c;

    .line 523
    .line 524
    move-object/from16 v3, p1

    .line 525
    .line 526
    check-cast v3, Lf1/s;

    .line 527
    .line 528
    check-cast v0, Ljava/lang/Integer;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    invoke-virtual {v2, v0, v3}, Ln7/c;->i(ILf1/s;)V

    .line 538
    .line 539
    .line 540
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 541
    .line 542
    return-object v0

    .line 543
    :pswitch_b
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 544
    .line 545
    check-cast v2, Ll0/z0;

    .line 546
    .line 547
    move-object/from16 v3, p1

    .line 548
    .line 549
    check-cast v3, Lk2/w;

    .line 550
    .line 551
    check-cast v0, Lx1/b;

    .line 552
    .line 553
    iget-wide v3, v0, Lx1/b;->a:J

    .line 554
    .line 555
    invoke-interface {v2, v3, v4}, Ll0/z0;->e(J)V

    .line 556
    .line 557
    .line 558
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 559
    .line 560
    return-object v0

    .line 561
    :pswitch_c
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v2, Lw0/r1;

    .line 564
    .line 565
    move-object/from16 v3, p1

    .line 566
    .line 567
    check-cast v3, Lf1/s;

    .line 568
    .line 569
    check-cast v0, Ljava/lang/Integer;

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    invoke-static {v2, v3, v0}, Ll0/p0;->h(Lw0/r1;Lf1/s;I)V

    .line 579
    .line 580
    .line 581
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 582
    .line 583
    return-object v0

    .line 584
    :pswitch_d
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v2, Lw0/c1;

    .line 587
    .line 588
    move-object/from16 v3, p1

    .line 589
    .line 590
    check-cast v3, Lo1/a;

    .line 591
    .line 592
    check-cast v0, Ljava/lang/Long;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 595
    .line 596
    .line 597
    move-result-wide v3

    .line 598
    invoke-static {v2, v3, v4}, Lw0/d1;->a(Lw0/c1;J)Z

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    if-eqz v2, :cond_f

    .line 603
    .line 604
    move-object v14, v0

    .line 605
    :cond_f
    return-object v14

    .line 606
    :pswitch_e
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 607
    .line 608
    check-cast v2, Lk7/a;

    .line 609
    .line 610
    move-object/from16 v3, p1

    .line 611
    .line 612
    check-cast v3, Lf1/s;

    .line 613
    .line 614
    check-cast v0, Ljava/lang/Integer;

    .line 615
    .line 616
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    invoke-virtual {v2, v0, v3}, Lk7/a;->i(ILf1/s;)V

    .line 624
    .line 625
    .line 626
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 627
    .line 628
    return-object v0

    .line 629
    :pswitch_f
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v2, Ln1/c;

    .line 632
    .line 633
    move-object/from16 v3, p1

    .line 634
    .line 635
    check-cast v3, Lf1/s;

    .line 636
    .line 637
    check-cast v0, Ljava/lang/Integer;

    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    invoke-static {v15}, Lf1/b;->y(I)I

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    invoke-static {v2, v3, v0}, Lh0/z;->c(Ln1/c;Lf1/s;I)V

    .line 647
    .line 648
    .line 649
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 650
    .line 651
    return-object v0

    .line 652
    :pswitch_10
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v2, Lcc/h;

    .line 655
    .line 656
    move-object/from16 v4, p1

    .line 657
    .line 658
    check-cast v4, Ljava/util/Set;

    .line 659
    .line 660
    check-cast v0, Lp1/f;

    .line 661
    .line 662
    instance-of v0, v4, Lh1/h;

    .line 663
    .line 664
    const/4 v11, 0x4

    .line 665
    if-eqz v0, :cond_14

    .line 666
    .line 667
    move-object v0, v4

    .line 668
    check-cast v0, Lh1/h;

    .line 669
    .line 670
    iget-object v0, v0, Lh1/h;->a:Ls/i0;

    .line 671
    .line 672
    iget-object v12, v0, Ls/i0;->b:[Ljava/lang/Object;

    .line 673
    .line 674
    iget-object v0, v0, Ls/i0;->a:[J

    .line 675
    .line 676
    array-length v13, v0

    .line 677
    sub-int/2addr v13, v10

    .line 678
    if-ltz v13, :cond_18

    .line 679
    .line 680
    const/4 v10, 0x0

    .line 681
    const-wide/16 v18, 0xff

    .line 682
    .line 683
    :goto_7
    aget-wide v5, v0, v10

    .line 684
    .line 685
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    not-long v8, v5

    .line 691
    shl-long/2addr v8, v15

    .line 692
    and-long/2addr v8, v5

    .line 693
    and-long v8, v8, v20

    .line 694
    .line 695
    cmp-long v14, v8, v20

    .line 696
    .line 697
    if-eqz v14, :cond_13

    .line 698
    .line 699
    sub-int v8, v10, v13

    .line 700
    .line 701
    not-int v8, v8

    .line 702
    ushr-int/lit8 v8, v8, 0x1f

    .line 703
    .line 704
    rsub-int/lit8 v8, v8, 0x8

    .line 705
    .line 706
    const/4 v9, 0x0

    .line 707
    :goto_8
    if-ge v9, v8, :cond_12

    .line 708
    .line 709
    and-long v22, v5, v18

    .line 710
    .line 711
    cmp-long v14, v22, v16

    .line 712
    .line 713
    if-gez v14, :cond_10

    .line 714
    .line 715
    shl-int/lit8 v14, v10, 0x3

    .line 716
    .line 717
    add-int/2addr v14, v9

    .line 718
    aget-object v14, v12, v14

    .line 719
    .line 720
    const/16 v22, 0x7

    .line 721
    .line 722
    instance-of v15, v14, Lp1/a0;

    .line 723
    .line 724
    if-eqz v15, :cond_17

    .line 725
    .line 726
    check-cast v14, Lp1/a0;

    .line 727
    .line 728
    invoke-virtual {v14, v11}, Lp1/a0;->c(I)Z

    .line 729
    .line 730
    .line 731
    move-result v14

    .line 732
    if-eqz v14, :cond_11

    .line 733
    .line 734
    goto :goto_a

    .line 735
    :cond_10
    const/16 v22, 0x7

    .line 736
    .line 737
    :cond_11
    shr-long/2addr v5, v7

    .line 738
    add-int/lit8 v9, v9, 0x1

    .line 739
    .line 740
    const/4 v15, 0x7

    .line 741
    goto :goto_8

    .line 742
    :cond_12
    const/16 v22, 0x7

    .line 743
    .line 744
    if-ne v8, v7, :cond_18

    .line 745
    .line 746
    goto :goto_9

    .line 747
    :cond_13
    const/16 v22, 0x7

    .line 748
    .line 749
    :goto_9
    if-eq v10, v13, :cond_18

    .line 750
    .line 751
    add-int/lit8 v10, v10, 0x1

    .line 752
    .line 753
    const/4 v15, 0x7

    .line 754
    goto :goto_7

    .line 755
    :cond_14
    move-object v0, v4

    .line 756
    check-cast v0, Ljava/lang/Iterable;

    .line 757
    .line 758
    instance-of v3, v0, Ljava/util/Collection;

    .line 759
    .line 760
    if-eqz v3, :cond_15

    .line 761
    .line 762
    move-object v3, v0

    .line 763
    check-cast v3, Ljava/util/Collection;

    .line 764
    .line 765
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 766
    .line 767
    .line 768
    move-result v3

    .line 769
    if-eqz v3, :cond_15

    .line 770
    .line 771
    goto :goto_b

    .line 772
    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 777
    .line 778
    .line 779
    move-result v3

    .line 780
    if-eqz v3, :cond_18

    .line 781
    .line 782
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    instance-of v5, v3, Lp1/a0;

    .line 787
    .line 788
    if-eqz v5, :cond_17

    .line 789
    .line 790
    check-cast v3, Lp1/a0;

    .line 791
    .line 792
    invoke-virtual {v3, v11}, Lp1/a0;->c(I)Z

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    if-eqz v3, :cond_16

    .line 797
    .line 798
    :cond_17
    :goto_a
    invoke-interface {v2, v4}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    :cond_18
    :goto_b
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 802
    .line 803
    return-object v0

    .line 804
    :pswitch_11
    const-wide/16 v18, 0xff

    .line 805
    .line 806
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    const/16 v22, 0x7

    .line 812
    .line 813
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v2, Lf1/b2;

    .line 816
    .line 817
    move-object/from16 v5, p1

    .line 818
    .line 819
    check-cast v5, Ljava/util/Set;

    .line 820
    .line 821
    check-cast v0, Lp1/f;

    .line 822
    .line 823
    iget-object v6, v2, Lf1/b2;->b:Ljava/lang/Object;

    .line 824
    .line 825
    monitor-enter v6

    .line 826
    :try_start_0
    iget-object v0, v2, Lf1/b2;->t:Ldc/l0;

    .line 827
    .line 828
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    check-cast v0, Lf1/x1;

    .line 833
    .line 834
    sget-object v8, Lf1/x1;->e:Lf1/x1;

    .line 835
    .line 836
    invoke-virtual {v0, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    if-ltz v0, :cond_20

    .line 841
    .line 842
    iget-object v0, v2, Lf1/b2;->g:Ls/i0;

    .line 843
    .line 844
    instance-of v8, v5, Lh1/h;

    .line 845
    .line 846
    if-eqz v8, :cond_1d

    .line 847
    .line 848
    check-cast v5, Lh1/h;

    .line 849
    .line 850
    iget-object v5, v5, Lh1/h;->a:Ls/i0;

    .line 851
    .line 852
    iget-object v8, v5, Ls/i0;->b:[Ljava/lang/Object;

    .line 853
    .line 854
    iget-object v5, v5, Ls/i0;->a:[J

    .line 855
    .line 856
    array-length v9, v5

    .line 857
    sub-int/2addr v9, v10

    .line 858
    if-ltz v9, :cond_1f

    .line 859
    .line 860
    const/4 v10, 0x0

    .line 861
    :goto_c
    aget-wide v11, v5, v10

    .line 862
    .line 863
    not-long v13, v11

    .line 864
    shl-long v13, v13, v22

    .line 865
    .line 866
    and-long/2addr v13, v11

    .line 867
    and-long v13, v13, v20

    .line 868
    .line 869
    cmp-long v15, v13, v20

    .line 870
    .line 871
    if-eqz v15, :cond_1c

    .line 872
    .line 873
    sub-int v13, v10, v9

    .line 874
    .line 875
    not-int v13, v13

    .line 876
    ushr-int/lit8 v13, v13, 0x1f

    .line 877
    .line 878
    rsub-int/lit8 v13, v13, 0x8

    .line 879
    .line 880
    const/4 v14, 0x0

    .line 881
    :goto_d
    if-ge v14, v13, :cond_1b

    .line 882
    .line 883
    and-long v23, v11, v18

    .line 884
    .line 885
    cmp-long v15, v23, v16

    .line 886
    .line 887
    if-gez v15, :cond_1a

    .line 888
    .line 889
    shl-int/lit8 v15, v10, 0x3

    .line 890
    .line 891
    add-int/2addr v15, v14

    .line 892
    aget-object v15, v8, v15

    .line 893
    .line 894
    instance-of v3, v15, Lp1/a0;

    .line 895
    .line 896
    if-eqz v3, :cond_19

    .line 897
    .line 898
    move-object v3, v15

    .line 899
    check-cast v3, Lp1/a0;

    .line 900
    .line 901
    invoke-virtual {v3, v4}, Lp1/a0;->c(I)Z

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    if-nez v3, :cond_19

    .line 906
    .line 907
    goto :goto_e

    .line 908
    :catchall_0
    move-exception v0

    .line 909
    goto :goto_10

    .line 910
    :cond_19
    invoke-virtual {v0, v15}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    :cond_1a
    :goto_e
    shr-long/2addr v11, v7

    .line 914
    add-int/lit8 v14, v14, 0x1

    .line 915
    .line 916
    const/4 v3, 0x0

    .line 917
    goto :goto_d

    .line 918
    :cond_1b
    if-ne v13, v7, :cond_1f

    .line 919
    .line 920
    :cond_1c
    if-eq v10, v9, :cond_1f

    .line 921
    .line 922
    add-int/lit8 v10, v10, 0x1

    .line 923
    .line 924
    const/4 v3, 0x0

    .line 925
    goto :goto_c

    .line 926
    :cond_1d
    check-cast v5, Ljava/lang/Iterable;

    .line 927
    .line 928
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 933
    .line 934
    .line 935
    move-result v5

    .line 936
    if-eqz v5, :cond_1f

    .line 937
    .line 938
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    instance-of v7, v5, Lp1/a0;

    .line 943
    .line 944
    if-eqz v7, :cond_1e

    .line 945
    .line 946
    move-object v7, v5

    .line 947
    check-cast v7, Lp1/a0;

    .line 948
    .line 949
    invoke-virtual {v7, v4}, Lp1/a0;->c(I)Z

    .line 950
    .line 951
    .line 952
    move-result v7

    .line 953
    if-nez v7, :cond_1e

    .line 954
    .line 955
    goto :goto_f

    .line 956
    :cond_1e
    invoke-virtual {v0, v5}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    goto :goto_f

    .line 960
    :cond_1f
    invoke-virtual {v2}, Lf1/b2;->B()Lac/g;

    .line 961
    .line 962
    .line 963
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :cond_20
    monitor-exit v6

    .line 965
    if-eqz v14, :cond_21

    .line 966
    .line 967
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 968
    .line 969
    check-cast v14, Lac/i;

    .line 970
    .line 971
    invoke-virtual {v14, v0}, Lac/i;->f(Ljava/lang/Object;)V

    .line 972
    .line 973
    .line 974
    :cond_21
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 975
    .line 976
    return-object v0

    .line 977
    :goto_10
    monitor-exit v6

    .line 978
    throw v0

    .line 979
    :pswitch_12
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v2, Ln1/i;

    .line 982
    .line 983
    move-object/from16 v3, p1

    .line 984
    .line 985
    check-cast v3, Ljava/lang/Integer;

    .line 986
    .line 987
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    .line 989
    .line 990
    instance-of v3, v0, Lf1/j;

    .line 991
    .line 992
    if-eqz v3, :cond_23

    .line 993
    .line 994
    move-object v3, v0

    .line 995
    check-cast v3, Lf1/j;

    .line 996
    .line 997
    iget-object v4, v2, Ln1/i;->h:Ls/i0;

    .line 998
    .line 999
    if-nez v4, :cond_22

    .line 1000
    .line 1001
    sget-object v4, Ls/p0;->a:Ls/i0;

    .line 1002
    .line 1003
    new-instance v4, Ls/i0;

    .line 1004
    .line 1005
    invoke-direct {v4}, Ls/i0;-><init>()V

    .line 1006
    .line 1007
    .line 1008
    iput-object v4, v2, Ln1/i;->h:Ls/i0;

    .line 1009
    .line 1010
    :cond_22
    invoke-virtual {v4, v3}, Ls/i0;->j(Ljava/lang/Object;)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v4, v2, Ln1/i;->f:Lh1/e;

    .line 1014
    .line 1015
    invoke-virtual {v4, v3}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 1016
    .line 1017
    .line 1018
    :cond_23
    instance-of v3, v0, Lf1/d2;

    .line 1019
    .line 1020
    if-eqz v3, :cond_24

    .line 1021
    .line 1022
    move-object v3, v0

    .line 1023
    check-cast v3, Lf1/d2;

    .line 1024
    .line 1025
    invoke-virtual {v2, v3}, Ln1/i;->e(Lf1/d2;)V

    .line 1026
    .line 1027
    .line 1028
    :cond_24
    instance-of v2, v0, Lf1/w1;

    .line 1029
    .line 1030
    if-eqz v2, :cond_25

    .line 1031
    .line 1032
    check-cast v0, Lf1/w1;

    .line 1033
    .line 1034
    invoke-virtual {v0}, Lf1/w1;->d()V

    .line 1035
    .line 1036
    .line 1037
    :cond_25
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1038
    .line 1039
    return-object v0

    .line 1040
    :pswitch_13
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v2, Lec/u;

    .line 1043
    .line 1044
    move-object/from16 v3, p1

    .line 1045
    .line 1046
    check-cast v3, Ljava/lang/Integer;

    .line 1047
    .line 1048
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1049
    .line 1050
    .line 1051
    move-result v3

    .line 1052
    check-cast v0, Lw8/f;

    .line 1053
    .line 1054
    invoke-interface {v0}, Lw8/f;->getKey()Lw8/g;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v4

    .line 1058
    iget-object v2, v2, Lec/u;->e:Lw8/h;

    .line 1059
    .line 1060
    invoke-interface {v2, v4}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v2

    .line 1064
    sget-object v5, Lac/t;->b:Lac/t;

    .line 1065
    .line 1066
    if-eq v4, v5, :cond_27

    .line 1067
    .line 1068
    if-eq v0, v2, :cond_26

    .line 1069
    .line 1070
    const/high16 v3, -0x80000000

    .line 1071
    .line 1072
    goto :goto_14

    .line 1073
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 1074
    .line 1075
    goto :goto_14

    .line 1076
    :cond_27
    check-cast v2, Lac/v0;

    .line 1077
    .line 1078
    check-cast v0, Lac/v0;

    .line 1079
    .line 1080
    :goto_11
    if-nez v0, :cond_28

    .line 1081
    .line 1082
    goto :goto_13

    .line 1083
    :cond_28
    if-ne v0, v2, :cond_29

    .line 1084
    .line 1085
    goto :goto_12

    .line 1086
    :cond_29
    instance-of v4, v0, Lfc/p;

    .line 1087
    .line 1088
    if-nez v4, :cond_2b

    .line 1089
    .line 1090
    :goto_12
    move-object v14, v0

    .line 1091
    :goto_13
    if-ne v14, v2, :cond_2a

    .line 1092
    .line 1093
    if-nez v2, :cond_26

    .line 1094
    .line 1095
    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    return-object v0

    .line 1100
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1101
    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    const-string v4, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 1105
    .line 1106
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    const-string v4, ", expected child of "

    .line 1113
    .line 1114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    const-string v2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 1121
    .line 1122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v2

    .line 1129
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v2

    .line 1133
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    throw v0

    .line 1137
    :cond_2b
    check-cast v0, Lfc/p;

    .line 1138
    .line 1139
    sget-object v4, Lac/c1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1140
    .line 1141
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    check-cast v0, Lac/l;

    .line 1146
    .line 1147
    if-eqz v0, :cond_2c

    .line 1148
    .line 1149
    invoke-interface {v0}, Lac/l;->getParent()Lac/v0;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    goto :goto_11

    .line 1154
    :cond_2c
    move-object v0, v14

    .line 1155
    goto :goto_11

    .line 1156
    :pswitch_14
    const/16 v22, 0x7

    .line 1157
    .line 1158
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1159
    .line 1160
    check-cast v2, Le8/d;

    .line 1161
    .line 1162
    move-object/from16 v3, p1

    .line 1163
    .line 1164
    check-cast v3, Lf1/s;

    .line 1165
    .line 1166
    check-cast v0, Ljava/lang/Integer;

    .line 1167
    .line 1168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    invoke-static/range {v22 .. v22}, Lf1/b;->y(I)I

    .line 1172
    .line 1173
    .line 1174
    move-result v0

    .line 1175
    invoke-virtual {v2, v0, v3}, Le8/d;->a(ILf1/s;)V

    .line 1176
    .line 1177
    .line 1178
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1179
    .line 1180
    return-object v0

    .line 1181
    :pswitch_15
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1182
    .line 1183
    check-cast v2, Ld8/j;

    .line 1184
    .line 1185
    move-object/from16 v3, p1

    .line 1186
    .line 1187
    check-cast v3, Lf1/s;

    .line 1188
    .line 1189
    check-cast v0, Ljava/lang/Integer;

    .line 1190
    .line 1191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1192
    .line 1193
    .line 1194
    const/16 v0, 0x9

    .line 1195
    .line 1196
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 1197
    .line 1198
    .line 1199
    move-result v0

    .line 1200
    invoke-virtual {v2, v0, v3}, Ld8/j;->d(ILf1/s;)V

    .line 1201
    .line 1202
    .line 1203
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1204
    .line 1205
    return-object v0

    .line 1206
    :pswitch_16
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1207
    .line 1208
    check-cast v2, Ld8/f;

    .line 1209
    .line 1210
    move-object/from16 v3, p1

    .line 1211
    .line 1212
    check-cast v3, Lf1/s;

    .line 1213
    .line 1214
    check-cast v0, Ljava/lang/Integer;

    .line 1215
    .line 1216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    .line 1218
    .line 1219
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 1220
    .line 1221
    .line 1222
    move-result v0

    .line 1223
    invoke-virtual {v2, v0, v3}, Ld8/f;->b(ILf1/s;)V

    .line 1224
    .line 1225
    .line 1226
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1227
    .line 1228
    return-object v0

    .line 1229
    :pswitch_17
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1230
    .line 1231
    move-object v3, v2

    .line 1232
    check-cast v3, Lr1/d;

    .line 1233
    .line 1234
    move-object/from16 v2, p1

    .line 1235
    .line 1236
    check-cast v2, Ln3/l;

    .line 1237
    .line 1238
    move-object v8, v0

    .line 1239
    check-cast v8, Ln3/m;

    .line 1240
    .line 1241
    const-wide/16 v4, 0x0

    .line 1242
    .line 1243
    iget-wide v6, v2, Ln3/l;->a:J

    .line 1244
    .line 1245
    invoke-interface/range {v3 .. v8}, Lr1/d;->a(JJLn3/m;)J

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v2

    .line 1249
    new-instance v0, Ln3/j;

    .line 1250
    .line 1251
    invoke-direct {v0, v2, v3}, Ln3/j;-><init>(J)V

    .line 1252
    .line 1253
    .line 1254
    return-object v0

    .line 1255
    :pswitch_18
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1256
    .line 1257
    check-cast v2, Lr1/g;

    .line 1258
    .line 1259
    move-object/from16 v3, p1

    .line 1260
    .line 1261
    check-cast v3, Ln3/l;

    .line 1262
    .line 1263
    check-cast v0, Ln3/m;

    .line 1264
    .line 1265
    iget-wide v3, v3, Ln3/l;->a:J

    .line 1266
    .line 1267
    and-long/2addr v3, v11

    .line 1268
    long-to-int v0, v3

    .line 1269
    const/4 v3, 0x0

    .line 1270
    invoke-virtual {v2, v3, v0}, Lr1/g;->a(II)I

    .line 1271
    .line 1272
    .line 1273
    move-result v0

    .line 1274
    int-to-long v2, v3

    .line 1275
    shl-long/2addr v2, v13

    .line 1276
    int-to-long v4, v0

    .line 1277
    and-long/2addr v4, v11

    .line 1278
    or-long/2addr v2, v4

    .line 1279
    new-instance v0, Ln3/j;

    .line 1280
    .line 1281
    invoke-direct {v0, v2, v3}, Ln3/j;-><init>(J)V

    .line 1282
    .line 1283
    .line 1284
    return-object v0

    .line 1285
    :pswitch_19
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1286
    .line 1287
    check-cast v2, Lr1/f;

    .line 1288
    .line 1289
    move-object/from16 v3, p1

    .line 1290
    .line 1291
    check-cast v3, Ln3/l;

    .line 1292
    .line 1293
    check-cast v0, Ln3/m;

    .line 1294
    .line 1295
    iget-wide v3, v3, Ln3/l;->a:J

    .line 1296
    .line 1297
    shr-long/2addr v3, v13

    .line 1298
    long-to-int v4, v3

    .line 1299
    const/4 v3, 0x0

    .line 1300
    invoke-virtual {v2, v3, v4, v0}, Lr1/f;->a(IILn3/m;)I

    .line 1301
    .line 1302
    .line 1303
    move-result v0

    .line 1304
    int-to-long v4, v0

    .line 1305
    shl-long/2addr v4, v13

    .line 1306
    int-to-long v2, v3

    .line 1307
    and-long/2addr v2, v11

    .line 1308
    or-long/2addr v2, v4

    .line 1309
    new-instance v0, Ln3/j;

    .line 1310
    .line 1311
    invoke-direct {v0, v2, v3}, Ln3/j;-><init>(J)V

    .line 1312
    .line 1313
    .line 1314
    return-object v0

    .line 1315
    :pswitch_1a
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1316
    .line 1317
    check-cast v2, Lr1/p;

    .line 1318
    .line 1319
    move-object/from16 v3, p1

    .line 1320
    .line 1321
    check-cast v3, Lf1/s;

    .line 1322
    .line 1323
    check-cast v0, Ljava/lang/Integer;

    .line 1324
    .line 1325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    .line 1327
    .line 1328
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 1329
    .line 1330
    .line 1331
    move-result v0

    .line 1332
    invoke-static {v2, v3, v0}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 1333
    .line 1334
    .line 1335
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1336
    .line 1337
    return-object v0

    .line 1338
    :pswitch_1b
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1339
    .line 1340
    check-cast v2, Lb3/i0;

    .line 1341
    .line 1342
    move-object/from16 v5, p1

    .line 1343
    .line 1344
    check-cast v5, Landroid/graphics/RectF;

    .line 1345
    .line 1346
    check-cast v0, Landroid/graphics/RectF;

    .line 1347
    .line 1348
    invoke-static {v5}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v5

    .line 1352
    invoke-static {v0}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    iget v2, v2, Lb3/i0;->a:I

    .line 1357
    .line 1358
    packed-switch v2, :pswitch_data_1

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v5}, Lx1/c;->b()J

    .line 1362
    .line 1363
    .line 1364
    move-result-wide v5

    .line 1365
    shr-long v7, v5, v13

    .line 1366
    .line 1367
    long-to-int v2, v7

    .line 1368
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1369
    .line 1370
    .line 1371
    move-result v2

    .line 1372
    and-long/2addr v5, v11

    .line 1373
    long-to-int v6, v5

    .line 1374
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1375
    .line 1376
    .line 1377
    move-result v5

    .line 1378
    iget v6, v0, Lx1/c;->a:F

    .line 1379
    .line 1380
    cmpl-float v6, v2, v6

    .line 1381
    .line 1382
    if-ltz v6, :cond_2d

    .line 1383
    .line 1384
    const/4 v6, 0x1

    .line 1385
    goto :goto_15

    .line 1386
    :cond_2d
    const/4 v6, 0x0

    .line 1387
    :goto_15
    iget v7, v0, Lx1/c;->c:F

    .line 1388
    .line 1389
    cmpg-float v2, v2, v7

    .line 1390
    .line 1391
    if-gez v2, :cond_2e

    .line 1392
    .line 1393
    const/4 v2, 0x1

    .line 1394
    goto :goto_16

    .line 1395
    :cond_2e
    const/4 v2, 0x0

    .line 1396
    :goto_16
    and-int/2addr v2, v6

    .line 1397
    iget v6, v0, Lx1/c;->b:F

    .line 1398
    .line 1399
    cmpl-float v6, v5, v6

    .line 1400
    .line 1401
    if-ltz v6, :cond_2f

    .line 1402
    .line 1403
    const/4 v6, 0x1

    .line 1404
    goto :goto_17

    .line 1405
    :cond_2f
    const/4 v6, 0x0

    .line 1406
    :goto_17
    and-int/2addr v2, v6

    .line 1407
    iget v0, v0, Lx1/c;->d:F

    .line 1408
    .line 1409
    cmpg-float v0, v5, v0

    .line 1410
    .line 1411
    if-gez v0, :cond_30

    .line 1412
    .line 1413
    const/4 v3, 0x1

    .line 1414
    :cond_30
    and-int v0, v2, v3

    .line 1415
    .line 1416
    goto :goto_18

    .line 1417
    :pswitch_1c
    invoke-virtual {v5, v0}, Lx1/c;->g(Lx1/c;)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v0

    .line 1421
    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v0

    .line 1425
    return-object v0

    .line 1426
    :pswitch_1d
    iget-object v2, v1, La8/d;->b:Ljava/lang/Object;

    .line 1427
    .line 1428
    check-cast v2, La8/e;

    .line 1429
    .line 1430
    move-object/from16 v3, p1

    .line 1431
    .line 1432
    check-cast v3, Lf1/s;

    .line 1433
    .line 1434
    check-cast v0, Ljava/lang/Integer;

    .line 1435
    .line 1436
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1437
    .line 1438
    .line 1439
    invoke-static {v4}, Lf1/b;->y(I)I

    .line 1440
    .line 1441
    .line 1442
    move-result v0

    .line 1443
    invoke-virtual {v2, v0, v3}, La8/e;->b(ILf1/s;)V

    .line 1444
    .line 1445
    .line 1446
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1447
    .line 1448
    return-object v0

    .line 1449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
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

    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method
