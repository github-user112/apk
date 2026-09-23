.class public final synthetic Lb3/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(J[FLg9/v;Lg9/u;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb3/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb3/n;->b:J

    iput-object p3, p0, Lb3/n;->c:Ljava/lang/Object;

    iput-object p4, p0, Lb3/n;->d:Ljava/io/Serializable;

    iput-object p5, p0, Lb3/n;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lx1/c;Lg9/x;JLy1/k;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lb3/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb3/n;->d:Ljava/io/Serializable;

    iput-wide p3, p0, Lb3/n;->b:J

    iput-object p5, p0, Lb3/n;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lb3/n;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lb3/n;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lx1/c;

    .line 11
    .line 12
    iget-object v2, v1, Lb3/n;->d:Ljava/io/Serializable;

    .line 13
    .line 14
    check-cast v2, Lg9/x;

    .line 15
    .line 16
    iget-wide v5, v1, Lb3/n;->b:J

    .line 17
    .line 18
    iget-object v3, v1, Lb3/n;->e:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v10, v3

    .line 21
    check-cast v10, Ly1/k;

    .line 22
    .line 23
    move-object/from16 v3, p1

    .line 24
    .line 25
    check-cast v3, Lq2/j0;

    .line 26
    .line 27
    invoke-virtual {v3}, Lq2/j0;->b()V

    .line 28
    .line 29
    .line 30
    iget v13, v0, Lx1/c;->a:F

    .line 31
    .line 32
    iget v14, v0, Lx1/c;->b:F

    .line 33
    .line 34
    iget-object v15, v3, Lq2/j0;->a:La2/c;

    .line 35
    .line 36
    iget-object v0, v15, La2/c;->b:La2/b;

    .line 37
    .line 38
    iget-object v0, v0, La2/b;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, La2/d;

    .line 41
    .line 42
    invoke-virtual {v0, v13, v14}, La2/d;->y(FF)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v0, v2, Lg9/x;->b:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v4, v0

    .line 48
    check-cast v4, Ly1/f;

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    const/16 v12, 0x37a

    .line 52
    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    invoke-static/range {v3 .. v12}, La2/f;->t(La2/g;Ly1/f;JJFLy1/k;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    iget-object v0, v15, La2/c;->b:La2/b;

    .line 60
    .line 61
    iget-object v0, v0, La2/b;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, La2/d;

    .line 64
    .line 65
    neg-float v2, v13

    .line 66
    neg-float v3, v14

    .line 67
    invoke-virtual {v0, v2, v3}, La2/d;->y(FF)V

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 71
    .line 72
    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    iget-object v2, v15, La2/c;->b:La2/b;

    .line 75
    .line 76
    iget-object v2, v2, La2/b;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, La2/d;

    .line 79
    .line 80
    neg-float v3, v13

    .line 81
    neg-float v4, v14

    .line 82
    invoke-virtual {v2, v3, v4}, La2/d;->y(FF)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :pswitch_0
    iget-object v0, v1, Lb3/n;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, [F

    .line 89
    .line 90
    iget-object v2, v1, Lb3/n;->d:Ljava/io/Serializable;

    .line 91
    .line 92
    check-cast v2, Lg9/v;

    .line 93
    .line 94
    iget-object v3, v1, Lb3/n;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v3, Lg9/u;

    .line 97
    .line 98
    move-object/from16 v4, p1

    .line 99
    .line 100
    check-cast v4, Lb3/r;

    .line 101
    .line 102
    iget v5, v4, Lb3/r;->b:I

    .line 103
    .line 104
    iget-object v6, v4, Lb3/r;->a:Lb3/a;

    .line 105
    .line 106
    iget v7, v4, Lb3/r;->c:I

    .line 107
    .line 108
    iget-wide v8, v1, Lb3/n;->b:J

    .line 109
    .line 110
    invoke-static {v8, v9}, Lb3/n0;->f(J)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-le v5, v10, :cond_0

    .line 115
    .line 116
    iget v5, v4, Lb3/r;->b:I

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_0
    invoke-static {v8, v9}, Lb3/n0;->f(J)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    :goto_1
    invoke-static {v8, v9}, Lb3/n0;->e(J)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-ge v7, v10, :cond_1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_1
    invoke-static {v8, v9}, Lb3/n0;->e(J)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    :goto_2
    invoke-virtual {v4, v5}, Lb3/r;->d(I)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-virtual {v4, v7}, Lb3/r;->d(I)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-static {v5, v4}, Lb3/d0;->b(II)J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    iget v7, v2, Lg9/v;->a:I

    .line 147
    .line 148
    iget-object v8, v6, Lb3/a;->d:Lc3/n;

    .line 149
    .line 150
    invoke-static {v4, v5}, Lb3/n0;->f(J)I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    invoke-static {v4, v5}, Lb3/n0;->e(J)I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    iget-object v11, v8, Lc3/n;->f:Landroid/text/Layout;

    .line 159
    .line 160
    invoke-virtual {v11}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-ltz v9, :cond_2

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_2
    const-string v13, "startOffset must be > 0"

    .line 172
    .line 173
    invoke-static {v13}, Lh3/a;->a(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    if-ge v9, v12, :cond_3

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_3
    const-string v13, "startOffset must be less than text length"

    .line 180
    .line 181
    invoke-static {v13}, Lh3/a;->a(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_4
    if-le v10, v9, :cond_4

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_4
    const-string v13, "endOffset must be greater than startOffset"

    .line 188
    .line 189
    invoke-static {v13}, Lh3/a;->a(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_5
    if-gt v10, v12, :cond_5

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_5
    const-string v12, "endOffset must be smaller or equal to text length"

    .line 196
    .line 197
    invoke-static {v12}, Lh3/a;->a(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_6
    sub-int v12, v10, v9

    .line 201
    .line 202
    mul-int/lit8 v12, v12, 0x4

    .line 203
    .line 204
    array-length v13, v0

    .line 205
    sub-int/2addr v13, v7

    .line 206
    if-lt v13, v12, :cond_6

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_6
    const-string v12, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    .line 210
    .line 211
    invoke-static {v12}, Lh3/a;->a(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :goto_7
    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    add-int/lit8 v13, v10, -0x1

    .line 219
    .line 220
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    new-instance v14, Lc3/e;

    .line 225
    .line 226
    invoke-direct {v14, v8}, Lc3/e;-><init>(Lc3/n;)V

    .line 227
    .line 228
    .line 229
    if-gt v12, v13, :cond_c

    .line 230
    .line 231
    :goto_8
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineStart(I)I

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    move-object/from16 v16, v0

    .line 236
    .line 237
    invoke-virtual {v8, v12}, Lc3/n;->f(I)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-virtual {v8, v12}, Lc3/n;->g(I)F

    .line 250
    .line 251
    .line 252
    move-result v17

    .line 253
    invoke-virtual {v8, v12}, Lc3/n;->e(I)F

    .line 254
    .line 255
    .line 256
    move-result v18

    .line 257
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    move-wide/from16 v19, v4

    .line 262
    .line 263
    const/4 v4, 0x1

    .line 264
    const/4 v5, 0x0

    .line 265
    if-ne v1, v4, :cond_7

    .line 266
    .line 267
    const/4 v1, 0x1

    .line 268
    goto :goto_9

    .line 269
    :cond_7
    const/4 v1, 0x0

    .line 270
    :goto_9
    if-ge v15, v0, :cond_b

    .line 271
    .line 272
    invoke-virtual {v11, v15}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 273
    .line 274
    .line 275
    move-result v21

    .line 276
    if-eqz v1, :cond_8

    .line 277
    .line 278
    if-nez v21, :cond_8

    .line 279
    .line 280
    invoke-virtual {v14, v15, v5, v5, v4}, Lc3/e;->a(IZZZ)F

    .line 281
    .line 282
    .line 283
    move-result v21

    .line 284
    add-int/lit8 v5, v15, 0x1

    .line 285
    .line 286
    invoke-virtual {v14, v5, v4, v4, v4}, Lc3/e;->a(IZZZ)F

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    move/from16 p1, v0

    .line 291
    .line 292
    move v0, v5

    .line 293
    :goto_a
    const/4 v5, 0x0

    .line 294
    goto :goto_b

    .line 295
    :cond_8
    if-eqz v1, :cond_9

    .line 296
    .line 297
    if-eqz v21, :cond_9

    .line 298
    .line 299
    const/4 v5, 0x0

    .line 300
    invoke-virtual {v14, v15, v5, v5, v5}, Lc3/e;->a(IZZZ)F

    .line 301
    .line 302
    .line 303
    move-result v21

    .line 304
    move/from16 p1, v0

    .line 305
    .line 306
    add-int/lit8 v0, v15, 0x1

    .line 307
    .line 308
    invoke-virtual {v14, v0, v4, v4, v5}, Lc3/e;->a(IZZZ)F

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    move/from16 v22, v21

    .line 313
    .line 314
    move/from16 v21, v0

    .line 315
    .line 316
    move/from16 v0, v22

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_9
    move/from16 p1, v0

    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    if-nez v1, :cond_a

    .line 323
    .line 324
    if-eqz v21, :cond_a

    .line 325
    .line 326
    invoke-virtual {v14, v15, v5, v5, v4}, Lc3/e;->a(IZZZ)F

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    add-int/lit8 v5, v15, 0x1

    .line 331
    .line 332
    invoke-virtual {v14, v5, v4, v4, v4}, Lc3/e;->a(IZZZ)F

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    move/from16 v21, v5

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_a
    invoke-virtual {v14, v15, v5, v5, v5}, Lc3/e;->a(IZZZ)F

    .line 340
    .line 341
    .line 342
    move-result v21

    .line 343
    add-int/lit8 v0, v15, 0x1

    .line 344
    .line 345
    invoke-virtual {v14, v0, v4, v4, v5}, Lc3/e;->a(IZZZ)F

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    :goto_b
    aput v21, v16, v7

    .line 350
    .line 351
    add-int/lit8 v21, v7, 0x1

    .line 352
    .line 353
    aput v17, v16, v21

    .line 354
    .line 355
    add-int/lit8 v21, v7, 0x2

    .line 356
    .line 357
    aput v0, v16, v21

    .line 358
    .line 359
    add-int/lit8 v0, v7, 0x3

    .line 360
    .line 361
    aput v18, v16, v0

    .line 362
    .line 363
    add-int/lit8 v7, v7, 0x4

    .line 364
    .line 365
    add-int/lit8 v15, v15, 0x1

    .line 366
    .line 367
    move/from16 v0, p1

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_b
    if-eq v12, v13, :cond_d

    .line 371
    .line 372
    add-int/lit8 v12, v12, 0x1

    .line 373
    .line 374
    move-object/from16 v1, p0

    .line 375
    .line 376
    move-object/from16 v0, v16

    .line 377
    .line 378
    move-wide/from16 v4, v19

    .line 379
    .line 380
    goto/16 :goto_8

    .line 381
    .line 382
    :cond_c
    move-object/from16 v16, v0

    .line 383
    .line 384
    move-wide/from16 v19, v4

    .line 385
    .line 386
    :cond_d
    iget v0, v2, Lg9/v;->a:I

    .line 387
    .line 388
    invoke-static/range {v19 .. v20}, Lb3/n0;->d(J)I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    mul-int/lit8 v1, v1, 0x4

    .line 393
    .line 394
    add-int/2addr v1, v0

    .line 395
    iget v0, v2, Lg9/v;->a:I

    .line 396
    .line 397
    :goto_c
    if-ge v0, v1, :cond_e

    .line 398
    .line 399
    add-int/lit8 v4, v0, 0x1

    .line 400
    .line 401
    aget v5, v16, v4

    .line 402
    .line 403
    iget v7, v3, Lg9/u;->a:F

    .line 404
    .line 405
    add-float/2addr v5, v7

    .line 406
    aput v5, v16, v4

    .line 407
    .line 408
    add-int/lit8 v4, v0, 0x3

    .line 409
    .line 410
    aget v5, v16, v4

    .line 411
    .line 412
    add-float/2addr v5, v7

    .line 413
    aput v5, v16, v4

    .line 414
    .line 415
    add-int/lit8 v0, v0, 0x4

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_e
    iput v1, v2, Lg9/v;->a:I

    .line 419
    .line 420
    iget v0, v3, Lg9/u;->a:F

    .line 421
    .line 422
    invoke-virtual {v6}, Lb3/a;->b()F

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    add-float/2addr v1, v0

    .line 427
    iput v1, v3, Lg9/u;->a:F

    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
