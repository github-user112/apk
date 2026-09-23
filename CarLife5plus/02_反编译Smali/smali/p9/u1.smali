.class public abstract Lp9/u1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp9/u1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ljava/lang/Class;)Laa/f;
    .locals 47

    .line 1
    sget-object v16, Lhb/j;->f:Lhb/j;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lba/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lp9/d2;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lp9/d2;-><init>(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lp9/u1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Laa/f;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    return-object v4

    .line 38
    :cond_0
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance v3, Laa/b;

    .line 42
    .line 43
    invoke-direct {v3, v0}, Laa/b;-><init>(Ljava/lang/ClassLoader;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Laa/b;

    .line 47
    .line 48
    const-class v5, Lr8/z;

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string v6, "getClassLoader(...)"

    .line 55
    .line 56
    invoke-static {v5, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, v5}, Laa/b;-><init>(Ljava/lang/ClassLoader;)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Laa/b;

    .line 63
    .line 64
    invoke-direct {v5, v0}, Laa/b;-><init>(Ljava/lang/ClassLoader;)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v7, "runtime module for "

    .line 70
    .line 71
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v6, Laa/e;->b:Laa/e;

    .line 82
    .line 83
    sget-object v26, Laa/e;->c:Laa/e;

    .line 84
    .line 85
    const-string v7, "moduleName"

    .line 86
    .line 87
    invoke-static {v0, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v7, Lkb/l;

    .line 91
    .line 92
    const-string v8, "DeserializationComponentsForJava.ModuleData"

    .line 93
    .line 94
    invoke-direct {v7, v8}, Lkb/l;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v8, Lu9/i;

    .line 98
    .line 99
    invoke-direct {v8, v7}, Lu9/i;-><init>(Lkb/l;)V

    .line 100
    .line 101
    .line 102
    new-instance v9, Ly9/a0;

    .line 103
    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v11, "<"

    .line 107
    .line 108
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 v0, 0x3e

    .line 115
    .line 116
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lua/e;->g(Ljava/lang/String;)Lua/e;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/16 v10, 0x38

    .line 128
    .line 129
    invoke-direct {v9, v0, v7, v8, v10}, Ly9/a0;-><init>(Lua/e;Lkb/l;Ls9/i;I)V

    .line 130
    .line 131
    .line 132
    iget-object v10, v7, Lkb/l;->a:Lkb/n;

    .line 133
    .line 134
    invoke-interface {v10}, Lkb/n;->lock()V

    .line 135
    .line 136
    .line 137
    :try_start_0
    iget-object v0, v8, Ls9/i;->a:Ly9/a0;

    .line 138
    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    iput-object v9, v8, Ls9/i;->a:Ly9/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    .line 143
    invoke-interface {v10}, Lkb/n;->unlock()V

    .line 144
    .line 145
    .line 146
    new-instance v0, Ls9/l;

    .line 147
    .line 148
    const/4 v10, 0x1

    .line 149
    invoke-direct {v0, v9, v10}, Ls9/l;-><init>(Ly9/a0;I)V

    .line 150
    .line 151
    .line 152
    iput-object v0, v8, Lu9/i;->f:Ls9/l;

    .line 153
    .line 154
    new-instance v21, Lna/f;

    .line 155
    .line 156
    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v0, La2/d;

    .line 160
    .line 161
    const/16 v11, 0x18

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    invoke-direct {v0, v11, v12}, La2/d;-><init>(IZ)V

    .line 165
    .line 166
    .line 167
    new-instance v11, Lba/a;

    .line 168
    .line 169
    invoke-direct {v11, v7, v9}, Lba/a;-><init>(Lkb/l;Lv9/y;)V

    .line 170
    .line 171
    .line 172
    sget-object v28, Lna/g;->c:Lna/g;

    .line 173
    .line 174
    new-instance v17, Lha/a;

    .line 175
    .line 176
    sget-object v22, Lfa/h;->c:Lfa/h;

    .line 177
    .line 178
    sget-object v24, Lfa/h;->a:Lfa/h;

    .line 179
    .line 180
    new-instance v13, Lib/d;

    .line 181
    .line 182
    invoke-direct {v13, v7}, Lib/d;-><init>(Lkb/l;)V

    .line 183
    .line 184
    .line 185
    sget-object v29, Lv9/n0;->c:Lv9/n0;

    .line 186
    .line 187
    new-instance v14, Ls9/n;

    .line 188
    .line 189
    invoke-direct {v14, v9, v11}, Ls9/n;-><init>(Ly9/a0;Lba/a;)V

    .line 190
    .line 191
    .line 192
    new-instance v15, Lea/b;

    .line 193
    .line 194
    sget-object v10, Lea/u;->c:Lea/u;

    .line 195
    .line 196
    invoke-direct {v15, v10}, Lea/b;-><init>(Lea/u;)V

    .line 197
    .line 198
    .line 199
    new-instance v34, Lma/d;

    .line 200
    .line 201
    sget-object v36, Lha/b;->a:Lha/b;

    .line 202
    .line 203
    invoke-direct/range {v34 .. v34}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    sget-object v18, Lmb/k;->b:Lmb/j;

    .line 207
    .line 208
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    sget-object v37, Lmb/j;->b:Lmb/l;

    .line 212
    .line 213
    new-instance v39, Lna/g;

    .line 214
    .line 215
    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    .line 216
    .line 217
    .line 218
    sget-object v30, Lda/a;->a:Lda/a;

    .line 219
    .line 220
    sget-object v35, Lea/l;->a:Lea/l;

    .line 221
    .line 222
    move-object/from16 v27, v0

    .line 223
    .line 224
    move-object/from16 v20, v3

    .line 225
    .line 226
    move-object/from16 v19, v5

    .line 227
    .line 228
    move-object/from16 v23, v6

    .line 229
    .line 230
    move-object/from16 v18, v7

    .line 231
    .line 232
    move-object/from16 v31, v9

    .line 233
    .line 234
    move-object/from16 v38, v10

    .line 235
    .line 236
    move-object/from16 v25, v13

    .line 237
    .line 238
    move-object/from16 v32, v14

    .line 239
    .line 240
    move-object/from16 v33, v15

    .line 241
    .line 242
    invoke-direct/range {v17 .. v39}, Lha/a;-><init>(Lkb/o;Laa/b;Laa/b;Lna/f;Lfa/h;Lhb/m;Lfa/h;Lib/d;Laa/e;La2/d;Lna/g;Lv9/n0;Lda/a;Lv9/y;Ls9/n;Lea/b;Lma/d;Lea/l;Lha/b;Lmb/k;Lea/u;Lna/g;)V

    .line 243
    .line 244
    .line 245
    move-object v3, v1

    .line 246
    move-object v9, v2

    .line 247
    move-object/from16 v7, v17

    .line 248
    .line 249
    move-object/from16 v1, v18

    .line 250
    .line 251
    move-object/from16 v0, v20

    .line 252
    .line 253
    move-object/from16 v5, v21

    .line 254
    .line 255
    move-object/from16 v2, v31

    .line 256
    .line 257
    new-instance v10, Lha/d;

    .line 258
    .line 259
    invoke-direct {v10, v7}, Lha/d;-><init>(Lha/a;)V

    .line 260
    .line 261
    .line 262
    sget-object v7, Lra/e;->g:Lra/e;

    .line 263
    .line 264
    const-string v13, "metadataVersion"

    .line 265
    .line 266
    invoke-static {v7, v13}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    move-object v13, v3

    .line 270
    new-instance v3, Landroid/support/v4/media/session/t;

    .line 271
    .line 272
    const/16 v14, 0x13

    .line 273
    .line 274
    invoke-direct {v3, v14, v0, v5}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    move-object v14, v4

    .line 278
    new-instance v4, Lna/d;

    .line 279
    .line 280
    invoke-direct {v4, v2, v11, v1, v0}, Lna/d;-><init>(Ly9/a0;Lba/a;Lkb/l;Laa/b;)V

    .line 281
    .line 282
    .line 283
    iput-object v7, v4, Lna/d;->f:Ljava/lang/Object;

    .line 284
    .line 285
    sget-object v7, Llb/k;->a:Llb/k;

    .line 286
    .line 287
    invoke-static {v7}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    iget-object v7, v2, Ly9/a0;->d:Ls9/i;

    .line 292
    .line 293
    instance-of v12, v7, Lu9/i;

    .line 294
    .line 295
    if-eqz v12, :cond_2

    .line 296
    .line 297
    check-cast v7, Lu9/i;

    .line 298
    .line 299
    :goto_0
    move-object/from16 v20, v0

    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_2
    const/4 v7, 0x0

    .line 303
    goto :goto_0

    .line 304
    :goto_1
    new-instance v0, Lhb/i;

    .line 305
    .line 306
    move-object v12, v7

    .line 307
    sget-object v7, Lna/g;->b:Lna/g;

    .line 308
    .line 309
    if-eqz v12, :cond_3

    .line 310
    .line 311
    invoke-virtual {v12}, Lu9/i;->K()Lu9/m;

    .line 312
    .line 313
    .line 314
    move-result-object v18

    .line 315
    if-eqz v18, :cond_3

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_3
    sget-object v18, Lx9/a;->b:Lx9/a;

    .line 319
    .line 320
    :goto_2
    if-eqz v12, :cond_4

    .line 321
    .line 322
    invoke-virtual {v12}, Lu9/i;->K()Lu9/m;

    .line 323
    .line 324
    .line 325
    move-result-object v12

    .line 326
    if-eqz v12, :cond_4

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_4
    sget-object v12, Lx9/a;->d:Lx9/a;

    .line 330
    .line 331
    :goto_3
    sget-object v19, Lta/g;->a:Lva/g;

    .line 332
    .line 333
    move-object/from16 v21, v14

    .line 334
    .line 335
    new-instance v14, Lib/d;

    .line 336
    .line 337
    invoke-direct {v14, v1}, Lib/d;-><init>(Lkb/l;)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v22, v8

    .line 341
    .line 342
    sget-object v8, Ls8/w;->a:Ls8/w;

    .line 343
    .line 344
    move-object/from16 v44, v5

    .line 345
    .line 346
    move-object/from16 v46, v9

    .line 347
    .line 348
    move-object v5, v10

    .line 349
    move-object v9, v11

    .line 350
    move-object v11, v12

    .line 351
    move-object/from16 v41, v13

    .line 352
    .line 353
    move-object/from16 v10, v18

    .line 354
    .line 355
    move-object/from16 v12, v19

    .line 356
    .line 357
    move-object/from16 v42, v20

    .line 358
    .line 359
    move-object/from16 v43, v21

    .line 360
    .line 361
    move-object/from16 v45, v27

    .line 362
    .line 363
    move-object/from16 v13, v37

    .line 364
    .line 365
    const/16 v17, 0x0

    .line 366
    .line 367
    invoke-direct/range {v0 .. v16}, Lhb/i;-><init>(Lkb/l;Lv9/y;Lhb/e;Lhb/a;Lv9/g0;Lhb/m;Lhb/n;Ljava/lang/Iterable;Lba/a;Lx9/b;Lx9/d;Lva/g;Lmb/k;Lib/d;Ljava/util/List;Lhb/l;)V

    .line 368
    .line 369
    .line 370
    move-object v3, v0

    .line 371
    move-object v0, v5

    .line 372
    move-object/from16 v5, v44

    .line 373
    .line 374
    iput-object v3, v5, Lna/f;->a:Lhb/i;

    .line 375
    .line 376
    new-instance v4, La2/d;

    .line 377
    .line 378
    const/4 v6, 0x4

    .line 379
    invoke-direct {v4, v6, v0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v6, v45

    .line 383
    .line 384
    iput-object v4, v6, La2/d;->b:Ljava/lang/Object;

    .line 385
    .line 386
    new-instance v4, Lu9/o;

    .line 387
    .line 388
    invoke-virtual/range {v22 .. v22}, Lu9/i;->K()Lu9/m;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    invoke-virtual/range {v22 .. v22}, Lu9/i;->K()Lu9/m;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    new-instance v8, Lib/d;

    .line 397
    .line 398
    invoke-direct {v8, v1}, Lib/d;-><init>(Lkb/l;)V

    .line 399
    .line 400
    .line 401
    const-string v10, "additionalClassPartsProvider"

    .line 402
    .line 403
    invoke-static {v6, v10}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    const-string v10, "platformDependentDeclarationFilter"

    .line 407
    .line 408
    invoke-static {v7, v10}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v14, v43

    .line 412
    .line 413
    invoke-direct {v4, v1, v14, v2}, Lu9/o;-><init>(Lkb/l;Laa/b;Ly9/a0;)V

    .line 414
    .line 415
    .line 416
    new-instance v27, Lhb/i;

    .line 417
    .line 418
    new-instance v10, La2/d;

    .line 419
    .line 420
    const/16 v11, 0x19

    .line 421
    .line 422
    invoke-direct {v10, v11, v4}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    new-instance v11, Landroid/support/v4/media/session/t;

    .line 426
    .line 427
    sget-object v12, Lib/a;->m:Lib/a;

    .line 428
    .line 429
    invoke-direct {v11, v2, v9, v12}, Landroid/support/v4/media/session/t;-><init>(Lv9/y;Lba/a;Lgb/a;)V

    .line 430
    .line 431
    .line 432
    new-instance v13, Lt9/a;

    .line 433
    .line 434
    invoke-direct {v13, v1, v2}, Lt9/a;-><init>(Lkb/l;Ly9/a0;)V

    .line 435
    .line 436
    .line 437
    new-instance v14, Lu9/g;

    .line 438
    .line 439
    invoke-direct {v14, v1, v2}, Lu9/g;-><init>(Lkb/l;Ly9/a0;)V

    .line 440
    .line 441
    .line 442
    const/4 v15, 0x2

    .line 443
    move-object/from16 v16, v0

    .line 444
    .line 445
    new-array v0, v15, [Lx9/c;

    .line 446
    .line 447
    aput-object v13, v0, v17

    .line 448
    .line 449
    const/4 v13, 0x1

    .line 450
    aput-object v14, v0, v13

    .line 451
    .line 452
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 453
    .line 454
    .line 455
    move-result-object v33

    .line 456
    iget-object v0, v12, Lgb/a;->a:Lva/g;

    .line 457
    .line 458
    const/high16 v40, 0x40000

    .line 459
    .line 460
    move-object/from16 v28, v1

    .line 461
    .line 462
    move-object/from16 v29, v2

    .line 463
    .line 464
    move-object/from16 v32, v4

    .line 465
    .line 466
    move-object/from16 v35, v6

    .line 467
    .line 468
    move-object/from16 v36, v7

    .line 469
    .line 470
    move-object/from16 v39, v8

    .line 471
    .line 472
    move-object/from16 v34, v9

    .line 473
    .line 474
    move-object/from16 v30, v10

    .line 475
    .line 476
    move-object/from16 v31, v11

    .line 477
    .line 478
    move-object/from16 v38, v37

    .line 479
    .line 480
    move-object/from16 v37, v0

    .line 481
    .line 482
    invoke-direct/range {v27 .. v40}, Lhb/i;-><init>(Lkb/l;Lv9/y;La2/d;Landroid/support/v4/media/session/t;Lv9/g0;Ljava/lang/Iterable;Lba/a;Lx9/b;Lx9/d;Lva/g;Lmb/k;Lib/d;I)V

    .line 483
    .line 484
    .line 485
    move-object/from16 v1, v27

    .line 486
    .line 487
    move-object/from16 v0, v32

    .line 488
    .line 489
    iput-object v1, v0, Lu9/o;->c:Lhb/i;

    .line 490
    .line 491
    new-array v1, v13, [Ly9/a0;

    .line 492
    .line 493
    aput-object v2, v1, v17

    .line 494
    .line 495
    invoke-static {v1}, Ls8/l;->j0([Ljava/lang/Object;)Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    new-instance v4, Lra/g;

    .line 500
    .line 501
    invoke-direct {v4, v1}, Lra/g;-><init>(Ljava/util/List;)V

    .line 502
    .line 503
    .line 504
    iput-object v4, v2, Ly9/a0;->g:Lra/g;

    .line 505
    .line 506
    new-instance v1, Ly9/l;

    .line 507
    .line 508
    new-array v4, v15, [Lv9/g0;

    .line 509
    .line 510
    aput-object v16, v4, v17

    .line 511
    .line 512
    aput-object v0, v4, v13

    .line 513
    .line 514
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v6, "CompositeProvider@RuntimeModuleData for "

    .line 521
    .line 522
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-direct {v1, v0, v4}, Ly9/l;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    iput-object v1, v2, Ly9/a0;->h:Lv9/g0;

    .line 536
    .line 537
    new-instance v0, Laa/f;

    .line 538
    .line 539
    new-instance v1, La2/b;

    .line 540
    .line 541
    move-object/from16 v2, v42

    .line 542
    .line 543
    invoke-direct {v1, v5, v2}, La2/b;-><init>(Lna/f;Laa/b;)V

    .line 544
    .line 545
    .line 546
    invoke-direct {v0, v3, v1}, Laa/f;-><init>(Lhb/i;La2/b;)V

    .line 547
    .line 548
    .line 549
    :goto_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 550
    .line 551
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    move-object/from16 v3, v41

    .line 555
    .line 556
    move-object/from16 v9, v46

    .line 557
    .line 558
    invoke-virtual {v9, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 563
    .line 564
    if-nez v1, :cond_5

    .line 565
    .line 566
    return-object v0

    .line 567
    :cond_5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    check-cast v2, Laa/f;

    .line 572
    .line 573
    if-eqz v2, :cond_6

    .line 574
    .line 575
    return-object v2

    .line 576
    :cond_6
    invoke-virtual {v9, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-object/from16 v41, v3

    .line 580
    .line 581
    move-object/from16 v46, v9

    .line 582
    .line 583
    goto :goto_4

    .line 584
    :cond_7
    move-object v1, v7

    .line 585
    move-object/from16 v22, v8

    .line 586
    .line 587
    move-object v2, v9

    .line 588
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 589
    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    const-string v4, "Built-ins module is already set: "

    .line 593
    .line 594
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    move-object/from16 v4, v22

    .line 598
    .line 599
    iget-object v4, v4, Ls9/i;->a:Ly9/a0;

    .line 600
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v4, " (attempting to reset to "

    .line 605
    .line 606
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v2, ")"

    .line 613
    .line 614
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    :catchall_0
    move-exception v0

    .line 626
    goto :goto_5

    .line 627
    :catchall_1
    move-exception v0

    .line 628
    move-object v1, v7

    .line 629
    :goto_5
    :try_start_2
    iget-object v1, v1, Lkb/l;->b:Lkb/b;

    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 635
    :catchall_2
    move-exception v0

    .line 636
    invoke-interface {v10}, Lkb/n;->unlock()V

    .line 637
    .line 638
    .line 639
    throw v0
.end method
