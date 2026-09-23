.class public final La6/c;
.super La6/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:[I


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/StringBuilder;

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, La6/c;->d:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, La6/c;->a:Z

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const/16 v0, 0x14

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, La6/c;->b:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 p1, 0x9

    .line 16
    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    iput-object p1, p0, La6/c;->c:[I

    .line 20
    .line 21
    return-void
.end method

.method public static g([I)I
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    const v4, 0x7fffffff

    .line 6
    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_1
    if-ge v5, v3, :cond_1

    .line 10
    .line 11
    aget v6, p0, v5

    .line 12
    .line 13
    if-ge v6, v4, :cond_0

    .line 14
    .line 15
    if-le v6, v2, :cond_0

    .line 16
    .line 17
    move v4, v6

    .line 18
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_2
    if-ge v2, v0, :cond_3

    .line 26
    .line 27
    aget v7, p0, v2

    .line 28
    .line 29
    if-le v7, v4, :cond_2

    .line 30
    .line 31
    add-int/lit8 v8, v0, -0x1

    .line 32
    .line 33
    sub-int/2addr v8, v2

    .line 34
    const/4 v9, 0x1

    .line 35
    shl-int v8, v9, v8

    .line 36
    .line 37
    or-int/2addr v5, v8

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    add-int/2addr v6, v7

    .line 41
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/4 v2, 0x3

    .line 45
    if-ne v3, v2, :cond_6

    .line 46
    .line 47
    :goto_3
    if-ge v1, v0, :cond_5

    .line 48
    .line 49
    if-lez v3, :cond_5

    .line 50
    .line 51
    aget v2, p0, v1

    .line 52
    .line 53
    if-le v2, v4, :cond_4

    .line 54
    .line 55
    add-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    shl-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    if-lt v2, v6, :cond_4

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    return v5

    .line 66
    :cond_6
    if-gt v3, v2, :cond_7

    .line 67
    .line 68
    :goto_4
    const/4 p0, -0x1

    .line 69
    return p0

    .line 70
    :cond_7
    move v2, v4

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public final b(ILs5/a;Ljava/util/Map;)Lm5/m;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, La6/c;->c:[I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, La6/c;->b:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    .line 15
    .line 16
    iget v5, v1, Ls5/a;->b:I

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ls5/a;->e(I)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    array-length v7, v2

    .line 23
    move v8, v6

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    :goto_0
    if-ge v6, v5, :cond_10

    .line 27
    .line 28
    invoke-virtual {v1, v6}, Ls5/a;->d(I)Z

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    const/4 v12, 0x1

    .line 33
    if-eq v11, v9, :cond_0

    .line 34
    .line 35
    aget v11, v2, v10

    .line 36
    .line 37
    add-int/2addr v11, v12

    .line 38
    aput v11, v2, v10

    .line 39
    .line 40
    move/from16 v11, p1

    .line 41
    .line 42
    goto/16 :goto_a

    .line 43
    .line 44
    :cond_0
    add-int/lit8 v11, v7, -0x1

    .line 45
    .line 46
    if-ne v10, v11, :cond_f

    .line 47
    .line 48
    invoke-static {v2}, La6/c;->g([I)I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    const/16 v13, 0x94

    .line 53
    .line 54
    const/4 v14, 0x2

    .line 55
    if-ne v11, v13, :cond_e

    .line 56
    .line 57
    sub-int v11, v6, v8

    .line 58
    .line 59
    div-int/2addr v11, v14

    .line 60
    sub-int v11, v8, v11

    .line 61
    .line 62
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    invoke-virtual {v1, v11, v8}, Ls5/a;->h(II)Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_e

    .line 71
    .line 72
    filled-new-array {v8, v6}, [I

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    aget v6, v5, v12

    .line 77
    .line 78
    invoke-virtual {v1, v6}, Ls5/a;->e(I)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    iget v7, v1, Ls5/a;->b:I

    .line 83
    .line 84
    :goto_1
    invoke-static {v6, v1, v2}, La6/h;->e(ILs5/a;[I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, La6/c;->g([I)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ltz v8, :cond_d

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    :goto_2
    const/16 v10, 0x2a

    .line 95
    .line 96
    const-string v11, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    .line 97
    .line 98
    const/16 v15, 0x2b

    .line 99
    .line 100
    if-ge v9, v15, :cond_2

    .line 101
    .line 102
    sget-object v16, La6/c;->d:[I

    .line 103
    .line 104
    const/16 p3, 0x1

    .line 105
    .line 106
    aget v12, v16, v9

    .line 107
    .line 108
    if-ne v12, v8, :cond_1

    .line 109
    .line 110
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    goto :goto_3

    .line 115
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 116
    .line 117
    const/4 v12, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/16 p3, 0x1

    .line 120
    .line 121
    if-ne v8, v13, :cond_c

    .line 122
    .line 123
    const/16 v8, 0x2a

    .line 124
    .line 125
    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    array-length v9, v2

    .line 129
    move v13, v6

    .line 130
    const/4 v12, 0x0

    .line 131
    :goto_4
    if-ge v12, v9, :cond_3

    .line 132
    .line 133
    aget v17, v2, v12

    .line 134
    .line 135
    add-int v13, v13, v17

    .line 136
    .line 137
    add-int/lit8 v12, v12, 0x1

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_3
    invoke-virtual {v1, v13}, Ls5/a;->e(I)I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-ne v8, v10, :cond_b

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    add-int/lit8 v1, v1, -0x1

    .line 151
    .line 152
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    .line 154
    .line 155
    array-length v1, v2

    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    :goto_5
    if-ge v8, v1, :cond_4

    .line 159
    .line 160
    aget v12, v2, v8

    .line 161
    .line 162
    add-int/2addr v10, v12

    .line 163
    add-int/lit8 v8, v8, 0x1

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_4
    sub-int v1, v9, v6

    .line 167
    .line 168
    sub-int/2addr v1, v10

    .line 169
    if-eq v9, v7, :cond_6

    .line 170
    .line 171
    shl-int/lit8 v1, v1, 0x1

    .line 172
    .line 173
    if-lt v1, v10, :cond_5

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_5
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 177
    .line 178
    throw v1

    .line 179
    :cond_6
    :goto_6
    iget-boolean v1, v0, La6/c;->a:Z

    .line 180
    .line 181
    if-eqz v1, :cond_9

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    add-int/lit8 v1, v1, -0x1

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v7, 0x0

    .line 191
    :goto_7
    if-ge v2, v1, :cond_7

    .line 192
    .line 193
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    add-int/2addr v7, v8

    .line 202
    add-int/lit8 v2, v2, 0x1

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    rem-int/2addr v7, v15

    .line 210
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-ne v2, v7, :cond_8

    .line 215
    .line 216
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_8
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    throw v1

    .line 225
    :cond_9
    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_a

    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    aget v2, v5, p3

    .line 236
    .line 237
    aget v4, v5, v3

    .line 238
    .line 239
    add-int/2addr v2, v4

    .line 240
    int-to-float v2, v2

    .line 241
    const/high16 v4, 0x40000000    # 2.0f

    .line 242
    .line 243
    div-float/2addr v2, v4

    .line 244
    int-to-float v5, v6

    .line 245
    int-to-float v6, v10

    .line 246
    div-float/2addr v6, v4

    .line 247
    add-float/2addr v6, v5

    .line 248
    new-instance v4, Lm5/m;

    .line 249
    .line 250
    new-instance v5, Lm5/o;

    .line 251
    .line 252
    move/from16 v11, p1

    .line 253
    .line 254
    int-to-float v7, v11

    .line 255
    invoke-direct {v5, v2, v7}, Lm5/o;-><init>(FF)V

    .line 256
    .line 257
    .line 258
    new-instance v2, Lm5/o;

    .line 259
    .line 260
    invoke-direct {v2, v6, v7}, Lm5/o;-><init>(FF)V

    .line 261
    .line 262
    .line 263
    new-array v6, v14, [Lm5/o;

    .line 264
    .line 265
    aput-object v5, v6, v3

    .line 266
    .line 267
    aput-object v2, v6, p3

    .line 268
    .line 269
    sget-object v2, Lm5/a;->c:Lm5/a;

    .line 270
    .line 271
    const/4 v3, 0x0

    .line 272
    invoke-direct {v4, v1, v3, v6, v2}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;)V

    .line 273
    .line 274
    .line 275
    return-object v4

    .line 276
    :cond_a
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 277
    .line 278
    throw v1

    .line 279
    :cond_b
    move/from16 v11, p1

    .line 280
    .line 281
    move v6, v9

    .line 282
    const/4 v12, 0x1

    .line 283
    const/16 v13, 0x94

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :cond_c
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 288
    .line 289
    throw v1

    .line 290
    :cond_d
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 291
    .line 292
    throw v1

    .line 293
    :cond_e
    move/from16 v11, p1

    .line 294
    .line 295
    const/16 p3, 0x1

    .line 296
    .line 297
    aget v12, v2, v3

    .line 298
    .line 299
    aget v13, v2, p3

    .line 300
    .line 301
    add-int/2addr v12, v13

    .line 302
    add-int/2addr v8, v12

    .line 303
    add-int/lit8 v12, v10, -0x1

    .line 304
    .line 305
    invoke-static {v2, v14, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    .line 307
    .line 308
    aput v3, v2, v12

    .line 309
    .line 310
    aput v3, v2, v10

    .line 311
    .line 312
    add-int/lit8 v10, v10, -0x1

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_f
    move/from16 v11, p1

    .line 316
    .line 317
    const/16 p3, 0x1

    .line 318
    .line 319
    add-int/lit8 v10, v10, 0x1

    .line 320
    .line 321
    :goto_9
    aput p3, v2, v10

    .line 322
    .line 323
    xor-int/lit8 v9, v9, 0x1

    .line 324
    .line 325
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_10
    sget-object v1, Lm5/i;->c:Lm5/i;

    .line 330
    .line 331
    throw v1
.end method
