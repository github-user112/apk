.class public final Lu9/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Lua/b;

.field public static final f:Lua/c;

.field public static final g:Lua/b;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Ljava/util/HashMap;

.field public static final j:Ljava/util/HashMap;

.field public static final k:Ljava/util/HashMap;

.field public static final l:Ljava/util/HashMap;

.field public static final m:Ljava/util/HashMap;

.field public static final n:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lt9/g;->c:Lt9/g;

    .line 7
    .line 8
    iget-object v2, v1, Lt9/k;->a:Lua/c;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x2e

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Lt9/k;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lu9/d;->a:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lt9/h;->c:Lt9/h;

    .line 35
    .line 36
    iget-object v3, v1, Lt9/k;->a:Lua/c;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, v1, Lt9/k;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lu9/d;->b:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lt9/j;->c:Lt9/j;

    .line 61
    .line 62
    iget-object v3, v1, Lt9/k;->a:Lua/c;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, v1, Lt9/k;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lu9/d;->c:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lt9/i;->c:Lt9/i;

    .line 87
    .line 88
    iget-object v3, v1, Lt9/k;->a:Lua/c;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, v1, Lt9/k;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lu9/d;->d:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v0, Lua/c;

    .line 108
    .line 109
    const-string v1, "kotlin.jvm.functions.FunctionN"

    .line 110
    .line 111
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lu9/d;->e:Lua/b;

    .line 119
    .line 120
    invoke-virtual {v0}, Lua/b;->a()Lua/c;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sput-object v0, Lu9/d;->f:Lua/c;

    .line 125
    .line 126
    sget-object v0, Lua/h;->q:Lua/b;

    .line 127
    .line 128
    sput-object v0, Lu9/d;->g:Lua/b;

    .line 129
    .line 130
    const-class v0, Ljava/lang/Class;

    .line 131
    .line 132
    invoke-static {v0}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 133
    .line 134
    .line 135
    new-instance v0, Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    sput-object v0, Lu9/d;->h:Ljava/util/HashMap;

    .line 141
    .line 142
    new-instance v0, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lu9/d;->i:Ljava/util/HashMap;

    .line 148
    .line 149
    new-instance v0, Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .line 153
    .line 154
    sput-object v0, Lu9/d;->j:Ljava/util/HashMap;

    .line 155
    .line 156
    new-instance v0, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    sput-object v0, Lu9/d;->k:Ljava/util/HashMap;

    .line 162
    .line 163
    new-instance v0, Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .line 167
    .line 168
    sput-object v0, Lu9/d;->l:Ljava/util/HashMap;

    .line 169
    .line 170
    new-instance v0, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lu9/d;->m:Ljava/util/HashMap;

    .line 176
    .line 177
    sget-object v0, Ls9/o;->B:Lua/c;

    .line 178
    .line 179
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sget-object v1, Ls9/o;->J:Lua/c;

    .line 184
    .line 185
    new-instance v3, Lua/b;

    .line 186
    .line 187
    iget-object v4, v0, Lua/b;->a:Lua/c;

    .line 188
    .line 189
    invoke-static {v1, v4}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const/4 v5, 0x0

    .line 194
    invoke-direct {v3, v4, v1, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lu9/c;

    .line 198
    .line 199
    const-class v4, Ljava/lang/Iterable;

    .line 200
    .line 201
    invoke-static {v4}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-direct {v1, v4, v0, v3}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 206
    .line 207
    .line 208
    sget-object v0, Ls9/o;->A:Lua/c;

    .line 209
    .line 210
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sget-object v3, Ls9/o;->I:Lua/c;

    .line 215
    .line 216
    new-instance v4, Lua/b;

    .line 217
    .line 218
    iget-object v6, v0, Lua/b;->a:Lua/c;

    .line 219
    .line 220
    invoke-static {v3, v6}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-direct {v4, v6, v3, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 225
    .line 226
    .line 227
    new-instance v3, Lu9/c;

    .line 228
    .line 229
    const-class v6, Ljava/util/Iterator;

    .line 230
    .line 231
    invoke-static {v6}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-direct {v3, v6, v0, v4}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Ls9/o;->C:Lua/c;

    .line 239
    .line 240
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sget-object v4, Ls9/o;->K:Lua/c;

    .line 245
    .line 246
    new-instance v6, Lua/b;

    .line 247
    .line 248
    iget-object v7, v0, Lua/b;->a:Lua/c;

    .line 249
    .line 250
    invoke-static {v4, v7}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-direct {v6, v7, v4, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 255
    .line 256
    .line 257
    new-instance v4, Lu9/c;

    .line 258
    .line 259
    const-class v7, Ljava/util/Collection;

    .line 260
    .line 261
    invoke-static {v7}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-direct {v4, v7, v0, v6}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 266
    .line 267
    .line 268
    sget-object v0, Ls9/o;->D:Lua/c;

    .line 269
    .line 270
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    sget-object v6, Ls9/o;->L:Lua/c;

    .line 275
    .line 276
    new-instance v7, Lua/b;

    .line 277
    .line 278
    iget-object v8, v0, Lua/b;->a:Lua/c;

    .line 279
    .line 280
    invoke-static {v6, v8}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-direct {v7, v8, v6, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 285
    .line 286
    .line 287
    new-instance v6, Lu9/c;

    .line 288
    .line 289
    const-class v8, Ljava/util/List;

    .line 290
    .line 291
    invoke-static {v8}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-direct {v6, v8, v0, v7}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 296
    .line 297
    .line 298
    sget-object v0, Ls9/o;->F:Lua/c;

    .line 299
    .line 300
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    sget-object v7, Ls9/o;->N:Lua/c;

    .line 305
    .line 306
    new-instance v8, Lua/b;

    .line 307
    .line 308
    iget-object v9, v0, Lua/b;->a:Lua/c;

    .line 309
    .line 310
    invoke-static {v7, v9}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-direct {v8, v9, v7, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 315
    .line 316
    .line 317
    new-instance v7, Lu9/c;

    .line 318
    .line 319
    const-class v9, Ljava/util/Set;

    .line 320
    .line 321
    invoke-static {v9}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-direct {v7, v9, v0, v8}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 326
    .line 327
    .line 328
    sget-object v0, Ls9/o;->E:Lua/c;

    .line 329
    .line 330
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    sget-object v8, Ls9/o;->M:Lua/c;

    .line 335
    .line 336
    new-instance v9, Lua/b;

    .line 337
    .line 338
    iget-object v10, v0, Lua/b;->a:Lua/c;

    .line 339
    .line 340
    invoke-static {v8, v10}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    invoke-direct {v9, v10, v8, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 345
    .line 346
    .line 347
    new-instance v8, Lu9/c;

    .line 348
    .line 349
    const-class v10, Ljava/util/ListIterator;

    .line 350
    .line 351
    invoke-static {v10}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    invoke-direct {v8, v10, v0, v9}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 356
    .line 357
    .line 358
    sget-object v0, Ls9/o;->G:Lua/c;

    .line 359
    .line 360
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    sget-object v10, Ls9/o;->O:Lua/c;

    .line 365
    .line 366
    new-instance v11, Lua/b;

    .line 367
    .line 368
    iget-object v12, v9, Lua/b;->a:Lua/c;

    .line 369
    .line 370
    invoke-static {v10, v12}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 371
    .line 372
    .line 373
    move-result-object v10

    .line 374
    invoke-direct {v11, v12, v10, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 375
    .line 376
    .line 377
    new-instance v10, Lu9/c;

    .line 378
    .line 379
    const-class v12, Ljava/util/Map;

    .line 380
    .line 381
    invoke-static {v12}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 382
    .line 383
    .line 384
    move-result-object v12

    .line 385
    invoke-direct {v10, v12, v9, v11}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 386
    .line 387
    .line 388
    invoke-static {v0}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    sget-object v9, Ls9/o;->H:Lua/c;

    .line 393
    .line 394
    iget-object v9, v9, Lua/c;->a:Lua/d;

    .line 395
    .line 396
    invoke-virtual {v9}, Lua/d;->f()Lua/e;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    invoke-virtual {v0, v9}, Lua/b;->d(Lua/e;)Lua/b;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    sget-object v9, Ls9/o;->P:Lua/c;

    .line 405
    .line 406
    new-instance v11, Lua/b;

    .line 407
    .line 408
    iget-object v12, v0, Lua/b;->a:Lua/c;

    .line 409
    .line 410
    invoke-static {v9, v12}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    invoke-direct {v11, v12, v9, v5}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 415
    .line 416
    .line 417
    new-instance v9, Lu9/c;

    .line 418
    .line 419
    const-class v12, Ljava/util/Map$Entry;

    .line 420
    .line 421
    invoke-static {v12}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    invoke-direct {v9, v12, v0, v11}, Lu9/c;-><init>(Lua/b;Lua/b;Lua/b;)V

    .line 426
    .line 427
    .line 428
    const/16 v0, 0x8

    .line 429
    .line 430
    new-array v0, v0, [Lu9/c;

    .line 431
    .line 432
    aput-object v1, v0, v5

    .line 433
    .line 434
    const/4 v1, 0x1

    .line 435
    aput-object v3, v0, v1

    .line 436
    .line 437
    const/4 v1, 0x2

    .line 438
    aput-object v4, v0, v1

    .line 439
    .line 440
    const/4 v1, 0x3

    .line 441
    aput-object v6, v0, v1

    .line 442
    .line 443
    const/4 v1, 0x4

    .line 444
    aput-object v7, v0, v1

    .line 445
    .line 446
    const/4 v1, 0x5

    .line 447
    aput-object v8, v0, v1

    .line 448
    .line 449
    const/4 v1, 0x6

    .line 450
    aput-object v10, v0, v1

    .line 451
    .line 452
    const/4 v1, 0x7

    .line 453
    aput-object v9, v0, v1

    .line 454
    .line 455
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    sput-object v0, Lu9/d;->n:Ljava/util/List;

    .line 460
    .line 461
    const-class v1, Ljava/lang/Object;

    .line 462
    .line 463
    sget-object v3, Ls9/o;->a:Lua/d;

    .line 464
    .line 465
    invoke-static {v1, v3}, Lu9/d;->c(Ljava/lang/Class;Lua/d;)V

    .line 466
    .line 467
    .line 468
    const-class v1, Ljava/lang/String;

    .line 469
    .line 470
    sget-object v3, Ls9/o;->f:Lua/d;

    .line 471
    .line 472
    invoke-static {v1, v3}, Lu9/d;->c(Ljava/lang/Class;Lua/d;)V

    .line 473
    .line 474
    .line 475
    const-class v1, Ljava/lang/CharSequence;

    .line 476
    .line 477
    sget-object v3, Ls9/o;->e:Lua/d;

    .line 478
    .line 479
    invoke-static {v1, v3}, Lu9/d;->c(Ljava/lang/Class;Lua/d;)V

    .line 480
    .line 481
    .line 482
    const-class v1, Ljava/lang/Throwable;

    .line 483
    .line 484
    sget-object v3, Ls9/o;->k:Lua/c;

    .line 485
    .line 486
    invoke-static {v1, v3}, Lu9/d;->b(Ljava/lang/Class;Lua/c;)V

    .line 487
    .line 488
    .line 489
    const-class v1, Ljava/lang/Cloneable;

    .line 490
    .line 491
    sget-object v3, Ls9/o;->c:Lua/d;

    .line 492
    .line 493
    invoke-static {v1, v3}, Lu9/d;->c(Ljava/lang/Class;Lua/d;)V

    .line 494
    .line 495
    .line 496
    const-class v1, Ljava/lang/Number;

    .line 497
    .line 498
    sget-object v3, Ls9/o;->i:Lua/d;

    .line 499
    .line 500
    invoke-static {v1, v3}, Lu9/d;->c(Ljava/lang/Class;Lua/d;)V

    .line 501
    .line 502
    .line 503
    const-class v1, Ljava/lang/Comparable;

    .line 504
    .line 505
    sget-object v3, Ls9/o;->l:Lua/c;

    .line 506
    .line 507
    invoke-static {v1, v3}, Lu9/d;->b(Ljava/lang/Class;Lua/c;)V

    .line 508
    .line 509
    .line 510
    const-class v1, Ljava/lang/Enum;

    .line 511
    .line 512
    sget-object v3, Ls9/o;->j:Lua/d;

    .line 513
    .line 514
    invoke-static {v1, v3}, Lu9/d;->c(Ljava/lang/Class;Lua/d;)V

    .line 515
    .line 516
    .line 517
    const-class v1, Ljava/lang/annotation/Annotation;

    .line 518
    .line 519
    sget-object v3, Ls9/o;->s:Lua/c;

    .line 520
    .line 521
    invoke-static {v1, v3}, Lu9/d;->b(Ljava/lang/Class;Lua/c;)V

    .line 522
    .line 523
    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-eqz v1, :cond_0

    .line 533
    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    check-cast v1, Lu9/c;

    .line 539
    .line 540
    iget-object v3, v1, Lu9/c;->a:Lua/b;

    .line 541
    .line 542
    iget-object v4, v1, Lu9/c;->b:Lua/b;

    .line 543
    .line 544
    iget-object v1, v1, Lu9/c;->c:Lua/b;

    .line 545
    .line 546
    invoke-static {v3, v4}, Lu9/d;->a(Lua/b;Lua/b;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Lua/b;->a()Lua/c;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    sget-object v7, Lu9/d;->i:Ljava/util/HashMap;

    .line 554
    .line 555
    iget-object v6, v6, Lua/c;->a:Lua/d;

    .line 556
    .line 557
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    sget-object v3, Lu9/d;->l:Ljava/util/HashMap;

    .line 561
    .line 562
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    sget-object v3, Lu9/d;->m:Ljava/util/HashMap;

    .line 566
    .line 567
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v4}, Lua/b;->a()Lua/c;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v1}, Lua/b;->a()Lua/c;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    sget-object v6, Lu9/d;->j:Ljava/util/HashMap;

    .line 579
    .line 580
    invoke-virtual {v1}, Lua/b;->a()Lua/c;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 585
    .line 586
    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    sget-object v1, Lu9/d;->k:Ljava/util/HashMap;

    .line 590
    .line 591
    iget-object v3, v3, Lua/c;->a:Lua/d;

    .line 592
    .line 593
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    goto :goto_0

    .line 597
    :cond_0
    invoke-static {}, Lcb/c;->values()[Lcb/c;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    array-length v1, v0

    .line 602
    const/4 v3, 0x0

    .line 603
    :goto_1
    if-ge v3, v1, :cond_2

    .line 604
    .line 605
    aget-object v4, v0, v3

    .line 606
    .line 607
    iget-object v6, v4, Lcb/c;->d:Lua/c;

    .line 608
    .line 609
    if-eqz v6, :cond_1

    .line 610
    .line 611
    new-instance v7, Lua/b;

    .line 612
    .line 613
    invoke-virtual {v6}, Lua/c;->b()Lua/c;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    iget-object v6, v6, Lua/c;->a:Lua/d;

    .line 618
    .line 619
    invoke-virtual {v6}, Lua/d;->f()Lua/e;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    invoke-direct {v7, v8, v6}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4}, Lcb/c;->d()Ls9/k;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    const-string v6, "getPrimitiveType(...)"

    .line 631
    .line 632
    invoke-static {v4, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    sget-object v6, Ls9/p;->k:Lua/c;

    .line 636
    .line 637
    iget-object v4, v4, Ls9/k;->a:Lua/e;

    .line 638
    .line 639
    invoke-virtual {v6, v4}, Lua/c;->a(Lua/e;)Lua/c;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    new-instance v6, Lua/b;

    .line 644
    .line 645
    invoke-virtual {v4}, Lua/c;->b()Lua/c;

    .line 646
    .line 647
    .line 648
    move-result-object v8

    .line 649
    iget-object v4, v4, Lua/c;->a:Lua/d;

    .line 650
    .line 651
    invoke-virtual {v4}, Lua/d;->f()Lua/e;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    invoke-direct {v6, v8, v4}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 656
    .line 657
    .line 658
    invoke-static {v7, v6}, Lu9/d;->a(Lua/b;Lua/b;)V

    .line 659
    .line 660
    .line 661
    add-int/lit8 v3, v3, 0x1

    .line 662
    .line 663
    goto :goto_1

    .line 664
    :cond_1
    const/16 v0, 0xf

    .line 665
    .line 666
    invoke-static {v0}, Lcb/c;->a(I)V

    .line 667
    .line 668
    .line 669
    const/4 v0, 0x0

    .line 670
    throw v0

    .line 671
    :cond_2
    sget-object v0, Ls9/d;->a:Ljava/util/LinkedHashSet;

    .line 672
    .line 673
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-eqz v1, :cond_3

    .line 682
    .line 683
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    check-cast v1, Lua/b;

    .line 688
    .line 689
    new-instance v3, Lua/c;

    .line 690
    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    const-string v6, "kotlin.jvm.internal."

    .line 694
    .line 695
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1}, Lua/b;->f()Lua/e;

    .line 699
    .line 700
    .line 701
    move-result-object v6

    .line 702
    invoke-virtual {v6}, Lua/e;->b()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v6

    .line 706
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    const-string v6, "CompanionObject"

    .line 710
    .line 711
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-direct {v3, v4}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    new-instance v4, Lua/b;

    .line 722
    .line 723
    invoke-virtual {v3}, Lua/c;->b()Lua/c;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    iget-object v3, v3, Lua/c;->a:Lua/d;

    .line 728
    .line 729
    invoke-virtual {v3}, Lua/d;->f()Lua/e;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    invoke-direct {v4, v6, v3}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 734
    .line 735
    .line 736
    sget-object v3, Lua/g;->b:Lua/e;

    .line 737
    .line 738
    invoke-virtual {v1, v3}, Lua/b;->d(Lua/e;)Lua/b;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-static {v4, v1}, Lu9/d;->a(Lua/b;Lua/b;)V

    .line 743
    .line 744
    .line 745
    goto :goto_2

    .line 746
    :cond_3
    const/4 v0, 0x0

    .line 747
    :goto_3
    const/16 v1, 0x17

    .line 748
    .line 749
    if-ge v0, v1, :cond_4

    .line 750
    .line 751
    new-instance v1, Lua/c;

    .line 752
    .line 753
    const-string v3, "kotlin.jvm.functions.Function"

    .line 754
    .line 755
    invoke-static {v0, v3}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    invoke-direct {v1, v3}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    new-instance v3, Lua/b;

    .line 763
    .line 764
    invoke-virtual {v1}, Lua/c;->b()Lua/c;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 769
    .line 770
    invoke-virtual {v1}, Lua/d;->f()Lua/e;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    invoke-direct {v3, v4, v1}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 775
    .line 776
    .line 777
    new-instance v1, Lua/b;

    .line 778
    .line 779
    sget-object v4, Ls9/p;->k:Lua/c;

    .line 780
    .line 781
    new-instance v6, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    const-string v7, "Function"

    .line 784
    .line 785
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v6

    .line 795
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    invoke-direct {v1, v4, v6}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 800
    .line 801
    .line 802
    invoke-static {v3, v1}, Lu9/d;->a(Lua/b;Lua/b;)V

    .line 803
    .line 804
    .line 805
    new-instance v1, Lua/c;

    .line 806
    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .line 811
    .line 812
    sget-object v4, Lu9/d;->b:Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    invoke-direct {v1, v3}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    sget-object v3, Lu9/d;->g:Lua/b;

    .line 828
    .line 829
    sget-object v4, Lu9/d;->i:Ljava/util/HashMap;

    .line 830
    .line 831
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 832
    .line 833
    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    add-int/lit8 v0, v0, 0x1

    .line 837
    .line 838
    goto :goto_3

    .line 839
    :cond_4
    :goto_4
    const/16 v0, 0x16

    .line 840
    .line 841
    if-ge v5, v0, :cond_5

    .line 842
    .line 843
    sget-object v0, Lt9/i;->c:Lt9/i;

    .line 844
    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .line 849
    .line 850
    iget-object v3, v0, Lt9/k;->a:Lua/c;

    .line 851
    .line 852
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    iget-object v0, v0, Lt9/k;->b:Ljava/lang/String;

    .line 859
    .line 860
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    new-instance v1, Lua/c;

    .line 868
    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-direct {v1, v0}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    sget-object v0, Lu9/d;->g:Lua/b;

    .line 888
    .line 889
    sget-object v3, Lu9/d;->i:Ljava/util/HashMap;

    .line 890
    .line 891
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 892
    .line 893
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    add-int/lit8 v5, v5, 0x1

    .line 897
    .line 898
    goto :goto_4

    .line 899
    :cond_5
    new-instance v0, Lua/c;

    .line 900
    .line 901
    const-string v1, "kotlin.concurrent.atomics.AtomicInt"

    .line 902
    .line 903
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 907
    .line 908
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    sget-object v2, Lu9/d;->i:Ljava/util/HashMap;

    .line 913
    .line 914
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 915
    .line 916
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    new-instance v0, Lua/c;

    .line 920
    .line 921
    const-string v1, "kotlin.concurrent.atomics.AtomicLong"

    .line 922
    .line 923
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 927
    .line 928
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 933
    .line 934
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    new-instance v0, Lua/c;

    .line 938
    .line 939
    const-string v1, "kotlin.concurrent.atomics.AtomicBoolean"

    .line 940
    .line 941
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 945
    .line 946
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 951
    .line 952
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    new-instance v0, Lua/c;

    .line 956
    .line 957
    const-string v1, "kotlin.concurrent.atomics.AtomicReference"

    .line 958
    .line 959
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 963
    .line 964
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 969
    .line 970
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    new-instance v0, Lua/c;

    .line 974
    .line 975
    const-string v1, "kotlin.concurrent.atomics.AtomicIntArray"

    .line 976
    .line 977
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 981
    .line 982
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 987
    .line 988
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    new-instance v0, Lua/c;

    .line 992
    .line 993
    const-string v1, "kotlin.concurrent.atomics.AtomicLongArray"

    .line 994
    .line 995
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 999
    .line 1000
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 1005
    .line 1006
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    new-instance v0, Lua/c;

    .line 1010
    .line 1011
    const-string v1, "kotlin.concurrent.atomics.AtomicArray"

    .line 1012
    .line 1013
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    const-class v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1017
    .line 1018
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 1023
    .line 1024
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    sget-object v0, Ls9/o;->b:Lua/d;

    .line 1028
    .line 1029
    invoke-virtual {v0}, Lua/d;->g()Lua/c;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    const-class v1, Ljava/lang/Void;

    .line 1034
    .line 1035
    invoke-static {v1}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v1

    .line 1039
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 1040
    .line 1041
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    return-void
.end method

.method public static a(Lua/b;Lua/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lua/b;->a()Lua/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 6
    .line 7
    sget-object v1, Lu9/d;->h:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lua/b;->a()Lua/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lu9/d;->i:Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object p1, p1, Lua/c;->a:Lua/d;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static b(Ljava/lang/Class;Lua/c;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "topLevelFqName"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lua/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Lua/c;->b()Lua/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p1, p1, Lua/c;->a:Lua/d;

    .line 17
    .line 18
    invoke-virtual {p1}, Lua/d;->f()Lua/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, v1, p1}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lu9/d;->a(Lua/b;Lua/b;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static c(Ljava/lang/Class;Lua/d;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lua/d;->g()Lua/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lu9/d;->b(Ljava/lang/Class;Lua/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static d(Ljava/lang/Class;)Lua/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lua/c;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "getCanonicalName(...)"

    .line 24
    .line 25
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lua/b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 38
    .line 39
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0, v1, v0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    invoke-static {v0}, Lu9/d;->d(Ljava/lang/Class;)Lua/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Lua/b;->d(Lua/e;)Lua/b;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static e(Lua/d;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lua/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "substring(...)"

    .line 19
    .line 20
    invoke-static {p0, p1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x30

    .line 24
    .line 25
    invoke-static {p1, p0}, Lxb/i;->Y(CLjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-static {p0}, Lxb/p;->E(Ljava/lang/String;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/16 p1, 0x17

    .line 42
    .line 43
    if-lt p0, p1, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public static f(Lua/d;)Lua/b;
    .locals 1

    .line 1
    const-string v0, "kotlinFqName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu9/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lu9/d;->e(Lua/d;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lu9/d;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p0, v0}, Lu9/d;->e(Lua/d;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    sget-object p0, Lu9/d;->e:Lua/b;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    sget-object v0, Lu9/d;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0, v0}, Lu9/d;->e(Lua/d;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    sget-object v0, Lu9/d;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, v0}, Lu9/d;->e(Lua/d;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    :goto_1
    sget-object p0, Lu9/d;->g:Lua/b;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    sget-object v0, Lu9/d;->i:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lua/b;

    .line 53
    .line 54
    return-object p0
.end method
