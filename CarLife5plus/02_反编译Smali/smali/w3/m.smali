.class public final Lw3/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final k:Lw3/m;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:[F

.field public final h:F

.field public final i:F

.field public final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    sget-object v0, Lw3/b;->c:[F

    .line 2
    .line 3
    invoke-static {}, Lw3/b;->l()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-double v1, v1

    .line 8
    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double v1, v1, v3

    .line 14
    .line 15
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    div-double/2addr v1, v3

    .line 18
    double-to-float v1, v1

    .line 19
    sget-object v2, Lw3/b;->a:[[F

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    aget v6, v0, v5

    .line 23
    .line 24
    aget-object v7, v2, v5

    .line 25
    .line 26
    aget v8, v7, v5

    .line 27
    .line 28
    mul-float v8, v8, v6

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    aget v10, v0, v9

    .line 32
    .line 33
    aget v11, v7, v9

    .line 34
    .line 35
    mul-float v11, v11, v10

    .line 36
    .line 37
    add-float/2addr v11, v8

    .line 38
    const/4 v8, 0x2

    .line 39
    aget v12, v0, v8

    .line 40
    .line 41
    aget v7, v7, v8

    .line 42
    .line 43
    mul-float v7, v7, v12

    .line 44
    .line 45
    add-float/2addr v7, v11

    .line 46
    aget-object v11, v2, v9

    .line 47
    .line 48
    aget v13, v11, v5

    .line 49
    .line 50
    mul-float v13, v13, v6

    .line 51
    .line 52
    aget v14, v11, v9

    .line 53
    .line 54
    mul-float v14, v14, v10

    .line 55
    .line 56
    add-float/2addr v14, v13

    .line 57
    aget v11, v11, v8

    .line 58
    .line 59
    mul-float v11, v11, v12

    .line 60
    .line 61
    add-float/2addr v11, v14

    .line 62
    aget-object v2, v2, v8

    .line 63
    .line 64
    aget v13, v2, v5

    .line 65
    .line 66
    mul-float v6, v6, v13

    .line 67
    .line 68
    aget v13, v2, v9

    .line 69
    .line 70
    mul-float v10, v10, v13

    .line 71
    .line 72
    add-float/2addr v10, v6

    .line 73
    aget v2, v2, v8

    .line 74
    .line 75
    mul-float v12, v12, v2

    .line 76
    .line 77
    add-float/2addr v12, v10

    .line 78
    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    .line 80
    float-to-double v13, v2

    .line 81
    const-wide v15, 0x3feccccccccccccdL    # 0.9

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    cmpl-double v6, v13, v15

    .line 87
    .line 88
    if-ltz v6, :cond_0

    .line 89
    .line 90
    const v6, 0x3f30a3d7    # 0.69f

    .line 91
    .line 92
    .line 93
    const v18, 0x3f30a3d7    # 0.69f

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const v6, 0x3f27ae14    # 0.655f

    .line 98
    .line 99
    .line 100
    const v18, 0x3f27ae14    # 0.655f

    .line 101
    .line 102
    .line 103
    :goto_0
    neg-float v6, v1

    .line 104
    const/high16 v10, 0x42280000    # 42.0f

    .line 105
    .line 106
    sub-float/2addr v6, v10

    .line 107
    const/high16 v10, 0x42b80000    # 92.0f

    .line 108
    .line 109
    div-float/2addr v6, v10

    .line 110
    float-to-double v13, v6

    .line 111
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v13

    .line 115
    double-to-float v6, v13

    .line 116
    const v10, 0x3e8e38e4

    .line 117
    .line 118
    .line 119
    mul-float v6, v6, v10

    .line 120
    .line 121
    const/high16 v10, 0x3f800000    # 1.0f

    .line 122
    .line 123
    sub-float v6, v10, v6

    .line 124
    .line 125
    mul-float v6, v6, v2

    .line 126
    .line 127
    float-to-double v13, v6

    .line 128
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 129
    .line 130
    cmpl-double v17, v13, v15

    .line 131
    .line 132
    if-lez v17, :cond_1

    .line 133
    .line 134
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    const-wide/16 v15, 0x0

    .line 138
    .line 139
    cmpg-double v17, v13, v15

    .line 140
    .line 141
    if-gez v17, :cond_2

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    :cond_2
    :goto_1
    const/high16 v13, 0x42c80000    # 100.0f

    .line 145
    .line 146
    div-float v14, v13, v7

    .line 147
    .line 148
    mul-float v14, v14, v6

    .line 149
    .line 150
    add-float/2addr v14, v10

    .line 151
    sub-float/2addr v14, v6

    .line 152
    div-float v15, v13, v11

    .line 153
    .line 154
    mul-float v15, v15, v6

    .line 155
    .line 156
    add-float/2addr v15, v10

    .line 157
    sub-float/2addr v15, v6

    .line 158
    div-float/2addr v13, v12

    .line 159
    mul-float v13, v13, v6

    .line 160
    .line 161
    add-float/2addr v13, v10

    .line 162
    sub-float/2addr v13, v6

    .line 163
    const/4 v6, 0x3

    .line 164
    new-array v2, v6, [F

    .line 165
    .line 166
    aput v14, v2, v5

    .line 167
    .line 168
    aput v15, v2, v9

    .line 169
    .line 170
    aput v13, v2, v8

    .line 171
    .line 172
    const/high16 v13, 0x40a00000    # 5.0f

    .line 173
    .line 174
    mul-float v13, v13, v1

    .line 175
    .line 176
    add-float/2addr v13, v10

    .line 177
    div-float v13, v10, v13

    .line 178
    .line 179
    mul-float v14, v13, v13

    .line 180
    .line 181
    mul-float v14, v14, v13

    .line 182
    .line 183
    mul-float v14, v14, v13

    .line 184
    .line 185
    sub-float/2addr v10, v14

    .line 186
    mul-float v14, v14, v1

    .line 187
    .line 188
    const v13, 0x3dcccccd    # 0.1f

    .line 189
    .line 190
    .line 191
    mul-float v13, v13, v10

    .line 192
    .line 193
    mul-float v13, v13, v10

    .line 194
    .line 195
    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    .line 196
    .line 197
    move-wide/from16 v20, v3

    .line 198
    .line 199
    float-to-double v3, v1

    .line 200
    mul-double v3, v3, v15

    .line 201
    .line 202
    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    .line 203
    .line 204
    .line 205
    move-result-wide v3

    .line 206
    double-to-float v1, v3

    .line 207
    mul-float v13, v13, v1

    .line 208
    .line 209
    add-float/2addr v13, v14

    .line 210
    invoke-static {}, Lw3/b;->l()F

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    aget v0, v0, v9

    .line 215
    .line 216
    div-float v14, v1, v0

    .line 217
    .line 218
    float-to-double v0, v14

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 220
    .line 221
    .line 222
    move-result-wide v3

    .line 223
    double-to-float v3, v3

    .line 224
    const v4, 0x3fbd70a4    # 1.48f

    .line 225
    .line 226
    .line 227
    add-float v23, v3, v4

    .line 228
    .line 229
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 235
    .line 236
    .line 237
    move-result-wide v0

    .line 238
    double-to-float v0, v0

    .line 239
    const v1, 0x3f39999a    # 0.725f

    .line 240
    .line 241
    .line 242
    div-float v16, v1, v0

    .line 243
    .line 244
    aget v0, v2, v5

    .line 245
    .line 246
    mul-float v0, v0, v13

    .line 247
    .line 248
    mul-float v0, v0, v7

    .line 249
    .line 250
    float-to-double v0, v0

    .line 251
    div-double v0, v0, v20

    .line 252
    .line 253
    const-wide v3, 0x3fdae147ae147ae1L    # 0.42

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 259
    .line 260
    .line 261
    move-result-wide v0

    .line 262
    double-to-float v0, v0

    .line 263
    aget v1, v2, v9

    .line 264
    .line 265
    mul-float v1, v1, v13

    .line 266
    .line 267
    mul-float v1, v1, v11

    .line 268
    .line 269
    float-to-double v10, v1

    .line 270
    div-double v10, v10, v20

    .line 271
    .line 272
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 273
    .line 274
    .line 275
    move-result-wide v10

    .line 276
    double-to-float v1, v10

    .line 277
    aget v7, v2, v8

    .line 278
    .line 279
    mul-float v7, v7, v13

    .line 280
    .line 281
    mul-float v7, v7, v12

    .line 282
    .line 283
    float-to-double v10, v7

    .line 284
    div-double v10, v10, v20

    .line 285
    .line 286
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 287
    .line 288
    .line 289
    move-result-wide v3

    .line 290
    double-to-float v3, v3

    .line 291
    new-array v4, v6, [F

    .line 292
    .line 293
    aput v0, v4, v5

    .line 294
    .line 295
    aput v1, v4, v9

    .line 296
    .line 297
    aput v3, v4, v8

    .line 298
    .line 299
    aget v0, v4, v5

    .line 300
    .line 301
    const/high16 v1, 0x43c80000    # 400.0f

    .line 302
    .line 303
    mul-float v3, v0, v1

    .line 304
    .line 305
    const v7, 0x41d90a3d    # 27.13f

    .line 306
    .line 307
    .line 308
    add-float/2addr v0, v7

    .line 309
    div-float/2addr v3, v0

    .line 310
    aget v0, v4, v9

    .line 311
    .line 312
    mul-float v10, v0, v1

    .line 313
    .line 314
    add-float/2addr v0, v7

    .line 315
    div-float/2addr v10, v0

    .line 316
    aget v0, v4, v8

    .line 317
    .line 318
    mul-float v1, v1, v0

    .line 319
    .line 320
    add-float/2addr v0, v7

    .line 321
    div-float/2addr v1, v0

    .line 322
    new-array v0, v6, [F

    .line 323
    .line 324
    aput v3, v0, v5

    .line 325
    .line 326
    aput v10, v0, v9

    .line 327
    .line 328
    aput v1, v0, v8

    .line 329
    .line 330
    const/high16 v1, 0x40000000    # 2.0f

    .line 331
    .line 332
    aget v3, v0, v5

    .line 333
    .line 334
    mul-float v3, v3, v1

    .line 335
    .line 336
    aget v1, v0, v9

    .line 337
    .line 338
    add-float/2addr v3, v1

    .line 339
    const v1, 0x3d4ccccd    # 0.05f

    .line 340
    .line 341
    .line 342
    aget v0, v0, v8

    .line 343
    .line 344
    mul-float v0, v0, v1

    .line 345
    .line 346
    add-float/2addr v0, v3

    .line 347
    mul-float v15, v0, v16

    .line 348
    .line 349
    new-instance v0, Lw3/m;

    .line 350
    .line 351
    float-to-double v3, v13

    .line 352
    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    .line 353
    .line 354
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 355
    .line 356
    .line 357
    move-result-wide v3

    .line 358
    double-to-float v1, v3

    .line 359
    move/from16 v17, v16

    .line 360
    .line 361
    move/from16 v22, v1

    .line 362
    .line 363
    move-object/from16 v20, v2

    .line 364
    .line 365
    move/from16 v21, v13

    .line 366
    .line 367
    const/high16 v19, 0x3f800000    # 1.0f

    .line 368
    .line 369
    move-object v13, v0

    .line 370
    invoke-direct/range {v13 .. v23}, Lw3/m;-><init>(FFFFFF[FFFF)V

    .line 371
    .line 372
    .line 373
    sput-object v13, Lw3/m;->k:Lw3/m;

    .line 374
    .line 375
    return-void
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lw3/m;->f:F

    .line 5
    .line 6
    iput p2, p0, Lw3/m;->a:F

    .line 7
    .line 8
    iput p3, p0, Lw3/m;->b:F

    .line 9
    .line 10
    iput p4, p0, Lw3/m;->c:F

    .line 11
    .line 12
    iput p5, p0, Lw3/m;->d:F

    .line 13
    .line 14
    iput p6, p0, Lw3/m;->e:F

    .line 15
    .line 16
    iput-object p7, p0, Lw3/m;->g:[F

    .line 17
    .line 18
    iput p8, p0, Lw3/m;->h:F

    .line 19
    .line 20
    iput p9, p0, Lw3/m;->i:F

    .line 21
    .line 22
    iput p10, p0, Lw3/m;->j:F

    .line 23
    .line 24
    return-void
.end method
