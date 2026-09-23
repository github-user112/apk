.class public final Lp5/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final g:[I


# instance fields
.field public final a:Ls5/b;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x83b

    .line 2
    .line 3
    const/16 v1, 0x707

    .line 4
    .line 5
    const/16 v2, 0xee0

    .line 6
    .line 7
    const/16 v3, 0x1dc

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lp5/a;->g:[I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ls5/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp5/a;->a:Ls5/b;

    .line 5
    .line 6
    return-void
.end method

.method public static b([Lm5/o;II)[Lm5/o;
    .locals 11

    .line 1
    int-to-float p2, p2

    .line 2
    int-to-float p1, p1

    .line 3
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    .line 5
    mul-float p1, p1, v0

    .line 6
    .line 7
    div-float/2addr p2, p1

    .line 8
    const/4 p1, 0x0

    .line 9
    aget-object v1, p0, p1

    .line 10
    .line 11
    iget v2, v1, Lm5/o;->a:F

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    aget-object v4, p0, v3

    .line 15
    .line 16
    iget v5, v4, Lm5/o;->a:F

    .line 17
    .line 18
    sub-float v6, v2, v5

    .line 19
    .line 20
    iget v1, v1, Lm5/o;->b:F

    .line 21
    .line 22
    iget v4, v4, Lm5/o;->b:F

    .line 23
    .line 24
    sub-float v7, v1, v4

    .line 25
    .line 26
    add-float/2addr v2, v5

    .line 27
    div-float/2addr v2, v0

    .line 28
    add-float/2addr v1, v4

    .line 29
    div-float/2addr v1, v0

    .line 30
    new-instance v4, Lm5/o;

    .line 31
    .line 32
    mul-float v6, v6, p2

    .line 33
    .line 34
    add-float v5, v2, v6

    .line 35
    .line 36
    mul-float v7, v7, p2

    .line 37
    .line 38
    add-float v8, v1, v7

    .line 39
    .line 40
    invoke-direct {v4, v5, v8}, Lm5/o;-><init>(FF)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lm5/o;

    .line 44
    .line 45
    sub-float/2addr v2, v6

    .line 46
    sub-float/2addr v1, v7

    .line 47
    invoke-direct {v5, v2, v1}, Lm5/o;-><init>(FF)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    aget-object v2, p0, v1

    .line 52
    .line 53
    iget v6, v2, Lm5/o;->a:F

    .line 54
    .line 55
    const/4 v7, 0x3

    .line 56
    aget-object p0, p0, v7

    .line 57
    .line 58
    iget v8, p0, Lm5/o;->a:F

    .line 59
    .line 60
    sub-float v9, v6, v8

    .line 61
    .line 62
    iget v2, v2, Lm5/o;->b:F

    .line 63
    .line 64
    iget p0, p0, Lm5/o;->b:F

    .line 65
    .line 66
    sub-float v10, v2, p0

    .line 67
    .line 68
    add-float/2addr v6, v8

    .line 69
    div-float/2addr v6, v0

    .line 70
    add-float/2addr v2, p0

    .line 71
    div-float/2addr v2, v0

    .line 72
    new-instance p0, Lm5/o;

    .line 73
    .line 74
    mul-float v9, v9, p2

    .line 75
    .line 76
    add-float v0, v6, v9

    .line 77
    .line 78
    mul-float p2, p2, v10

    .line 79
    .line 80
    add-float v8, v2, p2

    .line 81
    .line 82
    invoke-direct {p0, v0, v8}, Lm5/o;-><init>(FF)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lm5/o;

    .line 86
    .line 87
    sub-float/2addr v6, v9

    .line 88
    sub-float/2addr v2, p2

    .line 89
    invoke-direct {v0, v6, v2}, Lm5/o;-><init>(FF)V

    .line 90
    .line 91
    .line 92
    const/4 p2, 0x4

    .line 93
    new-array p2, p2, [Lm5/o;

    .line 94
    .line 95
    aput-object v4, p2, p1

    .line 96
    .line 97
    aput-object p0, p2, v1

    .line 98
    .line 99
    aput-object v5, p2, v3

    .line 100
    .line 101
    aput-object v0, p2, v7

    .line 102
    .line 103
    return-object p2
.end method


# virtual methods
.method public final a(Z)Ln5/a;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lp5/a;->a:Ls5/b;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, -0x1

    .line 9
    const/4 v6, 0x7

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    :try_start_0
    new-instance v9, Lt5/a;

    .line 13
    .line 14
    invoke-direct {v9, v1}, Lt5/a;-><init>(Ls5/b;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v9}, Lt5/a;->b()[Lm5/o;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    aget-object v10, v9, v8

    .line 22
    .line 23
    aget-object v11, v9, v7

    .line 24
    .line 25
    aget-object v12, v9, v4

    .line 26
    .line 27
    aget-object v9, v9, v3
    :try_end_0
    .catch Lm5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    iget v9, v1, Ls5/b;->a:I

    .line 31
    .line 32
    div-int/2addr v9, v4

    .line 33
    iget v10, v1, Ls5/b;->b:I

    .line 34
    .line 35
    div-int/2addr v10, v4

    .line 36
    new-instance v11, Ld6/i;

    .line 37
    .line 38
    add-int/lit8 v12, v9, 0x7

    .line 39
    .line 40
    add-int/lit8 v13, v10, -0x7

    .line 41
    .line 42
    invoke-direct {v11, v12, v13, v2}, Ld6/i;-><init>(III)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v11, v8, v7, v5}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-virtual {v11}, Ld6/i;->c()Lm5/o;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    new-instance v14, Ld6/i;

    .line 54
    .line 55
    add-int/2addr v10, v6

    .line 56
    invoke-direct {v14, v12, v10, v2}, Ld6/i;-><init>(III)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v14, v8, v7, v7}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    invoke-virtual {v12}, Ld6/i;->c()Lm5/o;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    new-instance v14, Ld6/i;

    .line 68
    .line 69
    sub-int/2addr v9, v6

    .line 70
    invoke-direct {v14, v9, v10, v2}, Ld6/i;-><init>(III)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v14, v8, v5, v7}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v10}, Ld6/i;->c()Lm5/o;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    new-instance v14, Ld6/i;

    .line 82
    .line 83
    invoke-direct {v14, v9, v13, v2}, Ld6/i;-><init>(III)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v14, v8, v5, v5}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9}, Ld6/i;->c()Lm5/o;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    move-object/from16 v38, v12

    .line 95
    .line 96
    move-object v12, v10

    .line 97
    move-object v10, v11

    .line 98
    move-object/from16 v11, v38

    .line 99
    .line 100
    :goto_0
    iget v13, v10, Lm5/o;->a:F

    .line 101
    .line 102
    iget v14, v9, Lm5/o;->a:F

    .line 103
    .line 104
    add-float/2addr v13, v14

    .line 105
    iget v14, v11, Lm5/o;->a:F

    .line 106
    .line 107
    add-float/2addr v13, v14

    .line 108
    iget v14, v12, Lm5/o;->a:F

    .line 109
    .line 110
    add-float/2addr v13, v14

    .line 111
    const/high16 v14, 0x40800000    # 4.0f

    .line 112
    .line 113
    div-float/2addr v13, v14

    .line 114
    invoke-static {v13}, Lp4/e;->z(F)I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    iget v10, v10, Lm5/o;->b:F

    .line 119
    .line 120
    iget v9, v9, Lm5/o;->b:F

    .line 121
    .line 122
    add-float/2addr v10, v9

    .line 123
    iget v9, v11, Lm5/o;->b:F

    .line 124
    .line 125
    add-float/2addr v10, v9

    .line 126
    iget v9, v12, Lm5/o;->b:F

    .line 127
    .line 128
    add-float/2addr v10, v9

    .line 129
    div-float/2addr v10, v14

    .line 130
    invoke-static {v10}, Lp4/e;->z(F)I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    const/16 v10, 0xf

    .line 135
    .line 136
    :try_start_1
    new-instance v11, Lt5/a;

    .line 137
    .line 138
    invoke-direct {v11, v1, v10, v13, v9}, Lt5/a;-><init>(Ls5/b;III)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11}, Lt5/a;->b()[Lm5/o;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    aget-object v12, v11, v8

    .line 146
    .line 147
    aget-object v15, v11, v7

    .line 148
    .line 149
    aget-object v16, v11, v4

    .line 150
    .line 151
    aget-object v9, v11, v3
    :try_end_1
    .catch Lm5/i; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    move-object/from16 v3, v16

    .line 154
    .line 155
    const/16 v16, 0x3

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_1
    new-instance v11, Ld6/i;

    .line 159
    .line 160
    add-int/lit8 v12, v13, 0x7

    .line 161
    .line 162
    add-int/lit8 v15, v9, -0x7

    .line 163
    .line 164
    invoke-direct {v11, v12, v15, v2}, Ld6/i;-><init>(III)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v11, v8, v7, v5}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v11}, Ld6/i;->c()Lm5/o;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    const/16 v16, 0x3

    .line 176
    .line 177
    new-instance v3, Ld6/i;

    .line 178
    .line 179
    add-int/2addr v9, v6

    .line 180
    invoke-direct {v3, v12, v9, v2}, Ld6/i;-><init>(III)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v3, v8, v7, v7}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3}, Ld6/i;->c()Lm5/o;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    new-instance v12, Ld6/i;

    .line 192
    .line 193
    sub-int/2addr v13, v6

    .line 194
    invoke-direct {v12, v13, v9, v2}, Ld6/i;-><init>(III)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v12, v8, v5, v7}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v9}, Ld6/i;->c()Lm5/o;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    new-instance v12, Ld6/i;

    .line 206
    .line 207
    invoke-direct {v12, v13, v15, v2}, Ld6/i;-><init>(III)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v12, v8, v5, v5}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-virtual {v12}, Ld6/i;->c()Lm5/o;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    move-object v15, v3

    .line 219
    move-object v3, v9

    .line 220
    move-object v9, v12

    .line 221
    move-object v12, v11

    .line 222
    :goto_1
    iget v11, v12, Lm5/o;->a:F

    .line 223
    .line 224
    iget v13, v9, Lm5/o;->a:F

    .line 225
    .line 226
    add-float/2addr v11, v13

    .line 227
    iget v13, v15, Lm5/o;->a:F

    .line 228
    .line 229
    add-float/2addr v11, v13

    .line 230
    iget v13, v3, Lm5/o;->a:F

    .line 231
    .line 232
    add-float/2addr v11, v13

    .line 233
    div-float/2addr v11, v14

    .line 234
    invoke-static {v11}, Lp4/e;->z(F)I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    iget v12, v12, Lm5/o;->b:F

    .line 239
    .line 240
    iget v9, v9, Lm5/o;->b:F

    .line 241
    .line 242
    add-float/2addr v12, v9

    .line 243
    iget v9, v15, Lm5/o;->b:F

    .line 244
    .line 245
    add-float/2addr v12, v9

    .line 246
    iget v3, v3, Lm5/o;->b:F

    .line 247
    .line 248
    add-float/2addr v12, v3

    .line 249
    div-float/2addr v12, v14

    .line 250
    invoke-static {v12}, Lp4/e;->z(F)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    new-instance v9, Ld6/i;

    .line 255
    .line 256
    invoke-direct {v9, v11, v3, v2}, Ld6/i;-><init>(III)V

    .line 257
    .line 258
    .line 259
    iput v7, v0, Lp5/a;->e:I

    .line 260
    .line 261
    move-object v3, v9

    .line 262
    move-object v11, v3

    .line 263
    move-object v12, v11

    .line 264
    const/4 v13, 0x1

    .line 265
    :goto_2
    iget v14, v12, Ld6/i;->c:I

    .line 266
    .line 267
    iget v15, v12, Ld6/i;->b:I

    .line 268
    .line 269
    const/16 v17, 0x0

    .line 270
    .line 271
    iget v8, v9, Ld6/i;->c:I

    .line 272
    .line 273
    const/16 v18, 0xf

    .line 274
    .line 275
    iget v10, v9, Ld6/i;->b:I

    .line 276
    .line 277
    iget v6, v0, Lp5/a;->e:I

    .line 278
    .line 279
    const/16 v2, 0x9

    .line 280
    .line 281
    if-ge v6, v2, :cond_4

    .line 282
    .line 283
    invoke-virtual {v0, v9, v13, v7, v5}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    iget v2, v9, Ld6/i;->c:I

    .line 288
    .line 289
    iget v6, v9, Ld6/i;->b:I

    .line 290
    .line 291
    invoke-virtual {v0, v3, v13, v7, v7}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    move-object/from16 v22, v9

    .line 296
    .line 297
    invoke-virtual {v0, v11, v13, v5, v7}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-virtual {v0, v12, v13, v5, v5}, Lp5/a;->e(Ld6/i;ZII)Ld6/i;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    iget v5, v12, Ld6/i;->c:I

    .line 306
    .line 307
    const/16 v24, 0x1

    .line 308
    .line 309
    iget v7, v12, Ld6/i;->b:I

    .line 310
    .line 311
    move-object/from16 v25, v12

    .line 312
    .line 313
    iget v12, v0, Lp5/a;->e:I

    .line 314
    .line 315
    move/from16 v26, v13

    .line 316
    .line 317
    const/4 v13, 0x2

    .line 318
    if-le v12, v13, :cond_3

    .line 319
    .line 320
    invoke-static {v7, v5, v6, v2}, Lp4/e;->j(IIII)F

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    const/16 v21, 0x2

    .line 325
    .line 326
    iget v13, v0, Lp5/a;->e:I

    .line 327
    .line 328
    int-to-float v13, v13

    .line 329
    mul-float v12, v12, v13

    .line 330
    .line 331
    invoke-static {v15, v14, v10, v8}, Lp4/e;->j(IIII)F

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    move/from16 v27, v2

    .line 336
    .line 337
    iget v2, v0, Lp5/a;->e:I

    .line 338
    .line 339
    add-int/lit8 v2, v2, 0x2

    .line 340
    .line 341
    int-to-float v2, v2

    .line 342
    mul-float v13, v13, v2

    .line 343
    .line 344
    div-float/2addr v12, v13

    .line 345
    float-to-double v12, v12

    .line 346
    const-wide/high16 v28, 0x3fe8000000000000L    # 0.75

    .line 347
    .line 348
    cmpg-double v2, v12, v28

    .line 349
    .line 350
    if-ltz v2, :cond_5

    .line 351
    .line 352
    const-wide/high16 v28, 0x3ff4000000000000L    # 1.25

    .line 353
    .line 354
    cmpl-double v2, v12, v28

    .line 355
    .line 356
    if-gtz v2, :cond_5

    .line 357
    .line 358
    new-instance v2, Ld6/i;

    .line 359
    .line 360
    add-int/lit8 v6, v6, -0x3

    .line 361
    .line 362
    add-int/lit8 v12, v27, 0x3

    .line 363
    .line 364
    const/4 v13, 0x4

    .line 365
    invoke-direct {v2, v6, v12, v13}, Ld6/i;-><init>(III)V

    .line 366
    .line 367
    .line 368
    new-instance v6, Ld6/i;

    .line 369
    .line 370
    iget v12, v4, Ld6/i;->b:I

    .line 371
    .line 372
    add-int/lit8 v12, v12, -0x3

    .line 373
    .line 374
    move/from16 v20, v5

    .line 375
    .line 376
    iget v5, v4, Ld6/i;->c:I

    .line 377
    .line 378
    add-int/lit8 v5, v5, -0x3

    .line 379
    .line 380
    invoke-direct {v6, v12, v5, v13}, Ld6/i;-><init>(III)V

    .line 381
    .line 382
    .line 383
    new-instance v5, Ld6/i;

    .line 384
    .line 385
    iget v12, v9, Ld6/i;->b:I

    .line 386
    .line 387
    add-int/lit8 v12, v12, 0x3

    .line 388
    .line 389
    move-object/from16 v27, v4

    .line 390
    .line 391
    iget v4, v9, Ld6/i;->c:I

    .line 392
    .line 393
    add-int/lit8 v4, v4, -0x3

    .line 394
    .line 395
    invoke-direct {v5, v12, v4, v13}, Ld6/i;-><init>(III)V

    .line 396
    .line 397
    .line 398
    new-instance v4, Ld6/i;

    .line 399
    .line 400
    add-int/lit8 v7, v7, 0x3

    .line 401
    .line 402
    add-int/lit8 v12, v20, 0x3

    .line 403
    .line 404
    invoke-direct {v4, v7, v12, v13}, Ld6/i;-><init>(III)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v4, v2}, Lp5/a;->c(Ld6/i;Ld6/i;)I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    if-nez v7, :cond_0

    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_0
    invoke-virtual {v0, v2, v6}, Lp5/a;->c(Ld6/i;Ld6/i;)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eq v2, v7, :cond_1

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_1
    invoke-virtual {v0, v6, v5}, Lp5/a;->c(Ld6/i;Ld6/i;)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eq v2, v7, :cond_2

    .line 426
    .line 427
    goto :goto_4

    .line 428
    :cond_2
    invoke-virtual {v0, v5, v4}, Lp5/a;->c(Ld6/i;Ld6/i;)I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-ne v2, v7, :cond_5

    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_3
    move-object/from16 v27, v4

    .line 436
    .line 437
    :goto_3
    xor-int/lit8 v13, v26, 0x1

    .line 438
    .line 439
    iget v2, v0, Lp5/a;->e:I

    .line 440
    .line 441
    add-int/lit8 v2, v2, 0x1

    .line 442
    .line 443
    iput v2, v0, Lp5/a;->e:I

    .line 444
    .line 445
    move-object v11, v9

    .line 446
    move-object/from16 v9, v22

    .line 447
    .line 448
    move-object/from16 v12, v25

    .line 449
    .line 450
    move-object/from16 v3, v27

    .line 451
    .line 452
    const/4 v2, 0x4

    .line 453
    const/4 v4, 0x2

    .line 454
    const/4 v5, -0x1

    .line 455
    const/4 v6, 0x7

    .line 456
    const/4 v7, 0x1

    .line 457
    const/4 v8, 0x0

    .line 458
    const/16 v10, 0xf

    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :cond_4
    const/16 v24, 0x1

    .line 463
    .line 464
    :cond_5
    :goto_4
    iget v2, v0, Lp5/a;->e:I

    .line 465
    .line 466
    const/4 v4, 0x5

    .line 467
    if-eq v2, v4, :cond_7

    .line 468
    .line 469
    const/4 v5, 0x7

    .line 470
    if-ne v2, v5, :cond_6

    .line 471
    .line 472
    goto :goto_5

    .line 473
    :cond_6
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 474
    .line 475
    throw v1

    .line 476
    :cond_7
    :goto_5
    if-ne v2, v4, :cond_8

    .line 477
    .line 478
    const/4 v4, 0x1

    .line 479
    goto :goto_6

    .line 480
    :cond_8
    const/4 v4, 0x0

    .line 481
    :goto_6
    iput-boolean v4, v0, Lp5/a;->b:Z

    .line 482
    .line 483
    new-instance v4, Lm5/o;

    .line 484
    .line 485
    int-to-float v5, v10

    .line 486
    const/high16 v6, 0x3f000000    # 0.5f

    .line 487
    .line 488
    add-float/2addr v5, v6

    .line 489
    int-to-float v7, v8

    .line 490
    sub-float/2addr v7, v6

    .line 491
    invoke-direct {v4, v5, v7}, Lm5/o;-><init>(FF)V

    .line 492
    .line 493
    .line 494
    new-instance v5, Lm5/o;

    .line 495
    .line 496
    iget v7, v3, Ld6/i;->b:I

    .line 497
    .line 498
    int-to-float v7, v7

    .line 499
    add-float/2addr v7, v6

    .line 500
    iget v3, v3, Ld6/i;->c:I

    .line 501
    .line 502
    int-to-float v3, v3

    .line 503
    add-float/2addr v3, v6

    .line 504
    invoke-direct {v5, v7, v3}, Lm5/o;-><init>(FF)V

    .line 505
    .line 506
    .line 507
    new-instance v3, Lm5/o;

    .line 508
    .line 509
    iget v7, v11, Ld6/i;->b:I

    .line 510
    .line 511
    int-to-float v7, v7

    .line 512
    sub-float/2addr v7, v6

    .line 513
    iget v8, v11, Ld6/i;->c:I

    .line 514
    .line 515
    int-to-float v8, v8

    .line 516
    add-float/2addr v8, v6

    .line 517
    invoke-direct {v3, v7, v8}, Lm5/o;-><init>(FF)V

    .line 518
    .line 519
    .line 520
    new-instance v7, Lm5/o;

    .line 521
    .line 522
    int-to-float v8, v15

    .line 523
    sub-float/2addr v8, v6

    .line 524
    int-to-float v9, v14

    .line 525
    sub-float/2addr v9, v6

    .line 526
    invoke-direct {v7, v8, v9}, Lm5/o;-><init>(FF)V

    .line 527
    .line 528
    .line 529
    const/4 v13, 0x4

    .line 530
    new-array v6, v13, [Lm5/o;

    .line 531
    .line 532
    aput-object v4, v6, v17

    .line 533
    .line 534
    aput-object v5, v6, v24

    .line 535
    .line 536
    const/16 v21, 0x2

    .line 537
    .line 538
    aput-object v3, v6, v21

    .line 539
    .line 540
    aput-object v7, v6, v16

    .line 541
    .line 542
    mul-int/lit8 v2, v2, 0x2

    .line 543
    .line 544
    add-int/lit8 v3, v2, -0x3

    .line 545
    .line 546
    invoke-static {v6, v3, v2}, Lp5/a;->b([Lm5/o;II)[Lm5/o;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    if-eqz p1, :cond_9

    .line 551
    .line 552
    aget-object v3, v2, v17

    .line 553
    .line 554
    aget-object v4, v2, v21

    .line 555
    .line 556
    aput-object v4, v2, v17

    .line 557
    .line 558
    aput-object v3, v2, v21

    .line 559
    .line 560
    :cond_9
    aget-object v3, v2, v17

    .line 561
    .line 562
    invoke-virtual {v0, v3}, Lp5/a;->g(Lm5/o;)Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eqz v3, :cond_13

    .line 567
    .line 568
    aget-object v3, v2, v24

    .line 569
    .line 570
    invoke-virtual {v0, v3}, Lp5/a;->g(Lm5/o;)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-eqz v3, :cond_13

    .line 575
    .line 576
    aget-object v3, v2, v21

    .line 577
    .line 578
    invoke-virtual {v0, v3}, Lp5/a;->g(Lm5/o;)Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_13

    .line 583
    .line 584
    aget-object v3, v2, v16

    .line 585
    .line 586
    invoke-virtual {v0, v3}, Lp5/a;->g(Lm5/o;)Z

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    if-eqz v3, :cond_13

    .line 591
    .line 592
    iget v3, v0, Lp5/a;->e:I

    .line 593
    .line 594
    mul-int/lit8 v3, v3, 0x2

    .line 595
    .line 596
    aget-object v4, v2, v17

    .line 597
    .line 598
    aget-object v5, v2, v24

    .line 599
    .line 600
    invoke-virtual {v0, v4, v5, v3}, Lp5/a;->h(Lm5/o;Lm5/o;I)I

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    aget-object v5, v2, v24

    .line 605
    .line 606
    aget-object v6, v2, v21

    .line 607
    .line 608
    invoke-virtual {v0, v5, v6, v3}, Lp5/a;->h(Lm5/o;Lm5/o;I)I

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    aget-object v6, v2, v21

    .line 613
    .line 614
    aget-object v7, v2, v16

    .line 615
    .line 616
    invoke-virtual {v0, v6, v7, v3}, Lp5/a;->h(Lm5/o;Lm5/o;I)I

    .line 617
    .line 618
    .line 619
    move-result v6

    .line 620
    aget-object v7, v2, v16

    .line 621
    .line 622
    aget-object v8, v2, v17

    .line 623
    .line 624
    invoke-virtual {v0, v7, v8, v3}, Lp5/a;->h(Lm5/o;Lm5/o;I)I

    .line 625
    .line 626
    .line 627
    move-result v7

    .line 628
    filled-new-array {v4, v5, v6, v7}, [I

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    const/4 v5, 0x0

    .line 633
    const/4 v6, 0x0

    .line 634
    :goto_7
    const/4 v13, 0x4

    .line 635
    if-ge v5, v13, :cond_a

    .line 636
    .line 637
    aget v7, v4, v5

    .line 638
    .line 639
    add-int/lit8 v8, v3, -0x2

    .line 640
    .line 641
    shr-int v8, v7, v8

    .line 642
    .line 643
    shl-int/lit8 v8, v8, 0x1

    .line 644
    .line 645
    and-int/lit8 v7, v7, 0x1

    .line 646
    .line 647
    add-int/2addr v8, v7

    .line 648
    shl-int/lit8 v6, v6, 0x3

    .line 649
    .line 650
    add-int/2addr v6, v8

    .line 651
    add-int/lit8 v5, v5, 0x1

    .line 652
    .line 653
    const/16 v21, 0x2

    .line 654
    .line 655
    goto :goto_7

    .line 656
    :cond_a
    and-int/lit8 v3, v6, 0x1

    .line 657
    .line 658
    shl-int/lit8 v3, v3, 0xb

    .line 659
    .line 660
    shr-int/lit8 v5, v6, 0x1

    .line 661
    .line 662
    add-int/2addr v3, v5

    .line 663
    const/4 v5, 0x0

    .line 664
    :goto_8
    const/4 v13, 0x4

    .line 665
    if-ge v5, v13, :cond_12

    .line 666
    .line 667
    sget-object v6, Lp5/a;->g:[I

    .line 668
    .line 669
    aget v6, v6, v5

    .line 670
    .line 671
    xor-int/2addr v6, v3

    .line 672
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    .line 673
    .line 674
    .line 675
    move-result v6

    .line 676
    const/4 v7, 0x2

    .line 677
    if-gt v6, v7, :cond_11

    .line 678
    .line 679
    iput v5, v0, Lp5/a;->f:I

    .line 680
    .line 681
    const-wide/16 v5, 0x0

    .line 682
    .line 683
    const/4 v3, 0x0

    .line 684
    :goto_9
    const/16 v7, 0xa

    .line 685
    .line 686
    if-ge v3, v13, :cond_c

    .line 687
    .line 688
    iget v8, v0, Lp5/a;->f:I

    .line 689
    .line 690
    add-int/2addr v8, v3

    .line 691
    rem-int/2addr v8, v13

    .line 692
    aget v8, v4, v8

    .line 693
    .line 694
    iget-boolean v9, v0, Lp5/a;->b:Z

    .line 695
    .line 696
    if-eqz v9, :cond_b

    .line 697
    .line 698
    const/16 v19, 0x7

    .line 699
    .line 700
    shl-long v5, v5, v19

    .line 701
    .line 702
    shr-int/lit8 v7, v8, 0x1

    .line 703
    .line 704
    and-int/lit8 v7, v7, 0x7f

    .line 705
    .line 706
    :goto_a
    int-to-long v7, v7

    .line 707
    add-long/2addr v5, v7

    .line 708
    goto :goto_b

    .line 709
    :cond_b
    const/16 v19, 0x7

    .line 710
    .line 711
    shl-long/2addr v5, v7

    .line 712
    shr-int/lit8 v7, v8, 0x2

    .line 713
    .line 714
    and-int/lit16 v7, v7, 0x3e0

    .line 715
    .line 716
    shr-int/lit8 v8, v8, 0x1

    .line 717
    .line 718
    and-int/lit8 v8, v8, 0x1f

    .line 719
    .line 720
    add-int/2addr v7, v8

    .line 721
    goto :goto_a

    .line 722
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 723
    .line 724
    const/4 v13, 0x4

    .line 725
    goto :goto_9

    .line 726
    :cond_c
    const/16 v19, 0x7

    .line 727
    .line 728
    iget-boolean v3, v0, Lp5/a;->b:Z

    .line 729
    .line 730
    if-eqz v3, :cond_d

    .line 731
    .line 732
    const/4 v7, 0x7

    .line 733
    const/4 v13, 0x2

    .line 734
    goto :goto_c

    .line 735
    :cond_d
    const/4 v13, 0x4

    .line 736
    :goto_c
    sub-int v3, v7, v13

    .line 737
    .line 738
    new-array v4, v7, [I

    .line 739
    .line 740
    add-int/lit8 v7, v7, -0x1

    .line 741
    .line 742
    :goto_d
    if-ltz v7, :cond_e

    .line 743
    .line 744
    long-to-int v8, v5

    .line 745
    and-int/lit8 v8, v8, 0xf

    .line 746
    .line 747
    aput v8, v4, v7

    .line 748
    .line 749
    const/16 v20, 0x4

    .line 750
    .line 751
    shr-long v5, v5, v20

    .line 752
    .line 753
    add-int/lit8 v7, v7, -0x1

    .line 754
    .line 755
    goto :goto_d

    .line 756
    :cond_e
    :try_start_2
    new-instance v5, Lkb/a;

    .line 757
    .line 758
    sget-object v6, Lu5/a;->k:Lu5/a;

    .line 759
    .line 760
    const/16 v7, 0x18

    .line 761
    .line 762
    invoke-direct {v5, v7, v6}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v5, v4, v3}, Lkb/a;->Q([II)V
    :try_end_2
    .catch Lu5/c; {:try_start_2 .. :try_end_2} :catch_2

    .line 766
    .line 767
    .line 768
    const/4 v3, 0x0

    .line 769
    const/4 v8, 0x0

    .line 770
    :goto_e
    if-ge v8, v13, :cond_f

    .line 771
    .line 772
    shl-int/lit8 v3, v3, 0x4

    .line 773
    .line 774
    aget v5, v4, v8

    .line 775
    .line 776
    add-int/2addr v3, v5

    .line 777
    add-int/lit8 v8, v8, 0x1

    .line 778
    .line 779
    goto :goto_e

    .line 780
    :cond_f
    iget-boolean v4, v0, Lp5/a;->b:Z

    .line 781
    .line 782
    if-eqz v4, :cond_10

    .line 783
    .line 784
    shr-int/lit8 v4, v3, 0x6

    .line 785
    .line 786
    add-int/lit8 v4, v4, 0x1

    .line 787
    .line 788
    iput v4, v0, Lp5/a;->c:I

    .line 789
    .line 790
    and-int/lit8 v3, v3, 0x3f

    .line 791
    .line 792
    add-int/lit8 v3, v3, 0x1

    .line 793
    .line 794
    iput v3, v0, Lp5/a;->d:I

    .line 795
    .line 796
    goto :goto_f

    .line 797
    :cond_10
    shr-int/lit8 v4, v3, 0xb

    .line 798
    .line 799
    add-int/lit8 v4, v4, 0x1

    .line 800
    .line 801
    iput v4, v0, Lp5/a;->c:I

    .line 802
    .line 803
    and-int/lit16 v3, v3, 0x7ff

    .line 804
    .line 805
    add-int/lit8 v3, v3, 0x1

    .line 806
    .line 807
    iput v3, v0, Lp5/a;->d:I

    .line 808
    .line 809
    :goto_f
    iget v3, v0, Lp5/a;->f:I

    .line 810
    .line 811
    rem-int/lit8 v4, v3, 0x4

    .line 812
    .line 813
    aget-object v4, v2, v4

    .line 814
    .line 815
    add-int/lit8 v5, v3, 0x1

    .line 816
    .line 817
    const/16 v20, 0x4

    .line 818
    .line 819
    rem-int/lit8 v5, v5, 0x4

    .line 820
    .line 821
    aget-object v5, v2, v5

    .line 822
    .line 823
    add-int/lit8 v6, v3, 0x2

    .line 824
    .line 825
    rem-int/lit8 v6, v6, 0x4

    .line 826
    .line 827
    aget-object v6, v2, v6

    .line 828
    .line 829
    add-int/lit8 v3, v3, 0x3

    .line 830
    .line 831
    rem-int/lit8 v3, v3, 0x4

    .line 832
    .line 833
    aget-object v3, v2, v3

    .line 834
    .line 835
    invoke-virtual {v0}, Lp5/a;->d()I

    .line 836
    .line 837
    .line 838
    move-result v7

    .line 839
    int-to-float v8, v7

    .line 840
    const/high16 v9, 0x40000000    # 2.0f

    .line 841
    .line 842
    div-float/2addr v8, v9

    .line 843
    iget v9, v0, Lp5/a;->e:I

    .line 844
    .line 845
    int-to-float v9, v9

    .line 846
    sub-float v22, v8, v9

    .line 847
    .line 848
    add-float v24, v8, v9

    .line 849
    .line 850
    iget v8, v4, Lm5/o;->a:F

    .line 851
    .line 852
    iget v4, v4, Lm5/o;->b:F

    .line 853
    .line 854
    iget v9, v5, Lm5/o;->a:F

    .line 855
    .line 856
    iget v5, v5, Lm5/o;->b:F

    .line 857
    .line 858
    iget v10, v6, Lm5/o;->a:F

    .line 859
    .line 860
    iget v6, v6, Lm5/o;->b:F

    .line 861
    .line 862
    iget v11, v3, Lm5/o;->a:F

    .line 863
    .line 864
    iget v3, v3, Lm5/o;->b:F

    .line 865
    .line 866
    move/from16 v23, v22

    .line 867
    .line 868
    move/from16 v25, v22

    .line 869
    .line 870
    move/from16 v26, v24

    .line 871
    .line 872
    move/from16 v27, v24

    .line 873
    .line 874
    move/from16 v28, v22

    .line 875
    .line 876
    move/from16 v29, v24

    .line 877
    .line 878
    move/from16 v37, v3

    .line 879
    .line 880
    move/from16 v31, v4

    .line 881
    .line 882
    move/from16 v33, v5

    .line 883
    .line 884
    move/from16 v35, v6

    .line 885
    .line 886
    move/from16 v30, v8

    .line 887
    .line 888
    move/from16 v32, v9

    .line 889
    .line 890
    move/from16 v34, v10

    .line 891
    .line 892
    move/from16 v36, v11

    .line 893
    .line 894
    invoke-static/range {v22 .. v37}, Ls5/f;->a(FFFFFFFFFFFFFFFF)Ls5/f;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    invoke-static {v1, v7, v7, v3}, Lp9/l;->s(Ls5/b;IILs5/f;)Ls5/b;

    .line 899
    .line 900
    .line 901
    move-result-object v9

    .line 902
    iget v1, v0, Lp5/a;->e:I

    .line 903
    .line 904
    const/16 v21, 0x2

    .line 905
    .line 906
    mul-int/lit8 v1, v1, 0x2

    .line 907
    .line 908
    invoke-virtual {v0}, Lp5/a;->d()I

    .line 909
    .line 910
    .line 911
    move-result v3

    .line 912
    invoke-static {v2, v1, v3}, Lp5/a;->b([Lm5/o;II)[Lm5/o;

    .line 913
    .line 914
    .line 915
    move-result-object v10

    .line 916
    new-instance v8, Ln5/a;

    .line 917
    .line 918
    iget-boolean v11, v0, Lp5/a;->b:Z

    .line 919
    .line 920
    iget v12, v0, Lp5/a;->d:I

    .line 921
    .line 922
    iget v13, v0, Lp5/a;->c:I

    .line 923
    .line 924
    invoke-direct/range {v8 .. v13}, Ln5/a;-><init>(Ls5/b;[Lm5/o;ZII)V

    .line 925
    .line 926
    .line 927
    return-object v8

    .line 928
    :catch_2
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 929
    .line 930
    throw v1

    .line 931
    :cond_11
    const/16 v19, 0x7

    .line 932
    .line 933
    const/16 v20, 0x4

    .line 934
    .line 935
    const/16 v21, 0x2

    .line 936
    .line 937
    add-int/lit8 v5, v5, 0x1

    .line 938
    .line 939
    goto/16 :goto_8

    .line 940
    .line 941
    :cond_12
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 942
    .line 943
    throw v1

    .line 944
    :cond_13
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 945
    .line 946
    throw v1
.end method

.method public final c(Ld6/i;Ld6/i;)I
    .locals 11

    .line 1
    iget v0, p1, Ld6/i;->b:I

    .line 2
    .line 3
    iget p1, p1, Ld6/i;->c:I

    .line 4
    .line 5
    iget v1, p2, Ld6/i;->b:I

    .line 6
    .line 7
    iget p2, p2, Ld6/i;->c:I

    .line 8
    .line 9
    invoke-static {v0, p1, v1, p2}, Lp4/e;->j(IIII)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v0

    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v1, v2

    .line 16
    sub-int/2addr p2, p1

    .line 17
    int-to-float p2, p2

    .line 18
    div-float/2addr p2, v2

    .line 19
    int-to-float v3, v0

    .line 20
    int-to-float v4, p1

    .line 21
    iget-object v5, p0, Lp5/a;->a:Ls5/b;

    .line 22
    .line 23
    invoke-virtual {v5, v0, p1}, Ls5/b;->b(II)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-double v6, v2

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    double-to-int v0, v6

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    :goto_0
    if-ge v7, v0, :cond_1

    .line 37
    .line 38
    add-float/2addr v3, v1

    .line 39
    add-float/2addr v4, p2

    .line 40
    invoke-static {v3}, Lp4/e;->z(F)I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    invoke-static {v4}, Lp4/e;->z(F)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    invoke-virtual {v5, v9, v10}, Ls5/b;->b(II)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eq v9, p1, :cond_0

    .line 53
    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 55
    .line 56
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    int-to-float p2, v8

    .line 60
    div-float/2addr p2, v2

    .line 61
    const v0, 0x3dcccccd    # 0.1f

    .line 62
    .line 63
    .line 64
    cmpl-float v1, p2, v0

    .line 65
    .line 66
    if-lez v1, :cond_2

    .line 67
    .line 68
    const v1, 0x3f666666    # 0.9f

    .line 69
    .line 70
    .line 71
    cmpg-float v1, p2, v1

    .line 72
    .line 73
    if-gez v1, :cond_2

    .line 74
    .line 75
    return v6

    .line 76
    :cond_2
    const/4 v1, 0x1

    .line 77
    cmpg-float p2, p2, v0

    .line 78
    .line 79
    if-gtz p2, :cond_3

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    :cond_3
    if-ne v6, p1, :cond_4

    .line 83
    .line 84
    return v1

    .line 85
    :cond_4
    const/4 p1, -0x1

    .line 86
    return p1
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lp5/a;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lp5/a;->c:I

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x4

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0xb

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lp5/a;->c:I

    .line 14
    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x4

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0xf

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    mul-int/lit8 v2, v0, 0x4

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    div-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    add-int/2addr v0, v2

    .line 32
    add-int/lit8 v0, v0, 0xf

    .line 33
    .line 34
    return v0
.end method

.method public final e(Ld6/i;ZII)Ld6/i;
    .locals 3

    .line 1
    iget v0, p1, Ld6/i;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p3

    .line 4
    iget p1, p1, Ld6/i;->c:I

    .line 5
    .line 6
    :goto_0
    add-int/2addr p1, p4

    .line 7
    invoke-virtual {p0, v0, p1}, Lp5/a;->f(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lp5/a;->a:Ls5/b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0, p1}, Ls5/b;->b(II)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, p2, :cond_0

    .line 20
    .line 21
    add-int/2addr v0, p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int/2addr v0, p3

    .line 24
    sub-int/2addr p1, p4

    .line 25
    :goto_1
    invoke-virtual {p0, v0, p1}, Lp5/a;->f(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2, v0, p1}, Ls5/b;->b(II)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, p2, :cond_1

    .line 36
    .line 37
    add-int/2addr v0, p3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr v0, p3

    .line 40
    :goto_2
    invoke-virtual {p0, v0, p1}, Lp5/a;->f(II)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2, v0, p1}, Ls5/b;->b(II)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-ne p3, p2, :cond_2

    .line 51
    .line 52
    add-int/2addr p1, p4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    sub-int/2addr p1, p4

    .line 55
    new-instance p2, Ld6/i;

    .line 56
    .line 57
    const/4 p3, 0x4

    .line 58
    invoke-direct {p2, v0, p1, p3}, Ld6/i;-><init>(III)V

    .line 59
    .line 60
    .line 61
    return-object p2
.end method

.method public final f(II)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lp5/a;->a:Ls5/b;

    .line 4
    .line 5
    iget v1, v0, Ls5/b;->a:I

    .line 6
    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    if-lez p2, :cond_0

    .line 10
    .line 11
    iget p1, v0, Ls5/b;->b:I

    .line 12
    .line 13
    if-ge p2, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final g(Lm5/o;)Z
    .locals 1

    .line 1
    iget v0, p1, Lm5/o;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Lp4/e;->z(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget p1, p1, Lm5/o;->b:F

    .line 8
    .line 9
    invoke-static {p1}, Lp4/e;->z(F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lp5/a;->f(II)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final h(Lm5/o;Lm5/o;I)I
    .locals 7

    .line 1
    iget v0, p1, Lm5/o;->a:F

    .line 2
    .line 3
    iget v1, p1, Lm5/o;->b:F

    .line 4
    .line 5
    iget v2, p2, Lm5/o;->a:F

    .line 6
    .line 7
    iget v3, p2, Lm5/o;->b:F

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lp4/e;->i(FFFF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v2, p3

    .line 14
    div-float v2, v0, v2

    .line 15
    .line 16
    iget p1, p1, Lm5/o;->a:F

    .line 17
    .line 18
    iget p2, p2, Lm5/o;->a:F

    .line 19
    .line 20
    sub-float/2addr p2, p1

    .line 21
    mul-float p2, p2, v2

    .line 22
    .line 23
    div-float/2addr p2, v0

    .line 24
    sub-float/2addr v3, v1

    .line 25
    mul-float v3, v3, v2

    .line 26
    .line 27
    div-float/2addr v3, v0

    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v0, p3, :cond_1

    .line 31
    .line 32
    int-to-float v4, v0

    .line 33
    mul-float v5, v4, p2

    .line 34
    .line 35
    add-float/2addr v5, p1

    .line 36
    invoke-static {v5}, Lp4/e;->z(F)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    mul-float v4, v4, v3

    .line 41
    .line 42
    add-float/2addr v4, v1

    .line 43
    invoke-static {v4}, Lp4/e;->z(F)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v6, p0, Lp5/a;->a:Ls5/b;

    .line 48
    .line 49
    invoke-virtual {v6, v5, v4}, Ls5/b;->b(II)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    sub-int v4, p3, v0

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    sub-int/2addr v4, v5

    .line 59
    shl-int v4, v5, v4

    .line 60
    .line 61
    or-int/2addr v2, v4

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v2
.end method
