.class public final Lg3/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lr2/u;

.field public final b:La2/b;

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

.field public m:Lf9/k;

.field public n:Lx1/c;

.field public o:Lx1/c;

.field public final p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final q:[F

.field public final r:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lr2/u;La2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg3/c;->a:Lr2/u;

    .line 5
    .line 6
    iput-object p2, p0, Lg3/c;->b:La2/b;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lg3/c;->c:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Lg3/b;->c:Lg3/b;

    .line 16
    .line 17
    iput-object p1, p0, Lg3/c;->m:Lf9/k;

    .line 18
    .line 19
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lg3/c;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 25
    .line 26
    invoke-static {}, Ly1/a0;->a()[F

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lg3/c;->q:[F

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lg3/c;->r:Landroid/graphics/Matrix;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lg3/c;->b:La2/b;

    .line 4
    .line 5
    iget-object v2, v1, La2/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v2}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    iget-object v1, v1, La2/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v3, v0, Lg3/c;->m:Lf9/k;

    .line 25
    .line 26
    new-instance v4, Ly1/a0;

    .line 27
    .line 28
    iget-object v5, v0, Lg3/c;->q:[F

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ly1/a0;-><init>([F)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v3, v4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, Lg3/c;->a:Lr2/u;

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Lr2/u;->w([F)V

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, Lg3/c;->r:Landroid/graphics/Matrix;

    .line 42
    .line 43
    invoke-static {v3, v5}, Ly1/h0;->u(Landroid/graphics/Matrix;[F)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lg3/c;->j:Lg3/w;

    .line 47
    .line 48
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-wide v5, v4, Lg3/w;->b:J

    .line 52
    .line 53
    iget-object v7, v0, Lg3/c;->l:Lg3/q;

    .line 54
    .line 55
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v8, v0, Lg3/c;->k:Lb3/l0;

    .line 59
    .line 60
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v9, v8, Lb3/l0;->b:Lb3/o;

    .line 64
    .line 65
    iget-object v10, v0, Lg3/c;->n:Lx1/c;

    .line 66
    .line 67
    invoke-static {v10}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget v11, v10, Lx1/c;->d:F

    .line 71
    .line 72
    iget v12, v10, Lx1/c;->b:F

    .line 73
    .line 74
    iget-object v13, v0, Lg3/c;->o:Lx1/c;

    .line 75
    .line 76
    invoke-static {v13}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v14, v0, Lg3/c;->f:Z

    .line 80
    .line 81
    iget-boolean v15, v0, Lg3/c;->g:Z

    .line 82
    .line 83
    move-object/from16 v16, v2

    .line 84
    .line 85
    iget-boolean v2, v0, Lg3/c;->h:Z

    .line 86
    .line 87
    move/from16 v17, v2

    .line 88
    .line 89
    iget-boolean v2, v0, Lg3/c;->i:Z

    .line 90
    .line 91
    move/from16 v25, v2

    .line 92
    .line 93
    iget-object v2, v0, Lg3/c;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 99
    .line 100
    .line 101
    iget-object v3, v4, Lg3/w;->c:Lb3/n0;

    .line 102
    .line 103
    move-wide/from16 v18, v5

    .line 104
    .line 105
    invoke-static/range {v18 .. v19}, Lb3/n0;->f(J)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static/range {v18 .. v19}, Lb3/n0;->e(J)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 114
    .line 115
    .line 116
    sget-object v6, Lm3/j;->b:Lm3/j;

    .line 117
    .line 118
    move-object/from16 v18, v2

    .line 119
    .line 120
    const/16 v26, 0x1

    .line 121
    .line 122
    if-eqz v14, :cond_8

    .line 123
    .line 124
    if-gez v5, :cond_1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_1
    invoke-interface {v7, v5}, Lg3/q;->b(I)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {v8, v5}, Lb3/l0;->c(I)Lx1/c;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    iget v2, v14, Lx1/c;->a:F

    .line 136
    .line 137
    move-object/from16 v27, v1

    .line 138
    .line 139
    iget-wide v0, v8, Lb3/l0;->c:J

    .line 140
    .line 141
    const/16 v19, 0x20

    .line 142
    .line 143
    shr-long v0, v0, v19

    .line 144
    .line 145
    long-to-int v1, v0

    .line 146
    int-to-float v0, v1

    .line 147
    const/4 v1, 0x0

    .line 148
    invoke-static {v2, v1, v0}, Li9/a;->m(FFF)F

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iget v1, v14, Lx1/c;->b:F

    .line 153
    .line 154
    invoke-static {v10, v0, v1}, Li2/c;->k(Lx1/c;FF)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iget v2, v14, Lx1/c;->d:F

    .line 159
    .line 160
    invoke-static {v10, v0, v2}, Li2/c;->k(Lx1/c;FF)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v8, v5}, Lb3/l0;->a(I)Lm3/j;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    if-ne v5, v6, :cond_2

    .line 169
    .line 170
    const/4 v5, 0x1

    .line 171
    goto :goto_0

    .line 172
    :cond_2
    const/4 v5, 0x0

    .line 173
    :goto_0
    if-nez v1, :cond_4

    .line 174
    .line 175
    if-eqz v2, :cond_3

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    const/16 v19, 0x0

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    :goto_1
    const/16 v19, 0x1

    .line 182
    .line 183
    :goto_2
    if-eqz v1, :cond_5

    .line 184
    .line 185
    if-nez v2, :cond_6

    .line 186
    .line 187
    :cond_5
    or-int/lit8 v19, v19, 0x2

    .line 188
    .line 189
    :cond_6
    if-eqz v5, :cond_7

    .line 190
    .line 191
    or-int/lit8 v19, v19, 0x4

    .line 192
    .line 193
    :cond_7
    move/from16 v23, v19

    .line 194
    .line 195
    iget v1, v14, Lx1/c;->b:F

    .line 196
    .line 197
    iget v2, v14, Lx1/c;->d:F

    .line 198
    .line 199
    move/from16 v22, v2

    .line 200
    .line 201
    move/from16 v19, v0

    .line 202
    .line 203
    move/from16 v20, v1

    .line 204
    .line 205
    move/from16 v21, v2

    .line 206
    .line 207
    invoke-virtual/range {v18 .. v23}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_8
    :goto_3
    move-object/from16 v27, v1

    .line 212
    .line 213
    :goto_4
    move-object/from16 v0, v18

    .line 214
    .line 215
    if-eqz v15, :cond_12

    .line 216
    .line 217
    const/4 v1, -0x1

    .line 218
    if-eqz v3, :cond_9

    .line 219
    .line 220
    iget-wide v14, v3, Lb3/n0;->a:J

    .line 221
    .line 222
    invoke-static {v14, v15}, Lb3/n0;->f(J)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    goto :goto_5

    .line 227
    :cond_9
    const/4 v2, -0x1

    .line 228
    :goto_5
    if-eqz v3, :cond_a

    .line 229
    .line 230
    iget-wide v14, v3, Lb3/n0;->a:J

    .line 231
    .line 232
    invoke-static {v14, v15}, Lb3/n0;->e(J)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    :cond_a
    if-ltz v2, :cond_12

    .line 237
    .line 238
    if-ge v2, v1, :cond_12

    .line 239
    .line 240
    iget-object v3, v4, Lg3/w;->a:Lb3/g;

    .line 241
    .line 242
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 249
    .line 250
    .line 251
    invoke-interface {v7, v2}, Lg3/q;->b(I)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-interface {v7, v1}, Lg3/q;->b(I)I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    sub-int v5, v4, v3

    .line 260
    .line 261
    mul-int/lit8 v5, v5, 0x4

    .line 262
    .line 263
    new-array v5, v5, [F

    .line 264
    .line 265
    invoke-static {v3, v4}, Lb3/d0;->b(II)J

    .line 266
    .line 267
    .line 268
    move-result-wide v14

    .line 269
    invoke-virtual {v9, v14, v15, v5}, Lb3/o;->a(J[F)V

    .line 270
    .line 271
    .line 272
    :goto_6
    if-ge v2, v1, :cond_12

    .line 273
    .line 274
    invoke-interface {v7, v2}, Lg3/q;->b(I)I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    sub-int v14, v4, v3

    .line 279
    .line 280
    mul-int/lit8 v14, v14, 0x4

    .line 281
    .line 282
    aget v15, v5, v14

    .line 283
    .line 284
    add-int/lit8 v18, v14, 0x1

    .line 285
    .line 286
    move-object/from16 v19, v0

    .line 287
    .line 288
    aget v0, v5, v18

    .line 289
    .line 290
    add-int/lit8 v18, v14, 0x2

    .line 291
    .line 292
    move/from16 v28, v1

    .line 293
    .line 294
    aget v1, v5, v18

    .line 295
    .line 296
    add-int/lit8 v14, v14, 0x3

    .line 297
    .line 298
    aget v14, v5, v14

    .line 299
    .line 300
    move/from16 v18, v2

    .line 301
    .line 302
    iget v2, v10, Lx1/c;->a:F

    .line 303
    .line 304
    cmpg-float v2, v2, v1

    .line 305
    .line 306
    if-gez v2, :cond_b

    .line 307
    .line 308
    const/16 v20, 0x1

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_b
    const/16 v20, 0x0

    .line 312
    .line 313
    :goto_7
    iget v2, v10, Lx1/c;->c:F

    .line 314
    .line 315
    cmpg-float v2, v15, v2

    .line 316
    .line 317
    if-gez v2, :cond_c

    .line 318
    .line 319
    const/4 v2, 0x1

    .line 320
    goto :goto_8

    .line 321
    :cond_c
    const/4 v2, 0x0

    .line 322
    :goto_8
    and-int v2, v20, v2

    .line 323
    .line 324
    cmpg-float v20, v12, v14

    .line 325
    .line 326
    if-gez v20, :cond_d

    .line 327
    .line 328
    const/16 v20, 0x1

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_d
    const/16 v20, 0x0

    .line 332
    .line 333
    :goto_9
    and-int v2, v2, v20

    .line 334
    .line 335
    cmpg-float v20, v0, v11

    .line 336
    .line 337
    if-gez v20, :cond_e

    .line 338
    .line 339
    const/16 v20, 0x1

    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_e
    const/16 v20, 0x0

    .line 343
    .line 344
    :goto_a
    and-int v2, v2, v20

    .line 345
    .line 346
    invoke-static {v10, v15, v0}, Li2/c;->k(Lx1/c;FF)Z

    .line 347
    .line 348
    .line 349
    move-result v20

    .line 350
    if-eqz v20, :cond_f

    .line 351
    .line 352
    invoke-static {v10, v1, v14}, Li2/c;->k(Lx1/c;FF)Z

    .line 353
    .line 354
    .line 355
    move-result v20

    .line 356
    if-nez v20, :cond_10

    .line 357
    .line 358
    :cond_f
    or-int/lit8 v2, v2, 0x2

    .line 359
    .line 360
    :cond_10
    invoke-virtual {v8, v4}, Lb3/l0;->a(I)Lm3/j;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    if-ne v4, v6, :cond_11

    .line 365
    .line 366
    or-int/lit8 v2, v2, 0x4

    .line 367
    .line 368
    :cond_11
    move-object/from16 v20, v19

    .line 369
    .line 370
    move/from16 v19, v18

    .line 371
    .line 372
    move-object/from16 v18, v20

    .line 373
    .line 374
    move/from16 v21, v0

    .line 375
    .line 376
    move/from16 v22, v1

    .line 377
    .line 378
    move/from16 v24, v2

    .line 379
    .line 380
    move/from16 v23, v14

    .line 381
    .line 382
    move/from16 v20, v15

    .line 383
    .line 384
    invoke-virtual/range {v18 .. v24}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 385
    .line 386
    .line 387
    move-object/from16 v0, v18

    .line 388
    .line 389
    move/from16 v18, v19

    .line 390
    .line 391
    add-int/lit8 v2, v18, 0x1

    .line 392
    .line 393
    move/from16 v1, v28

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 397
    .line 398
    const/16 v2, 0x21

    .line 399
    .line 400
    if-lt v1, v2, :cond_13

    .line 401
    .line 402
    if-eqz v17, :cond_13

    .line 403
    .line 404
    invoke-static {}, Lc/p;->i()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-static {v13}, Ly1/h0;->A(Lx1/c;)Landroid/graphics/RectF;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-static {v2, v3}, Lc/p;->j(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-static {v13}, Ly1/h0;->A(Lx1/c;)Landroid/graphics/RectF;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-static {v2, v3}, Lc/p;->z(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-static {v2}, Lc/p;->k(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-static {v0, v2}, Lc/p;->h(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 429
    .line 430
    .line 431
    :cond_13
    const/16 v2, 0x22

    .line 432
    .line 433
    if-lt v1, v2, :cond_14

    .line 434
    .line 435
    if-eqz v25, :cond_14

    .line 436
    .line 437
    invoke-virtual {v10}, Lx1/c;->f()Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-nez v1, :cond_14

    .line 442
    .line 443
    invoke-virtual {v9, v12}, Lb3/o;->e(F)I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    invoke-virtual {v9, v11}, Lb3/o;->e(F)I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-gt v1, v2, :cond_14

    .line 452
    .line 453
    :goto_b
    invoke-virtual {v8, v1}, Lb3/l0;->e(I)F

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    invoke-virtual {v9, v1}, Lb3/o;->f(I)F

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    invoke-virtual {v8, v1}, Lb3/l0;->f(I)F

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    invoke-virtual {v9, v1}, Lb3/o;->b(I)F

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    invoke-static {v0, v3, v4, v5, v6}, Lc3/a;->q(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)V

    .line 470
    .line 471
    .line 472
    if-eq v1, v2, :cond_14

    .line 473
    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 475
    .line 476
    goto :goto_b

    .line 477
    :cond_14
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-interface/range {v16 .. v16}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 486
    .line 487
    move-object/from16 v2, v27

    .line 488
    .line 489
    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 490
    .line 491
    .line 492
    const/4 v1, 0x0

    .line 493
    move-object/from16 v0, p0

    .line 494
    .line 495
    iput-boolean v1, v0, Lg3/c;->e:Z

    .line 496
    .line 497
    return-void
.end method
