.class public final La8/g0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La8/g0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La8/g0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/g0;->a:I

    .line 4
    .line 5
    sget-object v2, Ls8/x;->a:Ls8/x;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    sget-object v4, Ls8/w;->a:Ls8/w;

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x1

    .line 12
    const/16 v7, 0xa

    .line 13
    .line 14
    iget-object v10, v0, La8/g0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v10, Ly9/p;

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v10, Ly9/p;->e:Ly9/q;

    .line 27
    .line 28
    iget-object v2, v2, Ly9/q;->i:Lkb/m;

    .line 29
    .line 30
    invoke-interface {v2}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lua/e;

    .line 51
    .line 52
    sget-object v4, Lda/b;->f:Lda/b;

    .line 53
    .line 54
    invoke-virtual {v10, v3, v4}, Ly9/p;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v1, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10, v3, v4}, Ly9/p;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-object v1

    .line 70
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Scope for type parameter "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v10, La8/f0;

    .line 78
    .line 79
    iget-object v2, v10, La8/f0;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Lua/e;

    .line 82
    .line 83
    invoke-virtual {v2}, Lua/e;->b()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, v10, La8/f0;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, Ly9/h;

    .line 97
    .line 98
    invoke-virtual {v2}, Ly9/h;->getUpperBounds()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2, v1}, La/a;->p(Ljava/util/Collection;Ljava/lang/String;)Leb/o;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    return-object v1

    .line 107
    :pswitch_1
    move-object v12, v10

    .line 108
    check-cast v12, Ly9/f;

    .line 109
    .line 110
    move-object v1, v12

    .line 111
    check-cast v1, Ljb/u;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljb/u;->C0()Lv9/e;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-nez v2, :cond_1

    .line 118
    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :cond_1
    invoke-interface {v2}, Lv9/e;->w()Ljava/util/Collection;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "getConstructors(...)"

    .line 126
    .line 127
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    check-cast v2, Ljava/lang/Iterable;

    .line 131
    .line 132
    new-instance v3, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_c

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    check-cast v5, Ly9/i;

    .line 152
    .line 153
    sget-object v6, Ly9/o0;->G:Ly9/d0;

    .line 154
    .line 155
    iget-object v11, v12, Ly9/f;->e:Lkb/o;

    .line 156
    .line 157
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    const-string v6, "storageManager"

    .line 164
    .line 165
    invoke-static {v11, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljb/u;->C0()Lv9/e;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    if-nez v6, :cond_2

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {v1}, Ljb/u;->D0()Llb/a0;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-static {v6}, Llb/s0;->d(Llb/w;)Llb/s0;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    :goto_2
    if-nez v6, :cond_3

    .line 185
    .line 186
    :goto_3
    move-object/from16 v25, v1

    .line 187
    .line 188
    move-object/from16 v26, v2

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    const/16 v23, 0x0

    .line 192
    .line 193
    goto/16 :goto_8

    .line 194
    .line 195
    :cond_3
    invoke-virtual {v5, v6}, Ly9/i;->S0(Llb/s0;)Ly9/i;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    if-nez v13, :cond_4

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_4
    new-instance v10, Ly9/o0;

    .line 203
    .line 204
    move-object v14, v5

    .line 205
    check-cast v14, Lfb/a;

    .line 206
    .line 207
    invoke-virtual {v14}, Lfb/a;->getAnnotations()Lw9/h;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    check-cast v5, Ly9/u;

    .line 212
    .line 213
    invoke-virtual {v5}, Ly9/u;->f()I

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    const/16 v23, 0x0

    .line 218
    .line 219
    const-string v9, "getKind(...)"

    .line 220
    .line 221
    invoke-static {v14, v9}, La2/f;->O(ILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12}, Ly9/n;->getSource()Lv9/m0;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    const-string v8, "getSource(...)"

    .line 229
    .line 230
    invoke-static {v9, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    move/from16 v16, v14

    .line 234
    .line 235
    const/4 v14, 0x0

    .line 236
    move-object/from16 v17, v9

    .line 237
    .line 238
    invoke-direct/range {v10 .. v17}, Ly9/o0;-><init>(Lkb/o;Lv9/p0;Ly9/i;Ly9/n0;Lw9/h;ILv9/m0;)V

    .line 239
    .line 240
    .line 241
    move-object v8, v13

    .line 242
    invoke-virtual {v5}, Ly9/u;->S()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    if-eqz v14, :cond_b

    .line 247
    .line 248
    const/16 v17, 0x0

    .line 249
    .line 250
    const/16 v18, 0x0

    .line 251
    .line 252
    const/16 v16, 0x0

    .line 253
    .line 254
    move-object v15, v6

    .line 255
    move-object v13, v10

    .line 256
    invoke-static/range {v13 .. v18}, Ly9/u;->G0(Lv9/t;Ljava/util/List;Llb/s0;ZZ[Z)Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v19

    .line 260
    if-nez v19, :cond_5

    .line 261
    .line 262
    move-object/from16 v25, v1

    .line 263
    .line 264
    move-object/from16 v26, v2

    .line 265
    .line 266
    move-object/from16 v10, v23

    .line 267
    .line 268
    goto/16 :goto_8

    .line 269
    .line 270
    :cond_5
    move-object v13, v8

    .line 271
    check-cast v13, Ly9/u;

    .line 272
    .line 273
    iget-object v6, v13, Ly9/u;->g:Llb/w;

    .line 274
    .line 275
    invoke-virtual {v6}, Llb/w;->G0()Llb/x0;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-static {v6}, Llb/c;->l(Llb/w;)Llb/a0;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-virtual {v1}, Ljb/u;->n()Llb/a0;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-static {v6, v8}, Llb/c;->E(Llb/a0;Llb/a0;)Llb/a0;

    .line 288
    .line 289
    .line 290
    move-result-object v20

    .line 291
    iget-object v6, v5, Ly9/u;->j:Ly9/v;

    .line 292
    .line 293
    sget-object v8, Llb/y0;->c:Llb/y0;

    .line 294
    .line 295
    sget-object v9, Lw9/g;->a:Lw9/f;

    .line 296
    .line 297
    if-eqz v6, :cond_6

    .line 298
    .line 299
    invoke-virtual {v6}, Ly9/v;->getType()Llb/w;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v15, v6, v8}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-static {v10, v6, v9}, Lxa/k;->k(Lv9/b;Llb/w;Lw9/h;)Ly9/v;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    goto :goto_4

    .line 312
    :cond_6
    move-object/from16 v6, v23

    .line 313
    .line 314
    :goto_4
    invoke-virtual {v1}, Ljb/u;->C0()Lv9/e;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    if-eqz v11, :cond_9

    .line 319
    .line 320
    invoke-virtual {v5}, Ly9/u;->f0()Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    const-string v13, "getContextReceiverParameters(...)"

    .line 325
    .line 326
    invoke-static {v5, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance v13, Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-static {v5, v7}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    const/4 v14, 0x0

    .line 343
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v16

    .line 347
    if-eqz v16, :cond_8

    .line 348
    .line 349
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v16

    .line 353
    add-int/lit8 v17, v14, 0x1

    .line 354
    .line 355
    if-ltz v14, :cond_7

    .line 356
    .line 357
    check-cast v16, Ly9/v;

    .line 358
    .line 359
    invoke-virtual/range {v16 .. v16}, Ly9/v;->getType()Llb/w;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-virtual {v15, v7, v8}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-virtual/range {v16 .. v16}, Ly9/v;->C0()Lfb/e;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    move-object/from16 v25, v1

    .line 372
    .line 373
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver"

    .line 374
    .line 375
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    check-cast v0, Lfb/b;

    .line 379
    .line 380
    invoke-virtual {v0}, Lfb/b;->u0()Lua/e;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    new-instance v1, Ly9/v;

    .line 385
    .line 386
    move-object/from16 v26, v2

    .line 387
    .line 388
    new-instance v2, Lfb/b;

    .line 389
    .line 390
    invoke-direct {v2, v11, v7, v0}, Lfb/b;-><init>(Lv9/e;Llb/w;Lua/e;)V

    .line 391
    .line 392
    .line 393
    sget-object v0, Lua/f;->a:Lg9/x;

    .line 394
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    sget-object v7, Lua/f;->b:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const/16 v7, 0x5f

    .line 406
    .line 407
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-direct {v1, v11, v2, v9, v0}, Ly9/v;-><init>(Lv9/k;Lfb/a;Lw9/h;Lua/e;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-object/from16 v0, p0

    .line 428
    .line 429
    move/from16 v14, v17

    .line 430
    .line 431
    move-object/from16 v1, v25

    .line 432
    .line 433
    move-object/from16 v2, v26

    .line 434
    .line 435
    const/16 v7, 0xa

    .line 436
    .line 437
    goto :goto_5

    .line 438
    :cond_7
    invoke-static {}, Lp9/x1;->L()V

    .line 439
    .line 440
    .line 441
    throw v23

    .line 442
    :cond_8
    move-object/from16 v17, v13

    .line 443
    .line 444
    :goto_6
    move-object/from16 v25, v1

    .line 445
    .line 446
    move-object/from16 v26, v2

    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_9
    move-object/from16 v17, v4

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :goto_7
    invoke-virtual {v12}, Ly9/f;->q()Ljava/util/List;

    .line 453
    .line 454
    .line 455
    move-result-object v18

    .line 456
    sget-object v21, Lv9/x;->b:Lv9/x;

    .line 457
    .line 458
    iget-object v0, v12, Ly9/f;->f:Lea/o;

    .line 459
    .line 460
    const/16 v16, 0x0

    .line 461
    .line 462
    move-object/from16 v22, v0

    .line 463
    .line 464
    move-object v15, v6

    .line 465
    move-object v14, v10

    .line 466
    invoke-virtual/range {v14 .. v22}, Ly9/u;->H0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)V

    .line 467
    .line 468
    .line 469
    :goto_8
    if-eqz v10, :cond_a

    .line 470
    .line 471
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    :cond_a
    move-object/from16 v0, p0

    .line 475
    .line 476
    move-object/from16 v1, v25

    .line 477
    .line 478
    move-object/from16 v2, v26

    .line 479
    .line 480
    const/16 v7, 0xa

    .line 481
    .line 482
    goto/16 :goto_1

    .line 483
    .line 484
    :cond_b
    const/16 v0, 0x1c

    .line 485
    .line 486
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 487
    .line 488
    .line 489
    throw v23

    .line 490
    :cond_c
    move-object v4, v3

    .line 491
    :goto_9
    return-object v4

    .line 492
    :pswitch_2
    const/16 v23, 0x0

    .line 493
    .line 494
    check-cast v10, Lwa/g;

    .line 495
    .line 496
    iget-object v0, v10, Lwa/g;->a:Lwa/k;

    .line 497
    .line 498
    new-instance v1, Lwa/k;

    .line 499
    .line 500
    invoke-direct {v1}, Lwa/k;-><init>()V

    .line 501
    .line 502
    .line 503
    const-class v2, Lwa/k;

    .line 504
    .line 505
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-static {v4}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    :cond_d
    :goto_a
    invoke-virtual {v4}, Lg9/b;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-eqz v5, :cond_11

    .line 518
    .line 519
    invoke-virtual {v4}, Lg9/b;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    check-cast v5, Ljava/lang/reflect/Field;

    .line 524
    .line 525
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    and-int/lit8 v7, v7, 0x8

    .line 530
    .line 531
    if-nez v7, :cond_d

    .line 532
    .line 533
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    instance-of v8, v7, Lwa/j;

    .line 541
    .line 542
    if-eqz v8, :cond_e

    .line 543
    .line 544
    check-cast v7, Lwa/j;

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_e
    move-object/from16 v7, v23

    .line 548
    .line 549
    :goto_b
    if-nez v7, :cond_f

    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_f
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    const-string v9, "getName(...)"

    .line 557
    .line 558
    invoke-static {v8, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const-string v10, "is"

    .line 562
    .line 563
    invoke-static {v8, v10}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 564
    .line 565
    .line 566
    sget-object v8, Lg9/y;->a:Lg9/z;

    .line 567
    .line 568
    invoke-virtual {v8, v2}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v10

    .line 579
    invoke-static {v10, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 583
    .line 584
    .line 585
    move-result v9

    .line 586
    if-lez v9, :cond_10

    .line 587
    .line 588
    const/4 v9, 0x0

    .line 589
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    .line 590
    .line 591
    .line 592
    move-result v11

    .line 593
    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    .line 594
    .line 595
    .line 596
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v9

    .line 600
    const-string v10, "substring(...)"

    .line 601
    .line 602
    invoke-static {v9, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    :cond_10
    check-cast v8, Lg9/e;

    .line 606
    .line 607
    invoke-interface {v8}, Lg9/e;->a()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    iget-object v7, v7, Lwa/j;->a:Ljava/lang/Object;

    .line 611
    .line 612
    new-instance v8, Lwa/j;

    .line 613
    .line 614
    invoke-direct {v8, v7, v1}, Lwa/j;-><init>(Ljava/lang/Object;Lwa/k;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    goto :goto_a

    .line 621
    :cond_11
    sget-object v0, Lwa/g;->c:Lwa/g;

    .line 622
    .line 623
    invoke-virtual {v1}, Lwa/k;->m()Ljava/util/Set;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    new-array v2, v3, [Lua/c;

    .line 628
    .line 629
    sget-object v3, Ls9/o;->p:Lua/c;

    .line 630
    .line 631
    const/16 v24, 0x0

    .line 632
    .line 633
    aput-object v3, v2, v24

    .line 634
    .line 635
    sget-object v3, Ls9/o;->q:Lua/c;

    .line 636
    .line 637
    aput-object v3, v2, v6

    .line 638
    .line 639
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    invoke-static {v0, v2}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 648
    .line 649
    const/16 v3, 0x24

    .line 650
    .line 651
    aget-object v2, v2, v3

    .line 652
    .line 653
    iget-object v3, v1, Lwa/k;->L:Lwa/j;

    .line 654
    .line 655
    invoke-virtual {v3, v0, v2}, Lwa/j;->b(Ljava/lang/Object;Lm9/u;)V

    .line 656
    .line 657
    .line 658
    iput-boolean v6, v1, Lwa/k;->a:Z

    .line 659
    .line 660
    new-instance v0, Lwa/g;

    .line 661
    .line 662
    invoke-direct {v0, v1}, Lwa/g;-><init>(Lwa/k;)V

    .line 663
    .line 664
    .line 665
    return-object v0

    .line 666
    :pswitch_3
    check-cast v10, Lw9/j;

    .line 667
    .line 668
    iget-object v0, v10, Lw9/j;->a:Ls9/i;

    .line 669
    .line 670
    iget-object v1, v10, Lw9/j;->b:Lua/c;

    .line 671
    .line 672
    invoke-virtual {v0, v1}, Ls9/i;->j(Lua/c;)Lv9/e;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-interface {v0}, Lv9/e;->n()Llb/a0;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    return-object v0

    .line 681
    :pswitch_4
    check-cast v10, Lv9/l0;

    .line 682
    .line 683
    iget-object v0, v10, Lv9/l0;->b:Lf9/k;

    .line 684
    .line 685
    sget-object v1, Lmb/f;->a:Lmb/f;

    .line 686
    .line 687
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Leb/o;

    .line 692
    .line 693
    return-object v0

    .line 694
    :pswitch_5
    const/16 v23, 0x0

    .line 695
    .line 696
    check-cast v10, Lu9/i;

    .line 697
    .line 698
    iget-object v0, v10, Lu9/i;->f:Ls9/l;

    .line 699
    .line 700
    if-eqz v0, :cond_12

    .line 701
    .line 702
    invoke-virtual {v0}, Ls9/l;->invoke()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    check-cast v0, Lu9/h;

    .line 707
    .line 708
    move-object/from16 v1, v23

    .line 709
    .line 710
    iput-object v1, v10, Lu9/i;->f:Ls9/l;

    .line 711
    .line 712
    return-object v0

    .line 713
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    .line 714
    .line 715
    const-string v1, "JvmBuiltins instance has not been initialized properly"

    .line 716
    .line 717
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    throw v0

    .line 721
    :pswitch_6
    check-cast v10, Ljava/util/Map;

    .line 722
    .line 723
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    check-cast v0, Ljava/lang/Iterable;

    .line 728
    .line 729
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    const/4 v8, 0x0

    .line 734
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    if-eqz v1, :cond_1c

    .line 739
    .line 740
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    check-cast v1, Ljava/util/Map$Entry;

    .line 745
    .line 746
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    check-cast v2, Ljava/lang/String;

    .line 751
    .line 752
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    instance-of v3, v1, [Z

    .line 757
    .line 758
    if-eqz v3, :cond_13

    .line 759
    .line 760
    check-cast v1, [Z

    .line 761
    .line 762
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    goto :goto_d

    .line 767
    :cond_13
    instance-of v3, v1, [C

    .line 768
    .line 769
    if-eqz v3, :cond_14

    .line 770
    .line 771
    check-cast v1, [C

    .line 772
    .line 773
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    goto :goto_d

    .line 778
    :cond_14
    instance-of v3, v1, [B

    .line 779
    .line 780
    if-eqz v3, :cond_15

    .line 781
    .line 782
    check-cast v1, [B

    .line 783
    .line 784
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    goto :goto_d

    .line 789
    :cond_15
    instance-of v3, v1, [S

    .line 790
    .line 791
    if-eqz v3, :cond_16

    .line 792
    .line 793
    check-cast v1, [S

    .line 794
    .line 795
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    goto :goto_d

    .line 800
    :cond_16
    instance-of v3, v1, [I

    .line 801
    .line 802
    if-eqz v3, :cond_17

    .line 803
    .line 804
    check-cast v1, [I

    .line 805
    .line 806
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    goto :goto_d

    .line 811
    :cond_17
    instance-of v3, v1, [F

    .line 812
    .line 813
    if-eqz v3, :cond_18

    .line 814
    .line 815
    check-cast v1, [F

    .line 816
    .line 817
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    .line 818
    .line 819
    .line 820
    move-result v1

    .line 821
    goto :goto_d

    .line 822
    :cond_18
    instance-of v3, v1, [J

    .line 823
    .line 824
    if-eqz v3, :cond_19

    .line 825
    .line 826
    check-cast v1, [J

    .line 827
    .line 828
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    goto :goto_d

    .line 833
    :cond_19
    instance-of v3, v1, [D

    .line 834
    .line 835
    if-eqz v3, :cond_1a

    .line 836
    .line 837
    check-cast v1, [D

    .line 838
    .line 839
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    goto :goto_d

    .line 844
    :cond_1a
    instance-of v3, v1, [Ljava/lang/Object;

    .line 845
    .line 846
    if-eqz v3, :cond_1b

    .line 847
    .line 848
    check-cast v1, [Ljava/lang/Object;

    .line 849
    .line 850
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    goto :goto_d

    .line 855
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    mul-int/lit8 v2, v2, 0x7f

    .line 864
    .line 865
    xor-int/2addr v1, v2

    .line 866
    add-int/2addr v8, v1

    .line 867
    goto/16 :goto_c

    .line 868
    .line 869
    :cond_1c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    return-object v0

    .line 874
    :pswitch_7
    check-cast v10, Lp9/s1;

    .line 875
    .line 876
    iget-object v0, v10, Lp9/s1;->a:Lv9/q0;

    .line 877
    .line 878
    invoke-interface {v0}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    const-string v1, "getUpperBounds(...)"

    .line 883
    .line 884
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    new-instance v1, Ljava/util/ArrayList;

    .line 888
    .line 889
    const/16 v2, 0xa

    .line 890
    .line 891
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 892
    .line 893
    .line 894
    move-result v2

    .line 895
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 896
    .line 897
    .line 898
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    if-eqz v2, :cond_1d

    .line 907
    .line 908
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    check-cast v2, Llb/w;

    .line 913
    .line 914
    new-instance v3, Lp9/r1;

    .line 915
    .line 916
    const/4 v4, 0x0

    .line 917
    invoke-direct {v3, v2, v4}, Lp9/r1;-><init>(Llb/w;Lf9/a;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    goto :goto_e

    .line 924
    :cond_1d
    return-object v1

    .line 925
    :pswitch_8
    check-cast v10, Lp9/p0;

    .line 926
    .line 927
    new-instance v0, Lp9/o0;

    .line 928
    .line 929
    invoke-direct {v0, v10}, Lp9/o0;-><init>(Lp9/p0;)V

    .line 930
    .line 931
    .line 932
    return-object v0

    .line 933
    :pswitch_9
    check-cast v10, Lp9/n0;

    .line 934
    .line 935
    new-instance v0, Lp9/m0;

    .line 936
    .line 937
    invoke-direct {v0, v10}, Lp9/m0;-><init>(Lp9/n0;)V

    .line 938
    .line 939
    .line 940
    return-object v0

    .line 941
    :pswitch_a
    check-cast v10, Lp9/l0;

    .line 942
    .line 943
    new-instance v0, Lp9/k0;

    .line 944
    .line 945
    invoke-direct {v0, v10}, Lp9/k0;-><init>(Lp9/l0;)V

    .line 946
    .line 947
    .line 948
    return-object v0

    .line 949
    :pswitch_b
    check-cast v10, Lp9/h0;

    .line 950
    .line 951
    invoke-interface {v10}, Lg9/e;->a()Ljava/lang/Class;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-static {v0}, Lp9/u1;->a(Ljava/lang/Class;)Laa/f;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    return-object v0

    .line 960
    :pswitch_c
    check-cast v10, Lmb/i;

    .line 961
    .line 962
    iget-object v0, v10, Lmb/i;->b:Lf9/a;

    .line 963
    .line 964
    if-eqz v0, :cond_1e

    .line 965
    .line 966
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    move-object v9, v0

    .line 971
    check-cast v9, Ljava/util/List;

    .line 972
    .line 973
    goto :goto_f

    .line 974
    :cond_1e
    const/4 v9, 0x0

    .line 975
    :goto_f
    return-object v9

    .line 976
    :pswitch_d
    check-cast v10, Landroid/support/v4/media/session/t;

    .line 977
    .line 978
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    filled-new-array {v0}, [Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    sget-object v1, Lnb/k;->y:Lnb/k;

    .line 987
    .line 988
    invoke-static {v1, v0}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    return-object v0

    .line 993
    :pswitch_e
    check-cast v10, Llb/f0;

    .line 994
    .line 995
    iget-object v0, v10, Llb/f0;->b:Ljava/lang/Object;

    .line 996
    .line 997
    check-cast v0, Lv9/q0;

    .line 998
    .line 999
    invoke-static {v0}, Llb/c;->w(Lv9/q0;)Llb/w;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    return-object v0

    .line 1004
    :pswitch_f
    check-cast v10, Llb/f;

    .line 1005
    .line 1006
    new-instance v0, Llb/e;

    .line 1007
    .line 1008
    invoke-virtual {v10}, Llb/f;->b()Ljava/util/Collection;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    invoke-direct {v0, v1}, Llb/e;-><init>(Ljava/util/Collection;)V

    .line 1013
    .line 1014
    .line 1015
    return-object v0

    .line 1016
    :pswitch_10
    check-cast v10, Ljb/v;

    .line 1017
    .line 1018
    iget-object v0, v10, Ljb/v;->k:Lhb/k;

    .line 1019
    .line 1020
    iget-object v1, v0, Lhb/k;->a:Lhb/i;

    .line 1021
    .line 1022
    iget-object v1, v1, Lhb/i;->e:Lhb/a;

    .line 1023
    .line 1024
    iget-object v2, v10, Ljb/v;->l:Lpa/x0;

    .line 1025
    .line 1026
    iget-object v0, v0, Lhb/k;->b:Lra/f;

    .line 1027
    .line 1028
    invoke-interface {v1, v2, v0}, Lhb/c;->q(Lpa/x0;Lra/f;)Ljava/util/ArrayList;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    return-object v0

    .line 1037
    :pswitch_11
    check-cast v10, Ljb/q;

    .line 1038
    .line 1039
    invoke-virtual {v10}, Ljb/q;->n()Ljava/util/Set;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    if-nez v0, :cond_1f

    .line 1044
    .line 1045
    const/4 v9, 0x0

    .line 1046
    goto :goto_10

    .line 1047
    :cond_1f
    invoke-virtual {v10}, Ljb/q;->m()Ljava/util/Set;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v1

    .line 1051
    iget-object v2, v10, Ljb/q;->c:Ljb/p;

    .line 1052
    .line 1053
    iget-object v2, v2, Ljb/p;->c:Ljava/util/LinkedHashMap;

    .line 1054
    .line 1055
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    check-cast v2, Ljava/lang/Iterable;

    .line 1060
    .line 1061
    invoke-static {v1, v2}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    check-cast v0, Ljava/lang/Iterable;

    .line 1066
    .line 1067
    invoke-static {v1, v0}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v9

    .line 1071
    :goto_10
    return-object v9

    .line 1072
    :pswitch_12
    check-cast v10, Lba/a;

    .line 1073
    .line 1074
    new-instance v0, Ljava/util/HashSet;

    .line 1075
    .line 1076
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    iget-object v1, v10, Lba/a;->e:Ljava/lang/Object;

    .line 1080
    .line 1081
    check-cast v1, Ljb/i;

    .line 1082
    .line 1083
    iget-object v2, v1, Ljb/i;->n:Lia/h;

    .line 1084
    .line 1085
    iget-object v3, v1, Ljb/i;->l:Lhb/k;

    .line 1086
    .line 1087
    iget-object v1, v1, Ljb/i;->e:Lpa/k;

    .line 1088
    .line 1089
    invoke-virtual {v2}, Llb/f;->e()Ljava/util/List;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v2

    .line 1093
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v2

    .line 1097
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v4

    .line 1101
    if-eqz v4, :cond_23

    .line 1102
    .line 1103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v4

    .line 1107
    check-cast v4, Llb/w;

    .line 1108
    .line 1109
    invoke-virtual {v4}, Llb/w;->R()Leb/o;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v4

    .line 1113
    const/4 v6, 0x0

    .line 1114
    invoke-static {v4, v6, v5}, Lm9/e0;->f0(Leb/q;Leb/f;I)Ljava/util/Collection;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v4

    .line 1118
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v4

    .line 1122
    :cond_21
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v6

    .line 1126
    if-eqz v6, :cond_20

    .line 1127
    .line 1128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v6

    .line 1132
    check-cast v6, Lv9/k;

    .line 1133
    .line 1134
    instance-of v7, v6, Ly9/l0;

    .line 1135
    .line 1136
    if-nez v7, :cond_22

    .line 1137
    .line 1138
    instance-of v7, v6, Lv9/k0;

    .line 1139
    .line 1140
    if-eqz v7, :cond_21

    .line 1141
    .line 1142
    :cond_22
    check-cast v6, Lv9/c;

    .line 1143
    .line 1144
    invoke-interface {v6}, Lv9/k;->getName()Lua/e;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v6

    .line 1148
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1149
    .line 1150
    .line 1151
    goto :goto_11

    .line 1152
    :cond_23
    iget-object v2, v1, Lpa/k;->q:Ljava/util/List;

    .line 1153
    .line 1154
    const-string v4, "getFunctionList(...)"

    .line 1155
    .line 1156
    invoke-static {v2, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v4

    .line 1167
    if-eqz v4, :cond_24

    .line 1168
    .line 1169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v4

    .line 1173
    check-cast v4, Lpa/a0;

    .line 1174
    .line 1175
    iget-object v5, v3, Lhb/k;->b:Lra/f;

    .line 1176
    .line 1177
    iget v4, v4, Lpa/a0;->f:I

    .line 1178
    .line 1179
    invoke-static {v5, v4}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v4

    .line 1183
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    goto :goto_12

    .line 1187
    :cond_24
    iget-object v1, v1, Lpa/k;->r:Ljava/util/List;

    .line 1188
    .line 1189
    const-string v2, "getPropertyList(...)"

    .line 1190
    .line 1191
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1199
    .line 1200
    .line 1201
    move-result v2

    .line 1202
    if-eqz v2, :cond_25

    .line 1203
    .line 1204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v2

    .line 1208
    check-cast v2, Lpa/i0;

    .line 1209
    .line 1210
    iget-object v4, v3, Lhb/k;->b:Lra/f;

    .line 1211
    .line 1212
    iget v2, v2, Lpa/i0;->f:I

    .line 1213
    .line 1214
    invoke-static {v4, v2}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v2

    .line 1218
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    goto :goto_13

    .line 1222
    :cond_25
    invoke-static {v0, v0}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    return-object v0

    .line 1227
    :pswitch_13
    check-cast v10, Lia/d;

    .line 1228
    .line 1229
    iget-object v0, v10, Lia/d;->c:Lia/q;

    .line 1230
    .line 1231
    iget-object v1, v0, Lia/q;->i:Lkb/j;

    .line 1232
    .line 1233
    sget-object v2, Lia/q;->m:[Lm9/u;

    .line 1234
    .line 1235
    const/16 v24, 0x0

    .line 1236
    .line 1237
    aget-object v2, v2, v24

    .line 1238
    .line 1239
    invoke-static {v1, v2}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v1

    .line 1243
    check-cast v1, Ljava/util/Map;

    .line 1244
    .line 1245
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v1

    .line 1249
    check-cast v1, Ljava/lang/Iterable;

    .line 1250
    .line 1251
    new-instance v2, Ljava/util/ArrayList;

    .line 1252
    .line 1253
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .line 1255
    .line 1256
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v1

    .line 1260
    :cond_26
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1261
    .line 1262
    .line 1263
    move-result v3

    .line 1264
    if-eqz v3, :cond_27

    .line 1265
    .line 1266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v3

    .line 1270
    check-cast v3, Laa/c;

    .line 1271
    .line 1272
    iget-object v4, v10, Lia/d;->b:Lba/a;

    .line 1273
    .line 1274
    iget-object v4, v4, Lba/a;->b:Ljava/lang/Object;

    .line 1275
    .line 1276
    check-cast v4, Lha/a;

    .line 1277
    .line 1278
    iget-object v4, v4, Lha/a;->d:Lna/f;

    .line 1279
    .line 1280
    invoke-virtual {v4, v0, v3}, Lna/f;->a(Lv9/d0;Laa/c;)Ljb/r;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v3

    .line 1284
    if-eqz v3, :cond_26

    .line 1285
    .line 1286
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    .line 1288
    .line 1289
    goto :goto_14

    .line 1290
    :cond_27
    invoke-static {v2}, Lp9/x1;->D(Ljava/util/ArrayList;)Lub/f;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v0

    .line 1294
    const/4 v9, 0x0

    .line 1295
    new-array v1, v9, [Leb/o;

    .line 1296
    .line 1297
    invoke-virtual {v0, v1}, Lub/f;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    check-cast v0, [Leb/o;

    .line 1302
    .line 1303
    return-object v0

    .line 1304
    :pswitch_14
    check-cast v10, Lib/c;

    .line 1305
    .line 1306
    iget-object v0, v10, Lib/c;->i:Lba/a;

    .line 1307
    .line 1308
    iget-object v0, v0, Lba/a;->e:Ljava/lang/Object;

    .line 1309
    .line 1310
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1311
    .line 1312
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    check-cast v0, Ljava/util/Collection;

    .line 1317
    .line 1318
    check-cast v0, Ljava/lang/Iterable;

    .line 1319
    .line 1320
    new-instance v1, Ljava/util/ArrayList;

    .line 1321
    .line 1322
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .line 1324
    .line 1325
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    :cond_28
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1330
    .line 1331
    .line 1332
    move-result v2

    .line 1333
    if-eqz v2, :cond_29

    .line 1334
    .line 1335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v2

    .line 1339
    move-object v3, v2

    .line 1340
    check-cast v3, Lua/b;

    .line 1341
    .line 1342
    invoke-virtual {v3}, Lua/b;->g()Z

    .line 1343
    .line 1344
    .line 1345
    move-result v4

    .line 1346
    if-nez v4, :cond_28

    .line 1347
    .line 1348
    sget-object v4, Lhb/g;->c:Ljava/util/Set;

    .line 1349
    .line 1350
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1351
    .line 1352
    .line 1353
    move-result v3

    .line 1354
    if-nez v3, :cond_28

    .line 1355
    .line 1356
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    .line 1358
    .line 1359
    goto :goto_15

    .line 1360
    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    .line 1361
    .line 1362
    const/16 v2, 0xa

    .line 1363
    .line 1364
    invoke-static {v1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 1365
    .line 1366
    .line 1367
    move-result v2

    .line 1368
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v1

    .line 1375
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1376
    .line 1377
    .line 1378
    move-result v2

    .line 1379
    if-eqz v2, :cond_2a

    .line 1380
    .line 1381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v2

    .line 1385
    check-cast v2, Lua/b;

    .line 1386
    .line 1387
    invoke-virtual {v2}, Lua/b;->f()Lua/e;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    .line 1393
    .line 1394
    goto :goto_16

    .line 1395
    :cond_2a
    return-object v0

    .line 1396
    :pswitch_15
    check-cast v10, Lfa/j;

    .line 1397
    .line 1398
    iget-object v0, v10, Lfa/b;->d:Lla/a;

    .line 1399
    .line 1400
    instance-of v1, v0, Lba/h;

    .line 1401
    .line 1402
    if-eqz v1, :cond_2b

    .line 1403
    .line 1404
    sget-object v1, Lfa/e;->a:Ljava/lang/Object;

    .line 1405
    .line 1406
    check-cast v0, Lba/h;

    .line 1407
    .line 1408
    invoke-virtual {v0}, Lba/h;->a()Ljava/util/ArrayList;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    invoke-static {v0}, Lfa/e;->a(Ljava/util/List;)Lza/b;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    goto :goto_17

    .line 1417
    :cond_2b
    instance-of v1, v0, Lba/u;

    .line 1418
    .line 1419
    if-eqz v1, :cond_2c

    .line 1420
    .line 1421
    sget-object v1, Lfa/e;->a:Ljava/lang/Object;

    .line 1422
    .line 1423
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    invoke-static {v0}, Lfa/e;->a(Ljava/util/List;)Lza/b;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    goto :goto_17

    .line 1432
    :cond_2c
    const/4 v0, 0x0

    .line 1433
    :goto_17
    if-eqz v0, :cond_2d

    .line 1434
    .line 1435
    sget-object v1, Lfa/c;->b:Lua/e;

    .line 1436
    .line 1437
    new-instance v3, Lr8/j;

    .line 1438
    .line 1439
    invoke-direct {v3, v1, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1440
    .line 1441
    .line 1442
    invoke-static {v3}, Ls8/c0;->I(Lr8/j;)Ljava/util/Map;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v9

    .line 1446
    goto :goto_18

    .line 1447
    :cond_2d
    const/4 v9, 0x0

    .line 1448
    :goto_18
    if-nez v9, :cond_2e

    .line 1449
    .line 1450
    goto :goto_19

    .line 1451
    :cond_2e
    move-object v2, v9

    .line 1452
    :goto_19
    return-object v2

    .line 1453
    :pswitch_16
    check-cast v10, Lfa/i;

    .line 1454
    .line 1455
    sget-object v0, Lfa/e;->a:Ljava/lang/Object;

    .line 1456
    .line 1457
    iget-object v0, v10, Lfa/b;->d:Lla/a;

    .line 1458
    .line 1459
    instance-of v1, v0, Lba/u;

    .line 1460
    .line 1461
    if-eqz v1, :cond_2f

    .line 1462
    .line 1463
    check-cast v0, Lba/u;

    .line 1464
    .line 1465
    goto :goto_1a

    .line 1466
    :cond_2f
    const/4 v0, 0x0

    .line 1467
    :goto_1a
    if-eqz v0, :cond_30

    .line 1468
    .line 1469
    sget-object v1, Lfa/e;->b:Ljava/lang/Object;

    .line 1470
    .line 1471
    iget-object v0, v0, Lba/u;->b:Ljava/lang/Enum;

    .line 1472
    .line 1473
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v0

    .line 1481
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    check-cast v0, Lw9/m;

    .line 1490
    .line 1491
    if-eqz v0, :cond_30

    .line 1492
    .line 1493
    new-instance v1, Lza/i;

    .line 1494
    .line 1495
    sget-object v3, Ls9/o;->v:Lua/c;

    .line 1496
    .line 1497
    const-string v4, "topLevelFqName"

    .line 1498
    .line 1499
    invoke-static {v3, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1500
    .line 1501
    .line 1502
    new-instance v4, Lua/b;

    .line 1503
    .line 1504
    invoke-virtual {v3}, Lua/c;->b()Lua/c;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v5

    .line 1508
    iget-object v3, v3, Lua/c;->a:Lua/d;

    .line 1509
    .line 1510
    invoke-virtual {v3}, Lua/d;->f()Lua/e;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v3

    .line 1514
    invoke-direct {v4, v5, v3}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v0

    .line 1525
    invoke-direct {v1, v4, v0}, Lza/i;-><init>(Lua/b;Lua/e;)V

    .line 1526
    .line 1527
    .line 1528
    goto :goto_1b

    .line 1529
    :cond_30
    const/4 v1, 0x0

    .line 1530
    :goto_1b
    if-eqz v1, :cond_31

    .line 1531
    .line 1532
    sget-object v0, Lfa/c;->c:Lua/e;

    .line 1533
    .line 1534
    new-instance v3, Lr8/j;

    .line 1535
    .line 1536
    invoke-direct {v3, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1537
    .line 1538
    .line 1539
    invoke-static {v3}, Ls8/c0;->I(Lr8/j;)Ljava/util/Map;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v9

    .line 1543
    goto :goto_1c

    .line 1544
    :cond_31
    const/4 v9, 0x0

    .line 1545
    :goto_1c
    if-nez v9, :cond_32

    .line 1546
    .line 1547
    goto :goto_1d

    .line 1548
    :cond_32
    move-object v2, v9

    .line 1549
    :goto_1d
    return-object v2

    .line 1550
    :pswitch_17
    check-cast v10, Lf1/p1;

    .line 1551
    .line 1552
    iget-object v0, v10, Lf1/p1;->a:Ljava/util/ArrayList;

    .line 1553
    .line 1554
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1555
    .line 1556
    .line 1557
    move-result v1

    .line 1558
    new-instance v2, Ls/h0;

    .line 1559
    .line 1560
    invoke-direct {v2, v1}, Ls/h0;-><init>(I)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1564
    .line 1565
    .line 1566
    move-result v1

    .line 1567
    const/4 v9, 0x0

    .line 1568
    :goto_1e
    if-ge v9, v1, :cond_39

    .line 1569
    .line 1570
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v4

    .line 1574
    check-cast v4, Lf1/s0;

    .line 1575
    .line 1576
    iget-object v5, v4, Lf1/s0;->b:Ljava/lang/Object;

    .line 1577
    .line 1578
    iget v7, v4, Lf1/s0;->a:I

    .line 1579
    .line 1580
    if-eqz v5, :cond_33

    .line 1581
    .line 1582
    new-instance v5, Lf1/r0;

    .line 1583
    .line 1584
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v7

    .line 1588
    iget-object v8, v4, Lf1/s0;->b:Ljava/lang/Object;

    .line 1589
    .line 1590
    invoke-direct {v5, v7, v8}, Lf1/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1591
    .line 1592
    .line 1593
    goto :goto_1f

    .line 1594
    :cond_33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v5

    .line 1598
    :goto_1f
    invoke-virtual {v2, v5}, Ls/h0;->f(Ljava/lang/Object;)I

    .line 1599
    .line 1600
    .line 1601
    move-result v7

    .line 1602
    if-gez v7, :cond_34

    .line 1603
    .line 1604
    const/4 v8, 0x1

    .line 1605
    goto :goto_20

    .line 1606
    :cond_34
    const/4 v8, 0x0

    .line 1607
    :goto_20
    if-eqz v8, :cond_35

    .line 1608
    .line 1609
    const/4 v10, 0x0

    .line 1610
    goto :goto_21

    .line 1611
    :cond_35
    iget-object v10, v2, Ls/h0;->c:[Ljava/lang/Object;

    .line 1612
    .line 1613
    aget-object v10, v10, v7

    .line 1614
    .line 1615
    :goto_21
    if-nez v10, :cond_36

    .line 1616
    .line 1617
    goto :goto_22

    .line 1618
    :cond_36
    instance-of v11, v10, Ls/d0;

    .line 1619
    .line 1620
    if-eqz v11, :cond_37

    .line 1621
    .line 1622
    check-cast v10, Ls/d0;

    .line 1623
    .line 1624
    invoke-virtual {v10, v4}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 1625
    .line 1626
    .line 1627
    move-object v4, v10

    .line 1628
    goto :goto_22

    .line 1629
    :cond_37
    sget-object v11, Ls/m0;->a:[Ljava/lang/Object;

    .line 1630
    .line 1631
    new-instance v11, Ls/d0;

    .line 1632
    .line 1633
    invoke-direct {v11, v3}, Ls/d0;-><init>(I)V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v11, v10}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v11, v4}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 1640
    .line 1641
    .line 1642
    move-object v4, v11

    .line 1643
    :goto_22
    if-eqz v8, :cond_38

    .line 1644
    .line 1645
    not-int v7, v7

    .line 1646
    iget-object v8, v2, Ls/h0;->b:[Ljava/lang/Object;

    .line 1647
    .line 1648
    aput-object v5, v8, v7

    .line 1649
    .line 1650
    iget-object v5, v2, Ls/h0;->c:[Ljava/lang/Object;

    .line 1651
    .line 1652
    aput-object v4, v5, v7

    .line 1653
    .line 1654
    goto :goto_23

    .line 1655
    :cond_38
    iget-object v5, v2, Ls/h0;->c:[Ljava/lang/Object;

    .line 1656
    .line 1657
    aput-object v4, v5, v7

    .line 1658
    .line 1659
    :goto_23
    add-int/lit8 v9, v9, 0x1

    .line 1660
    .line 1661
    goto :goto_1e

    .line 1662
    :cond_39
    new-instance v0, Lh1/a;

    .line 1663
    .line 1664
    invoke-direct {v0, v2}, Lh1/a;-><init>(Ls/h0;)V

    .line 1665
    .line 1666
    .line 1667
    return-object v0

    .line 1668
    :pswitch_18
    check-cast v10, Leb/t;

    .line 1669
    .line 1670
    iget-object v0, v10, Leb/t;->b:Leb/o;

    .line 1671
    .line 1672
    const/4 v1, 0x0

    .line 1673
    invoke-static {v0, v1, v5}, Lm9/e0;->f0(Leb/q;Leb/f;I)Ljava/util/Collection;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v0

    .line 1677
    invoke-virtual {v10, v0}, Leb/t;->h(Ljava/util/Collection;)Ljava/util/Collection;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v0

    .line 1681
    return-object v0

    .line 1682
    :pswitch_19
    check-cast v10, Llb/s0;

    .line 1683
    .line 1684
    invoke-virtual {v10}, Llb/s0;->f()Llb/q0;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v0

    .line 1688
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1689
    .line 1690
    .line 1691
    new-instance v1, Llb/s0;

    .line 1692
    .line 1693
    invoke-direct {v1, v0}, Llb/s0;-><init>(Llb/q0;)V

    .line 1694
    .line 1695
    .line 1696
    return-object v1

    .line 1697
    :pswitch_1a
    check-cast v10, Leb/h;

    .line 1698
    .line 1699
    invoke-virtual {v10}, Leb/h;->h()Ljava/util/List;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    new-instance v1, Ljava/util/ArrayList;

    .line 1704
    .line 1705
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1706
    .line 1707
    .line 1708
    iget-object v15, v10, Leb/h;->b:Ly9/b;

    .line 1709
    .line 1710
    invoke-interface {v15}, Lv9/h;->t()Llb/k0;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v2

    .line 1714
    invoke-interface {v2}, Llb/k0;->l()Ljava/util/Collection;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v2

    .line 1718
    const-string v3, "getSupertypes(...)"

    .line 1719
    .line 1720
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1721
    .line 1722
    .line 1723
    check-cast v2, Ljava/lang/Iterable;

    .line 1724
    .line 1725
    new-instance v3, Ljava/util/ArrayList;

    .line 1726
    .line 1727
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .line 1729
    .line 1730
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v2

    .line 1734
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1735
    .line 1736
    .line 1737
    move-result v6

    .line 1738
    if-eqz v6, :cond_3a

    .line 1739
    .line 1740
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v6

    .line 1744
    check-cast v6, Llb/w;

    .line 1745
    .line 1746
    invoke-virtual {v6}, Llb/w;->R()Leb/o;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v6

    .line 1750
    const/4 v7, 0x0

    .line 1751
    invoke-static {v6, v7, v5}, Lm9/e0;->f0(Leb/q;Leb/f;I)Ljava/util/Collection;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v6

    .line 1755
    check-cast v6, Ljava/lang/Iterable;

    .line 1756
    .line 1757
    invoke-static {v6, v3}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1758
    .line 1759
    .line 1760
    goto :goto_24

    .line 1761
    :cond_3a
    new-instance v2, Ljava/util/ArrayList;

    .line 1762
    .line 1763
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v3

    .line 1770
    :cond_3b
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1771
    .line 1772
    .line 1773
    move-result v5

    .line 1774
    if-eqz v5, :cond_3c

    .line 1775
    .line 1776
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v5

    .line 1780
    instance-of v6, v5, Lv9/c;

    .line 1781
    .line 1782
    if-eqz v6, :cond_3b

    .line 1783
    .line 1784
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    goto :goto_25

    .line 1788
    :cond_3c
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1789
    .line 1790
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v2

    .line 1797
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1798
    .line 1799
    .line 1800
    move-result v5

    .line 1801
    if-eqz v5, :cond_3e

    .line 1802
    .line 1803
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v5

    .line 1807
    move-object v6, v5

    .line 1808
    check-cast v6, Lv9/c;

    .line 1809
    .line 1810
    invoke-interface {v6}, Lv9/k;->getName()Lua/e;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v6

    .line 1814
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v7

    .line 1818
    if-nez v7, :cond_3d

    .line 1819
    .line 1820
    new-instance v7, Ljava/util/ArrayList;

    .line 1821
    .line 1822
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1823
    .line 1824
    .line 1825
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    .line 1827
    .line 1828
    :cond_3d
    check-cast v7, Ljava/util/List;

    .line 1829
    .line 1830
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    .line 1832
    .line 1833
    goto :goto_26

    .line 1834
    :cond_3e
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v2

    .line 1838
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v2

    .line 1842
    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1843
    .line 1844
    .line 1845
    move-result v3

    .line 1846
    if-eqz v3, :cond_45

    .line 1847
    .line 1848
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v3

    .line 1852
    check-cast v3, Ljava/util/Map$Entry;

    .line 1853
    .line 1854
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v5

    .line 1858
    const-string v6, "component1(...)"

    .line 1859
    .line 1860
    invoke-static {v5, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    .line 1862
    .line 1863
    move-object v12, v5

    .line 1864
    check-cast v12, Lua/e;

    .line 1865
    .line 1866
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v3

    .line 1870
    check-cast v3, Ljava/util/List;

    .line 1871
    .line 1872
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 1873
    .line 1874
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1875
    .line 1876
    .line 1877
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v3

    .line 1881
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1882
    .line 1883
    .line 1884
    move-result v6

    .line 1885
    if-eqz v6, :cond_41

    .line 1886
    .line 1887
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v6

    .line 1891
    move-object v7, v6

    .line 1892
    check-cast v7, Lv9/c;

    .line 1893
    .line 1894
    instance-of v7, v7, Lv9/t;

    .line 1895
    .line 1896
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v7

    .line 1900
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v8

    .line 1904
    if-nez v8, :cond_40

    .line 1905
    .line 1906
    new-instance v8, Ljava/util/ArrayList;

    .line 1907
    .line 1908
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1909
    .line 1910
    .line 1911
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    :cond_40
    check-cast v8, Ljava/util/List;

    .line 1915
    .line 1916
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1917
    .line 1918
    .line 1919
    goto :goto_27

    .line 1920
    :cond_41
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v3

    .line 1924
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v3

    .line 1928
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1929
    .line 1930
    .line 1931
    move-result v5

    .line 1932
    if-eqz v5, :cond_3f

    .line 1933
    .line 1934
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v5

    .line 1938
    check-cast v5, Ljava/util/Map$Entry;

    .line 1939
    .line 1940
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v6

    .line 1944
    check-cast v6, Ljava/lang/Boolean;

    .line 1945
    .line 1946
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1947
    .line 1948
    .line 1949
    move-result v6

    .line 1950
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v5

    .line 1954
    move-object v13, v5

    .line 1955
    check-cast v13, Ljava/util/List;

    .line 1956
    .line 1957
    sget-object v11, Lxa/j;->c:Lxa/j;

    .line 1958
    .line 1959
    if-eqz v6, :cond_44

    .line 1960
    .line 1961
    new-instance v5, Ljava/util/ArrayList;

    .line 1962
    .line 1963
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1964
    .line 1965
    .line 1966
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v6

    .line 1970
    :cond_42
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1971
    .line 1972
    .line 1973
    move-result v7

    .line 1974
    if-eqz v7, :cond_43

    .line 1975
    .line 1976
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v7

    .line 1980
    move-object v8, v7

    .line 1981
    check-cast v8, Lv9/t;

    .line 1982
    .line 1983
    check-cast v8, Ly9/m;

    .line 1984
    .line 1985
    invoke-virtual {v8}, Ly9/m;->getName()Lua/e;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v8

    .line 1989
    invoke-static {v8, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v8

    .line 1993
    if-eqz v8, :cond_42

    .line 1994
    .line 1995
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    .line 1997
    .line 1998
    goto :goto_29

    .line 1999
    :cond_43
    move-object v14, v5

    .line 2000
    goto :goto_2a

    .line 2001
    :cond_44
    move-object v14, v4

    .line 2002
    :goto_2a
    new-instance v5, Leb/g;

    .line 2003
    .line 2004
    invoke-direct {v5, v1, v10}, Leb/g;-><init>(Ljava/util/ArrayList;Leb/h;)V

    .line 2005
    .line 2006
    .line 2007
    move-object/from16 v16, v5

    .line 2008
    .line 2009
    invoke-virtual/range {v11 .. v16}, Lxa/j;->h(Lua/e;Ljava/util/Collection;Ljava/util/Collection;Lv9/e;Lxa/k;)V

    .line 2010
    .line 2011
    .line 2012
    goto :goto_28

    .line 2013
    :cond_45
    invoke-static {v1}, Lub/k;->d(Ljava/util/ArrayList;)Ljava/util/List;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v1

    .line 2017
    invoke-static {v1, v0}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v0

    .line 2021
    return-object v0

    .line 2022
    :pswitch_1b
    check-cast v10, Lea/w;

    .line 2023
    .line 2024
    new-instance v0, Lt8/b;

    .line 2025
    .line 2026
    const/16 v2, 0xa

    .line 2027
    .line 2028
    invoke-direct {v0, v2}, Lt8/b;-><init>(I)V

    .line 2029
    .line 2030
    .line 2031
    iget-object v1, v10, Lea/w;->a:Lea/c0;

    .line 2032
    .line 2033
    iget-object v1, v1, Lea/c0;->a:Ljava/lang/String;

    .line 2034
    .line 2035
    invoke-virtual {v0, v1}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 2036
    .line 2037
    .line 2038
    iget-object v1, v10, Lea/w;->b:Lea/c0;

    .line 2039
    .line 2040
    if-eqz v1, :cond_46

    .line 2041
    .line 2042
    iget-object v1, v1, Lea/c0;->a:Ljava/lang/String;

    .line 2043
    .line 2044
    const-string v2, "under-migration:"

    .line 2045
    .line 2046
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v1

    .line 2050
    invoke-virtual {v0, v1}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 2051
    .line 2052
    .line 2053
    :cond_46
    iget-object v1, v10, Lea/w;->c:Ljava/util/Map;

    .line 2054
    .line 2055
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v1

    .line 2059
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v1

    .line 2063
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2064
    .line 2065
    .line 2066
    move-result v2

    .line 2067
    if-eqz v2, :cond_47

    .line 2068
    .line 2069
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v2

    .line 2073
    check-cast v2, Ljava/util/Map$Entry;

    .line 2074
    .line 2075
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2076
    .line 2077
    const-string v4, "@"

    .line 2078
    .line 2079
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2080
    .line 2081
    .line 2082
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v4

    .line 2086
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2087
    .line 2088
    .line 2089
    const/16 v4, 0x3a

    .line 2090
    .line 2091
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2092
    .line 2093
    .line 2094
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v2

    .line 2098
    check-cast v2, Lea/c0;

    .line 2099
    .line 2100
    iget-object v2, v2, Lea/c0;->a:Ljava/lang/String;

    .line 2101
    .line 2102
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    .line 2104
    .line 2105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v2

    .line 2109
    invoke-virtual {v0, v2}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 2110
    .line 2111
    .line 2112
    goto :goto_2b

    .line 2113
    :cond_47
    invoke-static {v0}, Lp9/x1;->c(Lt8/b;)Lt8/b;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v0

    .line 2117
    const/4 v9, 0x0

    .line 2118
    new-array v1, v9, [Ljava/lang/String;

    .line 2119
    .line 2120
    invoke-virtual {v0, v1}, Lt8/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v0

    .line 2124
    check-cast v0, [Ljava/lang/String;

    .line 2125
    .line 2126
    return-object v0

    .line 2127
    :pswitch_1c
    check-cast v10, Lf1/b1;

    .line 2128
    .line 2129
    const/4 v1, 0x0

    .line 2130
    invoke-interface {v10, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 2131
    .line 2132
    .line 2133
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2134
    .line 2135
    return-object v0

    .line 2136
    nop

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
