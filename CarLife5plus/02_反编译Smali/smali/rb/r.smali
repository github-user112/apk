.class public abstract Lrb/r;
.super Lp4/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v0, Lrb/i;

    .line 2
    .line 3
    sget-object v1, Lrb/s;->i:Lua/e;

    .line 4
    .line 5
    sget-object v2, Lrb/m;->e:Lrb/m;

    .line 6
    .line 7
    new-instance v3, Lrb/x;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v3, v4}, Lrb/x;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    new-array v6, v5, [Lrb/e;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v2, v6, v7

    .line 18
    .line 19
    aput-object v3, v6, v4

    .line 20
    .line 21
    invoke-direct {v0, v1, v6}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lrb/i;

    .line 25
    .line 26
    sget-object v3, Lrb/s;->j:Lua/e;

    .line 27
    .line 28
    new-instance v6, Lrb/x;

    .line 29
    .line 30
    invoke-direct {v6, v5}, Lrb/x;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-array v8, v5, [Lrb/e;

    .line 34
    .line 35
    aput-object v2, v8, v7

    .line 36
    .line 37
    aput-object v6, v8, v4

    .line 38
    .line 39
    sget-object v6, Lrb/h;->e:Lrb/h;

    .line 40
    .line 41
    invoke-direct {v1, v3, v8, v6}, Lrb/i;-><init>(Lua/e;[Lrb/e;Lf9/k;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lrb/i;

    .line 45
    .line 46
    sget-object v6, Lrb/s;->a:Lua/e;

    .line 47
    .line 48
    sget-object v8, Lrb/l;->c:Lrb/l;

    .line 49
    .line 50
    new-instance v9, Lrb/x;

    .line 51
    .line 52
    invoke-direct {v9, v5}, Lrb/x;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sget-object v10, Lrb/l;->b:Lrb/l;

    .line 56
    .line 57
    const/4 v11, 0x4

    .line 58
    new-array v12, v11, [Lrb/e;

    .line 59
    .line 60
    aput-object v2, v12, v7

    .line 61
    .line 62
    aput-object v8, v12, v4

    .line 63
    .line 64
    aput-object v9, v12, v5

    .line 65
    .line 66
    const/4 v9, 0x3

    .line 67
    aput-object v10, v12, v9

    .line 68
    .line 69
    invoke-direct {v3, v6, v12}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lrb/i;

    .line 73
    .line 74
    sget-object v12, Lrb/s;->b:Lua/e;

    .line 75
    .line 76
    new-instance v13, Lrb/x;

    .line 77
    .line 78
    invoke-direct {v13, v9}, Lrb/x;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-array v14, v11, [Lrb/e;

    .line 82
    .line 83
    aput-object v2, v14, v7

    .line 84
    .line 85
    aput-object v8, v14, v4

    .line 86
    .line 87
    aput-object v13, v14, v5

    .line 88
    .line 89
    aput-object v10, v14, v9

    .line 90
    .line 91
    invoke-direct {v6, v12, v14}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 92
    .line 93
    .line 94
    new-instance v12, Lrb/i;

    .line 95
    .line 96
    sget-object v13, Lrb/s;->c:Lua/e;

    .line 97
    .line 98
    new-instance v14, Lrb/x;

    .line 99
    .line 100
    invoke-direct {v14}, Lrb/x;-><init>()V

    .line 101
    .line 102
    .line 103
    new-array v15, v11, [Lrb/e;

    .line 104
    .line 105
    aput-object v2, v15, v7

    .line 106
    .line 107
    aput-object v8, v15, v4

    .line 108
    .line 109
    aput-object v14, v15, v5

    .line 110
    .line 111
    aput-object v10, v15, v9

    .line 112
    .line 113
    invoke-direct {v12, v13, v15}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 114
    .line 115
    .line 116
    new-instance v10, Lrb/i;

    .line 117
    .line 118
    sget-object v13, Lrb/s;->g:Lua/e;

    .line 119
    .line 120
    new-array v14, v4, [Lrb/e;

    .line 121
    .line 122
    aput-object v2, v14, v7

    .line 123
    .line 124
    invoke-direct {v10, v13, v14}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 125
    .line 126
    .line 127
    new-instance v13, Lrb/i;

    .line 128
    .line 129
    sget-object v14, Lrb/s;->f:Lua/e;

    .line 130
    .line 131
    sget-object v15, Lrb/y;->e:Lrb/y;

    .line 132
    .line 133
    sget-object v16, Lrb/t;->c:Lrb/t;

    .line 134
    .line 135
    const/16 v17, 0x0

    .line 136
    .line 137
    new-array v7, v11, [Lrb/e;

    .line 138
    .line 139
    aput-object v2, v7, v17

    .line 140
    .line 141
    aput-object v15, v7, v4

    .line 142
    .line 143
    aput-object v8, v7, v5

    .line 144
    .line 145
    aput-object v16, v7, v9

    .line 146
    .line 147
    invoke-direct {v13, v14, v7}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 148
    .line 149
    .line 150
    new-instance v7, Lrb/i;

    .line 151
    .line 152
    sget-object v14, Lrb/s;->h:Lua/e;

    .line 153
    .line 154
    sget-object v18, Lrb/y;->d:Lrb/y;

    .line 155
    .line 156
    new-array v11, v5, [Lrb/e;

    .line 157
    .line 158
    aput-object v2, v11, v17

    .line 159
    .line 160
    aput-object v18, v11, v4

    .line 161
    .line 162
    invoke-direct {v7, v14, v11}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 163
    .line 164
    .line 165
    new-instance v11, Lrb/i;

    .line 166
    .line 167
    sget-object v14, Lrb/s;->k:Lua/e;

    .line 168
    .line 169
    const/16 v20, 0x1

    .line 170
    .line 171
    new-array v4, v5, [Lrb/e;

    .line 172
    .line 173
    aput-object v2, v4, v17

    .line 174
    .line 175
    aput-object v18, v4, v20

    .line 176
    .line 177
    invoke-direct {v11, v14, v4}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 178
    .line 179
    .line 180
    new-instance v4, Lrb/i;

    .line 181
    .line 182
    sget-object v14, Lrb/s;->l:Lua/e;

    .line 183
    .line 184
    const/16 v21, 0x2

    .line 185
    .line 186
    new-array v5, v9, [Lrb/e;

    .line 187
    .line 188
    aput-object v2, v5, v17

    .line 189
    .line 190
    aput-object v18, v5, v20

    .line 191
    .line 192
    aput-object v16, v5, v21

    .line 193
    .line 194
    invoke-direct {v4, v14, v5}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 195
    .line 196
    .line 197
    new-instance v5, Lrb/i;

    .line 198
    .line 199
    sget-object v14, Lrb/s;->p:Lua/e;

    .line 200
    .line 201
    move-object/from16 v16, v0

    .line 202
    .line 203
    new-array v0, v9, [Lrb/e;

    .line 204
    .line 205
    aput-object v2, v0, v17

    .line 206
    .line 207
    aput-object v15, v0, v20

    .line 208
    .line 209
    aput-object v8, v0, v21

    .line 210
    .line 211
    invoke-direct {v5, v14, v0}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Lrb/i;

    .line 215
    .line 216
    sget-object v14, Lrb/s;->q:Lua/e;

    .line 217
    .line 218
    move-object/from16 v22, v1

    .line 219
    .line 220
    new-array v1, v9, [Lrb/e;

    .line 221
    .line 222
    aput-object v2, v1, v17

    .line 223
    .line 224
    aput-object v15, v1, v20

    .line 225
    .line 226
    aput-object v8, v1, v21

    .line 227
    .line 228
    invoke-direct {v0, v14, v1}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 229
    .line 230
    .line 231
    new-instance v1, Lrb/i;

    .line 232
    .line 233
    sget-object v14, Lrb/s;->d:Lua/e;

    .line 234
    .line 235
    const/4 v9, 0x1

    .line 236
    const/16 v23, 0x3

    .line 237
    .line 238
    move-object/from16 v24, v0

    .line 239
    .line 240
    new-array v0, v9, [Lrb/e;

    .line 241
    .line 242
    sget-object v20, Lrb/m;->d:Lrb/m;

    .line 243
    .line 244
    aput-object v20, v0, v17

    .line 245
    .line 246
    const/16 v20, 0x1

    .line 247
    .line 248
    sget-object v9, Lrb/h;->f:Lrb/h;

    .line 249
    .line 250
    invoke-direct {v1, v14, v0, v9}, Lrb/i;-><init>(Lua/e;[Lrb/e;Lf9/k;)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Lrb/i;

    .line 254
    .line 255
    sget-object v9, Lrb/s;->e:Lua/e;

    .line 256
    .line 257
    move-object/from16 v25, v1

    .line 258
    .line 259
    const/4 v14, 0x4

    .line 260
    new-array v1, v14, [Lrb/e;

    .line 261
    .line 262
    aput-object v2, v1, v17

    .line 263
    .line 264
    sget-object v14, Lrb/u;->c:Lrb/u;

    .line 265
    .line 266
    aput-object v14, v1, v20

    .line 267
    .line 268
    aput-object v15, v1, v21

    .line 269
    .line 270
    aput-object v8, v1, v23

    .line 271
    .line 272
    invoke-direct {v0, v9, v1}, Lrb/i;-><init>(Lua/e;[Lrb/e;)V

    .line 273
    .line 274
    .line 275
    new-instance v1, Lrb/i;

    .line 276
    .line 277
    sget-object v9, Lrb/s;->s:Ljava/util/Set;

    .line 278
    .line 279
    check-cast v9, Ljava/util/Collection;

    .line 280
    .line 281
    const/4 v14, 0x3

    .line 282
    move-object/from16 v26, v0

    .line 283
    .line 284
    new-array v0, v14, [Lrb/e;

    .line 285
    .line 286
    aput-object v2, v0, v17

    .line 287
    .line 288
    aput-object v15, v0, v20

    .line 289
    .line 290
    aput-object v8, v0, v21

    .line 291
    .line 292
    invoke-direct {v1, v9, v0}, Lrb/i;-><init>(Ljava/util/Collection;[Lrb/e;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Lrb/i;

    .line 296
    .line 297
    sget-object v9, Lrb/s;->r:Ljava/util/Set;

    .line 298
    .line 299
    check-cast v9, Ljava/util/Collection;

    .line 300
    .line 301
    move-object/from16 v27, v1

    .line 302
    .line 303
    const/4 v14, 0x2

    .line 304
    new-array v1, v14, [Lrb/e;

    .line 305
    .line 306
    aput-object v2, v1, v17

    .line 307
    .line 308
    aput-object v18, v1, v20

    .line 309
    .line 310
    invoke-direct {v0, v9, v1}, Lrb/i;-><init>(Ljava/util/Collection;[Lrb/e;)V

    .line 311
    .line 312
    .line 313
    new-instance v1, Lrb/i;

    .line 314
    .line 315
    new-array v9, v14, [Lua/e;

    .line 316
    .line 317
    sget-object v14, Lrb/s;->n:Lua/e;

    .line 318
    .line 319
    aput-object v14, v9, v17

    .line 320
    .line 321
    sget-object v14, Lrb/s;->o:Lua/e;

    .line 322
    .line 323
    aput-object v14, v9, v20

    .line 324
    .line 325
    invoke-static {v9}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    const/4 v14, 0x1

    .line 330
    move-object/from16 v28, v0

    .line 331
    .line 332
    new-array v0, v14, [Lrb/e;

    .line 333
    .line 334
    aput-object v2, v0, v17

    .line 335
    .line 336
    const/16 v20, 0x1

    .line 337
    .line 338
    sget-object v14, Lrb/h;->g:Lrb/h;

    .line 339
    .line 340
    invoke-direct {v1, v9, v0, v14}, Lrb/i;-><init>(Ljava/util/Collection;[Lrb/e;Lf9/k;)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Lrb/i;

    .line 344
    .line 345
    sget-object v9, Lrb/s;->t:Ljava/util/Set;

    .line 346
    .line 347
    check-cast v9, Ljava/util/Collection;

    .line 348
    .line 349
    move-object/from16 v29, v1

    .line 350
    .line 351
    const/4 v14, 0x4

    .line 352
    new-array v1, v14, [Lrb/e;

    .line 353
    .line 354
    aput-object v2, v1, v17

    .line 355
    .line 356
    sget-object v14, Lrb/v;->c:Lrb/v;

    .line 357
    .line 358
    aput-object v14, v1, v20

    .line 359
    .line 360
    const/4 v14, 0x2

    .line 361
    aput-object v15, v1, v14

    .line 362
    .line 363
    const/16 v23, 0x3

    .line 364
    .line 365
    aput-object v8, v1, v23

    .line 366
    .line 367
    invoke-direct {v0, v9, v1}, Lrb/i;-><init>(Ljava/util/Collection;[Lrb/e;)V

    .line 368
    .line 369
    .line 370
    new-instance v30, Lrb/i;

    .line 371
    .line 372
    sget-object v1, Lrb/s;->m:Lg9/x;

    .line 373
    .line 374
    new-array v8, v14, [Lrb/e;

    .line 375
    .line 376
    aput-object v2, v8, v17

    .line 377
    .line 378
    aput-object v18, v8, v20

    .line 379
    .line 380
    sget-object v34, Lrb/h;->c:Lrb/h;

    .line 381
    .line 382
    const-string v2, "regex"

    .line 383
    .line 384
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    move-object/from16 v35, v2

    .line 392
    .line 393
    check-cast v35, [Lrb/e;

    .line 394
    .line 395
    const/16 v31, 0x0

    .line 396
    .line 397
    const/16 v33, 0x0

    .line 398
    .line 399
    move-object/from16 v32, v1

    .line 400
    .line 401
    invoke-direct/range {v30 .. v35}, Lrb/i;-><init>(Lua/e;Lg9/x;Ljava/util/Collection;Lf9/k;[Lrb/e;)V

    .line 402
    .line 403
    .line 404
    const/16 v1, 0x13

    .line 405
    .line 406
    new-array v1, v1, [Lrb/i;

    .line 407
    .line 408
    aput-object v16, v1, v17

    .line 409
    .line 410
    const/16 v20, 0x1

    .line 411
    .line 412
    aput-object v22, v1, v20

    .line 413
    .line 414
    aput-object v3, v1, v14

    .line 415
    .line 416
    const/16 v23, 0x3

    .line 417
    .line 418
    aput-object v6, v1, v23

    .line 419
    .line 420
    const/16 v19, 0x4

    .line 421
    .line 422
    aput-object v12, v1, v19

    .line 423
    .line 424
    const/4 v2, 0x5

    .line 425
    aput-object v10, v1, v2

    .line 426
    .line 427
    const/4 v2, 0x6

    .line 428
    aput-object v13, v1, v2

    .line 429
    .line 430
    const/4 v2, 0x7

    .line 431
    aput-object v7, v1, v2

    .line 432
    .line 433
    const/16 v2, 0x8

    .line 434
    .line 435
    aput-object v11, v1, v2

    .line 436
    .line 437
    const/16 v2, 0x9

    .line 438
    .line 439
    aput-object v4, v1, v2

    .line 440
    .line 441
    const/16 v2, 0xa

    .line 442
    .line 443
    aput-object v5, v1, v2

    .line 444
    .line 445
    const/16 v2, 0xb

    .line 446
    .line 447
    aput-object v24, v1, v2

    .line 448
    .line 449
    const/16 v2, 0xc

    .line 450
    .line 451
    aput-object v25, v1, v2

    .line 452
    .line 453
    const/16 v2, 0xd

    .line 454
    .line 455
    aput-object v26, v1, v2

    .line 456
    .line 457
    const/16 v2, 0xe

    .line 458
    .line 459
    aput-object v27, v1, v2

    .line 460
    .line 461
    const/16 v2, 0xf

    .line 462
    .line 463
    aput-object v28, v1, v2

    .line 464
    .line 465
    const/16 v2, 0x10

    .line 466
    .line 467
    aput-object v29, v1, v2

    .line 468
    .line 469
    const/16 v2, 0x11

    .line 470
    .line 471
    aput-object v0, v1, v2

    .line 472
    .line 473
    const/16 v0, 0x12

    .line 474
    .line 475
    aput-object v30, v1, v0

    .line 476
    .line 477
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    sput-object v0, Lrb/r;->b:Ljava/util/List;

    .line 482
    .line 483
    return-void
.end method
