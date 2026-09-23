.class public final Ll8/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lfc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lac/g0;->a:Lhc/e;

    .line 2
    .line 3
    sget-object v0, Lhc/d;->c:Lhc/d;

    .line 4
    .line 5
    invoke-static {}, Lac/z;->b()Lac/l1;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Ll8/c;->a:Lfc/c;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Ll6/b;->a:[I

    .line 4
    .line 5
    const-string v2, "content"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Lr8/j;

    .line 16
    .line 17
    sget-object v5, Lm5/e;->c:Lm5/e;

    .line 18
    .line 19
    invoke-direct {v4, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Ls8/c0;->I(Lr8/j;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_7d

    .line 31
    .line 32
    sget-object v4, Lm5/e;->a:Lm5/e;

    .line 33
    .line 34
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_5

    .line 39
    .line 40
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    const-string v6, "L"

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v6, "M"

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    const/4 v4, 0x2

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v6, "Q"

    .line 70
    .line 71
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const-string v6, "H"

    .line 80
    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    const/4 v4, 0x4

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string v1, "No enum constant com.google.zxing.qrcode.decoder.ErrorCorrectionLevel."

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 102
    .line 103
    const-string v1, "Name is null"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_5
    :goto_0
    const/4 v4, 0x1

    .line 110
    :goto_1
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_6

    .line 115
    .line 116
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    const/4 v5, 0x4

    .line 130
    :goto_2
    sget-object v6, Lm5/e;->b:Lm5/e;

    .line 131
    .line 132
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_7

    .line 137
    .line 138
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    const-string v6, "ISO-8859-1"

    .line 148
    .line 149
    :goto_3
    const-string v10, "Shift_JIS"

    .line 150
    .line 151
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    const/16 v12, 0x60

    .line 156
    .line 157
    const/16 v15, 0x30

    .line 158
    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    sget-object v14, Lj6/f;->g:Lj6/f;

    .line 162
    .line 163
    if-eqz v11, :cond_c

    .line 164
    .line 165
    :try_start_0
    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 166
    .line 167
    .line 168
    move-result-object v11
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    array-length v8, v11

    .line 170
    rem-int/lit8 v18, v8, 0x2

    .line 171
    .line 172
    if-eqz v18, :cond_8

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_8
    const/4 v2, 0x0

    .line 176
    :goto_4
    if-ge v2, v8, :cond_b

    .line 177
    .line 178
    aget-byte v7, v11, v2

    .line 179
    .line 180
    and-int/lit16 v7, v7, 0xff

    .line 181
    .line 182
    const/16 v13, 0x81

    .line 183
    .line 184
    if-lt v7, v13, :cond_9

    .line 185
    .line 186
    const/16 v13, 0x9f

    .line 187
    .line 188
    if-le v7, v13, :cond_a

    .line 189
    .line 190
    :cond_9
    const/16 v13, 0xe0

    .line 191
    .line 192
    if-lt v7, v13, :cond_c

    .line 193
    .line 194
    const/16 v13, 0xeb

    .line 195
    .line 196
    if-le v7, v13, :cond_a

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_a
    add-int/lit8 v2, v2, 0x2

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_b
    sget-object v2, Lj6/f;->i:Lj6/f;

    .line 203
    .line 204
    goto :goto_a

    .line 205
    :catch_0
    nop

    .line 206
    :cond_c
    :goto_5
    const/4 v2, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    const/4 v8, 0x0

    .line 209
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-ge v2, v11, :cond_10

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-lt v11, v15, :cond_d

    .line 220
    .line 221
    const/16 v13, 0x39

    .line 222
    .line 223
    if-gt v11, v13, :cond_d

    .line 224
    .line 225
    const/4 v8, 0x1

    .line 226
    goto :goto_9

    .line 227
    :cond_d
    if-ge v11, v12, :cond_e

    .line 228
    .line 229
    aget v7, v1, v11

    .line 230
    .line 231
    :goto_7
    const/4 v11, -0x1

    .line 232
    goto :goto_8

    .line 233
    :cond_e
    const/4 v7, -0x1

    .line 234
    goto :goto_7

    .line 235
    :goto_8
    if-eq v7, v11, :cond_f

    .line 236
    .line 237
    const/4 v7, 0x1

    .line 238
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_f
    move-object v2, v14

    .line 242
    goto :goto_a

    .line 243
    :cond_10
    if-eqz v7, :cond_11

    .line 244
    .line 245
    sget-object v2, Lj6/f;->e:Lj6/f;

    .line 246
    .line 247
    goto :goto_a

    .line 248
    :cond_11
    if-eqz v8, :cond_f

    .line 249
    .line 250
    sget-object v2, Lj6/f;->d:Lj6/f;

    .line 251
    .line 252
    :goto_a
    new-instance v7, Ls5/a;

    .line 253
    .line 254
    invoke-direct {v7}, Ls5/a;-><init>()V

    .line 255
    .line 256
    .line 257
    const/4 v8, 0x7

    .line 258
    const/16 v11, 0x8

    .line 259
    .line 260
    if-ne v2, v14, :cond_12

    .line 261
    .line 262
    if-eqz v9, :cond_12

    .line 263
    .line 264
    sget-object v9, Ls5/c;->d:Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    check-cast v9, Ls5/c;

    .line 271
    .line 272
    if-eqz v9, :cond_12

    .line 273
    .line 274
    const/4 v13, 0x4

    .line 275
    invoke-virtual {v7, v8, v13}, Ls5/a;->b(II)V

    .line 276
    .line 277
    .line 278
    iget-object v9, v9, Ls5/c;->a:[I

    .line 279
    .line 280
    aget v9, v9, v16

    .line 281
    .line 282
    invoke-virtual {v7, v9, v11}, Ls5/a;->b(II)V

    .line 283
    .line 284
    .line 285
    :cond_12
    sget-object v9, Lm5/e;->f:Lm5/e;

    .line 286
    .line 287
    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-eqz v13, :cond_13

    .line 292
    .line 293
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-eqz v9, :cond_13

    .line 306
    .line 307
    const/4 v9, 0x5

    .line 308
    const/4 v13, 0x4

    .line 309
    invoke-virtual {v7, v9, v13}, Ls5/a;->b(II)V

    .line 310
    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_13
    const/4 v13, 0x4

    .line 314
    :goto_b
    iget v9, v2, Lj6/f;->b:I

    .line 315
    .line 316
    invoke-virtual {v7, v9, v13}, Ls5/a;->b(II)V

    .line 317
    .line 318
    .line 319
    new-instance v9, Ls5/a;

    .line 320
    .line 321
    invoke-direct {v9}, Ls5/a;-><init>()V

    .line 322
    .line 323
    .line 324
    const/16 v21, 0x30

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 327
    .line 328
    .line 329
    move-result v15

    .line 330
    const/4 v8, 0x1

    .line 331
    const/16 v23, 0xa

    .line 332
    .line 333
    if-eq v15, v8, :cond_21

    .line 334
    .line 335
    const/16 v18, 0x1

    .line 336
    .line 337
    const/4 v8, 0x6

    .line 338
    const/4 v12, 0x2

    .line 339
    if-eq v15, v12, :cond_1b

    .line 340
    .line 341
    if-eq v15, v13, :cond_1a

    .line 342
    .line 343
    if-ne v15, v8, :cond_19

    .line 344
    .line 345
    :try_start_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 346
    .line 347
    .line 348
    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    array-length v6, v1

    .line 350
    rem-int/2addr v6, v12

    .line 351
    if-nez v6, :cond_18

    .line 352
    .line 353
    array-length v6, v1

    .line 354
    add-int/lit8 v6, v6, -0x1

    .line 355
    .line 356
    const/4 v8, 0x0

    .line 357
    :goto_c
    if-ge v8, v6, :cond_17

    .line 358
    .line 359
    aget-byte v10, v1, v8

    .line 360
    .line 361
    and-int/lit16 v10, v10, 0xff

    .line 362
    .line 363
    add-int/lit8 v12, v8, 0x1

    .line 364
    .line 365
    aget-byte v12, v1, v12

    .line 366
    .line 367
    and-int/lit16 v12, v12, 0xff

    .line 368
    .line 369
    shl-int/2addr v10, v11

    .line 370
    or-int/2addr v10, v12

    .line 371
    const v12, 0x8140

    .line 372
    .line 373
    .line 374
    if-lt v10, v12, :cond_14

    .line 375
    .line 376
    const v13, 0x9ffc

    .line 377
    .line 378
    .line 379
    if-gt v10, v13, :cond_14

    .line 380
    .line 381
    :goto_d
    sub-int/2addr v10, v12

    .line 382
    :goto_e
    const/4 v12, -0x1

    .line 383
    goto :goto_f

    .line 384
    :cond_14
    const v12, 0xe040

    .line 385
    .line 386
    .line 387
    if-lt v10, v12, :cond_15

    .line 388
    .line 389
    const v12, 0xebbf

    .line 390
    .line 391
    .line 392
    if-gt v10, v12, :cond_15

    .line 393
    .line 394
    const v12, 0xc140

    .line 395
    .line 396
    .line 397
    goto :goto_d

    .line 398
    :cond_15
    const/4 v10, -0x1

    .line 399
    goto :goto_e

    .line 400
    :goto_f
    if-eq v10, v12, :cond_16

    .line 401
    .line 402
    shr-int/lit8 v12, v10, 0x8

    .line 403
    .line 404
    mul-int/lit16 v12, v12, 0xc0

    .line 405
    .line 406
    and-int/lit16 v10, v10, 0xff

    .line 407
    .line 408
    add-int/2addr v12, v10

    .line 409
    const/16 v10, 0xd

    .line 410
    .line 411
    invoke-virtual {v9, v12, v10}, Ls5/a;->b(II)V

    .line 412
    .line 413
    .line 414
    add-int/lit8 v8, v8, 0x2

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_16
    new-instance v0, Lm5/q;

    .line 418
    .line 419
    const-string v1, "Invalid byte sequence"

    .line 420
    .line 421
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw v0

    .line 425
    :cond_17
    const/16 v24, 0x8

    .line 426
    .line 427
    goto/16 :goto_18

    .line 428
    .line 429
    :cond_18
    new-instance v0, Lm5/q;

    .line 430
    .line 431
    const-string v1, "Kanji byte size not even"

    .line 432
    .line 433
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v0

    .line 437
    :catch_1
    move-exception v0

    .line 438
    new-instance v1, Lm5/q;

    .line 439
    .line 440
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 441
    .line 442
    .line 443
    throw v1

    .line 444
    :cond_19
    new-instance v0, Lm5/q;

    .line 445
    .line 446
    const-string v1, "Invalid mode: "

    .line 447
    .line 448
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw v0

    .line 460
    :cond_1a
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 461
    .line 462
    .line 463
    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 464
    array-length v6, v1

    .line 465
    const/4 v8, 0x0

    .line 466
    :goto_10
    if-ge v8, v6, :cond_17

    .line 467
    .line 468
    aget-byte v10, v1, v8

    .line 469
    .line 470
    invoke-virtual {v9, v10, v11}, Ls5/a;->b(II)V

    .line 471
    .line 472
    .line 473
    add-int/lit8 v8, v8, 0x1

    .line 474
    .line 475
    goto :goto_10

    .line 476
    :catch_2
    move-exception v0

    .line 477
    new-instance v1, Lm5/q;

    .line 478
    .line 479
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 480
    .line 481
    .line 482
    throw v1

    .line 483
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    const/4 v10, 0x0

    .line 488
    :goto_11
    if-ge v10, v6, :cond_17

    .line 489
    .line 490
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 491
    .line 492
    .line 493
    move-result v12

    .line 494
    const/16 v13, 0x60

    .line 495
    .line 496
    if-ge v12, v13, :cond_1c

    .line 497
    .line 498
    aget v12, v1, v12

    .line 499
    .line 500
    :goto_12
    const/4 v15, -0x1

    .line 501
    goto :goto_13

    .line 502
    :cond_1c
    const/4 v12, -0x1

    .line 503
    goto :goto_12

    .line 504
    :goto_13
    if-eq v12, v15, :cond_20

    .line 505
    .line 506
    const/16 v24, 0x8

    .line 507
    .line 508
    add-int/lit8 v11, v10, 0x1

    .line 509
    .line 510
    if-ge v11, v6, :cond_1f

    .line 511
    .line 512
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 513
    .line 514
    .line 515
    move-result v11

    .line 516
    if-ge v11, v13, :cond_1d

    .line 517
    .line 518
    aget v20, v1, v11

    .line 519
    .line 520
    move/from16 v11, v20

    .line 521
    .line 522
    goto :goto_14

    .line 523
    :cond_1d
    const/4 v11, -0x1

    .line 524
    :goto_14
    if-eq v11, v15, :cond_1e

    .line 525
    .line 526
    mul-int/lit8 v12, v12, 0x2d

    .line 527
    .line 528
    add-int/2addr v12, v11

    .line 529
    const/16 v11, 0xb

    .line 530
    .line 531
    invoke-virtual {v9, v12, v11}, Ls5/a;->b(II)V

    .line 532
    .line 533
    .line 534
    add-int/lit8 v10, v10, 0x2

    .line 535
    .line 536
    :goto_15
    const/16 v11, 0x8

    .line 537
    .line 538
    goto :goto_11

    .line 539
    :cond_1e
    new-instance v0, Lm5/q;

    .line 540
    .line 541
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 542
    .line 543
    .line 544
    throw v0

    .line 545
    :cond_1f
    invoke-virtual {v9, v12, v8}, Ls5/a;->b(II)V

    .line 546
    .line 547
    .line 548
    move v10, v11

    .line 549
    goto :goto_15

    .line 550
    :cond_20
    new-instance v0, Lm5/q;

    .line 551
    .line 552
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 553
    .line 554
    .line 555
    throw v0

    .line 556
    :cond_21
    const/16 v24, 0x8

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    const/4 v6, 0x0

    .line 563
    :goto_16
    if-ge v6, v1, :cond_24

    .line 564
    .line 565
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 566
    .line 567
    .line 568
    move-result v8

    .line 569
    add-int/lit8 v8, v8, -0x30

    .line 570
    .line 571
    add-int/lit8 v10, v6, 0x2

    .line 572
    .line 573
    if-ge v10, v1, :cond_22

    .line 574
    .line 575
    add-int/lit8 v11, v6, 0x1

    .line 576
    .line 577
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 578
    .line 579
    .line 580
    move-result v11

    .line 581
    add-int/lit8 v11, v11, -0x30

    .line 582
    .line 583
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 584
    .line 585
    .line 586
    move-result v10

    .line 587
    add-int/lit8 v10, v10, -0x30

    .line 588
    .line 589
    mul-int/lit8 v8, v8, 0x64

    .line 590
    .line 591
    mul-int/lit8 v11, v11, 0xa

    .line 592
    .line 593
    add-int/2addr v11, v8

    .line 594
    add-int/2addr v11, v10

    .line 595
    const/16 v8, 0xa

    .line 596
    .line 597
    invoke-virtual {v9, v11, v8}, Ls5/a;->b(II)V

    .line 598
    .line 599
    .line 600
    add-int/lit8 v6, v6, 0x3

    .line 601
    .line 602
    :goto_17
    const/16 v23, 0xa

    .line 603
    .line 604
    goto :goto_16

    .line 605
    :cond_22
    add-int/lit8 v6, v6, 0x1

    .line 606
    .line 607
    if-ge v6, v1, :cond_23

    .line 608
    .line 609
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    add-int/lit8 v6, v6, -0x30

    .line 614
    .line 615
    mul-int/lit8 v8, v8, 0xa

    .line 616
    .line 617
    add-int/2addr v8, v6

    .line 618
    const/4 v6, 0x7

    .line 619
    invoke-virtual {v9, v8, v6}, Ls5/a;->b(II)V

    .line 620
    .line 621
    .line 622
    move v6, v10

    .line 623
    goto :goto_17

    .line 624
    :cond_23
    const/4 v13, 0x4

    .line 625
    invoke-virtual {v9, v8, v13}, Ls5/a;->b(II)V

    .line 626
    .line 627
    .line 628
    goto :goto_17

    .line 629
    :cond_24
    :goto_18
    sget-object v1, Lm5/e;->d:Lm5/e;

    .line 630
    .line 631
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v6

    .line 635
    if-eqz v6, :cond_28

    .line 636
    .line 637
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    invoke-static {v1}, Lj6/h;->c(I)Lj6/h;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    iget v6, v7, Ls5/a;->b:I

    .line 654
    .line 655
    invoke-virtual {v2, v1}, Lj6/f;->a(Lj6/h;)I

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    add-int/2addr v8, v6

    .line 660
    iget v6, v9, Ls5/a;->b:I

    .line 661
    .line 662
    add-int/2addr v8, v6

    .line 663
    iget v6, v1, Lj6/h;->d:I

    .line 664
    .line 665
    iget-object v10, v1, Lj6/h;->c:[Lj/g;

    .line 666
    .line 667
    invoke-static {v4}, Le1/d;->b(I)I

    .line 668
    .line 669
    .line 670
    move-result v11

    .line 671
    aget-object v10, v10, v11

    .line 672
    .line 673
    iget v11, v10, Lj/g;->b:I

    .line 674
    .line 675
    iget-object v10, v10, Lj/g;->c:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast v10, [Ld6/i;

    .line 678
    .line 679
    array-length v12, v10

    .line 680
    const/4 v13, 0x0

    .line 681
    const/4 v15, 0x0

    .line 682
    :goto_19
    if-ge v13, v12, :cond_25

    .line 683
    .line 684
    aget-object v0, v10, v13

    .line 685
    .line 686
    iget v0, v0, Ld6/i;->b:I

    .line 687
    .line 688
    add-int/2addr v15, v0

    .line 689
    add-int/lit8 v13, v13, 0x1

    .line 690
    .line 691
    move-object/from16 v0, p0

    .line 692
    .line 693
    goto :goto_19

    .line 694
    :cond_25
    mul-int v15, v15, v11

    .line 695
    .line 696
    sub-int/2addr v6, v15

    .line 697
    const/16 v22, 0x7

    .line 698
    .line 699
    add-int/lit8 v8, v8, 0x7

    .line 700
    .line 701
    div-int/lit8 v8, v8, 0x8

    .line 702
    .line 703
    if-lt v6, v8, :cond_26

    .line 704
    .line 705
    const/4 v0, 0x1

    .line 706
    goto :goto_1a

    .line 707
    :cond_26
    const/4 v0, 0x0

    .line 708
    :goto_1a
    if-eqz v0, :cond_27

    .line 709
    .line 710
    goto/16 :goto_1f

    .line 711
    .line 712
    :cond_27
    new-instance v0, Lm5/q;

    .line 713
    .line 714
    const-string v1, "Data too big for requested version"

    .line 715
    .line 716
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    throw v0

    .line 720
    :cond_28
    const/16 v18, 0x1

    .line 721
    .line 722
    invoke-static/range {v18 .. v18}, Lj6/h;->c(I)Lj6/h;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    iget v1, v7, Ls5/a;->b:I

    .line 727
    .line 728
    invoke-virtual {v2, v0}, Lj6/f;->a(Lj6/h;)I

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    add-int/2addr v0, v1

    .line 733
    iget v1, v9, Ls5/a;->b:I

    .line 734
    .line 735
    add-int/2addr v0, v1

    .line 736
    const/4 v8, 0x1

    .line 737
    :goto_1b
    const-string v1, "Data too big"

    .line 738
    .line 739
    const/16 v6, 0x28

    .line 740
    .line 741
    if-gt v8, v6, :cond_7c

    .line 742
    .line 743
    invoke-static {v8}, Lj6/h;->c(I)Lj6/h;

    .line 744
    .line 745
    .line 746
    move-result-object v10

    .line 747
    iget v11, v10, Lj6/h;->d:I

    .line 748
    .line 749
    iget-object v12, v10, Lj6/h;->c:[Lj/g;

    .line 750
    .line 751
    invoke-static {v4}, Le1/d;->b(I)I

    .line 752
    .line 753
    .line 754
    move-result v13

    .line 755
    aget-object v12, v12, v13

    .line 756
    .line 757
    iget v13, v12, Lj/g;->b:I

    .line 758
    .line 759
    iget-object v12, v12, Lj/g;->c:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast v12, [Ld6/i;

    .line 762
    .line 763
    array-length v15, v12

    .line 764
    const/4 v6, 0x0

    .line 765
    const/16 v25, 0x0

    .line 766
    .line 767
    :goto_1c
    if-ge v6, v15, :cond_29

    .line 768
    .line 769
    move/from16 v26, v0

    .line 770
    .line 771
    aget-object v0, v12, v6

    .line 772
    .line 773
    iget v0, v0, Ld6/i;->b:I

    .line 774
    .line 775
    add-int v25, v25, v0

    .line 776
    .line 777
    add-int/lit8 v6, v6, 0x1

    .line 778
    .line 779
    move/from16 v0, v26

    .line 780
    .line 781
    goto :goto_1c

    .line 782
    :cond_29
    move/from16 v26, v0

    .line 783
    .line 784
    mul-int v25, v25, v13

    .line 785
    .line 786
    sub-int v11, v11, v25

    .line 787
    .line 788
    const/16 v22, 0x7

    .line 789
    .line 790
    add-int/lit8 v0, v26, 0x7

    .line 791
    .line 792
    div-int/lit8 v0, v0, 0x8

    .line 793
    .line 794
    if-lt v11, v0, :cond_7b

    .line 795
    .line 796
    iget v0, v7, Ls5/a;->b:I

    .line 797
    .line 798
    invoke-virtual {v2, v10}, Lj6/f;->a(Lj6/h;)I

    .line 799
    .line 800
    .line 801
    move-result v6

    .line 802
    add-int/2addr v6, v0

    .line 803
    iget v0, v9, Ls5/a;->b:I

    .line 804
    .line 805
    add-int/2addr v6, v0

    .line 806
    const/4 v8, 0x1

    .line 807
    :goto_1d
    const/16 v0, 0x28

    .line 808
    .line 809
    if-gt v8, v0, :cond_7a

    .line 810
    .line 811
    invoke-static {v8}, Lj6/h;->c(I)Lj6/h;

    .line 812
    .line 813
    .line 814
    move-result-object v10

    .line 815
    iget v11, v10, Lj6/h;->d:I

    .line 816
    .line 817
    iget-object v12, v10, Lj6/h;->c:[Lj/g;

    .line 818
    .line 819
    invoke-static {v4}, Le1/d;->b(I)I

    .line 820
    .line 821
    .line 822
    move-result v13

    .line 823
    aget-object v12, v12, v13

    .line 824
    .line 825
    iget v13, v12, Lj/g;->b:I

    .line 826
    .line 827
    iget-object v12, v12, Lj/g;->c:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v12, [Ld6/i;

    .line 830
    .line 831
    array-length v15, v12

    .line 832
    const/4 v0, 0x0

    .line 833
    const/16 v25, 0x0

    .line 834
    .line 835
    :goto_1e
    if-ge v0, v15, :cond_2a

    .line 836
    .line 837
    move/from16 v26, v0

    .line 838
    .line 839
    aget-object v0, v12, v26

    .line 840
    .line 841
    iget v0, v0, Ld6/i;->b:I

    .line 842
    .line 843
    add-int v25, v25, v0

    .line 844
    .line 845
    add-int/lit8 v0, v26, 0x1

    .line 846
    .line 847
    goto :goto_1e

    .line 848
    :cond_2a
    mul-int v25, v25, v13

    .line 849
    .line 850
    sub-int v11, v11, v25

    .line 851
    .line 852
    const/16 v22, 0x7

    .line 853
    .line 854
    add-int/lit8 v0, v6, 0x7

    .line 855
    .line 856
    div-int/lit8 v0, v0, 0x8

    .line 857
    .line 858
    if-lt v11, v0, :cond_79

    .line 859
    .line 860
    move-object v1, v10

    .line 861
    :goto_1f
    iget v0, v1, Lj6/h;->d:I

    .line 862
    .line 863
    new-instance v6, Ls5/a;

    .line 864
    .line 865
    invoke-direct {v6}, Ls5/a;-><init>()V

    .line 866
    .line 867
    .line 868
    iget v8, v7, Ls5/a;->b:I

    .line 869
    .line 870
    invoke-virtual {v6, v8}, Ls5/a;->c(I)V

    .line 871
    .line 872
    .line 873
    const/4 v10, 0x0

    .line 874
    :goto_20
    if-ge v10, v8, :cond_2b

    .line 875
    .line 876
    invoke-virtual {v7, v10}, Ls5/a;->d(I)Z

    .line 877
    .line 878
    .line 879
    move-result v11

    .line 880
    invoke-virtual {v6, v11}, Ls5/a;->a(Z)V

    .line 881
    .line 882
    .line 883
    add-int/lit8 v10, v10, 0x1

    .line 884
    .line 885
    goto :goto_20

    .line 886
    :cond_2b
    if-ne v2, v14, :cond_2c

    .line 887
    .line 888
    invoke-virtual {v9}, Ls5/a;->g()I

    .line 889
    .line 890
    .line 891
    move-result v7

    .line 892
    goto :goto_21

    .line 893
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 894
    .line 895
    .line 896
    move-result v7

    .line 897
    :goto_21
    invoke-virtual {v2, v1}, Lj6/f;->a(Lj6/h;)I

    .line 898
    .line 899
    .line 900
    move-result v2

    .line 901
    const/16 v18, 0x1

    .line 902
    .line 903
    shl-int v8, v18, v2

    .line 904
    .line 905
    if-ge v7, v8, :cond_78

    .line 906
    .line 907
    invoke-virtual {v6, v7, v2}, Ls5/a;->b(II)V

    .line 908
    .line 909
    .line 910
    iget v2, v9, Ls5/a;->b:I

    .line 911
    .line 912
    iget v7, v6, Ls5/a;->b:I

    .line 913
    .line 914
    add-int/2addr v7, v2

    .line 915
    invoke-virtual {v6, v7}, Ls5/a;->c(I)V

    .line 916
    .line 917
    .line 918
    const/4 v7, 0x0

    .line 919
    :goto_22
    if-ge v7, v2, :cond_2d

    .line 920
    .line 921
    invoke-virtual {v9, v7}, Ls5/a;->d(I)Z

    .line 922
    .line 923
    .line 924
    move-result v8

    .line 925
    invoke-virtual {v6, v8}, Ls5/a;->a(Z)V

    .line 926
    .line 927
    .line 928
    add-int/lit8 v7, v7, 0x1

    .line 929
    .line 930
    goto :goto_22

    .line 931
    :cond_2d
    iget-object v2, v1, Lj6/h;->c:[Lj/g;

    .line 932
    .line 933
    invoke-static {v4}, Le1/d;->b(I)I

    .line 934
    .line 935
    .line 936
    move-result v7

    .line 937
    aget-object v2, v2, v7

    .line 938
    .line 939
    iget v7, v2, Lj/g;->b:I

    .line 940
    .line 941
    iget-object v2, v2, Lj/g;->c:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v2, [Ld6/i;

    .line 944
    .line 945
    array-length v8, v2

    .line 946
    const/4 v9, 0x0

    .line 947
    const/4 v10, 0x0

    .line 948
    :goto_23
    if-ge v9, v8, :cond_2e

    .line 949
    .line 950
    aget-object v11, v2, v9

    .line 951
    .line 952
    iget v11, v11, Ld6/i;->b:I

    .line 953
    .line 954
    add-int/2addr v10, v11

    .line 955
    add-int/lit8 v9, v9, 0x1

    .line 956
    .line 957
    goto :goto_23

    .line 958
    :cond_2e
    mul-int v10, v10, v7

    .line 959
    .line 960
    sub-int v7, v0, v10

    .line 961
    .line 962
    shl-int/lit8 v8, v7, 0x3

    .line 963
    .line 964
    iget v9, v6, Ls5/a;->b:I

    .line 965
    .line 966
    if-gt v9, v8, :cond_77

    .line 967
    .line 968
    const/4 v9, 0x0

    .line 969
    :goto_24
    const/4 v13, 0x4

    .line 970
    if-ge v9, v13, :cond_2f

    .line 971
    .line 972
    iget v10, v6, Ls5/a;->b:I

    .line 973
    .line 974
    if-ge v10, v8, :cond_2f

    .line 975
    .line 976
    const/4 v10, 0x0

    .line 977
    invoke-virtual {v6, v10}, Ls5/a;->a(Z)V

    .line 978
    .line 979
    .line 980
    add-int/lit8 v9, v9, 0x1

    .line 981
    .line 982
    const/16 v16, 0x0

    .line 983
    .line 984
    goto :goto_24

    .line 985
    :cond_2f
    const/4 v10, 0x0

    .line 986
    iget v9, v6, Ls5/a;->b:I

    .line 987
    .line 988
    const/16 v22, 0x7

    .line 989
    .line 990
    and-int/lit8 v9, v9, 0x7

    .line 991
    .line 992
    if-lez v9, :cond_30

    .line 993
    .line 994
    :goto_25
    const/16 v11, 0x8

    .line 995
    .line 996
    if-ge v9, v11, :cond_30

    .line 997
    .line 998
    invoke-virtual {v6, v10}, Ls5/a;->a(Z)V

    .line 999
    .line 1000
    .line 1001
    add-int/lit8 v9, v9, 0x1

    .line 1002
    .line 1003
    const/4 v10, 0x0

    .line 1004
    goto :goto_25

    .line 1005
    :cond_30
    invoke-virtual {v6}, Ls5/a;->g()I

    .line 1006
    .line 1007
    .line 1008
    move-result v9

    .line 1009
    sub-int v9, v7, v9

    .line 1010
    .line 1011
    const/4 v10, 0x0

    .line 1012
    :goto_26
    if-ge v10, v9, :cond_32

    .line 1013
    .line 1014
    and-int/lit8 v12, v10, 0x1

    .line 1015
    .line 1016
    if-nez v12, :cond_31

    .line 1017
    .line 1018
    const/16 v11, 0xec

    .line 1019
    .line 1020
    :goto_27
    const/16 v12, 0x8

    .line 1021
    .line 1022
    goto :goto_28

    .line 1023
    :cond_31
    const/16 v11, 0x11

    .line 1024
    .line 1025
    goto :goto_27

    .line 1026
    :goto_28
    invoke-virtual {v6, v11, v12}, Ls5/a;->b(II)V

    .line 1027
    .line 1028
    .line 1029
    add-int/lit8 v10, v10, 0x1

    .line 1030
    .line 1031
    goto :goto_26

    .line 1032
    :cond_32
    iget v9, v6, Ls5/a;->b:I

    .line 1033
    .line 1034
    if-ne v9, v8, :cond_76

    .line 1035
    .line 1036
    array-length v8, v2

    .line 1037
    const/4 v9, 0x0

    .line 1038
    const/4 v10, 0x0

    .line 1039
    :goto_29
    if-ge v9, v8, :cond_33

    .line 1040
    .line 1041
    aget-object v12, v2, v9

    .line 1042
    .line 1043
    iget v12, v12, Ld6/i;->b:I

    .line 1044
    .line 1045
    add-int/2addr v10, v12

    .line 1046
    add-int/lit8 v9, v9, 0x1

    .line 1047
    .line 1048
    goto :goto_29

    .line 1049
    :cond_33
    invoke-virtual {v6}, Ls5/a;->g()I

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    if-ne v2, v7, :cond_75

    .line 1054
    .line 1055
    new-instance v2, Ljava/util/ArrayList;

    .line 1056
    .line 1057
    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1058
    .line 1059
    .line 1060
    const/4 v8, 0x0

    .line 1061
    const/4 v9, 0x0

    .line 1062
    const/4 v12, 0x0

    .line 1063
    const/4 v13, 0x0

    .line 1064
    :goto_2a
    if-ge v8, v10, :cond_4c

    .line 1065
    .line 1066
    const/4 v14, 0x1

    .line 1067
    new-array v15, v14, [I

    .line 1068
    .line 1069
    const/16 p0, 0x11

    .line 1070
    .line 1071
    new-array v11, v14, [I

    .line 1072
    .line 1073
    if-ge v8, v10, :cond_4b

    .line 1074
    .line 1075
    rem-int v14, v0, v10

    .line 1076
    .line 1077
    move/from16 v25, v5

    .line 1078
    .line 1079
    sub-int v5, v10, v14

    .line 1080
    .line 1081
    div-int v21, v0, v10

    .line 1082
    .line 1083
    add-int/lit8 v22, v21, 0x1

    .line 1084
    .line 1085
    div-int v26, v7, v10

    .line 1086
    .line 1087
    add-int/lit8 v27, v26, 0x1

    .line 1088
    .line 1089
    move-object/from16 v28, v11

    .line 1090
    .line 1091
    sub-int v11, v21, v26

    .line 1092
    .line 1093
    move/from16 v21, v14

    .line 1094
    .line 1095
    sub-int v14, v22, v27

    .line 1096
    .line 1097
    if-ne v11, v14, :cond_4a

    .line 1098
    .line 1099
    move/from16 v22, v11

    .line 1100
    .line 1101
    add-int v11, v5, v21

    .line 1102
    .line 1103
    if-ne v10, v11, :cond_49

    .line 1104
    .line 1105
    add-int v11, v26, v22

    .line 1106
    .line 1107
    mul-int v11, v11, v5

    .line 1108
    .line 1109
    add-int v29, v27, v14

    .line 1110
    .line 1111
    mul-int v29, v29, v21

    .line 1112
    .line 1113
    add-int v11, v29, v11

    .line 1114
    .line 1115
    if-ne v0, v11, :cond_48

    .line 1116
    .line 1117
    if-ge v8, v5, :cond_34

    .line 1118
    .line 1119
    const/16 v16, 0x0

    .line 1120
    .line 1121
    aput v26, v15, v16

    .line 1122
    .line 1123
    aput v22, v28, v16

    .line 1124
    .line 1125
    goto :goto_2b

    .line 1126
    :cond_34
    const/16 v16, 0x0

    .line 1127
    .line 1128
    aput v27, v15, v16

    .line 1129
    .line 1130
    aput v14, v28, v16

    .line 1131
    .line 1132
    :goto_2b
    aget v5, v15, v16

    .line 1133
    .line 1134
    new-array v11, v5, [B

    .line 1135
    .line 1136
    shl-int/lit8 v14, v9, 0x3

    .line 1137
    .line 1138
    move/from16 v21, v8

    .line 1139
    .line 1140
    const/4 v8, 0x0

    .line 1141
    :goto_2c
    if-ge v8, v5, :cond_37

    .line 1142
    .line 1143
    move/from16 v22, v8

    .line 1144
    .line 1145
    move/from16 v26, v10

    .line 1146
    .line 1147
    move-object/from16 v27, v15

    .line 1148
    .line 1149
    const/4 v8, 0x0

    .line 1150
    const/4 v10, 0x0

    .line 1151
    :goto_2d
    const/16 v15, 0x8

    .line 1152
    .line 1153
    if-ge v8, v15, :cond_36

    .line 1154
    .line 1155
    invoke-virtual {v6, v14}, Ls5/a;->d(I)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v15

    .line 1159
    if-eqz v15, :cond_35

    .line 1160
    .line 1161
    rsub-int/lit8 v15, v8, 0x7

    .line 1162
    .line 1163
    const/16 v18, 0x1

    .line 1164
    .line 1165
    shl-int v15, v18, v15

    .line 1166
    .line 1167
    or-int/2addr v10, v15

    .line 1168
    :cond_35
    add-int/lit8 v14, v14, 0x1

    .line 1169
    .line 1170
    add-int/lit8 v8, v8, 0x1

    .line 1171
    .line 1172
    goto :goto_2d

    .line 1173
    :cond_36
    int-to-byte v8, v10

    .line 1174
    aput-byte v8, v11, v22

    .line 1175
    .line 1176
    add-int/lit8 v8, v22, 0x1

    .line 1177
    .line 1178
    move/from16 v10, v26

    .line 1179
    .line 1180
    move-object/from16 v15, v27

    .line 1181
    .line 1182
    goto :goto_2c

    .line 1183
    :cond_37
    move/from16 v26, v10

    .line 1184
    .line 1185
    move-object/from16 v27, v15

    .line 1186
    .line 1187
    const/16 v16, 0x0

    .line 1188
    .line 1189
    aget v8, v28, v16

    .line 1190
    .line 1191
    add-int v10, v5, v8

    .line 1192
    .line 1193
    new-array v14, v10, [I

    .line 1194
    .line 1195
    const/4 v15, 0x0

    .line 1196
    :goto_2e
    if-ge v15, v5, :cond_38

    .line 1197
    .line 1198
    move/from16 v22, v10

    .line 1199
    .line 1200
    aget-byte v10, v11, v15

    .line 1201
    .line 1202
    and-int/lit16 v10, v10, 0xff

    .line 1203
    .line 1204
    aput v10, v14, v15

    .line 1205
    .line 1206
    add-int/lit8 v15, v15, 0x1

    .line 1207
    .line 1208
    move/from16 v10, v22

    .line 1209
    .line 1210
    goto :goto_2e

    .line 1211
    :cond_38
    move/from16 v22, v10

    .line 1212
    .line 1213
    sget-object v10, Lu5/a;->l:Lu5/a;

    .line 1214
    .line 1215
    new-instance v15, Ljava/util/ArrayList;

    .line 1216
    .line 1217
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .line 1219
    .line 1220
    move-object/from16 v28, v6

    .line 1221
    .line 1222
    new-instance v6, Lu5/b;

    .line 1223
    .line 1224
    move/from16 v29, v4

    .line 1225
    .line 1226
    const/16 v18, 0x1

    .line 1227
    .line 1228
    filled-new-array/range {v18 .. v18}, [I

    .line 1229
    .line 1230
    .line 1231
    move-result-object v4

    .line 1232
    invoke-direct {v6, v10, v4}, Lu5/b;-><init>(Lu5/a;[I)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    if-eqz v8, :cond_47

    .line 1239
    .line 1240
    sub-int v4, v22, v8

    .line 1241
    .line 1242
    if-lez v4, :cond_46

    .line 1243
    .line 1244
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1245
    .line 1246
    .line 1247
    move-result v6

    .line 1248
    if-lt v8, v6, :cond_3a

    .line 1249
    .line 1250
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1251
    .line 1252
    .line 1253
    move-result v6

    .line 1254
    add-int/lit8 v6, v6, -0x1

    .line 1255
    .line 1256
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v6

    .line 1260
    check-cast v6, Lu5/b;

    .line 1261
    .line 1262
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1263
    .line 1264
    .line 1265
    move-result v22

    .line 1266
    move-object/from16 v30, v3

    .line 1267
    .line 1268
    move/from16 v3, v22

    .line 1269
    .line 1270
    :goto_2f
    if-gt v3, v8, :cond_39

    .line 1271
    .line 1272
    move/from16 v22, v3

    .line 1273
    .line 1274
    new-instance v3, Lu5/b;

    .line 1275
    .line 1276
    add-int/lit8 v31, v22, -0x1

    .line 1277
    .line 1278
    move-object/from16 v32, v1

    .line 1279
    .line 1280
    iget v1, v10, Lu5/a;->g:I

    .line 1281
    .line 1282
    add-int v31, v31, v1

    .line 1283
    .line 1284
    iget-object v1, v10, Lu5/a;->a:[I

    .line 1285
    .line 1286
    aget v1, v1, v31

    .line 1287
    .line 1288
    move/from16 v31, v0

    .line 1289
    .line 1290
    const/4 v0, 0x1

    .line 1291
    filled-new-array {v0, v1}, [I

    .line 1292
    .line 1293
    .line 1294
    move-result-object v1

    .line 1295
    invoke-direct {v3, v10, v1}, Lu5/b;-><init>(Lu5/a;[I)V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v6, v3}, Lu5/b;->g(Lu5/b;)Lu5/b;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v6

    .line 1302
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    .line 1304
    .line 1305
    add-int/lit8 v3, v22, 0x1

    .line 1306
    .line 1307
    move/from16 v0, v31

    .line 1308
    .line 1309
    move-object/from16 v1, v32

    .line 1310
    .line 1311
    goto :goto_2f

    .line 1312
    :cond_39
    :goto_30
    move/from16 v31, v0

    .line 1313
    .line 1314
    move-object/from16 v32, v1

    .line 1315
    .line 1316
    goto :goto_31

    .line 1317
    :cond_3a
    move-object/from16 v30, v3

    .line 1318
    .line 1319
    goto :goto_30

    .line 1320
    :goto_31
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v0

    .line 1324
    check-cast v0, Lu5/b;

    .line 1325
    .line 1326
    new-array v1, v4, [I

    .line 1327
    .line 1328
    const/4 v3, 0x0

    .line 1329
    invoke-static {v14, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1330
    .line 1331
    .line 1332
    if-eqz v4, :cond_45

    .line 1333
    .line 1334
    const/4 v6, 0x1

    .line 1335
    if-le v4, v6, :cond_3c

    .line 1336
    .line 1337
    aget v6, v1, v3

    .line 1338
    .line 1339
    if-nez v6, :cond_3c

    .line 1340
    .line 1341
    const/4 v3, 0x1

    .line 1342
    :goto_32
    if-ge v3, v4, :cond_3b

    .line 1343
    .line 1344
    aget v6, v1, v3

    .line 1345
    .line 1346
    if-nez v6, :cond_3b

    .line 1347
    .line 1348
    add-int/lit8 v3, v3, 0x1

    .line 1349
    .line 1350
    goto :goto_32

    .line 1351
    :cond_3b
    if-ne v3, v4, :cond_3d

    .line 1352
    .line 1353
    const/4 v6, 0x0

    .line 1354
    filled-new-array {v6}, [I

    .line 1355
    .line 1356
    .line 1357
    move-result-object v1

    .line 1358
    :cond_3c
    move/from16 v22, v4

    .line 1359
    .line 1360
    goto :goto_33

    .line 1361
    :cond_3d
    const/4 v6, 0x0

    .line 1362
    sub-int v15, v4, v3

    .line 1363
    .line 1364
    move/from16 v22, v4

    .line 1365
    .line 1366
    new-array v4, v15, [I

    .line 1367
    .line 1368
    invoke-static {v1, v3, v4, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1369
    .line 1370
    .line 1371
    move-object v1, v4

    .line 1372
    :goto_33
    if-ltz v8, :cond_44

    .line 1373
    .line 1374
    array-length v3, v1

    .line 1375
    add-int v4, v3, v8

    .line 1376
    .line 1377
    new-array v4, v4, [I

    .line 1378
    .line 1379
    const/4 v6, 0x0

    .line 1380
    :goto_34
    if-ge v6, v3, :cond_3e

    .line 1381
    .line 1382
    aget v15, v1, v6

    .line 1383
    .line 1384
    move-object/from16 v33, v1

    .line 1385
    .line 1386
    const/4 v1, 0x1

    .line 1387
    invoke-virtual {v10, v15, v1}, Lu5/a;->c(II)I

    .line 1388
    .line 1389
    .line 1390
    move-result v15

    .line 1391
    aput v15, v4, v6

    .line 1392
    .line 1393
    add-int/lit8 v6, v6, 0x1

    .line 1394
    .line 1395
    move-object/from16 v1, v33

    .line 1396
    .line 1397
    goto :goto_34

    .line 1398
    :cond_3e
    new-instance v1, Lu5/b;

    .line 1399
    .line 1400
    invoke-direct {v1, v10, v4}, Lu5/b;-><init>(Lu5/a;[I)V

    .line 1401
    .line 1402
    .line 1403
    iget-object v3, v0, Lu5/b;->a:Lu5/a;

    .line 1404
    .line 1405
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v3

    .line 1409
    if-eqz v3, :cond_43

    .line 1410
    .line 1411
    invoke-virtual {v0}, Lu5/b;->e()Z

    .line 1412
    .line 1413
    .line 1414
    move-result v3

    .line 1415
    if-nez v3, :cond_42

    .line 1416
    .line 1417
    iget-object v3, v10, Lu5/a;->c:Lu5/b;

    .line 1418
    .line 1419
    invoke-virtual {v0}, Lu5/b;->d()I

    .line 1420
    .line 1421
    .line 1422
    move-result v4

    .line 1423
    invoke-virtual {v0, v4}, Lu5/b;->c(I)I

    .line 1424
    .line 1425
    .line 1426
    move-result v4

    .line 1427
    invoke-virtual {v10, v4}, Lu5/a;->b(I)I

    .line 1428
    .line 1429
    .line 1430
    move-result v4

    .line 1431
    :goto_35
    invoke-virtual {v1}, Lu5/b;->d()I

    .line 1432
    .line 1433
    .line 1434
    move-result v6

    .line 1435
    invoke-virtual {v0}, Lu5/b;->d()I

    .line 1436
    .line 1437
    .line 1438
    move-result v15

    .line 1439
    if-lt v6, v15, :cond_3f

    .line 1440
    .line 1441
    invoke-virtual {v1}, Lu5/b;->e()Z

    .line 1442
    .line 1443
    .line 1444
    move-result v6

    .line 1445
    if-nez v6, :cond_3f

    .line 1446
    .line 1447
    invoke-virtual {v1}, Lu5/b;->d()I

    .line 1448
    .line 1449
    .line 1450
    move-result v6

    .line 1451
    invoke-virtual {v0}, Lu5/b;->d()I

    .line 1452
    .line 1453
    .line 1454
    move-result v15

    .line 1455
    sub-int/2addr v6, v15

    .line 1456
    invoke-virtual {v1}, Lu5/b;->d()I

    .line 1457
    .line 1458
    .line 1459
    move-result v15

    .line 1460
    invoke-virtual {v1, v15}, Lu5/b;->c(I)I

    .line 1461
    .line 1462
    .line 1463
    move-result v15

    .line 1464
    invoke-virtual {v10, v15, v4}, Lu5/a;->c(II)I

    .line 1465
    .line 1466
    .line 1467
    move-result v15

    .line 1468
    move/from16 v33, v4

    .line 1469
    .line 1470
    invoke-virtual {v0, v6, v15}, Lu5/b;->h(II)Lu5/b;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v4

    .line 1474
    invoke-virtual {v10, v6, v15}, Lu5/a;->a(II)Lu5/b;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v6

    .line 1478
    invoke-virtual {v3, v6}, Lu5/b;->a(Lu5/b;)Lu5/b;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v3

    .line 1482
    invoke-virtual {v1, v4}, Lu5/b;->a(Lu5/b;)Lu5/b;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v1

    .line 1486
    move/from16 v4, v33

    .line 1487
    .line 1488
    goto :goto_35

    .line 1489
    :cond_3f
    const/4 v0, 0x2

    .line 1490
    new-array v4, v0, [Lu5/b;

    .line 1491
    .line 1492
    const/4 v6, 0x0

    .line 1493
    aput-object v3, v4, v6

    .line 1494
    .line 1495
    const/16 v18, 0x1

    .line 1496
    .line 1497
    aput-object v1, v4, v18

    .line 1498
    .line 1499
    aget-object v0, v4, v18

    .line 1500
    .line 1501
    iget-object v0, v0, Lu5/b;->b:[I

    .line 1502
    .line 1503
    array-length v1, v0

    .line 1504
    sub-int v1, v8, v1

    .line 1505
    .line 1506
    const/4 v3, 0x0

    .line 1507
    :goto_36
    if-ge v3, v1, :cond_40

    .line 1508
    .line 1509
    add-int v4, v22, v3

    .line 1510
    .line 1511
    aput v6, v14, v4

    .line 1512
    .line 1513
    add-int/lit8 v3, v3, 0x1

    .line 1514
    .line 1515
    goto :goto_36

    .line 1516
    :cond_40
    add-int v4, v22, v1

    .line 1517
    .line 1518
    array-length v1, v0

    .line 1519
    invoke-static {v0, v6, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1520
    .line 1521
    .line 1522
    new-array v0, v8, [B

    .line 1523
    .line 1524
    const/4 v1, 0x0

    .line 1525
    :goto_37
    if-ge v1, v8, :cond_41

    .line 1526
    .line 1527
    add-int v3, v5, v1

    .line 1528
    .line 1529
    aget v3, v14, v3

    .line 1530
    .line 1531
    int-to-byte v3, v3

    .line 1532
    aput-byte v3, v0, v1

    .line 1533
    .line 1534
    add-int/lit8 v1, v1, 0x1

    .line 1535
    .line 1536
    goto :goto_37

    .line 1537
    :cond_41
    new-instance v1, Ll6/a;

    .line 1538
    .line 1539
    invoke-direct {v1, v11, v0}, Ll6/a;-><init>([B[B)V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    .line 1544
    .line 1545
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 1546
    .line 1547
    .line 1548
    move-result v12

    .line 1549
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    .line 1550
    .line 1551
    .line 1552
    move-result v13

    .line 1553
    const/16 v16, 0x0

    .line 1554
    .line 1555
    aget v0, v27, v16

    .line 1556
    .line 1557
    add-int/2addr v9, v0

    .line 1558
    add-int/lit8 v8, v21, 0x1

    .line 1559
    .line 1560
    move/from16 v5, v25

    .line 1561
    .line 1562
    move/from16 v10, v26

    .line 1563
    .line 1564
    move-object/from16 v6, v28

    .line 1565
    .line 1566
    move/from16 v4, v29

    .line 1567
    .line 1568
    move-object/from16 v3, v30

    .line 1569
    .line 1570
    move/from16 v0, v31

    .line 1571
    .line 1572
    move-object/from16 v1, v32

    .line 1573
    .line 1574
    goto/16 :goto_2a

    .line 1575
    .line 1576
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1577
    .line 1578
    const-string v1, "Divide by 0"

    .line 1579
    .line 1580
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1581
    .line 1582
    .line 1583
    throw v0

    .line 1584
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1585
    .line 1586
    const-string v1, "GenericGFPolys do not have same GenericGF field"

    .line 1587
    .line 1588
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1589
    .line 1590
    .line 1591
    throw v0

    .line 1592
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1593
    .line 1594
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1595
    .line 1596
    .line 1597
    throw v0

    .line 1598
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1599
    .line 1600
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1601
    .line 1602
    .line 1603
    throw v0

    .line 1604
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1605
    .line 1606
    const-string v1, "No data bytes provided"

    .line 1607
    .line 1608
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1609
    .line 1610
    .line 1611
    throw v0

    .line 1612
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1613
    .line 1614
    const-string v1, "No error correction bytes"

    .line 1615
    .line 1616
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1617
    .line 1618
    .line 1619
    throw v0

    .line 1620
    :cond_48
    new-instance v0, Lm5/q;

    .line 1621
    .line 1622
    const-string v1, "Total bytes mismatch"

    .line 1623
    .line 1624
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1625
    .line 1626
    .line 1627
    throw v0

    .line 1628
    :cond_49
    new-instance v0, Lm5/q;

    .line 1629
    .line 1630
    const-string v1, "RS blocks mismatch"

    .line 1631
    .line 1632
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1633
    .line 1634
    .line 1635
    throw v0

    .line 1636
    :cond_4a
    new-instance v0, Lm5/q;

    .line 1637
    .line 1638
    const-string v1, "EC bytes mismatch"

    .line 1639
    .line 1640
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1641
    .line 1642
    .line 1643
    throw v0

    .line 1644
    :cond_4b
    new-instance v0, Lm5/q;

    .line 1645
    .line 1646
    const-string v1, "Block ID too large"

    .line 1647
    .line 1648
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1649
    .line 1650
    .line 1651
    throw v0

    .line 1652
    :cond_4c
    move/from16 v31, v0

    .line 1653
    .line 1654
    move-object/from16 v32, v1

    .line 1655
    .line 1656
    move-object/from16 v30, v3

    .line 1657
    .line 1658
    move/from16 v29, v4

    .line 1659
    .line 1660
    move/from16 v25, v5

    .line 1661
    .line 1662
    const/16 p0, 0x11

    .line 1663
    .line 1664
    if-ne v7, v9, :cond_74

    .line 1665
    .line 1666
    new-instance v0, Ls5/a;

    .line 1667
    .line 1668
    invoke-direct {v0}, Ls5/a;-><init>()V

    .line 1669
    .line 1670
    .line 1671
    const/4 v1, 0x0

    .line 1672
    :goto_38
    if-ge v1, v12, :cond_4f

    .line 1673
    .line 1674
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v3

    .line 1678
    :cond_4d
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1679
    .line 1680
    .line 1681
    move-result v4

    .line 1682
    if-eqz v4, :cond_4e

    .line 1683
    .line 1684
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v4

    .line 1688
    check-cast v4, Ll6/a;

    .line 1689
    .line 1690
    iget-object v4, v4, Ll6/a;->a:[B

    .line 1691
    .line 1692
    array-length v5, v4

    .line 1693
    if-ge v1, v5, :cond_4d

    .line 1694
    .line 1695
    aget-byte v4, v4, v1

    .line 1696
    .line 1697
    const/16 v15, 0x8

    .line 1698
    .line 1699
    invoke-virtual {v0, v4, v15}, Ls5/a;->b(II)V

    .line 1700
    .line 1701
    .line 1702
    goto :goto_39

    .line 1703
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    .line 1704
    .line 1705
    goto :goto_38

    .line 1706
    :cond_4f
    const/4 v1, 0x0

    .line 1707
    :goto_3a
    if-ge v1, v13, :cond_52

    .line 1708
    .line 1709
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v3

    .line 1713
    :cond_50
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1714
    .line 1715
    .line 1716
    move-result v4

    .line 1717
    if-eqz v4, :cond_51

    .line 1718
    .line 1719
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v4

    .line 1723
    check-cast v4, Ll6/a;

    .line 1724
    .line 1725
    iget-object v4, v4, Ll6/a;->b:[B

    .line 1726
    .line 1727
    array-length v5, v4

    .line 1728
    if-ge v1, v5, :cond_50

    .line 1729
    .line 1730
    aget-byte v4, v4, v1

    .line 1731
    .line 1732
    const/16 v15, 0x8

    .line 1733
    .line 1734
    invoke-virtual {v0, v4, v15}, Ls5/a;->b(II)V

    .line 1735
    .line 1736
    .line 1737
    goto :goto_3b

    .line 1738
    :cond_51
    add-int/lit8 v1, v1, 0x1

    .line 1739
    .line 1740
    goto :goto_3a

    .line 1741
    :cond_52
    invoke-virtual {v0}, Ls5/a;->g()I

    .line 1742
    .line 1743
    .line 1744
    move-result v1

    .line 1745
    move/from16 v2, v31

    .line 1746
    .line 1747
    if-ne v2, v1, :cond_73

    .line 1748
    .line 1749
    move-object/from16 v1, v32

    .line 1750
    .line 1751
    iget v2, v1, Lj6/h;->a:I

    .line 1752
    .line 1753
    const/16 v19, 0x4

    .line 1754
    .line 1755
    mul-int/lit8 v2, v2, 0x4

    .line 1756
    .line 1757
    add-int/lit8 v2, v2, 0x11

    .line 1758
    .line 1759
    new-instance v3, Lf1/d1;

    .line 1760
    .line 1761
    invoke-direct {v3, v2, v2}, Lf1/d1;-><init>(II)V

    .line 1762
    .line 1763
    .line 1764
    iget v2, v3, Lf1/d1;->c:I

    .line 1765
    .line 1766
    sget-object v4, Lm5/e;->e:Lm5/e;

    .line 1767
    .line 1768
    move-object/from16 v5, v30

    .line 1769
    .line 1770
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1771
    .line 1772
    .line 1773
    move-result v6

    .line 1774
    if-eqz v6, :cond_54

    .line 1775
    .line 1776
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v4

    .line 1780
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v4

    .line 1784
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1785
    .line 1786
    .line 1787
    move-result v11

    .line 1788
    if-ltz v11, :cond_53

    .line 1789
    .line 1790
    const/16 v15, 0x8

    .line 1791
    .line 1792
    if-ge v11, v15, :cond_53

    .line 1793
    .line 1794
    const/4 v4, 0x1

    .line 1795
    goto :goto_3c

    .line 1796
    :cond_53
    const/4 v4, 0x0

    .line 1797
    :goto_3c
    if-eqz v4, :cond_54

    .line 1798
    .line 1799
    goto :goto_3d

    .line 1800
    :cond_54
    const/4 v11, -0x1

    .line 1801
    :goto_3d
    iget v4, v3, Lf1/d1;->b:I

    .line 1802
    .line 1803
    const/4 v15, -0x1

    .line 1804
    if-ne v11, v15, :cond_6c

    .line 1805
    .line 1806
    const v5, 0x7fffffff

    .line 1807
    .line 1808
    .line 1809
    const/4 v10, 0x0

    .line 1810
    const/4 v11, -0x1

    .line 1811
    :goto_3e
    const/16 v12, 0x8

    .line 1812
    .line 1813
    if-ge v10, v12, :cond_6c

    .line 1814
    .line 1815
    move/from16 v13, v29

    .line 1816
    .line 1817
    invoke-static {v0, v13, v1, v10, v3}, Ll6/b;->b(Ls5/a;ILj6/h;ILf1/d1;)V

    .line 1818
    .line 1819
    .line 1820
    const/4 v6, 0x1

    .line 1821
    invoke-static {v3, v6}, Ll6/b;->a(Lf1/d1;Z)I

    .line 1822
    .line 1823
    .line 1824
    move-result v7

    .line 1825
    const/4 v6, 0x0

    .line 1826
    invoke-static {v3, v6}, Ll6/b;->a(Lf1/d1;Z)I

    .line 1827
    .line 1828
    .line 1829
    move-result v8

    .line 1830
    add-int/2addr v8, v7

    .line 1831
    iget-object v6, v3, Lf1/d1;->d:Ljava/lang/Object;

    .line 1832
    .line 1833
    check-cast v6, [[B

    .line 1834
    .line 1835
    const/4 v7, 0x0

    .line 1836
    const/4 v9, 0x0

    .line 1837
    :goto_3f
    add-int/lit8 v14, v2, -0x1

    .line 1838
    .line 1839
    if-ge v7, v14, :cond_57

    .line 1840
    .line 1841
    aget-object v14, v6, v7

    .line 1842
    .line 1843
    const/4 v12, 0x0

    .line 1844
    :goto_40
    add-int/lit8 v15, v4, -0x1

    .line 1845
    .line 1846
    if-ge v12, v15, :cond_56

    .line 1847
    .line 1848
    aget-byte v15, v14, v12

    .line 1849
    .line 1850
    add-int/lit8 v19, v12, 0x1

    .line 1851
    .line 1852
    move/from16 v21, v7

    .line 1853
    .line 1854
    aget-byte v7, v14, v19

    .line 1855
    .line 1856
    if-ne v15, v7, :cond_55

    .line 1857
    .line 1858
    add-int/lit8 v7, v21, 0x1

    .line 1859
    .line 1860
    aget-object v7, v6, v7

    .line 1861
    .line 1862
    aget-byte v12, v7, v12

    .line 1863
    .line 1864
    if-ne v15, v12, :cond_55

    .line 1865
    .line 1866
    aget-byte v7, v7, v19

    .line 1867
    .line 1868
    if-ne v15, v7, :cond_55

    .line 1869
    .line 1870
    add-int/lit8 v9, v9, 0x1

    .line 1871
    .line 1872
    :cond_55
    move/from16 v12, v19

    .line 1873
    .line 1874
    move/from16 v7, v21

    .line 1875
    .line 1876
    const/4 v15, -0x1

    .line 1877
    goto :goto_40

    .line 1878
    :cond_56
    move/from16 v21, v7

    .line 1879
    .line 1880
    add-int/lit8 v7, v21, 0x1

    .line 1881
    .line 1882
    const/16 v12, 0x8

    .line 1883
    .line 1884
    const/4 v15, -0x1

    .line 1885
    goto :goto_3f

    .line 1886
    :cond_57
    mul-int/lit8 v9, v9, 0x3

    .line 1887
    .line 1888
    add-int/2addr v9, v8

    .line 1889
    const/4 v7, 0x0

    .line 1890
    const/4 v8, 0x0

    .line 1891
    :goto_41
    if-ge v7, v2, :cond_67

    .line 1892
    .line 1893
    const/4 v12, 0x0

    .line 1894
    :goto_42
    if-ge v12, v4, :cond_66

    .line 1895
    .line 1896
    aget-object v14, v6, v7

    .line 1897
    .line 1898
    add-int/lit8 v15, v12, 0x6

    .line 1899
    .line 1900
    move/from16 p0, v8

    .line 1901
    .line 1902
    if-ge v15, v4, :cond_5d

    .line 1903
    .line 1904
    aget-byte v8, v14, v12

    .line 1905
    .line 1906
    move/from16 v19, v9

    .line 1907
    .line 1908
    const/4 v9, 0x1

    .line 1909
    if-ne v8, v9, :cond_5e

    .line 1910
    .line 1911
    add-int/lit8 v8, v12, 0x1

    .line 1912
    .line 1913
    aget-byte v8, v14, v8

    .line 1914
    .line 1915
    if-nez v8, :cond_5e

    .line 1916
    .line 1917
    add-int/lit8 v8, v12, 0x2

    .line 1918
    .line 1919
    aget-byte v8, v14, v8

    .line 1920
    .line 1921
    if-ne v8, v9, :cond_5e

    .line 1922
    .line 1923
    add-int/lit8 v8, v12, 0x3

    .line 1924
    .line 1925
    aget-byte v8, v14, v8

    .line 1926
    .line 1927
    if-ne v8, v9, :cond_5e

    .line 1928
    .line 1929
    add-int/lit8 v8, v12, 0x4

    .line 1930
    .line 1931
    aget-byte v8, v14, v8

    .line 1932
    .line 1933
    if-ne v8, v9, :cond_5e

    .line 1934
    .line 1935
    add-int/lit8 v8, v12, 0x5

    .line 1936
    .line 1937
    aget-byte v8, v14, v8

    .line 1938
    .line 1939
    if-nez v8, :cond_5e

    .line 1940
    .line 1941
    aget-byte v8, v14, v15

    .line 1942
    .line 1943
    if-ne v8, v9, :cond_5e

    .line 1944
    .line 1945
    add-int/lit8 v8, v12, -0x4

    .line 1946
    .line 1947
    const/4 v15, 0x0

    .line 1948
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    .line 1949
    .line 1950
    .line 1951
    move-result v8

    .line 1952
    array-length v15, v14

    .line 1953
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    .line 1954
    .line 1955
    .line 1956
    move-result v15

    .line 1957
    :goto_43
    if-ge v8, v15, :cond_59

    .line 1958
    .line 1959
    move/from16 v21, v8

    .line 1960
    .line 1961
    aget-byte v8, v14, v21

    .line 1962
    .line 1963
    if-ne v8, v9, :cond_58

    .line 1964
    .line 1965
    const/4 v8, 0x0

    .line 1966
    goto :goto_44

    .line 1967
    :cond_58
    add-int/lit8 v8, v21, 0x1

    .line 1968
    .line 1969
    const/4 v9, 0x1

    .line 1970
    goto :goto_43

    .line 1971
    :cond_59
    const/4 v8, 0x1

    .line 1972
    :goto_44
    if-nez v8, :cond_5c

    .line 1973
    .line 1974
    add-int/lit8 v8, v12, 0x7

    .line 1975
    .line 1976
    add-int/lit8 v9, v12, 0xb

    .line 1977
    .line 1978
    const/4 v15, 0x0

    .line 1979
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    .line 1980
    .line 1981
    .line 1982
    move-result v8

    .line 1983
    array-length v15, v14

    .line 1984
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    .line 1985
    .line 1986
    .line 1987
    move-result v9

    .line 1988
    :goto_45
    if-ge v8, v9, :cond_5b

    .line 1989
    .line 1990
    aget-byte v15, v14, v8

    .line 1991
    .line 1992
    move/from16 v21, v8

    .line 1993
    .line 1994
    const/4 v8, 0x1

    .line 1995
    if-ne v15, v8, :cond_5a

    .line 1996
    .line 1997
    const/4 v8, 0x0

    .line 1998
    goto :goto_46

    .line 1999
    :cond_5a
    add-int/lit8 v8, v21, 0x1

    .line 2000
    .line 2001
    goto :goto_45

    .line 2002
    :cond_5b
    const/4 v8, 0x1

    .line 2003
    :goto_46
    if-eqz v8, :cond_5e

    .line 2004
    .line 2005
    :cond_5c
    add-int/lit8 v8, p0, 0x1

    .line 2006
    .line 2007
    goto :goto_47

    .line 2008
    :cond_5d
    move/from16 v19, v9

    .line 2009
    .line 2010
    :cond_5e
    move/from16 v8, p0

    .line 2011
    .line 2012
    :goto_47
    add-int/lit8 v9, v7, 0x6

    .line 2013
    .line 2014
    if-ge v9, v2, :cond_64

    .line 2015
    .line 2016
    aget-object v14, v6, v7

    .line 2017
    .line 2018
    aget-byte v14, v14, v12

    .line 2019
    .line 2020
    const/4 v15, 0x1

    .line 2021
    if-ne v14, v15, :cond_64

    .line 2022
    .line 2023
    add-int/lit8 v14, v7, 0x1

    .line 2024
    .line 2025
    aget-object v14, v6, v14

    .line 2026
    .line 2027
    aget-byte v14, v14, v12

    .line 2028
    .line 2029
    if-nez v14, :cond_64

    .line 2030
    .line 2031
    add-int/lit8 v14, v7, 0x2

    .line 2032
    .line 2033
    aget-object v14, v6, v14

    .line 2034
    .line 2035
    aget-byte v14, v14, v12

    .line 2036
    .line 2037
    if-ne v14, v15, :cond_64

    .line 2038
    .line 2039
    add-int/lit8 v14, v7, 0x3

    .line 2040
    .line 2041
    aget-object v14, v6, v14

    .line 2042
    .line 2043
    aget-byte v14, v14, v12

    .line 2044
    .line 2045
    if-ne v14, v15, :cond_64

    .line 2046
    .line 2047
    add-int/lit8 v14, v7, 0x4

    .line 2048
    .line 2049
    aget-object v14, v6, v14

    .line 2050
    .line 2051
    aget-byte v14, v14, v12

    .line 2052
    .line 2053
    if-ne v14, v15, :cond_64

    .line 2054
    .line 2055
    add-int/lit8 v14, v7, 0x5

    .line 2056
    .line 2057
    aget-object v14, v6, v14

    .line 2058
    .line 2059
    aget-byte v14, v14, v12

    .line 2060
    .line 2061
    if-nez v14, :cond_64

    .line 2062
    .line 2063
    aget-object v9, v6, v9

    .line 2064
    .line 2065
    aget-byte v9, v9, v12

    .line 2066
    .line 2067
    if-ne v9, v15, :cond_64

    .line 2068
    .line 2069
    add-int/lit8 v9, v7, -0x4

    .line 2070
    .line 2071
    const/4 v14, 0x0

    .line 2072
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    .line 2073
    .line 2074
    .line 2075
    move-result v9

    .line 2076
    array-length v14, v6

    .line 2077
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    .line 2078
    .line 2079
    .line 2080
    move-result v14

    .line 2081
    :goto_48
    if-ge v9, v14, :cond_60

    .line 2082
    .line 2083
    aget-object v18, v6, v9

    .line 2084
    .line 2085
    move/from16 v21, v7

    .line 2086
    .line 2087
    aget-byte v7, v18, v12

    .line 2088
    .line 2089
    if-ne v7, v15, :cond_5f

    .line 2090
    .line 2091
    const/4 v7, 0x0

    .line 2092
    goto :goto_49

    .line 2093
    :cond_5f
    add-int/lit8 v9, v9, 0x1

    .line 2094
    .line 2095
    move/from16 v7, v21

    .line 2096
    .line 2097
    const/4 v15, 0x1

    .line 2098
    goto :goto_48

    .line 2099
    :cond_60
    move/from16 v21, v7

    .line 2100
    .line 2101
    const/4 v7, 0x1

    .line 2102
    :goto_49
    if-nez v7, :cond_63

    .line 2103
    .line 2104
    add-int/lit8 v7, v21, 0x7

    .line 2105
    .line 2106
    add-int/lit8 v9, v21, 0xb

    .line 2107
    .line 2108
    const/4 v15, 0x0

    .line 2109
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    .line 2110
    .line 2111
    .line 2112
    move-result v7

    .line 2113
    array-length v14, v6

    .line 2114
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    .line 2115
    .line 2116
    .line 2117
    move-result v9

    .line 2118
    :goto_4a
    if-ge v7, v9, :cond_62

    .line 2119
    .line 2120
    aget-object v14, v6, v7

    .line 2121
    .line 2122
    aget-byte v14, v14, v12

    .line 2123
    .line 2124
    const/4 v15, 0x1

    .line 2125
    if-ne v14, v15, :cond_61

    .line 2126
    .line 2127
    const/4 v7, 0x0

    .line 2128
    goto :goto_4b

    .line 2129
    :cond_61
    add-int/lit8 v7, v7, 0x1

    .line 2130
    .line 2131
    const/4 v15, 0x0

    .line 2132
    goto :goto_4a

    .line 2133
    :cond_62
    const/4 v7, 0x1

    .line 2134
    :goto_4b
    if-eqz v7, :cond_65

    .line 2135
    .line 2136
    :cond_63
    add-int/lit8 v8, v8, 0x1

    .line 2137
    .line 2138
    goto :goto_4c

    .line 2139
    :cond_64
    move/from16 v21, v7

    .line 2140
    .line 2141
    :cond_65
    :goto_4c
    add-int/lit8 v12, v12, 0x1

    .line 2142
    .line 2143
    move/from16 v9, v19

    .line 2144
    .line 2145
    move/from16 v7, v21

    .line 2146
    .line 2147
    goto/16 :goto_42

    .line 2148
    .line 2149
    :cond_66
    move/from16 v21, v7

    .line 2150
    .line 2151
    move/from16 p0, v8

    .line 2152
    .line 2153
    move/from16 v19, v9

    .line 2154
    .line 2155
    add-int/lit8 v7, v21, 0x1

    .line 2156
    .line 2157
    goto/16 :goto_41

    .line 2158
    .line 2159
    :cond_67
    move/from16 v19, v9

    .line 2160
    .line 2161
    mul-int/lit8 v8, v8, 0x28

    .line 2162
    .line 2163
    add-int v8, v8, v19

    .line 2164
    .line 2165
    const/4 v7, 0x0

    .line 2166
    const/4 v9, 0x0

    .line 2167
    :goto_4d
    if-ge v7, v2, :cond_6a

    .line 2168
    .line 2169
    aget-object v12, v6, v7

    .line 2170
    .line 2171
    const/4 v14, 0x0

    .line 2172
    :goto_4e
    if-ge v14, v4, :cond_69

    .line 2173
    .line 2174
    aget-byte v15, v12, v14

    .line 2175
    .line 2176
    move-object/from16 p0, v6

    .line 2177
    .line 2178
    const/4 v6, 0x1

    .line 2179
    if-ne v15, v6, :cond_68

    .line 2180
    .line 2181
    add-int/lit8 v9, v9, 0x1

    .line 2182
    .line 2183
    :cond_68
    add-int/lit8 v14, v14, 0x1

    .line 2184
    .line 2185
    move-object/from16 v6, p0

    .line 2186
    .line 2187
    goto :goto_4e

    .line 2188
    :cond_69
    move-object/from16 p0, v6

    .line 2189
    .line 2190
    add-int/lit8 v7, v7, 0x1

    .line 2191
    .line 2192
    goto :goto_4d

    .line 2193
    :cond_6a
    mul-int v6, v2, v4

    .line 2194
    .line 2195
    shl-int/lit8 v7, v9, 0x1

    .line 2196
    .line 2197
    sub-int/2addr v7, v6

    .line 2198
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 2199
    .line 2200
    .line 2201
    move-result v7

    .line 2202
    const/16 v23, 0xa

    .line 2203
    .line 2204
    mul-int/lit8 v7, v7, 0xa

    .line 2205
    .line 2206
    div-int/2addr v7, v6

    .line 2207
    mul-int/lit8 v7, v7, 0xa

    .line 2208
    .line 2209
    add-int/2addr v7, v8

    .line 2210
    if-ge v7, v5, :cond_6b

    .line 2211
    .line 2212
    move v5, v7

    .line 2213
    move v11, v10

    .line 2214
    :cond_6b
    add-int/lit8 v10, v10, 0x1

    .line 2215
    .line 2216
    move/from16 v29, v13

    .line 2217
    .line 2218
    const/4 v15, -0x1

    .line 2219
    goto/16 :goto_3e

    .line 2220
    .line 2221
    :cond_6c
    move/from16 v13, v29

    .line 2222
    .line 2223
    invoke-static {v0, v13, v1, v11, v3}, Ll6/b;->b(Ls5/a;ILj6/h;ILf1/d1;)V

    .line 2224
    .line 2225
    .line 2226
    const/16 v18, 0x1

    .line 2227
    .line 2228
    shl-int/lit8 v0, v25, 0x1

    .line 2229
    .line 2230
    add-int v1, v4, v0

    .line 2231
    .line 2232
    add-int/2addr v0, v2

    .line 2233
    const/16 v5, 0x12c

    .line 2234
    .line 2235
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 2236
    .line 2237
    .line 2238
    move-result v6

    .line 2239
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 2240
    .line 2241
    .line 2242
    move-result v7

    .line 2243
    div-int v1, v6, v1

    .line 2244
    .line 2245
    div-int v0, v7, v0

    .line 2246
    .line 2247
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 2248
    .line 2249
    .line 2250
    move-result v0

    .line 2251
    mul-int v1, v4, v0

    .line 2252
    .line 2253
    sub-int v1, v6, v1

    .line 2254
    .line 2255
    const/16 v17, 0x2

    .line 2256
    .line 2257
    div-int/lit8 v1, v1, 0x2

    .line 2258
    .line 2259
    mul-int v8, v2, v0

    .line 2260
    .line 2261
    sub-int v8, v7, v8

    .line 2262
    .line 2263
    div-int/lit8 v8, v8, 0x2

    .line 2264
    .line 2265
    new-instance v9, Ls5/b;

    .line 2266
    .line 2267
    invoke-direct {v9, v6, v7}, Ls5/b;-><init>(II)V

    .line 2268
    .line 2269
    .line 2270
    const/4 v10, 0x0

    .line 2271
    :goto_4f
    if-ge v10, v2, :cond_6f

    .line 2272
    .line 2273
    move v7, v1

    .line 2274
    const/4 v6, 0x0

    .line 2275
    :goto_50
    if-ge v6, v4, :cond_6e

    .line 2276
    .line 2277
    invoke-virtual {v3, v6, v10}, Lf1/d1;->h(II)B

    .line 2278
    .line 2279
    .line 2280
    move-result v11

    .line 2281
    const/4 v15, 0x1

    .line 2282
    if-ne v11, v15, :cond_6d

    .line 2283
    .line 2284
    invoke-virtual {v9, v7, v8, v0, v0}, Ls5/b;->g(IIII)V

    .line 2285
    .line 2286
    .line 2287
    :cond_6d
    add-int/lit8 v6, v6, 0x1

    .line 2288
    .line 2289
    add-int/2addr v7, v0

    .line 2290
    goto :goto_50

    .line 2291
    :cond_6e
    add-int/lit8 v10, v10, 0x1

    .line 2292
    .line 2293
    add-int/2addr v8, v0

    .line 2294
    goto :goto_4f

    .line 2295
    :cond_6f
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 2296
    .line 2297
    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v0

    .line 2301
    const/4 v10, 0x0

    .line 2302
    :goto_51
    if-ge v10, v5, :cond_72

    .line 2303
    .line 2304
    const/4 v1, 0x0

    .line 2305
    :goto_52
    if-ge v1, v5, :cond_71

    .line 2306
    .line 2307
    invoke-virtual {v9, v10, v1}, Ls5/b;->b(II)Z

    .line 2308
    .line 2309
    .line 2310
    move-result v2

    .line 2311
    if-eqz v2, :cond_70

    .line 2312
    .line 2313
    const/high16 v11, -0x1000000

    .line 2314
    .line 2315
    goto :goto_53

    .line 2316
    :cond_70
    const/4 v11, -0x1

    .line 2317
    :goto_53
    invoke-virtual {v0, v10, v1, v11}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 2318
    .line 2319
    .line 2320
    add-int/lit8 v1, v1, 0x1

    .line 2321
    .line 2322
    goto :goto_52

    .line 2323
    :cond_71
    add-int/lit8 v10, v10, 0x1

    .line 2324
    .line 2325
    goto :goto_51

    .line 2326
    :cond_72
    return-object v0

    .line 2327
    :cond_73
    new-instance v1, Lm5/q;

    .line 2328
    .line 2329
    const-string v3, "Interleaving error: "

    .line 2330
    .line 2331
    const-string v4, " and "

    .line 2332
    .line 2333
    invoke-static {v3, v4, v2}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v2

    .line 2337
    invoke-virtual {v0}, Ls5/a;->g()I

    .line 2338
    .line 2339
    .line 2340
    move-result v0

    .line 2341
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2342
    .line 2343
    .line 2344
    const-string v0, " differ."

    .line 2345
    .line 2346
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    .line 2348
    .line 2349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v0

    .line 2353
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2354
    .line 2355
    .line 2356
    throw v1

    .line 2357
    :cond_74
    new-instance v0, Lm5/q;

    .line 2358
    .line 2359
    const-string v1, "Data bytes does not match offset"

    .line 2360
    .line 2361
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2362
    .line 2363
    .line 2364
    throw v0

    .line 2365
    :cond_75
    new-instance v0, Lm5/q;

    .line 2366
    .line 2367
    const-string v1, "Number of bits and data bytes does not match"

    .line 2368
    .line 2369
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2370
    .line 2371
    .line 2372
    throw v0

    .line 2373
    :cond_76
    new-instance v0, Lm5/q;

    .line 2374
    .line 2375
    const-string v1, "Bits size does not equal capacity"

    .line 2376
    .line 2377
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2378
    .line 2379
    .line 2380
    throw v0

    .line 2381
    :cond_77
    move-object/from16 v28, v6

    .line 2382
    .line 2383
    new-instance v0, Lm5/q;

    .line 2384
    .line 2385
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2386
    .line 2387
    const-string v2, "data bits cannot fit in the QR Code"

    .line 2388
    .line 2389
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2390
    .line 2391
    .line 2392
    move-object/from16 v2, v28

    .line 2393
    .line 2394
    iget v2, v2, Ls5/a;->b:I

    .line 2395
    .line 2396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2397
    .line 2398
    .line 2399
    const-string v2, " > "

    .line 2400
    .line 2401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    .line 2403
    .line 2404
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2405
    .line 2406
    .line 2407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v1

    .line 2411
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2412
    .line 2413
    .line 2414
    throw v0

    .line 2415
    :cond_78
    new-instance v0, Lm5/q;

    .line 2416
    .line 2417
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2418
    .line 2419
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2420
    .line 2421
    .line 2422
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2423
    .line 2424
    .line 2425
    const-string v2, " is bigger than "

    .line 2426
    .line 2427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    .line 2429
    .line 2430
    const/16 v18, 0x1

    .line 2431
    .line 2432
    add-int/lit8 v8, v8, -0x1

    .line 2433
    .line 2434
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2435
    .line 2436
    .line 2437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2438
    .line 2439
    .line 2440
    move-result-object v1

    .line 2441
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2442
    .line 2443
    .line 2444
    throw v0

    .line 2445
    :cond_79
    move v13, v4

    .line 2446
    move/from16 v25, v5

    .line 2447
    .line 2448
    const/16 v17, 0x2

    .line 2449
    .line 2450
    const/16 v18, 0x1

    .line 2451
    .line 2452
    const/16 v19, 0x4

    .line 2453
    .line 2454
    const/16 v22, 0x7

    .line 2455
    .line 2456
    const/16 v23, 0xa

    .line 2457
    .line 2458
    move-object v5, v3

    .line 2459
    add-int/lit8 v8, v8, 0x1

    .line 2460
    .line 2461
    move/from16 v5, v25

    .line 2462
    .line 2463
    const/16 v16, 0x0

    .line 2464
    .line 2465
    const/16 v24, 0x8

    .line 2466
    .line 2467
    goto/16 :goto_1d

    .line 2468
    .line 2469
    :cond_7a
    new-instance v0, Lm5/q;

    .line 2470
    .line 2471
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2472
    .line 2473
    .line 2474
    throw v0

    .line 2475
    :cond_7b
    move v13, v4

    .line 2476
    move/from16 v25, v5

    .line 2477
    .line 2478
    const/16 v17, 0x2

    .line 2479
    .line 2480
    const/16 v18, 0x1

    .line 2481
    .line 2482
    const/16 v19, 0x4

    .line 2483
    .line 2484
    const/16 v22, 0x7

    .line 2485
    .line 2486
    const/16 v23, 0xa

    .line 2487
    .line 2488
    move-object v5, v3

    .line 2489
    add-int/lit8 v8, v8, 0x1

    .line 2490
    .line 2491
    move/from16 v5, v25

    .line 2492
    .line 2493
    move/from16 v0, v26

    .line 2494
    .line 2495
    const/16 v16, 0x0

    .line 2496
    .line 2497
    const/16 v24, 0x8

    .line 2498
    .line 2499
    goto/16 :goto_1b

    .line 2500
    .line 2501
    :cond_7c
    new-instance v0, Lm5/q;

    .line 2502
    .line 2503
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2504
    .line 2505
    .line 2506
    throw v0

    .line 2507
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2508
    .line 2509
    const-string v1, "Found empty contents"

    .line 2510
    .line 2511
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2512
    .line 2513
    .line 2514
    throw v0
.end method

.method public static b(Lf9/n;)V
    .locals 3

    .line 1
    new-instance v0, Lb0/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb0/g;-><init>(Lf9/n;Lw8/c;)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    sget-object v2, Ll8/c;->a:Lfc/c;

    .line 9
    .line 10
    invoke-static {v2, v1, v0, p0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "className"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const/high16 p0, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "\u65e0\u6cd5\u542f\u52a8\u6d3b\u52a8: "

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-static {p1, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static d()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "\u6253\u5f00\u684c\u9762\u5931\u8d25: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v1, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static e()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "\u6253\u5f00\u7cfb\u7edf\u8bbe\u7f6e\u5931\u8d25: "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v1, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static f(I)F
    .locals 2

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    :cond_0
    int-to-float p0, p0

    .line 5
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    div-float/2addr p0, v0

    .line 20
    const/4 v0, 0x0

    .line 21
    cmpg-float v1, p0, v0

    .line 22
    .line 23
    if-gez v1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    return p0
.end method

.method public static g(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ll8/b;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, v2, p1}, Ll8/b;-><init>(IILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
