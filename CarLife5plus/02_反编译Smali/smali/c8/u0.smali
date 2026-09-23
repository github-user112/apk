.class public final Lc8/u0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lc8/u0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/u0;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/u0;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Lc8/u0;->d:Lf1/b1;

    .line 8
    .line 9
    iput-object p4, p0, Lc8/u0;->e:Lf1/b1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc8/u0;->a:I

    .line 4
    .line 5
    iget-object v2, v1, Lc8/u0;->e:Lf1/b1;

    .line 6
    .line 7
    iget-object v3, v1, Lc8/u0;->d:Lf1/b1;

    .line 8
    .line 9
    iget-object v4, v1, Lc8/u0;->c:Lf1/b1;

    .line 10
    .line 11
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 12
    .line 13
    iget-object v6, v1, Lc8/u0;->b:Lf1/b1;

    .line 14
    .line 15
    const v7, 0x4c5de2

    .line 16
    .line 17
    .line 18
    const/16 v8, 0x30

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    sget-object v10, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    const/4 v11, 0x3

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x2

    .line 26
    const/4 v14, 0x1

    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    move-object/from16 v0, p1

    .line 31
    .line 32
    check-cast v0, Lf1/s;

    .line 33
    .line 34
    move-object/from16 v2, p2

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    and-int/2addr v2, v11

    .line 43
    if-ne v2, v13, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    new-instance v15, Lc8/u0;

    .line 57
    .line 58
    iget-object v2, v1, Lc8/u0;->e:Lf1/b1;

    .line 59
    .line 60
    const/16 v20, 0x2

    .line 61
    .line 62
    iget-object v3, v1, Lc8/u0;->b:Lf1/b1;

    .line 63
    .line 64
    iget-object v4, v1, Lc8/u0;->c:Lf1/b1;

    .line 65
    .line 66
    iget-object v5, v1, Lc8/u0;->d:Lf1/b1;

    .line 67
    .line 68
    move-object/from16 v19, v2

    .line 69
    .line 70
    move-object/from16 v16, v3

    .line 71
    .line 72
    move-object/from16 v17, v4

    .line 73
    .line 74
    move-object/from16 v18, v5

    .line 75
    .line 76
    invoke-direct/range {v15 .. v20}, Lc8/u0;-><init>(Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 77
    .line 78
    .line 79
    const v2, 0x17e7001f

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v15, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v9, v2, v0, v8, v14}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-object v10

    .line 90
    :pswitch_0
    move-object/from16 v8, p1

    .line 91
    .line 92
    check-cast v8, Lf1/s;

    .line 93
    .line 94
    move-object/from16 v0, p2

    .line 95
    .line 96
    check-cast v0, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    and-int/2addr v0, v11

    .line 103
    if-ne v0, v13, :cond_3

    .line 104
    .line 105
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_3
    :goto_2
    const v9, 0x6e3c21fe

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v9}, Lf1/s;->W(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-ne v0, v5, :cond_4

    .line 128
    .line 129
    sget-object v0, Lz7/e2;->Companion:Lz7/d2;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    :try_start_0
    sget-object v15, Lz7/e2;->e:Lr8/o;

    .line 135
    .line 136
    invoke-virtual {v15}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    check-cast v15, Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 143
    .line 144
    .line 145
    move-result-object v15

    .line 146
    const-string v13, "region_location.json"

    .line 147
    .line 148
    invoke-virtual {v15, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    const-string v15, "open(...)"

    .line 153
    .line 154
    invoke-static {v13, v15}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v15, Lxb/a;->a:Ljava/nio/charset/Charset;

    .line 158
    .line 159
    new-instance v11, Ljava/io/InputStreamReader;

    .line 160
    .line 161
    invoke-direct {v11, v13, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 162
    .line 163
    .line 164
    new-instance v13, Ljava/io/BufferedReader;

    .line 165
    .line 166
    const/16 v15, 0x2000

    .line 167
    .line 168
    invoke-direct {v13, v11, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    :try_start_1
    invoke-static {v13}, Lm9/e0;->v0(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    invoke-interface {v13}, Ljava/io/Closeable;->close()V

    .line 176
    .line 177
    .line 178
    sget-object v13, Loc/b;->d:Loc/b;

    .line 179
    .line 180
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v15, Lnc/c;

    .line 184
    .line 185
    invoke-virtual {v0}, Lz7/d2;->serializer()Lkc/a;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {v15, v0}, Lnc/c;-><init>(Lkc/a;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v15, v11}, Loc/b;->a(Lnc/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catch_0
    move-exception v0

    .line 200
    goto :goto_3

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    move-object v11, v0

    .line 203
    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    :catchall_1
    move-exception v0

    .line 205
    :try_start_4
    invoke-static {v13, v11}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    :goto_3
    sget-object v11, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v13, "\u52a0\u8f7d region_location.json \u51fa\u9519: "

    .line 216
    .line 217
    invoke-static {v13, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-array v13, v14, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object v0, v13, v12

    .line 224
    .line 225
    const-string v0, "ThemeRegion"

    .line 226
    .line 227
    invoke-virtual {v11, v0, v13}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lz7/e2;

    .line 231
    .line 232
    invoke-direct {v0}, Lz7/e2;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :goto_4
    invoke-virtual {v8, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 243
    .line 244
    invoke-static {v8, v12, v9}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    if-ne v9, v5, :cond_5

    .line 249
    .line 250
    new-instance v9, Lr8/j;

    .line 251
    .line 252
    const-string v11, ""

    .line 253
    .line 254
    invoke-direct {v9, v11, v11}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v9}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v8, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_5
    check-cast v9, Lf1/b1;

    .line 265
    .line 266
    invoke-virtual {v8, v12}, Lf1/s;->p(Z)V

    .line 267
    .line 268
    .line 269
    const-string v11, "\u9009\u62e9\u7701\u4efd"

    .line 270
    .line 271
    const-string v13, "\u5f53\u524d\u6240\u5728\u7701\u4efd"

    .line 272
    .line 273
    filled-new-array {v11, v13}, [Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-static {v11}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v15

    .line 281
    new-instance v11, Ljava/util/HashSet;

    .line 282
    .line 283
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 284
    .line 285
    .line 286
    new-instance v13, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v16

    .line 295
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v17

    .line 299
    if-eqz v17, :cond_7

    .line 300
    .line 301
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v14

    .line 305
    move-object v12, v14

    .line 306
    check-cast v12, Lz7/e2;

    .line 307
    .line 308
    iget-object v12, v12, Lz7/e2;->a:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    if-eqz v12, :cond_6

    .line 315
    .line 316
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    :cond_6
    const/4 v12, 0x0

    .line 320
    const/4 v14, 0x1

    .line 321
    goto :goto_5

    .line 322
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    .line 323
    .line 324
    const/16 v12, 0xa

    .line 325
    .line 326
    invoke-static {v13, v12}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 327
    .line 328
    .line 329
    move-result v14

    .line 330
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    if-eqz v14, :cond_8

    .line 342
    .line 343
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v14

    .line 347
    check-cast v14, Lz7/e2;

    .line 348
    .line 349
    new-instance v16, Lj8/k0;

    .line 350
    .line 351
    iget-object v14, v14, Lz7/e2;->a:Ljava/lang/String;

    .line 352
    .line 353
    new-instance v12, Lj8/n0;

    .line 354
    .line 355
    invoke-direct {v12, v14}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const/16 v21, 0x0

    .line 359
    .line 360
    const/16 v22, 0x1c

    .line 361
    .line 362
    const/16 v19, 0x0

    .line 363
    .line 364
    const/16 v20, 0x0

    .line 365
    .line 366
    move-object/from16 v18, v12

    .line 367
    .line 368
    move-object/from16 v17, v14

    .line 369
    .line 370
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v12, v16

    .line 374
    .line 375
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    const/16 v12, 0xa

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_8
    invoke-virtual {v8, v7}, Lf1/s;->W(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v12

    .line 388
    if-ne v12, v5, :cond_9

    .line 389
    .line 390
    new-instance v12, La8/s0;

    .line 391
    .line 392
    const/16 v13, 0xc

    .line 393
    .line 394
    invoke-direct {v12, v6, v13}, La8/s0;-><init>(Lf1/b1;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_9
    move-object/from16 v20, v12

    .line 401
    .line 402
    check-cast v20, Lf9/k;

    .line 403
    .line 404
    const/4 v12, 0x0

    .line 405
    invoke-virtual {v8, v12}, Lf1/s;->p(Z)V

    .line 406
    .line 407
    .line 408
    const v22, 0x30006

    .line 409
    .line 410
    .line 411
    const/16 v23, 0x1c

    .line 412
    .line 413
    const/16 v17, 0x0

    .line 414
    .line 415
    const/16 v18, 0x0

    .line 416
    .line 417
    const/16 v19, 0x0

    .line 418
    .line 419
    move-object/from16 v21, v8

    .line 420
    .line 421
    move-object/from16 v16, v11

    .line 422
    .line 423
    invoke-static/range {v15 .. v23}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 424
    .line 425
    .line 426
    sget v11, Lc8/h1;->f:I

    .line 427
    .line 428
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    check-cast v11, Ljava/lang/String;

    .line 433
    .line 434
    const v12, -0x45d8528f

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8, v12, v11}, Lf1/s;->U(ILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    const-string v11, "\u9009\u62e9\u5e02\u533a"

    .line 441
    .line 442
    const-string v12, "\u8bbe\u7f6e\u540e\u53ef\u81ea\u52a8\u83b7\u53d6\u65e5\u51fa\u65e5\u843d\u65f6\u95f4"

    .line 443
    .line 444
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    invoke-static {v11}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v15

    .line 452
    new-instance v11, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v12

    .line 465
    if-eqz v12, :cond_b

    .line 466
    .line 467
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    move-object v13, v12

    .line 472
    check-cast v13, Lz7/e2;

    .line 473
    .line 474
    iget-object v13, v13, Lz7/e2;->a:Ljava/lang/String;

    .line 475
    .line 476
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v14

    .line 480
    check-cast v14, Ljava/lang/String;

    .line 481
    .line 482
    invoke-static {v13, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v13

    .line 486
    if-eqz v13, :cond_a

    .line 487
    .line 488
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    .line 493
    .line 494
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 495
    .line 496
    .line 497
    new-instance v6, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    :cond_c
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v12

    .line 510
    if-eqz v12, :cond_d

    .line 511
    .line 512
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v12

    .line 516
    move-object v13, v12

    .line 517
    check-cast v13, Lz7/e2;

    .line 518
    .line 519
    iget-object v13, v13, Lz7/e2;->b:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v13

    .line 525
    if-eqz v13, :cond_c

    .line 526
    .line 527
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_8

    .line 531
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 532
    .line 533
    const/16 v11, 0xa

    .line 534
    .line 535
    invoke-static {v6, v11}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 536
    .line 537
    .line 538
    move-result v11

    .line 539
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 543
    .line 544
    .line 545
    move-result-object v6

    .line 546
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 547
    .line 548
    .line 549
    move-result v11

    .line 550
    if-eqz v11, :cond_e

    .line 551
    .line 552
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v11

    .line 556
    check-cast v11, Lz7/e2;

    .line 557
    .line 558
    new-instance v16, Lj8/k0;

    .line 559
    .line 560
    iget-object v12, v11, Lz7/e2;->b:Ljava/lang/String;

    .line 561
    .line 562
    new-instance v13, Lj8/n0;

    .line 563
    .line 564
    invoke-direct {v13, v12}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    move-object/from16 v23, v8

    .line 568
    .line 569
    iget-wide v7, v11, Lz7/e2;->c:D

    .line 570
    .line 571
    move-object/from16 p1, v15

    .line 572
    .line 573
    iget-wide v14, v11, Lz7/e2;->d:D

    .line 574
    .line 575
    new-instance v11, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v7, "|"

    .line 584
    .line 585
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v19

    .line 595
    const/16 v21, 0x0

    .line 596
    .line 597
    const/16 v22, 0x18

    .line 598
    .line 599
    const/16 v20, 0x0

    .line 600
    .line 601
    move-object/from16 v17, v12

    .line 602
    .line 603
    move-object/from16 v18, v13

    .line 604
    .line 605
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 606
    .line 607
    .line 608
    move-object/from16 v7, v16

    .line 609
    .line 610
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-object/from16 v15, p1

    .line 614
    .line 615
    move-object/from16 v8, v23

    .line 616
    .line 617
    const v7, 0x4c5de2

    .line 618
    .line 619
    .line 620
    goto :goto_9

    .line 621
    :cond_e
    move-object/from16 v23, v8

    .line 622
    .line 623
    move-object/from16 p1, v15

    .line 624
    .line 625
    const v6, -0x6815fd56

    .line 626
    .line 627
    .line 628
    invoke-virtual {v8, v6}, Lf1/s;->W(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v6

    .line 635
    if-ne v6, v5, :cond_f

    .line 636
    .line 637
    new-instance v6, Lc8/k;

    .line 638
    .line 639
    const/4 v7, 0x3

    .line 640
    invoke-direct {v6, v7, v4, v3, v9}, Lc8/k;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v8, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    :cond_f
    move-object/from16 v20, v6

    .line 647
    .line 648
    check-cast v20, Lf9/k;

    .line 649
    .line 650
    const/4 v12, 0x0

    .line 651
    invoke-virtual {v8, v12}, Lf1/s;->p(Z)V

    .line 652
    .line 653
    .line 654
    const v22, 0x30006

    .line 655
    .line 656
    .line 657
    const/16 v23, 0x1c

    .line 658
    .line 659
    const/16 v17, 0x0

    .line 660
    .line 661
    const/16 v18, 0x0

    .line 662
    .line 663
    const/16 v19, 0x0

    .line 664
    .line 665
    move-object/from16 v15, p1

    .line 666
    .line 667
    move-object/from16 v16, v0

    .line 668
    .line 669
    move-object/from16 v21, v8

    .line 670
    .line 671
    invoke-static/range {v15 .. v23}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v8, v12}, Lf1/s;->p(Z)V

    .line 675
    .line 676
    .line 677
    const-string v0, "\u89e6\u53d1\u6761\u4ef6"

    .line 678
    .line 679
    const-string v3, "\u9009\u62e9\u89e6\u53d1\u6761\u4ef6"

    .line 680
    .line 681
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 686
    .line 687
    .line 688
    move-result-object v15

    .line 689
    new-instance v16, Lj8/k0;

    .line 690
    .line 691
    new-instance v0, Lj8/l0;

    .line 692
    .line 693
    const/4 v3, 0x1

    .line 694
    invoke-direct {v0, v3}, Lj8/l0;-><init>(Z)V

    .line 695
    .line 696
    .line 697
    const/16 v21, 0x0

    .line 698
    .line 699
    const/16 v22, 0x1c

    .line 700
    .line 701
    const-string v17, "\u65e5\u51fa\u81f3\u65e5\u843d"

    .line 702
    .line 703
    const/16 v19, 0x0

    .line 704
    .line 705
    const/16 v20, 0x0

    .line 706
    .line 707
    move-object/from16 v18, v0

    .line 708
    .line 709
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 710
    .line 711
    .line 712
    new-instance v17, Lj8/k0;

    .line 713
    .line 714
    new-instance v0, Lj8/l0;

    .line 715
    .line 716
    const/4 v12, 0x0

    .line 717
    invoke-direct {v0, v12}, Lj8/l0;-><init>(Z)V

    .line 718
    .line 719
    .line 720
    const/16 v22, 0x0

    .line 721
    .line 722
    const-string v18, "\u65e5\u843d\u81f3\u65e5\u51fa"

    .line 723
    .line 724
    move-object/from16 v19, v0

    .line 725
    .line 726
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 727
    .line 728
    .line 729
    const/4 v3, 0x2

    .line 730
    new-array v0, v3, [Lj8/k0;

    .line 731
    .line 732
    aput-object v16, v0, v12

    .line 733
    .line 734
    const/16 v25, 0x1

    .line 735
    .line 736
    aput-object v17, v0, v25

    .line 737
    .line 738
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 739
    .line 740
    .line 741
    move-result-object v16

    .line 742
    const v14, 0x4c5de2

    .line 743
    .line 744
    .line 745
    invoke-virtual {v8, v14}, Lf1/s;->W(I)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    if-ne v0, v5, :cond_10

    .line 753
    .line 754
    new-instance v0, La8/s0;

    .line 755
    .line 756
    const/16 v3, 0xd

    .line 757
    .line 758
    invoke-direct {v0, v2, v3}, La8/s0;-><init>(Lf1/b1;I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v8, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    :cond_10
    move-object/from16 v20, v0

    .line 765
    .line 766
    check-cast v20, Lf9/k;

    .line 767
    .line 768
    const/4 v12, 0x0

    .line 769
    invoke-virtual {v8, v12}, Lf1/s;->p(Z)V

    .line 770
    .line 771
    .line 772
    const v22, 0x30006

    .line 773
    .line 774
    .line 775
    const/16 v23, 0x1c

    .line 776
    .line 777
    const/16 v17, 0x0

    .line 778
    .line 779
    const/16 v18, 0x0

    .line 780
    .line 781
    const/16 v19, 0x0

    .line 782
    .line 783
    move-object/from16 v21, v8

    .line 784
    .line 785
    invoke-static/range {v15 .. v23}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 786
    .line 787
    .line 788
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    check-cast v0, Lr8/j;

    .line 793
    .line 794
    iget-object v0, v0, Lr8/j;->a:Ljava/lang/Object;

    .line 795
    .line 796
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    check-cast v2, Lr8/j;

    .line 801
    .line 802
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 803
    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    const-string v4, "\u65e5\u51fa: "

    .line 807
    .line 808
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    const-string v0, " \u65e5\u843d: "

    .line 815
    .line 816
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    const/4 v12, 0x0

    .line 831
    invoke-static {v0, v8, v12}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 832
    .line 833
    .line 834
    :goto_a
    return-object v10

    .line 835
    :pswitch_1
    move-object/from16 v0, p1

    .line 836
    .line 837
    check-cast v0, Lf1/s;

    .line 838
    .line 839
    move-object/from16 v2, p2

    .line 840
    .line 841
    check-cast v2, Ljava/lang/Number;

    .line 842
    .line 843
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    const/16 v24, 0x3

    .line 848
    .line 849
    and-int/lit8 v2, v2, 0x3

    .line 850
    .line 851
    const/4 v3, 0x2

    .line 852
    if-ne v2, v3, :cond_12

    .line 853
    .line 854
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    if-nez v2, :cond_11

    .line 859
    .line 860
    goto :goto_b

    .line 861
    :cond_11
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 862
    .line 863
    .line 864
    goto :goto_c

    .line 865
    :cond_12
    :goto_b
    new-instance v11, Lc8/u0;

    .line 866
    .line 867
    iget-object v15, v1, Lc8/u0;->e:Lf1/b1;

    .line 868
    .line 869
    const/16 v16, 0x0

    .line 870
    .line 871
    iget-object v12, v1, Lc8/u0;->b:Lf1/b1;

    .line 872
    .line 873
    iget-object v13, v1, Lc8/u0;->c:Lf1/b1;

    .line 874
    .line 875
    iget-object v14, v1, Lc8/u0;->d:Lf1/b1;

    .line 876
    .line 877
    invoke-direct/range {v11 .. v16}, Lc8/u0;-><init>(Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 878
    .line 879
    .line 880
    const v2, 0x7529d167

    .line 881
    .line 882
    .line 883
    invoke-static {v2, v11, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    const/4 v3, 0x1

    .line 888
    invoke-static {v9, v2, v0, v8, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 889
    .line 890
    .line 891
    :goto_c
    return-object v10

    .line 892
    :pswitch_2
    move-object/from16 v0, p1

    .line 893
    .line 894
    check-cast v0, Lf1/s;

    .line 895
    .line 896
    move-object/from16 v7, p2

    .line 897
    .line 898
    check-cast v7, Ljava/lang/Number;

    .line 899
    .line 900
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 901
    .line 902
    .line 903
    move-result v7

    .line 904
    const/16 v24, 0x3

    .line 905
    .line 906
    and-int/lit8 v7, v7, 0x3

    .line 907
    .line 908
    const/4 v8, 0x2

    .line 909
    if-ne v7, v8, :cond_14

    .line 910
    .line 911
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 912
    .line 913
    .line 914
    move-result v7

    .line 915
    if-nez v7, :cond_13

    .line 916
    .line 917
    goto :goto_d

    .line 918
    :cond_13
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_e

    .line 922
    .line 923
    :cond_14
    :goto_d
    sget-object v15, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 924
    .line 925
    const/4 v7, 0x4

    .line 926
    int-to-float v7, v7

    .line 927
    const/16 v18, 0x0

    .line 928
    .line 929
    const/16 v20, 0x5

    .line 930
    .line 931
    const/16 v16, 0x0

    .line 932
    .line 933
    move/from16 v19, v7

    .line 934
    .line 935
    move/from16 v17, v7

    .line 936
    .line 937
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 938
    .line 939
    .line 940
    move-result-object v28

    .line 941
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v7

    .line 945
    move-object/from16 v26, v7

    .line 946
    .line 947
    check-cast v26, Ljava/lang/String;

    .line 948
    .line 949
    const v14, 0x4c5de2

    .line 950
    .line 951
    .line 952
    invoke-virtual {v0, v14}, Lf1/s;->W(I)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v7

    .line 959
    if-ne v7, v5, :cond_15

    .line 960
    .line 961
    new-instance v7, La8/s0;

    .line 962
    .line 963
    const/4 v8, 0x7

    .line 964
    invoke-direct {v7, v6, v8}, La8/s0;-><init>(Lf1/b1;I)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v0, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    :cond_15
    move-object/from16 v27, v7

    .line 971
    .line 972
    check-cast v27, Lf9/k;

    .line 973
    .line 974
    const/4 v12, 0x0

    .line 975
    invoke-virtual {v0, v12}, Lf1/s;->p(Z)V

    .line 976
    .line 977
    .line 978
    sget-object v31, Lc8/e;->a:Ln1/c;

    .line 979
    .line 980
    const/high16 v43, 0x6000000

    .line 981
    .line 982
    const v44, 0x7bffb8

    .line 983
    .line 984
    .line 985
    const/16 v29, 0x0

    .line 986
    .line 987
    const/16 v30, 0x0

    .line 988
    .line 989
    const/16 v32, 0x0

    .line 990
    .line 991
    const/16 v33, 0x0

    .line 992
    .line 993
    const/16 v34, 0x0

    .line 994
    .line 995
    const/16 v35, 0x0

    .line 996
    .line 997
    const/16 v36, 0x0

    .line 998
    .line 999
    const/16 v37, 0x5

    .line 1000
    .line 1001
    const/16 v38, 0x0

    .line 1002
    .line 1003
    const/16 v39, 0x0

    .line 1004
    .line 1005
    const/16 v40, 0x0

    .line 1006
    .line 1007
    const v42, 0x1801b0

    .line 1008
    .line 1009
    .line 1010
    move-object/from16 v41, v0

    .line 1011
    .line 1012
    invoke-static/range {v26 .. v44}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 1013
    .line 1014
    .line 1015
    const/16 v18, 0x0

    .line 1016
    .line 1017
    const/16 v20, 0x5

    .line 1018
    .line 1019
    const/16 v16, 0x0

    .line 1020
    .line 1021
    move/from16 v19, v17

    .line 1022
    .line 1023
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v28

    .line 1027
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v6

    .line 1031
    move-object/from16 v26, v6

    .line 1032
    .line 1033
    check-cast v26, Ljava/lang/String;

    .line 1034
    .line 1035
    const v14, 0x4c5de2

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v0, v14}, Lf1/s;->W(I)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v6

    .line 1045
    if-ne v6, v5, :cond_16

    .line 1046
    .line 1047
    new-instance v6, La8/s0;

    .line 1048
    .line 1049
    const/16 v7, 0x8

    .line 1050
    .line 1051
    invoke-direct {v6, v4, v7}, La8/s0;-><init>(Lf1/b1;I)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    :cond_16
    move-object/from16 v27, v6

    .line 1058
    .line 1059
    check-cast v27, Lf9/k;

    .line 1060
    .line 1061
    const/4 v12, 0x0

    .line 1062
    invoke-virtual {v0, v12}, Lf1/s;->p(Z)V

    .line 1063
    .line 1064
    .line 1065
    sget-object v31, Lc8/e;->b:Ln1/c;

    .line 1066
    .line 1067
    new-instance v6, La8/m;

    .line 1068
    .line 1069
    const/16 v7, 0x9

    .line 1070
    .line 1071
    invoke-direct {v6, v3, v7}, La8/m;-><init>(Lf1/b1;I)V

    .line 1072
    .line 1073
    .line 1074
    const v8, -0xadb93ab

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v8, v6, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v32

    .line 1081
    const/high16 v43, 0xc00000

    .line 1082
    .line 1083
    const v44, 0x7dfdb8

    .line 1084
    .line 1085
    .line 1086
    const/16 v29, 0x0

    .line 1087
    .line 1088
    const/16 v30, 0x0

    .line 1089
    .line 1090
    const/16 v33, 0x0

    .line 1091
    .line 1092
    const/16 v34, 0x0

    .line 1093
    .line 1094
    const/16 v35, 0x0

    .line 1095
    .line 1096
    const/16 v36, 0x1

    .line 1097
    .line 1098
    const/16 v37, 0x0

    .line 1099
    .line 1100
    const/16 v38, 0x0

    .line 1101
    .line 1102
    const/16 v39, 0x0

    .line 1103
    .line 1104
    const/16 v40, 0x0

    .line 1105
    .line 1106
    const v42, 0x301801b0

    .line 1107
    .line 1108
    .line 1109
    move-object/from16 v41, v0

    .line 1110
    .line 1111
    invoke-static/range {v26 .. v44}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 1112
    .line 1113
    .line 1114
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v6

    .line 1118
    check-cast v6, Ljava/lang/Boolean;

    .line 1119
    .line 1120
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v26

    .line 1124
    const v14, 0x4c5de2

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v0, v14}, Lf1/s;->W(I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v6

    .line 1134
    if-ne v6, v5, :cond_17

    .line 1135
    .line 1136
    new-instance v6, La8/f;

    .line 1137
    .line 1138
    const/16 v8, 0x10

    .line 1139
    .line 1140
    invoke-direct {v6, v3, v8}, La8/f;-><init>(Lf1/b1;I)V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1144
    .line 1145
    .line 1146
    :cond_17
    move-object/from16 v27, v6

    .line 1147
    .line 1148
    check-cast v27, Lf9/a;

    .line 1149
    .line 1150
    const/4 v12, 0x0

    .line 1151
    invoke-virtual {v0, v12}, Lf1/s;->p(Z)V

    .line 1152
    .line 1153
    .line 1154
    new-instance v6, Lc8/t0;

    .line 1155
    .line 1156
    invoke-direct {v6, v4, v3, v12}, Lc8/t0;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 1157
    .line 1158
    .line 1159
    const v3, 0x5aa0239e

    .line 1160
    .line 1161
    .line 1162
    invoke-static {v3, v6, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v36

    .line 1166
    const/16 v38, 0x30

    .line 1167
    .line 1168
    const/16 v39, 0x3fc

    .line 1169
    .line 1170
    const-wide/16 v28, 0x0

    .line 1171
    .line 1172
    const/16 v30, 0x0

    .line 1173
    .line 1174
    const/16 v31, 0x0

    .line 1175
    .line 1176
    const/16 v32, 0x0

    .line 1177
    .line 1178
    const/16 v33, 0x0

    .line 1179
    .line 1180
    const/16 v34, 0x0

    .line 1181
    .line 1182
    const/16 v35, 0x0

    .line 1183
    .line 1184
    move-object/from16 v37, v0

    .line 1185
    .line 1186
    invoke-static/range {v26 .. v39}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 1187
    .line 1188
    .line 1189
    const-string v3, "\u5ffd\u7565\u5927\u5c0f\u5199"

    .line 1190
    .line 1191
    const-string v4, "\u662f\u5426\u5ffd\u7565\u5927\u5c0f\u5199"

    .line 1192
    .line 1193
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v3

    .line 1197
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v11

    .line 1201
    new-instance v15, Lj8/k0;

    .line 1202
    .line 1203
    new-instance v3, Lj8/l0;

    .line 1204
    .line 1205
    const/4 v4, 0x1

    .line 1206
    invoke-direct {v3, v4}, Lj8/l0;-><init>(Z)V

    .line 1207
    .line 1208
    .line 1209
    const/16 v20, 0x0

    .line 1210
    .line 1211
    const/16 v21, 0x1c

    .line 1212
    .line 1213
    const-string v16, "\u5ffd\u7565"

    .line 1214
    .line 1215
    const/16 v18, 0x0

    .line 1216
    .line 1217
    const/16 v19, 0x0

    .line 1218
    .line 1219
    move-object/from16 v17, v3

    .line 1220
    .line 1221
    invoke-direct/range {v15 .. v21}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1222
    .line 1223
    .line 1224
    new-instance v16, Lj8/k0;

    .line 1225
    .line 1226
    new-instance v3, Lj8/l0;

    .line 1227
    .line 1228
    const/4 v12, 0x0

    .line 1229
    invoke-direct {v3, v12}, Lj8/l0;-><init>(Z)V

    .line 1230
    .line 1231
    .line 1232
    const/16 v21, 0x0

    .line 1233
    .line 1234
    const/16 v22, 0x1c

    .line 1235
    .line 1236
    const-string v17, "\u4e0d\u5ffd\u7565"

    .line 1237
    .line 1238
    move-object/from16 v18, v3

    .line 1239
    .line 1240
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1241
    .line 1242
    .line 1243
    const/4 v3, 0x2

    .line 1244
    new-array v3, v3, [Lj8/k0;

    .line 1245
    .line 1246
    aput-object v15, v3, v12

    .line 1247
    .line 1248
    const/16 v25, 0x1

    .line 1249
    .line 1250
    aput-object v16, v3, v25

    .line 1251
    .line 1252
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v12

    .line 1256
    const v14, 0x4c5de2

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v0, v14}, Lf1/s;->W(I)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    if-ne v3, v5, :cond_18

    .line 1267
    .line 1268
    new-instance v3, La8/s0;

    .line 1269
    .line 1270
    invoke-direct {v3, v2, v7}, La8/s0;-><init>(Lf1/b1;I)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1274
    .line 1275
    .line 1276
    :cond_18
    move-object/from16 v16, v3

    .line 1277
    .line 1278
    check-cast v16, Lf9/k;

    .line 1279
    .line 1280
    const/4 v2, 0x0

    .line 1281
    invoke-virtual {v0, v2}, Lf1/s;->p(Z)V

    .line 1282
    .line 1283
    .line 1284
    const v18, 0x30046

    .line 1285
    .line 1286
    .line 1287
    const/16 v19, 0x1c

    .line 1288
    .line 1289
    const/4 v13, 0x0

    .line 1290
    const/4 v14, 0x0

    .line 1291
    const/4 v15, 0x0

    .line 1292
    move-object/from16 v17, v0

    .line 1293
    .line 1294
    invoke-static/range {v11 .. v19}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 1295
    .line 1296
    .line 1297
    const-string v2, "\u7cfb\u7edf\u65e5\u5fd7\u6743\u9650"

    .line 1298
    .line 1299
    const-string v3, "\u76d1\u542c\u7cfb\u7edf\u65e5\u5fd7\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 1300
    .line 1301
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v12

    .line 1309
    const/16 v17, 0x61b6

    .line 1310
    .line 1311
    const/16 v18, 0x8

    .line 1312
    .line 1313
    sget-object v11, Lu7/h;->a:Lu7/h;

    .line 1314
    .line 1315
    const-string v13, "android.permission.READ_LOGS"

    .line 1316
    .line 1317
    const-string v14, "\u83b7\u53d6\u7cfb\u7edf\u65e5\u5fd7\u6743\u9650\u9700\u8981\u6267\u884c\u4e0b\u65b9Adb\u547d\u4ee4, \u6267\u884c\u5b8c\u6bd5\u540e\u9000\u51fa\u5e94\u7528\u91cd\u65b0\u6253\u5f00\u5373\u53ef"

    .line 1318
    .line 1319
    move-object/from16 v16, v0

    .line 1320
    .line 1321
    invoke-virtual/range {v11 .. v18}, Lu7/h;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLf1/s;II)V

    .line 1322
    .line 1323
    .line 1324
    const-string v2, "\u65e5\u5fd7\u4e2d\u82e5\u6709\u53d8\u5316\u7684\u6570\u5b57\u9700\u8981\u624b\u52a8\u5220\u9664,\u53ea\u4fdd\u7559\u5173\u952e\u90e8\u5206"

    .line 1325
    .line 1326
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v2

    .line 1330
    const/4 v3, 0x6

    .line 1331
    invoke-static {v2, v0, v3}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 1332
    .line 1333
    .line 1334
    :goto_e
    return-object v10

    .line 1335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
