.class public final Lv5/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm5/k;


# static fields
.field public static final b:[Lm5/o;


# instance fields
.field public final a:Lj6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lm5/o;

    .line 3
    .line 4
    sput-object v0, Lv5/a;->b:[Lm5/o;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj6/c;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lj6/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lv5/a;->a:Lj6/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lm5/b;Ljava/util/Map;)Lm5/m;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lv5/a;->a:Lj6/c;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    sget-object v5, Lm5/d;->b:Lm5/d;

    .line 12
    .line 13
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_8

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lm5/b;->a()Ls5/b;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ls5/b;->e()[I

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v1}, Ls5/b;->c()[I

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-eqz v5, :cond_7

    .line 32
    .line 33
    if-eqz v6, :cond_7

    .line 34
    .line 35
    iget v7, v1, Ls5/b;->a:I

    .line 36
    .line 37
    aget v8, v5, v4

    .line 38
    .line 39
    aget v9, v5, v3

    .line 40
    .line 41
    :goto_0
    if-ge v8, v7, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v8, v9}, Ls5/b;->b(II)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_0

    .line 48
    .line 49
    add-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eq v8, v7, :cond_6

    .line 53
    .line 54
    aget v7, v5, v4

    .line 55
    .line 56
    sub-int/2addr v8, v7

    .line 57
    if-eqz v8, :cond_5

    .line 58
    .line 59
    aget v5, v5, v3

    .line 60
    .line 61
    aget v9, v6, v3

    .line 62
    .line 63
    aget v6, v6, v4

    .line 64
    .line 65
    sub-int/2addr v6, v7

    .line 66
    add-int/2addr v6, v3

    .line 67
    div-int/2addr v6, v8

    .line 68
    sub-int/2addr v9, v5

    .line 69
    add-int/2addr v9, v3

    .line 70
    div-int/2addr v9, v8

    .line 71
    if-lez v6, :cond_4

    .line 72
    .line 73
    if-lez v9, :cond_4

    .line 74
    .line 75
    div-int/lit8 v3, v8, 0x2

    .line 76
    .line 77
    add-int/2addr v5, v3

    .line 78
    add-int/2addr v7, v3

    .line 79
    new-instance v3, Ls5/b;

    .line 80
    .line 81
    invoke-direct {v3, v6, v9}, Ls5/b;-><init>(II)V

    .line 82
    .line 83
    .line 84
    const/4 v10, 0x0

    .line 85
    :goto_1
    if-ge v10, v9, :cond_3

    .line 86
    .line 87
    mul-int v11, v10, v8

    .line 88
    .line 89
    add-int/2addr v11, v5

    .line 90
    const/4 v12, 0x0

    .line 91
    :goto_2
    if-ge v12, v6, :cond_2

    .line 92
    .line 93
    mul-int v13, v12, v8

    .line 94
    .line 95
    add-int/2addr v13, v7

    .line 96
    invoke-virtual {v1, v13, v11}, Ls5/b;->b(II)Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_1

    .line 101
    .line 102
    invoke-virtual {v3, v12, v10}, Ls5/b;->f(II)V

    .line 103
    .line 104
    .line 105
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v2, v3}, Lj6/c;->c(Ls5/b;)Ls5/d;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v2, Lv5/a;->b:[Lm5/o;

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_4
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 120
    .line 121
    throw v1

    .line 122
    :cond_5
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 123
    .line 124
    throw v1

    .line 125
    :cond_6
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 126
    .line 127
    throw v1

    .line 128
    :cond_7
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 129
    .line 130
    throw v1

    .line 131
    :cond_8
    new-instance v1, Lu0/j;

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Lm5/b;->a()Ls5/b;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    const/16 v6, 0x1b

    .line 138
    .line 139
    invoke-direct {v1, v5, v6}, Lu0/j;-><init>(Ls5/b;I)V

    .line 140
    .line 141
    .line 142
    iget-object v6, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v6, Lt5/a;

    .line 145
    .line 146
    invoke-virtual {v6}, Lt5/a;->b()[Lm5/o;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    aget-object v7, v6, v4

    .line 151
    .line 152
    aget-object v8, v6, v3

    .line 153
    .line 154
    const/4 v9, 0x3

    .line 155
    aget-object v10, v6, v9

    .line 156
    .line 157
    const/4 v11, 0x2

    .line 158
    aget-object v6, v6, v11

    .line 159
    .line 160
    invoke-virtual {v1, v7, v8}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    invoke-virtual {v1, v8, v10}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    invoke-virtual {v1, v10, v6}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    invoke-virtual {v1, v6, v7}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    const/4 v4, 0x4

    .line 179
    const/16 p1, 0x3

    .line 180
    .line 181
    new-array v9, v4, [Lm5/o;

    .line 182
    .line 183
    aput-object v6, v9, v16

    .line 184
    .line 185
    aput-object v7, v9, v3

    .line 186
    .line 187
    aput-object v8, v9, v11

    .line 188
    .line 189
    aput-object v10, v9, p1

    .line 190
    .line 191
    if-le v12, v13, :cond_9

    .line 192
    .line 193
    aput-object v7, v9, v16

    .line 194
    .line 195
    aput-object v8, v9, v3

    .line 196
    .line 197
    aput-object v10, v9, v11

    .line 198
    .line 199
    aput-object v6, v9, p1

    .line 200
    .line 201
    move v12, v13

    .line 202
    :cond_9
    if-le v12, v14, :cond_a

    .line 203
    .line 204
    aput-object v8, v9, v16

    .line 205
    .line 206
    aput-object v10, v9, v3

    .line 207
    .line 208
    aput-object v6, v9, v11

    .line 209
    .line 210
    aput-object v7, v9, p1

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_a
    move v14, v12

    .line 214
    :goto_3
    if-le v14, v15, :cond_b

    .line 215
    .line 216
    aput-object v10, v9, v16

    .line 217
    .line 218
    aput-object v6, v9, v3

    .line 219
    .line 220
    aput-object v7, v9, v11

    .line 221
    .line 222
    aput-object v8, v9, p1

    .line 223
    .line 224
    :cond_b
    aget-object v6, v9, v16

    .line 225
    .line 226
    aget-object v7, v9, v3

    .line 227
    .line 228
    aget-object v8, v9, v11

    .line 229
    .line 230
    aget-object v10, v9, p1

    .line 231
    .line 232
    invoke-virtual {v1, v6, v10}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    add-int/2addr v12, v3

    .line 237
    shl-int/2addr v12, v11

    .line 238
    invoke-static {v7, v8, v12}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    invoke-static {v8, v7, v12}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    invoke-virtual {v1, v13, v6}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    invoke-virtual {v1, v12, v10}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    if-ge v13, v12, :cond_c

    .line 255
    .line 256
    aput-object v6, v9, v16

    .line 257
    .line 258
    aput-object v7, v9, v3

    .line 259
    .line 260
    aput-object v8, v9, v11

    .line 261
    .line 262
    aput-object v10, v9, p1

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_c
    aput-object v7, v9, v16

    .line 266
    .line 267
    aput-object v8, v9, v3

    .line 268
    .line 269
    aput-object v10, v9, v11

    .line 270
    .line 271
    aput-object v6, v9, p1

    .line 272
    .line 273
    :goto_4
    aget-object v6, v9, v16

    .line 274
    .line 275
    aget-object v7, v9, v3

    .line 276
    .line 277
    aget-object v8, v9, v11

    .line 278
    .line 279
    aget-object v10, v9, p1

    .line 280
    .line 281
    invoke-virtual {v1, v6, v10}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    invoke-virtual {v1, v7, v10}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    add-int/2addr v13, v3

    .line 290
    shl-int/2addr v13, v11

    .line 291
    invoke-static {v6, v7, v13}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    add-int/2addr v12, v3

    .line 296
    shl-int/2addr v12, v11

    .line 297
    invoke-static {v8, v7, v12}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    invoke-virtual {v1, v13, v10}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    invoke-virtual {v1, v12, v10}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 306
    .line 307
    .line 308
    move-result v15

    .line 309
    const/16 p2, 0x2

    .line 310
    .line 311
    new-instance v11, Lm5/o;

    .line 312
    .line 313
    iget v4, v10, Lm5/o;->a:F

    .line 314
    .line 315
    const/16 v17, 0x1

    .line 316
    .line 317
    iget v3, v8, Lm5/o;->a:F

    .line 318
    .line 319
    iget v0, v7, Lm5/o;->a:F

    .line 320
    .line 321
    sub-float/2addr v3, v0

    .line 322
    add-int/lit8 v14, v14, 0x1

    .line 323
    .line 324
    int-to-float v14, v14

    .line 325
    div-float/2addr v3, v14

    .line 326
    add-float/2addr v3, v4

    .line 327
    iget v10, v10, Lm5/o;->b:F

    .line 328
    .line 329
    iget v8, v8, Lm5/o;->b:F

    .line 330
    .line 331
    iget v7, v7, Lm5/o;->b:F

    .line 332
    .line 333
    sub-float/2addr v8, v7

    .line 334
    div-float/2addr v8, v14

    .line 335
    add-float/2addr v8, v10

    .line 336
    invoke-direct {v11, v3, v8}, Lm5/o;-><init>(FF)V

    .line 337
    .line 338
    .line 339
    new-instance v3, Lm5/o;

    .line 340
    .line 341
    iget v8, v6, Lm5/o;->a:F

    .line 342
    .line 343
    sub-float/2addr v8, v0

    .line 344
    add-int/lit8 v15, v15, 0x1

    .line 345
    .line 346
    int-to-float v0, v15

    .line 347
    div-float/2addr v8, v0

    .line 348
    add-float/2addr v8, v4

    .line 349
    iget v4, v6, Lm5/o;->b:F

    .line 350
    .line 351
    sub-float/2addr v4, v7

    .line 352
    div-float/2addr v4, v0

    .line 353
    add-float/2addr v4, v10

    .line 354
    invoke-direct {v3, v8, v4}, Lm5/o;-><init>(FF)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v11}, Lu0/j;->w(Lm5/o;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_e

    .line 362
    .line 363
    invoke-virtual {v1, v3}, Lu0/j;->w(Lm5/o;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_d
    const/4 v11, 0x0

    .line 371
    goto :goto_6

    .line 372
    :cond_e
    invoke-virtual {v1, v3}, Lu0/j;->w(Lm5/o;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-nez v0, :cond_f

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_f
    invoke-virtual {v1, v13, v11}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    invoke-virtual {v1, v12, v11}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    add-int/2addr v4, v0

    .line 388
    invoke-virtual {v1, v13, v3}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-virtual {v1, v12, v3}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    add-int/2addr v6, v0

    .line 397
    if-le v4, v6, :cond_10

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_10
    :goto_5
    move-object v11, v3

    .line 401
    :goto_6
    aput-object v11, v9, p1

    .line 402
    .line 403
    if-eqz v11, :cond_18

    .line 404
    .line 405
    aget-object v0, v9, v16

    .line 406
    .line 407
    aget-object v3, v9, v17

    .line 408
    .line 409
    aget-object v4, v9, p2

    .line 410
    .line 411
    invoke-virtual {v1, v0, v11}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    add-int/lit8 v6, v6, 0x1

    .line 416
    .line 417
    invoke-virtual {v1, v4, v11}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    add-int/lit8 v7, v7, 0x1

    .line 422
    .line 423
    shl-int/lit8 v7, v7, 0x2

    .line 424
    .line 425
    invoke-static {v0, v3, v7}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    shl-int/lit8 v6, v6, 0x2

    .line 430
    .line 431
    invoke-static {v4, v3, v6}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-virtual {v1, v7, v11}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 436
    .line 437
    .line 438
    move-result v7

    .line 439
    add-int/lit8 v8, v7, 0x1

    .line 440
    .line 441
    invoke-virtual {v1, v6, v11}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    add-int/lit8 v9, v6, 0x1

    .line 446
    .line 447
    and-int/lit8 v10, v8, 0x1

    .line 448
    .line 449
    const/4 v12, 0x1

    .line 450
    if-ne v10, v12, :cond_11

    .line 451
    .line 452
    add-int/lit8 v8, v7, 0x2

    .line 453
    .line 454
    :cond_11
    and-int/lit8 v7, v9, 0x1

    .line 455
    .line 456
    if-ne v7, v12, :cond_12

    .line 457
    .line 458
    add-int/lit8 v9, v6, 0x2

    .line 459
    .line 460
    :cond_12
    iget v6, v0, Lm5/o;->a:F

    .line 461
    .line 462
    iget v7, v3, Lm5/o;->a:F

    .line 463
    .line 464
    add-float/2addr v6, v7

    .line 465
    iget v7, v4, Lm5/o;->a:F

    .line 466
    .line 467
    add-float/2addr v6, v7

    .line 468
    iget v7, v11, Lm5/o;->a:F

    .line 469
    .line 470
    add-float/2addr v6, v7

    .line 471
    const/high16 v7, 0x40800000    # 4.0f

    .line 472
    .line 473
    div-float/2addr v6, v7

    .line 474
    iget v10, v0, Lm5/o;->b:F

    .line 475
    .line 476
    iget v12, v3, Lm5/o;->b:F

    .line 477
    .line 478
    add-float/2addr v10, v12

    .line 479
    iget v12, v4, Lm5/o;->b:F

    .line 480
    .line 481
    add-float/2addr v10, v12

    .line 482
    iget v12, v11, Lm5/o;->b:F

    .line 483
    .line 484
    add-float/2addr v10, v12

    .line 485
    div-float/2addr v10, v7

    .line 486
    invoke-static {v0, v6, v10}, Lu0/j;->y(Lm5/o;FF)Lm5/o;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-static {v3, v6, v10}, Lu0/j;->y(Lm5/o;FF)Lm5/o;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-static {v4, v6, v10}, Lu0/j;->y(Lm5/o;FF)Lm5/o;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-static {v11, v6, v10}, Lu0/j;->y(Lm5/o;FF)Lm5/o;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    shl-int/lit8 v7, v9, 0x2

    .line 503
    .line 504
    invoke-static {v0, v3, v7}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    shl-int/lit8 v8, v8, 0x2

    .line 509
    .line 510
    invoke-static {v9, v6, v8}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    invoke-static {v3, v0, v7}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 515
    .line 516
    .line 517
    move-result-object v10

    .line 518
    invoke-static {v10, v4, v8}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    invoke-static {v4, v6, v7}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 523
    .line 524
    .line 525
    move-result-object v11

    .line 526
    invoke-static {v11, v3, v8}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-static {v6, v4, v7}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-static {v4, v0, v8}, Lu0/j;->E(Lm5/o;Lm5/o;I)Lm5/o;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const/4 v4, 0x4

    .line 539
    new-array v6, v4, [Lm5/o;

    .line 540
    .line 541
    aput-object v9, v6, v16

    .line 542
    .line 543
    const/4 v12, 0x1

    .line 544
    aput-object v10, v6, v12

    .line 545
    .line 546
    aput-object v3, v6, p2

    .line 547
    .line 548
    aput-object v0, v6, p1

    .line 549
    .line 550
    aget-object v0, v6, v16

    .line 551
    .line 552
    aget-object v3, v6, v12

    .line 553
    .line 554
    aget-object v4, v6, p2

    .line 555
    .line 556
    aget-object v6, v6, p1

    .line 557
    .line 558
    invoke-virtual {v1, v0, v6}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    add-int/lit8 v8, v7, 0x1

    .line 563
    .line 564
    invoke-virtual {v1, v4, v6}, Lu0/j;->J(Lm5/o;Lm5/o;)I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    add-int/lit8 v9, v1, 0x1

    .line 569
    .line 570
    and-int/lit8 v10, v8, 0x1

    .line 571
    .line 572
    if-ne v10, v12, :cond_13

    .line 573
    .line 574
    add-int/lit8 v8, v7, 0x2

    .line 575
    .line 576
    :cond_13
    and-int/lit8 v7, v9, 0x1

    .line 577
    .line 578
    if-ne v7, v12, :cond_14

    .line 579
    .line 580
    add-int/lit8 v9, v1, 0x2

    .line 581
    .line 582
    :cond_14
    mul-int/lit8 v1, v8, 0x4

    .line 583
    .line 584
    mul-int/lit8 v7, v9, 0x7

    .line 585
    .line 586
    if-ge v1, v7, :cond_15

    .line 587
    .line 588
    mul-int/lit8 v1, v9, 0x4

    .line 589
    .line 590
    mul-int/lit8 v7, v8, 0x7

    .line 591
    .line 592
    if-ge v1, v7, :cond_15

    .line 593
    .line 594
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 595
    .line 596
    .line 597
    move-result v8

    .line 598
    move v9, v8

    .line 599
    :cond_15
    int-to-float v1, v8

    .line 600
    const/high16 v7, 0x3f000000    # 0.5f

    .line 601
    .line 602
    sub-float v20, v1, v7

    .line 603
    .line 604
    int-to-float v1, v9

    .line 605
    sub-float v23, v1, v7

    .line 606
    .line 607
    iget v1, v0, Lm5/o;->a:F

    .line 608
    .line 609
    iget v7, v0, Lm5/o;->b:F

    .line 610
    .line 611
    iget v10, v6, Lm5/o;->a:F

    .line 612
    .line 613
    iget v11, v6, Lm5/o;->b:F

    .line 614
    .line 615
    iget v12, v4, Lm5/o;->a:F

    .line 616
    .line 617
    iget v13, v4, Lm5/o;->b:F

    .line 618
    .line 619
    iget v14, v3, Lm5/o;->a:F

    .line 620
    .line 621
    iget v15, v3, Lm5/o;->b:F

    .line 622
    .line 623
    const/high16 v18, 0x3f000000    # 0.5f

    .line 624
    .line 625
    const/high16 v19, 0x3f000000    # 0.5f

    .line 626
    .line 627
    const/high16 v21, 0x3f000000    # 0.5f

    .line 628
    .line 629
    const/high16 v24, 0x3f000000    # 0.5f

    .line 630
    .line 631
    move/from16 v22, v20

    .line 632
    .line 633
    move/from16 v25, v23

    .line 634
    .line 635
    move/from16 v26, v1

    .line 636
    .line 637
    move/from16 v27, v7

    .line 638
    .line 639
    move/from16 v28, v10

    .line 640
    .line 641
    move/from16 v29, v11

    .line 642
    .line 643
    move/from16 v30, v12

    .line 644
    .line 645
    move/from16 v31, v13

    .line 646
    .line 647
    move/from16 v32, v14

    .line 648
    .line 649
    move/from16 v33, v15

    .line 650
    .line 651
    invoke-static/range {v18 .. v33}, Ls5/f;->a(FFFFFFFFFFFFFFFF)Ls5/f;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-static {v5, v8, v9, v1}, Lp9/l;->s(Ls5/b;IILs5/f;)Ls5/b;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    const/4 v5, 0x4

    .line 660
    new-array v5, v5, [Lm5/o;

    .line 661
    .line 662
    aput-object v0, v5, v16

    .line 663
    .line 664
    const/16 v17, 0x1

    .line 665
    .line 666
    aput-object v3, v5, v17

    .line 667
    .line 668
    aput-object v4, v5, p2

    .line 669
    .line 670
    aput-object v6, v5, p1

    .line 671
    .line 672
    invoke-virtual {v2, v1}, Lj6/c;->c(Ls5/b;)Ls5/d;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    move-object v2, v5

    .line 677
    :goto_7
    new-instance v0, Lm5/m;

    .line 678
    .line 679
    iget-object v3, v1, Ls5/d;->b:Ljava/lang/String;

    .line 680
    .line 681
    iget-object v4, v1, Ls5/d;->a:[B

    .line 682
    .line 683
    sget-object v5, Lm5/a;->f:Lm5/a;

    .line 684
    .line 685
    invoke-direct {v0, v3, v4, v2, v5}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;)V

    .line 686
    .line 687
    .line 688
    iget-object v2, v1, Ls5/d;->c:Ljava/util/List;

    .line 689
    .line 690
    if-eqz v2, :cond_16

    .line 691
    .line 692
    sget-object v3, Lm5/n;->b:Lm5/n;

    .line 693
    .line 694
    invoke-virtual {v0, v3, v2}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    :cond_16
    iget-object v1, v1, Ls5/d;->d:Ljava/lang/String;

    .line 698
    .line 699
    if-eqz v1, :cond_17

    .line 700
    .line 701
    sget-object v2, Lm5/n;->c:Lm5/n;

    .line 702
    .line 703
    invoke-virtual {v0, v2, v1}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    :cond_17
    return-object v0

    .line 707
    :cond_18
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 708
    .line 709
    throw v0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
