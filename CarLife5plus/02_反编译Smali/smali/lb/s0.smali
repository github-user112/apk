.class public final Llb/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final b:Llb/s0;


# instance fields
.field public final a:Llb/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llb/s0;

    .line 2
    .line 3
    sget-object v1, Llb/q0;->a:Llb/o0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llb/s0;-><init>(Llb/q0;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Llb/s0;->b:Llb/s0;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Llb/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llb/s0;->a:Llb/q0;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(I)V
    .locals 13

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eq p0, v4, :cond_0

    .line 10
    .line 11
    if-eq p0, v3, :cond_0

    .line 12
    .line 13
    if-eq p0, v2, :cond_0

    .line 14
    .line 15
    if-eq p0, v1, :cond_0

    .line 16
    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    packed-switch p0, :pswitch_data_1

    .line 23
    .line 24
    .line 25
    packed-switch p0, :pswitch_data_2

    .line 26
    .line 27
    .line 28
    packed-switch p0, :pswitch_data_3

    .line 29
    .line 30
    .line 31
    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    .line 35
    .line 36
    :goto_0
    if-eq p0, v4, :cond_1

    .line 37
    .line 38
    if-eq p0, v3, :cond_1

    .line 39
    .line 40
    if-eq p0, v2, :cond_1

    .line 41
    .line 42
    if-eq p0, v1, :cond_1

    .line 43
    .line 44
    if-eq p0, v0, :cond_1

    .line 45
    .line 46
    packed-switch p0, :pswitch_data_4

    .line 47
    .line 48
    .line 49
    packed-switch p0, :pswitch_data_5

    .line 50
    .line 51
    .line 52
    packed-switch p0, :pswitch_data_6

    .line 53
    .line 54
    .line 55
    packed-switch p0, :pswitch_data_7

    .line 56
    .line 57
    .line 58
    const/4 v6, 0x3

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :pswitch_1
    const/4 v6, 0x2

    .line 61
    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    packed-switch p0, :pswitch_data_8

    .line 67
    .line 68
    .line 69
    :pswitch_2
    const-string v9, "substitution"

    .line 70
    .line 71
    aput-object v9, v6, v8

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_3
    const-string v9, "projectionKind"

    .line 75
    .line 76
    aput-object v9, v6, v8

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :pswitch_4
    const-string v9, "typeParameterVariance"

    .line 80
    .line 81
    aput-object v9, v6, v8

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :pswitch_5
    const-string v9, "annotations"

    .line 85
    .line 86
    aput-object v9, v6, v8

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :pswitch_6
    const-string v9, "substituted"

    .line 90
    .line 91
    aput-object v9, v6, v8

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :pswitch_7
    const-string v9, "originalType"

    .line 95
    .line 96
    aput-object v9, v6, v8

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :pswitch_8
    const-string v9, "originalProjection"

    .line 100
    .line 101
    aput-object v9, v6, v8

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :pswitch_9
    const-string v9, "typeProjection"

    .line 105
    .line 106
    aput-object v9, v6, v8

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :pswitch_a
    const-string v9, "howThisTypeIsUsed"

    .line 110
    .line 111
    aput-object v9, v6, v8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :pswitch_b
    const-string v9, "type"

    .line 115
    .line 116
    aput-object v9, v6, v8

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_c
    const-string v9, "context"

    .line 120
    .line 121
    aput-object v9, v6, v8

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :pswitch_d
    const-string v9, "substitutionContext"

    .line 125
    .line 126
    aput-object v9, v6, v8

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_e
    const-string v9, "second"

    .line 130
    .line 131
    aput-object v9, v6, v8

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_f
    const-string v9, "first"

    .line 135
    .line 136
    aput-object v9, v6, v8

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :pswitch_10
    aput-object v7, v6, v8

    .line 140
    .line 141
    :goto_2
    const-string v8, "safeSubstitute"

    .line 142
    .line 143
    const-string v9, "unsafeSubstitute"

    .line 144
    .line 145
    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    .line 146
    .line 147
    const-string v11, "filterOutUnsafeVariance"

    .line 148
    .line 149
    const-string v12, "combine"

    .line 150
    .line 151
    if-eq p0, v4, :cond_6

    .line 152
    .line 153
    if-eq p0, v3, :cond_5

    .line 154
    .line 155
    if-eq p0, v2, :cond_4

    .line 156
    .line 157
    if-eq p0, v1, :cond_3

    .line 158
    .line 159
    if-eq p0, v0, :cond_2

    .line 160
    .line 161
    packed-switch p0, :pswitch_data_9

    .line 162
    .line 163
    .line 164
    packed-switch p0, :pswitch_data_a

    .line 165
    .line 166
    .line 167
    packed-switch p0, :pswitch_data_b

    .line 168
    .line 169
    .line 170
    packed-switch p0, :pswitch_data_c

    .line 171
    .line 172
    .line 173
    aput-object v7, v6, v4

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :pswitch_11
    aput-object v10, v6, v4

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :pswitch_12
    aput-object v9, v6, v4

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :pswitch_13
    aput-object v8, v6, v4

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_2
    :pswitch_14
    aput-object v12, v6, v4

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_3
    aput-object v11, v6, v4

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    const-string v7, "getSubstitution"

    .line 192
    .line 193
    aput-object v7, v6, v4

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_5
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    .line 197
    .line 198
    aput-object v7, v6, v4

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_6
    const-string v7, "replaceWithNonApproximatingSubstitution"

    .line 202
    .line 203
    aput-object v7, v6, v4

    .line 204
    .line 205
    :goto_3
    packed-switch p0, :pswitch_data_d

    .line 206
    .line 207
    .line 208
    :pswitch_15
    const-string v7, "create"

    .line 209
    .line 210
    aput-object v7, v6, v3

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :pswitch_16
    aput-object v12, v6, v3

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :pswitch_17
    aput-object v11, v6, v3

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :pswitch_18
    aput-object v10, v6, v3

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :pswitch_19
    aput-object v9, v6, v3

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :pswitch_1a
    const-string v7, "substituteWithoutApproximation"

    .line 226
    .line 227
    aput-object v7, v6, v3

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :pswitch_1b
    const-string v7, "substitute"

    .line 231
    .line 232
    aput-object v7, v6, v3

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :pswitch_1c
    aput-object v8, v6, v3

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :pswitch_1d
    const-string v7, "<init>"

    .line 239
    .line 240
    aput-object v7, v6, v3

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :pswitch_1e
    const-string v7, "createChainedSubstitutor"

    .line 244
    .line 245
    aput-object v7, v6, v3

    .line 246
    .line 247
    :goto_4
    :pswitch_1f
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    if-eq p0, v4, :cond_7

    .line 252
    .line 253
    if-eq p0, v3, :cond_7

    .line 254
    .line 255
    if-eq p0, v2, :cond_7

    .line 256
    .line 257
    if-eq p0, v1, :cond_7

    .line 258
    .line 259
    if-eq p0, v0, :cond_7

    .line 260
    .line 261
    packed-switch p0, :pswitch_data_e

    .line 262
    .line 263
    .line 264
    packed-switch p0, :pswitch_data_f

    .line 265
    .line 266
    .line 267
    packed-switch p0, :pswitch_data_10

    .line 268
    .line 269
    .line 270
    packed-switch p0, :pswitch_data_11

    .line 271
    .line 272
    .line 273
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_7
    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :goto_5
    throw p0

    .line 285
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :pswitch_data_a
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x13
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static b(Llb/y0;Llb/y0;)Llb/y0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    sget-object v1, Llb/y0;->c:Llb/y0;

    .line 7
    .line 8
    if-ne p0, v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const/16 p0, 0x28

    .line 14
    .line 15
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    if-ne p1, v1, :cond_3

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const/16 p0, 0x29

    .line 25
    .line 26
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_3
    if-ne p0, p1, :cond_5

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_4
    const/16 p0, 0x2a

    .line 36
    .line 37
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Variance conflict: type parameter variance \'"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "\' and projection kind \'"

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "\' cannot be combined"

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_6
    const/16 p0, 0x27

    .line 75
    .line 76
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_7
    const/16 p0, 0x26

    .line 81
    .line 82
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public static c(Llb/y0;Llb/y0;)I
    .locals 2

    .line 1
    sget-object v0, Llb/y0;->e:Llb/y0;

    .line 2
    .line 3
    sget-object v1, Llb/y0;->d:Llb/y0;

    .line 4
    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    return p0

    .line 11
    :cond_0
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public static d(Llb/w;)Llb/s0;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Llb/l0;->b:Llb/d;

    .line 12
    .line 13
    invoke-virtual {v1, v0, p0}, Llb/d;->g(Llb/k0;Ljava/util/List;)Llb/q0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Llb/s0;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Llb/s0;-><init>(Llb/q0;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const/4 p0, 0x6

    .line 24
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public static e(Llb/q0;Llb/q0;)Llb/s0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Llb/q0;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move-object p0, p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Llb/q0;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Llb/o;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Llb/o;-><init>(Llb/q0;Llb/q0;)V

    .line 24
    .line 25
    .line 26
    move-object p0, v0

    .line 27
    :goto_0
    new-instance p1, Llb/s0;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Llb/s0;-><init>(Llb/q0;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_2
    const/4 p0, 0x4

    .line 34
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_3
    const/4 p0, 0x3

    .line 39
    invoke-static {p0}, Llb/s0;->a(I)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lub/k;->i(Ljava/lang/Throwable;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "[Exception while computing toString(): "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "]"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    throw p0
.end method


# virtual methods
.method public final f()Llb/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/s0;->a:Llb/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-static {v0}, Llb/s0;->a(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final g(Llb/w;Llb/y0;)Llb/w;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Llb/s0;->a:Llb/q0;

    .line 5
    .line 6
    invoke-virtual {v1}, Llb/q0;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Llb/f0;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, v1, v0, p1}, Llb/s0;->j(Llb/n0;Lv9/q0;I)Llb/n0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Llb/n0;->b()Llb/w;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Llb/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    const/16 p1, 0xc

    .line 31
    .line 32
    invoke-static {p1}, Llb/s0;->a(I)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    filled-new-array {p1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object p2, Lnb/k;->k:Lnb/k;

    .line 46
    .line 47
    invoke-static {p2, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    const/16 p1, 0x9

    .line 53
    .line 54
    invoke-static {p1}, Llb/s0;->a(I)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final i(Llb/w;Llb/y0;)Llb/w;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    if-eqz p2, :cond_9

    .line 5
    .line 6
    new-instance v1, Llb/f0;

    .line 7
    .line 8
    invoke-virtual {p0}, Llb/s0;->f()Llb/q0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, p1, p2}, Llb/q0;->f(Llb/w;Llb/y0;)Llb/w;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v1, p1, p2}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Llb/s0;->a:Llb/q0;

    .line 20
    .line 21
    invoke-virtual {p1}, Llb/q0;->e()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, v0, v2}, Llb/s0;->j(Llb/n0;Lv9/q0;I)Llb/n0;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catch Llb/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    nop

    .line 35
    move-object v1, v0

    .line 36
    :goto_0
    invoke-virtual {p1}, Llb/q0;->a()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Llb/q0;->b()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {p1}, Llb/q0;->b()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    :goto_1
    move-object v1, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v1}, Llb/n0;->c()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v1}, Llb/n0;->b()Llb/w;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string v3, "getType(...)"

    .line 69
    .line 70
    invoke-static {p2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v3, Lqb/b;->a:Lqb/b;

    .line 74
    .line 75
    invoke-static {p2, v3, v0}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v1}, Llb/n0;->a()Llb/y0;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v4, "getProjectionKind(...)"

    .line 87
    .line 88
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object v4, Llb/y0;->e:Llb/y0;

    .line 92
    .line 93
    if-ne v3, v4, :cond_5

    .line 94
    .line 95
    invoke-static {p2}, Lp4/o;->t(Llb/w;)Lqb/a;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v1, Llb/f0;

    .line 100
    .line 101
    iget-object p1, p1, Lqb/a;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Llb/w;

    .line 104
    .line 105
    invoke-direct {v1, p1, v3}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-static {p2}, Lp4/o;->t(Llb/w;)Lqb/a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lqb/a;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Llb/w;

    .line 118
    .line 119
    new-instance v1, Llb/f0;

    .line 120
    .line 121
    invoke-direct {v1, p1, v3}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    new-instance p1, Lqb/c;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    new-instance p2, Llb/s0;

    .line 131
    .line 132
    invoke-direct {p2, p1}, Llb/s0;-><init>(Llb/q0;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Llb/q0;->e()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    :try_start_1
    invoke-virtual {p2, v1, v0, v2}, Llb/s0;->j(Llb/n0;Lv9/q0;I)Llb/n0;

    .line 143
    .line 144
    .line 145
    move-result-object v1
    :try_end_1
    .catch Llb/r0; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    goto :goto_2

    .line 147
    :catch_1
    nop

    .line 148
    goto :goto_1

    .line 149
    :goto_2
    if-nez v1, :cond_8

    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_8
    invoke-virtual {v1}, Llb/n0;->b()Llb/w;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :cond_9
    const/16 p1, 0xf

    .line 158
    .line 159
    invoke-static {p1}, Llb/s0;->a(I)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_a
    const/16 p1, 0xe

    .line 164
    .line 165
    invoke-static {p1}, Llb/s0;->a(I)V

    .line 166
    .line 167
    .line 168
    throw v0
.end method

.method public final j(Llb/n0;Lv9/q0;I)Llb/n0;
    .locals 16

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
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_2b

    .line 9
    .line 10
    const/16 v4, 0x64

    .line 11
    .line 12
    iget-object v5, v0, Llb/s0;->a:Llb/q0;

    .line 13
    .line 14
    if-gt v2, v4, :cond_2a

    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Llb/n0;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    goto/16 :goto_10

    .line 23
    .line 24
    :cond_0
    invoke-virtual/range {p1 .. p1}, Llb/n0;->b()Llb/w;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    instance-of v6, v4, Llb/w0;

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    check-cast v4, Llb/w0;

    .line 34
    .line 35
    invoke-interface {v4}, Llb/w0;->u0()Llb/x0;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v4}, Llb/w0;->E()Llb/w;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Llb/f0;

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Llb/n0;->a()Llb/y0;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-direct {v5, v3, v6}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 50
    .line 51
    .line 52
    add-int/2addr v2, v7

    .line 53
    invoke-virtual {v0, v5, v1, v2}, Llb/s0;->j(Llb/n0;Lv9/q0;I)Llb/n0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Llb/n0;->c()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_1
    invoke-virtual/range {p1 .. p1}, Llb/n0;->a()Llb/y0;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v4, v2}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1}, Llb/n0;->b()Llb/w;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Llb/w;->G0()Llb/x0;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3, v2}, Llb/c;->F(Llb/x0;Llb/w;)Llb/x0;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Llb/f0;

    .line 85
    .line 86
    invoke-virtual {v1}, Llb/n0;->a()Llb/y0;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v3, v2, v1}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :cond_2
    const-string v6, "<this>"

    .line 95
    .line 96
    invoke-static {v4, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Llb/w;->G0()Llb/x0;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Llb/w;->G0()Llb/x0;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    instance-of v6, v6, Lja/h;

    .line 107
    .line 108
    if-eqz v6, :cond_3

    .line 109
    .line 110
    goto/16 :goto_10

    .line 111
    .line 112
    :cond_3
    invoke-virtual {v5, v4}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-eqz v6, :cond_8

    .line 117
    .line 118
    invoke-virtual {v4}, Llb/w;->getAnnotations()Lw9/h;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    sget-object v9, Ls9/o;->y:Lua/c;

    .line 123
    .line 124
    invoke-interface {v8, v9}, Lw9/h;->g(Lua/c;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_4

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {v6}, Llb/n0;->b()Llb/w;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v8}, Llb/w;->D0()Llb/k0;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    instance-of v9, v8, Lmb/i;

    .line 140
    .line 141
    if-nez v9, :cond_5

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    check-cast v8, Lmb/i;

    .line 145
    .line 146
    iget-object v8, v8, Lmb/i;->a:Llb/n0;

    .line 147
    .line 148
    invoke-virtual {v8}, Llb/n0;->a()Llb/y0;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual/range {p1 .. p1}, Llb/n0;->a()Llb/y0;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-static {v10, v9}, Llb/s0;->c(Llb/y0;Llb/y0;)I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    const/4 v11, 0x3

    .line 161
    if-ne v10, v11, :cond_6

    .line 162
    .line 163
    new-instance v6, Llb/f0;

    .line 164
    .line 165
    invoke-virtual {v8}, Llb/n0;->b()Llb/w;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-direct {v6, v8}, Llb/f0;-><init>(Llb/w;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_6
    if-nez v1, :cond_7

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_7
    invoke-interface {v1}, Lv9/q0;->J()Llb/y0;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-static {v10, v9}, Llb/s0;->c(Llb/y0;Llb/y0;)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-ne v9, v11, :cond_9

    .line 185
    .line 186
    new-instance v6, Llb/f0;

    .line 187
    .line 188
    invoke-virtual {v8}, Llb/n0;->b()Llb/w;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-direct {v6, v8}, Llb/f0;-><init>(Llb/w;)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_8
    move-object v6, v3

    .line 197
    :cond_9
    :goto_0
    invoke-virtual/range {p1 .. p1}, Llb/n0;->a()Llb/y0;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    const/4 v9, 0x0

    .line 202
    if-nez v6, :cond_d

    .line 203
    .line 204
    invoke-static {v4}, Llb/c;->k(Llb/w;)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_d

    .line 209
    .line 210
    invoke-virtual {v4}, Llb/w;->G0()Llb/x0;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    instance-of v11, v10, Llb/j;

    .line 215
    .line 216
    if-eqz v11, :cond_a

    .line 217
    .line 218
    check-cast v10, Llb/j;

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_a
    move-object v10, v3

    .line 222
    :goto_1
    if-eqz v10, :cond_b

    .line 223
    .line 224
    invoke-interface {v10}, Llb/j;->p0()Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    goto :goto_2

    .line 229
    :cond_b
    const/4 v10, 0x0

    .line 230
    :goto_2
    if-nez v10, :cond_d

    .line 231
    .line 232
    invoke-virtual {v4}, Llb/w;->G0()Llb/x0;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    check-cast v3, Llb/p;

    .line 237
    .line 238
    iget-object v4, v3, Llb/p;->c:Llb/a0;

    .line 239
    .line 240
    iget-object v3, v3, Llb/p;->b:Llb/a0;

    .line 241
    .line 242
    new-instance v5, Llb/f0;

    .line 243
    .line 244
    invoke-direct {v5, v3, v8}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 245
    .line 246
    .line 247
    add-int/2addr v2, v7

    .line 248
    invoke-virtual {v0, v5, v1, v2}, Llb/s0;->j(Llb/n0;Lv9/q0;I)Llb/n0;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    new-instance v6, Llb/f0;

    .line 253
    .line 254
    invoke-direct {v6, v4, v8}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v6, v1, v2}, Llb/s0;->j(Llb/n0;Lv9/q0;I)Llb/n0;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v5}, Llb/n0;->a()Llb/y0;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v5}, Llb/n0;->b()Llb/w;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    if-ne v6, v3, :cond_c

    .line 270
    .line 271
    invoke-virtual {v1}, Llb/n0;->b()Llb/w;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-ne v3, v4, :cond_c

    .line 276
    .line 277
    goto/16 :goto_10

    .line 278
    .line 279
    :cond_c
    invoke-virtual {v5}, Llb/n0;->b()Llb/w;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-static {v3}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v1}, Llb/n0;->b()Llb/w;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-static {v1}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v3, v1}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    new-instance v3, Llb/f0;

    .line 300
    .line 301
    invoke-direct {v3, v1, v2}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 302
    .line 303
    .line 304
    return-object v3

    .line 305
    :cond_d
    invoke-static {v4}, Ls9/i;->F(Llb/w;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_29

    .line 310
    .line 311
    invoke-static {v4}, Llb/c;->j(Llb/w;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_e

    .line 316
    .line 317
    goto/16 :goto_10

    .line 318
    .line 319
    :cond_e
    const/4 v1, 0x2

    .line 320
    if-eqz v6, :cond_1a

    .line 321
    .line 322
    invoke-virtual {v6}, Llb/n0;->a()Llb/y0;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-static {v8, v2}, Llb/s0;->c(Llb/y0;Llb/y0;)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-virtual {v4}, Llb/w;->D0()Llb/k0;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    instance-of v10, v10, Lya/b;

    .line 335
    .line 336
    if-nez v10, :cond_11

    .line 337
    .line 338
    invoke-static {v2}, Le1/d;->b(I)I

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    if-eq v10, v7, :cond_10

    .line 343
    .line 344
    if-eq v10, v1, :cond_f

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_f
    new-instance v1, Llb/r0;

    .line 348
    .line 349
    const-string v2, "Out-projection in in-position"

    .line 350
    .line 351
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v1

    .line 355
    :cond_10
    new-instance v1, Llb/f0;

    .line 356
    .line 357
    invoke-virtual {v4}, Llb/w;->D0()Llb/k0;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-interface {v2}, Llb/k0;->j()Ls9/i;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v2}, Ls9/i;->p()Llb/a0;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    sget-object v3, Llb/y0;->e:Llb/y0;

    .line 370
    .line 371
    invoke-direct {v1, v2, v3}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 372
    .line 373
    .line 374
    return-object v1

    .line 375
    :cond_11
    :goto_3
    invoke-virtual {v4}, Llb/w;->G0()Llb/x0;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    instance-of v11, v10, Llb/j;

    .line 380
    .line 381
    if-eqz v11, :cond_12

    .line 382
    .line 383
    check-cast v10, Llb/j;

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_12
    move-object v10, v3

    .line 387
    :goto_4
    if-eqz v10, :cond_13

    .line 388
    .line 389
    invoke-interface {v10}, Llb/j;->p0()Z

    .line 390
    .line 391
    .line 392
    move-result v11

    .line 393
    if-eqz v11, :cond_13

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_13
    move-object v10, v3

    .line 397
    :goto_5
    invoke-virtual {v6}, Llb/n0;->c()Z

    .line 398
    .line 399
    .line 400
    move-result v11

    .line 401
    if-eqz v11, :cond_14

    .line 402
    .line 403
    return-object v6

    .line 404
    :cond_14
    if-eqz v10, :cond_15

    .line 405
    .line 406
    invoke-virtual {v6}, Llb/n0;->b()Llb/w;

    .line 407
    .line 408
    .line 409
    move-result-object v11

    .line 410
    invoke-interface {v10, v11}, Llb/j;->x(Llb/w;)Llb/x0;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    goto :goto_6

    .line 415
    :cond_15
    invoke-virtual {v6}, Llb/n0;->b()Llb/w;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    invoke-virtual {v4}, Llb/w;->E0()Z

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    invoke-static {v10, v11}, Llb/v0;->h(Llb/w;Z)Llb/w;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    :goto_6
    invoke-virtual {v4}, Llb/w;->getAnnotations()Lw9/h;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    invoke-interface {v11}, Lw9/h;->isEmpty()Z

    .line 432
    .line 433
    .line 434
    move-result v11

    .line 435
    if-nez v11, :cond_18

    .line 436
    .line 437
    invoke-virtual {v4}, Llb/w;->getAnnotations()Lw9/h;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    invoke-virtual {v5, v4}, Llb/q0;->c(Lw9/h;)Lw9/h;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    if-eqz v4, :cond_17

    .line 446
    .line 447
    sget-object v3, Ls9/o;->y:Lua/c;

    .line 448
    .line 449
    invoke-interface {v4, v3}, Lw9/h;->g(Lua/c;)Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-nez v3, :cond_16

    .line 454
    .line 455
    goto :goto_7

    .line 456
    :cond_16
    new-instance v3, Lw9/l;

    .line 457
    .line 458
    new-instance v5, Llb/t;

    .line 459
    .line 460
    invoke-direct {v5, v7}, Llb/t;-><init>(I)V

    .line 461
    .line 462
    .line 463
    invoke-direct {v3, v4, v5}, Lw9/l;-><init>(Lw9/h;Llb/t;)V

    .line 464
    .line 465
    .line 466
    move-object v4, v3

    .line 467
    :goto_7
    new-instance v3, Lw9/i;

    .line 468
    .line 469
    invoke-virtual {v10}, Llb/w;->getAnnotations()Lw9/h;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    new-array v1, v1, [Lw9/h;

    .line 474
    .line 475
    aput-object v5, v1, v9

    .line 476
    .line 477
    aput-object v4, v1, v7

    .line 478
    .line 479
    invoke-direct {v3, v1}, Lw9/i;-><init>([Lw9/h;)V

    .line 480
    .line 481
    .line 482
    invoke-static {v10, v3}, Lp4/o;->Y(Llb/w;Lw9/h;)Llb/w;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    goto :goto_8

    .line 487
    :cond_17
    const/16 v1, 0x21

    .line 488
    .line 489
    invoke-static {v1}, Llb/s0;->a(I)V

    .line 490
    .line 491
    .line 492
    throw v3

    .line 493
    :cond_18
    :goto_8
    if-ne v2, v7, :cond_19

    .line 494
    .line 495
    invoke-virtual {v6}, Llb/n0;->a()Llb/y0;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-static {v8, v1}, Llb/s0;->b(Llb/y0;Llb/y0;)Llb/y0;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    :cond_19
    new-instance v1, Llb/f0;

    .line 504
    .line 505
    invoke-direct {v1, v10, v8}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 506
    .line 507
    .line 508
    return-object v1

    .line 509
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Llb/n0;->b()Llb/w;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual/range {p1 .. p1}, Llb/n0;->a()Llb/y0;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    invoke-virtual {v4}, Llb/w;->D0()Llb/k0;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    invoke-interface {v8}, Llb/k0;->k()Lv9/h;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    instance-of v8, v8, Lv9/q0;

    .line 526
    .line 527
    if-eqz v8, :cond_1b

    .line 528
    .line 529
    goto/16 :goto_10

    .line 530
    .line 531
    :cond_1b
    invoke-virtual {v4}, Llb/w;->G0()Llb/x0;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    instance-of v10, v8, Llb/a;

    .line 536
    .line 537
    if-eqz v10, :cond_1c

    .line 538
    .line 539
    check-cast v8, Llb/a;

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_1c
    move-object v8, v3

    .line 543
    :goto_9
    if-eqz v8, :cond_1d

    .line 544
    .line 545
    iget-object v8, v8, Llb/a;->c:Llb/a0;

    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_1d
    move-object v8, v3

    .line 549
    :goto_a
    sget-object v10, Llb/y0;->c:Llb/y0;

    .line 550
    .line 551
    if-eqz v8, :cond_20

    .line 552
    .line 553
    instance-of v3, v5, Llb/s;

    .line 554
    .line 555
    if-eqz v3, :cond_1f

    .line 556
    .line 557
    move-object v3, v5

    .line 558
    check-cast v3, Llb/s;

    .line 559
    .line 560
    iget-boolean v11, v3, Llb/s;->d:Z

    .line 561
    .line 562
    if-nez v11, :cond_1e

    .line 563
    .line 564
    goto :goto_b

    .line 565
    :cond_1e
    new-instance v11, Llb/s0;

    .line 566
    .line 567
    new-instance v12, Llb/s;

    .line 568
    .line 569
    iget-object v13, v3, Llb/s;->b:[Lv9/q0;

    .line 570
    .line 571
    iget-object v3, v3, Llb/s;->c:[Llb/n0;

    .line 572
    .line 573
    invoke-direct {v12, v13, v3, v9}, Llb/s;-><init>([Lv9/q0;[Llb/n0;Z)V

    .line 574
    .line 575
    .line 576
    invoke-direct {v11, v12}, Llb/s0;-><init>(Llb/q0;)V

    .line 577
    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_1f
    :goto_b
    move-object v11, v0

    .line 581
    :goto_c
    invoke-virtual {v11, v8, v10}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    :cond_20
    invoke-virtual {v4}, Llb/w;->D0()Llb/k0;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    invoke-interface {v8}, Llb/k0;->m()Ljava/util/List;

    .line 590
    .line 591
    .line 592
    move-result-object v8

    .line 593
    invoke-virtual {v4}, Llb/w;->B0()Ljava/util/List;

    .line 594
    .line 595
    .line 596
    move-result-object v11

    .line 597
    new-instance v12, Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 600
    .line 601
    .line 602
    move-result v13

    .line 603
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 604
    .line 605
    .line 606
    const/4 v13, 0x0

    .line 607
    :goto_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 608
    .line 609
    .line 610
    move-result v14

    .line 611
    if-ge v9, v14, :cond_26

    .line 612
    .line 613
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v14

    .line 617
    check-cast v14, Lv9/q0;

    .line 618
    .line 619
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v15

    .line 623
    check-cast v15, Llb/n0;

    .line 624
    .line 625
    add-int/lit8 v1, v2, 0x1

    .line 626
    .line 627
    invoke-virtual {v0, v15, v14, v1}, Llb/s0;->j(Llb/n0;Lv9/q0;I)Llb/n0;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-interface {v14}, Lv9/q0;->J()Llb/y0;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    invoke-virtual {v1}, Llb/n0;->a()Llb/y0;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-static {v7, v0}, Llb/s0;->c(Llb/y0;Llb/y0;)I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    invoke-static {v0}, Le1/d;->b(I)I

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-eqz v0, :cond_23

    .line 648
    .line 649
    const/4 v7, 0x1

    .line 650
    if-eq v0, v7, :cond_21

    .line 651
    .line 652
    const/4 v7, 0x2

    .line 653
    if-eq v0, v7, :cond_22

    .line 654
    .line 655
    goto :goto_e

    .line 656
    :cond_21
    const/4 v7, 0x2

    .line 657
    :cond_22
    invoke-static {v14}, Llb/v0;->j(Lv9/q0;)Llb/f0;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    goto :goto_e

    .line 662
    :cond_23
    const/4 v7, 0x2

    .line 663
    invoke-interface {v14}, Lv9/q0;->J()Llb/y0;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    if-eq v0, v10, :cond_24

    .line 668
    .line 669
    invoke-virtual {v1}, Llb/n0;->c()Z

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    if-nez v0, :cond_24

    .line 674
    .line 675
    new-instance v0, Llb/f0;

    .line 676
    .line 677
    invoke-virtual {v1}, Llb/n0;->b()Llb/w;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-direct {v0, v1, v10}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 682
    .line 683
    .line 684
    move-object v1, v0

    .line 685
    :cond_24
    :goto_e
    if-eq v1, v15, :cond_25

    .line 686
    .line 687
    const/4 v13, 0x1

    .line 688
    :cond_25
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    add-int/lit8 v9, v9, 0x1

    .line 692
    .line 693
    move-object/from16 v0, p0

    .line 694
    .line 695
    const/4 v1, 0x2

    .line 696
    const/4 v7, 0x1

    .line 697
    goto :goto_d

    .line 698
    :cond_26
    if-nez v13, :cond_27

    .line 699
    .line 700
    goto :goto_f

    .line 701
    :cond_27
    move-object v11, v12

    .line 702
    :goto_f
    invoke-virtual {v4}, Llb/w;->getAnnotations()Lw9/h;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v5, v0}, Llb/q0;->c(Lw9/h;)Lw9/h;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    const-string v1, "newArguments"

    .line 711
    .line 712
    invoke-static {v11, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    const-string v1, "newAnnotations"

    .line 716
    .line 717
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    const/4 v1, 0x4

    .line 721
    invoke-static {v4, v11, v0, v1}, Llb/c;->p(Llb/w;Ljava/util/List;Lw9/h;I)Llb/w;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    instance-of v1, v0, Llb/a0;

    .line 726
    .line 727
    if-eqz v1, :cond_28

    .line 728
    .line 729
    instance-of v1, v3, Llb/a0;

    .line 730
    .line 731
    if-eqz v1, :cond_28

    .line 732
    .line 733
    check-cast v0, Llb/a0;

    .line 734
    .line 735
    check-cast v3, Llb/a0;

    .line 736
    .line 737
    invoke-static {v0, v3}, Llb/c;->E(Llb/a0;Llb/a0;)Llb/a0;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    :cond_28
    new-instance v1, Llb/f0;

    .line 742
    .line 743
    invoke-direct {v1, v0, v6}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 744
    .line 745
    .line 746
    return-object v1

    .line 747
    :cond_29
    :goto_10
    return-object p1

    .line 748
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 749
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    const-string v2, "Recursion too deep. Most likely infinite loop while substituting "

    .line 753
    .line 754
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-static/range {p1 .. p1}, Llb/s0;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    const-string v2, "; substitution: "

    .line 765
    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-static {v5}, Llb/s0;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    throw v0

    .line 784
    :cond_2b
    const/16 v0, 0x12

    .line 785
    .line 786
    invoke-static {v0}, Llb/s0;->a(I)V

    .line 787
    .line 788
    .line 789
    throw v3
.end method
