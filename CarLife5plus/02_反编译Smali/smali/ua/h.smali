.class public final Lua/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lua/c;

.field public static final b:Lua/c;

.field public static final c:Lua/c;

.field public static final d:Lua/c;

.field public static final e:Lua/c;

.field public static final f:Lua/c;

.field public static final g:Lua/c;

.field public static final h:Lua/b;

.field public static final i:Lua/b;

.field public static final j:Lua/b;

.field public static final k:Lua/b;

.field public static final l:Lua/b;

.field public static final m:Lua/b;

.field public static final n:Lua/b;

.field public static final o:Lua/b;

.field public static final p:Lua/b;

.field public static final q:Lua/b;

.field public static final r:Ljava/util/Set;

.field public static final s:Ljava/util/Set;

.field public static final t:Lua/b;

.field public static final u:Lua/b;

.field public static final v:Lua/b;

.field public static final w:Lua/b;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lua/c;

    .line 2
    .line 3
    const-string v1, "kotlin"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lua/h;->a:Lua/c;

    .line 9
    .line 10
    const-string v1, "reflect"

    .line 11
    .line 12
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lua/c;->a(Lua/e;)Lua/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lua/h;->b:Lua/c;

    .line 21
    .line 22
    const-string v2, "collections"

    .line 23
    .line 24
    invoke-static {v2}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lua/c;->a(Lua/e;)Lua/c;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lua/h;->c:Lua/c;

    .line 33
    .line 34
    const-string v3, "sequences"

    .line 35
    .line 36
    invoke-static {v3}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Lua/c;->a(Lua/e;)Lua/c;

    .line 41
    .line 42
    .line 43
    const-string v3, "ranges"

    .line 44
    .line 45
    invoke-static {v3}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Lua/c;->a(Lua/e;)Lua/c;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    sput-object v3, Lua/h;->d:Lua/c;

    .line 54
    .line 55
    const-string v4, "jvm"

    .line 56
    .line 57
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v0, v5}, Lua/c;->a(Lua/e;)Lua/c;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "annotations"

    .line 66
    .line 67
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v0, v6}, Lua/c;->a(Lua/e;)Lua/c;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v6, v4}, Lua/c;->a(Lua/e;)Lua/c;

    .line 80
    .line 81
    .line 82
    const-string v4, "internal"

    .line 83
    .line 84
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v6}, Lua/c;->a(Lua/e;)Lua/c;

    .line 89
    .line 90
    .line 91
    const-string v6, "functions"

    .line 92
    .line 93
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v5, v6}, Lua/c;->a(Lua/e;)Lua/c;

    .line 98
    .line 99
    .line 100
    const-string v5, "annotation"

    .line 101
    .line 102
    invoke-static {v5}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0, v5}, Lua/c;->a(Lua/e;)Lua/c;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    sput-object v5, Lua/h;->e:Lua/c;

    .line 111
    .line 112
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v4}, Lua/c;->a(Lua/e;)Lua/c;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-string v6, "ir"

    .line 121
    .line 122
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v4, v6}, Lua/c;->a(Lua/e;)Lua/c;

    .line 127
    .line 128
    .line 129
    const-string v6, "coroutines"

    .line 130
    .line 131
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v0, v6}, Lua/c;->a(Lua/e;)Lua/c;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    sput-object v6, Lua/h;->f:Lua/c;

    .line 140
    .line 141
    const-string v7, "intrinsics"

    .line 142
    .line 143
    invoke-static {v7}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v6, v7}, Lua/c;->a(Lua/e;)Lua/c;

    .line 148
    .line 149
    .line 150
    const-string v7, "enums"

    .line 151
    .line 152
    invoke-static {v7}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v0, v7}, Lua/c;->a(Lua/e;)Lua/c;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    sput-object v7, Lua/h;->g:Lua/c;

    .line 161
    .line 162
    const-string v7, "contracts"

    .line 163
    .line 164
    invoke-static {v7}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-virtual {v0, v7}, Lua/c;->a(Lua/e;)Lua/c;

    .line 169
    .line 170
    .line 171
    const-string v7, "concurrent"

    .line 172
    .line 173
    invoke-static {v7}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v0, v7}, Lua/c;->a(Lua/e;)Lua/c;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    const-string v8, "atomics"

    .line 182
    .line 183
    invoke-static {v8}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v7, v8}, Lua/c;->a(Lua/e;)Lua/c;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    const-string v8, "test"

    .line 192
    .line 193
    invoke-static {v8}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v0, v8}, Lua/c;->a(Lua/e;)Lua/c;

    .line 198
    .line 199
    .line 200
    const-string v8, "text"

    .line 201
    .line 202
    invoke-static {v8}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v0, v8}, Lua/c;->a(Lua/e;)Lua/c;

    .line 207
    .line 208
    .line 209
    const/4 v8, 0x4

    .line 210
    new-array v9, v8, [Lua/c;

    .line 211
    .line 212
    const/4 v10, 0x0

    .line 213
    aput-object v0, v9, v10

    .line 214
    .line 215
    const/4 v11, 0x1

    .line 216
    aput-object v2, v9, v11

    .line 217
    .line 218
    const/4 v12, 0x2

    .line 219
    aput-object v3, v9, v12

    .line 220
    .line 221
    const/4 v13, 0x3

    .line 222
    aput-object v5, v9, v13

    .line 223
    .line 224
    invoke-static {v9}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    const/16 v9, 0x8

    .line 228
    .line 229
    new-array v14, v9, [Lua/c;

    .line 230
    .line 231
    aput-object v0, v14, v10

    .line 232
    .line 233
    aput-object v2, v14, v11

    .line 234
    .line 235
    aput-object v3, v14, v12

    .line 236
    .line 237
    aput-object v5, v14, v13

    .line 238
    .line 239
    aput-object v1, v14, v8

    .line 240
    .line 241
    const/4 v0, 0x5

    .line 242
    aput-object v4, v14, v0

    .line 243
    .line 244
    const/4 v1, 0x6

    .line 245
    aput-object v6, v14, v1

    .line 246
    .line 247
    const/4 v2, 0x7

    .line 248
    aput-object v7, v14, v2

    .line 249
    .line 250
    invoke-static {v14}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 251
    .line 252
    .line 253
    const-string v3, "Nothing"

    .line 254
    .line 255
    invoke-static {v3}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 256
    .line 257
    .line 258
    const-string v3, "Unit"

    .line 259
    .line 260
    invoke-static {v3}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    sput-object v3, Lua/h;->h:Lua/b;

    .line 265
    .line 266
    const-string v3, "Any"

    .line 267
    .line 268
    invoke-static {v3}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    sput-object v3, Lua/h;->i:Lua/b;

    .line 273
    .line 274
    const-string v3, "Enum"

    .line 275
    .line 276
    invoke-static {v3}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    sput-object v3, Lua/h;->j:Lua/b;

    .line 281
    .line 282
    const-string v3, "Annotation"

    .line 283
    .line 284
    invoke-static {v3}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 285
    .line 286
    .line 287
    const-string v3, "Array"

    .line 288
    .line 289
    invoke-static {v3}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    sput-object v3, Lua/h;->k:Lua/b;

    .line 294
    .line 295
    const-string v3, "Boolean"

    .line 296
    .line 297
    invoke-static {v3}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    const-string v4, "Char"

    .line 302
    .line 303
    invoke-static {v4}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    const-string v5, "Byte"

    .line 308
    .line 309
    invoke-static {v5}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    const-string v6, "Short"

    .line 314
    .line 315
    invoke-static {v6}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    const-string v7, "Int"

    .line 320
    .line 321
    invoke-static {v7}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    const-string v14, "Long"

    .line 326
    .line 327
    invoke-static {v14}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 328
    .line 329
    .line 330
    move-result-object v14

    .line 331
    const-string v15, "Float"

    .line 332
    .line 333
    invoke-static {v15}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    const-string v16, "Double"

    .line 338
    .line 339
    invoke-static/range {v16 .. v16}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 340
    .line 341
    .line 342
    move-result-object v16

    .line 343
    invoke-static {v5}, Lp4/o;->s(Lua/b;)Lua/b;

    .line 344
    .line 345
    .line 346
    move-result-object v17

    .line 347
    sput-object v17, Lua/h;->l:Lua/b;

    .line 348
    .line 349
    invoke-static {v6}, Lp4/o;->s(Lua/b;)Lua/b;

    .line 350
    .line 351
    .line 352
    move-result-object v17

    .line 353
    sput-object v17, Lua/h;->m:Lua/b;

    .line 354
    .line 355
    invoke-static {v7}, Lp4/o;->s(Lua/b;)Lua/b;

    .line 356
    .line 357
    .line 358
    move-result-object v17

    .line 359
    sput-object v17, Lua/h;->n:Lua/b;

    .line 360
    .line 361
    invoke-static {v14}, Lp4/o;->s(Lua/b;)Lua/b;

    .line 362
    .line 363
    .line 364
    move-result-object v17

    .line 365
    sput-object v17, Lua/h;->o:Lua/b;

    .line 366
    .line 367
    const-string v17, "CharSequence"

    .line 368
    .line 369
    invoke-static/range {v17 .. v17}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 370
    .line 371
    .line 372
    const-string v17, "String"

    .line 373
    .line 374
    invoke-static/range {v17 .. v17}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 375
    .line 376
    .line 377
    move-result-object v17

    .line 378
    sput-object v17, Lua/h;->p:Lua/b;

    .line 379
    .line 380
    const-string v17, "Throwable"

    .line 381
    .line 382
    invoke-static/range {v17 .. v17}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 383
    .line 384
    .line 385
    const-string v17, "Cloneable"

    .line 386
    .line 387
    invoke-static/range {v17 .. v17}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 388
    .line 389
    .line 390
    const-string v17, "KProperty"

    .line 391
    .line 392
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 393
    .line 394
    .line 395
    const-string v17, "KMutableProperty"

    .line 396
    .line 397
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 398
    .line 399
    .line 400
    const-string v17, "KProperty0"

    .line 401
    .line 402
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 403
    .line 404
    .line 405
    const-string v17, "KMutableProperty0"

    .line 406
    .line 407
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 408
    .line 409
    .line 410
    const-string v17, "KProperty1"

    .line 411
    .line 412
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 413
    .line 414
    .line 415
    const-string v17, "KMutableProperty1"

    .line 416
    .line 417
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 418
    .line 419
    .line 420
    const-string v17, "KProperty2"

    .line 421
    .line 422
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 423
    .line 424
    .line 425
    const-string v17, "KMutableProperty2"

    .line 426
    .line 427
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 428
    .line 429
    .line 430
    const-string v17, "KFunction"

    .line 431
    .line 432
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 433
    .line 434
    .line 435
    move-result-object v17

    .line 436
    sput-object v17, Lua/h;->q:Lua/b;

    .line 437
    .line 438
    const-string v17, "KClass"

    .line 439
    .line 440
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 441
    .line 442
    .line 443
    const-string v17, "KCallable"

    .line 444
    .line 445
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 446
    .line 447
    .line 448
    const-string v17, "KType"

    .line 449
    .line 450
    invoke-static/range {v17 .. v17}, Lp4/o;->q(Ljava/lang/String;)Lua/b;

    .line 451
    .line 452
    .line 453
    const-string v17, "Comparable"

    .line 454
    .line 455
    invoke-static/range {v17 .. v17}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 456
    .line 457
    .line 458
    const-string v17, "Number"

    .line 459
    .line 460
    invoke-static/range {v17 .. v17}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 461
    .line 462
    .line 463
    const-string v17, "Function"

    .line 464
    .line 465
    invoke-static/range {v17 .. v17}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 466
    .line 467
    .line 468
    new-array v9, v9, [Lua/b;

    .line 469
    .line 470
    aput-object v3, v9, v10

    .line 471
    .line 472
    aput-object v4, v9, v11

    .line 473
    .line 474
    aput-object v5, v9, v12

    .line 475
    .line 476
    aput-object v6, v9, v13

    .line 477
    .line 478
    aput-object v7, v9, v8

    .line 479
    .line 480
    aput-object v14, v9, v0

    .line 481
    .line 482
    aput-object v15, v9, v1

    .line 483
    .line 484
    aput-object v16, v9, v2

    .line 485
    .line 486
    invoke-static {v9}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sput-object v0, Lua/h;->r:Ljava/util/Set;

    .line 491
    .line 492
    new-array v1, v8, [Lua/b;

    .line 493
    .line 494
    aput-object v5, v1, v10

    .line 495
    .line 496
    aput-object v6, v1, v11

    .line 497
    .line 498
    aput-object v7, v1, v12

    .line 499
    .line 500
    aput-object v14, v1, v13

    .line 501
    .line 502
    invoke-static {v1}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 503
    .line 504
    .line 505
    check-cast v0, Ljava/lang/Iterable;

    .line 506
    .line 507
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 508
    .line 509
    const/16 v2, 0xa

    .line 510
    .line 511
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    invoke-static {v3}, Ls8/c0;->H(I)I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    const/16 v4, 0x10

    .line 520
    .line 521
    if-ge v3, v4, :cond_0

    .line 522
    .line 523
    const/16 v3, 0x10

    .line 524
    .line 525
    :cond_0
    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 526
    .line 527
    .line 528
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-eqz v3, :cond_1

    .line 537
    .line 538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    move-object v5, v3

    .line 543
    check-cast v5, Lua/b;

    .line 544
    .line 545
    invoke-virtual {v5}, Lua/b;->f()Lua/e;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    invoke-static {v5}, Lp4/o;->p(Lua/e;)Lua/b;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    goto :goto_0

    .line 557
    :cond_1
    invoke-static {v1}, Lp4/o;->m(Ljava/util/LinkedHashMap;)V

    .line 558
    .line 559
    .line 560
    new-array v0, v8, [Lua/b;

    .line 561
    .line 562
    sget-object v1, Lua/h;->l:Lua/b;

    .line 563
    .line 564
    aput-object v1, v0, v10

    .line 565
    .line 566
    sget-object v1, Lua/h;->m:Lua/b;

    .line 567
    .line 568
    aput-object v1, v0, v11

    .line 569
    .line 570
    sget-object v1, Lua/h;->n:Lua/b;

    .line 571
    .line 572
    aput-object v1, v0, v12

    .line 573
    .line 574
    sget-object v1, Lua/h;->o:Lua/b;

    .line 575
    .line 576
    aput-object v1, v0, v13

    .line 577
    .line 578
    invoke-static {v0}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    sput-object v0, Lua/h;->s:Ljava/util/Set;

    .line 583
    .line 584
    check-cast v0, Ljava/lang/Iterable;

    .line 585
    .line 586
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 587
    .line 588
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    invoke-static {v2}, Ls8/c0;->H(I)I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-ge v2, v4, :cond_2

    .line 597
    .line 598
    goto :goto_1

    .line 599
    :cond_2
    move v4, v2

    .line 600
    :goto_1
    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 601
    .line 602
    .line 603
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    if-eqz v2, :cond_3

    .line 612
    .line 613
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    move-object v3, v2

    .line 618
    check-cast v3, Lua/b;

    .line 619
    .line 620
    invoke-virtual {v3}, Lua/b;->f()Lua/e;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    invoke-static {v3}, Lp4/o;->p(Lua/e;)Lua/b;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    goto :goto_2

    .line 632
    :cond_3
    invoke-static {v1}, Lp4/o;->m(Ljava/util/LinkedHashMap;)V

    .line 633
    .line 634
    .line 635
    sget-object v0, Lua/h;->r:Ljava/util/Set;

    .line 636
    .line 637
    sget-object v1, Lua/h;->s:Ljava/util/Set;

    .line 638
    .line 639
    check-cast v1, Ljava/lang/Iterable;

    .line 640
    .line 641
    invoke-static {v0, v1}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    sget-object v3, Lua/h;->p:Lua/b;

    .line 646
    .line 647
    invoke-static {v2, v3}, Ls8/f0;->f0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 648
    .line 649
    .line 650
    sget-object v2, Lua/h;->f:Lua/c;

    .line 651
    .line 652
    const-string v4, "Continuation"

    .line 653
    .line 654
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    const-string v5, "packageFqName"

    .line 659
    .line 660
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    sget-object v2, Lua/c;->c:Lua/c;

    .line 664
    .line 665
    invoke-static {v4}, Lp9/x1;->O(Lua/e;)Lua/c;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    iget-object v2, v2, Lua/c;->a:Lua/d;

    .line 670
    .line 671
    invoke-virtual {v2}, Lua/d;->c()Z

    .line 672
    .line 673
    .line 674
    const-string v2, "Iterator"

    .line 675
    .line 676
    invoke-static {v2}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 677
    .line 678
    .line 679
    const-string v2, "Iterable"

    .line 680
    .line 681
    invoke-static {v2}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 682
    .line 683
    .line 684
    const-string v2, "Collection"

    .line 685
    .line 686
    invoke-static {v2}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 687
    .line 688
    .line 689
    const-string v2, "List"

    .line 690
    .line 691
    invoke-static {v2}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 692
    .line 693
    .line 694
    const-string v2, "ListIterator"

    .line 695
    .line 696
    invoke-static {v2}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 697
    .line 698
    .line 699
    const-string v2, "Set"

    .line 700
    .line 701
    invoke-static {v2}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 702
    .line 703
    .line 704
    const-string v2, "Map"

    .line 705
    .line 706
    invoke-static {v2}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    const-string v4, "AbstractMap"

    .line 711
    .line 712
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 713
    .line 714
    .line 715
    const-string v4, "MutableIterator"

    .line 716
    .line 717
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 718
    .line 719
    .line 720
    const-string v4, "CharIterator"

    .line 721
    .line 722
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 723
    .line 724
    .line 725
    const-string v4, "MutableIterable"

    .line 726
    .line 727
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 728
    .line 729
    .line 730
    const-string v4, "MutableCollection"

    .line 731
    .line 732
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 733
    .line 734
    .line 735
    const-string v4, "MutableList"

    .line 736
    .line 737
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    sput-object v4, Lua/h;->t:Lua/b;

    .line 742
    .line 743
    const-string v4, "MutableListIterator"

    .line 744
    .line 745
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 746
    .line 747
    .line 748
    const-string v4, "MutableSet"

    .line 749
    .line 750
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 751
    .line 752
    .line 753
    move-result-object v4

    .line 754
    sput-object v4, Lua/h;->u:Lua/b;

    .line 755
    .line 756
    const-string v4, "MutableMap"

    .line 757
    .line 758
    invoke-static {v4}, Lp4/o;->j(Ljava/lang/String;)Lua/b;

    .line 759
    .line 760
    .line 761
    move-result-object v4

    .line 762
    sput-object v4, Lua/h;->v:Lua/b;

    .line 763
    .line 764
    const-string v6, "Entry"

    .line 765
    .line 766
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    invoke-virtual {v2, v6}, Lua/b;->d(Lua/e;)Lua/b;

    .line 771
    .line 772
    .line 773
    const-string v2, "MutableEntry"

    .line 774
    .line 775
    invoke-static {v2}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual {v4, v2}, Lua/b;->d(Lua/e;)Lua/b;

    .line 780
    .line 781
    .line 782
    const-string v2, "Result"

    .line 783
    .line 784
    invoke-static {v2}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 785
    .line 786
    .line 787
    sget-object v2, Lua/h;->d:Lua/c;

    .line 788
    .line 789
    const-string v4, "IntRange"

    .line 790
    .line 791
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 792
    .line 793
    .line 794
    move-result-object v4

    .line 795
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-static {v4}, Lp9/x1;->O(Lua/e;)Lua/c;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    iget-object v4, v4, Lua/c;->a:Lua/d;

    .line 803
    .line 804
    invoke-virtual {v4}, Lua/d;->c()Z

    .line 805
    .line 806
    .line 807
    const-string v4, "LongRange"

    .line 808
    .line 809
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-static {v4}, Lp9/x1;->O(Lua/e;)Lua/c;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    iget-object v4, v4, Lua/c;->a:Lua/d;

    .line 821
    .line 822
    invoke-virtual {v4}, Lua/d;->c()Z

    .line 823
    .line 824
    .line 825
    const-string v4, "CharRange"

    .line 826
    .line 827
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-static {v4}, Lp9/x1;->O(Lua/e;)Lua/c;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    iget-object v2, v2, Lua/c;->a:Lua/d;

    .line 839
    .line 840
    invoke-virtual {v2}, Lua/d;->c()Z

    .line 841
    .line 842
    .line 843
    sget-object v2, Lua/h;->e:Lua/c;

    .line 844
    .line 845
    const-string v4, "AnnotationRetention"

    .line 846
    .line 847
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-static {v4}, Lp9/x1;->O(Lua/e;)Lua/c;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    iget-object v4, v4, Lua/c;->a:Lua/d;

    .line 859
    .line 860
    invoke-virtual {v4}, Lua/d;->c()Z

    .line 861
    .line 862
    .line 863
    const-string v4, "AnnotationTarget"

    .line 864
    .line 865
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 866
    .line 867
    .line 868
    move-result-object v4

    .line 869
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-static {v4}, Lp9/x1;->O(Lua/e;)Lua/c;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    iget-object v2, v2, Lua/c;->a:Lua/d;

    .line 877
    .line 878
    invoke-virtual {v2}, Lua/d;->c()Z

    .line 879
    .line 880
    .line 881
    const-string v2, "DeprecationLevel"

    .line 882
    .line 883
    invoke-static {v2}, Lp4/o;->i(Ljava/lang/String;)Lua/b;

    .line 884
    .line 885
    .line 886
    new-instance v2, Lua/b;

    .line 887
    .line 888
    sget-object v4, Lua/h;->g:Lua/c;

    .line 889
    .line 890
    const-string v5, "EnumEntries"

    .line 891
    .line 892
    invoke-static {v5}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 893
    .line 894
    .line 895
    move-result-object v5

    .line 896
    invoke-direct {v2, v4, v5}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 897
    .line 898
    .line 899
    sput-object v2, Lua/h;->w:Lua/b;

    .line 900
    .line 901
    invoke-static {v0, v1}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-static {v0, v3}, Ls8/f0;->f0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    sget-object v1, Lua/h;->h:Lua/b;

    .line 910
    .line 911
    invoke-static {v0, v1}, Ls8/f0;->f0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    sget-object v1, Lua/h;->i:Lua/b;

    .line 916
    .line 917
    invoke-static {v0, v1}, Ls8/f0;->f0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    sget-object v1, Lua/h;->j:Lua/b;

    .line 922
    .line 923
    invoke-static {v0, v1}, Ls8/f0;->f0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 924
    .line 925
    .line 926
    return-void
.end method
