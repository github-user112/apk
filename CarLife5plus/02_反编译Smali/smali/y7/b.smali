.class public final Ly7/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# static fields
.field public static final b:Ly7/b;

.field public static final c:Ly7/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly7/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ly7/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ly7/b;->b:Ly7/b;

    .line 8
    .line 9
    new-instance v0, Ly7/b;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ly7/b;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ly7/b;->c:Ly7/b;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly7/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ly7/m;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Ly7/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly7/b;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Lj8/k0;

    .line 11
    .line 12
    move-object/from16 v5, p2

    .line 13
    .line 14
    check-cast v5, Lf1/s;

    .line 15
    .line 16
    move-object/from16 v2, p3

    .line 17
    .line 18
    check-cast v2, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    const-string v2, "item"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Ld0/h;->d:Ld0/d;

    .line 29
    .line 30
    sget-object v3, Lr1/c;->n:Lr1/f;

    .line 31
    .line 32
    sget-object v8, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 33
    .line 34
    const/16 v4, 0x36

    .line 35
    .line 36
    invoke-static {v2, v3, v5, v4}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-wide v3, v5, Lf1/s;->T:J

    .line 41
    .line 42
    const/16 v6, 0x20

    .line 43
    .line 44
    ushr-long v6, v3, v6

    .line 45
    .line 46
    xor-long/2addr v3, v6

    .line 47
    long-to-int v4, v3

    .line 48
    invoke-virtual {v5}, Lf1/s;->l()Lf1/q1;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v5, v8}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sget-object v7, Lq2/j;->d0:Lq2/i;

    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-object v7, Lq2/i;->b:Lq2/a0;

    .line 62
    .line 63
    invoke-virtual {v5}, Lf1/s;->a0()V

    .line 64
    .line 65
    .line 66
    iget-boolean v9, v5, Lf1/s;->S:Z

    .line 67
    .line 68
    if-eqz v9, :cond_0

    .line 69
    .line 70
    invoke-virtual {v5, v7}, Lf1/s;->k(Lf9/a;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v5}, Lf1/s;->k0()V

    .line 75
    .line 76
    .line 77
    :goto_0
    sget-object v7, Lq2/i;->e:Lq2/h;

    .line 78
    .line 79
    invoke-static {v5, v7, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 83
    .line 84
    invoke-static {v5, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 88
    .line 89
    iget-boolean v3, v5, Lf1/s;->S:Z

    .line 90
    .line 91
    if-nez v3, :cond_1

    .line 92
    .line 93
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v3, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_2

    .line 106
    .line 107
    :cond_1
    invoke-static {v4, v5, v4, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 111
    .line 112
    invoke-static {v5, v2, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v1, Lj8/k0;->d:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    const-string v3, "<this>"

    .line 118
    .line 119
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    .line 124
    const/16 v4, 0x30

    .line 125
    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    move-object v3, v2

    .line 129
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v3, "getBitmap(...)"

    .line 142
    .line 143
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v3, Ly1/f;

    .line 147
    .line 148
    invoke-direct {v3, v2}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    move-object v2, v3

    .line 152
    goto :goto_4

    .line 153
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-lez v3, :cond_4

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    int-to-float v3, v4

    .line 165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 174
    .line 175
    mul-float v3, v3, v6

    .line 176
    .line 177
    float-to-int v3, v3

    .line 178
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-lez v6, :cond_5

    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    goto :goto_3

    .line 189
    :cond_5
    int-to-float v6, v4

    .line 190
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 199
    .line 200
    mul-float v6, v6, v7

    .line 201
    .line 202
    float-to-int v6, v6

    .line 203
    :goto_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 204
    .line 205
    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    new-instance v9, Landroid/graphics/Canvas;

    .line 210
    .line 211
    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    const-string v11, "getBounds(...)"

    .line 219
    .line 220
    invoke-static {v10, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v11, 0x0

    .line 224
    invoke-virtual {v2, v11, v11, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    .line 232
    .line 233
    new-instance v3, Ly1/f;

    .line 234
    .line 235
    invoke-direct {v3, v7}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :goto_4
    int-to-float v3, v4

    .line 240
    invoke-static {v3}, Landroidx/compose/foundation/layout/c;->h(F)Lr1/p;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    const/16 v6, 0x1b0

    .line 245
    .line 246
    const/16 v7, 0xf8

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    invoke-static/range {v2 .. v7}, Lp9/q;->c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V

    .line 250
    .line 251
    .line 252
    const/16 v2, 0x10

    .line 253
    .line 254
    invoke-static {v2, v5}, Lg5/a;->B(ILf1/s;)F

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    sget-object v4, Lr1/m;->a:Lr1/m;

    .line 259
    .line 260
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {v5, v3}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v1, Lj8/k0;->a:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v2, v5}, Lg5/a;->B(ILf1/s;)F

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    const-wide v3, 0x100000000L

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    invoke-static {v2, v3, v4}, Lc7/a;->M(FJ)J

    .line 279
    .line 280
    .line 281
    move-result-wide v6

    .line 282
    new-instance v11, Lm3/k;

    .line 283
    .line 284
    const/4 v2, 0x3

    .line 285
    invoke-direct {v11, v2}, Lm3/k;-><init>(I)V

    .line 286
    .line 287
    .line 288
    const/16 v21, 0xc00

    .line 289
    .line 290
    const v22, 0x1ddf4

    .line 291
    .line 292
    .line 293
    move-object/from16 v19, v5

    .line 294
    .line 295
    const-wide/16 v4, 0x0

    .line 296
    .line 297
    move-object v3, v8

    .line 298
    const/4 v8, 0x0

    .line 299
    const-wide/16 v9, 0x0

    .line 300
    .line 301
    const-wide/16 v12, 0x0

    .line 302
    .line 303
    const/4 v14, 0x0

    .line 304
    const/4 v15, 0x0

    .line 305
    const/16 v16, 0x1

    .line 306
    .line 307
    const/16 v17, 0x0

    .line 308
    .line 309
    const/16 v18, 0x0

    .line 310
    .line 311
    const/16 v20, 0x30

    .line 312
    .line 313
    move-object v2, v1

    .line 314
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 315
    .line 316
    .line 317
    move-object/from16 v5, v19

    .line 318
    .line 319
    const/4 v1, 0x1

    .line 320
    invoke-virtual {v5, v1}, Lf1/s;->p(Z)V

    .line 321
    .line 322
    .line 323
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 324
    .line 325
    return-object v1

    .line 326
    :pswitch_0
    move-object/from16 v1, p1

    .line 327
    .line 328
    check-cast v1, Ld0/o0;

    .line 329
    .line 330
    move-object/from16 v19, p2

    .line 331
    .line 332
    check-cast v19, Lf1/s;

    .line 333
    .line 334
    move-object/from16 v2, p3

    .line 335
    .line 336
    check-cast v2, Ljava/lang/Number;

    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    const-string v3, "$this$FilledTonalButton"

    .line 343
    .line 344
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    and-int/lit8 v1, v2, 0x11

    .line 348
    .line 349
    const/16 v2, 0x10

    .line 350
    .line 351
    if-ne v1, v2, :cond_7

    .line 352
    .line 353
    invoke-virtual/range {v19 .. v19}, Lf1/s;->z()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-nez v1, :cond_6

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lf1/s;->Q()V

    .line 361
    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_7
    :goto_5
    const/16 v21, 0x0

    .line 365
    .line 366
    const v22, 0x1fffe

    .line 367
    .line 368
    .line 369
    const-string v2, "\u9ed8\u8ba4"

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    const-wide/16 v4, 0x0

    .line 373
    .line 374
    const-wide/16 v6, 0x0

    .line 375
    .line 376
    const/4 v8, 0x0

    .line 377
    const-wide/16 v9, 0x0

    .line 378
    .line 379
    const/4 v11, 0x0

    .line 380
    const-wide/16 v12, 0x0

    .line 381
    .line 382
    const/4 v14, 0x0

    .line 383
    const/4 v15, 0x0

    .line 384
    const/16 v16, 0x0

    .line 385
    .line 386
    const/16 v17, 0x0

    .line 387
    .line 388
    const/16 v18, 0x0

    .line 389
    .line 390
    const/16 v20, 0x6

    .line 391
    .line 392
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 393
    .line 394
    .line 395
    :goto_6
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 396
    .line 397
    return-object v1

    .line 398
    :pswitch_1
    move-object/from16 v1, p1

    .line 399
    .line 400
    check-cast v1, Lj8/k0;

    .line 401
    .line 402
    move-object/from16 v2, p2

    .line 403
    .line 404
    check-cast v2, Lf1/s;

    .line 405
    .line 406
    move-object/from16 v3, p3

    .line 407
    .line 408
    check-cast v3, Ljava/lang/Number;

    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 411
    .line 412
    .line 413
    const-string v3, "it"

    .line 414
    .line 415
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v1, v1, Lj8/k0;->a:Ljava/lang/String;

    .line 419
    .line 420
    const/16 v3, 0x10

    .line 421
    .line 422
    invoke-static {v3, v2}, Lg5/a;->B(ILf1/s;)F

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    const-wide v4, 0x100000000L

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    invoke-static {v3, v4, v5}, Lc7/a;->M(FJ)J

    .line 432
    .line 433
    .line 434
    move-result-wide v6

    .line 435
    sget-object v3, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 436
    .line 437
    const/16 v4, 0x20

    .line 438
    .line 439
    invoke-static {v4, v2}, Lg5/a;->B(ILf1/s;)F

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    const/4 v5, 0x2

    .line 444
    const/4 v8, 0x0

    .line 445
    invoke-static {v3, v4, v8, v5}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    new-instance v11, Lm3/k;

    .line 450
    .line 451
    const/4 v4, 0x3

    .line 452
    invoke-direct {v11, v4}, Lm3/k;-><init>(I)V

    .line 453
    .line 454
    .line 455
    const/16 v21, 0x0

    .line 456
    .line 457
    const v22, 0x1fdf4

    .line 458
    .line 459
    .line 460
    const-wide/16 v4, 0x0

    .line 461
    .line 462
    const/4 v8, 0x0

    .line 463
    const-wide/16 v9, 0x0

    .line 464
    .line 465
    const-wide/16 v12, 0x0

    .line 466
    .line 467
    const/4 v14, 0x0

    .line 468
    const/4 v15, 0x0

    .line 469
    const/16 v16, 0x0

    .line 470
    .line 471
    const/16 v17, 0x0

    .line 472
    .line 473
    const/16 v18, 0x0

    .line 474
    .line 475
    const/16 v20, 0x0

    .line 476
    .line 477
    move-object/from16 v19, v2

    .line 478
    .line 479
    move-object v2, v1

    .line 480
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 481
    .line 482
    .line 483
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 484
    .line 485
    return-object v1

    .line 486
    nop

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
