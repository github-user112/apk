.class public final Lnc/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Lnc/z;

.field public static final b:Lnc/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnc/z;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnc/z;->a:Lnc/z;

    .line 7
    .line 8
    new-instance v0, Lnc/s0;

    .line 9
    .line 10
    const-string v1, "kotlin.time.Instant"

    .line 11
    .line 12
    sget-object v2, Llc/c;->l:Llc/c;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lnc/s0;-><init>(Ljava/lang/String;Llc/d;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnc/z;->b:Lnc/s0;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 23

    .line 1
    sget-object v0, Lyb/d;->c:Lyb/d;

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lmc/b;->r()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "input"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lu0/j;

    .line 19
    .line 20
    const-string v2, "An empty string is not a valid Instant"

    .line 21
    .line 22
    invoke-direct {v1, v2, v0}, Lu0/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_16

    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x20

    .line 33
    .line 34
    const/16 v4, 0x2b

    .line 35
    .line 36
    const/16 v5, 0x2d

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v2, v4, :cond_1

    .line 40
    .line 41
    if-eq v2, v5, :cond_1

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v7, 0x1

    .line 48
    :goto_0
    move v8, v7

    .line 49
    const/4 v9, 0x0

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    const/16 v11, 0x3a

    .line 55
    .line 56
    const/16 v12, 0x30

    .line 57
    .line 58
    if-ge v8, v10, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-gt v12, v10, :cond_2

    .line 65
    .line 66
    if-ge v10, v11, :cond_2

    .line 67
    .line 68
    mul-int/lit8 v9, v9, 0xa

    .line 69
    .line 70
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    sub-int/2addr v10, v12

    .line 75
    add-int/2addr v9, v10

    .line 76
    add-int/lit8 v8, v8, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sub-int v10, v8, v7

    .line 80
    .line 81
    const-string v13, " digits"

    .line 82
    .line 83
    const/16 v14, 0xa

    .line 84
    .line 85
    if-le v10, v14, :cond_3

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "Expected at most 10 digits for the year number, got "

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    goto/16 :goto_16

    .line 109
    .line 110
    :cond_3
    if-ne v10, v14, :cond_4

    .line 111
    .line 112
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    const/16 v15, 0x32

    .line 117
    .line 118
    invoke-static {v7, v15}, Lg9/l;->f(II)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-ltz v7, :cond_4

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v2, "Expected at most 9 digits for the year number or year 1000000000, got "

    .line 127
    .line 128
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    goto/16 :goto_16

    .line 146
    .line 147
    :cond_4
    const/4 v7, 0x4

    .line 148
    if-ge v10, v7, :cond_5

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v2, "The year number must be padded to 4 digits, got "

    .line 153
    .line 154
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    goto/16 :goto_16

    .line 172
    .line 173
    :cond_5
    if-ne v2, v4, :cond_6

    .line 174
    .line 175
    if-ne v10, v7, :cond_6

    .line 176
    .line 177
    const-string v1, "The \'+\' sign at the start is only valid for year numbers longer than 4 digits"

    .line 178
    .line 179
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    goto/16 :goto_16

    .line 184
    .line 185
    :cond_6
    if-ne v2, v3, :cond_7

    .line 186
    .line 187
    if-eq v10, v7, :cond_7

    .line 188
    .line 189
    const-string v1, "A \'+\' or \'-\' sign is required for year numbers longer than 4 digits"

    .line 190
    .line 191
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    goto/16 :goto_16

    .line 196
    .line 197
    :cond_7
    if-ne v2, v5, :cond_8

    .line 198
    .line 199
    neg-int v9, v9

    .line 200
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    add-int/lit8 v3, v8, 0x10

    .line 205
    .line 206
    if-ge v2, v3, :cond_9

    .line 207
    .line 208
    const-string v1, "The input string is too short"

    .line 209
    .line 210
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    goto/16 :goto_16

    .line 215
    .line 216
    :cond_9
    new-instance v2, Lx7/h;

    .line 217
    .line 218
    const/4 v10, 0x6

    .line 219
    invoke-direct {v2, v10}, Lx7/h;-><init>(I)V

    .line 220
    .line 221
    .line 222
    const-string v15, "\'-\'"

    .line 223
    .line 224
    invoke-static {v0, v15, v8, v2}, Lyb/f;->g(Ljava/lang/String;Ljava/lang/String;ILf9/k;)Lu0/j;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    :goto_2
    move-object v1, v2

    .line 231
    goto/16 :goto_16

    .line 232
    .line 233
    :cond_a
    add-int/lit8 v2, v8, 0x3

    .line 234
    .line 235
    new-instance v1, Lx7/h;

    .line 236
    .line 237
    const/4 v7, 0x7

    .line 238
    invoke-direct {v1, v7}, Lx7/h;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v15, v2, v1}, Lyb/f;->g(Ljava/lang/String;Ljava/lang/String;ILf9/k;)Lu0/j;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_b

    .line 246
    .line 247
    goto/16 :goto_16

    .line 248
    .line 249
    :cond_b
    add-int/lit8 v1, v8, 0x6

    .line 250
    .line 251
    new-instance v2, Lx7/h;

    .line 252
    .line 253
    const/16 v7, 0x8

    .line 254
    .line 255
    invoke-direct {v2, v7}, Lx7/h;-><init>(I)V

    .line 256
    .line 257
    .line 258
    const-string v7, "\'T\' or \'t\'"

    .line 259
    .line 260
    invoke-static {v0, v7, v1, v2}, Lyb/f;->g(Ljava/lang/String;Ljava/lang/String;ILf9/k;)Lu0/j;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-eqz v1, :cond_c

    .line 265
    .line 266
    goto/16 :goto_16

    .line 267
    .line 268
    :cond_c
    add-int/lit8 v1, v8, 0x9

    .line 269
    .line 270
    new-instance v2, Lx7/h;

    .line 271
    .line 272
    const/16 v7, 0x9

    .line 273
    .line 274
    invoke-direct {v2, v7}, Lx7/h;-><init>(I)V

    .line 275
    .line 276
    .line 277
    const-string v15, "\':\'"

    .line 278
    .line 279
    invoke-static {v0, v15, v1, v2}, Lyb/f;->g(Ljava/lang/String;Ljava/lang/String;ILf9/k;)Lu0/j;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-eqz v1, :cond_d

    .line 284
    .line 285
    goto/16 :goto_16

    .line 286
    .line 287
    :cond_d
    add-int/lit8 v1, v8, 0xc

    .line 288
    .line 289
    new-instance v2, Lx7/h;

    .line 290
    .line 291
    invoke-direct {v2, v14}, Lx7/h;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-static {v0, v15, v1, v2}, Lyb/f;->g(Ljava/lang/String;Ljava/lang/String;ILf9/k;)Lu0/j;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    if-eqz v1, :cond_e

    .line 299
    .line 300
    goto/16 :goto_16

    .line 301
    .line 302
    :cond_e
    const/4 v1, 0x0

    .line 303
    :goto_3
    const/16 v2, 0xb

    .line 304
    .line 305
    if-ge v1, v14, :cond_10

    .line 306
    .line 307
    sget-object v15, Lyb/f;->b:[I

    .line 308
    .line 309
    aget v15, v15, v1

    .line 310
    .line 311
    add-int/2addr v15, v8

    .line 312
    new-instance v10, Lx7/h;

    .line 313
    .line 314
    invoke-direct {v10, v2}, Lx7/h;-><init>(I)V

    .line 315
    .line 316
    .line 317
    const-string v2, "an ASCII digit"

    .line 318
    .line 319
    invoke-static {v0, v2, v15, v10}, Lyb/f;->g(Ljava/lang/String;Ljava/lang/String;ILf9/k;)Lu0/j;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    if-eqz v2, :cond_f

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 327
    .line 328
    const/4 v10, 0x6

    .line 329
    goto :goto_3

    .line 330
    :cond_10
    add-int/lit8 v1, v8, 0x1

    .line 331
    .line 332
    invoke-static {v1, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    add-int/lit8 v10, v8, 0x4

    .line 337
    .line 338
    invoke-static {v10, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    add-int/lit8 v15, v8, 0x7

    .line 343
    .line 344
    invoke-static {v15, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v15

    .line 348
    add-int/lit8 v2, v8, 0xa

    .line 349
    .line 350
    invoke-static {v2, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    const/16 v19, 0x9

    .line 355
    .line 356
    add-int/lit8 v7, v8, 0xd

    .line 357
    .line 358
    invoke-static {v7, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    add-int/lit8 v8, v8, 0xf

    .line 363
    .line 364
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    const/16 v4, 0x2e

    .line 369
    .line 370
    if-ne v5, v4, :cond_13

    .line 371
    .line 372
    move v8, v3

    .line 373
    const/4 v4, 0x0

    .line 374
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-ge v8, v5, :cond_11

    .line 379
    .line 380
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-gt v12, v5, :cond_11

    .line 385
    .line 386
    if-ge v5, v11, :cond_11

    .line 387
    .line 388
    mul-int/lit8 v4, v4, 0xa

    .line 389
    .line 390
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    sub-int/2addr v5, v12

    .line 395
    add-int/2addr v4, v5

    .line 396
    add-int/lit8 v8, v8, 0x1

    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_11
    sub-int v3, v8, v3

    .line 400
    .line 401
    if-gt v6, v3, :cond_12

    .line 402
    .line 403
    if-ge v3, v14, :cond_12

    .line 404
    .line 405
    sget-object v5, Lyb/f;->a:[I

    .line 406
    .line 407
    rsub-int/lit8 v3, v3, 0x9

    .line 408
    .line 409
    aget v3, v5, v3

    .line 410
    .line 411
    mul-int v4, v4, v3

    .line 412
    .line 413
    goto :goto_5

    .line 414
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v2, "1..9 digits are supported for the fraction of the second, got "

    .line 417
    .line 418
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    goto/16 :goto_16

    .line 436
    .line 437
    :cond_13
    const/4 v4, 0x0

    .line 438
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-lt v8, v3, :cond_14

    .line 443
    .line 444
    const-string v1, "The UTC offset at the end of the string is missing"

    .line 445
    .line 446
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    goto/16 :goto_16

    .line 451
    .line 452
    :cond_14
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    const/4 v5, 0x2

    .line 457
    const/16 v13, 0x27

    .line 458
    .line 459
    const-string v14, ", got \'"

    .line 460
    .line 461
    const/16 v20, 0x1

    .line 462
    .line 463
    const/16 v6, 0x2b

    .line 464
    .line 465
    if-eq v3, v6, :cond_17

    .line 466
    .line 467
    const/16 v6, 0x2d

    .line 468
    .line 469
    if-eq v3, v6, :cond_17

    .line 470
    .line 471
    const/16 v6, 0x5a

    .line 472
    .line 473
    if-eq v3, v6, :cond_15

    .line 474
    .line 475
    const/16 v6, 0x7a

    .line 476
    .line 477
    if-eq v3, v6, :cond_15

    .line 478
    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    const-string v2, "Expected the UTC offset at position "

    .line 482
    .line 483
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    goto/16 :goto_16

    .line 507
    .line 508
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    add-int/lit8 v8, v8, 0x1

    .line 513
    .line 514
    if-ne v3, v8, :cond_16

    .line 515
    .line 516
    const/4 v11, 0x0

    .line 517
    :goto_6
    const/4 v3, 0x1

    .line 518
    goto/16 :goto_10

    .line 519
    .line 520
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string v2, "Extra text after the instant at position "

    .line 523
    .line 524
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    goto/16 :goto_16

    .line 539
    .line 540
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    sub-int/2addr v6, v8

    .line 545
    const/16 v12, 0x9

    .line 546
    .line 547
    if-le v6, v12, :cond_18

    .line 548
    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string v2, "The UTC offset string \""

    .line 552
    .line 553
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    const/16 v3, 0x10

    .line 569
    .line 570
    invoke-static {v3, v2}, Lyb/f;->l(ILjava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v2, "\" is too long"

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    goto/16 :goto_16

    .line 591
    .line 592
    :cond_18
    rem-int/lit8 v12, v6, 0x3

    .line 593
    .line 594
    if-eqz v12, :cond_19

    .line 595
    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string v2, "Invalid UTC offset string \""

    .line 599
    .line 600
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const/16 v2, 0x22

    .line 619
    .line 620
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    goto/16 :goto_16

    .line 632
    .line 633
    :cond_19
    const/4 v12, 0x0

    .line 634
    :goto_7
    if-ge v12, v5, :cond_1c

    .line 635
    .line 636
    sget-object v21, Lyb/f;->c:[I

    .line 637
    .line 638
    aget v21, v21, v12

    .line 639
    .line 640
    add-int v5, v8, v21

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 643
    .line 644
    .line 645
    move-result v13

    .line 646
    if-lt v5, v13, :cond_1a

    .line 647
    .line 648
    goto :goto_8

    .line 649
    :cond_1a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 650
    .line 651
    .line 652
    move-result v13

    .line 653
    if-eq v13, v11, :cond_1b

    .line 654
    .line 655
    const-string v1, "Expected \':\' at index "

    .line 656
    .line 657
    invoke-static {v1, v14, v5}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const/16 v2, 0x27

    .line 669
    .line 670
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    goto/16 :goto_16

    .line 682
    .line 683
    :cond_1b
    add-int/lit8 v12, v12, 0x1

    .line 684
    .line 685
    const/4 v5, 0x2

    .line 686
    const/16 v13, 0x27

    .line 687
    .line 688
    goto :goto_7

    .line 689
    :cond_1c
    :goto_8
    const/4 v5, 0x0

    .line 690
    :goto_9
    const/4 v12, 0x6

    .line 691
    if-ge v5, v12, :cond_1f

    .line 692
    .line 693
    sget-object v12, Lyb/f;->d:[I

    .line 694
    .line 695
    aget v12, v12, v5

    .line 696
    .line 697
    add-int/2addr v12, v8

    .line 698
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 699
    .line 700
    .line 701
    move-result v13

    .line 702
    if-lt v12, v13, :cond_1d

    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_1d
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 706
    .line 707
    .line 708
    move-result v13

    .line 709
    move/from16 v22, v5

    .line 710
    .line 711
    const/16 v5, 0x30

    .line 712
    .line 713
    if-gt v5, v13, :cond_1e

    .line 714
    .line 715
    if-ge v13, v11, :cond_1e

    .line 716
    .line 717
    add-int/lit8 v12, v22, 0x1

    .line 718
    .line 719
    move v5, v12

    .line 720
    goto :goto_9

    .line 721
    :cond_1e
    const-string v1, "Expected an ASCII digit at index "

    .line 722
    .line 723
    invoke-static {v1, v14, v12}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const/16 v2, 0x27

    .line 735
    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    goto/16 :goto_16

    .line 748
    .line 749
    :cond_1f
    :goto_a
    add-int/lit8 v5, v8, 0x1

    .line 750
    .line 751
    invoke-static {v5, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 752
    .line 753
    .line 754
    move-result v5

    .line 755
    const/4 v11, 0x3

    .line 756
    if-le v6, v11, :cond_20

    .line 757
    .line 758
    add-int/lit8 v11, v8, 0x4

    .line 759
    .line 760
    invoke-static {v11, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 761
    .line 762
    .line 763
    move-result v11

    .line 764
    :goto_b
    const/4 v12, 0x6

    .line 765
    goto :goto_c

    .line 766
    :cond_20
    const/4 v11, 0x0

    .line 767
    goto :goto_b

    .line 768
    :goto_c
    if-le v6, v12, :cond_21

    .line 769
    .line 770
    add-int/lit8 v6, v8, 0x7

    .line 771
    .line 772
    invoke-static {v6, v0}, Lyb/f;->i(ILjava/lang/String;)I

    .line 773
    .line 774
    .line 775
    move-result v6

    .line 776
    :goto_d
    const/16 v12, 0x3b

    .line 777
    .line 778
    goto :goto_e

    .line 779
    :cond_21
    const/4 v6, 0x0

    .line 780
    goto :goto_d

    .line 781
    :goto_e
    if-le v11, v12, :cond_22

    .line 782
    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    const-string v2, "Expected offset-minute-of-hour in 0..59, got "

    .line 786
    .line 787
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    goto/16 :goto_16

    .line 802
    .line 803
    :cond_22
    if-le v6, v12, :cond_23

    .line 804
    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v2, "Expected offset-second-of-minute in 0..59, got "

    .line 808
    .line 809
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    goto/16 :goto_16

    .line 824
    .line 825
    :cond_23
    const/16 v12, 0x11

    .line 826
    .line 827
    if-le v5, v12, :cond_25

    .line 828
    .line 829
    const/16 v12, 0x12

    .line 830
    .line 831
    if-ne v5, v12, :cond_24

    .line 832
    .line 833
    if-nez v11, :cond_24

    .line 834
    .line 835
    if-eqz v6, :cond_25

    .line 836
    .line 837
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    const-string v2, "Expected an offset in -18:00..+18:00, got "

    .line 840
    .line 841
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    goto/16 :goto_16

    .line 868
    .line 869
    :cond_25
    mul-int/lit16 v5, v5, 0xe10

    .line 870
    .line 871
    mul-int/lit8 v11, v11, 0x3c

    .line 872
    .line 873
    add-int/2addr v11, v5

    .line 874
    add-int/2addr v11, v6

    .line 875
    const/16 v6, 0x2d

    .line 876
    .line 877
    if-ne v3, v6, :cond_26

    .line 878
    .line 879
    const/4 v3, -0x1

    .line 880
    goto :goto_f

    .line 881
    :cond_26
    const/4 v3, 0x1

    .line 882
    :goto_f
    mul-int v11, v11, v3

    .line 883
    .line 884
    goto/16 :goto_6

    .line 885
    .line 886
    :goto_10
    if-gt v3, v1, :cond_34

    .line 887
    .line 888
    const/16 v5, 0xd

    .line 889
    .line 890
    if-ge v1, v5, :cond_34

    .line 891
    .line 892
    if-gt v3, v10, :cond_33

    .line 893
    .line 894
    and-int/lit8 v3, v9, 0x3

    .line 895
    .line 896
    if-nez v3, :cond_28

    .line 897
    .line 898
    rem-int/lit8 v5, v9, 0x64

    .line 899
    .line 900
    if-nez v5, :cond_27

    .line 901
    .line 902
    rem-int/lit16 v5, v9, 0x190

    .line 903
    .line 904
    if-nez v5, :cond_28

    .line 905
    .line 906
    :cond_27
    const/4 v5, 0x1

    .line 907
    :goto_11
    const/4 v6, 0x2

    .line 908
    goto :goto_12

    .line 909
    :cond_28
    const/4 v5, 0x0

    .line 910
    goto :goto_11

    .line 911
    :goto_12
    if-eq v1, v6, :cond_2a

    .line 912
    .line 913
    const/4 v6, 0x4

    .line 914
    if-eq v1, v6, :cond_29

    .line 915
    .line 916
    const/4 v12, 0x6

    .line 917
    if-eq v1, v12, :cond_29

    .line 918
    .line 919
    const/16 v12, 0x9

    .line 920
    .line 921
    if-eq v1, v12, :cond_29

    .line 922
    .line 923
    const/16 v5, 0xb

    .line 924
    .line 925
    if-eq v1, v5, :cond_29

    .line 926
    .line 927
    const/16 v5, 0x1f

    .line 928
    .line 929
    goto :goto_13

    .line 930
    :cond_29
    const/16 v5, 0x1e

    .line 931
    .line 932
    goto :goto_13

    .line 933
    :cond_2a
    if-eqz v5, :cond_2b

    .line 934
    .line 935
    const/16 v5, 0x1d

    .line 936
    .line 937
    goto :goto_13

    .line 938
    :cond_2b
    const/16 v5, 0x1c

    .line 939
    .line 940
    :goto_13
    if-gt v10, v5, :cond_33

    .line 941
    .line 942
    const/16 v5, 0x17

    .line 943
    .line 944
    if-le v15, v5, :cond_2c

    .line 945
    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    .line 947
    .line 948
    const-string v2, "Expected hour in 0..23, got "

    .line 949
    .line 950
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    goto/16 :goto_16

    .line 965
    .line 966
    :cond_2c
    const/16 v12, 0x3b

    .line 967
    .line 968
    if-le v2, v12, :cond_2d

    .line 969
    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    const-string v3, "Expected minute-of-hour in 0..59, got "

    .line 973
    .line 974
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    goto/16 :goto_16

    .line 989
    .line 990
    :cond_2d
    if-le v7, v12, :cond_2e

    .line 991
    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    .line 993
    .line 994
    const-string v2, "Expected second-of-minute in 0..59, got "

    .line 995
    .line 996
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v1

    .line 1010
    goto/16 :goto_16

    .line 1011
    .line 1012
    :cond_2e
    int-to-long v5, v9

    .line 1013
    const/16 v0, 0x16d

    .line 1014
    .line 1015
    int-to-long v12, v0

    .line 1016
    mul-long v12, v12, v5

    .line 1017
    .line 1018
    const-wide/16 v17, 0x0

    .line 1019
    .line 1020
    cmp-long v8, v5, v17

    .line 1021
    .line 1022
    if-ltz v8, :cond_2f

    .line 1023
    .line 1024
    move/from16 p1, v1

    .line 1025
    .line 1026
    const/4 v8, 0x3

    .line 1027
    int-to-long v0, v8

    .line 1028
    add-long/2addr v0, v5

    .line 1029
    move/from16 v16, v15

    .line 1030
    .line 1031
    const/4 v8, 0x4

    .line 1032
    int-to-long v14, v8

    .line 1033
    div-long/2addr v0, v14

    .line 1034
    const/16 v8, 0x63

    .line 1035
    .line 1036
    int-to-long v14, v8

    .line 1037
    add-long/2addr v14, v5

    .line 1038
    const/16 v8, 0x64

    .line 1039
    .line 1040
    move-wide/from16 v18, v0

    .line 1041
    .line 1042
    int-to-long v0, v8

    .line 1043
    div-long/2addr v14, v0

    .line 1044
    sub-long v0, v18, v14

    .line 1045
    .line 1046
    const/16 v8, 0x18f

    .line 1047
    .line 1048
    int-to-long v14, v8

    .line 1049
    add-long/2addr v5, v14

    .line 1050
    move-wide/from16 v17, v0

    .line 1051
    .line 1052
    const/16 v14, 0x190

    .line 1053
    .line 1054
    int-to-long v0, v14

    .line 1055
    div-long/2addr v5, v0

    .line 1056
    add-long v5, v5, v17

    .line 1057
    .line 1058
    add-long/2addr v5, v12

    .line 1059
    goto :goto_14

    .line 1060
    :cond_2f
    move/from16 p1, v1

    .line 1061
    .line 1062
    move/from16 v16, v15

    .line 1063
    .line 1064
    const/4 v0, -0x4

    .line 1065
    int-to-long v0, v0

    .line 1066
    div-long v0, v5, v0

    .line 1067
    .line 1068
    const/16 v8, -0x64

    .line 1069
    .line 1070
    int-to-long v14, v8

    .line 1071
    div-long v14, v5, v14

    .line 1072
    .line 1073
    sub-long/2addr v0, v14

    .line 1074
    const/16 v8, -0x190

    .line 1075
    .line 1076
    int-to-long v14, v8

    .line 1077
    div-long/2addr v5, v14

    .line 1078
    add-long/2addr v5, v0

    .line 1079
    sub-long v5, v12, v5

    .line 1080
    .line 1081
    :goto_14
    move/from16 v1, p1

    .line 1082
    .line 1083
    mul-int/lit16 v0, v1, 0x16f

    .line 1084
    .line 1085
    add-int/lit16 v0, v0, -0x16a

    .line 1086
    .line 1087
    div-int/lit8 v0, v0, 0xc

    .line 1088
    .line 1089
    int-to-long v12, v0

    .line 1090
    add-long/2addr v5, v12

    .line 1091
    const/16 v20, 0x1

    .line 1092
    .line 1093
    add-int/lit8 v10, v10, -0x1

    .line 1094
    .line 1095
    int-to-long v12, v10

    .line 1096
    add-long/2addr v5, v12

    .line 1097
    const/4 v0, 0x2

    .line 1098
    if-le v1, v0, :cond_32

    .line 1099
    .line 1100
    const-wide/16 v0, -0x1

    .line 1101
    .line 1102
    add-long/2addr v0, v5

    .line 1103
    if-nez v3, :cond_31

    .line 1104
    .line 1105
    rem-int/lit8 v3, v9, 0x64

    .line 1106
    .line 1107
    if-nez v3, :cond_30

    .line 1108
    .line 1109
    const/16 v14, 0x190

    .line 1110
    .line 1111
    rem-int/2addr v9, v14

    .line 1112
    if-nez v9, :cond_31

    .line 1113
    .line 1114
    :cond_30
    move-wide v5, v0

    .line 1115
    goto :goto_15

    .line 1116
    :cond_31
    const-wide/16 v0, -0x2

    .line 1117
    .line 1118
    add-long/2addr v5, v0

    .line 1119
    :cond_32
    :goto_15
    const v0, 0xafaa8

    .line 1120
    .line 1121
    .line 1122
    int-to-long v0, v0

    .line 1123
    sub-long/2addr v5, v0

    .line 1124
    move/from16 v0, v16

    .line 1125
    .line 1126
    mul-int/lit16 v15, v0, 0xe10

    .line 1127
    .line 1128
    mul-int/lit8 v2, v2, 0x3c

    .line 1129
    .line 1130
    add-int/2addr v2, v15

    .line 1131
    add-int/2addr v2, v7

    .line 1132
    const v0, 0x15180

    .line 1133
    .line 1134
    .line 1135
    int-to-long v0, v0

    .line 1136
    mul-long v5, v5, v0

    .line 1137
    .line 1138
    int-to-long v0, v2

    .line 1139
    add-long/2addr v5, v0

    .line 1140
    int-to-long v0, v11

    .line 1141
    sub-long/2addr v5, v0

    .line 1142
    new-instance v1, Lyb/g;

    .line 1143
    .line 1144
    invoke-direct {v1, v4, v5, v6}, Lyb/g;-><init>(IJ)V

    .line 1145
    .line 1146
    .line 1147
    goto :goto_16

    .line 1148
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    const-string v3, "Expected a valid day-of-month for month "

    .line 1151
    .line 1152
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    const-string v1, " of year "

    .line 1159
    .line 1160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    const-string v1, ", got "

    .line 1167
    .line 1168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v1

    .line 1178
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    goto :goto_16

    .line 1183
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    const-string v3, "Expected a month number in 1..12, got "

    .line 1186
    .line 1187
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    invoke-static {v0, v1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v1

    .line 1201
    :goto_16
    invoke-interface {v1}, Lyb/h;->toInstant()Lyb/d;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    return-object v0
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lyb/d;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lyb/d;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lpc/s;->r(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lnc/z;->b:Lnc/s0;

    .line 2
    .line 3
    return-object v0
.end method
