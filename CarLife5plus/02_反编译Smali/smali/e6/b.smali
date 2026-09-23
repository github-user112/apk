.class public final Le6/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm5/k;


# static fields
.field public static final a:[Lm5/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lm5/m;

    .line 3
    .line 4
    sput-object v0, Le6/b;->a:[Lm5/m;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Lm5/o;Lm5/o;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p0, p0, Lm5/o;->a:F

    .line 7
    .line 8
    iget p1, p1, Lm5/o;->a:F

    .line 9
    .line 10
    sub-float/2addr p0, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    float-to-int p0, p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static c(Lm5/o;Lm5/o;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p0, p0, Lm5/o;->a:F

    .line 7
    .line 8
    iget p1, p1, Lm5/o;->a:F

    .line 9
    .line 10
    sub-float/2addr p0, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    float-to-int p0, p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const p0, 0x7fffffff

    .line 18
    .line 19
    .line 20
    return p0
.end method


# virtual methods
.method public final a(Lm5/b;Ljava/util/Map;)Lm5/m;
    .locals 35

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lm5/b;->a()Ls5/b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lh6/a;->a(Ls5/b;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    new-instance v2, Ls5/b;

    .line 24
    .line 25
    iget v3, v1, Ls5/b;->a:I

    .line 26
    .line 27
    iget v7, v1, Ls5/b;->b:I

    .line 28
    .line 29
    iget v8, v1, Ls5/b;->c:I

    .line 30
    .line 31
    iget-object v1, v1, Ls5/b;->d:[I

    .line 32
    .line 33
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, [I

    .line 38
    .line 39
    invoke-direct {v2, v3, v7, v8, v1}, Ls5/b;-><init>(III[I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ls5/a;

    .line 43
    .line 44
    invoke-direct {v1, v3}, Ls5/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Ls5/a;

    .line 48
    .line 49
    invoke-direct {v8, v3}, Ls5/a;-><init>(I)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v7, 0x1

    .line 53
    .line 54
    div-int/2addr v3, v5

    .line 55
    const/4 v9, 0x0

    .line 56
    :goto_0
    if-ge v9, v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2, v1, v9}, Ls5/b;->d(Ls5/a;I)Ls5/a;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    add-int/lit8 v10, v7, -0x1

    .line 63
    .line 64
    sub-int/2addr v10, v9

    .line 65
    invoke-virtual {v2, v8, v10}, Ls5/b;->d(Ls5/a;I)Ls5/a;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v1}, Ls5/a;->i()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Ls5/a;->i()V

    .line 73
    .line 74
    .line 75
    iget-object v11, v8, Ls5/a;->a:[I

    .line 76
    .line 77
    iget v12, v2, Ls5/b;->c:I

    .line 78
    .line 79
    mul-int v13, v9, v12

    .line 80
    .line 81
    iget-object v14, v2, Ls5/b;->d:[I

    .line 82
    .line 83
    invoke-static {v11, v4, v14, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    iget-object v11, v1, Ls5/a;->a:[I

    .line 87
    .line 88
    mul-int v10, v10, v12

    .line 89
    .line 90
    invoke-static {v11, v4, v14, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v9, v9, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v2}, Lh6/a;->a(Ls5/b;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object v7, v2

    .line 101
    move-object v2, v1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move-object v7, v1

    .line 104
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_60

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, [Lm5/o;

    .line 119
    .line 120
    const/4 v3, 0x4

    .line 121
    aget-object v9, v2, v3

    .line 122
    .line 123
    const/4 v15, 0x5

    .line 124
    aget-object v10, v2, v15

    .line 125
    .line 126
    const/16 v16, 0x6

    .line 127
    .line 128
    aget-object v11, v2, v16

    .line 129
    .line 130
    const/16 v17, 0x7

    .line 131
    .line 132
    aget-object v12, v2, v17

    .line 133
    .line 134
    aget-object v8, v2, v4

    .line 135
    .line 136
    invoke-static {v8, v9}, Le6/b;->c(Lm5/o;Lm5/o;)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    aget-object v13, v2, v16

    .line 141
    .line 142
    aget-object v14, v2, v5

    .line 143
    .line 144
    invoke-static {v13, v14}, Le6/b;->c(Lm5/o;Lm5/o;)I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    mul-int/lit8 v13, v13, 0x11

    .line 149
    .line 150
    div-int/lit8 v13, v13, 0x12

    .line 151
    .line 152
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    aget-object v13, v2, v6

    .line 157
    .line 158
    aget-object v14, v2, v15

    .line 159
    .line 160
    invoke-static {v13, v14}, Le6/b;->c(Lm5/o;Lm5/o;)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    aget-object v14, v2, v17

    .line 165
    .line 166
    const/16 v18, 0x3

    .line 167
    .line 168
    const/16 p1, 0x4

    .line 169
    .line 170
    aget-object v3, v2, v18

    .line 171
    .line 172
    invoke-static {v14, v3}, Le6/b;->c(Lm5/o;Lm5/o;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    mul-int/lit8 v3, v3, 0x11

    .line 177
    .line 178
    div-int/lit8 v3, v3, 0x12

    .line 179
    .line 180
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    aget-object v8, v2, v4

    .line 189
    .line 190
    aget-object v13, v2, p1

    .line 191
    .line 192
    invoke-static {v8, v13}, Le6/b;->b(Lm5/o;Lm5/o;)I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    aget-object v13, v2, v16

    .line 197
    .line 198
    aget-object v14, v2, v5

    .line 199
    .line 200
    invoke-static {v13, v14}, Le6/b;->b(Lm5/o;Lm5/o;)I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    mul-int/lit8 v13, v13, 0x11

    .line 205
    .line 206
    div-int/lit8 v13, v13, 0x12

    .line 207
    .line 208
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    aget-object v13, v2, v6

    .line 213
    .line 214
    aget-object v14, v2, v15

    .line 215
    .line 216
    invoke-static {v13, v14}, Le6/b;->b(Lm5/o;Lm5/o;)I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    aget-object v14, v2, v17

    .line 221
    .line 222
    const/16 p2, 0x0

    .line 223
    .line 224
    aget-object v4, v2, v18

    .line 225
    .line 226
    invoke-static {v14, v4}, Le6/b;->b(Lm5/o;Lm5/o;)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    mul-int/lit8 v4, v4, 0x11

    .line 231
    .line 232
    div-int/lit8 v4, v4, 0x12

    .line 233
    .line 234
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    sget-object v8, Lf6/g;->a:La2/d;

    .line 243
    .line 244
    move-object v8, v7

    .line 245
    new-instance v7, Lf6/c;

    .line 246
    .line 247
    invoke-direct/range {v7 .. v12}, Lf6/c;-><init>(Ls5/b;Lm5/o;Lm5/o;Lm5/o;Lm5/o;)V

    .line 248
    .line 249
    .line 250
    move-object v13, v11

    .line 251
    const/4 v10, 0x0

    .line 252
    const/16 v19, 0x0

    .line 253
    .line 254
    const/16 v20, 0x1

    .line 255
    .line 256
    :goto_3
    iget v11, v7, Lf6/c;->i:I

    .line 257
    .line 258
    iget v12, v7, Lf6/c;->h:I

    .line 259
    .line 260
    if-eqz v9, :cond_2

    .line 261
    .line 262
    const/4 v10, 0x1

    .line 263
    move/from16 v34, v11

    .line 264
    .line 265
    move v11, v3

    .line 266
    move v3, v12

    .line 267
    move v12, v4

    .line 268
    move/from16 v4, v34

    .line 269
    .line 270
    move-object/from16 v34, v8

    .line 271
    .line 272
    move-object v8, v7

    .line 273
    move-object/from16 v7, v34

    .line 274
    .line 275
    invoke-static/range {v7 .. v12}, Lf6/g;->d(Ls5/b;Lf6/c;Lm5/o;ZII)Lf6/e;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    :goto_4
    move-object/from16 v21, v9

    .line 280
    .line 281
    move-object/from16 v22, v10

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_2
    move/from16 v21, v11

    .line 285
    .line 286
    move v11, v3

    .line 287
    move v3, v12

    .line 288
    move v12, v4

    .line 289
    move/from16 v4, v21

    .line 290
    .line 291
    move-object/from16 v21, v8

    .line 292
    .line 293
    move-object v8, v7

    .line 294
    move-object/from16 v7, v21

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :goto_5
    if-eqz v13, :cond_3

    .line 298
    .line 299
    const/4 v10, 0x0

    .line 300
    move-object v9, v13

    .line 301
    invoke-static/range {v7 .. v12}, Lf6/g;->d(Ls5/b;Lf6/c;Lm5/o;ZII)Lf6/e;

    .line 302
    .line 303
    .line 304
    move-result-object v19

    .line 305
    :cond_3
    if-nez v22, :cond_4

    .line 306
    .line 307
    if-nez v19, :cond_4

    .line 308
    .line 309
    const/4 v5, 0x0

    .line 310
    const/16 v24, 0x5

    .line 311
    .line 312
    :goto_6
    const/16 v31, 0x1

    .line 313
    .line 314
    goto/16 :goto_c

    .line 315
    .line 316
    :cond_4
    if-eqz v22, :cond_5

    .line 317
    .line 318
    invoke-virtual/range {v22 .. v22}, Lf6/e;->P()Lf6/a;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    if-nez v9, :cond_6

    .line 323
    .line 324
    :cond_5
    const/16 v24, 0x5

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_6
    if-eqz v19, :cond_7

    .line 328
    .line 329
    invoke-virtual/range {v19 .. v19}, Lf6/e;->P()Lf6/a;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    if-nez v10, :cond_8

    .line 334
    .line 335
    :cond_7
    const/16 v24, 0x5

    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_8
    iget v14, v9, Lf6/a;->b:I

    .line 339
    .line 340
    const/16 v24, 0x5

    .line 341
    .line 342
    iget v15, v10, Lf6/a;->b:I

    .line 343
    .line 344
    if-eq v14, v15, :cond_a

    .line 345
    .line 346
    iget v14, v9, Lf6/a;->c:I

    .line 347
    .line 348
    iget v15, v10, Lf6/a;->c:I

    .line 349
    .line 350
    if-eq v14, v15, :cond_a

    .line 351
    .line 352
    iget v14, v9, Lf6/a;->f:I

    .line 353
    .line 354
    iget v10, v10, Lf6/a;->f:I

    .line 355
    .line 356
    if-eq v14, v10, :cond_a

    .line 357
    .line 358
    :goto_7
    const/4 v9, 0x0

    .line 359
    goto :goto_9

    .line 360
    :goto_8
    if-nez v19, :cond_9

    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lf6/e;->P()Lf6/a;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    :cond_a
    :goto_9
    if-nez v9, :cond_b

    .line 368
    .line 369
    const/4 v5, 0x0

    .line 370
    goto :goto_6

    .line 371
    :cond_b
    invoke-static/range {v22 .. v22}, Lf6/g;->a(Lf6/e;)Lf6/c;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    invoke-static/range {v19 .. v19}, Lf6/g;->a(Lf6/e;)Lf6/c;

    .line 376
    .line 377
    .line 378
    move-result-object v14

    .line 379
    if-nez v10, :cond_c

    .line 380
    .line 381
    move-object v10, v14

    .line 382
    :goto_a
    const/16 v31, 0x1

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_c
    if-nez v14, :cond_d

    .line 386
    .line 387
    goto :goto_a

    .line 388
    :cond_d
    new-instance v25, Lf6/c;

    .line 389
    .line 390
    iget-object v15, v10, Lf6/c;->a:Ls5/b;

    .line 391
    .line 392
    const/16 v31, 0x1

    .line 393
    .line 394
    iget-object v6, v10, Lf6/c;->b:Lm5/o;

    .line 395
    .line 396
    iget-object v10, v10, Lf6/c;->c:Lm5/o;

    .line 397
    .line 398
    iget-object v5, v14, Lf6/c;->d:Lm5/o;

    .line 399
    .line 400
    iget-object v14, v14, Lf6/c;->e:Lm5/o;

    .line 401
    .line 402
    move-object/from16 v29, v5

    .line 403
    .line 404
    move-object/from16 v27, v6

    .line 405
    .line 406
    move-object/from16 v28, v10

    .line 407
    .line 408
    move-object/from16 v30, v14

    .line 409
    .line 410
    move-object/from16 v26, v15

    .line 411
    .line 412
    invoke-direct/range {v25 .. v30}, Lf6/c;-><init>(Ls5/b;Lm5/o;Lm5/o;Lm5/o;Lm5/o;)V

    .line 413
    .line 414
    .line 415
    move-object/from16 v10, v25

    .line 416
    .line 417
    :goto_b
    new-instance v5, Ld7/q;

    .line 418
    .line 419
    invoke-direct {v5, v9, v10}, Ld7/q;-><init>(Lf6/a;Lf6/c;)V

    .line 420
    .line 421
    .line 422
    :goto_c
    if-eqz v5, :cond_5f

    .line 423
    .line 424
    iget v6, v5, Ld7/q;->b:I

    .line 425
    .line 426
    iget-object v9, v5, Ld7/q;->d:Ljava/lang/Object;

    .line 427
    .line 428
    move-object v15, v9

    .line 429
    check-cast v15, [Lu0/j;

    .line 430
    .line 431
    iget-object v9, v5, Ld7/q;->e:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v9, Lf6/c;

    .line 434
    .line 435
    if-eqz v20, :cond_f

    .line 436
    .line 437
    if-eqz v9, :cond_f

    .line 438
    .line 439
    iget v10, v9, Lf6/c;->h:I

    .line 440
    .line 441
    if-lt v10, v3, :cond_e

    .line 442
    .line 443
    iget v10, v9, Lf6/c;->i:I

    .line 444
    .line 445
    if-le v10, v4, :cond_f

    .line 446
    .line 447
    :cond_e
    move-object v8, v7

    .line 448
    move-object v7, v9

    .line 449
    move v3, v11

    .line 450
    move v4, v12

    .line 451
    move-object/from16 v9, v21

    .line 452
    .line 453
    move-object/from16 v10, v22

    .line 454
    .line 455
    const/4 v5, 0x2

    .line 456
    const/4 v6, 0x1

    .line 457
    const/4 v15, 0x5

    .line 458
    const/16 v20, 0x0

    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :cond_f
    iput-object v8, v5, Ld7/q;->e:Ljava/lang/Object;

    .line 463
    .line 464
    add-int/lit8 v9, v6, 0x1

    .line 465
    .line 466
    aput-object v22, v15, p2

    .line 467
    .line 468
    aput-object v19, v15, v9

    .line 469
    .line 470
    if-eqz v22, :cond_10

    .line 471
    .line 472
    const/4 v10, 0x1

    .line 473
    goto :goto_d

    .line 474
    :cond_10
    const/4 v10, 0x0

    .line 475
    :goto_d
    const/4 v13, 0x1

    .line 476
    :goto_e
    if-gt v13, v9, :cond_2a

    .line 477
    .line 478
    if-eqz v10, :cond_11

    .line 479
    .line 480
    move v14, v13

    .line 481
    goto :goto_f

    .line 482
    :cond_11
    sub-int v14, v9, v13

    .line 483
    .line 484
    :goto_f
    aget-object v19, v15, v14

    .line 485
    .line 486
    if-nez v19, :cond_29

    .line 487
    .line 488
    if-eqz v14, :cond_12

    .line 489
    .line 490
    if-ne v14, v9, :cond_13

    .line 491
    .line 492
    :cond_12
    move-object/from16 v19, v1

    .line 493
    .line 494
    goto :goto_10

    .line 495
    :cond_13
    move-object/from16 v19, v1

    .line 496
    .line 497
    new-instance v1, Lu0/j;

    .line 498
    .line 499
    invoke-direct {v1, v8}, Lu0/j;-><init>(Lf6/c;)V

    .line 500
    .line 501
    .line 502
    move/from16 v20, v3

    .line 503
    .line 504
    goto :goto_12

    .line 505
    :goto_10
    new-instance v1, Lf6/e;

    .line 506
    .line 507
    move/from16 v20, v3

    .line 508
    .line 509
    if-nez v14, :cond_14

    .line 510
    .line 511
    const/4 v3, 0x1

    .line 512
    goto :goto_11

    .line 513
    :cond_14
    const/4 v3, 0x0

    .line 514
    :goto_11
    invoke-direct {v1, v8, v3}, Lf6/e;-><init>(Lf6/c;Z)V

    .line 515
    .line 516
    .line 517
    :goto_12
    aput-object v1, v15, v14

    .line 518
    .line 519
    move-object/from16 v22, v0

    .line 520
    .line 521
    move/from16 v21, v14

    .line 522
    .line 523
    const/4 v0, -0x1

    .line 524
    move v14, v12

    .line 525
    move/from16 v12, v20

    .line 526
    .line 527
    :goto_13
    if-gt v12, v4, :cond_28

    .line 528
    .line 529
    if-eqz v10, :cond_15

    .line 530
    .line 531
    const/16 v25, 0x1

    .line 532
    .line 533
    goto :goto_14

    .line 534
    :cond_15
    const/16 v25, -0x1

    .line 535
    .line 536
    :goto_14
    sub-int v3, v21, v25

    .line 537
    .line 538
    if-ltz v3, :cond_17

    .line 539
    .line 540
    move/from16 v27, v4

    .line 541
    .line 542
    add-int/lit8 v4, v6, 0x1

    .line 543
    .line 544
    if-gt v3, v4, :cond_16

    .line 545
    .line 546
    aget-object v4, v15, v3

    .line 547
    .line 548
    move-object/from16 v28, v7

    .line 549
    .line 550
    iget-object v7, v4, Lu0/j;->c:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v7, [Lf6/a;

    .line 553
    .line 554
    invoke-virtual {v4, v12}, Lu0/j;->v(I)I

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    aget-object v4, v7, v4

    .line 559
    .line 560
    goto :goto_17

    .line 561
    :cond_16
    :goto_15
    move-object/from16 v28, v7

    .line 562
    .line 563
    goto :goto_16

    .line 564
    :cond_17
    move/from16 v27, v4

    .line 565
    .line 566
    goto :goto_15

    .line 567
    :goto_16
    const/4 v4, 0x0

    .line 568
    :goto_17
    if-eqz v4, :cond_19

    .line 569
    .line 570
    if-eqz v10, :cond_18

    .line 571
    .line 572
    iget v3, v4, Lf6/a;->c:I

    .line 573
    .line 574
    goto/16 :goto_1b

    .line 575
    .line 576
    :cond_18
    iget v3, v4, Lf6/a;->b:I

    .line 577
    .line 578
    goto/16 :goto_1b

    .line 579
    .line 580
    :cond_19
    aget-object v4, v15, v21

    .line 581
    .line 582
    invoke-virtual {v4, v12}, Lu0/j;->p(I)Lf6/a;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    if-eqz v4, :cond_1b

    .line 587
    .line 588
    if-eqz v10, :cond_1a

    .line 589
    .line 590
    iget v3, v4, Lf6/a;->b:I

    .line 591
    .line 592
    goto/16 :goto_1b

    .line 593
    .line 594
    :cond_1a
    iget v3, v4, Lf6/a;->c:I

    .line 595
    .line 596
    goto/16 :goto_1b

    .line 597
    .line 598
    :cond_1b
    if-ltz v3, :cond_1c

    .line 599
    .line 600
    add-int/lit8 v7, v6, 0x1

    .line 601
    .line 602
    if-gt v3, v7, :cond_1c

    .line 603
    .line 604
    aget-object v3, v15, v3

    .line 605
    .line 606
    invoke-virtual {v3, v12}, Lu0/j;->p(I)Lf6/a;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    :cond_1c
    if-eqz v4, :cond_1e

    .line 611
    .line 612
    if-eqz v10, :cond_1d

    .line 613
    .line 614
    iget v3, v4, Lf6/a;->c:I

    .line 615
    .line 616
    goto :goto_1b

    .line 617
    :cond_1d
    iget v3, v4, Lf6/a;->b:I

    .line 618
    .line 619
    goto :goto_1b

    .line 620
    :cond_1e
    move/from16 v3, v21

    .line 621
    .line 622
    const/4 v4, 0x0

    .line 623
    :goto_18
    sub-int v3, v3, v25

    .line 624
    .line 625
    if-ltz v3, :cond_22

    .line 626
    .line 627
    add-int/lit8 v7, v6, 0x1

    .line 628
    .line 629
    if-gt v3, v7, :cond_22

    .line 630
    .line 631
    aget-object v7, v15, v3

    .line 632
    .line 633
    iget-object v7, v7, Lu0/j;->c:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v7, [Lf6/a;

    .line 636
    .line 637
    move/from16 v29, v3

    .line 638
    .line 639
    array-length v3, v7

    .line 640
    move/from16 v30, v4

    .line 641
    .line 642
    const/4 v4, 0x0

    .line 643
    :goto_19
    if-ge v4, v3, :cond_21

    .line 644
    .line 645
    move/from16 v33, v3

    .line 646
    .line 647
    aget-object v3, v7, v4

    .line 648
    .line 649
    if-eqz v3, :cond_20

    .line 650
    .line 651
    iget v4, v3, Lf6/a;->b:I

    .line 652
    .line 653
    iget v3, v3, Lf6/a;->c:I

    .line 654
    .line 655
    if-eqz v10, :cond_1f

    .line 656
    .line 657
    move v7, v3

    .line 658
    goto :goto_1a

    .line 659
    :cond_1f
    move v7, v4

    .line 660
    :goto_1a
    mul-int v25, v25, v30

    .line 661
    .line 662
    sub-int/2addr v3, v4

    .line 663
    mul-int v3, v3, v25

    .line 664
    .line 665
    add-int/2addr v3, v7

    .line 666
    goto :goto_1b

    .line 667
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 668
    .line 669
    move/from16 v3, v33

    .line 670
    .line 671
    goto :goto_19

    .line 672
    :cond_21
    add-int/lit8 v4, v30, 0x1

    .line 673
    .line 674
    move/from16 v3, v29

    .line 675
    .line 676
    goto :goto_18

    .line 677
    :cond_22
    if-eqz v10, :cond_23

    .line 678
    .line 679
    iget-object v3, v5, Ld7/q;->e:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v3, Lf6/c;

    .line 682
    .line 683
    iget v3, v3, Lf6/c;->f:I

    .line 684
    .line 685
    goto :goto_1b

    .line 686
    :cond_23
    iget-object v3, v5, Ld7/q;->e:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v3, Lf6/c;

    .line 689
    .line 690
    iget v3, v3, Lf6/c;->g:I

    .line 691
    .line 692
    :goto_1b
    if-ltz v3, :cond_24

    .line 693
    .line 694
    iget v4, v8, Lf6/c;->g:I

    .line 695
    .line 696
    if-le v3, v4, :cond_25

    .line 697
    .line 698
    :cond_24
    const/4 v3, -0x1

    .line 699
    goto :goto_1c

    .line 700
    :cond_25
    move v4, v13

    .line 701
    move v13, v11

    .line 702
    move v11, v3

    .line 703
    const/4 v3, -0x1

    .line 704
    goto :goto_1d

    .line 705
    :goto_1c
    if-eq v0, v3, :cond_27

    .line 706
    .line 707
    move v4, v13

    .line 708
    move v13, v11

    .line 709
    move v11, v0

    .line 710
    :goto_1d
    iget v7, v8, Lf6/c;->f:I

    .line 711
    .line 712
    move/from16 v25, v9

    .line 713
    .line 714
    iget v9, v8, Lf6/c;->g:I

    .line 715
    .line 716
    move/from16 v23, v4

    .line 717
    .line 718
    move/from16 v4, v25

    .line 719
    .line 720
    const/4 v3, 0x0

    .line 721
    move/from16 v25, v21

    .line 722
    .line 723
    move-object/from16 v21, v8

    .line 724
    .line 725
    move v8, v7

    .line 726
    move-object/from16 v7, v28

    .line 727
    .line 728
    invoke-static/range {v7 .. v14}, Lf6/g;->c(Ls5/b;IIZIIII)Lf6/a;

    .line 729
    .line 730
    .line 731
    move-result-object v8

    .line 732
    if-eqz v8, :cond_26

    .line 733
    .line 734
    iget v0, v8, Lf6/a;->b:I

    .line 735
    .line 736
    iget v9, v8, Lf6/a;->c:I

    .line 737
    .line 738
    move-object/from16 v28, v3

    .line 739
    .line 740
    iget-object v3, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v3, [Lf6/a;

    .line 743
    .line 744
    invoke-virtual {v1, v12}, Lu0/j;->v(I)I

    .line 745
    .line 746
    .line 747
    move-result v29

    .line 748
    aput-object v8, v3, v29

    .line 749
    .line 750
    sub-int v3, v9, v0

    .line 751
    .line 752
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    .line 753
    .line 754
    .line 755
    move-result v3

    .line 756
    sub-int/2addr v9, v0

    .line 757
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    move v14, v0

    .line 762
    move v0, v11

    .line 763
    move v11, v3

    .line 764
    goto :goto_1f

    .line 765
    :cond_26
    move-object/from16 v28, v3

    .line 766
    .line 767
    goto :goto_1e

    .line 768
    :cond_27
    move v4, v9

    .line 769
    move/from16 v23, v13

    .line 770
    .line 771
    move/from16 v25, v21

    .line 772
    .line 773
    move-object/from16 v7, v28

    .line 774
    .line 775
    const/16 v28, 0x0

    .line 776
    .line 777
    move-object/from16 v21, v8

    .line 778
    .line 779
    move v13, v11

    .line 780
    :goto_1e
    move v11, v13

    .line 781
    :goto_1f
    add-int/lit8 v12, v12, 0x1

    .line 782
    .line 783
    move v9, v4

    .line 784
    move-object/from16 v8, v21

    .line 785
    .line 786
    move/from16 v13, v23

    .line 787
    .line 788
    move/from16 v21, v25

    .line 789
    .line 790
    move/from16 v4, v27

    .line 791
    .line 792
    goto/16 :goto_13

    .line 793
    .line 794
    :cond_28
    move/from16 v23, v13

    .line 795
    .line 796
    move v13, v11

    .line 797
    move v12, v14

    .line 798
    :goto_20
    move/from16 v27, v4

    .line 799
    .line 800
    move-object/from16 v21, v8

    .line 801
    .line 802
    move v4, v9

    .line 803
    const/16 v28, 0x0

    .line 804
    .line 805
    goto :goto_21

    .line 806
    :cond_29
    move-object/from16 v22, v0

    .line 807
    .line 808
    move-object/from16 v19, v1

    .line 809
    .line 810
    move/from16 v20, v3

    .line 811
    .line 812
    move/from16 v23, v13

    .line 813
    .line 814
    goto :goto_20

    .line 815
    :goto_21
    add-int/lit8 v13, v23, 0x1

    .line 816
    .line 817
    move v9, v4

    .line 818
    move-object/from16 v1, v19

    .line 819
    .line 820
    move/from16 v3, v20

    .line 821
    .line 822
    move-object/from16 v8, v21

    .line 823
    .line 824
    move-object/from16 v0, v22

    .line 825
    .line 826
    move/from16 v4, v27

    .line 827
    .line 828
    goto/16 :goto_e

    .line 829
    .line 830
    :cond_2a
    move-object/from16 v22, v0

    .line 831
    .line 832
    move-object/from16 v19, v1

    .line 833
    .line 834
    move v4, v9

    .line 835
    const/16 v28, 0x0

    .line 836
    .line 837
    iget-object v0, v5, Ld7/q;->c:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast v0, Lf6/a;

    .line 840
    .line 841
    iget v1, v0, Lf6/a;->f:I

    .line 842
    .line 843
    add-int/lit8 v3, v6, 0x2

    .line 844
    .line 845
    const/4 v8, 0x2

    .line 846
    new-array v9, v8, [I

    .line 847
    .line 848
    aput v3, v9, v31

    .line 849
    .line 850
    aput v1, v9, p2

    .line 851
    .line 852
    const-class v3, Lf6/b;

    .line 853
    .line 854
    invoke-static {v3, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    check-cast v3, [[Lf6/b;

    .line 859
    .line 860
    const/4 v8, 0x0

    .line 861
    :goto_22
    array-length v9, v3

    .line 862
    if-ge v8, v9, :cond_2c

    .line 863
    .line 864
    const/4 v9, 0x0

    .line 865
    :goto_23
    aget-object v10, v3, v8

    .line 866
    .line 867
    array-length v11, v10

    .line 868
    if-ge v9, v11, :cond_2b

    .line 869
    .line 870
    new-instance v11, Lf6/b;

    .line 871
    .line 872
    invoke-direct {v11}, Lf6/b;-><init>()V

    .line 873
    .line 874
    .line 875
    aput-object v11, v10, v9

    .line 876
    .line 877
    add-int/lit8 v9, v9, 0x1

    .line 878
    .line 879
    goto :goto_23

    .line 880
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    .line 881
    .line 882
    goto :goto_22

    .line 883
    :cond_2c
    aget-object v8, v15, p2

    .line 884
    .line 885
    invoke-virtual {v5, v8}, Ld7/q;->a(Lu0/j;)V

    .line 886
    .line 887
    .line 888
    aget-object v8, v15, v4

    .line 889
    .line 890
    invoke-virtual {v5, v8}, Ld7/q;->a(Lu0/j;)V

    .line 891
    .line 892
    .line 893
    const/16 v8, 0x3a0

    .line 894
    .line 895
    :goto_24
    aget-object v9, v15, p2

    .line 896
    .line 897
    if-eqz v9, :cond_30

    .line 898
    .line 899
    aget-object v10, v15, v4

    .line 900
    .line 901
    if-nez v10, :cond_2d

    .line 902
    .line 903
    goto :goto_27

    .line 904
    :cond_2d
    iget-object v9, v9, Lu0/j;->c:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v9, [Lf6/a;

    .line 907
    .line 908
    iget-object v10, v10, Lu0/j;->c:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v10, [Lf6/a;

    .line 911
    .line 912
    const/4 v11, 0x0

    .line 913
    :goto_25
    array-length v12, v9

    .line 914
    if-ge v11, v12, :cond_30

    .line 915
    .line 916
    aget-object v12, v9, v11

    .line 917
    .line 918
    if-eqz v12, :cond_2f

    .line 919
    .line 920
    aget-object v13, v10, v11

    .line 921
    .line 922
    if-eqz v13, :cond_2f

    .line 923
    .line 924
    iget v12, v12, Lf6/a;->f:I

    .line 925
    .line 926
    iget v13, v13, Lf6/a;->f:I

    .line 927
    .line 928
    if-ne v12, v13, :cond_2f

    .line 929
    .line 930
    const/4 v12, 0x1

    .line 931
    :goto_26
    if-gt v12, v6, :cond_2f

    .line 932
    .line 933
    aget-object v13, v15, v12

    .line 934
    .line 935
    iget-object v13, v13, Lu0/j;->c:Ljava/lang/Object;

    .line 936
    .line 937
    check-cast v13, [Lf6/a;

    .line 938
    .line 939
    aget-object v13, v13, v11

    .line 940
    .line 941
    if-eqz v13, :cond_2e

    .line 942
    .line 943
    aget-object v14, v9, v11

    .line 944
    .line 945
    iget v14, v14, Lf6/a;->f:I

    .line 946
    .line 947
    iput v14, v13, Lf6/a;->f:I

    .line 948
    .line 949
    invoke-virtual {v13, v14}, Lf6/a;->a(I)Z

    .line 950
    .line 951
    .line 952
    move-result v13

    .line 953
    if-nez v13, :cond_2e

    .line 954
    .line 955
    aget-object v13, v15, v12

    .line 956
    .line 957
    iget-object v13, v13, Lu0/j;->c:Ljava/lang/Object;

    .line 958
    .line 959
    check-cast v13, [Lf6/a;

    .line 960
    .line 961
    aput-object v28, v13, v11

    .line 962
    .line 963
    :cond_2e
    add-int/lit8 v12, v12, 0x1

    .line 964
    .line 965
    goto :goto_26

    .line 966
    :cond_2f
    add-int/lit8 v11, v11, 0x1

    .line 967
    .line 968
    goto :goto_25

    .line 969
    :cond_30
    :goto_27
    aget-object v9, v15, p2

    .line 970
    .line 971
    if-nez v9, :cond_32

    .line 972
    .line 973
    const/4 v11, 0x0

    .line 974
    :cond_31
    move-object/from16 v21, v7

    .line 975
    .line 976
    goto :goto_2b

    .line 977
    :cond_32
    iget-object v9, v9, Lu0/j;->c:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast v9, [Lf6/a;

    .line 980
    .line 981
    const/4 v10, 0x0

    .line 982
    const/4 v11, 0x0

    .line 983
    :goto_28
    array-length v12, v9

    .line 984
    if-ge v10, v12, :cond_31

    .line 985
    .line 986
    aget-object v12, v9, v10

    .line 987
    .line 988
    if-eqz v12, :cond_36

    .line 989
    .line 990
    iget v12, v12, Lf6/a;->f:I

    .line 991
    .line 992
    const/4 v13, 0x1

    .line 993
    const/4 v14, 0x0

    .line 994
    :goto_29
    if-ge v13, v4, :cond_36

    .line 995
    .line 996
    const/4 v5, 0x2

    .line 997
    if-ge v14, v5, :cond_36

    .line 998
    .line 999
    aget-object v5, v15, v13

    .line 1000
    .line 1001
    iget-object v5, v5, Lu0/j;->c:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v5, [Lf6/a;

    .line 1004
    .line 1005
    aget-object v5, v5, v10

    .line 1006
    .line 1007
    move-object/from16 v21, v7

    .line 1008
    .line 1009
    if-eqz v5, :cond_35

    .line 1010
    .line 1011
    iget v7, v5, Lf6/a;->f:I

    .line 1012
    .line 1013
    invoke-virtual {v5, v7}, Lf6/a;->a(I)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v7

    .line 1017
    if-nez v7, :cond_34

    .line 1018
    .line 1019
    invoke-virtual {v5, v12}, Lf6/a;->a(I)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v7

    .line 1023
    if-eqz v7, :cond_33

    .line 1024
    .line 1025
    iput v12, v5, Lf6/a;->f:I

    .line 1026
    .line 1027
    const/4 v14, 0x0

    .line 1028
    goto :goto_2a

    .line 1029
    :cond_33
    add-int/lit8 v14, v14, 0x1

    .line 1030
    .line 1031
    :cond_34
    :goto_2a
    iget v7, v5, Lf6/a;->f:I

    .line 1032
    .line 1033
    invoke-virtual {v5, v7}, Lf6/a;->a(I)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v5

    .line 1037
    if-nez v5, :cond_35

    .line 1038
    .line 1039
    add-int/lit8 v11, v11, 0x1

    .line 1040
    .line 1041
    :cond_35
    add-int/lit8 v13, v13, 0x1

    .line 1042
    .line 1043
    move-object/from16 v7, v21

    .line 1044
    .line 1045
    goto :goto_29

    .line 1046
    :cond_36
    move-object/from16 v21, v7

    .line 1047
    .line 1048
    add-int/lit8 v10, v10, 0x1

    .line 1049
    .line 1050
    move-object/from16 v7, v21

    .line 1051
    .line 1052
    goto :goto_28

    .line 1053
    :goto_2b
    aget-object v5, v15, v4

    .line 1054
    .line 1055
    if-nez v5, :cond_37

    .line 1056
    .line 1057
    const/4 v9, 0x0

    .line 1058
    goto :goto_30

    .line 1059
    :cond_37
    iget-object v5, v5, Lu0/j;->c:Ljava/lang/Object;

    .line 1060
    .line 1061
    check-cast v5, [Lf6/a;

    .line 1062
    .line 1063
    const/4 v7, 0x0

    .line 1064
    const/4 v9, 0x0

    .line 1065
    :goto_2c
    array-length v10, v5

    .line 1066
    if-ge v7, v10, :cond_3d

    .line 1067
    .line 1068
    aget-object v10, v5, v7

    .line 1069
    .line 1070
    if-eqz v10, :cond_3c

    .line 1071
    .line 1072
    iget v10, v10, Lf6/a;->f:I

    .line 1073
    .line 1074
    move v12, v9

    .line 1075
    const/4 v13, 0x0

    .line 1076
    move v9, v4

    .line 1077
    :goto_2d
    if-lez v9, :cond_3b

    .line 1078
    .line 1079
    const/4 v14, 0x2

    .line 1080
    if-ge v13, v14, :cond_3b

    .line 1081
    .line 1082
    aget-object v14, v15, v9

    .line 1083
    .line 1084
    iget-object v14, v14, Lu0/j;->c:Ljava/lang/Object;

    .line 1085
    .line 1086
    check-cast v14, [Lf6/a;

    .line 1087
    .line 1088
    aget-object v14, v14, v7

    .line 1089
    .line 1090
    move-object/from16 v23, v5

    .line 1091
    .line 1092
    if-eqz v14, :cond_3a

    .line 1093
    .line 1094
    iget v5, v14, Lf6/a;->f:I

    .line 1095
    .line 1096
    invoke-virtual {v14, v5}, Lf6/a;->a(I)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v5

    .line 1100
    if-nez v5, :cond_39

    .line 1101
    .line 1102
    invoke-virtual {v14, v10}, Lf6/a;->a(I)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v5

    .line 1106
    if-eqz v5, :cond_38

    .line 1107
    .line 1108
    iput v10, v14, Lf6/a;->f:I

    .line 1109
    .line 1110
    const/4 v13, 0x0

    .line 1111
    goto :goto_2e

    .line 1112
    :cond_38
    add-int/lit8 v13, v13, 0x1

    .line 1113
    .line 1114
    :cond_39
    :goto_2e
    iget v5, v14, Lf6/a;->f:I

    .line 1115
    .line 1116
    invoke-virtual {v14, v5}, Lf6/a;->a(I)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v5

    .line 1120
    if-nez v5, :cond_3a

    .line 1121
    .line 1122
    add-int/lit8 v12, v12, 0x1

    .line 1123
    .line 1124
    :cond_3a
    add-int/lit8 v9, v9, -0x1

    .line 1125
    .line 1126
    move-object/from16 v5, v23

    .line 1127
    .line 1128
    goto :goto_2d

    .line 1129
    :cond_3b
    move-object/from16 v23, v5

    .line 1130
    .line 1131
    move v9, v12

    .line 1132
    goto :goto_2f

    .line 1133
    :cond_3c
    move-object/from16 v23, v5

    .line 1134
    .line 1135
    :goto_2f
    add-int/lit8 v7, v7, 0x1

    .line 1136
    .line 1137
    move-object/from16 v5, v23

    .line 1138
    .line 1139
    goto :goto_2c

    .line 1140
    :cond_3d
    :goto_30
    add-int/2addr v11, v9

    .line 1141
    if-nez v11, :cond_3f

    .line 1142
    .line 1143
    const/4 v11, 0x0

    .line 1144
    :cond_3e
    move/from16 v25, v4

    .line 1145
    .line 1146
    goto/16 :goto_37

    .line 1147
    .line 1148
    :cond_3f
    const/4 v5, 0x1

    .line 1149
    :goto_31
    if-ge v5, v4, :cond_3e

    .line 1150
    .line 1151
    aget-object v7, v15, v5

    .line 1152
    .line 1153
    iget-object v7, v7, Lu0/j;->c:Ljava/lang/Object;

    .line 1154
    .line 1155
    check-cast v7, [Lf6/a;

    .line 1156
    .line 1157
    const/4 v9, 0x0

    .line 1158
    :goto_32
    array-length v10, v7

    .line 1159
    if-ge v9, v10, :cond_4a

    .line 1160
    .line 1161
    aget-object v10, v7, v9

    .line 1162
    .line 1163
    if-eqz v10, :cond_48

    .line 1164
    .line 1165
    iget v12, v10, Lf6/a;->f:I

    .line 1166
    .line 1167
    invoke-virtual {v10, v12}, Lf6/a;->a(I)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v10

    .line 1171
    if-nez v10, :cond_48

    .line 1172
    .line 1173
    aget-object v10, v7, v9

    .line 1174
    .line 1175
    add-int/lit8 v12, v5, -0x1

    .line 1176
    .line 1177
    aget-object v12, v15, v12

    .line 1178
    .line 1179
    iget-object v12, v12, Lu0/j;->c:Ljava/lang/Object;

    .line 1180
    .line 1181
    check-cast v12, [Lf6/a;

    .line 1182
    .line 1183
    add-int/lit8 v13, v5, 0x1

    .line 1184
    .line 1185
    aget-object v13, v15, v13

    .line 1186
    .line 1187
    if-eqz v13, :cond_40

    .line 1188
    .line 1189
    iget-object v13, v13, Lu0/j;->c:Ljava/lang/Object;

    .line 1190
    .line 1191
    check-cast v13, [Lf6/a;

    .line 1192
    .line 1193
    goto :goto_33

    .line 1194
    :cond_40
    move-object v13, v12

    .line 1195
    :goto_33
    const/16 v14, 0xe

    .line 1196
    .line 1197
    move/from16 v25, v4

    .line 1198
    .line 1199
    new-array v4, v14, [Lf6/a;

    .line 1200
    .line 1201
    aget-object v23, v12, v9

    .line 1202
    .line 1203
    const/16 v32, 0x2

    .line 1204
    .line 1205
    aput-object v23, v4, v32

    .line 1206
    .line 1207
    aget-object v23, v13, v9

    .line 1208
    .line 1209
    aput-object v23, v4, v18

    .line 1210
    .line 1211
    if-lez v9, :cond_41

    .line 1212
    .line 1213
    add-int/lit8 v23, v9, -0x1

    .line 1214
    .line 1215
    aget-object v26, v7, v23

    .line 1216
    .line 1217
    aput-object v26, v4, p2

    .line 1218
    .line 1219
    aget-object v26, v12, v23

    .line 1220
    .line 1221
    aput-object v26, v4, p1

    .line 1222
    .line 1223
    aget-object v23, v13, v23

    .line 1224
    .line 1225
    aput-object v23, v4, v24

    .line 1226
    .line 1227
    :cond_41
    const/4 v14, 0x1

    .line 1228
    if-le v9, v14, :cond_42

    .line 1229
    .line 1230
    add-int/lit8 v14, v9, -0x2

    .line 1231
    .line 1232
    aget-object v26, v7, v14

    .line 1233
    .line 1234
    const/16 v27, 0x8

    .line 1235
    .line 1236
    aput-object v26, v4, v27

    .line 1237
    .line 1238
    const/16 v26, 0xa

    .line 1239
    .line 1240
    aget-object v27, v12, v14

    .line 1241
    .line 1242
    aput-object v27, v4, v26

    .line 1243
    .line 1244
    const/16 v26, 0xb

    .line 1245
    .line 1246
    aget-object v14, v13, v14

    .line 1247
    .line 1248
    aput-object v14, v4, v26

    .line 1249
    .line 1250
    :cond_42
    array-length v14, v7

    .line 1251
    const/16 v31, 0x1

    .line 1252
    .line 1253
    add-int/lit8 v14, v14, -0x1

    .line 1254
    .line 1255
    if-ge v9, v14, :cond_43

    .line 1256
    .line 1257
    add-int/lit8 v14, v9, 0x1

    .line 1258
    .line 1259
    aget-object v26, v7, v14

    .line 1260
    .line 1261
    aput-object v26, v4, v31

    .line 1262
    .line 1263
    aget-object v26, v12, v14

    .line 1264
    .line 1265
    aput-object v26, v4, v16

    .line 1266
    .line 1267
    aget-object v14, v13, v14

    .line 1268
    .line 1269
    aput-object v14, v4, v17

    .line 1270
    .line 1271
    :cond_43
    array-length v14, v7

    .line 1272
    const/16 v32, 0x2

    .line 1273
    .line 1274
    add-int/lit8 v14, v14, -0x2

    .line 1275
    .line 1276
    if-ge v9, v14, :cond_44

    .line 1277
    .line 1278
    add-int/lit8 v14, v9, 0x2

    .line 1279
    .line 1280
    aget-object v26, v7, v14

    .line 1281
    .line 1282
    const/16 v27, 0x9

    .line 1283
    .line 1284
    aput-object v26, v4, v27

    .line 1285
    .line 1286
    const/16 v26, 0xc

    .line 1287
    .line 1288
    aget-object v12, v12, v14

    .line 1289
    .line 1290
    aput-object v12, v4, v26

    .line 1291
    .line 1292
    const/16 v12, 0xd

    .line 1293
    .line 1294
    aget-object v13, v13, v14

    .line 1295
    .line 1296
    aput-object v13, v4, v12

    .line 1297
    .line 1298
    :cond_44
    const/4 v12, 0x0

    .line 1299
    :goto_34
    const/16 v13, 0xe

    .line 1300
    .line 1301
    if-ge v12, v13, :cond_49

    .line 1302
    .line 1303
    aget-object v14, v4, v12

    .line 1304
    .line 1305
    if-nez v14, :cond_46

    .line 1306
    .line 1307
    :cond_45
    move-object/from16 v26, v4

    .line 1308
    .line 1309
    goto :goto_35

    .line 1310
    :cond_46
    iget v13, v14, Lf6/a;->f:I

    .line 1311
    .line 1312
    invoke-virtual {v14, v13}, Lf6/a;->a(I)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v13

    .line 1316
    if-eqz v13, :cond_45

    .line 1317
    .line 1318
    iget v13, v14, Lf6/a;->d:I

    .line 1319
    .line 1320
    move-object/from16 v26, v4

    .line 1321
    .line 1322
    iget v4, v10, Lf6/a;->d:I

    .line 1323
    .line 1324
    if-ne v13, v4, :cond_47

    .line 1325
    .line 1326
    iget v4, v14, Lf6/a;->f:I

    .line 1327
    .line 1328
    iput v4, v10, Lf6/a;->f:I

    .line 1329
    .line 1330
    goto :goto_36

    .line 1331
    :cond_47
    :goto_35
    add-int/lit8 v12, v12, 0x1

    .line 1332
    .line 1333
    move-object/from16 v4, v26

    .line 1334
    .line 1335
    goto :goto_34

    .line 1336
    :cond_48
    move/from16 v25, v4

    .line 1337
    .line 1338
    :cond_49
    :goto_36
    add-int/lit8 v9, v9, 0x1

    .line 1339
    .line 1340
    move/from16 v4, v25

    .line 1341
    .line 1342
    const/16 v31, 0x1

    .line 1343
    .line 1344
    goto/16 :goto_32

    .line 1345
    .line 1346
    :cond_4a
    move/from16 v25, v4

    .line 1347
    .line 1348
    add-int/lit8 v5, v5, 0x1

    .line 1349
    .line 1350
    const/16 v31, 0x1

    .line 1351
    .line 1352
    goto/16 :goto_31

    .line 1353
    .line 1354
    :goto_37
    if-lez v11, :cond_4c

    .line 1355
    .line 1356
    if-lt v11, v8, :cond_4b

    .line 1357
    .line 1358
    goto :goto_38

    .line 1359
    :cond_4b
    move v8, v11

    .line 1360
    move-object/from16 v7, v21

    .line 1361
    .line 1362
    move/from16 v4, v25

    .line 1363
    .line 1364
    const/16 v31, 0x1

    .line 1365
    .line 1366
    goto/16 :goto_24

    .line 1367
    .line 1368
    :cond_4c
    :goto_38
    array-length v4, v15

    .line 1369
    const/4 v5, 0x0

    .line 1370
    const/4 v7, 0x0

    .line 1371
    :goto_39
    if-ge v5, v4, :cond_4f

    .line 1372
    .line 1373
    aget-object v8, v15, v5

    .line 1374
    .line 1375
    if-eqz v8, :cond_4e

    .line 1376
    .line 1377
    iget-object v8, v8, Lu0/j;->c:Ljava/lang/Object;

    .line 1378
    .line 1379
    check-cast v8, [Lf6/a;

    .line 1380
    .line 1381
    array-length v9, v8

    .line 1382
    const/4 v10, 0x0

    .line 1383
    :goto_3a
    if-ge v10, v9, :cond_4e

    .line 1384
    .line 1385
    aget-object v11, v8, v10

    .line 1386
    .line 1387
    if-eqz v11, :cond_4d

    .line 1388
    .line 1389
    iget v12, v11, Lf6/a;->f:I

    .line 1390
    .line 1391
    if-ltz v12, :cond_4d

    .line 1392
    .line 1393
    array-length v13, v3

    .line 1394
    if-ge v12, v13, :cond_4d

    .line 1395
    .line 1396
    aget-object v12, v3, v12

    .line 1397
    .line 1398
    aget-object v12, v12, v7

    .line 1399
    .line 1400
    iget v11, v11, Lf6/a;->e:I

    .line 1401
    .line 1402
    invoke-virtual {v12, v11}, Lf6/b;->b(I)V

    .line 1403
    .line 1404
    .line 1405
    :cond_4d
    add-int/lit8 v10, v10, 0x1

    .line 1406
    .line 1407
    goto :goto_3a

    .line 1408
    :cond_4e
    add-int/lit8 v7, v7, 0x1

    .line 1409
    .line 1410
    add-int/lit8 v5, v5, 0x1

    .line 1411
    .line 1412
    goto :goto_39

    .line 1413
    :cond_4f
    aget-object v4, v3, p2

    .line 1414
    .line 1415
    const/16 v31, 0x1

    .line 1416
    .line 1417
    aget-object v4, v4, v31

    .line 1418
    .line 1419
    invoke-virtual {v4}, Lf6/b;->a()[I

    .line 1420
    .line 1421
    .line 1422
    move-result-object v5

    .line 1423
    iget v0, v0, Lf6/a;->c:I

    .line 1424
    .line 1425
    mul-int v7, v6, v1

    .line 1426
    .line 1427
    const/16 v32, 0x2

    .line 1428
    .line 1429
    shl-int v8, v32, v0

    .line 1430
    .line 1431
    sub-int v8, v7, v8

    .line 1432
    .line 1433
    array-length v9, v5

    .line 1434
    if-nez v9, :cond_51

    .line 1435
    .line 1436
    if-lez v8, :cond_50

    .line 1437
    .line 1438
    const/16 v9, 0x3a0

    .line 1439
    .line 1440
    if-gt v8, v9, :cond_50

    .line 1441
    .line 1442
    invoke-virtual {v4, v8}, Lf6/b;->b(I)V

    .line 1443
    .line 1444
    .line 1445
    goto :goto_3b

    .line 1446
    :cond_50
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 1447
    .line 1448
    throw v0

    .line 1449
    :cond_51
    const/16 v9, 0x3a0

    .line 1450
    .line 1451
    aget v5, v5, p2

    .line 1452
    .line 1453
    if-eq v5, v8, :cond_52

    .line 1454
    .line 1455
    if-lez v8, :cond_52

    .line 1456
    .line 1457
    if-gt v8, v9, :cond_52

    .line 1458
    .line 1459
    invoke-virtual {v4, v8}, Lf6/b;->b(I)V

    .line 1460
    .line 1461
    .line 1462
    :cond_52
    :goto_3b
    new-instance v4, Ljava/util/ArrayList;

    .line 1463
    .line 1464
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .line 1466
    .line 1467
    new-array v5, v7, [I

    .line 1468
    .line 1469
    new-instance v7, Ljava/util/ArrayList;

    .line 1470
    .line 1471
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .line 1473
    .line 1474
    new-instance v8, Ljava/util/ArrayList;

    .line 1475
    .line 1476
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .line 1478
    .line 1479
    const/4 v9, 0x0

    .line 1480
    :goto_3c
    if-ge v9, v1, :cond_56

    .line 1481
    .line 1482
    const/4 v10, 0x0

    .line 1483
    :goto_3d
    if-ge v10, v6, :cond_55

    .line 1484
    .line 1485
    aget-object v11, v3, v9

    .line 1486
    .line 1487
    add-int/lit8 v12, v10, 0x1

    .line 1488
    .line 1489
    aget-object v11, v11, v12

    .line 1490
    .line 1491
    invoke-virtual {v11}, Lf6/b;->a()[I

    .line 1492
    .line 1493
    .line 1494
    move-result-object v11

    .line 1495
    mul-int v13, v9, v6

    .line 1496
    .line 1497
    add-int/2addr v13, v10

    .line 1498
    array-length v10, v11

    .line 1499
    if-nez v10, :cond_53

    .line 1500
    .line 1501
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v10

    .line 1505
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    .line 1507
    .line 1508
    goto :goto_3e

    .line 1509
    :cond_53
    array-length v10, v11

    .line 1510
    const/4 v14, 0x1

    .line 1511
    if-ne v10, v14, :cond_54

    .line 1512
    .line 1513
    aget v10, v11, p2

    .line 1514
    .line 1515
    aput v10, v5, v13

    .line 1516
    .line 1517
    goto :goto_3e

    .line 1518
    :cond_54
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v10

    .line 1522
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    :goto_3e
    move v10, v12

    .line 1529
    goto :goto_3d

    .line 1530
    :cond_55
    add-int/lit8 v9, v9, 0x1

    .line 1531
    .line 1532
    goto :goto_3c

    .line 1533
    :cond_56
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1534
    .line 1535
    .line 1536
    move-result v1

    .line 1537
    new-array v3, v1, [[I

    .line 1538
    .line 1539
    const/4 v6, 0x0

    .line 1540
    :goto_3f
    if-ge v6, v1, :cond_57

    .line 1541
    .line 1542
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v9

    .line 1546
    check-cast v9, [I

    .line 1547
    .line 1548
    aput-object v9, v3, v6

    .line 1549
    .line 1550
    add-int/lit8 v6, v6, 0x1

    .line 1551
    .line 1552
    goto :goto_3f

    .line 1553
    :cond_57
    invoke-static {v4}, Le6/a;->a(Ljava/util/ArrayList;)[I

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    invoke-static {v8}, Le6/a;->a(Ljava/util/ArrayList;)[I

    .line 1558
    .line 1559
    .line 1560
    move-result-object v4

    .line 1561
    array-length v6, v4

    .line 1562
    new-array v7, v6, [I

    .line 1563
    .line 1564
    const/16 v8, 0x64

    .line 1565
    .line 1566
    :goto_40
    add-int/lit8 v9, v8, -0x1

    .line 1567
    .line 1568
    if-lez v8, :cond_5e

    .line 1569
    .line 1570
    const/4 v8, 0x0

    .line 1571
    :goto_41
    if-ge v8, v6, :cond_58

    .line 1572
    .line 1573
    aget v10, v4, v8

    .line 1574
    .line 1575
    aget-object v11, v3, v8

    .line 1576
    .line 1577
    aget v12, v7, v8

    .line 1578
    .line 1579
    aget v11, v11, v12

    .line 1580
    .line 1581
    aput v11, v5, v10

    .line 1582
    .line 1583
    add-int/lit8 v8, v8, 0x1

    .line 1584
    .line 1585
    goto :goto_41

    .line 1586
    :cond_58
    :try_start_0
    invoke-static {v5, v0, v1}, Lf6/g;->b([II[I)Ls5/d;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v0
    :try_end_0
    .catch Lm5/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    new-instance v1, Lm5/m;

    .line 1591
    .line 1592
    iget-object v3, v0, Ls5/d;->b:Ljava/lang/String;

    .line 1593
    .line 1594
    sget-object v4, Lm5/a;->k:Lm5/a;

    .line 1595
    .line 1596
    move-object/from16 v8, v28

    .line 1597
    .line 1598
    invoke-direct {v1, v3, v8, v2, v4}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;)V

    .line 1599
    .line 1600
    .line 1601
    sget-object v2, Lm5/n;->c:Lm5/n;

    .line 1602
    .line 1603
    iget-object v3, v0, Ls5/d;->d:Ljava/lang/String;

    .line 1604
    .line 1605
    invoke-virtual {v1, v2, v3}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 1606
    .line 1607
    .line 1608
    iget-object v0, v0, Ls5/d;->e:Ljava/lang/Object;

    .line 1609
    .line 1610
    check-cast v0, Le6/c;

    .line 1611
    .line 1612
    if-eqz v0, :cond_59

    .line 1613
    .line 1614
    sget-object v2, Lm5/n;->h:Lm5/n;

    .line 1615
    .line 1616
    invoke-virtual {v1, v2, v0}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 1617
    .line 1618
    .line 1619
    :cond_59
    move-object/from16 v10, v22

    .line 1620
    .line 1621
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    .line 1623
    .line 1624
    move-object v0, v10

    .line 1625
    move-object/from16 v1, v19

    .line 1626
    .line 1627
    move-object/from16 v7, v21

    .line 1628
    .line 1629
    const/4 v4, 0x0

    .line 1630
    const/4 v5, 0x2

    .line 1631
    const/4 v6, 0x1

    .line 1632
    goto/16 :goto_2

    .line 1633
    .line 1634
    :catch_0
    move-object/from16 v10, v22

    .line 1635
    .line 1636
    move-object/from16 v8, v28

    .line 1637
    .line 1638
    if-eqz v6, :cond_5d

    .line 1639
    .line 1640
    const/4 v11, 0x0

    .line 1641
    :goto_42
    if-ge v11, v6, :cond_5c

    .line 1642
    .line 1643
    aget v12, v7, v11

    .line 1644
    .line 1645
    aget-object v13, v3, v11

    .line 1646
    .line 1647
    array-length v13, v13

    .line 1648
    const/16 v31, 0x1

    .line 1649
    .line 1650
    add-int/lit8 v13, v13, -0x1

    .line 1651
    .line 1652
    if-ge v12, v13, :cond_5a

    .line 1653
    .line 1654
    add-int/lit8 v12, v12, 0x1

    .line 1655
    .line 1656
    aput v12, v7, v11

    .line 1657
    .line 1658
    goto :goto_43

    .line 1659
    :cond_5a
    aput p2, v7, v11

    .line 1660
    .line 1661
    add-int/lit8 v12, v6, -0x1

    .line 1662
    .line 1663
    if-eq v11, v12, :cond_5b

    .line 1664
    .line 1665
    add-int/lit8 v11, v11, 0x1

    .line 1666
    .line 1667
    goto :goto_42

    .line 1668
    :cond_5b
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v0

    .line 1672
    throw v0

    .line 1673
    :cond_5c
    const/16 v31, 0x1

    .line 1674
    .line 1675
    :goto_43
    move-object/from16 v28, v8

    .line 1676
    .line 1677
    move v8, v9

    .line 1678
    move-object/from16 v22, v10

    .line 1679
    .line 1680
    goto :goto_40

    .line 1681
    :cond_5d
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    throw v0

    .line 1686
    :cond_5e
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v0

    .line 1690
    throw v0

    .line 1691
    :cond_5f
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 1692
    .line 1693
    throw v0

    .line 1694
    :cond_60
    move-object v10, v0

    .line 1695
    const/16 p2, 0x0

    .line 1696
    .line 1697
    sget-object v0, Le6/b;->a:[Lm5/m;

    .line 1698
    .line 1699
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    check-cast v0, [Lm5/m;

    .line 1704
    .line 1705
    array-length v1, v0

    .line 1706
    if-eqz v1, :cond_61

    .line 1707
    .line 1708
    aget-object v0, v0, p2

    .line 1709
    .line 1710
    if-eqz v0, :cond_61

    .line 1711
    .line 1712
    return-object v0

    .line 1713
    :cond_61
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 1714
    .line 1715
    throw v0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
