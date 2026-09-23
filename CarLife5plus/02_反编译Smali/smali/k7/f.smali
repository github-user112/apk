.class public final Lk7/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr8/j;

.field public final synthetic c:Lf9/o;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lf1/b1;

.field public final synthetic f:Lf1/b1;

.field public final synthetic g:Lf1/h1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lr8/j;Lf9/o;Lf1/b1;Lf1/b1;Lf1/h1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lk7/f;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/f;->d:Ljava/util/List;

    iput-object p2, p0, Lk7/f;->b:Lr8/j;

    iput-object p3, p0, Lk7/f;->c:Lf9/o;

    iput-object p4, p0, Lk7/f;->e:Lf1/b1;

    iput-object p5, p0, Lk7/f;->f:Lf1/b1;

    iput-object p6, p0, Lk7/f;->g:Lf1/h1;

    return-void
.end method

.method public constructor <init>(Lr8/j;Lf9/o;Ljava/util/List;Lf1/b1;Lf1/b1;Lf1/h1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lk7/f;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/f;->b:Lr8/j;

    iput-object p2, p0, Lk7/f;->c:Lf9/o;

    iput-object p3, p0, Lk7/f;->d:Ljava/util/List;

    iput-object p4, p0, Lk7/f;->e:Lf1/b1;

    iput-object p5, p0, Lk7/f;->f:Lf1/b1;

    iput-object p6, p0, Lk7/f;->g:Lf1/h1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lk7/f;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 8
    .line 9
    iget-object v4, v0, Lk7/f;->c:Lf9/o;

    .line 10
    .line 11
    const v5, -0x48fade91

    .line 12
    .line 13
    .line 14
    iget-object v6, v0, Lk7/f;->g:Lf1/h1;

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    const/4 v8, 0x1

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Lf1/s;

    .line 24
    .line 25
    move-object/from16 v10, p2

    .line 26
    .line 27
    check-cast v10, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    and-int/lit8 v10, v10, 0x3

    .line 34
    .line 35
    if-ne v10, v7, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-nez v10, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    :goto_0
    new-instance v11, Lk7/f;

    .line 50
    .line 51
    iget-object v15, v0, Lk7/f;->e:Lf1/b1;

    .line 52
    .line 53
    iget-object v10, v0, Lk7/f;->g:Lf1/h1;

    .line 54
    .line 55
    iget-object v12, v0, Lk7/f;->d:Ljava/util/List;

    .line 56
    .line 57
    iget-object v13, v0, Lk7/f;->b:Lr8/j;

    .line 58
    .line 59
    iget-object v14, v0, Lk7/f;->c:Lf9/o;

    .line 60
    .line 61
    iget-object v9, v0, Lk7/f;->f:Lf1/b1;

    .line 62
    .line 63
    move-object/from16 v16, v9

    .line 64
    .line 65
    move-object/from16 v17, v10

    .line 66
    .line 67
    invoke-direct/range {v11 .. v17}, Lk7/f;-><init>(Ljava/util/List;Lr8/j;Lf9/o;Lf1/b1;Lf1/b1;Lf1/h1;)V

    .line 68
    .line 69
    .line 70
    const v9, 0x11d22f3d

    .line 71
    .line 72
    .line 73
    invoke-static {v9, v11, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    const/16 v10, 0x30

    .line 78
    .line 79
    const/4 v11, 0x0

    .line 80
    invoke-static {v11, v9, v1, v10, v8}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 81
    .line 82
    .line 83
    const/16 v9, 0x10

    .line 84
    .line 85
    invoke-static {v9, v1}, Lg5/a;->B(ILf1/s;)F

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    sget-object v10, Lr1/m;->a:Lr1/m;

    .line 90
    .line 91
    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-static {v1, v9}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 96
    .line 97
    .line 98
    const/16 v9, 0x15

    .line 99
    .line 100
    invoke-static {v8, v9}, Li9/a;->Z(II)Ll9/d;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    .line 105
    .line 106
    const/16 v9, 0xa

    .line 107
    .line 108
    invoke-static {v8, v9}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    :goto_1
    move-object v9, v8

    .line 120
    check-cast v9, Ll9/c;

    .line 121
    .line 122
    iget-boolean v11, v9, Ll9/c;->c:Z

    .line 123
    .line 124
    if-eqz v11, :cond_2

    .line 125
    .line 126
    invoke-virtual {v9}, Ll9/c;->nextInt()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    new-instance v24, Lj8/k0;

    .line 131
    .line 132
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v25

    .line 136
    new-instance v11, Lj8/m0;

    .line 137
    .line 138
    invoke-direct {v11, v9}, Lj8/m0;-><init>(I)V

    .line 139
    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    const/16 v30, 0x1c

    .line 144
    .line 145
    const/16 v27, 0x0

    .line 146
    .line 147
    const/16 v28, 0x0

    .line 148
    .line 149
    move-object/from16 v26, v11

    .line 150
    .line 151
    invoke-direct/range {v24 .. v30}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 152
    .line 153
    .line 154
    move-object/from16 v9, v24

    .line 155
    .line 156
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    new-instance v24, Lj8/k0;

    .line 161
    .line 162
    invoke-virtual {v6}, Lf1/h1;->f()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v25

    .line 170
    new-instance v8, Lj8/m0;

    .line 171
    .line 172
    invoke-virtual {v6}, Lf1/h1;->f()I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-direct {v8, v6}, Lj8/m0;-><init>(I)V

    .line 177
    .line 178
    .line 179
    const/16 v29, 0x0

    .line 180
    .line 181
    const/16 v30, 0x1c

    .line 182
    .line 183
    const/16 v27, 0x0

    .line 184
    .line 185
    const/16 v28, 0x0

    .line 186
    .line 187
    move-object/from16 v26, v8

    .line 188
    .line 189
    invoke-direct/range {v24 .. v30}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 190
    .line 191
    .line 192
    sget-object v6, Lr2/n0;->a:Lf1/c0;

    .line 193
    .line 194
    invoke-virtual {v1, v6}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Landroid/content/res/Configuration;

    .line 199
    .line 200
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 201
    .line 202
    if-ne v6, v7, :cond_3

    .line 203
    .line 204
    const/4 v6, 0x5

    .line 205
    const/4 v12, 0x5

    .line 206
    goto :goto_2

    .line 207
    :cond_3
    const/4 v6, 0x4

    .line 208
    const/4 v12, 0x4

    .line 209
    :goto_2
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-virtual {v1, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    or-int/2addr v4, v5

    .line 221
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    if-nez v4, :cond_4

    .line 226
    .line 227
    if-ne v5, v3, :cond_5

    .line 228
    .line 229
    :cond_4
    move-object/from16 v20, v16

    .line 230
    .line 231
    new-instance v16, Lk7/d;

    .line 232
    .line 233
    const/16 v22, 0x0

    .line 234
    .line 235
    iget-object v3, v0, Lk7/f;->c:Lf9/o;

    .line 236
    .line 237
    iget-object v4, v0, Lk7/f;->g:Lf1/h1;

    .line 238
    .line 239
    iget-object v5, v0, Lk7/f;->e:Lf1/b1;

    .line 240
    .line 241
    move-object/from16 v18, v3

    .line 242
    .line 243
    move-object/from16 v19, v4

    .line 244
    .line 245
    move-object/from16 v21, v5

    .line 246
    .line 247
    move-object/from16 v17, v13

    .line 248
    .line 249
    invoke-direct/range {v16 .. v22}, Lk7/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v5, v16

    .line 253
    .line 254
    invoke-virtual {v1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_5
    move-object/from16 v16, v5

    .line 258
    .line 259
    check-cast v16, Lf9/k;

    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-virtual {v1, v3}, Lf1/s;->p(Z)V

    .line 263
    .line 264
    .line 265
    const/16 v18, 0x40

    .line 266
    .line 267
    const/16 v19, 0x38

    .line 268
    .line 269
    const/4 v13, 0x0

    .line 270
    const/4 v14, 0x0

    .line 271
    const/4 v15, 0x0

    .line 272
    move-object/from16 v17, v1

    .line 273
    .line 274
    move-object/from16 v11, v24

    .line 275
    .line 276
    invoke-static/range {v10 .. v19}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 277
    .line 278
    .line 279
    :goto_3
    return-object v2

    .line 280
    :pswitch_0
    move-object/from16 v1, p1

    .line 281
    .line 282
    check-cast v1, Lf1/s;

    .line 283
    .line 284
    move-object/from16 v9, p2

    .line 285
    .line 286
    check-cast v9, Ljava/lang/Number;

    .line 287
    .line 288
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    iget-object v10, v0, Lk7/f;->b:Lr8/j;

    .line 293
    .line 294
    iget-object v10, v10, Lr8/j;->a:Ljava/lang/Object;

    .line 295
    .line 296
    and-int/lit8 v9, v9, 0x3

    .line 297
    .line 298
    if-ne v9, v7, :cond_7

    .line 299
    .line 300
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-nez v9, :cond_6

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_6
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_5

    .line 311
    .line 312
    :cond_7
    :goto_4
    iget-object v9, v0, Lk7/f;->d:Ljava/util/List;

    .line 313
    .line 314
    invoke-static {v9}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    new-instance v12, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v11, "\u7126\u70b9"

    .line 327
    .line 328
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    const-string v12, "\u64ad\u653e\u65f6\u8bf7\u6c42\u97f3\u9891\u7126\u70b9"

    .line 336
    .line 337
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-static {v11}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v25

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v12, "_FOCUS"

    .line 354
    .line 355
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 363
    .line 364
    new-instance v13, Lr8/j;

    .line 365
    .line 366
    invoke-direct {v13, v11, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    iget-object v14, v0, Lk7/f;->e:Lf1/b1;

    .line 381
    .line 382
    iget-object v15, v0, Lk7/f;->f:Lf1/b1;

    .line 383
    .line 384
    if-nez v11, :cond_8

    .line 385
    .line 386
    if-ne v12, v3, :cond_9

    .line 387
    .line 388
    :cond_8
    new-instance v12, Lk7/e;

    .line 389
    .line 390
    invoke-direct {v12, v4, v14, v15, v6}, Lk7/e;-><init>(Lf9/o;Lf1/b1;Lf1/b1;Lf1/h1;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_9
    move-object/from16 v28, v12

    .line 397
    .line 398
    check-cast v28, Lf9/k;

    .line 399
    .line 400
    const/4 v11, 0x0

    .line 401
    invoke-virtual {v1, v11}, Lf1/s;->p(Z)V

    .line 402
    .line 403
    .line 404
    const/16 v30, 0x0

    .line 405
    .line 406
    const/16 v31, 0x4

    .line 407
    .line 408
    const/16 v27, 0x0

    .line 409
    .line 410
    move-object/from16 v29, v1

    .line 411
    .line 412
    move-object/from16 v26, v13

    .line 413
    .line 414
    invoke-static/range {v25 .. v31}, Lc7/a;->e(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 415
    .line 416
    .line 417
    invoke-static {v9}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    new-instance v12, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v11, "\u7248\u672c"

    .line 430
    .line 431
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    invoke-static {v9}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    new-instance v13, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string v5, "\u9009\u62e9"

    .line 445
    .line 446
    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    filled-new-array {v12, v5}, [Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v25

    .line 467
    new-instance v26, Lj8/k0;

    .line 468
    .line 469
    new-instance v5, Lj8/l0;

    .line 470
    .line 471
    const/4 v11, 0x0

    .line 472
    invoke-direct {v5, v11}, Lj8/l0;-><init>(Z)V

    .line 473
    .line 474
    .line 475
    const/16 v31, 0x0

    .line 476
    .line 477
    const/16 v32, 0x1c

    .line 478
    .line 479
    const-string v27, "\u65b0\u7248"

    .line 480
    .line 481
    const/16 v29, 0x0

    .line 482
    .line 483
    const/16 v30, 0x0

    .line 484
    .line 485
    move-object/from16 v28, v5

    .line 486
    .line 487
    invoke-direct/range {v26 .. v32}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 488
    .line 489
    .line 490
    new-instance v27, Lj8/k0;

    .line 491
    .line 492
    new-instance v5, Lj8/l0;

    .line 493
    .line 494
    invoke-direct {v5, v8}, Lj8/l0;-><init>(Z)V

    .line 495
    .line 496
    .line 497
    const/16 v32, 0x0

    .line 498
    .line 499
    const/16 v33, 0x1c

    .line 500
    .line 501
    const-string v28, "\u65e7\u7248"

    .line 502
    .line 503
    move-object/from16 v29, v5

    .line 504
    .line 505
    invoke-direct/range {v27 .. v33}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 506
    .line 507
    .line 508
    new-array v5, v7, [Lj8/k0;

    .line 509
    .line 510
    const/16 v23, 0x0

    .line 511
    .line 512
    aput-object v26, v5, v23

    .line 513
    .line 514
    aput-object v27, v5, v8

    .line 515
    .line 516
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 517
    .line 518
    .line 519
    move-result-object v26

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v7, "_VERSION"

    .line 529
    .line 530
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    new-instance v7, Lj8/l0;

    .line 538
    .line 539
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v9

    .line 543
    check-cast v9, Ljava/lang/Boolean;

    .line 544
    .line 545
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 546
    .line 547
    .line 548
    move-result v9

    .line 549
    invoke-direct {v7, v9}, Lj8/l0;-><init>(Z)V

    .line 550
    .line 551
    .line 552
    new-instance v9, Lr8/j;

    .line 553
    .line 554
    invoke-direct {v9, v5, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    sget-boolean v5, Lk7/k;->l:Z

    .line 558
    .line 559
    xor-int/lit8 v28, v5, 0x1

    .line 560
    .line 561
    const v5, -0x48fade91

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    if-nez v5, :cond_a

    .line 576
    .line 577
    if-ne v7, v3, :cond_b

    .line 578
    .line 579
    :cond_a
    new-instance v7, Lk7/e;

    .line 580
    .line 581
    invoke-direct {v7, v4, v15, v6, v14}, Lk7/e;-><init>(Lf9/o;Lf1/b1;Lf1/h1;Lf1/b1;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    :cond_b
    move-object/from16 v30, v7

    .line 588
    .line 589
    check-cast v30, Lf9/k;

    .line 590
    .line 591
    const/4 v11, 0x0

    .line 592
    invoke-virtual {v1, v11}, Lf1/s;->p(Z)V

    .line 593
    .line 594
    .line 595
    const/16 v32, 0x6040

    .line 596
    .line 597
    const/16 v33, 0x0

    .line 598
    .line 599
    const/16 v29, 0x0

    .line 600
    .line 601
    move-object/from16 v31, v1

    .line 602
    .line 603
    move-object/from16 v27, v9

    .line 604
    .line 605
    invoke-static/range {v25 .. v33}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

    .line 606
    .line 607
    .line 608
    :goto_5
    return-object v2

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
