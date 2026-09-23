.class public abstract Lf6/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lf6/d;->a:[C

    .line 8
    .line 9
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lf6/d;->b:[C

    .line 16
    .line 17
    const/16 v0, 0x10

    .line 18
    .line 19
    new-array v0, v0, [Ljava/math/BigInteger;

    .line 20
    .line 21
    sput-object v0, Lf6/d;->c:[Ljava/math/BigInteger;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 25
    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    const-wide/16 v1, 0x384

    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    aput-object v1, v0, v2

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    :goto_0
    sget-object v2, Lf6/d;->c:[Ljava/math/BigInteger;

    .line 39
    .line 40
    array-length v3, v2

    .line 41
    if-ge v0, v3, :cond_0

    .line 42
    .line 43
    add-int/lit8 v3, v0, -0x1

    .line 44
    .line 45
    aget-object v3, v2, v3

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    aput-object v3, v2, v0

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public static a([II)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x1

    .line 6
    if-ge v2, p1, :cond_0

    .line 7
    .line 8
    sub-int v4, p1, v2

    .line 9
    .line 10
    sub-int/2addr v4, v3

    .line 11
    sget-object v3, Lf6/d;->c:[Ljava/math/BigInteger;

    .line 12
    .line 13
    aget-object v3, v3, v4

    .line 14
    .line 15
    aget v4, p0, v2

    .line 16
    .line 17
    int-to-long v4, v4

    .line 18
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/16 v0, 0x31

    .line 42
    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0
.end method

.method public static b([IILjava/lang/StringBuilder;)I
    .locals 8

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/4 v3, 0x0

    .line 8
    :cond_0
    aget v4, p0, v1

    .line 9
    .line 10
    if-ge p1, v4, :cond_5

    .line 11
    .line 12
    if-nez v2, :cond_5

    .line 13
    .line 14
    add-int/lit8 v5, p1, 0x1

    .line 15
    .line 16
    aget v6, p0, p1

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    if-ne v5, v4, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    :cond_1
    const/16 v4, 0x384

    .line 23
    .line 24
    if-ge v6, v4, :cond_2

    .line 25
    .line 26
    aput v6, v0, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    :goto_1
    move p1, v5

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    if-eq v6, v4, :cond_3

    .line 33
    .line 34
    const/16 v4, 0x385

    .line 35
    .line 36
    if-eq v6, v4, :cond_3

    .line 37
    .line 38
    const/16 v4, 0x3a0

    .line 39
    .line 40
    if-eq v6, v4, :cond_3

    .line 41
    .line 42
    packed-switch v6, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :pswitch_0
    const/4 v2, 0x1

    .line 47
    :goto_2
    rem-int/lit8 v4, v3, 0xf

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    const/16 v4, 0x386

    .line 52
    .line 53
    if-eq v6, v4, :cond_4

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    :cond_4
    if-lez v3, :cond_0

    .line 58
    .line 59
    invoke-static {v0, v3}, Lf6/d;->a([II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    return p1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c([IILjava/lang/StringBuilder;)I
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, p0, v1

    .line 5
    .line 6
    sub-int v2, v2, p1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    shl-int/2addr v2, v3

    .line 10
    new-array v4, v2, [I

    .line 11
    .line 12
    new-array v2, v2, [I

    .line 13
    .line 14
    move/from16 v5, p1

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    :goto_0
    aget v8, p0, v1

    .line 19
    .line 20
    const/16 v9, 0x391

    .line 21
    .line 22
    const/16 v10, 0x384

    .line 23
    .line 24
    if-ge v5, v8, :cond_3

    .line 25
    .line 26
    if-nez v6, :cond_3

    .line 27
    .line 28
    add-int/lit8 v8, v5, 0x1

    .line 29
    .line 30
    aget v11, p0, v5

    .line 31
    .line 32
    if-ge v11, v10, :cond_0

    .line 33
    .line 34
    div-int/lit8 v5, v11, 0x1e

    .line 35
    .line 36
    aput v5, v4, v7

    .line 37
    .line 38
    add-int/lit8 v5, v7, 0x1

    .line 39
    .line 40
    rem-int/lit8 v11, v11, 0x1e

    .line 41
    .line 42
    aput v11, v4, v5

    .line 43
    .line 44
    add-int/lit8 v7, v7, 0x2

    .line 45
    .line 46
    :goto_1
    move v5, v8

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-eq v11, v9, :cond_2

    .line 49
    .line 50
    const/16 v9, 0x3a0

    .line 51
    .line 52
    if-eq v11, v9, :cond_1

    .line 53
    .line 54
    packed-switch v11, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    packed-switch v11, :pswitch_data_1

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    add-int/lit8 v5, v7, 0x1

    .line 62
    .line 63
    aput v10, v4, v7

    .line 64
    .line 65
    move v7, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :pswitch_1
    const/4 v6, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    aput v9, v4, v7

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x2

    .line 72
    .line 73
    aget v8, p0, v8

    .line 74
    .line 75
    aput v8, v2, v7

    .line 76
    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/4 v6, 0x0

    .line 81
    const/4 v8, 0x1

    .line 82
    const/4 v11, 0x1

    .line 83
    :goto_2
    if-ge v6, v7, :cond_1a

    .line 84
    .line 85
    aget v12, v4, v6

    .line 86
    .line 87
    invoke-static {v8}, Le1/d;->b(I)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    const/4 v14, 0x3

    .line 92
    const/4 v15, 0x2

    .line 93
    const/16 v16, 0x6

    .line 94
    .line 95
    const/16 v17, 0x20

    .line 96
    .line 97
    if-eqz v13, :cond_15

    .line 98
    .line 99
    const/4 v1, 0x5

    .line 100
    if-eq v13, v3, :cond_12

    .line 101
    .line 102
    const/4 v3, 0x4

    .line 103
    if-eq v13, v15, :cond_f

    .line 104
    .line 105
    sget-object v15, Lf6/d;->a:[C

    .line 106
    .line 107
    const/16 v9, 0x1d

    .line 108
    .line 109
    if-eq v13, v14, :cond_c

    .line 110
    .line 111
    if-eq v13, v3, :cond_8

    .line 112
    .line 113
    if-eq v13, v1, :cond_4

    .line 114
    .line 115
    :goto_3
    goto :goto_7

    .line 116
    :cond_4
    if-ge v12, v9, :cond_5

    .line 117
    .line 118
    aget-char v17, v15, v12

    .line 119
    .line 120
    move v8, v11

    .line 121
    :goto_4
    move/from16 v3, v17

    .line 122
    .line 123
    :goto_5
    const/16 v1, 0x391

    .line 124
    .line 125
    goto/16 :goto_b

    .line 126
    .line 127
    :cond_5
    if-eq v12, v9, :cond_7

    .line 128
    .line 129
    if-eq v12, v10, :cond_7

    .line 130
    .line 131
    const/16 v1, 0x391

    .line 132
    .line 133
    if-eq v12, v1, :cond_6

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_6
    aget v1, v2, v6

    .line 137
    .line 138
    int-to-char v1, v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :goto_6
    move v8, v11

    .line 143
    :goto_7
    const/16 v1, 0x391

    .line 144
    .line 145
    :goto_8
    const/4 v3, 0x0

    .line 146
    goto/16 :goto_b

    .line 147
    .line 148
    :cond_7
    :pswitch_2
    const/16 v1, 0x391

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    const/4 v8, 0x1

    .line 152
    goto/16 :goto_b

    .line 153
    .line 154
    :cond_8
    const/16 v1, 0x1a

    .line 155
    .line 156
    if-ge v12, v1, :cond_9

    .line 157
    .line 158
    add-int/lit8 v12, v12, 0x41

    .line 159
    .line 160
    int-to-char v1, v12

    .line 161
    move v3, v1

    .line 162
    move v8, v11

    .line 163
    goto :goto_5

    .line 164
    :cond_9
    if-eq v12, v1, :cond_b

    .line 165
    .line 166
    if-eq v12, v10, :cond_a

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_a
    const/4 v8, 0x1

    .line 170
    goto :goto_7

    .line 171
    :cond_b
    move v8, v11

    .line 172
    :pswitch_3
    const/16 v1, 0x391

    .line 173
    .line 174
    :pswitch_4
    const/16 v3, 0x20

    .line 175
    .line 176
    goto/16 :goto_b

    .line 177
    .line 178
    :cond_c
    if-ge v12, v9, :cond_d

    .line 179
    .line 180
    aget-char v17, v15, v12

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_d
    if-eq v12, v9, :cond_7

    .line 184
    .line 185
    if-eq v12, v10, :cond_7

    .line 186
    .line 187
    const/16 v1, 0x391

    .line 188
    .line 189
    if-eq v12, v1, :cond_e

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_e
    aget v1, v2, v6

    .line 193
    .line 194
    int-to-char v1, v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_f
    const/16 v1, 0x19

    .line 200
    .line 201
    if-ge v12, v1, :cond_10

    .line 202
    .line 203
    sget-object v1, Lf6/d;->b:[C

    .line 204
    .line 205
    aget-char v17, v1, v12

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_10
    if-eq v12, v10, :cond_7

    .line 209
    .line 210
    const/16 v1, 0x391

    .line 211
    .line 212
    if-eq v12, v1, :cond_11

    .line 213
    .line 214
    packed-switch v12, :pswitch_data_2

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :pswitch_5
    move v11, v8

    .line 219
    const/16 v1, 0x391

    .line 220
    .line 221
    :goto_9
    const/4 v3, 0x0

    .line 222
    const/4 v8, 0x6

    .line 223
    goto :goto_b

    .line 224
    :pswitch_6
    const/16 v1, 0x391

    .line 225
    .line 226
    :pswitch_7
    const/4 v3, 0x0

    .line 227
    const/4 v8, 0x2

    .line 228
    goto :goto_b

    .line 229
    :pswitch_8
    const/16 v1, 0x391

    .line 230
    .line 231
    const/4 v3, 0x0

    .line 232
    const/4 v8, 0x4

    .line 233
    goto :goto_b

    .line 234
    :cond_11
    aget v1, v2, v6

    .line 235
    .line 236
    int-to-char v1, v1

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_12
    const/16 v3, 0x1a

    .line 242
    .line 243
    if-ge v12, v3, :cond_13

    .line 244
    .line 245
    add-int/lit8 v12, v12, 0x61

    .line 246
    .line 247
    :goto_a
    int-to-char v1, v12

    .line 248
    move v3, v1

    .line 249
    goto :goto_5

    .line 250
    :cond_13
    if-eq v12, v10, :cond_a

    .line 251
    .line 252
    const/16 v3, 0x391

    .line 253
    .line 254
    if-eq v12, v3, :cond_14

    .line 255
    .line 256
    packed-switch v12, :pswitch_data_3

    .line 257
    .line 258
    .line 259
    goto :goto_7

    .line 260
    :pswitch_9
    const/16 v1, 0x391

    .line 261
    .line 262
    :pswitch_a
    const/4 v3, 0x0

    .line 263
    const/4 v8, 0x3

    .line 264
    goto :goto_b

    .line 265
    :pswitch_b
    move v11, v8

    .line 266
    const/16 v1, 0x391

    .line 267
    .line 268
    const/4 v3, 0x0

    .line 269
    const/4 v8, 0x5

    .line 270
    goto :goto_b

    .line 271
    :cond_14
    aget v1, v2, v6

    .line 272
    .line 273
    int-to-char v1, v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    goto/16 :goto_3

    .line 278
    .line 279
    :cond_15
    const/16 v1, 0x1a

    .line 280
    .line 281
    if-ge v12, v1, :cond_16

    .line 282
    .line 283
    add-int/lit8 v12, v12, 0x41

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_16
    if-eq v12, v10, :cond_18

    .line 287
    .line 288
    const/16 v1, 0x391

    .line 289
    .line 290
    if-eq v12, v1, :cond_17

    .line 291
    .line 292
    packed-switch v12, :pswitch_data_4

    .line 293
    .line 294
    .line 295
    goto/16 :goto_8

    .line 296
    .line 297
    :pswitch_c
    move v11, v8

    .line 298
    goto :goto_9

    .line 299
    :cond_17
    aget v3, v2, v6

    .line 300
    .line 301
    int-to-char v3, v3

    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    goto/16 :goto_8

    .line 306
    .line 307
    :cond_18
    const/16 v1, 0x391

    .line 308
    .line 309
    const/4 v8, 0x1

    .line 310
    goto/16 :goto_8

    .line 311
    .line 312
    :goto_b
    if-eqz v3, :cond_19

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 318
    .line 319
    const/4 v1, 0x0

    .line 320
    const/4 v3, 0x1

    .line 321
    const/16 v9, 0x391

    .line 322
    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :cond_1a
    return v5

    .line 326
    nop

    .line 327
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_8
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_b
        :pswitch_9
        :pswitch_5
    .end packed-switch

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :pswitch_data_4
    .packed-switch 0x1a
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method
