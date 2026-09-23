.class public abstract Lyb/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lyb/f;->a:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lyb/f;->b:[I

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    const/4 v1, 0x6

    .line 19
    filled-new-array {v0, v1}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lyb/f;->c:[I

    .line 24
    .line 25
    new-array v0, v1, [I

    .line 26
    .line 27
    fill-array-data v0, :array_2

    .line 28
    .line 29
    .line 30
    sput-object v0, Lyb/f;->d:[I

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
        0xa
        0xb
        0xd
        0xe
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
    .end array-data
.end method

.method public static final a(Ljava/lang/String;)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_17

    .line 8
    .line 9
    sget v2, Lyb/a;->d:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/16 v4, 0x2b

    .line 17
    .line 18
    const/16 v5, 0x2d

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-eq v3, v4, :cond_0

    .line 22
    .line 23
    if-eq v3, v5, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x1

    .line 28
    :goto_0
    if-lez v3, :cond_1

    .line 29
    .line 30
    invoke-static {v5, v0}, Lxb/i;->Y(CLjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_1
    if-le v1, v3, :cond_16

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/16 v7, 0x50

    .line 46
    .line 47
    if-ne v5, v7, :cond_15

    .line 48
    .line 49
    add-int/2addr v3, v6

    .line 50
    if-eq v3, v1, :cond_14

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    :goto_2
    if-ge v3, v1, :cond_12

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const/16 v11, 0x54

    .line 63
    .line 64
    if-ne v10, v11, :cond_3

    .line 65
    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    if-eq v3, v1, :cond_2

    .line 71
    .line 72
    const/4 v9, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_3
    move v10, v3

    .line 81
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    if-ge v10, v11, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    const/16 v12, 0x30

    .line 92
    .line 93
    if-gt v12, v11, :cond_4

    .line 94
    .line 95
    const/16 v12, 0x3a

    .line 96
    .line 97
    if-ge v11, v12, :cond_4

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    const-string v12, "+-."

    .line 101
    .line 102
    invoke-static {v12, v11}, Lxb/i;->H(Ljava/lang/CharSequence;C)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_5

    .line 107
    .line 108
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    const-string v11, "substring(...)"

    .line 116
    .line 117
    invoke-static {v10, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    if-eqz v12, :cond_11

    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    add-int/2addr v12, v3

    .line 131
    if-ltz v12, :cond_10

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ge v12, v3, :cond_10

    .line 138
    .line 139
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    add-int/lit8 v12, v12, 0x1

    .line 144
    .line 145
    if-nez v9, :cond_7

    .line 146
    .line 147
    const/16 v13, 0x44

    .line 148
    .line 149
    if-ne v3, v13, :cond_6

    .line 150
    .line 151
    sget-object v3, Lyb/c;->g:Lyb/c;

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v2, "Invalid or unsupported duration ISO non-time unit: "

    .line 159
    .line 160
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0

    .line 174
    :cond_7
    const/16 v13, 0x48

    .line 175
    .line 176
    if-eq v3, v13, :cond_a

    .line 177
    .line 178
    const/16 v13, 0x4d

    .line 179
    .line 180
    if-eq v3, v13, :cond_9

    .line 181
    .line 182
    const/16 v13, 0x53

    .line 183
    .line 184
    if-ne v3, v13, :cond_8

    .line 185
    .line 186
    sget-object v3, Lyb/c;->d:Lyb/c;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v2, "Invalid duration ISO time unit: "

    .line 194
    .line 195
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_9
    sget-object v3, Lyb/c;->e:Lyb/c;

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_a
    sget-object v3, Lyb/c;->f:Lyb/c;

    .line 213
    .line 214
    :goto_5
    if-eqz v5, :cond_c

    .line 215
    .line 216
    invoke-virtual {v5, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-lez v5, :cond_b

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    const-string v1, "Unexpected order of duration components"

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :cond_c
    :goto_6
    const/16 v5, 0x2e

    .line 232
    .line 233
    const/4 v13, 0x6

    .line 234
    invoke-static {v10, v5, v2, v13}, Lxb/i;->O(Ljava/lang/CharSequence;CII)I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    sget-object v13, Lyb/c;->d:Lyb/c;

    .line 239
    .line 240
    if-ne v3, v13, :cond_f

    .line 241
    .line 242
    if-lez v5, :cond_f

    .line 243
    .line 244
    invoke-virtual {v10, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-static {v13, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v13}, Lyb/f;->j(Ljava/lang/String;)J

    .line 252
    .line 253
    .line 254
    move-result-wide v13

    .line 255
    invoke-static {v13, v14, v3}, Lyb/f;->k(JLyb/c;)J

    .line 256
    .line 257
    .line 258
    move-result-wide v13

    .line 259
    invoke-static {v7, v8, v13, v14}, Lyb/a;->e(JJ)J

    .line 260
    .line 261
    .line 262
    move-result-wide v7

    .line 263
    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-static {v5, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 271
    .line 272
    .line 273
    move-result-wide v10

    .line 274
    sget-object v5, Lyb/c;->b:Lyb/c;

    .line 275
    .line 276
    invoke-static {v10, v11, v3, v5}, Lyb/f;->b(DLyb/c;Lyb/c;)D

    .line 277
    .line 278
    .line 279
    move-result-wide v13

    .line 280
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-nez v5, :cond_e

    .line 285
    .line 286
    invoke-static {v13, v14}, Li9/a;->O(D)J

    .line 287
    .line 288
    .line 289
    move-result-wide v13

    .line 290
    const-wide v15, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    cmp-long v5, v15, v13

    .line 296
    .line 297
    if-gtz v5, :cond_d

    .line 298
    .line 299
    const-wide v15, 0x3ffffffffffa14c0L    # 1.999999999913868

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    cmp-long v5, v13, v15

    .line 305
    .line 306
    if-gez v5, :cond_d

    .line 307
    .line 308
    shl-long v10, v13, v6

    .line 309
    .line 310
    sget v5, Lyb/a;->d:I

    .line 311
    .line 312
    sget v5, Lyb/b;->a:I

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_d
    sget-object v5, Lyb/c;->c:Lyb/c;

    .line 316
    .line 317
    invoke-static {v10, v11, v3, v5}, Lyb/f;->b(DLyb/c;Lyb/c;)D

    .line 318
    .line 319
    .line 320
    move-result-wide v10

    .line 321
    invoke-static {v10, v11}, Li9/a;->O(D)J

    .line 322
    .line 323
    .line 324
    move-result-wide v10

    .line 325
    invoke-static {v10, v11}, Lyb/f;->e(J)J

    .line 326
    .line 327
    .line 328
    move-result-wide v10

    .line 329
    :goto_7
    invoke-static {v7, v8, v10, v11}, Lyb/a;->e(JJ)J

    .line 330
    .line 331
    .line 332
    move-result-wide v7

    .line 333
    :goto_8
    move-object v5, v3

    .line 334
    move v3, v12

    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 338
    .line 339
    const-string v1, "Duration value cannot be NaN."

    .line 340
    .line 341
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v0

    .line 345
    :cond_f
    invoke-static {v10}, Lyb/f;->j(Ljava/lang/String;)J

    .line 346
    .line 347
    .line 348
    move-result-wide v10

    .line 349
    invoke-static {v10, v11, v3}, Lyb/f;->k(JLyb/c;)J

    .line 350
    .line 351
    .line 352
    move-result-wide v10

    .line 353
    invoke-static {v7, v8, v10, v11}, Lyb/a;->e(JJ)J

    .line 354
    .line 355
    .line 356
    move-result-wide v7

    .line 357
    goto :goto_8

    .line 358
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 359
    .line 360
    const-string v1, "Missing unit for value "

    .line 361
    .line 362
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 371
    .line 372
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 373
    .line 374
    .line 375
    throw v0

    .line 376
    :cond_12
    if-eqz v4, :cond_13

    .line 377
    .line 378
    invoke-static {v7, v8}, Lyb/a;->g(J)J

    .line 379
    .line 380
    .line 381
    move-result-wide v0

    .line 382
    return-wide v0

    .line 383
    :cond_13
    return-wide v7

    .line 384
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 385
    .line 386
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 387
    .line 388
    .line 389
    throw v0

    .line 390
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 393
    .line 394
    .line 395
    throw v0

    .line 396
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 397
    .line 398
    const-string v1, "No components"

    .line 399
    .line 400
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 405
    .line 406
    const-string v1, "The string is empty"

    .line 407
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v0
.end method

.method public static final b(DLyb/c;Lyb/c;)D
    .locals 7

    .line 1
    const-string v0, "targetUnit"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p3, Lyb/c;->a:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    iget-object p2, p2, Lyb/c;->a:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    invoke-virtual {p3, v0, v1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v6, v2, v4

    .line 19
    .line 20
    if-lez v6, :cond_0

    .line 21
    .line 22
    long-to-double p2, v2

    .line 23
    mul-double p0, p0, p2

    .line 24
    .line 25
    return-wide p0

    .line 26
    :cond_0
    invoke-virtual {p2, v0, v1, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    long-to-double p2, p2

    .line 31
    div-double/2addr p0, p2

    .line 32
    return-wide p0
.end method

.method public static final c(JLyb/c;Lyb/c;)J
    .locals 1

    .line 1
    const-string v0, "sourceUnit"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetUnit"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p3, Lyb/c;->a:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    iget-object p2, p2, Lyb/c;->a:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    return-wide p0
.end method

.method public static final d(J)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    const-wide/16 v0, 0x1

    .line 4
    .line 5
    add-long/2addr p0, v0

    .line 6
    sget v0, Lyb/a;->d:I

    .line 7
    .line 8
    sget v0, Lyb/b;->a:I

    .line 9
    .line 10
    return-wide p0
.end method

.method public static final e(J)J
    .locals 3

    .line 1
    const-wide v0, -0x431bde82d7aL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, p0

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    const-wide v0, 0x431bde82d7bL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, p0, v0

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    const v0, 0xf4240

    .line 20
    .line 21
    .line 22
    int-to-long v0, v0

    .line 23
    mul-long p0, p0, v0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    shl-long/2addr p0, v0

    .line 27
    sget v0, Lyb/a;->d:I

    .line 28
    .line 29
    sget v0, Lyb/b;->a:I

    .line 30
    .line 31
    return-wide p0

    .line 32
    :cond_0
    invoke-static {p0, p1}, Li9/a;->o(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    invoke-static {p0, p1}, Lyb/f;->d(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide p0

    .line 40
    return-wide p0
.end method

.method public static final f(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final g(Ljava/lang/String;Ljava/lang/String;ILf9/k;)Lu0/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p3, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Expected "

    .line 26
    .line 27
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", but got \'"

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "\' at position "

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lyb/f;->h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static final h(Ljava/lang/String;Ljava/lang/String;)Lu0/j;
    .locals 2

    .line 1
    new-instance v0, Lu0/j;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " when parsing an Instant from \""

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x40

    .line 17
    .line 18
    invoke-static {p1, p0}, Lyb/f;->l(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 p1, 0x22

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1, p0}, Lu0/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static final i(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x30

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0xa

    .line 8
    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, -0x30

    .line 16
    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public static final j(Ljava/lang/String;)J
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const-string v3, "+-"

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static {v3, v4}, Lxb/i;->H(Ljava/lang/CharSequence;C)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    sub-int v4, v0, v3

    .line 25
    .line 26
    const/16 v5, 0x3a

    .line 27
    .line 28
    const/16 v6, 0x30

    .line 29
    .line 30
    const/16 v7, 0x10

    .line 31
    .line 32
    if-le v4, v7, :cond_5

    .line 33
    .line 34
    move v4, v3

    .line 35
    :goto_1
    if-ge v3, v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-ne v8, v6, :cond_1

    .line 42
    .line 43
    if-ne v4, v3, :cond_2

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/16 v9, 0x31

    .line 49
    .line 50
    if-gt v9, v8, :cond_5

    .line 51
    .line 52
    if-ge v8, v5, :cond_5

    .line 53
    .line 54
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    sub-int v3, v0, v4

    .line 58
    .line 59
    if-le v3, v7, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const/16 v0, 0x2d

    .line 66
    .line 67
    if-ne p0, v0, :cond_4

    .line 68
    .line 69
    const-wide/high16 v0, -0x8000000000000000L

    .line 70
    .line 71
    return-wide v0

    .line 72
    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    return-wide v0

    .line 78
    :cond_5
    const-string v2, "+"

    .line 79
    .line 80
    invoke-static {p0, v2}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    if-le v0, v1, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-gt v6, v0, :cond_6

    .line 93
    .line 94
    if-ge v0, v5, :cond_6

    .line 95
    .line 96
    invoke-static {v1, p0}, Lxb/i;->I(ILjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    return-wide v0

    .line 105
    :cond_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    return-wide v0
.end method

.method public static final k(JLyb/c;)J
    .locals 7

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyb/c;->b:Lyb/c;

    .line 7
    .line 8
    const-string v1, "sourceUnit"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p2, Lyb/c;->a:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    iget-object v0, v0, Lyb/c;->a:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-wide v2, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    neg-long v4, v2

    .line 27
    cmp-long v6, v4, p0

    .line 28
    .line 29
    if-gtz v6, :cond_0

    .line 30
    .line 31
    cmp-long v4, p0, v2

    .line 32
    .line 33
    if-gtz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    const/4 p2, 0x1

    .line 40
    shl-long/2addr p0, p2

    .line 41
    sget p2, Lyb/a;->d:I

    .line 42
    .line 43
    sget p2, Lyb/b;->a:I

    .line 44
    .line 45
    return-wide p0

    .line 46
    :cond_0
    sget-object v0, Lyb/c;->c:Lyb/c;

    .line 47
    .line 48
    invoke-static {p0, p1, p2, v0}, Lyb/f;->c(JLyb/c;Lyb/c;)J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    invoke-static {p0, p1}, Li9/a;->o(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    invoke-static {p0, p1}, Lyb/f;->d(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide p0

    .line 60
    return-wide p0
.end method

.method public static final l(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "..."

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
