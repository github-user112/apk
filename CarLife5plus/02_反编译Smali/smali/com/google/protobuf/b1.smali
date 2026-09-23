.class public final Lcom/google/protobuf/b1;
.super Lcom/google/protobuf/u0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/b1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static h(IIJ[B)I
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p4, p2, p3}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const-wide/16 v0, 0x1

    .line 14
    .line 15
    add-long/2addr p2, v0

    .line 16
    invoke-static {p4, p2, p3}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d1;->d(III)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-static {p4, p2, p3}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p0, p1}, Lcom/google/protobuf/d1;->c(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    sget-object p1, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/u0;

    .line 41
    .line 42
    const/16 p1, -0xc

    .line 43
    .line 44
    if-le p0, p1, :cond_3

    .line 45
    .line 46
    const/4 p0, -0x1

    .line 47
    :cond_3
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;[BII)I
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    iget v5, v3, Lcom/google/protobuf/b1;->a:I

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-wide v5, Lcom/google/protobuf/a1;->d:J

    .line 17
    .line 18
    int-to-long v7, v2

    .line 19
    add-long/2addr v5, v7

    .line 20
    int-to-long v7, v4

    .line 21
    add-long/2addr v7, v5

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    const-string v10, " at index "

    .line 27
    .line 28
    const-string v11, "Failed writing "

    .line 29
    .line 30
    if-gt v9, v4, :cond_c

    .line 31
    .line 32
    array-length v12, v1

    .line 33
    sub-int/2addr v12, v4

    .line 34
    if-lt v12, v2, :cond_c

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    const-wide/16 v12, 0x1

    .line 38
    .line 39
    const/16 v4, 0x80

    .line 40
    .line 41
    if-ge v2, v9, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    if-ge v14, v4, :cond_0

    .line 48
    .line 49
    add-long/2addr v12, v5

    .line 50
    int-to-byte v4, v14

    .line 51
    invoke-static {v1, v5, v6, v4}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    move-wide v5, v12

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-ne v2, v9, :cond_1

    .line 59
    .line 60
    sget-wide v0, Lcom/google/protobuf/a1;->d:J

    .line 61
    .line 62
    :goto_1
    sub-long/2addr v5, v0

    .line 63
    long-to-int v0, v5

    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_1
    :goto_2
    if-ge v2, v9, :cond_b

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    if-ge v14, v4, :cond_2

    .line 73
    .line 74
    cmp-long v15, v5, v7

    .line 75
    .line 76
    if-gez v15, :cond_2

    .line 77
    .line 78
    add-long v15, v5, v12

    .line 79
    .line 80
    int-to-byte v14, v14

    .line 81
    invoke-static {v1, v5, v6, v14}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 82
    .line 83
    .line 84
    move-wide/from16 v20, v7

    .line 85
    .line 86
    move-wide/from16 p3, v12

    .line 87
    .line 88
    move-wide v5, v15

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_2
    const/16 v15, 0x800

    .line 92
    .line 93
    const-wide/16 v16, 0x2

    .line 94
    .line 95
    if-ge v14, v15, :cond_3

    .line 96
    .line 97
    sub-long v18, v7, v16

    .line 98
    .line 99
    cmp-long v15, v5, v18

    .line 100
    .line 101
    if-gtz v15, :cond_3

    .line 102
    .line 103
    move-wide/from16 p3, v12

    .line 104
    .line 105
    add-long v12, v5, p3

    .line 106
    .line 107
    ushr-int/lit8 v15, v14, 0x6

    .line 108
    .line 109
    or-int/lit16 v15, v15, 0x3c0

    .line 110
    .line 111
    int-to-byte v15, v15

    .line 112
    invoke-static {v1, v5, v6, v15}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 113
    .line 114
    .line 115
    add-long v5, v5, v16

    .line 116
    .line 117
    and-int/lit8 v14, v14, 0x3f

    .line 118
    .line 119
    or-int/2addr v14, v4

    .line 120
    int-to-byte v14, v14

    .line 121
    invoke-static {v1, v12, v13, v14}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 122
    .line 123
    .line 124
    move-wide/from16 v20, v7

    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_3
    move-wide/from16 p3, v12

    .line 129
    .line 130
    const v12, 0xdfff

    .line 131
    .line 132
    .line 133
    const v13, 0xd800

    .line 134
    .line 135
    .line 136
    const-wide/16 v18, 0x3

    .line 137
    .line 138
    if-lt v14, v13, :cond_5

    .line 139
    .line 140
    if-ge v12, v14, :cond_4

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move-wide/from16 v20, v7

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    :goto_3
    sub-long v20, v7, v18

    .line 147
    .line 148
    cmp-long v15, v5, v20

    .line 149
    .line 150
    if-gtz v15, :cond_4

    .line 151
    .line 152
    add-long v12, v5, p3

    .line 153
    .line 154
    ushr-int/lit8 v15, v14, 0xc

    .line 155
    .line 156
    or-int/lit16 v15, v15, 0x1e0

    .line 157
    .line 158
    int-to-byte v15, v15

    .line 159
    invoke-static {v1, v5, v6, v15}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 160
    .line 161
    .line 162
    move-wide/from16 v20, v7

    .line 163
    .line 164
    add-long v7, v5, v16

    .line 165
    .line 166
    ushr-int/lit8 v15, v14, 0x6

    .line 167
    .line 168
    and-int/lit8 v15, v15, 0x3f

    .line 169
    .line 170
    or-int/2addr v15, v4

    .line 171
    int-to-byte v15, v15

    .line 172
    invoke-static {v1, v12, v13, v15}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 173
    .line 174
    .line 175
    add-long v5, v5, v18

    .line 176
    .line 177
    and-int/lit8 v12, v14, 0x3f

    .line 178
    .line 179
    or-int/2addr v12, v4

    .line 180
    int-to-byte v12, v12

    .line 181
    invoke-static {v1, v7, v8, v12}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :goto_4
    const-wide/16 v7, 0x4

    .line 186
    .line 187
    sub-long v22, v20, v7

    .line 188
    .line 189
    cmp-long v15, v5, v22

    .line 190
    .line 191
    if-gtz v15, :cond_8

    .line 192
    .line 193
    add-int/lit8 v12, v2, 0x1

    .line 194
    .line 195
    if-eq v12, v9, :cond_7

    .line 196
    .line 197
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-static {v14, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    if-eqz v13, :cond_6

    .line 206
    .line 207
    invoke-static {v14, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    add-long v13, v5, p3

    .line 212
    .line 213
    ushr-int/lit8 v15, v2, 0x12

    .line 214
    .line 215
    or-int/lit16 v15, v15, 0xf0

    .line 216
    .line 217
    int-to-byte v15, v15

    .line 218
    invoke-static {v1, v5, v6, v15}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 219
    .line 220
    .line 221
    move-wide/from16 v22, v7

    .line 222
    .line 223
    add-long v7, v5, v16

    .line 224
    .line 225
    ushr-int/lit8 v15, v2, 0xc

    .line 226
    .line 227
    and-int/lit8 v15, v15, 0x3f

    .line 228
    .line 229
    or-int/2addr v15, v4

    .line 230
    int-to-byte v15, v15

    .line 231
    invoke-static {v1, v13, v14, v15}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 232
    .line 233
    .line 234
    add-long v13, v5, v18

    .line 235
    .line 236
    ushr-int/lit8 v15, v2, 0x6

    .line 237
    .line 238
    and-int/lit8 v15, v15, 0x3f

    .line 239
    .line 240
    or-int/2addr v15, v4

    .line 241
    int-to-byte v15, v15

    .line 242
    invoke-static {v1, v7, v8, v15}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 243
    .line 244
    .line 245
    add-long v5, v5, v22

    .line 246
    .line 247
    and-int/lit8 v2, v2, 0x3f

    .line 248
    .line 249
    or-int/2addr v2, v4

    .line 250
    int-to-byte v2, v2

    .line 251
    invoke-static {v1, v13, v14, v2}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 252
    .line 253
    .line 254
    move v2, v12

    .line 255
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 256
    .line 257
    move-wide/from16 v12, p3

    .line 258
    .line 259
    move-wide/from16 v7, v20

    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_6
    move v2, v12

    .line 264
    :cond_7
    new-instance v0, Lcom/google/protobuf/c1;

    .line 265
    .line 266
    add-int/lit8 v2, v2, -0x1

    .line 267
    .line 268
    invoke-direct {v0, v2, v9}, Lcom/google/protobuf/c1;-><init>(II)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :cond_8
    if-gt v13, v14, :cond_a

    .line 273
    .line 274
    if-gt v14, v12, :cond_a

    .line 275
    .line 276
    add-int/lit8 v1, v2, 0x1

    .line 277
    .line 278
    if-eq v1, v9, :cond_9

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-static {v14, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_a

    .line 289
    .line 290
    :cond_9
    new-instance v0, Lcom/google/protobuf/c1;

    .line 291
    .line 292
    invoke-direct {v0, v2, v9}, Lcom/google/protobuf/c1;-><init>(II)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :cond_b
    sget-wide v0, Lcom/google/protobuf/a1;->d:J

    .line 321
    .line 322
    goto/16 :goto_1

    .line 323
    .line 324
    :goto_6
    return v0

    .line 325
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 326
    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    add-int/lit8 v9, v9, -0x1

    .line 333
    .line 334
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    add-int v0, v2, v4

    .line 345
    .line 346
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw v1

    .line 357
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    add-int/2addr v4, v2

    .line 362
    const/4 v6, 0x0

    .line 363
    :goto_7
    const/16 v7, 0x80

    .line 364
    .line 365
    if-ge v6, v5, :cond_d

    .line 366
    .line 367
    add-int v8, v6, v2

    .line 368
    .line 369
    if-ge v8, v4, :cond_d

    .line 370
    .line 371
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    if-ge v9, v7, :cond_d

    .line 376
    .line 377
    int-to-byte v7, v9

    .line 378
    aput-byte v7, v1, v8

    .line 379
    .line 380
    add-int/lit8 v6, v6, 0x1

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_d
    if-ne v6, v5, :cond_e

    .line 384
    .line 385
    add-int v0, v2, v5

    .line 386
    .line 387
    goto/16 :goto_a

    .line 388
    .line 389
    :cond_e
    add-int/2addr v2, v6

    .line 390
    :goto_8
    if-ge v6, v5, :cond_18

    .line 391
    .line 392
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    if-ge v8, v7, :cond_f

    .line 397
    .line 398
    if-ge v2, v4, :cond_f

    .line 399
    .line 400
    add-int/lit8 v9, v2, 0x1

    .line 401
    .line 402
    int-to-byte v8, v8

    .line 403
    aput-byte v8, v1, v2

    .line 404
    .line 405
    move v2, v9

    .line 406
    goto/16 :goto_9

    .line 407
    .line 408
    :cond_f
    const/16 v9, 0x800

    .line 409
    .line 410
    if-ge v8, v9, :cond_10

    .line 411
    .line 412
    add-int/lit8 v9, v4, -0x2

    .line 413
    .line 414
    if-gt v2, v9, :cond_10

    .line 415
    .line 416
    add-int/lit8 v9, v2, 0x1

    .line 417
    .line 418
    ushr-int/lit8 v10, v8, 0x6

    .line 419
    .line 420
    or-int/lit16 v10, v10, 0x3c0

    .line 421
    .line 422
    int-to-byte v10, v10

    .line 423
    aput-byte v10, v1, v2

    .line 424
    .line 425
    add-int/lit8 v2, v2, 0x2

    .line 426
    .line 427
    and-int/lit8 v8, v8, 0x3f

    .line 428
    .line 429
    or-int/2addr v8, v7

    .line 430
    int-to-byte v8, v8

    .line 431
    aput-byte v8, v1, v9

    .line 432
    .line 433
    goto :goto_9

    .line 434
    :cond_10
    const v9, 0xdfff

    .line 435
    .line 436
    .line 437
    const v10, 0xd800

    .line 438
    .line 439
    .line 440
    if-lt v8, v10, :cond_11

    .line 441
    .line 442
    if-ge v9, v8, :cond_12

    .line 443
    .line 444
    :cond_11
    add-int/lit8 v11, v4, -0x3

    .line 445
    .line 446
    if-gt v2, v11, :cond_12

    .line 447
    .line 448
    add-int/lit8 v9, v2, 0x1

    .line 449
    .line 450
    ushr-int/lit8 v10, v8, 0xc

    .line 451
    .line 452
    or-int/lit16 v10, v10, 0x1e0

    .line 453
    .line 454
    int-to-byte v10, v10

    .line 455
    aput-byte v10, v1, v2

    .line 456
    .line 457
    add-int/lit8 v10, v2, 0x2

    .line 458
    .line 459
    ushr-int/lit8 v11, v8, 0x6

    .line 460
    .line 461
    and-int/lit8 v11, v11, 0x3f

    .line 462
    .line 463
    or-int/2addr v11, v7

    .line 464
    int-to-byte v11, v11

    .line 465
    aput-byte v11, v1, v9

    .line 466
    .line 467
    add-int/lit8 v2, v2, 0x3

    .line 468
    .line 469
    and-int/lit8 v8, v8, 0x3f

    .line 470
    .line 471
    or-int/2addr v8, v7

    .line 472
    int-to-byte v8, v8

    .line 473
    aput-byte v8, v1, v10

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_12
    add-int/lit8 v11, v4, -0x4

    .line 477
    .line 478
    if-gt v2, v11, :cond_15

    .line 479
    .line 480
    add-int/lit8 v9, v6, 0x1

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    if-eq v9, v10, :cond_14

    .line 487
    .line 488
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    invoke-static {v8, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 493
    .line 494
    .line 495
    move-result v10

    .line 496
    if-eqz v10, :cond_13

    .line 497
    .line 498
    invoke-static {v8, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    add-int/lit8 v8, v2, 0x1

    .line 503
    .line 504
    ushr-int/lit8 v10, v6, 0x12

    .line 505
    .line 506
    or-int/lit16 v10, v10, 0xf0

    .line 507
    .line 508
    int-to-byte v10, v10

    .line 509
    aput-byte v10, v1, v2

    .line 510
    .line 511
    add-int/lit8 v10, v2, 0x2

    .line 512
    .line 513
    ushr-int/lit8 v11, v6, 0xc

    .line 514
    .line 515
    and-int/lit8 v11, v11, 0x3f

    .line 516
    .line 517
    or-int/2addr v11, v7

    .line 518
    int-to-byte v11, v11

    .line 519
    aput-byte v11, v1, v8

    .line 520
    .line 521
    add-int/lit8 v8, v2, 0x3

    .line 522
    .line 523
    ushr-int/lit8 v11, v6, 0x6

    .line 524
    .line 525
    and-int/lit8 v11, v11, 0x3f

    .line 526
    .line 527
    or-int/2addr v11, v7

    .line 528
    int-to-byte v11, v11

    .line 529
    aput-byte v11, v1, v10

    .line 530
    .line 531
    add-int/lit8 v2, v2, 0x4

    .line 532
    .line 533
    and-int/lit8 v6, v6, 0x3f

    .line 534
    .line 535
    or-int/2addr v6, v7

    .line 536
    int-to-byte v6, v6

    .line 537
    aput-byte v6, v1, v8

    .line 538
    .line 539
    move v6, v9

    .line 540
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 541
    .line 542
    goto/16 :goto_8

    .line 543
    .line 544
    :cond_13
    move v6, v9

    .line 545
    :cond_14
    new-instance v0, Lcom/google/protobuf/c1;

    .line 546
    .line 547
    add-int/lit8 v6, v6, -0x1

    .line 548
    .line 549
    invoke-direct {v0, v6, v5}, Lcom/google/protobuf/c1;-><init>(II)V

    .line 550
    .line 551
    .line 552
    throw v0

    .line 553
    :cond_15
    if-gt v10, v8, :cond_17

    .line 554
    .line 555
    if-gt v8, v9, :cond_17

    .line 556
    .line 557
    add-int/lit8 v1, v6, 0x1

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-eq v1, v4, :cond_16

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    invoke-static {v8, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-nez v0, :cond_17

    .line 574
    .line 575
    :cond_16
    new-instance v0, Lcom/google/protobuf/c1;

    .line 576
    .line 577
    invoke-direct {v0, v6, v5}, Lcom/google/protobuf/c1;-><init>(II)V

    .line 578
    .line 579
    .line 580
    throw v0

    .line 581
    :cond_17
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 582
    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    const-string v4, "Failed writing "

    .line 586
    .line 587
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v4, " at index "

    .line 594
    .line 595
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw v0

    .line 609
    :cond_18
    move v0, v2

    .line 610
    :goto_a
    return v0

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d([BII)I
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget v4, v2, Lcom/google/protobuf/b1;->a:I

    .line 10
    .line 11
    const/16 v5, -0x41

    .line 12
    .line 13
    const/16 v7, -0x20

    .line 14
    .line 15
    const/16 v8, -0x60

    .line 16
    .line 17
    const/16 v9, -0x3e

    .line 18
    .line 19
    const/16 v10, -0x10

    .line 20
    .line 21
    const/16 v11, -0x13

    .line 22
    .line 23
    packed-switch v4, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    or-int v4, v1, v3

    .line 27
    .line 28
    array-length v13, v0

    .line 29
    sub-int/2addr v13, v3

    .line 30
    or-int/2addr v4, v13

    .line 31
    if-ltz v4, :cond_11

    .line 32
    .line 33
    sget-wide v15, Lcom/google/protobuf/a1;->d:J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    int-to-long v12, v1

    .line 37
    add-long/2addr v12, v15

    .line 38
    move-wide/from16 v18, v15

    .line 39
    .line 40
    int-to-long v14, v3

    .line 41
    add-long v14, v18, v14

    .line 42
    .line 43
    sub-long/2addr v14, v12

    .line 44
    long-to-int v1, v14

    .line 45
    const/16 v3, 0x10

    .line 46
    .line 47
    if-ge v1, v3, :cond_0

    .line 48
    .line 49
    const-wide/16 p2, 0x1

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_0
    const/16 v16, 0x0

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_0
    long-to-int v3, v12

    .line 56
    and-int/lit8 v3, v3, 0x7

    .line 57
    .line 58
    move/from16 v16, v3

    .line 59
    .line 60
    move-wide v14, v12

    .line 61
    const-wide/16 p2, 0x1

    .line 62
    .line 63
    :goto_1
    if-lez v16, :cond_2

    .line 64
    .line 65
    add-long v18, v14, p2

    .line 66
    .line 67
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    if-gez v14, :cond_1

    .line 72
    .line 73
    sub-int v3, v3, v16

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    add-int/lit8 v16, v16, -0x1

    .line 77
    .line 78
    move-wide/from16 v14, v18

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    sub-int v3, v1, v3

    .line 82
    .line 83
    const/16 v16, 0x0

    .line 84
    .line 85
    :goto_2
    const/16 v4, 0x8

    .line 86
    .line 87
    if-lt v3, v4, :cond_3

    .line 88
    .line 89
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/a1;->d([BJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v18

    .line 93
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    and-long v18, v18, v20

    .line 99
    .line 100
    const-wide/16 v20, 0x0

    .line 101
    .line 102
    cmp-long v4, v18, v20

    .line 103
    .line 104
    if-nez v4, :cond_3

    .line 105
    .line 106
    const-wide/16 v18, 0x8

    .line 107
    .line 108
    add-long v14, v14, v18

    .line 109
    .line 110
    add-int/lit8 v3, v3, -0x8

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    sub-int v3, v1, v3

    .line 114
    .line 115
    :goto_3
    sub-int/2addr v1, v3

    .line 116
    int-to-long v3, v3

    .line 117
    add-long/2addr v12, v3

    .line 118
    :cond_4
    :goto_4
    const/4 v3, 0x0

    .line 119
    :goto_5
    if-lez v1, :cond_6

    .line 120
    .line 121
    add-long v3, v12, p2

    .line 122
    .line 123
    invoke-static {v0, v12, v13}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-ltz v12, :cond_5

    .line 128
    .line 129
    add-int/lit8 v1, v1, -0x1

    .line 130
    .line 131
    move-wide/from16 v22, v3

    .line 132
    .line 133
    move v3, v12

    .line 134
    move-wide/from16 v12, v22

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_5
    move-wide/from16 v22, v3

    .line 138
    .line 139
    move v3, v12

    .line 140
    move-wide/from16 v12, v22

    .line 141
    .line 142
    :cond_6
    if-nez v1, :cond_7

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    goto/16 :goto_7

    .line 146
    .line 147
    :cond_7
    add-int/lit8 v4, v1, -0x1

    .line 148
    .line 149
    if-ge v3, v7, :cond_a

    .line 150
    .line 151
    if-nez v4, :cond_8

    .line 152
    .line 153
    move v6, v3

    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :cond_8
    add-int/lit8 v1, v1, -0x2

    .line 157
    .line 158
    if-lt v3, v9, :cond_10

    .line 159
    .line 160
    add-long v14, v12, p2

    .line 161
    .line 162
    invoke-static {v0, v12, v13}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-le v3, v5, :cond_9

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_9
    move-wide v12, v14

    .line 170
    goto :goto_4

    .line 171
    :cond_a
    if-ge v3, v10, :cond_e

    .line 172
    .line 173
    const/4 v6, 0x2

    .line 174
    if-ge v4, v6, :cond_b

    .line 175
    .line 176
    invoke-static {v3, v4, v12, v13, v0}, Lcom/google/protobuf/b1;->h(IIJ[B)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    goto :goto_7

    .line 181
    :cond_b
    add-int/lit8 v1, v1, -0x3

    .line 182
    .line 183
    const-wide/16 v19, 0x2

    .line 184
    .line 185
    add-long v14, v12, p2

    .line 186
    .line 187
    invoke-static {v0, v12, v13}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-gt v4, v5, :cond_10

    .line 192
    .line 193
    if-ne v3, v7, :cond_c

    .line 194
    .line 195
    if-lt v4, v8, :cond_10

    .line 196
    .line 197
    :cond_c
    if-ne v3, v11, :cond_d

    .line 198
    .line 199
    if-ge v4, v8, :cond_10

    .line 200
    .line 201
    :cond_d
    add-long v12, v12, v19

    .line 202
    .line 203
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-le v3, v5, :cond_4

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_e
    const/4 v6, 0x3

    .line 211
    const-wide/16 v19, 0x2

    .line 212
    .line 213
    if-ge v4, v6, :cond_f

    .line 214
    .line 215
    invoke-static {v3, v4, v12, v13, v0}, Lcom/google/protobuf/b1;->h(IIJ[B)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    goto :goto_7

    .line 220
    :cond_f
    add-int/lit8 v1, v1, -0x4

    .line 221
    .line 222
    add-long v14, v12, p2

    .line 223
    .line 224
    invoke-static {v0, v12, v13}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-gt v4, v5, :cond_10

    .line 229
    .line 230
    shl-int/lit8 v3, v3, 0x1c

    .line 231
    .line 232
    add-int/lit8 v4, v4, 0x70

    .line 233
    .line 234
    add-int/2addr v4, v3

    .line 235
    shr-int/lit8 v3, v4, 0x1e

    .line 236
    .line 237
    if-nez v3, :cond_10

    .line 238
    .line 239
    add-long v3, v12, v19

    .line 240
    .line 241
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-gt v6, v5, :cond_10

    .line 246
    .line 247
    const-wide/16 v14, 0x3

    .line 248
    .line 249
    add-long/2addr v12, v14

    .line 250
    invoke-static {v0, v3, v4}, Lcom/google/protobuf/a1;->c([BJ)B

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-le v3, v5, :cond_4

    .line 255
    .line 256
    :cond_10
    :goto_6
    const/4 v6, -0x1

    .line 257
    :goto_7
    return v6

    .line 258
    :cond_11
    const/16 v16, 0x0

    .line 259
    .line 260
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 261
    .line 262
    array-length v0, v0

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    const/4 v6, 0x3

    .line 276
    new-array v5, v6, [Ljava/lang/Object;

    .line 277
    .line 278
    aput-object v0, v5, v16

    .line 279
    .line 280
    const/4 v0, 0x1

    .line 281
    aput-object v1, v5, v0

    .line 282
    .line 283
    const/16 v17, 0x2

    .line 284
    .line 285
    aput-object v3, v5, v17

    .line 286
    .line 287
    const-string v0, "Array length=%d, index=%d, limit=%d"

    .line 288
    .line 289
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-direct {v4, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v4

    .line 297
    :pswitch_0
    const/16 v16, 0x0

    .line 298
    .line 299
    :goto_8
    if-ge v1, v3, :cond_12

    .line 300
    .line 301
    aget-byte v4, v0, v1

    .line 302
    .line 303
    if-ltz v4, :cond_12

    .line 304
    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_12
    if-lt v1, v3, :cond_13

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_13
    :goto_9
    if-lt v1, v3, :cond_14

    .line 312
    .line 313
    :goto_a
    const/4 v6, 0x0

    .line 314
    goto :goto_c

    .line 315
    :cond_14
    add-int/lit8 v4, v1, 0x1

    .line 316
    .line 317
    aget-byte v6, v0, v1

    .line 318
    .line 319
    if-gez v6, :cond_1d

    .line 320
    .line 321
    if-ge v6, v7, :cond_16

    .line 322
    .line 323
    if-lt v4, v3, :cond_15

    .line 324
    .line 325
    goto :goto_c

    .line 326
    :cond_15
    if-lt v6, v9, :cond_1c

    .line 327
    .line 328
    add-int/lit8 v1, v1, 0x2

    .line 329
    .line 330
    aget-byte v4, v0, v4

    .line 331
    .line 332
    if-le v4, v5, :cond_13

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_16
    if-ge v6, v10, :cond_1a

    .line 336
    .line 337
    add-int/lit8 v12, v3, -0x1

    .line 338
    .line 339
    if-lt v4, v12, :cond_17

    .line 340
    .line 341
    invoke-static {v0, v4, v3}, Lcom/google/protobuf/d1;->a([BII)I

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    goto :goto_c

    .line 346
    :cond_17
    add-int/lit8 v12, v1, 0x2

    .line 347
    .line 348
    aget-byte v4, v0, v4

    .line 349
    .line 350
    if-gt v4, v5, :cond_1c

    .line 351
    .line 352
    if-ne v6, v7, :cond_18

    .line 353
    .line 354
    if-lt v4, v8, :cond_1c

    .line 355
    .line 356
    :cond_18
    if-ne v6, v11, :cond_19

    .line 357
    .line 358
    if-ge v4, v8, :cond_1c

    .line 359
    .line 360
    :cond_19
    add-int/lit8 v1, v1, 0x3

    .line 361
    .line 362
    aget-byte v4, v0, v12

    .line 363
    .line 364
    if-le v4, v5, :cond_13

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_1a
    add-int/lit8 v12, v3, -0x2

    .line 368
    .line 369
    if-lt v4, v12, :cond_1b

    .line 370
    .line 371
    invoke-static {v0, v4, v3}, Lcom/google/protobuf/d1;->a([BII)I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    goto :goto_c

    .line 376
    :cond_1b
    add-int/lit8 v12, v1, 0x2

    .line 377
    .line 378
    aget-byte v4, v0, v4

    .line 379
    .line 380
    if-gt v4, v5, :cond_1c

    .line 381
    .line 382
    shl-int/lit8 v6, v6, 0x1c

    .line 383
    .line 384
    add-int/lit8 v4, v4, 0x70

    .line 385
    .line 386
    add-int/2addr v4, v6

    .line 387
    shr-int/lit8 v4, v4, 0x1e

    .line 388
    .line 389
    if-nez v4, :cond_1c

    .line 390
    .line 391
    add-int/lit8 v4, v1, 0x3

    .line 392
    .line 393
    aget-byte v6, v0, v12

    .line 394
    .line 395
    if-gt v6, v5, :cond_1c

    .line 396
    .line 397
    add-int/lit8 v1, v1, 0x4

    .line 398
    .line 399
    aget-byte v4, v0, v4

    .line 400
    .line 401
    if-le v4, v5, :cond_13

    .line 402
    .line 403
    :cond_1c
    :goto_b
    const/4 v6, -0x1

    .line 404
    :goto_c
    return v6

    .line 405
    :cond_1d
    move v1, v4

    .line 406
    goto :goto_9

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
