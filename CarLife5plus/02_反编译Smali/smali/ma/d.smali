.class public final Lma/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static c(Llb/a0;La8/h0;ILma/s;ZZ)Lma/c;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lma/s;->c:Lma/s;

    .line 10
    .line 11
    if-eq v1, v5, :cond_0

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v6, 0x0

    .line 16
    :goto_0
    if-eqz v2, :cond_2

    .line 17
    .line 18
    if-nez p4, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v7, 0x0

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    const/4 v7, 0x1

    .line 24
    :goto_2
    const/4 v8, 0x0

    .line 25
    if-nez v6, :cond_3

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Llb/w;->B0()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_3

    .line 36
    .line 37
    new-instance v0, Lma/c;

    .line 38
    .line 39
    invoke-direct {v0, v8, v4, v3}, Lma/c;-><init>(Llb/a0;IZ)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_3
    invoke-virtual/range {p0 .. p0}, Llb/w;->D0()Llb/k0;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v6}, Llb/k0;->k()Lv9/h;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-nez v6, :cond_4

    .line 52
    .line 53
    new-instance v0, Lma/c;

    .line 54
    .line 55
    invoke-direct {v0, v8, v4, v3}, Lma/c;-><init>(Llb/a0;IZ)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v0, v9}, La8/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    check-cast v9, Lma/e;

    .line 68
    .line 69
    sget-object v10, Lma/v;->a:Lw9/i;

    .line 70
    .line 71
    if-eq v1, v5, :cond_8

    .line 72
    .line 73
    instance-of v10, v6, Lv9/e;

    .line 74
    .line 75
    if-nez v10, :cond_5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    iget-object v10, v9, Lma/e;->b:Lma/f;

    .line 79
    .line 80
    sget-object v11, Lma/f;->a:Lma/f;

    .line 81
    .line 82
    if-ne v10, v11, :cond_7

    .line 83
    .line 84
    sget-object v10, Lma/s;->a:Lma/s;

    .line 85
    .line 86
    if-ne v1, v10, :cond_7

    .line 87
    .line 88
    move-object v10, v6

    .line 89
    check-cast v10, Lv9/e;

    .line 90
    .line 91
    sget-object v11, Lu9/d;->a:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v10}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    sget-object v12, Lu9/d;->j:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_7

    .line 104
    .line 105
    invoke-static {v10}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Lua/c;

    .line 114
    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    invoke-static {v10}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v10, v6}, Ls9/i;->j(Lua/c;)Lv9/e;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    goto :goto_4

    .line 126
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v2, "Given class "

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, " is not a mutable collection"

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_7
    iget-object v10, v9, Lma/e;->b:Lma/f;

    .line 152
    .line 153
    sget-object v11, Lma/f;->b:Lma/f;

    .line 154
    .line 155
    if-ne v10, v11, :cond_8

    .line 156
    .line 157
    sget-object v10, Lma/s;->b:Lma/s;

    .line 158
    .line 159
    if-ne v1, v10, :cond_8

    .line 160
    .line 161
    check-cast v6, Lv9/e;

    .line 162
    .line 163
    sget-object v10, Lu9/d;->a:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v6}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    sget-object v11, Lu9/d;->k:Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_8

    .line 176
    .line 177
    invoke-static {v6}, Lu9/e;->a(Lv9/e;)Lv9/e;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    :goto_3
    move-object v6, v8

    .line 183
    :goto_4
    const/4 v10, 0x2

    .line 184
    if-eq v1, v5, :cond_c

    .line 185
    .line 186
    iget-object v1, v9, Lma/e;->a:Lma/h;

    .line 187
    .line 188
    if-nez v1, :cond_9

    .line 189
    .line 190
    const/4 v1, -0x1

    .line 191
    goto :goto_5

    .line 192
    :cond_9
    sget-object v5, Lma/u;->a:[I

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    aget v1, v5, v1

    .line 199
    .line 200
    :goto_5
    if-eq v1, v4, :cond_b

    .line 201
    .line 202
    if-eq v1, v10, :cond_a

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_c
    :goto_6
    move-object v1, v8

    .line 212
    :goto_7
    if-eqz v6, :cond_d

    .line 213
    .line 214
    invoke-interface {v6}, Lv9/h;->t()Llb/k0;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    if-nez v5, :cond_e

    .line 219
    .line 220
    :cond_d
    invoke-virtual/range {p0 .. p0}, Llb/w;->D0()Llb/k0;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    :cond_e
    add-int/lit8 v11, p2, 0x1

    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Llb/w;->B0()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-interface {v5}, Llb/k0;->m()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    const-string v14, "getParameters(...)"

    .line 235
    .line 236
    invoke-static {v13, v14}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    const/16 p4, 0x2

    .line 248
    .line 249
    new-instance v10, Ljava/util/ArrayList;

    .line 250
    .line 251
    const/16 v4, 0xa

    .line 252
    .line 253
    invoke-static {v12, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    invoke-static {v13, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .line 267
    .line 268
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    if-eqz v12, :cond_15

    .line 273
    .line 274
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    if-eqz v12, :cond_15

    .line 279
    .line 280
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    check-cast v13, Lv9/q0;

    .line 289
    .line 290
    check-cast v12, Llb/n0;

    .line 291
    .line 292
    const/4 v4, 0x4

    .line 293
    if-nez v7, :cond_f

    .line 294
    .line 295
    move-object/from16 v16, v1

    .line 296
    .line 297
    new-instance v1, Lj/g;

    .line 298
    .line 299
    invoke-direct {v1, v3, v4, v8}, Lj/g;-><init>(IILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_f
    move-object/from16 v16, v1

    .line 304
    .line 305
    invoke-virtual {v12}, Llb/n0;->c()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_10

    .line 310
    .line 311
    invoke-virtual {v12}, Llb/n0;->b()Llb/w;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1}, Llb/w;->G0()Llb/x0;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v1, v0, v11, v2}, Lma/d;->d(Llb/x0;La8/h0;IZ)Lj/g;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    goto :goto_9

    .line 324
    :cond_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, La8/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Lma/e;

    .line 333
    .line 334
    iget-object v1, v1, Lma/e;->a:Lma/h;

    .line 335
    .line 336
    sget-object v8, Lma/h;->a:Lma/h;

    .line 337
    .line 338
    if-ne v1, v8, :cond_11

    .line 339
    .line 340
    invoke-virtual {v12}, Llb/n0;->b()Llb/w;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1}, Llb/w;->G0()Llb/x0;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    new-instance v8, Lj/g;

    .line 349
    .line 350
    invoke-static {v1}, Llb/c;->l(Llb/w;)Llb/a0;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v4, v3}, Llb/a0;->K0(Z)Llb/a0;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-static {v1}, Llb/c;->D(Llb/w;)Llb/a0;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    const/4 v3, 0x1

    .line 363
    invoke-virtual {v1, v3}, Llb/a0;->K0(Z)Llb/a0;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-static {v4, v1}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    const/4 v4, 0x4

    .line 372
    invoke-direct {v8, v3, v4, v1}, Lj/g;-><init>(IILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    move-object v1, v8

    .line 376
    goto :goto_9

    .line 377
    :cond_11
    const/4 v3, 0x1

    .line 378
    new-instance v1, Lj/g;

    .line 379
    .line 380
    const/4 v8, 0x0

    .line 381
    invoke-direct {v1, v3, v4, v8}, Lj/g;-><init>(IILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    :goto_9
    iget v3, v1, Lj/g;->b:I

    .line 385
    .line 386
    add-int/2addr v11, v3

    .line 387
    iget-object v1, v1, Lj/g;->c:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v1, Llb/w;

    .line 390
    .line 391
    const-string v3, "getProjectionKind(...)"

    .line 392
    .line 393
    if-eqz v1, :cond_12

    .line 394
    .line 395
    invoke-virtual {v12}, Llb/n0;->a()Llb/y0;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-static {v4, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v1, v4, v13}, Lp4/o;->C(Llb/w;Llb/y0;Lv9/q0;)Llb/f0;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    goto :goto_a

    .line 407
    :cond_12
    if-eqz v6, :cond_13

    .line 408
    .line 409
    invoke-virtual {v12}, Llb/n0;->c()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_13

    .line 414
    .line 415
    invoke-virtual {v12}, Llb/n0;->b()Llb/w;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    const-string v4, "getType(...)"

    .line 420
    .line 421
    invoke-static {v1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v12}, Llb/n0;->a()Llb/y0;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-static {v4, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v1, v4, v13}, Lp4/o;->C(Llb/w;Llb/y0;Lv9/q0;)Llb/f0;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    goto :goto_a

    .line 436
    :cond_13
    if-eqz v6, :cond_14

    .line 437
    .line 438
    invoke-static {v13}, Llb/v0;->j(Lv9/q0;)Llb/f0;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    goto :goto_a

    .line 443
    :cond_14
    const/4 v8, 0x0

    .line 444
    :goto_a
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-object/from16 v1, v16

    .line 448
    .line 449
    const/4 v3, 0x0

    .line 450
    const/16 v4, 0xa

    .line 451
    .line 452
    const/4 v8, 0x0

    .line 453
    goto/16 :goto_8

    .line 454
    .line 455
    :cond_15
    move-object/from16 v16, v1

    .line 456
    .line 457
    sub-int v11, v11, p2

    .line 458
    .line 459
    if-nez v6, :cond_17

    .line 460
    .line 461
    if-nez v16, :cond_17

    .line 462
    .line 463
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-eqz v0, :cond_16

    .line 468
    .line 469
    goto :goto_c

    .line 470
    :cond_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    if-eqz v1, :cond_18

    .line 479
    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Llb/n0;

    .line 485
    .line 486
    if-nez v1, :cond_17

    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_17
    const/4 v8, 0x0

    .line 490
    goto :goto_d

    .line 491
    :cond_18
    :goto_c
    new-instance v0, Lma/c;

    .line 492
    .line 493
    const/4 v1, 0x0

    .line 494
    const/4 v8, 0x0

    .line 495
    invoke-direct {v0, v8, v11, v1}, Lma/c;-><init>(Llb/a0;IZ)V

    .line 496
    .line 497
    .line 498
    return-object v0

    .line 499
    :goto_d
    invoke-virtual/range {p0 .. p0}, Llb/w;->getAnnotations()Lw9/h;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sget-object v1, Lma/v;->b:Lw9/i;

    .line 504
    .line 505
    if-eqz v6, :cond_19

    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_19
    move-object v1, v8

    .line 509
    :goto_e
    sget-object v2, Lma/v;->a:Lw9/i;

    .line 510
    .line 511
    if-eqz v16, :cond_1a

    .line 512
    .line 513
    move-object v8, v2

    .line 514
    :cond_1a
    const/4 v2, 0x3

    .line 515
    new-array v2, v2, [Lw9/h;

    .line 516
    .line 517
    const/16 v17, 0x0

    .line 518
    .line 519
    aput-object v0, v2, v17

    .line 520
    .line 521
    const/4 v3, 0x1

    .line 522
    aput-object v1, v2, v3

    .line 523
    .line 524
    aput-object v8, v2, p4

    .line 525
    .line 526
    invoke-static {v2}, Ls8/l;->V([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-eqz v1, :cond_21

    .line 535
    .line 536
    if-eq v1, v3, :cond_1b

    .line 537
    .line 538
    new-instance v1, Lw9/i;

    .line 539
    .line 540
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-direct {v1, v3, v0}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 545
    .line 546
    .line 547
    goto :goto_f

    .line 548
    :cond_1b
    invoke-static {v0}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    move-object v1, v0

    .line 553
    check-cast v1, Lw9/h;

    .line 554
    .line 555
    :goto_f
    invoke-static {v1}, Llb/c;->B(Lw9/h;)Llb/h0;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual/range {p0 .. p0}, Llb/w;->B0()Ljava/util/List;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    new-instance v6, Ljava/util/ArrayList;

    .line 572
    .line 573
    const/16 v7, 0xa

    .line 574
    .line 575
    invoke-static {v10, v7}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 576
    .line 577
    .line 578
    move-result v8

    .line 579
    invoke-static {v1, v7}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    .line 589
    .line 590
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    if-eqz v1, :cond_1d

    .line 595
    .line 596
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_1d

    .line 601
    .line 602
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v7

    .line 610
    check-cast v7, Llb/n0;

    .line 611
    .line 612
    check-cast v1, Llb/n0;

    .line 613
    .line 614
    if-nez v1, :cond_1c

    .line 615
    .line 616
    goto :goto_11

    .line 617
    :cond_1c
    move-object v7, v1

    .line 618
    :goto_11
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    goto :goto_10

    .line 622
    :cond_1d
    if-eqz v16, :cond_1e

    .line 623
    .line 624
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    goto :goto_12

    .line 629
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Llb/w;->E0()Z

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    :goto_12
    invoke-static {v6, v0, v5, v1}, Llb/c;->t(Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    iget-boolean v1, v9, Lma/e;->c:Z

    .line 638
    .line 639
    if-eqz v1, :cond_1f

    .line 640
    .line 641
    new-instance v1, Lma/g;

    .line 642
    .line 643
    invoke-direct {v1, v0}, Lma/g;-><init>(Llb/a0;)V

    .line 644
    .line 645
    .line 646
    move-object v0, v1

    .line 647
    :cond_1f
    if-eqz v16, :cond_20

    .line 648
    .line 649
    iget-boolean v1, v9, Lma/e;->d:Z

    .line 650
    .line 651
    if-eqz v1, :cond_20

    .line 652
    .line 653
    goto :goto_13

    .line 654
    :cond_20
    const/4 v3, 0x0

    .line 655
    :goto_13
    new-instance v1, Lma/c;

    .line 656
    .line 657
    invoke-direct {v1, v0, v11, v3}, Lma/c;-><init>(Llb/a0;IZ)V

    .line 658
    .line 659
    .line 660
    return-object v1

    .line 661
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 662
    .line 663
    const-string v1, "At least one Annotations object expected"

    .line 664
    .line 665
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    throw v0
.end method

.method public static d(Llb/x0;La8/h0;IZ)Lj/g;
    .locals 9

    .line 1
    invoke-static {p0}, Llb/c;->j(Llb/w;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lj/g;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    const/4 p2, 0x4

    .line 12
    invoke-direct {p0, p1, p2, v1}, Lj/g;-><init>(IILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of v0, p0, Llb/p;

    .line 17
    .line 18
    if-eqz v0, :cond_b

    .line 19
    .line 20
    instance-of v6, p0, Lja/h;

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    check-cast v0, Llb/p;

    .line 24
    .line 25
    iget-object v8, v0, Llb/p;->c:Llb/a0;

    .line 26
    .line 27
    iget-object v2, v0, Llb/p;->b:Llb/a0;

    .line 28
    .line 29
    sget-object v5, Lma/s;->a:Lma/s;

    .line 30
    .line 31
    move-object v3, p1

    .line 32
    move v4, p2

    .line 33
    move v7, p3

    .line 34
    invoke-static/range {v2 .. v7}, Lma/d;->c(Llb/a0;La8/h0;ILma/s;ZZ)Lma/c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    move-object p2, v2

    .line 39
    iget-object v2, v0, Llb/p;->c:Llb/a0;

    .line 40
    .line 41
    sget-object v5, Lma/s;->b:Lma/s;

    .line 42
    .line 43
    invoke-static/range {v2 .. v7}, Lma/d;->c(Llb/a0;La8/h0;ILma/s;ZZ)Lma/c;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iget-object v0, p3, Lma/c;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Llb/a0;

    .line 50
    .line 51
    iget-object v2, p1, Lma/c;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Llb/a0;

    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_1
    iget-boolean v1, p1, Lma/c;->a:Z

    .line 61
    .line 62
    if-nez v1, :cond_8

    .line 63
    .line 64
    iget-boolean p3, p3, Lma/c;->a:Z

    .line 65
    .line 66
    if-eqz p3, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    if-eqz v6, :cond_5

    .line 70
    .line 71
    new-instance v1, Lja/h;

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    move-object v2, p2

    .line 76
    :cond_3
    if-nez v0, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    move-object v8, v0

    .line 80
    :goto_0
    invoke-direct {v1, v2, v8}, Lja/h;-><init>(Llb/a0;Llb/a0;)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_5
    if-nez v2, :cond_6

    .line 85
    .line 86
    move-object v2, p2

    .line 87
    :cond_6
    if-nez v0, :cond_7

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    move-object v8, v0

    .line 91
    :goto_1
    invoke-static {v2, v8}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_4

    .line 96
    :cond_8
    :goto_2
    if-eqz v0, :cond_a

    .line 97
    .line 98
    if-nez v2, :cond_9

    .line 99
    .line 100
    move-object v2, v0

    .line 101
    :cond_9
    invoke-static {v2, v0}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto :goto_3

    .line 106
    :cond_a
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    invoke-static {p0, v2}, Llb/c;->F(Llb/x0;Llb/w;)Llb/x0;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :goto_4
    new-instance p0, Lj/g;

    .line 114
    .line 115
    iget p1, p1, Lma/c;->b:I

    .line 116
    .line 117
    const/4 p2, 0x4

    .line 118
    invoke-direct {p0, p1, p2, v1}, Lj/g;-><init>(IILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_b
    move-object v3, p1

    .line 123
    move v4, p2

    .line 124
    move v7, p3

    .line 125
    instance-of p1, p0, Llb/a0;

    .line 126
    .line 127
    if-eqz p1, :cond_d

    .line 128
    .line 129
    move-object v2, p0

    .line 130
    check-cast v2, Llb/a0;

    .line 131
    .line 132
    sget-object v5, Lma/s;->c:Lma/s;

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    invoke-static/range {v2 .. v7}, Lma/d;->c(Llb/a0;La8/h0;ILma/s;ZZ)Lma/c;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p2, p1, Lma/c;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p2, Llb/a0;

    .line 142
    .line 143
    new-instance p3, Lj/g;

    .line 144
    .line 145
    iget-boolean v0, p1, Lma/c;->a:Z

    .line 146
    .line 147
    if-eqz v0, :cond_c

    .line 148
    .line 149
    invoke-static {p0, p2}, Llb/c;->F(Llb/x0;Llb/w;)Llb/x0;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    :cond_c
    iget p0, p1, Lma/c;->b:I

    .line 154
    .line 155
    const/4 p1, 0x4

    .line 156
    invoke-direct {p3, p0, p1, p2}, Lj/g;-><init>(IILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-object p3

    .line 160
    :cond_d
    new-instance p0, Lac/p;

    .line 161
    .line 162
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 163
    .line 164
    .line 165
    throw p0
.end method


# virtual methods
.method public a(Lga/a;Lv9/b;ZLba/a;Lea/a;Lma/t;ZLf9/k;)Llb/w;
    .locals 6

    .line 1
    new-instance v0, Lma/r;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p2

    .line 5
    move v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lma/r;-><init>(Lw9/a;ZLba/a;Lea/a;Z)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    invoke-interface {p8, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Llb/w;

    .line 17
    .line 18
    invoke-interface {p1}, Lv9/c;->m()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p4, "getOverriddenDescriptors(...)"

    .line 23
    .line 24
    invoke-static {p1, p4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Ljava/lang/Iterable;

    .line 28
    .line 29
    new-instance p4, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 p5, 0xa

    .line 32
    .line 33
    invoke-static {p1, p5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lv9/c;

    .line 55
    .line 56
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p8, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Llb/w;

    .line 64
    .line 65
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object p1, p0

    .line 70
    move-object p5, p6

    .line 71
    move p6, p7

    .line 72
    invoke-virtual/range {p1 .. p6}, Lma/d;->b(Lma/r;Llb/w;Ljava/util/List;Lma/t;Z)Llb/w;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    return-object p2
.end method

.method public b(Lma/r;Llb/w;Ljava/util/List;Lma/t;Z)Llb/w;
    .locals 31

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lma/r;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lw9/a;

    .line 8
    .line 9
    iget-object v3, v0, Lma/r;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Lba/a;

    .line 12
    .line 13
    sget-object v4, Lmb/e;->b:Lmb/e;

    .line 14
    .line 15
    iget-boolean v5, v0, Lma/r;->b:Z

    .line 16
    .line 17
    const-string v6, "<this>"

    .line 18
    .line 19
    invoke-static {v1, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p2}, Lma/r;->e(Lob/d;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    .line 27
    .line 28
    const/16 v8, 0xa

    .line 29
    .line 30
    move-object/from16 v9, p3

    .line 31
    .line 32
    invoke-static {v9, v8}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_0

    .line 48
    .line 49
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    check-cast v10, Lob/d;

    .line 54
    .line 55
    invoke-virtual {v0, v10}, Lma/r;->e(Lob/d;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-eqz v10, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-eqz v10, :cond_3

    .line 81
    .line 82
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    check-cast v10, Lob/d;

    .line 87
    .line 88
    const-string v11, "other"

    .line 89
    .line 90
    invoke-static {v10, v11}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v11, v3, Lba/a;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v11, Lha/a;

    .line 96
    .line 97
    iget-object v11, v11, Lha/a;->u:Lmb/k;

    .line 98
    .line 99
    check-cast v10, Llb/w;

    .line 100
    .line 101
    check-cast v11, Lmb/l;

    .line 102
    .line 103
    invoke-virtual {v11, v1, v10}, Lmb/l;->a(Llb/w;Llb/w;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-nez v10, :cond_2

    .line 108
    .line 109
    const/4 v9, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    :goto_2
    new-array v10, v9, [Lma/e;

    .line 116
    .line 117
    const/4 v12, 0x0

    .line 118
    :goto_3
    if-ge v12, v9, :cond_52

    .line 119
    .line 120
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    check-cast v13, Lma/a;

    .line 125
    .line 126
    iget-object v14, v0, Lma/r;->f:Ljava/lang/Enum;

    .line 127
    .line 128
    check-cast v14, Lea/a;

    .line 129
    .line 130
    iget-object v15, v13, Lma/a;->a:Lob/d;

    .line 131
    .line 132
    iget-object v11, v13, Lma/a;->c:Lv9/q0;

    .line 133
    .line 134
    sget-object v8, Lma/h;->a:Lma/h;

    .line 135
    .line 136
    sget-object v1, Lma/f;->b:Lma/f;

    .line 137
    .line 138
    move/from16 v17, v5

    .line 139
    .line 140
    sget-object v5, Lma/f;->a:Lma/f;

    .line 141
    .line 142
    move-object/from16 v18, v6

    .line 143
    .line 144
    sget-object v6, Lma/h;->b:Lma/h;

    .line 145
    .line 146
    move-object/from16 v19, v7

    .line 147
    .line 148
    sget-object v7, Lma/h;->c:Lma/h;

    .line 149
    .line 150
    move/from16 v20, v9

    .line 151
    .line 152
    if-nez v15, :cond_5

    .line 153
    .line 154
    if-eqz v11, :cond_4

    .line 155
    .line 156
    invoke-interface {v11}, Lv9/q0;->J()Llb/y0;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    move-object/from16 v22, v11

    .line 161
    .line 162
    const-string v11, "getVariance(...)"

    .line 163
    .line 164
    invoke-static {v9, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v9}, Li9/a;->q(Llb/y0;)Lob/i;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    goto :goto_4

    .line 172
    :cond_4
    move-object/from16 v22, v11

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    :goto_4
    sget-object v11, Lob/i;->b:Lob/i;

    .line 176
    .line 177
    if-ne v9, v11, :cond_6

    .line 178
    .line 179
    sget-object v9, Lma/e;->e:Lma/e;

    .line 180
    .line 181
    move-object/from16 v26, v3

    .line 182
    .line 183
    move-object/from16 v29, v10

    .line 184
    .line 185
    :goto_5
    const/4 v13, 0x1

    .line 186
    goto/16 :goto_2a

    .line 187
    .line 188
    :cond_5
    move-object/from16 v22, v11

    .line 189
    .line 190
    :cond_6
    if-nez v22, :cond_7

    .line 191
    .line 192
    const/4 v9, 0x1

    .line 193
    goto :goto_6

    .line 194
    :cond_7
    const/4 v9, 0x0

    .line 195
    :goto_6
    sget-object v11, Ls8/w;->a:Ls8/w;

    .line 196
    .line 197
    if-eqz v15, :cond_8

    .line 198
    .line 199
    move-object/from16 v23, v15

    .line 200
    .line 201
    check-cast v23, Llb/w;

    .line 202
    .line 203
    invoke-virtual/range {v23 .. v23}, Llb/w;->getAnnotations()Lw9/h;

    .line 204
    .line 205
    .line 206
    move-result-object v23

    .line 207
    move-object/from16 v30, v23

    .line 208
    .line 209
    move/from16 v23, v9

    .line 210
    .line 211
    move-object/from16 v9, v30

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_8
    move/from16 v23, v9

    .line 215
    .line 216
    move-object v9, v11

    .line 217
    :goto_7
    if-eqz v15, :cond_9

    .line 218
    .line 219
    invoke-virtual {v4, v15}, Lmb/e;->A0(Lob/d;)Llb/k0;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    if-eqz v15, :cond_9

    .line 224
    .line 225
    invoke-static {v15}, Lmb/g;->s(Lob/h;)Lv9/q0;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    :goto_8
    move-object/from16 v24, v11

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_9
    const/4 v15, 0x0

    .line 233
    goto :goto_8

    .line 234
    :goto_9
    sget-object v11, Lea/a;->f:Lea/a;

    .line 235
    .line 236
    if-ne v14, v11, :cond_a

    .line 237
    .line 238
    const/4 v11, 0x1

    .line 239
    goto :goto_a

    .line 240
    :cond_a
    const/4 v11, 0x0

    .line 241
    :goto_a
    if-nez v23, :cond_b

    .line 242
    .line 243
    move/from16 v25, v11

    .line 244
    .line 245
    goto :goto_c

    .line 246
    :cond_b
    move/from16 v25, v11

    .line 247
    .line 248
    if-nez v11, :cond_c

    .line 249
    .line 250
    iget-object v11, v3, Lba/a;->b:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v11, Lha/a;

    .line 253
    .line 254
    iget-object v11, v11, Lha/a;->t:Lha/b;

    .line 255
    .line 256
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    :cond_c
    if-eqz v2, :cond_d

    .line 260
    .line 261
    invoke-interface {v2}, Lw9/a;->getAnnotations()Lw9/h;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    if-eqz v11, :cond_d

    .line 266
    .line 267
    goto :goto_b

    .line 268
    :cond_d
    move-object/from16 v11, v24

    .line 269
    .line 270
    :goto_b
    invoke-static {v11, v9}, Ls8/p;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    :goto_c
    iget-object v11, v3, Lba/a;->b:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v11, Lha/a;

    .line 277
    .line 278
    iget-object v11, v11, Lha/a;->q:Lea/b;

    .line 279
    .line 280
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    move-object/from16 v24, v9

    .line 288
    .line 289
    const/4 v9, 0x0

    .line 290
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v26

    .line 294
    if-eqz v26, :cond_11

    .line 295
    .line 296
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v26

    .line 300
    move-object/from16 v27, v11

    .line 301
    .line 302
    invoke-static/range {v26 .. v26}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    sget-object v26, Lea/z;->n:Ljava/util/Set;

    .line 307
    .line 308
    move-object/from16 v28, v14

    .line 309
    .line 310
    move-object/from16 v14, v26

    .line 311
    .line 312
    check-cast v14, Ljava/lang/Iterable;

    .line 313
    .line 314
    invoke-static {v14, v11}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v14

    .line 318
    if-eqz v14, :cond_e

    .line 319
    .line 320
    move-object v11, v5

    .line 321
    goto :goto_e

    .line 322
    :cond_e
    sget-object v14, Lea/z;->o:Ljava/util/Set;

    .line 323
    .line 324
    check-cast v14, Ljava/lang/Iterable;

    .line 325
    .line 326
    invoke-static {v14, v11}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    if-eqz v11, :cond_10

    .line 331
    .line 332
    move-object v11, v1

    .line 333
    :goto_e
    if-eqz v9, :cond_f

    .line 334
    .line 335
    if-eq v9, v11, :cond_f

    .line 336
    .line 337
    const/4 v9, 0x0

    .line 338
    goto :goto_f

    .line 339
    :cond_f
    move-object v9, v11

    .line 340
    :cond_10
    move-object/from16 v11, v27

    .line 341
    .line 342
    move-object/from16 v14, v28

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_11
    move-object/from16 v28, v14

    .line 346
    .line 347
    :goto_f
    iget-object v11, v3, Lba/a;->b:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v11, Lha/a;

    .line 350
    .line 351
    iget-object v11, v11, Lha/a;->q:Lea/b;

    .line 352
    .line 353
    new-instance v14, La8/h0;

    .line 354
    .line 355
    move-object/from16 v26, v3

    .line 356
    .line 357
    const/16 v3, 0x8

    .line 358
    .line 359
    invoke-direct {v14, v3, v0, v13}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    move-object/from16 v24, v3

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    :goto_10
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v27

    .line 376
    if-eqz v27, :cond_1d

    .line 377
    .line 378
    move-object/from16 v27, v15

    .line 379
    .line 380
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v15

    .line 384
    invoke-virtual {v14, v15}, La8/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v29

    .line 388
    check-cast v29, Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    invoke-virtual {v11, v15, v0}, Lea/b;->g(Ljava/lang/Object;Z)Lma/i;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    if-eqz v0, :cond_12

    .line 399
    .line 400
    move-object/from16 v29, v10

    .line 401
    .line 402
    move-object/from16 v21, v11

    .line 403
    .line 404
    :goto_11
    const/4 v15, 0x0

    .line 405
    goto :goto_17

    .line 406
    :cond_12
    invoke-virtual {v11, v15}, Lea/b;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-nez v0, :cond_14

    .line 411
    .line 412
    move-object/from16 v29, v10

    .line 413
    .line 414
    :cond_13
    move-object/from16 v21, v11

    .line 415
    .line 416
    const/4 v15, 0x0

    .line 417
    goto :goto_16

    .line 418
    :cond_14
    invoke-virtual {v11, v15}, Lea/b;->h(Ljava/lang/Object;)Lea/c0;

    .line 419
    .line 420
    .line 421
    move-result-object v15

    .line 422
    if-eqz v15, :cond_15

    .line 423
    .line 424
    :goto_12
    move-object/from16 v29, v10

    .line 425
    .line 426
    goto :goto_13

    .line 427
    :cond_15
    iget-object v15, v11, Lea/b;->a:Lea/u;

    .line 428
    .line 429
    iget-object v15, v15, Lea/u;->a:Lea/w;

    .line 430
    .line 431
    iget-object v15, v15, Lea/w;->a:Lea/c0;

    .line 432
    .line 433
    goto :goto_12

    .line 434
    :goto_13
    sget-object v10, Lea/c0;->b:Lea/c0;

    .line 435
    .line 436
    if-ne v15, v10, :cond_16

    .line 437
    .line 438
    move-object/from16 v21, v11

    .line 439
    .line 440
    const/4 v0, 0x0

    .line 441
    goto :goto_11

    .line 442
    :cond_16
    invoke-virtual {v14, v0}, La8/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v10

    .line 446
    check-cast v10, Ljava/lang/Boolean;

    .line 447
    .line 448
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 449
    .line 450
    .line 451
    move-result v10

    .line 452
    invoke-virtual {v11, v0, v10}, Lea/b;->g(Ljava/lang/Object;Z)Lma/i;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    if-eqz v0, :cond_13

    .line 457
    .line 458
    sget-object v10, Lea/c0;->c:Lea/c0;

    .line 459
    .line 460
    if-ne v15, v10, :cond_17

    .line 461
    .line 462
    const/4 v10, 0x1

    .line 463
    :goto_14
    move-object/from16 v21, v11

    .line 464
    .line 465
    const/4 v11, 0x1

    .line 466
    const/4 v15, 0x0

    .line 467
    goto :goto_15

    .line 468
    :cond_17
    const/4 v10, 0x0

    .line 469
    goto :goto_14

    .line 470
    :goto_15
    invoke-static {v0, v15, v10, v11}, Lma/i;->a(Lma/i;Lma/h;ZI)Lma/i;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    goto :goto_17

    .line 475
    :goto_16
    move-object v0, v15

    .line 476
    :goto_17
    if-nez v3, :cond_18

    .line 477
    .line 478
    goto :goto_18

    .line 479
    :cond_18
    iget-boolean v10, v3, Lma/i;->b:Z

    .line 480
    .line 481
    if-eqz v0, :cond_1c

    .line 482
    .line 483
    invoke-virtual {v0, v3}, Lma/i;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    if-eqz v11, :cond_19

    .line 488
    .line 489
    goto :goto_19

    .line 490
    :cond_19
    iget-boolean v11, v0, Lma/i;->b:Z

    .line 491
    .line 492
    if-eqz v11, :cond_1a

    .line 493
    .line 494
    if-nez v10, :cond_1a

    .line 495
    .line 496
    goto :goto_19

    .line 497
    :cond_1a
    if-nez v11, :cond_1b

    .line 498
    .line 499
    if-eqz v10, :cond_1b

    .line 500
    .line 501
    :goto_18
    move-object v3, v0

    .line 502
    goto :goto_19

    .line 503
    :cond_1b
    move-object v3, v15

    .line 504
    goto :goto_1a

    .line 505
    :cond_1c
    :goto_19
    move-object/from16 v0, p1

    .line 506
    .line 507
    move-object/from16 v11, v21

    .line 508
    .line 509
    move-object/from16 v15, v27

    .line 510
    .line 511
    move-object/from16 v10, v29

    .line 512
    .line 513
    goto/16 :goto_10

    .line 514
    .line 515
    :cond_1d
    move-object/from16 v29, v10

    .line 516
    .line 517
    move-object/from16 v27, v15

    .line 518
    .line 519
    const/4 v15, 0x0

    .line 520
    :goto_1a
    if-eqz v3, :cond_1f

    .line 521
    .line 522
    new-instance v0, Lma/e;

    .line 523
    .line 524
    iget-object v10, v3, Lma/i;->a:Lma/h;

    .line 525
    .line 526
    if-ne v10, v7, :cond_1e

    .line 527
    .line 528
    if-eqz v27, :cond_1e

    .line 529
    .line 530
    const/4 v11, 0x1

    .line 531
    goto :goto_1b

    .line 532
    :cond_1e
    const/4 v11, 0x0

    .line 533
    :goto_1b
    iget-boolean v3, v3, Lma/i;->b:Z

    .line 534
    .line 535
    invoke-direct {v0, v10, v9, v11, v3}, Lma/e;-><init>(Lma/h;Lma/f;ZZ)V

    .line 536
    .line 537
    .line 538
    move-object v9, v0

    .line 539
    goto/16 :goto_5

    .line 540
    .line 541
    :cond_1f
    if-nez v23, :cond_21

    .line 542
    .line 543
    if-eqz v25, :cond_20

    .line 544
    .line 545
    goto :goto_1c

    .line 546
    :cond_20
    sget-object v14, Lea/a;->e:Lea/a;

    .line 547
    .line 548
    goto :goto_1d

    .line 549
    :cond_21
    :goto_1c
    move-object/from16 v14, v28

    .line 550
    .line 551
    :goto_1d
    iget-object v0, v13, Lma/a;->b:Lea/v;

    .line 552
    .line 553
    if-eqz v0, :cond_22

    .line 554
    .line 555
    iget-object v0, v0, Lea/v;->a:Ljava/util/EnumMap;

    .line 556
    .line 557
    invoke-virtual {v0, v14}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    check-cast v0, Lea/m;

    .line 562
    .line 563
    goto :goto_1e

    .line 564
    :cond_22
    move-object v0, v15

    .line 565
    :goto_1e
    if-eqz v27, :cond_23

    .line 566
    .line 567
    invoke-static/range {v27 .. v27}, Lma/r;->b(Lv9/q0;)Lma/i;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    goto :goto_1f

    .line 572
    :cond_23
    move-object v3, v15

    .line 573
    :goto_1f
    const/4 v10, 0x2

    .line 574
    if-eqz v3, :cond_24

    .line 575
    .line 576
    const/4 v11, 0x0

    .line 577
    invoke-static {v3, v7, v11, v10}, Lma/i;->a(Lma/i;Lma/h;ZI)Lma/i;

    .line 578
    .line 579
    .line 580
    move-result-object v13

    .line 581
    goto :goto_20

    .line 582
    :cond_24
    if-eqz v0, :cond_25

    .line 583
    .line 584
    iget-object v13, v0, Lea/m;->a:Lma/i;

    .line 585
    .line 586
    goto :goto_20

    .line 587
    :cond_25
    move-object v13, v15

    .line 588
    :goto_20
    if-eqz v3, :cond_26

    .line 589
    .line 590
    iget-object v3, v3, Lma/i;->a:Lma/h;

    .line 591
    .line 592
    goto :goto_21

    .line 593
    :cond_26
    move-object v3, v15

    .line 594
    :goto_21
    if-eq v3, v7, :cond_28

    .line 595
    .line 596
    if-eqz v27, :cond_27

    .line 597
    .line 598
    if-eqz v0, :cond_27

    .line 599
    .line 600
    iget-boolean v0, v0, Lea/m;->c:Z

    .line 601
    .line 602
    const/4 v11, 0x1

    .line 603
    if-ne v0, v11, :cond_27

    .line 604
    .line 605
    goto :goto_22

    .line 606
    :cond_27
    const/4 v11, 0x0

    .line 607
    goto :goto_23

    .line 608
    :cond_28
    :goto_22
    const/4 v11, 0x1

    .line 609
    :goto_23
    if-eqz v22, :cond_29

    .line 610
    .line 611
    invoke-static/range {v22 .. v22}, Lma/r;->b(Lv9/q0;)Lma/i;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    if-eqz v0, :cond_29

    .line 616
    .line 617
    iget-object v3, v0, Lma/i;->a:Lma/h;

    .line 618
    .line 619
    if-ne v3, v6, :cond_2a

    .line 620
    .line 621
    const/4 v3, 0x0

    .line 622
    invoke-static {v0, v8, v3, v10}, Lma/i;->a(Lma/i;Lma/h;ZI)Lma/i;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    goto :goto_24

    .line 627
    :cond_29
    move-object v0, v15

    .line 628
    :cond_2a
    :goto_24
    if-nez v0, :cond_2b

    .line 629
    .line 630
    goto :goto_26

    .line 631
    :cond_2b
    iget-object v3, v0, Lma/i;->a:Lma/h;

    .line 632
    .line 633
    if-nez v13, :cond_2c

    .line 634
    .line 635
    goto :goto_25

    .line 636
    :cond_2c
    iget-object v10, v13, Lma/i;->a:Lma/h;

    .line 637
    .line 638
    iget-boolean v14, v13, Lma/i;->b:Z

    .line 639
    .line 640
    iget-boolean v15, v0, Lma/i;->b:Z

    .line 641
    .line 642
    if-eqz v15, :cond_2d

    .line 643
    .line 644
    if-nez v14, :cond_2d

    .line 645
    .line 646
    goto :goto_26

    .line 647
    :cond_2d
    if-nez v15, :cond_2e

    .line 648
    .line 649
    if-eqz v14, :cond_2e

    .line 650
    .line 651
    goto :goto_25

    .line 652
    :cond_2e
    invoke-virtual {v3, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 653
    .line 654
    .line 655
    move-result v14

    .line 656
    if-gez v14, :cond_2f

    .line 657
    .line 658
    goto :goto_26

    .line 659
    :cond_2f
    invoke-virtual {v3, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    if-lez v3, :cond_30

    .line 664
    .line 665
    :goto_25
    move-object v13, v0

    .line 666
    :cond_30
    :goto_26
    new-instance v0, Lma/e;

    .line 667
    .line 668
    if-eqz v13, :cond_31

    .line 669
    .line 670
    iget-object v3, v13, Lma/i;->a:Lma/h;

    .line 671
    .line 672
    goto :goto_27

    .line 673
    :cond_31
    const/4 v3, 0x0

    .line 674
    :goto_27
    if-eqz v13, :cond_33

    .line 675
    .line 676
    iget-boolean v10, v13, Lma/i;->b:Z

    .line 677
    .line 678
    const/4 v13, 0x1

    .line 679
    if-ne v10, v13, :cond_32

    .line 680
    .line 681
    const/4 v10, 0x1

    .line 682
    goto :goto_29

    .line 683
    :cond_32
    :goto_28
    const/4 v10, 0x0

    .line 684
    goto :goto_29

    .line 685
    :cond_33
    const/4 v13, 0x1

    .line 686
    goto :goto_28

    .line 687
    :goto_29
    invoke-direct {v0, v3, v9, v11, v10}, Lma/e;-><init>(Lma/h;Lma/f;ZZ)V

    .line 688
    .line 689
    .line 690
    move-object v9, v0

    .line 691
    :goto_2a
    iget-boolean v0, v9, Lma/e;->d:Z

    .line 692
    .line 693
    new-instance v3, Ljava/util/ArrayList;

    .line 694
    .line 695
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .line 697
    .line 698
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 699
    .line 700
    .line 701
    move-result-object v10

    .line 702
    :goto_2b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 703
    .line 704
    .line 705
    move-result v11

    .line 706
    if-eqz v11, :cond_3d

    .line 707
    .line 708
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v11

    .line 712
    check-cast v11, Ljava/util/List;

    .line 713
    .line 714
    invoke-static {v12, v11}, Ls8/p;->f0(ILjava/util/List;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    check-cast v11, Lma/a;

    .line 719
    .line 720
    if-eqz v11, :cond_3b

    .line 721
    .line 722
    iget-object v11, v11, Lma/a;->a:Lob/d;

    .line 723
    .line 724
    if-eqz v11, :cond_3b

    .line 725
    .line 726
    invoke-static {v11}, Lma/r;->d(Lob/d;)Lma/h;

    .line 727
    .line 728
    .line 729
    move-result-object v14

    .line 730
    if-nez v14, :cond_35

    .line 731
    .line 732
    move-object v15, v11

    .line 733
    check-cast v15, Llb/w;

    .line 734
    .line 735
    invoke-static {v15}, Llb/c;->f(Llb/w;)Llb/w;

    .line 736
    .line 737
    .line 738
    move-result-object v15

    .line 739
    if-eqz v15, :cond_34

    .line 740
    .line 741
    invoke-static {v15}, Lma/r;->d(Lob/d;)Lma/h;

    .line 742
    .line 743
    .line 744
    move-result-object v15

    .line 745
    goto :goto_2c

    .line 746
    :cond_34
    const/4 v15, 0x0

    .line 747
    goto :goto_2c

    .line 748
    :cond_35
    move-object v15, v14

    .line 749
    :goto_2c
    sget-object v16, Lu9/d;->a:Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {v4, v11}, Lmb/e;->K(Lob/d;)Llb/a0;

    .line 752
    .line 753
    .line 754
    move-result-object v16

    .line 755
    invoke-static/range {v16 .. v16}, Lma/r;->c(Llb/a0;)Lua/d;

    .line 756
    .line 757
    .line 758
    move-result-object v13

    .line 759
    move-object/from16 v16, v10

    .line 760
    .line 761
    sget-object v10, Lu9/d;->k:Ljava/util/HashMap;

    .line 762
    .line 763
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v10

    .line 767
    if-eqz v10, :cond_36

    .line 768
    .line 769
    move-object v10, v5

    .line 770
    goto :goto_2d

    .line 771
    :cond_36
    invoke-virtual {v4, v11}, Lmb/e;->d(Lob/d;)Llb/a0;

    .line 772
    .line 773
    .line 774
    move-result-object v10

    .line 775
    invoke-static {v10}, Lma/r;->c(Llb/a0;)Lua/d;

    .line 776
    .line 777
    .line 778
    move-result-object v10

    .line 779
    sget-object v13, Lu9/d;->j:Ljava/util/HashMap;

    .line 780
    .line 781
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v10

    .line 785
    if-eqz v10, :cond_37

    .line 786
    .line 787
    move-object v10, v1

    .line 788
    goto :goto_2d

    .line 789
    :cond_37
    const/4 v10, 0x0

    .line 790
    :goto_2d
    invoke-virtual {v4, v11}, Lmb/e;->s(Lob/d;)Z

    .line 791
    .line 792
    .line 793
    move-result v13

    .line 794
    if-nez v13, :cond_39

    .line 795
    .line 796
    check-cast v11, Llb/w;

    .line 797
    .line 798
    invoke-virtual {v11}, Llb/w;->G0()Llb/x0;

    .line 799
    .line 800
    .line 801
    move-result-object v11

    .line 802
    instance-of v11, v11, Lma/g;

    .line 803
    .line 804
    if-eqz v11, :cond_38

    .line 805
    .line 806
    goto :goto_2e

    .line 807
    :cond_38
    const/4 v11, 0x0

    .line 808
    goto :goto_2f

    .line 809
    :cond_39
    :goto_2e
    const/4 v11, 0x1

    .line 810
    :goto_2f
    new-instance v13, Lma/e;

    .line 811
    .line 812
    if-eq v15, v14, :cond_3a

    .line 813
    .line 814
    const/4 v14, 0x1

    .line 815
    goto :goto_30

    .line 816
    :cond_3a
    const/4 v14, 0x0

    .line 817
    :goto_30
    invoke-direct {v13, v15, v10, v11, v14}, Lma/e;-><init>(Lma/h;Lma/f;ZZ)V

    .line 818
    .line 819
    .line 820
    goto :goto_31

    .line 821
    :cond_3b
    move-object/from16 v16, v10

    .line 822
    .line 823
    const/4 v13, 0x0

    .line 824
    :goto_31
    if-eqz v13, :cond_3c

    .line 825
    .line 826
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    :cond_3c
    move-object/from16 v10, v16

    .line 830
    .line 831
    const/4 v13, 0x1

    .line 832
    goto/16 :goto_2b

    .line 833
    .line 834
    :cond_3d
    if-nez v12, :cond_3e

    .line 835
    .line 836
    if-eqz v17, :cond_3e

    .line 837
    .line 838
    const/4 v11, 0x1

    .line 839
    goto :goto_32

    .line 840
    :cond_3e
    const/4 v11, 0x0

    .line 841
    :goto_32
    if-nez v12, :cond_3f

    .line 842
    .line 843
    instance-of v10, v2, Ly9/r0;

    .line 844
    .line 845
    if-eqz v10, :cond_3f

    .line 846
    .line 847
    move-object v10, v2

    .line 848
    check-cast v10, Ly9/r0;

    .line 849
    .line 850
    iget-object v10, v10, Ly9/r0;->j:Llb/w;

    .line 851
    .line 852
    if-eqz v10, :cond_3f

    .line 853
    .line 854
    const/4 v10, 0x1

    .line 855
    goto :goto_33

    .line 856
    :cond_3f
    const/4 v10, 0x0

    .line 857
    :goto_33
    iget-object v13, v9, Lma/e;->a:Lma/h;

    .line 858
    .line 859
    new-instance v14, Ljava/util/ArrayList;

    .line 860
    .line 861
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 865
    .line 866
    .line 867
    move-result-object v15

    .line 868
    :goto_34
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 869
    .line 870
    .line 871
    move-result v16

    .line 872
    if-eqz v16, :cond_42

    .line 873
    .line 874
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v16

    .line 878
    move-object/from16 v23, v2

    .line 879
    .line 880
    move-object/from16 v2, v16

    .line 881
    .line 882
    check-cast v2, Lma/e;

    .line 883
    .line 884
    move-object/from16 v16, v3

    .line 885
    .line 886
    iget-boolean v3, v2, Lma/e;->d:Z

    .line 887
    .line 888
    if-eqz v3, :cond_40

    .line 889
    .line 890
    const/4 v2, 0x0

    .line 891
    goto :goto_35

    .line 892
    :cond_40
    iget-object v2, v2, Lma/e;->a:Lma/h;

    .line 893
    .line 894
    :goto_35
    if-eqz v2, :cond_41

    .line 895
    .line 896
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    :cond_41
    move-object/from16 v3, v16

    .line 900
    .line 901
    move-object/from16 v2, v23

    .line 902
    .line 903
    goto :goto_34

    .line 904
    :cond_42
    move-object/from16 v23, v2

    .line 905
    .line 906
    move-object/from16 v16, v3

    .line 907
    .line 908
    invoke-static {v14}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    if-eqz v0, :cond_43

    .line 913
    .line 914
    const/4 v3, 0x0

    .line 915
    goto :goto_36

    .line 916
    :cond_43
    move-object v3, v13

    .line 917
    :goto_36
    if-ne v3, v8, :cond_44

    .line 918
    .line 919
    move-object v2, v8

    .line 920
    goto :goto_37

    .line 921
    :cond_44
    invoke-static {v2, v7, v6, v3, v11}, Li9/a;->P(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    check-cast v2, Lma/h;

    .line 926
    .line 927
    :goto_37
    if-nez v2, :cond_48

    .line 928
    .line 929
    new-instance v3, Ljava/util/ArrayList;

    .line 930
    .line 931
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .line 933
    .line 934
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 935
    .line 936
    .line 937
    move-result-object v14

    .line 938
    :cond_45
    :goto_38
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 939
    .line 940
    .line 941
    move-result v15

    .line 942
    if-eqz v15, :cond_46

    .line 943
    .line 944
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v15

    .line 948
    check-cast v15, Lma/e;

    .line 949
    .line 950
    iget-object v15, v15, Lma/e;->a:Lma/h;

    .line 951
    .line 952
    if-eqz v15, :cond_45

    .line 953
    .line 954
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    goto :goto_38

    .line 958
    :cond_46
    invoke-static {v3}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    if-ne v13, v8, :cond_47

    .line 963
    .line 964
    goto :goto_39

    .line 965
    :cond_47
    invoke-static {v3, v7, v6, v13, v11}, Li9/a;->P(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    move-object v8, v3

    .line 970
    check-cast v8, Lma/h;

    .line 971
    .line 972
    goto :goto_39

    .line 973
    :cond_48
    move-object v8, v2

    .line 974
    :goto_39
    new-instance v3, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .line 978
    .line 979
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 980
    .line 981
    .line 982
    move-result-object v13

    .line 983
    :cond_49
    :goto_3a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 984
    .line 985
    .line 986
    move-result v14

    .line 987
    if-eqz v14, :cond_4a

    .line 988
    .line 989
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v14

    .line 993
    check-cast v14, Lma/e;

    .line 994
    .line 995
    iget-object v14, v14, Lma/e;->b:Lma/f;

    .line 996
    .line 997
    if-eqz v14, :cond_49

    .line 998
    .line 999
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    goto :goto_3a

    .line 1003
    :cond_4a
    invoke-static {v3}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v3

    .line 1007
    iget-object v13, v9, Lma/e;->b:Lma/f;

    .line 1008
    .line 1009
    invoke-static {v3, v1, v5, v13, v11}, Li9/a;->P(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v1

    .line 1013
    check-cast v1, Lma/f;

    .line 1014
    .line 1015
    if-eqz v8, :cond_4b

    .line 1016
    .line 1017
    if-nez p5, :cond_4b

    .line 1018
    .line 1019
    if-eqz v10, :cond_4c

    .line 1020
    .line 1021
    if-ne v8, v6, :cond_4c

    .line 1022
    .line 1023
    :cond_4b
    const/4 v8, 0x0

    .line 1024
    :cond_4c
    if-eqz v8, :cond_4d

    .line 1025
    .line 1026
    if-nez v2, :cond_4d

    .line 1027
    .line 1028
    const/4 v11, 0x1

    .line 1029
    goto :goto_3b

    .line 1030
    :cond_4d
    const/4 v11, 0x0

    .line 1031
    :goto_3b
    if-ne v8, v7, :cond_51

    .line 1032
    .line 1033
    if-ne v0, v11, :cond_4e

    .line 1034
    .line 1035
    iget-boolean v0, v9, Lma/e;->c:Z

    .line 1036
    .line 1037
    if-eqz v0, :cond_4e

    .line 1038
    .line 1039
    goto :goto_3c

    .line 1040
    :cond_4e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1041
    .line 1042
    .line 1043
    move-result v0

    .line 1044
    if-eqz v0, :cond_4f

    .line 1045
    .line 1046
    goto :goto_3d

    .line 1047
    :cond_4f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1052
    .line 1053
    .line 1054
    move-result v2

    .line 1055
    if-eqz v2, :cond_51

    .line 1056
    .line 1057
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v2

    .line 1061
    check-cast v2, Lma/e;

    .line 1062
    .line 1063
    iget-boolean v3, v2, Lma/e;->d:Z

    .line 1064
    .line 1065
    if-ne v3, v11, :cond_50

    .line 1066
    .line 1067
    iget-boolean v2, v2, Lma/e;->c:Z

    .line 1068
    .line 1069
    if-eqz v2, :cond_50

    .line 1070
    .line 1071
    :goto_3c
    const/4 v0, 0x1

    .line 1072
    goto :goto_3e

    .line 1073
    :cond_51
    :goto_3d
    const/4 v0, 0x0

    .line 1074
    :goto_3e
    new-instance v2, Lma/e;

    .line 1075
    .line 1076
    invoke-direct {v2, v8, v1, v0, v11}, Lma/e;-><init>(Lma/h;Lma/f;ZZ)V

    .line 1077
    .line 1078
    .line 1079
    aput-object v2, v29, v12

    .line 1080
    .line 1081
    add-int/lit8 v12, v12, 0x1

    .line 1082
    .line 1083
    move-object/from16 v0, p1

    .line 1084
    .line 1085
    move-object/from16 v1, p2

    .line 1086
    .line 1087
    move/from16 v5, v17

    .line 1088
    .line 1089
    move-object/from16 v6, v18

    .line 1090
    .line 1091
    move-object/from16 v7, v19

    .line 1092
    .line 1093
    move/from16 v9, v20

    .line 1094
    .line 1095
    move-object/from16 v2, v23

    .line 1096
    .line 1097
    move-object/from16 v3, v26

    .line 1098
    .line 1099
    move-object/from16 v10, v29

    .line 1100
    .line 1101
    goto/16 :goto_3

    .line 1102
    .line 1103
    :cond_52
    move-object/from16 v29, v10

    .line 1104
    .line 1105
    new-instance v0, La8/h0;

    .line 1106
    .line 1107
    const/16 v1, 0x9

    .line 1108
    .line 1109
    move-object/from16 v2, p4

    .line 1110
    .line 1111
    move-object/from16 v3, v29

    .line 1112
    .line 1113
    invoke-direct {v0, v1, v2, v3}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1114
    .line 1115
    .line 1116
    move-object/from16 v1, p1

    .line 1117
    .line 1118
    iget-boolean v1, v1, Lma/r;->c:Z

    .line 1119
    .line 1120
    invoke-virtual/range {p2 .. p2}, Llb/w;->G0()Llb/x0;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    const/4 v11, 0x0

    .line 1125
    invoke-static {v2, v0, v11, v1}, Lma/d;->d(Llb/x0;La8/h0;IZ)Lj/g;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    iget-object v0, v0, Lj/g;->c:Ljava/lang/Object;

    .line 1130
    .line 1131
    check-cast v0, Llb/w;

    .line 1132
    .line 1133
    return-object v0
.end method

.method public e(Lba/a;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lma/o;->e:Lma/o;

    .line 4
    .line 5
    const-string v2, "c"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    check-cast v2, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/16 v4, 0xa

    .line 17
    .line 18
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2f

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lv9/c;

    .line 40
    .line 41
    instance-of v6, v5, Lga/a;

    .line 42
    .line 43
    if-nez v6, :cond_1

    .line 44
    .line 45
    :cond_0
    :goto_1
    const/16 v8, 0xa

    .line 46
    .line 47
    goto/16 :goto_20

    .line 48
    .line 49
    :cond_1
    invoke-interface {v5}, Lv9/c;->f()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x2

    .line 54
    const/4 v8, 0x1

    .line 55
    if-ne v6, v7, :cond_2

    .line 56
    .line 57
    invoke-interface {v5}, Lv9/c;->a()Lv9/c;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-interface {v6}, Lv9/c;->m()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-ne v6, v8, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v5}, Lv9/v;->g(Lv9/k;)Lv9/h;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-nez v6, :cond_3

    .line 77
    .line 78
    move-object v6, v5

    .line 79
    check-cast v6, Lfb/a;

    .line 80
    .line 81
    invoke-virtual {v6}, Lfb/a;->getAnnotations()Lw9/h;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    goto :goto_6

    .line 86
    :cond_3
    instance-of v9, v6, Lia/j;

    .line 87
    .line 88
    if-eqz v9, :cond_4

    .line 89
    .line 90
    check-cast v6, Lia/j;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const/4 v6, 0x0

    .line 94
    :goto_2
    if-eqz v6, :cond_5

    .line 95
    .line 96
    iget-object v6, v6, Lia/j;->k:Lr8/o;

    .line 97
    .line 98
    invoke-virtual {v6}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Ljava/util/List;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    const/4 v6, 0x0

    .line 106
    :goto_3
    if-eqz v6, :cond_9

    .line 107
    .line 108
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_6

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-static {v6, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_7

    .line 133
    .line 134
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Lba/e;

    .line 139
    .line 140
    new-instance v11, Lia/f;

    .line 141
    .line 142
    invoke-direct {v11, v0, v10, v8}, Lia/f;-><init>(Lba/a;Lba/e;Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_7
    move-object v6, v5

    .line 150
    check-cast v6, Lfb/a;

    .line 151
    .line 152
    invoke-virtual {v6}, Lfb/a;->getAnnotations()Lw9/h;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6, v9}, Ls8/p;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_8

    .line 165
    .line 166
    sget-object v6, Lw9/g;->a:Lw9/f;

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_8
    new-instance v9, Lw9/i;

    .line 170
    .line 171
    const/4 v10, 0x0

    .line 172
    invoke-direct {v9, v10, v6}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 173
    .line 174
    .line 175
    move-object v6, v9

    .line 176
    goto :goto_6

    .line 177
    :cond_9
    :goto_5
    move-object v6, v5

    .line 178
    check-cast v6, Lfb/a;

    .line 179
    .line 180
    invoke-virtual {v6}, Lfb/a;->getAnnotations()Lw9/h;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    :goto_6
    invoke-static {v0, v6}, Lg5/a;->C(Lba/a;Lw9/h;)Lba/a;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    instance-of v6, v5, Lga/f;

    .line 189
    .line 190
    if-eqz v6, :cond_a

    .line 191
    .line 192
    move-object v6, v5

    .line 193
    check-cast v6, Ly9/i0;

    .line 194
    .line 195
    iget-object v6, v6, Ly9/i0;->w:Ly9/j0;

    .line 196
    .line 197
    if-eqz v6, :cond_a

    .line 198
    .line 199
    iget-boolean v9, v6, Ly9/g0;->e:Z

    .line 200
    .line 201
    if-nez v9, :cond_a

    .line 202
    .line 203
    move-object v11, v6

    .line 204
    goto :goto_7

    .line 205
    :cond_a
    move-object v11, v5

    .line 206
    :goto_7
    invoke-interface {v5}, Lv9/b;->a0()Ly9/v;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    sget-object v19, Lea/a;->c:Lea/a;

    .line 211
    .line 212
    if-eqz v6, :cond_e

    .line 213
    .line 214
    instance-of v6, v11, Lv9/t;

    .line 215
    .line 216
    if-eqz v6, :cond_b

    .line 217
    .line 218
    move-object v6, v11

    .line 219
    check-cast v6, Lv9/t;

    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_b
    const/4 v6, 0x0

    .line 223
    :goto_8
    if-eqz v6, :cond_c

    .line 224
    .line 225
    sget-object v9, Lga/e;->F:Lab/b;

    .line 226
    .line 227
    invoke-interface {v6, v9}, Lv9/b;->j0(Lv9/a;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Ly9/r0;

    .line 232
    .line 233
    move-object/from16 v16, v6

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_c
    const/16 v16, 0x0

    .line 237
    .line 238
    :goto_9
    sget-object v22, Lma/o;->b:Lma/o;

    .line 239
    .line 240
    move-object v15, v5

    .line 241
    check-cast v15, Lga/a;

    .line 242
    .line 243
    if-eqz v16, :cond_d

    .line 244
    .line 245
    move-object/from16 v6, v16

    .line 246
    .line 247
    check-cast v6, Lfb/a;

    .line 248
    .line 249
    invoke-virtual {v6}, Lfb/a;->getAnnotations()Lw9/h;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-static {v13, v6}, Lg5/a;->C(Lba/a;Lw9/h;)Lba/a;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    move-object/from16 v18, v6

    .line 258
    .line 259
    goto :goto_a

    .line 260
    :cond_d
    move-object/from16 v18, v13

    .line 261
    .line 262
    :goto_a
    const/16 v17, 0x0

    .line 263
    .line 264
    const/16 v20, 0x0

    .line 265
    .line 266
    const/16 v21, 0x0

    .line 267
    .line 268
    move-object/from16 v14, p0

    .line 269
    .line 270
    invoke-virtual/range {v14 .. v22}, Lma/d;->a(Lga/a;Lv9/b;ZLba/a;Lea/a;Lma/t;ZLf9/k;)Llb/w;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    goto :goto_b

    .line 275
    :cond_e
    const/4 v6, 0x0

    .line 276
    :goto_b
    instance-of v9, v5, Lga/e;

    .line 277
    .line 278
    if-eqz v9, :cond_f

    .line 279
    .line 280
    move-object v9, v5

    .line 281
    check-cast v9, Lga/e;

    .line 282
    .line 283
    goto :goto_c

    .line 284
    :cond_f
    const/4 v9, 0x0

    .line 285
    :goto_c
    if-eqz v9, :cond_13

    .line 286
    .line 287
    invoke-virtual {v9}, Ly9/n;->k()Lv9/k;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    const-string v12, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 292
    .line 293
    invoke-static {v10, v12}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    check-cast v10, Lv9/e;

    .line 297
    .line 298
    const/4 v12, 0x3

    .line 299
    invoke-static {v9, v12}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-static {v10, v9}, Li9/a;->U(Lv9/e;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    if-eqz v9, :cond_13

    .line 308
    .line 309
    sget-object v10, Lma/m;->d:Ljava/util/LinkedHashMap;

    .line 310
    .line 311
    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    check-cast v9, Lma/n;

    .line 316
    .line 317
    if-eqz v9, :cond_13

    .line 318
    .line 319
    iget-object v10, v9, Lma/n;->c:Ljava/lang/String;

    .line 320
    .line 321
    if-eqz v10, :cond_11

    .line 322
    .line 323
    const-string v12, "2."

    .line 324
    .line 325
    invoke-static {v10, v12}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    if-ne v12, v8, :cond_10

    .line 330
    .line 331
    goto :goto_d

    .line 332
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 333
    .line 334
    const-string v1, "Check failed."

    .line 335
    .line 336
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :cond_11
    :goto_d
    if-nez v10, :cond_12

    .line 341
    .line 342
    goto :goto_e

    .line 343
    :cond_12
    iget-object v9, v9, Lma/n;->d:Lma/n;

    .line 344
    .line 345
    goto :goto_e

    .line 346
    :cond_13
    const/4 v9, 0x0

    .line 347
    :goto_e
    if-eqz v9, :cond_14

    .line 348
    .line 349
    iget-object v10, v9, Lma/n;->b:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-object v10, v5

    .line 355
    check-cast v10, Lga/e;

    .line 356
    .line 357
    invoke-virtual {v10}, Ly9/u;->S()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 362
    .line 363
    .line 364
    :cond_14
    iget-object v10, v0, Lba/a;->b:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v10, Lha/a;

    .line 367
    .line 368
    iget-object v10, v10, Lha/a;->v:Lea/u;

    .line 369
    .line 370
    const-string v12, "javaTypeEnhancementState"

    .line 371
    .line 372
    invoke-static {v10, v12}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    sget-object v10, Lea/t;->i:Lea/t;

    .line 376
    .line 377
    sget-object v12, Lea/r;->a:Lua/c;

    .line 378
    .line 379
    invoke-virtual {v10, v12}, Lea/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    sget-object v12, Lea/c0;->d:Lea/c0;

    .line 384
    .line 385
    const/16 v23, 0x0

    .line 386
    .line 387
    if-ne v10, v12, :cond_15

    .line 388
    .line 389
    instance-of v10, v5, Lv9/t;

    .line 390
    .line 391
    if-eqz v10, :cond_16

    .line 392
    .line 393
    sget-object v10, Lga/e;->G:Lab/b;

    .line 394
    .line 395
    invoke-interface {v5, v10}, Lv9/b;->j0(Lv9/a;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 400
    .line 401
    invoke-static {v10, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    if-eqz v10, :cond_16

    .line 406
    .line 407
    const/16 v21, 0x1

    .line 408
    .line 409
    goto :goto_f

    .line 410
    :cond_15
    iget-object v10, v13, Lba/a;->b:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v10, Lha/a;

    .line 413
    .line 414
    iget-object v10, v10, Lha/a;->t:Lha/b;

    .line 415
    .line 416
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    :cond_16
    const/16 v21, 0x0

    .line 420
    .line 421
    :goto_f
    invoke-interface {v11}, Lv9/b;->S()Ljava/util/List;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    const-string v12, "getValueParameters(...)"

    .line 426
    .line 427
    invoke-static {v10, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    new-instance v14, Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-static {v10, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 433
    .line 434
    .line 435
    move-result v15

    .line 436
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v10

    .line 443
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v15

    .line 447
    if-eqz v15, :cond_19

    .line 448
    .line 449
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v15

    .line 453
    check-cast v15, Ly9/r0;

    .line 454
    .line 455
    if-eqz v9, :cond_17

    .line 456
    .line 457
    iget-object v4, v9, Lma/n;->b:Ljava/util/ArrayList;

    .line 458
    .line 459
    iget v7, v15, Ly9/r0;->f:I

    .line 460
    .line 461
    invoke-static {v7, v4}, Ls8/p;->f0(ILjava/util/List;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    check-cast v4, Lma/t;

    .line 466
    .line 467
    move-object/from16 v20, v4

    .line 468
    .line 469
    goto :goto_11

    .line 470
    :cond_17
    const/16 v20, 0x0

    .line 471
    .line 472
    :goto_11
    new-instance v4, Lba/j;

    .line 473
    .line 474
    const/16 v7, 0x14

    .line 475
    .line 476
    invoke-direct {v4, v7, v15}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    move-object/from16 v16, v15

    .line 480
    .line 481
    move-object v15, v5

    .line 482
    check-cast v15, Lga/a;

    .line 483
    .line 484
    if-eqz v16, :cond_18

    .line 485
    .line 486
    move-object/from16 v7, v16

    .line 487
    .line 488
    check-cast v7, Lfb/a;

    .line 489
    .line 490
    invoke-virtual {v7}, Lfb/a;->getAnnotations()Lw9/h;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    invoke-static {v13, v7}, Lg5/a;->C(Lba/a;Lw9/h;)Lba/a;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    move-object/from16 v18, v7

    .line 499
    .line 500
    goto :goto_12

    .line 501
    :cond_18
    move-object/from16 v18, v13

    .line 502
    .line 503
    :goto_12
    const/16 v17, 0x0

    .line 504
    .line 505
    move-object/from16 v22, v4

    .line 506
    .line 507
    move-object v4, v14

    .line 508
    move-object/from16 v14, p0

    .line 509
    .line 510
    invoke-virtual/range {v14 .. v22}, Lma/d;->a(Lga/a;Lv9/b;ZLba/a;Lea/a;Lma/t;ZLf9/k;)Llb/w;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-object v14, v4

    .line 518
    const/16 v4, 0xa

    .line 519
    .line 520
    goto :goto_10

    .line 521
    :cond_19
    move-object v4, v14

    .line 522
    instance-of v7, v5, Lv9/k0;

    .line 523
    .line 524
    if-eqz v7, :cond_1a

    .line 525
    .line 526
    move-object v7, v5

    .line 527
    check-cast v7, Lv9/k0;

    .line 528
    .line 529
    goto :goto_13

    .line 530
    :cond_1a
    const/4 v7, 0x0

    .line 531
    :goto_13
    if-eqz v7, :cond_1b

    .line 532
    .line 533
    invoke-static {v7}, La/a;->H(Lv9/k0;)Z

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    if-ne v7, v8, :cond_1b

    .line 538
    .line 539
    sget-object v7, Lea/a;->d:Lea/a;

    .line 540
    .line 541
    :goto_14
    move-object v14, v7

    .line 542
    goto :goto_15

    .line 543
    :cond_1b
    sget-object v7, Lea/a;->b:Lea/a;

    .line 544
    .line 545
    goto :goto_14

    .line 546
    :goto_15
    if-eqz v9, :cond_1c

    .line 547
    .line 548
    iget-object v7, v9, Lma/n;->a:Lma/t;

    .line 549
    .line 550
    move-object v15, v7

    .line 551
    goto :goto_16

    .line 552
    :cond_1c
    const/4 v15, 0x0

    .line 553
    :goto_16
    sget-object v17, Lma/o;->c:Lma/o;

    .line 554
    .line 555
    move-object v10, v5

    .line 556
    check-cast v10, Lga/a;

    .line 557
    .line 558
    move-object v7, v12

    .line 559
    const/4 v12, 0x1

    .line 560
    const/16 v16, 0x0

    .line 561
    .line 562
    move-object/from16 v9, p0

    .line 563
    .line 564
    invoke-virtual/range {v9 .. v17}, Lma/d;->a(Lga/a;Lv9/b;ZLba/a;Lea/a;Lma/t;ZLf9/k;)Llb/w;

    .line 565
    .line 566
    .line 567
    move-result-object v11

    .line 568
    invoke-interface {v5}, Lv9/b;->p()Llb/w;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    const/4 v12, 0x0

    .line 576
    invoke-static {v9, v1, v12}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 577
    .line 578
    .line 579
    move-result v9

    .line 580
    const-string v13, "getType(...)"

    .line 581
    .line 582
    if-nez v9, :cond_22

    .line 583
    .line 584
    invoke-interface {v5}, Lv9/b;->a0()Ly9/v;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    if-eqz v9, :cond_1d

    .line 589
    .line 590
    invoke-virtual {v9}, Ly9/v;->getType()Llb/w;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    invoke-static {v9, v1, v12}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 595
    .line 596
    .line 597
    move-result v9

    .line 598
    goto :goto_17

    .line 599
    :cond_1d
    const/4 v9, 0x0

    .line 600
    :goto_17
    if-nez v9, :cond_22

    .line 601
    .line 602
    invoke-interface {v5}, Lv9/b;->S()Ljava/util/List;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    invoke-static {v9, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 610
    .line 611
    .line 612
    move-result v7

    .line 613
    if-eqz v7, :cond_1f

    .line 614
    .line 615
    :cond_1e
    const/4 v7, 0x0

    .line 616
    goto :goto_18

    .line 617
    :cond_1f
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 618
    .line 619
    .line 620
    move-result-object v7

    .line 621
    :cond_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v9

    .line 625
    if-eqz v9, :cond_1e

    .line 626
    .line 627
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v9

    .line 631
    check-cast v9, Ly9/r0;

    .line 632
    .line 633
    check-cast v9, Ly9/s0;

    .line 634
    .line 635
    invoke-virtual {v9}, Ly9/s0;->getType()Llb/w;

    .line 636
    .line 637
    .line 638
    move-result-object v9

    .line 639
    invoke-static {v9, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    const/4 v12, 0x0

    .line 643
    invoke-static {v9, v1, v12}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 644
    .line 645
    .line 646
    move-result v9

    .line 647
    if-eqz v9, :cond_20

    .line 648
    .line 649
    const/4 v7, 0x1

    .line 650
    :goto_18
    if-eqz v7, :cond_21

    .line 651
    .line 652
    goto :goto_19

    .line 653
    :cond_21
    const/4 v7, 0x0

    .line 654
    goto :goto_1a

    .line 655
    :cond_22
    :goto_19
    const/4 v7, 0x1

    .line 656
    :goto_1a
    if-eqz v7, :cond_23

    .line 657
    .line 658
    new-instance v7, Lea/g;

    .line 659
    .line 660
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 661
    .line 662
    .line 663
    new-instance v12, Lr8/j;

    .line 664
    .line 665
    sget-object v9, Lab/c;->a:Lab/b;

    .line 666
    .line 667
    invoke-direct {v12, v9, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    goto :goto_1b

    .line 671
    :cond_23
    const/4 v12, 0x0

    .line 672
    :goto_1b
    if-nez v6, :cond_28

    .line 673
    .line 674
    if-nez v11, :cond_28

    .line 675
    .line 676
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 677
    .line 678
    .line 679
    move-result v7

    .line 680
    if-eqz v7, :cond_25

    .line 681
    .line 682
    :cond_24
    const/4 v8, 0x0

    .line 683
    goto :goto_1d

    .line 684
    :cond_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 685
    .line 686
    .line 687
    move-result-object v7

    .line 688
    :cond_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 689
    .line 690
    .line 691
    move-result v9

    .line 692
    if-eqz v9, :cond_24

    .line 693
    .line 694
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v9

    .line 698
    check-cast v9, Llb/w;

    .line 699
    .line 700
    if-eqz v9, :cond_27

    .line 701
    .line 702
    const/4 v9, 0x1

    .line 703
    goto :goto_1c

    .line 704
    :cond_27
    const/4 v9, 0x0

    .line 705
    :goto_1c
    if-eqz v9, :cond_26

    .line 706
    .line 707
    :goto_1d
    if-nez v8, :cond_28

    .line 708
    .line 709
    if-eqz v12, :cond_0

    .line 710
    .line 711
    :cond_28
    if-nez v6, :cond_2a

    .line 712
    .line 713
    invoke-interface {v5}, Lv9/b;->a0()Ly9/v;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    if-eqz v6, :cond_29

    .line 718
    .line 719
    invoke-virtual {v6}, Ly9/v;->getType()Llb/w;

    .line 720
    .line 721
    .line 722
    move-result-object v6

    .line 723
    goto :goto_1e

    .line 724
    :cond_29
    const/4 v6, 0x0

    .line 725
    :cond_2a
    :goto_1e
    new-instance v7, Ljava/util/ArrayList;

    .line 726
    .line 727
    const/16 v8, 0xa

    .line 728
    .line 729
    invoke-static {v4, v8}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 730
    .line 731
    .line 732
    move-result v9

    .line 733
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 737
    .line 738
    .line 739
    move-result-object v4

    .line 740
    const/4 v9, 0x0

    .line 741
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v14

    .line 745
    if-eqz v14, :cond_2d

    .line 746
    .line 747
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v14

    .line 751
    add-int/lit8 v23, v9, 0x1

    .line 752
    .line 753
    if-ltz v9, :cond_2c

    .line 754
    .line 755
    check-cast v14, Llb/w;

    .line 756
    .line 757
    if-nez v14, :cond_2b

    .line 758
    .line 759
    invoke-interface {v5}, Lv9/b;->S()Ljava/util/List;

    .line 760
    .line 761
    .line 762
    move-result-object v14

    .line 763
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v9

    .line 767
    check-cast v9, Ly9/r0;

    .line 768
    .line 769
    check-cast v9, Ly9/s0;

    .line 770
    .line 771
    invoke-virtual {v9}, Ly9/s0;->getType()Llb/w;

    .line 772
    .line 773
    .line 774
    move-result-object v14

    .line 775
    invoke-static {v14, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    :cond_2b
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move/from16 v9, v23

    .line 782
    .line 783
    goto :goto_1f

    .line 784
    :cond_2c
    invoke-static {}, Lp9/x1;->L()V

    .line 785
    .line 786
    .line 787
    const/16 v24, 0x0

    .line 788
    .line 789
    throw v24

    .line 790
    :cond_2d
    if-nez v11, :cond_2e

    .line 791
    .line 792
    invoke-interface {v5}, Lv9/b;->p()Llb/w;

    .line 793
    .line 794
    .line 795
    move-result-object v11

    .line 796
    invoke-static {v11}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    :cond_2e
    invoke-interface {v10, v6, v7, v11, v12}, Lga/a;->g0(Llb/w;Ljava/util/ArrayList;Llb/w;Lr8/j;)Lga/a;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    :goto_20
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    const/16 v4, 0xa

    .line 807
    .line 808
    goto/16 :goto_0

    .line 809
    .line 810
    :cond_2f
    return-object v3
.end method
