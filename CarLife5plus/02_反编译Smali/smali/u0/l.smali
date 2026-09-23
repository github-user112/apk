.class public final Lu0/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lu0/a;

.field public final b:Lu0/j;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lg3/w;

.field public k:Lb3/l0;

.field public l:Lg3/q;

.field public m:Lx1/c;

.field public n:Lx1/c;

.field public final o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final p:[F

.field public final q:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lu0/a;Lu0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu0/l;->a:Lu0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lu0/l;->b:Lu0/j;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lu0/l;->c:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lu0/l;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 21
    .line 22
    invoke-static {}, Ly1/a0;->a()[F

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lu0/l;->p:[F

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/Matrix;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lu0/l;->q:Landroid/graphics/Matrix;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lu0/l;->b:Lu0/j;

    .line 4
    .line 5
    invoke-virtual {v1}, Lu0/j;->t()Landroid/view/inputmethod/InputMethodManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_18

    .line 18
    .line 19
    iget-object v2, v0, Lu0/l;->j:Lg3/w;

    .line 20
    .line 21
    if-eqz v2, :cond_18

    .line 22
    .line 23
    iget-object v2, v0, Lu0/l;->l:Lg3/q;

    .line 24
    .line 25
    if-eqz v2, :cond_18

    .line 26
    .line 27
    iget-object v2, v0, Lu0/l;->k:Lb3/l0;

    .line 28
    .line 29
    if-eqz v2, :cond_18

    .line 30
    .line 31
    iget-object v2, v0, Lu0/l;->m:Lx1/c;

    .line 32
    .line 33
    if-eqz v2, :cond_18

    .line 34
    .line 35
    iget-object v2, v0, Lu0/l;->n:Lx1/c;

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_e

    .line 40
    .line 41
    :cond_0
    iget-object v2, v0, Lu0/l;->p:[F

    .line 42
    .line 43
    invoke-static {v2}, Ly1/a0;->d([F)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lu0/l;->a:Lu0/a;

    .line 47
    .line 48
    iget-object v4, v4, Lu0/a;->i:Lu0/k;

    .line 49
    .line 50
    iget-object v4, v4, Lu0/k;->r:Lf1/k1;

    .line 51
    .line 52
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lo2/w;

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v4}, Lo2/w;->isAttached()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v4, 0x0

    .line 68
    :goto_0
    if-nez v4, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-interface {v4, v2}, Lo2/w;->j([F)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    iget-object v4, v0, Lu0/l;->n:Lx1/c;

    .line 75
    .line 76
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget v4, v4, Lx1/c;->a:F

    .line 80
    .line 81
    neg-float v4, v4

    .line 82
    iget-object v5, v0, Lu0/l;->n:Lx1/c;

    .line 83
    .line 84
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget v5, v5, Lx1/c;->b:F

    .line 88
    .line 89
    neg-float v5, v5

    .line 90
    invoke-static {v2, v4, v5}, Ly1/a0;->f([FFF)V

    .line 91
    .line 92
    .line 93
    iget-object v4, v0, Lu0/l;->q:Landroid/graphics/Matrix;

    .line 94
    .line 95
    invoke-static {v4, v2}, Ly1/h0;->u(Landroid/graphics/Matrix;[F)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v0, Lu0/l;->j:Lg3/w;

    .line 99
    .line 100
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-wide v5, v2, Lg3/w;->b:J

    .line 104
    .line 105
    iget-object v7, v0, Lu0/l;->l:Lg3/q;

    .line 106
    .line 107
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v8, v0, Lu0/l;->k:Lb3/l0;

    .line 111
    .line 112
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v9, v8, Lb3/l0;->b:Lb3/o;

    .line 116
    .line 117
    iget-object v10, v0, Lu0/l;->m:Lx1/c;

    .line 118
    .line 119
    invoke-static {v10}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget v11, v10, Lx1/c;->d:F

    .line 123
    .line 124
    iget v12, v10, Lx1/c;->b:F

    .line 125
    .line 126
    iget-object v13, v0, Lu0/l;->n:Lx1/c;

    .line 127
    .line 128
    invoke-static {v13}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v14, v0, Lu0/l;->f:Z

    .line 132
    .line 133
    iget-boolean v15, v0, Lu0/l;->g:Z

    .line 134
    .line 135
    move-object/from16 v16, v1

    .line 136
    .line 137
    iget-boolean v1, v0, Lu0/l;->h:Z

    .line 138
    .line 139
    move/from16 v17, v1

    .line 140
    .line 141
    iget-boolean v1, v0, Lu0/l;->i:Z

    .line 142
    .line 143
    move/from16 v25, v1

    .line 144
    .line 145
    iget-object v1, v0, Lu0/l;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 151
    .line 152
    .line 153
    iget-object v4, v2, Lg3/w;->c:Lb3/n0;

    .line 154
    .line 155
    move-wide/from16 v18, v5

    .line 156
    .line 157
    invoke-static/range {v18 .. v19}, Lb3/n0;->f(J)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-static/range {v18 .. v19}, Lb3/n0;->e(J)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 166
    .line 167
    .line 168
    sget-object v6, Lm3/j;->b:Lm3/j;

    .line 169
    .line 170
    move-object/from16 v18, v1

    .line 171
    .line 172
    const/16 v26, 0x1

    .line 173
    .line 174
    if-eqz v14, :cond_b

    .line 175
    .line 176
    if-gez v5, :cond_4

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_4
    invoke-interface {v7, v5}, Lg3/q;->b(I)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {v8, v5}, Lb3/l0;->c(I)Lx1/c;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    iget v1, v14, Lx1/c;->a:F

    .line 188
    .line 189
    move/from16 v27, v11

    .line 190
    .line 191
    move/from16 v28, v12

    .line 192
    .line 193
    iget-wide v11, v8, Lb3/l0;->c:J

    .line 194
    .line 195
    const/16 v19, 0x20

    .line 196
    .line 197
    shr-long v11, v11, v19

    .line 198
    .line 199
    long-to-int v12, v11

    .line 200
    int-to-float v11, v12

    .line 201
    const/4 v12, 0x0

    .line 202
    invoke-static {v1, v12, v11}, Li9/a;->m(FFF)F

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    iget v11, v14, Lx1/c;->b:F

    .line 207
    .line 208
    invoke-static {v10, v1, v11}, Lp9/l;->i(Lx1/c;FF)Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    iget v12, v14, Lx1/c;->d:F

    .line 213
    .line 214
    invoke-static {v10, v1, v12}, Lp9/l;->i(Lx1/c;FF)Z

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    invoke-virtual {v8, v5}, Lb3/l0;->a(I)Lm3/j;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    if-ne v5, v6, :cond_5

    .line 223
    .line 224
    const/4 v5, 0x1

    .line 225
    goto :goto_2

    .line 226
    :cond_5
    const/4 v5, 0x0

    .line 227
    :goto_2
    if-nez v11, :cond_7

    .line 228
    .line 229
    if-eqz v12, :cond_6

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    const/16 v19, 0x0

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_7
    :goto_3
    const/16 v19, 0x1

    .line 236
    .line 237
    :goto_4
    if-eqz v11, :cond_8

    .line 238
    .line 239
    if-nez v12, :cond_9

    .line 240
    .line 241
    :cond_8
    or-int/lit8 v19, v19, 0x2

    .line 242
    .line 243
    :cond_9
    if-eqz v5, :cond_a

    .line 244
    .line 245
    or-int/lit8 v19, v19, 0x4

    .line 246
    .line 247
    :cond_a
    move/from16 v23, v19

    .line 248
    .line 249
    iget v5, v14, Lx1/c;->b:F

    .line 250
    .line 251
    iget v11, v14, Lx1/c;->d:F

    .line 252
    .line 253
    move/from16 v22, v11

    .line 254
    .line 255
    move/from16 v19, v1

    .line 256
    .line 257
    move/from16 v20, v5

    .line 258
    .line 259
    move/from16 v21, v11

    .line 260
    .line 261
    invoke-virtual/range {v18 .. v23}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_b
    :goto_5
    move/from16 v27, v11

    .line 266
    .line 267
    move/from16 v28, v12

    .line 268
    .line 269
    :goto_6
    move-object/from16 v1, v18

    .line 270
    .line 271
    if-eqz v15, :cond_15

    .line 272
    .line 273
    const/4 v5, -0x1

    .line 274
    if-eqz v4, :cond_c

    .line 275
    .line 276
    iget-wide v11, v4, Lb3/n0;->a:J

    .line 277
    .line 278
    invoke-static {v11, v12}, Lb3/n0;->f(J)I

    .line 279
    .line 280
    .line 281
    move-result v11

    .line 282
    goto :goto_7

    .line 283
    :cond_c
    const/4 v11, -0x1

    .line 284
    :goto_7
    if-eqz v4, :cond_d

    .line 285
    .line 286
    iget-wide v4, v4, Lb3/n0;->a:J

    .line 287
    .line 288
    invoke-static {v4, v5}, Lb3/n0;->e(J)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    :cond_d
    if-ltz v11, :cond_15

    .line 293
    .line 294
    if-ge v11, v5, :cond_15

    .line 295
    .line 296
    iget-object v2, v2, Lg3/w;->a:Lb3/g;

    .line 297
    .line 298
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v2, v11, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v11, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 305
    .line 306
    .line 307
    invoke-interface {v7, v11}, Lg3/q;->b(I)I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    invoke-interface {v7, v5}, Lg3/q;->b(I)I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    sub-int v12, v4, v2

    .line 316
    .line 317
    mul-int/lit8 v12, v12, 0x4

    .line 318
    .line 319
    new-array v12, v12, [F

    .line 320
    .line 321
    invoke-static {v2, v4}, Lb3/d0;->b(II)J

    .line 322
    .line 323
    .line 324
    move-result-wide v14

    .line 325
    invoke-virtual {v9, v14, v15, v12}, Lb3/o;->a(J[F)V

    .line 326
    .line 327
    .line 328
    :goto_8
    if-ge v11, v5, :cond_15

    .line 329
    .line 330
    invoke-interface {v7, v11}, Lg3/q;->b(I)I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    sub-int v14, v4, v2

    .line 335
    .line 336
    mul-int/lit8 v14, v14, 0x4

    .line 337
    .line 338
    aget v15, v12, v14

    .line 339
    .line 340
    add-int/lit8 v18, v14, 0x1

    .line 341
    .line 342
    move-object/from16 v19, v1

    .line 343
    .line 344
    aget v1, v12, v18

    .line 345
    .line 346
    add-int/lit8 v18, v14, 0x2

    .line 347
    .line 348
    move/from16 v29, v2

    .line 349
    .line 350
    aget v2, v12, v18

    .line 351
    .line 352
    add-int/lit8 v14, v14, 0x3

    .line 353
    .line 354
    aget v14, v12, v14

    .line 355
    .line 356
    move/from16 v30, v5

    .line 357
    .line 358
    iget v5, v10, Lx1/c;->a:F

    .line 359
    .line 360
    cmpg-float v5, v5, v2

    .line 361
    .line 362
    if-gez v5, :cond_e

    .line 363
    .line 364
    const/16 v18, 0x1

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_e
    const/16 v18, 0x0

    .line 368
    .line 369
    :goto_9
    iget v5, v10, Lx1/c;->c:F

    .line 370
    .line 371
    cmpg-float v5, v15, v5

    .line 372
    .line 373
    if-gez v5, :cond_f

    .line 374
    .line 375
    const/4 v5, 0x1

    .line 376
    goto :goto_a

    .line 377
    :cond_f
    const/4 v5, 0x0

    .line 378
    :goto_a
    and-int v5, v18, v5

    .line 379
    .line 380
    cmpg-float v18, v28, v14

    .line 381
    .line 382
    if-gez v18, :cond_10

    .line 383
    .line 384
    const/16 v18, 0x1

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_10
    const/16 v18, 0x0

    .line 388
    .line 389
    :goto_b
    and-int v5, v5, v18

    .line 390
    .line 391
    cmpg-float v18, v1, v27

    .line 392
    .line 393
    if-gez v18, :cond_11

    .line 394
    .line 395
    const/16 v18, 0x1

    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_11
    const/16 v18, 0x0

    .line 399
    .line 400
    :goto_c
    and-int v5, v5, v18

    .line 401
    .line 402
    invoke-static {v10, v15, v1}, Lp9/l;->i(Lx1/c;FF)Z

    .line 403
    .line 404
    .line 405
    move-result v18

    .line 406
    if-eqz v18, :cond_12

    .line 407
    .line 408
    invoke-static {v10, v2, v14}, Lp9/l;->i(Lx1/c;FF)Z

    .line 409
    .line 410
    .line 411
    move-result v18

    .line 412
    if-nez v18, :cond_13

    .line 413
    .line 414
    :cond_12
    or-int/lit8 v5, v5, 0x2

    .line 415
    .line 416
    :cond_13
    invoke-virtual {v8, v4}, Lb3/l0;->a(I)Lm3/j;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    if-ne v4, v6, :cond_14

    .line 421
    .line 422
    or-int/lit8 v5, v5, 0x4

    .line 423
    .line 424
    :cond_14
    move/from16 v21, v1

    .line 425
    .line 426
    move/from16 v22, v2

    .line 427
    .line 428
    move/from16 v24, v5

    .line 429
    .line 430
    move/from16 v23, v14

    .line 431
    .line 432
    move/from16 v20, v15

    .line 433
    .line 434
    move-object/from16 v18, v19

    .line 435
    .line 436
    move/from16 v19, v11

    .line 437
    .line 438
    invoke-virtual/range {v18 .. v24}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 439
    .line 440
    .line 441
    move-object/from16 v1, v18

    .line 442
    .line 443
    add-int/lit8 v11, v19, 0x1

    .line 444
    .line 445
    move/from16 v2, v29

    .line 446
    .line 447
    move/from16 v5, v30

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 451
    .line 452
    const/16 v4, 0x21

    .line 453
    .line 454
    if-lt v2, v4, :cond_16

    .line 455
    .line 456
    if-eqz v17, :cond_16

    .line 457
    .line 458
    invoke-static {}, Lc/p;->i()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-static {v13}, Ly1/h0;->A(Lx1/c;)Landroid/graphics/RectF;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    invoke-static {v4, v5}, Lc/p;->j(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-static {v13}, Ly1/h0;->A(Lx1/c;)Landroid/graphics/RectF;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-static {v4, v5}, Lc/p;->z(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-static {v4}, Lc/p;->k(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-static {v1, v4}, Lc/p;->h(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 483
    .line 484
    .line 485
    :cond_16
    const/16 v4, 0x22

    .line 486
    .line 487
    if-lt v2, v4, :cond_17

    .line 488
    .line 489
    if-eqz v25, :cond_17

    .line 490
    .line 491
    invoke-virtual {v10}, Lx1/c;->f()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-nez v2, :cond_17

    .line 496
    .line 497
    move/from16 v2, v28

    .line 498
    .line 499
    invoke-virtual {v9, v2}, Lb3/o;->e(F)I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    move/from16 v4, v27

    .line 504
    .line 505
    invoke-virtual {v9, v4}, Lb3/o;->e(F)I

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    if-gt v2, v4, :cond_17

    .line 510
    .line 511
    :goto_d
    invoke-virtual {v8, v2}, Lb3/l0;->e(I)F

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    invoke-virtual {v9, v2}, Lb3/o;->f(I)F

    .line 516
    .line 517
    .line 518
    move-result v6

    .line 519
    invoke-virtual {v8, v2}, Lb3/l0;->f(I)F

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    invoke-virtual {v9, v2}, Lb3/o;->b(I)F

    .line 524
    .line 525
    .line 526
    move-result v10

    .line 527
    invoke-static {v1, v5, v6, v7, v10}, Lc3/a;->q(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)V

    .line 528
    .line 529
    .line 530
    if-eq v2, v4, :cond_17

    .line 531
    .line 532
    add-int/lit8 v2, v2, 0x1

    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_17
    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual/range {v16 .. v16}, Lu0/j;->t()Landroid/view/inputmethod/InputMethodManager;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 544
    .line 545
    .line 546
    const/4 v1, 0x0

    .line 547
    iput-boolean v1, v0, Lu0/l;->e:Z

    .line 548
    .line 549
    :cond_18
    :goto_e
    return-void
.end method
