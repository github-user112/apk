.class public abstract Lw3/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw3/c;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p1, v0, p2}, Lw3/c;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    const-string p1, "No start tag found"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "selector"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_25

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    const/16 v5, 0x14

    .line 26
    .line 27
    new-array v6, v5, [[I

    .line 28
    .line 29
    new-array v5, v5, [I

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eq v9, v4, :cond_24

    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/4 v11, 0x3

    .line 44
    if-ge v10, v3, :cond_0

    .line 45
    .line 46
    if-eq v9, v11, :cond_24

    .line 47
    .line 48
    :cond_0
    const/4 v12, 0x2

    .line 49
    if-ne v9, v12, :cond_1

    .line 50
    .line 51
    if-gt v10, v3, :cond_1

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v10, "item"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    :cond_1
    move/from16 v34, v3

    .line 66
    .line 67
    const/16 v16, 0x1

    .line 68
    .line 69
    goto/16 :goto_1a

    .line 70
    .line 71
    :cond_2
    sget-object v9, Lt3/a;->a:[I

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    :goto_1
    const/4 v10, -0x1

    .line 85
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const v14, -0xff01

    .line 90
    .line 91
    .line 92
    const/16 v15, 0x1f

    .line 93
    .line 94
    if-eq v13, v10, :cond_6

    .line 95
    .line 96
    sget-object v10, Lw3/c;->a:Ljava/lang/ThreadLocal;

    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v16

    .line 102
    check-cast v16, Landroid/util/TypedValue;

    .line 103
    .line 104
    if-nez v16, :cond_4

    .line 105
    .line 106
    new-instance v12, Landroid/util/TypedValue;

    .line 107
    .line 108
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object/from16 v12, v16

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v0, v13, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 118
    .line 119
    .line 120
    iget v10, v12, Landroid/util/TypedValue;->type:I

    .line 121
    .line 122
    const/16 v12, 0x1c

    .line 123
    .line 124
    if-lt v10, v12, :cond_5

    .line 125
    .line 126
    if-gt v10, v15, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v0, v10, v2}, Lw3/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 138
    .line 139
    .line 140
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_4

    .line 142
    :catch_0
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    :goto_3
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_4
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    const/high16 v13, 0x3f800000    # 1.0f

    .line 156
    .line 157
    if-eqz v12, :cond_7

    .line 158
    .line 159
    invoke-virtual {v9, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_8

    .line 169
    .line 170
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    goto :goto_5

    .line 175
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .line 176
    .line 177
    :goto_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    .line 179
    const/4 v14, 0x4

    .line 180
    const/16 v16, 0x1

    .line 181
    .line 182
    const/high16 v4, -0x40800000    # -1.0f

    .line 183
    .line 184
    if-lt v12, v15, :cond_9

    .line 185
    .line 186
    const/4 v12, 0x2

    .line 187
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    if-eqz v15, :cond_9

    .line 192
    .line 193
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    goto :goto_6

    .line 198
    :cond_9
    invoke-virtual {v9, v14, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    :goto_6
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    .line 204
    .line 205
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    new-array v12, v9, [I

    .line 210
    .line 211
    const/4 v13, 0x0

    .line 212
    const/4 v15, 0x0

    .line 213
    const/high16 v18, 0x3f800000    # 1.0f

    .line 214
    .line 215
    :goto_7
    if-ge v15, v9, :cond_c

    .line 216
    .line 217
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    const v7, 0x10101a5

    .line 222
    .line 223
    .line 224
    if-eq v14, v7, :cond_b

    .line 225
    .line 226
    const v7, 0x101031f

    .line 227
    .line 228
    .line 229
    if-eq v14, v7, :cond_b

    .line 230
    .line 231
    const v7, 0x7f030029

    .line 232
    .line 233
    .line 234
    if-eq v14, v7, :cond_b

    .line 235
    .line 236
    const v7, 0x7f03009d

    .line 237
    .line 238
    .line 239
    if-eq v14, v7, :cond_b

    .line 240
    .line 241
    add-int/lit8 v7, v13, 0x1

    .line 242
    .line 243
    const/4 v0, 0x0

    .line 244
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 245
    .line 246
    .line 247
    move-result v20

    .line 248
    if-eqz v20, :cond_a

    .line 249
    .line 250
    goto :goto_8

    .line 251
    :cond_a
    neg-int v14, v14

    .line 252
    :goto_8
    aput v14, v12, v13

    .line 253
    .line 254
    move v13, v7

    .line 255
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 256
    .line 257
    move-object/from16 v0, p0

    .line 258
    .line 259
    const/4 v7, 0x0

    .line 260
    const/4 v14, 0x4

    .line 261
    goto :goto_7

    .line 262
    :cond_c
    invoke-static {v12, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const/high16 v7, 0x42c80000    # 100.0f

    .line 267
    .line 268
    const/4 v9, 0x0

    .line 269
    cmpl-float v12, v4, v9

    .line 270
    .line 271
    if-ltz v12, :cond_d

    .line 272
    .line 273
    cmpg-float v12, v4, v7

    .line 274
    .line 275
    if-gtz v12, :cond_d

    .line 276
    .line 277
    const/4 v12, 0x1

    .line 278
    goto :goto_9

    .line 279
    :cond_d
    const/4 v12, 0x0

    .line 280
    :goto_9
    cmpl-float v13, v11, v18

    .line 281
    .line 282
    if-nez v13, :cond_e

    .line 283
    .line 284
    if-nez v12, :cond_e

    .line 285
    .line 286
    move-object/from16 v31, v0

    .line 287
    .line 288
    move/from16 v34, v3

    .line 289
    .line 290
    goto/16 :goto_17

    .line 291
    .line 292
    :cond_e
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    int-to-float v13, v13

    .line 297
    mul-float v13, v13, v11

    .line 298
    .line 299
    const/high16 v11, 0x3f000000    # 0.5f

    .line 300
    .line 301
    add-float/2addr v13, v11

    .line 302
    float-to-int v11, v13

    .line 303
    if-gez v11, :cond_f

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    goto :goto_a

    .line 307
    :cond_f
    const/16 v13, 0xff

    .line 308
    .line 309
    if-le v11, v13, :cond_10

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_10
    move v13, v11

    .line 313
    :goto_a
    if-eqz v12, :cond_1f

    .line 314
    .line 315
    invoke-static {v10}, Lw3/a;->a(I)Lw3/a;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    iget v11, v10, Lw3/a;->a:F

    .line 320
    .line 321
    iget v10, v10, Lw3/a;->b:F

    .line 322
    .line 323
    sget-object v12, Lw3/m;->k:Lw3/m;

    .line 324
    .line 325
    float-to-double v14, v10

    .line 326
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 327
    .line 328
    cmpg-double v22, v14, v20

    .line 329
    .line 330
    if-ltz v22, :cond_11

    .line 331
    .line 332
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 333
    .line 334
    .line 335
    move-result v14

    .line 336
    int-to-double v14, v14

    .line 337
    const-wide/16 v20, 0x0

    .line 338
    .line 339
    cmpg-double v22, v14, v20

    .line 340
    .line 341
    if-lez v22, :cond_11

    .line 342
    .line 343
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    int-to-double v14, v14

    .line 348
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 349
    .line 350
    cmpl-double v22, v14, v20

    .line 351
    .line 352
    if-ltz v22, :cond_12

    .line 353
    .line 354
    :cond_11
    move-object/from16 v31, v0

    .line 355
    .line 356
    move/from16 v34, v3

    .line 357
    .line 358
    goto/16 :goto_15

    .line 359
    .line 360
    :cond_12
    cmpg-float v14, v11, v9

    .line 361
    .line 362
    if-gez v14, :cond_13

    .line 363
    .line 364
    const/4 v11, 0x0

    .line 365
    goto :goto_b

    .line 366
    :cond_13
    const/high16 v14, 0x43b40000    # 360.0f

    .line 367
    .line 368
    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    :goto_b
    move v15, v10

    .line 373
    const/4 v7, 0x0

    .line 374
    const/16 v20, 0x1

    .line 375
    .line 376
    const/16 v21, 0x0

    .line 377
    .line 378
    const/high16 v22, 0x42c80000    # 100.0f

    .line 379
    .line 380
    :goto_c
    sub-float v23, v21, v10

    .line 381
    .line 382
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    .line 383
    .line 384
    .line 385
    move-result v23

    .line 386
    const v24, 0x3ecccccd    # 0.4f

    .line 387
    .line 388
    .line 389
    cmpl-float v23, v23, v24

    .line 390
    .line 391
    if-ltz v23, :cond_1d

    .line 392
    .line 393
    const/high16 v23, 0x447a0000    # 1000.0f

    .line 394
    .line 395
    const/high16 v24, 0x447a0000    # 1000.0f

    .line 396
    .line 397
    const/16 v25, 0x0

    .line 398
    .line 399
    const/high16 v26, 0x42c80000    # 100.0f

    .line 400
    .line 401
    const/16 v27, 0x0

    .line 402
    .line 403
    :goto_d
    sub-float v28, v25, v26

    .line 404
    .line 405
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    .line 406
    .line 407
    .line 408
    move-result v28

    .line 409
    const v29, 0x3c23d70a    # 0.01f

    .line 410
    .line 411
    .line 412
    const/high16 v30, 0x40000000    # 2.0f

    .line 413
    .line 414
    cmpl-float v28, v28, v29

    .line 415
    .line 416
    if-lez v28, :cond_19

    .line 417
    .line 418
    sub-float v28, v26, v25

    .line 419
    .line 420
    div-float v28, v28, v30

    .line 421
    .line 422
    const/16 v29, 0x0

    .line 423
    .line 424
    add-float v9, v28, v25

    .line 425
    .line 426
    invoke-static {v9, v15, v11}, Lw3/a;->b(FFF)Lw3/a;

    .line 427
    .line 428
    .line 429
    move-result-object v14

    .line 430
    move-object/from16 v31, v0

    .line 431
    .line 432
    sget-object v0, Lw3/m;->k:Lw3/m;

    .line 433
    .line 434
    invoke-virtual {v14, v0}, Lw3/a;->c(Lw3/m;)I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 439
    .line 440
    .line 441
    move-result v14

    .line 442
    invoke-static {v14}, Lw3/b;->f(I)F

    .line 443
    .line 444
    .line 445
    move-result v14

    .line 446
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 447
    .line 448
    .line 449
    move-result v32

    .line 450
    invoke-static/range {v32 .. v32}, Lw3/b;->f(I)F

    .line 451
    .line 452
    .line 453
    move-result v32

    .line 454
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 455
    .line 456
    .line 457
    move-result v33

    .line 458
    invoke-static/range {v33 .. v33}, Lw3/b;->f(I)F

    .line 459
    .line 460
    .line 461
    move-result v33

    .line 462
    sget-object v34, Lw3/b;->d:[[F

    .line 463
    .line 464
    aget-object v34, v34, v16

    .line 465
    .line 466
    const/16 v19, 0x0

    .line 467
    .line 468
    aget v35, v34, v19

    .line 469
    .line 470
    mul-float v14, v14, v35

    .line 471
    .line 472
    aget v35, v34, v16

    .line 473
    .line 474
    mul-float v32, v32, v35

    .line 475
    .line 476
    add-float v32, v32, v14

    .line 477
    .line 478
    const/16 v17, 0x2

    .line 479
    .line 480
    aget v14, v34, v17

    .line 481
    .line 482
    mul-float v33, v33, v14

    .line 483
    .line 484
    add-float v33, v33, v32

    .line 485
    .line 486
    div-float v14, v33, v22

    .line 487
    .line 488
    const v32, 0x3c111aa7

    .line 489
    .line 490
    .line 491
    cmpg-float v32, v14, v32

    .line 492
    .line 493
    if-gtz v32, :cond_14

    .line 494
    .line 495
    const v32, 0x4461d2f7

    .line 496
    .line 497
    .line 498
    mul-float v14, v14, v32

    .line 499
    .line 500
    move/from16 v32, v0

    .line 501
    .line 502
    goto :goto_e

    .line 503
    :cond_14
    move/from16 v32, v0

    .line 504
    .line 505
    float-to-double v0, v14

    .line 506
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    .line 507
    .line 508
    .line 509
    move-result-wide v0

    .line 510
    double-to-float v0, v0

    .line 511
    const/high16 v1, 0x42e80000    # 116.0f

    .line 512
    .line 513
    mul-float v0, v0, v1

    .line 514
    .line 515
    const/high16 v1, 0x41800000    # 16.0f

    .line 516
    .line 517
    sub-float v14, v0, v1

    .line 518
    .line 519
    :goto_e
    sub-float v0, v4, v14

    .line 520
    .line 521
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    const v1, 0x3e4ccccd    # 0.2f

    .line 526
    .line 527
    .line 528
    cmpg-float v1, v0, v1

    .line 529
    .line 530
    if-gez v1, :cond_15

    .line 531
    .line 532
    invoke-static/range {v32 .. v32}, Lw3/a;->a(I)Lw3/a;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    move/from16 v32, v0

    .line 537
    .line 538
    iget v0, v1, Lw3/a;->c:F

    .line 539
    .line 540
    iget v2, v1, Lw3/a;->b:F

    .line 541
    .line 542
    invoke-static {v0, v2, v11}, Lw3/a;->b(FFF)Lw3/a;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    iget v2, v1, Lw3/a;->d:F

    .line 547
    .line 548
    move/from16 v33, v2

    .line 549
    .line 550
    iget v2, v0, Lw3/a;->d:F

    .line 551
    .line 552
    sub-float v2, v33, v2

    .line 553
    .line 554
    move/from16 v33, v2

    .line 555
    .line 556
    iget v2, v1, Lw3/a;->e:F

    .line 557
    .line 558
    move/from16 v34, v2

    .line 559
    .line 560
    iget v2, v0, Lw3/a;->e:F

    .line 561
    .line 562
    sub-float v2, v34, v2

    .line 563
    .line 564
    move/from16 v34, v2

    .line 565
    .line 566
    iget v2, v1, Lw3/a;->f:F

    .line 567
    .line 568
    iget v0, v0, Lw3/a;->f:F

    .line 569
    .line 570
    sub-float/2addr v2, v0

    .line 571
    mul-float v0, v33, v33

    .line 572
    .line 573
    mul-float v33, v34, v34

    .line 574
    .line 575
    add-float v33, v33, v0

    .line 576
    .line 577
    mul-float v2, v2, v2

    .line 578
    .line 579
    add-float v2, v2, v33

    .line 580
    .line 581
    move-object/from16 v33, v1

    .line 582
    .line 583
    float-to-double v0, v2

    .line 584
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 585
    .line 586
    .line 587
    move-result-wide v0

    .line 588
    move/from16 v34, v3

    .line 589
    .line 590
    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 596
    .line 597
    .line 598
    move-result-wide v0

    .line 599
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    mul-double v0, v0, v2

    .line 605
    .line 606
    double-to-float v0, v0

    .line 607
    cmpg-float v1, v0, v18

    .line 608
    .line 609
    if-gtz v1, :cond_16

    .line 610
    .line 611
    move/from16 v24, v0

    .line 612
    .line 613
    move/from16 v23, v32

    .line 614
    .line 615
    move-object/from16 v27, v33

    .line 616
    .line 617
    goto :goto_f

    .line 618
    :cond_15
    move/from16 v34, v3

    .line 619
    .line 620
    :cond_16
    :goto_f
    cmpl-float v0, v23, v29

    .line 621
    .line 622
    if-nez v0, :cond_17

    .line 623
    .line 624
    cmpl-float v0, v24, v29

    .line 625
    .line 626
    if-nez v0, :cond_17

    .line 627
    .line 628
    :goto_10
    move-object/from16 v0, v27

    .line 629
    .line 630
    goto :goto_12

    .line 631
    :cond_17
    cmpg-float v0, v14, v4

    .line 632
    .line 633
    if-gez v0, :cond_18

    .line 634
    .line 635
    move/from16 v25, v9

    .line 636
    .line 637
    goto :goto_11

    .line 638
    :cond_18
    move/from16 v26, v9

    .line 639
    .line 640
    :goto_11
    move-object/from16 v1, p2

    .line 641
    .line 642
    move-object/from16 v2, p3

    .line 643
    .line 644
    move-object/from16 v0, v31

    .line 645
    .line 646
    move/from16 v3, v34

    .line 647
    .line 648
    const/4 v9, 0x0

    .line 649
    goto/16 :goto_d

    .line 650
    .line 651
    :cond_19
    move-object/from16 v31, v0

    .line 652
    .line 653
    move/from16 v34, v3

    .line 654
    .line 655
    const/16 v17, 0x2

    .line 656
    .line 657
    const/16 v29, 0x0

    .line 658
    .line 659
    goto :goto_10

    .line 660
    :goto_12
    if-eqz v20, :cond_1b

    .line 661
    .line 662
    if-eqz v0, :cond_1a

    .line 663
    .line 664
    invoke-virtual {v0, v12}, Lw3/a;->c(Lw3/m;)I

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    :goto_13
    move v10, v0

    .line 669
    goto :goto_16

    .line 670
    :cond_1a
    sub-float v0, v10, v21

    .line 671
    .line 672
    div-float v0, v0, v30

    .line 673
    .line 674
    add-float v15, v0, v21

    .line 675
    .line 676
    move-object/from16 v1, p2

    .line 677
    .line 678
    move-object/from16 v2, p3

    .line 679
    .line 680
    move-object/from16 v0, v31

    .line 681
    .line 682
    move/from16 v3, v34

    .line 683
    .line 684
    const/4 v9, 0x0

    .line 685
    const/16 v20, 0x0

    .line 686
    .line 687
    goto/16 :goto_c

    .line 688
    .line 689
    :cond_1b
    if-nez v0, :cond_1c

    .line 690
    .line 691
    move v10, v15

    .line 692
    goto :goto_14

    .line 693
    :cond_1c
    move-object v7, v0

    .line 694
    move/from16 v21, v15

    .line 695
    .line 696
    :goto_14
    sub-float v0, v10, v21

    .line 697
    .line 698
    div-float v0, v0, v30

    .line 699
    .line 700
    add-float v15, v0, v21

    .line 701
    .line 702
    move-object/from16 v1, p2

    .line 703
    .line 704
    move-object/from16 v2, p3

    .line 705
    .line 706
    move-object/from16 v0, v31

    .line 707
    .line 708
    move/from16 v3, v34

    .line 709
    .line 710
    const/4 v9, 0x0

    .line 711
    goto/16 :goto_c

    .line 712
    .line 713
    :cond_1d
    move-object/from16 v31, v0

    .line 714
    .line 715
    move/from16 v34, v3

    .line 716
    .line 717
    if-nez v7, :cond_1e

    .line 718
    .line 719
    invoke-static {v4}, Lw3/b;->e(F)I

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    goto :goto_13

    .line 724
    :cond_1e
    invoke-virtual {v7, v12}, Lw3/a;->c(Lw3/m;)I

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    goto :goto_13

    .line 729
    :goto_15
    invoke-static {v4}, Lw3/b;->e(F)I

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    goto :goto_13

    .line 734
    :cond_1f
    move-object/from16 v31, v0

    .line 735
    .line 736
    move/from16 v34, v3

    .line 737
    .line 738
    :goto_16
    const v0, 0xffffff

    .line 739
    .line 740
    .line 741
    and-int/2addr v0, v10

    .line 742
    shl-int/lit8 v1, v13, 0x18

    .line 743
    .line 744
    or-int v10, v0, v1

    .line 745
    .line 746
    :goto_17
    add-int/lit8 v0, v8, 0x1

    .line 747
    .line 748
    array-length v1, v5

    .line 749
    const/16 v2, 0x8

    .line 750
    .line 751
    if-le v0, v1, :cond_21

    .line 752
    .line 753
    const/4 v1, 0x4

    .line 754
    if-gt v8, v1, :cond_20

    .line 755
    .line 756
    const/16 v1, 0x8

    .line 757
    .line 758
    goto :goto_18

    .line 759
    :cond_20
    mul-int/lit8 v1, v8, 0x2

    .line 760
    .line 761
    :goto_18
    new-array v1, v1, [I

    .line 762
    .line 763
    const/4 v3, 0x0

    .line 764
    invoke-static {v5, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    .line 766
    .line 767
    move-object v5, v1

    .line 768
    :cond_21
    aput v10, v5, v8

    .line 769
    .line 770
    array-length v1, v6

    .line 771
    if-le v0, v1, :cond_23

    .line 772
    .line 773
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    const/4 v3, 0x4

    .line 782
    if-gt v8, v3, :cond_22

    .line 783
    .line 784
    goto :goto_19

    .line 785
    :cond_22
    mul-int/lit8 v2, v8, 0x2

    .line 786
    .line 787
    :goto_19
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    check-cast v1, [Ljava/lang/Object;

    .line 792
    .line 793
    const/4 v3, 0x0

    .line 794
    invoke-static {v6, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    .line 796
    .line 797
    move-object v6, v1

    .line 798
    :cond_23
    aput-object v31, v6, v8

    .line 799
    .line 800
    check-cast v6, [[I

    .line 801
    .line 802
    move-object/from16 v1, p2

    .line 803
    .line 804
    move-object/from16 v2, p3

    .line 805
    .line 806
    move v8, v0

    .line 807
    move/from16 v3, v34

    .line 808
    .line 809
    const/4 v4, 0x1

    .line 810
    const/4 v7, 0x0

    .line 811
    move-object/from16 v0, p0

    .line 812
    .line 813
    goto/16 :goto_0

    .line 814
    .line 815
    :goto_1a
    move-object/from16 v0, p0

    .line 816
    .line 817
    move-object/from16 v1, p2

    .line 818
    .line 819
    move-object/from16 v2, p3

    .line 820
    .line 821
    move/from16 v3, v34

    .line 822
    .line 823
    const/4 v4, 0x1

    .line 824
    const/4 v7, 0x0

    .line 825
    goto/16 :goto_0

    .line 826
    .line 827
    :cond_24
    new-array v0, v8, [I

    .line 828
    .line 829
    new-array v1, v8, [[I

    .line 830
    .line 831
    const/4 v3, 0x0

    .line 832
    invoke-static {v5, v3, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    .line 834
    .line 835
    invoke-static {v6, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    .line 837
    .line 838
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 839
    .line 840
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 841
    .line 842
    .line 843
    return-object v2

    .line 844
    :cond_25
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 845
    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    .line 847
    .line 848
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .line 850
    .line 851
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    const-string v2, ": invalid color state list tag "

    .line 859
    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    throw v0
.end method
