.class public final Lc1/e1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/m0;


# instance fields
.field public final a:Lf9/k;

.field public final b:Z

.field public final c:F

.field public final d:Ld0/h0;


# direct methods
.method public constructor <init>(Lf9/k;ZFLd0/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/e1;->a:Lf9/k;

    .line 5
    .line 6
    iput-boolean p2, p0, Lc1/e1;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lc1/e1;->c:F

    .line 9
    .line 10
    iput-object p4, p0, Lc1/e1;->d:Ld0/h0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    sget-object v0, Lc1/c1;->e:Lc1/c1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lc1/e1;->d(Lo2/r;Ljava/util/List;ILf9/n;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final b(Lo2/r;Ljava/util/List;ILf9/n;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v6, v4, :cond_1

    .line 15
    .line 16
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    move-object v9, v8

    .line 21
    check-cast v9, Lo2/l0;

    .line 22
    .line 23
    invoke-static {v9}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    const-string v10, "Leading"

    .line 28
    .line 29
    invoke-static {v9, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-eqz v9, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v8, 0x0

    .line 40
    :goto_1
    check-cast v8, Lo2/l0;

    .line 41
    .line 42
    const v4, 0x7fffffff

    .line 43
    .line 44
    .line 45
    if-eqz v8, :cond_3

    .line 46
    .line 47
    invoke-interface {v8, v4}, Lo2/l0;->r(I)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ne v2, v4, :cond_2

    .line 52
    .line 53
    move v6, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    sub-int v6, v2, v6

    .line 56
    .line 57
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-interface {v3, v8, v9}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v6, v2

    .line 73
    const/4 v8, 0x0

    .line 74
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const/4 v10, 0x0

    .line 79
    :goto_4
    if-ge v10, v9, :cond_5

    .line 80
    .line 81
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    move-object v12, v11

    .line 86
    check-cast v12, Lo2/l0;

    .line 87
    .line 88
    invoke-static {v12}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const-string v13, "Trailing"

    .line 93
    .line 94
    invoke-static {v12, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-eqz v12, :cond_4

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const/4 v11, 0x0

    .line 105
    :goto_5
    check-cast v11, Lo2/l0;

    .line 106
    .line 107
    if-eqz v11, :cond_7

    .line 108
    .line 109
    invoke-interface {v11, v4}, Lo2/l0;->r(I)I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-ne v6, v4, :cond_6

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_6
    sub-int/2addr v6, v9

    .line 117
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-interface {v3, v11, v9}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    goto :goto_7

    .line 132
    :cond_7
    const/4 v9, 0x0

    .line 133
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    const/4 v11, 0x0

    .line 138
    :goto_8
    if-ge v11, v10, :cond_9

    .line 139
    .line 140
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    move-object v13, v12

    .line 145
    check-cast v13, Lo2/l0;

    .line 146
    .line 147
    invoke-static {v13}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    const-string v14, "Label"

    .line 152
    .line 153
    invoke-static {v13, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    if-eqz v13, :cond_8

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_9
    const/4 v12, 0x0

    .line 164
    :goto_9
    check-cast v12, Lo2/l0;

    .line 165
    .line 166
    if-eqz v12, :cond_a

    .line 167
    .line 168
    iget v10, v0, Lc1/e1;->c:F

    .line 169
    .line 170
    invoke-static {v10, v6, v2}, Lm9/e0;->q0(FII)I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-interface {v3, v12, v10}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    check-cast v10, Ljava/lang/Number;

    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    move v13, v10

    .line 189
    goto :goto_a

    .line 190
    :cond_a
    const/4 v13, 0x0

    .line 191
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    const/4 v11, 0x0

    .line 196
    :goto_b
    if-ge v11, v10, :cond_c

    .line 197
    .line 198
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    move-object v14, v12

    .line 203
    check-cast v14, Lo2/l0;

    .line 204
    .line 205
    invoke-static {v14}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    const-string v15, "Prefix"

    .line 210
    .line 211
    invoke-static {v14, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    if-eqz v14, :cond_b

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_c
    const/4 v12, 0x0

    .line 222
    :goto_c
    check-cast v12, Lo2/l0;

    .line 223
    .line 224
    if-eqz v12, :cond_e

    .line 225
    .line 226
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    invoke-interface {v3, v12, v10}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    check-cast v10, Ljava/lang/Number;

    .line 235
    .line 236
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    invoke-interface {v12, v4}, Lo2/l0;->r(I)I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-ne v6, v4, :cond_d

    .line 245
    .line 246
    goto :goto_d

    .line 247
    :cond_d
    sub-int/2addr v6, v11

    .line 248
    goto :goto_d

    .line 249
    :cond_e
    const/4 v10, 0x0

    .line 250
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v11

    .line 254
    const/4 v12, 0x0

    .line 255
    :goto_e
    if-ge v12, v11, :cond_10

    .line 256
    .line 257
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    move-object v15, v14

    .line 262
    check-cast v15, Lo2/l0;

    .line 263
    .line 264
    invoke-static {v15}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    const-string v5, "Suffix"

    .line 269
    .line 270
    invoke-static {v15, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_f

    .line 275
    .line 276
    goto :goto_f

    .line 277
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 278
    .line 279
    goto :goto_e

    .line 280
    :cond_10
    const/4 v14, 0x0

    .line 281
    :goto_f
    check-cast v14, Lo2/l0;

    .line 282
    .line 283
    if-eqz v14, :cond_12

    .line 284
    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-interface {v3, v14, v5}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Ljava/lang/Number;

    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    invoke-interface {v14, v4}, Lo2/l0;->r(I)I

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    if-ne v6, v4, :cond_11

    .line 304
    .line 305
    goto :goto_10

    .line 306
    :cond_11
    sub-int/2addr v6, v11

    .line 307
    :goto_10
    move v11, v5

    .line 308
    goto :goto_11

    .line 309
    :cond_12
    const/4 v11, 0x0

    .line 310
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    const/4 v5, 0x0

    .line 315
    :goto_12
    if-ge v5, v4, :cond_1a

    .line 316
    .line 317
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    move-object v14, v12

    .line 322
    check-cast v14, Lo2/l0;

    .line 323
    .line 324
    invoke-static {v14}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    const-string v15, "TextField"

    .line 329
    .line 330
    invoke-static {v14, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    if-eqz v14, :cond_19

    .line 335
    .line 336
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-interface {v3, v12, v4}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Ljava/lang/Number;

    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v12

    .line 350
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    const/4 v5, 0x0

    .line 355
    :goto_13
    if-ge v5, v4, :cond_14

    .line 356
    .line 357
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v14

    .line 361
    move-object v15, v14

    .line 362
    check-cast v15, Lo2/l0;

    .line 363
    .line 364
    invoke-static {v15}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v15

    .line 368
    const-string v7, "Hint"

    .line 369
    .line 370
    invoke-static {v15, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    if-eqz v7, :cond_13

    .line 375
    .line 376
    goto :goto_14

    .line 377
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 378
    .line 379
    goto :goto_13

    .line 380
    :cond_14
    const/4 v14, 0x0

    .line 381
    :goto_14
    check-cast v14, Lo2/l0;

    .line 382
    .line 383
    if-eqz v14, :cond_15

    .line 384
    .line 385
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-interface {v3, v14, v4}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    check-cast v4, Ljava/lang/Number;

    .line 394
    .line 395
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    move v14, v4

    .line 400
    goto :goto_15

    .line 401
    :cond_15
    const/4 v14, 0x0

    .line 402
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    const/4 v5, 0x0

    .line 407
    :goto_16
    if-ge v5, v4, :cond_17

    .line 408
    .line 409
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    move-object v7, v6

    .line 414
    check-cast v7, Lo2/l0;

    .line 415
    .line 416
    invoke-static {v7}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    const-string v15, "Supporting"

    .line 421
    .line 422
    invoke-static {v7, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    if-eqz v7, :cond_16

    .line 427
    .line 428
    move-object v7, v6

    .line 429
    goto :goto_17

    .line 430
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 431
    .line 432
    goto :goto_16

    .line 433
    :cond_17
    const/4 v7, 0x0

    .line 434
    :goto_17
    check-cast v7, Lo2/l0;

    .line 435
    .line 436
    if-eqz v7, :cond_18

    .line 437
    .line 438
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-interface {v3, v7, v1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Ljava/lang/Number;

    .line 447
    .line 448
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    move v15, v5

    .line 453
    goto :goto_18

    .line 454
    :cond_18
    const/4 v15, 0x0

    .line 455
    :goto_18
    sget-wide v17, Ld1/r;->a:J

    .line 456
    .line 457
    invoke-interface/range {p1 .. p1}, Ln3/c;->a()F

    .line 458
    .line 459
    .line 460
    move-result v19

    .line 461
    iget-object v1, v0, Lc1/e1;->d:Ld0/h0;

    .line 462
    .line 463
    iget v2, v0, Lc1/e1;->c:F

    .line 464
    .line 465
    move-object/from16 v20, v1

    .line 466
    .line 467
    move/from16 v16, v2

    .line 468
    .line 469
    invoke-static/range {v8 .. v20}, Lc1/b1;->c(IIIIIIIIFJFLd0/h0;)I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    return v1

    .line 474
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 475
    .line 476
    goto/16 :goto_12

    .line 477
    .line 478
    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 479
    .line 480
    const-string v2, "Collection contains no element matching the predicate."

    .line 481
    .line 482
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v1
.end method

.method public final c(Lo2/o0;Ljava/util/List;J)Lo2/n0;
    .locals 38

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iget-object v1, v12, Lc1/e1;->d:Ld0/h0;

    .line 8
    .line 9
    iget v2, v1, Ld0/h0;->d:F

    .line 10
    .line 11
    invoke-interface {v13, v2}, Ln3/c;->b0(F)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v8, 0x0

    .line 16
    const/16 v9, 0xa

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    move-wide/from16 v3, p3

    .line 22
    .line 23
    invoke-static/range {v3 .. v9}, Ln3/a;->a(JIIIII)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    :goto_0
    if-ge v7, v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    move-object v10, v9

    .line 40
    check-cast v10, Lo2/l0;

    .line 41
    .line 42
    invoke-static {v10}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    const-string v11, "Leading"

    .line 47
    .line 48
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v9, 0x0

    .line 59
    :goto_1
    check-cast v9, Lo2/l0;

    .line 60
    .line 61
    if-eqz v9, :cond_2

    .line 62
    .line 63
    invoke-interface {v9, v5, v6}, Lo2/l0;->u(J)Lo2/v0;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 v3, 0x0

    .line 69
    :goto_2
    sget v7, Ld1/r;->b:F

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget v7, v3, Lo2/v0;->a:I

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/4 v7, 0x0

    .line 77
    :goto_3
    if-eqz v3, :cond_4

    .line 78
    .line 79
    iget v9, v3, Lo2/v0;->b:I

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    const/4 v9, 0x0

    .line 83
    :goto_4
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    const/4 v11, 0x0

    .line 92
    :goto_5
    if-ge v11, v10, :cond_6

    .line 93
    .line 94
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v14

    .line 98
    move-object v15, v14

    .line 99
    check-cast v15, Lo2/l0;

    .line 100
    .line 101
    invoke-static {v15}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v15

    .line 105
    const-string v8, "Trailing"

    .line 106
    .line 107
    invoke-static {v15, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_5

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_6
    const/4 v14, 0x0

    .line 118
    :goto_6
    check-cast v14, Lo2/l0;

    .line 119
    .line 120
    const/4 v8, 0x2

    .line 121
    if-eqz v14, :cond_7

    .line 122
    .line 123
    neg-int v10, v7

    .line 124
    invoke-static {v10, v4, v8, v5, v6}, Ln3/b;->j(IIIJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide v10

    .line 128
    invoke-interface {v14, v10, v11}, Lo2/l0;->u(J)Lo2/v0;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    goto :goto_7

    .line 133
    :cond_7
    const/4 v10, 0x0

    .line 134
    :goto_7
    if-eqz v10, :cond_8

    .line 135
    .line 136
    iget v11, v10, Lo2/v0;->a:I

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_8
    const/4 v11, 0x0

    .line 140
    :goto_8
    add-int/2addr v7, v11

    .line 141
    if-eqz v10, :cond_9

    .line 142
    .line 143
    iget v11, v10, Lo2/v0;->b:I

    .line 144
    .line 145
    goto :goto_9

    .line 146
    :cond_9
    const/4 v11, 0x0

    .line 147
    :goto_9
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    const/4 v14, 0x0

    .line 156
    :goto_a
    if-ge v14, v11, :cond_b

    .line 157
    .line 158
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    move-object/from16 v16, v15

    .line 163
    .line 164
    check-cast v16, Lo2/l0;

    .line 165
    .line 166
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    const-string v8, "Prefix"

    .line 171
    .line 172
    invoke-static {v4, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_a

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    const/4 v8, 0x2

    .line 183
    goto :goto_a

    .line 184
    :cond_b
    const/4 v15, 0x0

    .line 185
    :goto_b
    check-cast v15, Lo2/l0;

    .line 186
    .line 187
    if-eqz v15, :cond_c

    .line 188
    .line 189
    neg-int v4, v7

    .line 190
    move-object/from16 v28, v3

    .line 191
    .line 192
    const/4 v8, 0x2

    .line 193
    const/4 v11, 0x0

    .line 194
    invoke-static {v4, v11, v8, v5, v6}, Ln3/b;->j(IIIJ)J

    .line 195
    .line 196
    .line 197
    move-result-wide v3

    .line 198
    invoke-interface {v15, v3, v4}, Lo2/l0;->u(J)Lo2/v0;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    goto :goto_c

    .line 203
    :cond_c
    move-object/from16 v28, v3

    .line 204
    .line 205
    const/4 v3, 0x0

    .line 206
    :goto_c
    if-eqz v3, :cond_d

    .line 207
    .line 208
    iget v4, v3, Lo2/v0;->a:I

    .line 209
    .line 210
    goto :goto_d

    .line 211
    :cond_d
    const/4 v4, 0x0

    .line 212
    :goto_d
    add-int/2addr v7, v4

    .line 213
    if-eqz v3, :cond_e

    .line 214
    .line 215
    iget v4, v3, Lo2/v0;->b:I

    .line 216
    .line 217
    goto :goto_e

    .line 218
    :cond_e
    const/4 v4, 0x0

    .line 219
    :goto_e
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    const/4 v9, 0x0

    .line 228
    :goto_f
    if-ge v9, v8, :cond_10

    .line 229
    .line 230
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    move-object v14, v11

    .line 235
    check-cast v14, Lo2/l0;

    .line 236
    .line 237
    invoke-static {v14}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    const-string v15, "Suffix"

    .line 242
    .line 243
    invoke-static {v14, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    if-eqz v14, :cond_f

    .line 248
    .line 249
    goto :goto_10

    .line 250
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 251
    .line 252
    goto :goto_f

    .line 253
    :cond_10
    const/4 v11, 0x0

    .line 254
    :goto_10
    check-cast v11, Lo2/l0;

    .line 255
    .line 256
    if-eqz v11, :cond_11

    .line 257
    .line 258
    neg-int v8, v7

    .line 259
    move v15, v7

    .line 260
    const/4 v9, 0x2

    .line 261
    const/4 v14, 0x0

    .line 262
    invoke-static {v8, v14, v9, v5, v6}, Ln3/b;->j(IIIJ)J

    .line 263
    .line 264
    .line 265
    move-result-wide v7

    .line 266
    invoke-interface {v11, v7, v8}, Lo2/l0;->u(J)Lo2/v0;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    goto :goto_11

    .line 271
    :cond_11
    move v15, v7

    .line 272
    const/4 v7, 0x0

    .line 273
    :goto_11
    if-eqz v7, :cond_12

    .line 274
    .line 275
    iget v11, v7, Lo2/v0;->a:I

    .line 276
    .line 277
    goto :goto_12

    .line 278
    :cond_12
    const/4 v11, 0x0

    .line 279
    :goto_12
    add-int v8, v15, v11

    .line 280
    .line 281
    if-eqz v7, :cond_13

    .line 282
    .line 283
    iget v11, v7, Lo2/v0;->b:I

    .line 284
    .line 285
    goto :goto_13

    .line 286
    :cond_13
    const/4 v11, 0x0

    .line 287
    :goto_13
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-interface {v13}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    invoke-virtual {v1, v9}, Ld0/h0;->a(Ln3/m;)F

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    invoke-interface {v13, v9}, Ln3/c;->b0(F)I

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    invoke-interface {v13}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    invoke-virtual {v1, v11}, Ld0/h0;->b(Ln3/m;)F

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    invoke-interface {v13, v11}, Ln3/c;->b0(F)I

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    add-int/2addr v11, v9

    .line 316
    neg-int v8, v8

    .line 317
    sub-int v9, v8, v11

    .line 318
    .line 319
    neg-int v11, v11

    .line 320
    iget v14, v12, Lc1/e1;->c:F

    .line 321
    .line 322
    invoke-static {v14, v9, v11}, Lm9/e0;->q0(FII)I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    neg-int v11, v2

    .line 327
    invoke-static {v9, v11, v5, v6}, Ln3/b;->i(IIJ)J

    .line 328
    .line 329
    .line 330
    move-result-wide v14

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    move/from16 v17, v2

    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    :goto_14
    if-ge v2, v9, :cond_15

    .line 339
    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v18

    .line 344
    move-object/from16 v19, v18

    .line 345
    .line 346
    check-cast v19, Lo2/l0;

    .line 347
    .line 348
    move/from16 v20, v2

    .line 349
    .line 350
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    move/from16 v19, v9

    .line 355
    .line 356
    const-string v9, "Label"

    .line 357
    .line 358
    invoke-static {v2, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_14

    .line 363
    .line 364
    goto :goto_15

    .line 365
    :cond_14
    add-int/lit8 v2, v20, 0x1

    .line 366
    .line 367
    move/from16 v9, v19

    .line 368
    .line 369
    goto :goto_14

    .line 370
    :cond_15
    const/16 v18, 0x0

    .line 371
    .line 372
    :goto_15
    move-object/from16 v2, v18

    .line 373
    .line 374
    check-cast v2, Lo2/l0;

    .line 375
    .line 376
    if-eqz v2, :cond_16

    .line 377
    .line 378
    invoke-interface {v2, v14, v15}, Lo2/l0;->u(J)Lo2/v0;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    goto :goto_16

    .line 383
    :cond_16
    const/4 v2, 0x0

    .line 384
    :goto_16
    if-eqz v2, :cond_17

    .line 385
    .line 386
    iget v9, v2, Lo2/v0;->a:I

    .line 387
    .line 388
    int-to-float v9, v9

    .line 389
    iget v14, v2, Lo2/v0;->b:I

    .line 390
    .line 391
    int-to-float v14, v14

    .line 392
    invoke-static {v9, v14}, Lp4/e;->b(FF)J

    .line 393
    .line 394
    .line 395
    move-result-wide v14

    .line 396
    goto :goto_17

    .line 397
    :cond_17
    const-wide/16 v14, 0x0

    .line 398
    .line 399
    :goto_17
    new-instance v9, Lx1/e;

    .line 400
    .line 401
    invoke-direct {v9, v14, v15}, Lx1/e;-><init>(J)V

    .line 402
    .line 403
    .line 404
    iget-object v14, v12, Lc1/e1;->a:Lf9/k;

    .line 405
    .line 406
    invoke-interface {v14, v9}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    const/4 v14, 0x0

    .line 414
    :goto_18
    if-ge v14, v9, :cond_19

    .line 415
    .line 416
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v15

    .line 420
    move-object/from16 v18, v15

    .line 421
    .line 422
    check-cast v18, Lo2/l0;

    .line 423
    .line 424
    move/from16 v19, v9

    .line 425
    .line 426
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    move/from16 v18, v11

    .line 431
    .line 432
    const-string v11, "Supporting"

    .line 433
    .line 434
    invoke-static {v9, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v9

    .line 438
    if-eqz v9, :cond_18

    .line 439
    .line 440
    goto :goto_19

    .line 441
    :cond_18
    add-int/lit8 v14, v14, 0x1

    .line 442
    .line 443
    move/from16 v11, v18

    .line 444
    .line 445
    move/from16 v9, v19

    .line 446
    .line 447
    goto :goto_18

    .line 448
    :cond_19
    move/from16 v18, v11

    .line 449
    .line 450
    const/4 v15, 0x0

    .line 451
    :goto_19
    move-object v9, v15

    .line 452
    check-cast v9, Lo2/l0;

    .line 453
    .line 454
    if-eqz v9, :cond_1a

    .line 455
    .line 456
    invoke-static/range {p3 .. p4}, Ln3/a;->j(J)I

    .line 457
    .line 458
    .line 459
    move-result v11

    .line 460
    invoke-interface {v9, v11}, Lo2/l0;->I(I)I

    .line 461
    .line 462
    .line 463
    move-result v11

    .line 464
    goto :goto_1a

    .line 465
    :cond_1a
    const/4 v11, 0x0

    .line 466
    :goto_1a
    if-eqz v2, :cond_1b

    .line 467
    .line 468
    iget v14, v2, Lo2/v0;->b:I

    .line 469
    .line 470
    :goto_1b
    const/16 v16, 0x2

    .line 471
    .line 472
    goto :goto_1c

    .line 473
    :cond_1b
    const/4 v14, 0x0

    .line 474
    goto :goto_1b

    .line 475
    :goto_1c
    div-int/lit8 v14, v14, 0x2

    .line 476
    .line 477
    iget v1, v1, Ld0/h0;->b:F

    .line 478
    .line 479
    invoke-interface {v13, v1}, Ln3/c;->b0(F)I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    sub-int v14, v18, v1

    .line 488
    .line 489
    sub-int/2addr v14, v11

    .line 490
    move-wide/from16 v29, v5

    .line 491
    .line 492
    move-wide/from16 v5, p3

    .line 493
    .line 494
    invoke-static {v8, v14, v5, v6}, Ln3/b;->i(IIJ)J

    .line 495
    .line 496
    .line 497
    move-result-wide v18

    .line 498
    const/16 v23, 0x0

    .line 499
    .line 500
    const/16 v24, 0xb

    .line 501
    .line 502
    const/16 v20, 0x0

    .line 503
    .line 504
    const/16 v21, 0x0

    .line 505
    .line 506
    const/16 v22, 0x0

    .line 507
    .line 508
    invoke-static/range {v18 .. v24}, Ln3/a;->a(JIIIII)J

    .line 509
    .line 510
    .line 511
    move-result-wide v14

    .line 512
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 513
    .line 514
    .line 515
    move-result v8

    .line 516
    move/from16 v16, v1

    .line 517
    .line 518
    const/4 v11, 0x0

    .line 519
    :goto_1d
    const-string v1, "Collection contains no element matching the predicate."

    .line 520
    .line 521
    if-ge v11, v8, :cond_34

    .line 522
    .line 523
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v18

    .line 527
    move-object/from16 v5, v18

    .line 528
    .line 529
    check-cast v5, Lo2/l0;

    .line 530
    .line 531
    invoke-static {v5}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    move/from16 v18, v8

    .line 536
    .line 537
    const-string v8, "TextField"

    .line 538
    .line 539
    invoke-static {v6, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    if-eqz v6, :cond_33

    .line 544
    .line 545
    invoke-interface {v5, v14, v15}, Lo2/l0;->u(J)Lo2/v0;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    const/16 v36, 0x0

    .line 550
    .line 551
    const/16 v37, 0xe

    .line 552
    .line 553
    const/16 v33, 0x0

    .line 554
    .line 555
    const/16 v34, 0x0

    .line 556
    .line 557
    const/16 v35, 0x0

    .line 558
    .line 559
    move-wide/from16 v31, v14

    .line 560
    .line 561
    invoke-static/range {v31 .. v37}, Ln3/a;->a(JIIIII)J

    .line 562
    .line 563
    .line 564
    move-result-wide v14

    .line 565
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    const/4 v11, 0x0

    .line 570
    :goto_1e
    if-ge v11, v6, :cond_1d

    .line 571
    .line 572
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v8

    .line 576
    move-object/from16 v18, v8

    .line 577
    .line 578
    check-cast v18, Lo2/l0;

    .line 579
    .line 580
    move/from16 v19, v6

    .line 581
    .line 582
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    move-object/from16 v18, v8

    .line 587
    .line 588
    const-string v8, "Hint"

    .line 589
    .line 590
    invoke-static {v6, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    if-eqz v6, :cond_1c

    .line 595
    .line 596
    move-object/from16 v8, v18

    .line 597
    .line 598
    goto :goto_1f

    .line 599
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    .line 600
    .line 601
    move/from16 v6, v19

    .line 602
    .line 603
    goto :goto_1e

    .line 604
    :cond_1d
    const/4 v8, 0x0

    .line 605
    :goto_1f
    check-cast v8, Lo2/l0;

    .line 606
    .line 607
    if-eqz v8, :cond_1e

    .line 608
    .line 609
    invoke-interface {v8, v14, v15}, Lo2/l0;->u(J)Lo2/v0;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    goto :goto_20

    .line 614
    :cond_1e
    const/4 v6, 0x0

    .line 615
    :goto_20
    iget v8, v5, Lo2/v0;->b:I

    .line 616
    .line 617
    if-eqz v6, :cond_1f

    .line 618
    .line 619
    iget v11, v6, Lo2/v0;->b:I

    .line 620
    .line 621
    goto :goto_21

    .line 622
    :cond_1f
    const/4 v11, 0x0

    .line 623
    :goto_21
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 624
    .line 625
    .line 626
    move-result v8

    .line 627
    add-int v8, v8, v16

    .line 628
    .line 629
    add-int v8, v8, v17

    .line 630
    .line 631
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    move-object/from16 v8, v28

    .line 636
    .line 637
    if-eqz v28, :cond_20

    .line 638
    .line 639
    iget v11, v8, Lo2/v0;->a:I

    .line 640
    .line 641
    move v14, v11

    .line 642
    goto :goto_22

    .line 643
    :cond_20
    const/4 v14, 0x0

    .line 644
    :goto_22
    if-eqz v10, :cond_21

    .line 645
    .line 646
    iget v11, v10, Lo2/v0;->a:I

    .line 647
    .line 648
    move v15, v11

    .line 649
    goto :goto_23

    .line 650
    :cond_21
    const/4 v15, 0x0

    .line 651
    :goto_23
    if-eqz v3, :cond_22

    .line 652
    .line 653
    iget v11, v3, Lo2/v0;->a:I

    .line 654
    .line 655
    move/from16 v16, v11

    .line 656
    .line 657
    goto :goto_24

    .line 658
    :cond_22
    const/16 v16, 0x0

    .line 659
    .line 660
    :goto_24
    if-eqz v7, :cond_23

    .line 661
    .line 662
    iget v11, v7, Lo2/v0;->a:I

    .line 663
    .line 664
    move/from16 v17, v11

    .line 665
    .line 666
    goto :goto_25

    .line 667
    :cond_23
    const/16 v17, 0x0

    .line 668
    .line 669
    :goto_25
    iget v11, v5, Lo2/v0;->a:I

    .line 670
    .line 671
    move/from16 v18, v11

    .line 672
    .line 673
    if-eqz v2, :cond_24

    .line 674
    .line 675
    iget v11, v2, Lo2/v0;->a:I

    .line 676
    .line 677
    move/from16 v19, v11

    .line 678
    .line 679
    goto :goto_26

    .line 680
    :cond_24
    const/16 v19, 0x0

    .line 681
    .line 682
    :goto_26
    if-eqz v6, :cond_25

    .line 683
    .line 684
    iget v11, v6, Lo2/v0;->a:I

    .line 685
    .line 686
    move/from16 v20, v11

    .line 687
    .line 688
    goto :goto_27

    .line 689
    :cond_25
    const/16 v20, 0x0

    .line 690
    .line 691
    :goto_27
    invoke-interface {v13}, Ln3/c;->a()F

    .line 692
    .line 693
    .line 694
    move-result v24

    .line 695
    iget-object v11, v12, Lc1/e1;->d:Ld0/h0;

    .line 696
    .line 697
    move-object/from16 v25, v11

    .line 698
    .line 699
    iget v11, v12, Lc1/e1;->c:F

    .line 700
    .line 701
    move-wide/from16 v22, p3

    .line 702
    .line 703
    move/from16 v21, v11

    .line 704
    .line 705
    invoke-static/range {v14 .. v25}, Lc1/b1;->d(IIIIIIIFJFLd0/h0;)I

    .line 706
    .line 707
    .line 708
    move-result v34

    .line 709
    neg-int v4, v4

    .line 710
    const/4 v11, 0x1

    .line 711
    move-object/from16 v27, v1

    .line 712
    .line 713
    move-wide/from16 v0, v29

    .line 714
    .line 715
    const/4 v14, 0x0

    .line 716
    invoke-static {v14, v4, v11, v0, v1}, Ln3/b;->j(IIIJ)J

    .line 717
    .line 718
    .line 719
    move-result-wide v31

    .line 720
    const/16 v36, 0x0

    .line 721
    .line 722
    const/16 v37, 0x9

    .line 723
    .line 724
    const/16 v33, 0x0

    .line 725
    .line 726
    const/16 v35, 0x0

    .line 727
    .line 728
    invoke-static/range {v31 .. v37}, Ln3/a;->a(JIIIII)J

    .line 729
    .line 730
    .line 731
    move-result-wide v0

    .line 732
    move/from16 v11, v34

    .line 733
    .line 734
    if-eqz v9, :cond_26

    .line 735
    .line 736
    invoke-interface {v9, v0, v1}, Lo2/l0;->u(J)Lo2/v0;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    goto :goto_28

    .line 741
    :cond_26
    const/4 v0, 0x0

    .line 742
    :goto_28
    if-eqz v0, :cond_27

    .line 743
    .line 744
    iget v1, v0, Lo2/v0;->b:I

    .line 745
    .line 746
    goto :goto_29

    .line 747
    :cond_27
    const/4 v1, 0x0

    .line 748
    :goto_29
    if-eqz v8, :cond_28

    .line 749
    .line 750
    iget v4, v8, Lo2/v0;->b:I

    .line 751
    .line 752
    move v14, v4

    .line 753
    :cond_28
    const/4 v4, 0x0

    .line 754
    if-eqz v10, :cond_29

    .line 755
    .line 756
    iget v9, v10, Lo2/v0;->b:I

    .line 757
    .line 758
    move v15, v9

    .line 759
    goto :goto_2a

    .line 760
    :cond_29
    const/4 v15, 0x0

    .line 761
    :goto_2a
    if-eqz v3, :cond_2a

    .line 762
    .line 763
    iget v9, v3, Lo2/v0;->b:I

    .line 764
    .line 765
    move/from16 v16, v9

    .line 766
    .line 767
    goto :goto_2b

    .line 768
    :cond_2a
    const/16 v16, 0x0

    .line 769
    .line 770
    :goto_2b
    if-eqz v7, :cond_2b

    .line 771
    .line 772
    iget v9, v7, Lo2/v0;->b:I

    .line 773
    .line 774
    move/from16 v17, v9

    .line 775
    .line 776
    goto :goto_2c

    .line 777
    :cond_2b
    const/16 v17, 0x0

    .line 778
    .line 779
    :goto_2c
    iget v9, v5, Lo2/v0;->b:I

    .line 780
    .line 781
    if-eqz v2, :cond_2c

    .line 782
    .line 783
    iget v4, v2, Lo2/v0;->b:I

    .line 784
    .line 785
    move/from16 v19, v4

    .line 786
    .line 787
    goto :goto_2d

    .line 788
    :cond_2c
    const/16 v19, 0x0

    .line 789
    .line 790
    :goto_2d
    if-eqz v6, :cond_2d

    .line 791
    .line 792
    iget v4, v6, Lo2/v0;->b:I

    .line 793
    .line 794
    move/from16 v20, v4

    .line 795
    .line 796
    goto :goto_2e

    .line 797
    :cond_2d
    const/16 v20, 0x0

    .line 798
    .line 799
    :goto_2e
    if-eqz v0, :cond_2e

    .line 800
    .line 801
    iget v4, v0, Lo2/v0;->b:I

    .line 802
    .line 803
    move/from16 v21, v4

    .line 804
    .line 805
    goto :goto_2f

    .line 806
    :cond_2e
    const/16 v21, 0x0

    .line 807
    .line 808
    :goto_2f
    invoke-interface {v13}, Ln3/c;->a()F

    .line 809
    .line 810
    .line 811
    move-result v25

    .line 812
    iget-object v4, v12, Lc1/e1;->d:Ld0/h0;

    .line 813
    .line 814
    move-object/from16 v28, v0

    .line 815
    .line 816
    iget v0, v12, Lc1/e1;->c:F

    .line 817
    .line 818
    move-wide/from16 v23, p3

    .line 819
    .line 820
    move/from16 v22, v0

    .line 821
    .line 822
    move-object/from16 v26, v4

    .line 823
    .line 824
    move/from16 v18, v9

    .line 825
    .line 826
    const/16 v29, 0x0

    .line 827
    .line 828
    invoke-static/range {v14 .. v26}, Lc1/b1;->c(IIIIIIIIFJFLd0/h0;)I

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    sub-int v1, v0, v1

    .line 833
    .line 834
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 835
    .line 836
    .line 837
    move-result v4

    .line 838
    const/4 v9, 0x0

    .line 839
    :goto_30
    if-ge v9, v4, :cond_32

    .line 840
    .line 841
    move-object/from16 v14, p2

    .line 842
    .line 843
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v15

    .line 847
    check-cast v15, Lo2/l0;

    .line 848
    .line 849
    move/from16 p3, v0

    .line 850
    .line 851
    invoke-static {v15}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    move-object/from16 v19, v2

    .line 856
    .line 857
    const-string v2, "Container"

    .line 858
    .line 859
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    if-eqz v0, :cond_31

    .line 864
    .line 865
    const v0, 0x7fffffff

    .line 866
    .line 867
    .line 868
    if-eq v11, v0, :cond_2f

    .line 869
    .line 870
    move v2, v11

    .line 871
    goto :goto_31

    .line 872
    :cond_2f
    const/4 v2, 0x0

    .line 873
    :goto_31
    if-eq v1, v0, :cond_30

    .line 874
    .line 875
    move v4, v1

    .line 876
    goto :goto_32

    .line 877
    :cond_30
    const/4 v4, 0x0

    .line 878
    :goto_32
    invoke-static {v2, v11, v4, v1}, Ln3/b;->a(IIII)J

    .line 879
    .line 880
    .line 881
    move-result-wide v0

    .line 882
    invoke-interface {v15, v0, v1}, Lo2/l0;->u(J)Lo2/v0;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    move-object v4, v10

    .line 887
    move-object v10, v0

    .line 888
    new-instance v0, Lc1/d1;

    .line 889
    .line 890
    move/from16 v1, p3

    .line 891
    .line 892
    move-object v9, v6

    .line 893
    move-object v6, v7

    .line 894
    move v2, v11

    .line 895
    move-object/from16 v11, v28

    .line 896
    .line 897
    move-object v7, v5

    .line 898
    move-object v5, v3

    .line 899
    move-object v3, v8

    .line 900
    move-object/from16 v8, v19

    .line 901
    .line 902
    invoke-direct/range {v0 .. v13}, Lc1/d1;-><init>(IILo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lc1/e1;Lo2/o0;)V

    .line 903
    .line 904
    .line 905
    move v11, v1

    .line 906
    move-object v1, v0

    .line 907
    move v0, v11

    .line 908
    move v11, v2

    .line 909
    sget-object v2, Ls8/x;->a:Ls8/x;

    .line 910
    .line 911
    invoke-interface {v13, v11, v0, v2, v1}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    return-object v0

    .line 916
    :cond_31
    move/from16 v0, p3

    .line 917
    .line 918
    move-object/from16 v26, v6

    .line 919
    .line 920
    move-object v6, v7

    .line 921
    move-object/from16 v2, v28

    .line 922
    .line 923
    move-object v7, v5

    .line 924
    move-object/from16 v28, v8

    .line 925
    .line 926
    move-object v5, v3

    .line 927
    add-int/lit8 v9, v9, 0x1

    .line 928
    .line 929
    move-object/from16 v12, p0

    .line 930
    .line 931
    move-object v5, v7

    .line 932
    move-object/from16 v28, v2

    .line 933
    .line 934
    move-object v7, v6

    .line 935
    move-object/from16 v2, v19

    .line 936
    .line 937
    move-object/from16 v6, v26

    .line 938
    .line 939
    goto :goto_30

    .line 940
    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 941
    .line 942
    move-object/from16 v2, v27

    .line 943
    .line 944
    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    throw v0

    .line 948
    :cond_33
    move-object/from16 v19, v2

    .line 949
    .line 950
    move-object v5, v3

    .line 951
    move-object v6, v7

    .line 952
    move-wide/from16 v31, v14

    .line 953
    .line 954
    move-object v14, v0

    .line 955
    move-wide/from16 v0, v29

    .line 956
    .line 957
    const/16 v29, 0x0

    .line 958
    .line 959
    add-int/lit8 v11, v11, 0x1

    .line 960
    .line 961
    move-object/from16 v12, p0

    .line 962
    .line 963
    move-wide/from16 v29, v0

    .line 964
    .line 965
    move-object v0, v14

    .line 966
    move/from16 v8, v18

    .line 967
    .line 968
    move-wide/from16 v14, v31

    .line 969
    .line 970
    move-wide/from16 v5, p3

    .line 971
    .line 972
    goto/16 :goto_1d

    .line 973
    .line 974
    :cond_34
    move-object v2, v1

    .line 975
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 976
    .line 977
    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    throw v0
.end method

.method public final d(Lo2/r;Ljava/util/List;ILf9/n;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v5, v3, :cond_13

    .line 14
    .line 15
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    move-object v7, v6

    .line 20
    check-cast v7, Lo2/l0;

    .line 21
    .line 22
    invoke-static {v7}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const-string v8, "TextField"

    .line 27
    .line 28
    invoke-static {v7, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_12

    .line 33
    .line 34
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2, v6, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    const/4 v6, 0x0

    .line 54
    if-ge v5, v3, :cond_1

    .line 55
    .line 56
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    move-object v8, v7

    .line 61
    check-cast v8, Lo2/l0;

    .line 62
    .line 63
    invoke-static {v8}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-string v10, "Label"

    .line 68
    .line 69
    invoke-static {v8, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-object v7, v6

    .line 80
    :goto_2
    check-cast v7, Lo2/l0;

    .line 81
    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v2, v7, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    move v10, v3

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    const/4 v10, 0x0

    .line 101
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v5, 0x0

    .line 106
    :goto_4
    if-ge v5, v3, :cond_4

    .line 107
    .line 108
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    move-object v8, v7

    .line 113
    check-cast v8, Lo2/l0;

    .line 114
    .line 115
    invoke-static {v8}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    const-string v11, "Trailing"

    .line 120
    .line 121
    invoke-static {v8, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_3

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    move-object v7, v6

    .line 132
    :goto_5
    check-cast v7, Lo2/l0;

    .line 133
    .line 134
    if-eqz v7, :cond_5

    .line 135
    .line 136
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-interface {v2, v7, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    goto :goto_6

    .line 151
    :cond_5
    const/4 v3, 0x0

    .line 152
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    const/4 v7, 0x0

    .line 157
    :goto_7
    if-ge v7, v5, :cond_7

    .line 158
    .line 159
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    move-object v11, v8

    .line 164
    check-cast v11, Lo2/l0;

    .line 165
    .line 166
    invoke-static {v11}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    const-string v12, "Leading"

    .line 171
    .line 172
    invoke-static {v11, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_6

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_7
    move-object v8, v6

    .line 183
    :goto_8
    check-cast v8, Lo2/l0;

    .line 184
    .line 185
    if-eqz v8, :cond_8

    .line 186
    .line 187
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-interface {v2, v8, v5}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    check-cast v5, Ljava/lang/Number;

    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    goto :goto_9

    .line 202
    :cond_8
    const/4 v5, 0x0

    .line 203
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    const/4 v8, 0x0

    .line 208
    :goto_a
    if-ge v8, v7, :cond_a

    .line 209
    .line 210
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    move-object v12, v11

    .line 215
    check-cast v12, Lo2/l0;

    .line 216
    .line 217
    invoke-static {v12}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    const-string v13, "Prefix"

    .line 222
    .line 223
    invoke-static {v12, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-eqz v12, :cond_9

    .line 228
    .line 229
    goto :goto_b

    .line 230
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 231
    .line 232
    goto :goto_a

    .line 233
    :cond_a
    move-object v11, v6

    .line 234
    :goto_b
    check-cast v11, Lo2/l0;

    .line 235
    .line 236
    if-eqz v11, :cond_b

    .line 237
    .line 238
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-interface {v2, v11, v7}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Ljava/lang/Number;

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    goto :goto_c

    .line 253
    :cond_b
    const/4 v7, 0x0

    .line 254
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    const/4 v11, 0x0

    .line 259
    :goto_d
    if-ge v11, v8, :cond_d

    .line 260
    .line 261
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    move-object v13, v12

    .line 266
    check-cast v13, Lo2/l0;

    .line 267
    .line 268
    invoke-static {v13}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    const-string v14, "Suffix"

    .line 273
    .line 274
    invoke-static {v13, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v13

    .line 278
    if-eqz v13, :cond_c

    .line 279
    .line 280
    goto :goto_e

    .line 281
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 282
    .line 283
    goto :goto_d

    .line 284
    :cond_d
    move-object v12, v6

    .line 285
    :goto_e
    check-cast v12, Lo2/l0;

    .line 286
    .line 287
    if-eqz v12, :cond_e

    .line 288
    .line 289
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-interface {v2, v12, v8}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    check-cast v8, Ljava/lang/Number;

    .line 298
    .line 299
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    goto :goto_f

    .line 304
    :cond_e
    const/4 v8, 0x0

    .line 305
    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 306
    .line 307
    .line 308
    move-result v11

    .line 309
    const/4 v12, 0x0

    .line 310
    :goto_10
    if-ge v12, v11, :cond_10

    .line 311
    .line 312
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    move-object v14, v13

    .line 317
    check-cast v14, Lo2/l0;

    .line 318
    .line 319
    invoke-static {v14}, Ld1/r;->d(Lo2/l0;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    const-string v15, "Hint"

    .line 324
    .line 325
    invoke-static {v14, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    if-eqz v14, :cond_f

    .line 330
    .line 331
    move-object v6, v13

    .line 332
    goto :goto_11

    .line 333
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 334
    .line 335
    goto :goto_10

    .line 336
    :cond_10
    :goto_11
    check-cast v6, Lo2/l0;

    .line 337
    .line 338
    if-eqz v6, :cond_11

    .line 339
    .line 340
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-interface {v2, v6, v1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Ljava/lang/Number;

    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    move v11, v4

    .line 355
    goto :goto_12

    .line 356
    :cond_11
    const/4 v11, 0x0

    .line 357
    :goto_12
    sget-wide v13, Ld1/r;->a:J

    .line 358
    .line 359
    invoke-interface/range {p1 .. p1}, Ln3/c;->a()F

    .line 360
    .line 361
    .line 362
    move-result v15

    .line 363
    iget-object v1, v0, Lc1/e1;->d:Ld0/h0;

    .line 364
    .line 365
    iget v12, v0, Lc1/e1;->c:F

    .line 366
    .line 367
    move-object/from16 v16, v1

    .line 368
    .line 369
    move v6, v3

    .line 370
    invoke-static/range {v5 .. v16}, Lc1/b1;->d(IIIIIIIFJFLd0/h0;)I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    return v1

    .line 375
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_13
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 380
    .line 381
    const-string v2, "Collection contains no element matching the predicate."

    .line 382
    .line 383
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v1
.end method

.method public final f(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    sget-object v0, Lc1/c1;->c:Lc1/c1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lc1/e1;->d(Lo2/r;Ljava/util/List;ILf9/n;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final h(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    sget-object v0, Lc1/c1;->b:Lc1/c1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lc1/e1;->b(Lo2/r;Ljava/util/List;ILf9/n;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final j(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    sget-object v0, Lc1/c1;->d:Lc1/c1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lc1/e1;->b(Lo2/r;Ljava/util/List;ILf9/n;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
