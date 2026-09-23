.class public abstract Lv/z0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    new-array v2, v0, [F

    .line 5
    .line 6
    new-array v3, v0, [F

    .line 7
    .line 8
    new-array v4, v0, [[F

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v2, v4, v5

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput-object v3, v4, v2

    .line 15
    .line 16
    aget v1, v1, v5

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    const/4 v6, 0x4

    .line 20
    const/4 v7, 0x3

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    if-eq v1, v0, :cond_3

    .line 26
    .line 27
    if-eq v1, v7, :cond_3

    .line 28
    .line 29
    if-eq v1, v6, :cond_2

    .line 30
    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x5

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 v1, 0x2

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    const/4 v1, 0x3

    .line 42
    :goto_0
    aget-object v8, v4, v5

    .line 43
    .line 44
    aget-object v4, v4, v2

    .line 45
    .line 46
    array-length v9, v8

    .line 47
    div-int/2addr v9, v0

    .line 48
    array-length v10, v8

    .line 49
    rem-int/2addr v10, v0

    .line 50
    add-int/2addr v10, v9

    .line 51
    new-array v0, v10, [Ln6/a;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    :goto_1
    if-ge v9, v10, :cond_d

    .line 55
    .line 56
    mul-int/lit8 v11, v9, 0x2

    .line 57
    .line 58
    new-instance v12, Ln6/a;

    .line 59
    .line 60
    aget v13, v8, v11

    .line 61
    .line 62
    add-int/lit8 v14, v11, 0x1

    .line 63
    .line 64
    aget v15, v8, v14

    .line 65
    .line 66
    aget v11, v4, v11

    .line 67
    .line 68
    aget v14, v4, v14

    .line 69
    .line 70
    const/16 v5, 0x10

    .line 71
    .line 72
    invoke-direct {v12, v5}, Ln6/a;-><init>(I)V

    .line 73
    .line 74
    .line 75
    sub-float/2addr v11, v13

    .line 76
    sub-float v5, v14, v15

    .line 77
    .line 78
    const/16 v13, 0x65

    .line 79
    .line 80
    const/16 v16, 0x1

    .line 81
    .line 82
    new-array v2, v13, [F

    .line 83
    .line 84
    if-ne v1, v7, :cond_6

    .line 85
    .line 86
    :cond_5
    :goto_2
    const/4 v7, 0x0

    .line 87
    move-object/from16 v23, v0

    .line 88
    .line 89
    move/from16 v22, v1

    .line 90
    .line 91
    move-object/from16 v24, v8

    .line 92
    .line 93
    move/from16 v21, v9

    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_6
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 98
    .line 99
    .line 100
    move-result v17

    .line 101
    const v18, 0x3a83126f    # 0.001f

    .line 102
    .line 103
    .line 104
    cmpg-float v17, v17, v18

    .line 105
    .line 106
    if-ltz v17, :cond_5

    .line 107
    .line 108
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 109
    .line 110
    .line 111
    move-result v17

    .line 112
    cmpg-float v17, v17, v18

    .line 113
    .line 114
    if-gez v17, :cond_7

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    sub-float/2addr v15, v14

    .line 118
    sget-object v5, Lv/d;->i:[F

    .line 119
    .line 120
    const/16 v14, 0x5a

    .line 121
    .line 122
    int-to-float v3, v14

    .line 123
    const/16 v18, 0x0

    .line 124
    .line 125
    move/from16 v21, v15

    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    const/16 v19, 0x0

    .line 129
    .line 130
    const/16 v20, 0x0

    .line 131
    .line 132
    :goto_3
    const-wide v22, 0x4056800000000000L    # 90.0

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    move-object/from16 v24, v8

    .line 138
    .line 139
    int-to-double v7, v6

    .line 140
    mul-double v7, v7, v22

    .line 141
    .line 142
    move-object/from16 v23, v0

    .line 143
    .line 144
    move/from16 v22, v1

    .line 145
    .line 146
    int-to-double v0, v14

    .line 147
    div-double/2addr v7, v0

    .line 148
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    double-to-float v0, v0

    .line 153
    float-to-double v0, v0

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    double-to-float v7, v7

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    double-to-float v0, v0

    .line 164
    mul-float v7, v7, v11

    .line 165
    .line 166
    mul-float v0, v0, v15

    .line 167
    .line 168
    sub-float v1, v7, v20

    .line 169
    .line 170
    float-to-double v13, v1

    .line 171
    sub-float v1, v0, v21

    .line 172
    .line 173
    move/from16 v21, v9

    .line 174
    .line 175
    float-to-double v8, v1

    .line 176
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    double-to-float v1, v8

    .line 181
    add-float v19, v19, v1

    .line 182
    .line 183
    aput v19, v5, v6

    .line 184
    .line 185
    const/16 v1, 0x5a

    .line 186
    .line 187
    if-eq v6, v1, :cond_8

    .line 188
    .line 189
    add-int/lit8 v6, v6, 0x1

    .line 190
    .line 191
    move/from16 v20, v7

    .line 192
    .line 193
    move/from16 v9, v21

    .line 194
    .line 195
    move/from16 v1, v22

    .line 196
    .line 197
    move-object/from16 v8, v24

    .line 198
    .line 199
    const/4 v7, 0x3

    .line 200
    const/16 v13, 0x65

    .line 201
    .line 202
    const/16 v14, 0x5a

    .line 203
    .line 204
    move/from16 v21, v0

    .line 205
    .line 206
    move-object/from16 v0, v23

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    const/4 v0, 0x1

    .line 210
    :goto_4
    aget v6, v5, v0

    .line 211
    .line 212
    div-float v6, v6, v19

    .line 213
    .line 214
    aput v6, v5, v0

    .line 215
    .line 216
    if-eq v0, v1, :cond_9

    .line 217
    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_9
    const/4 v0, 0x0

    .line 222
    const/16 v8, 0x65

    .line 223
    .line 224
    :goto_5
    if-ge v0, v8, :cond_c

    .line 225
    .line 226
    int-to-float v1, v0

    .line 227
    const/high16 v6, 0x42c80000    # 100.0f

    .line 228
    .line 229
    div-float/2addr v1, v6

    .line 230
    const/16 v6, 0x5b

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    invoke-static {v5, v7, v6, v1}, Ljava/util/Arrays;->binarySearch([FIIF)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-ltz v6, :cond_a

    .line 238
    .line 239
    int-to-float v1, v6

    .line 240
    div-float/2addr v1, v3

    .line 241
    aput v1, v2, v0

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_a
    const/4 v9, -0x1

    .line 245
    if-ne v6, v9, :cond_b

    .line 246
    .line 247
    aput v18, v2, v0

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_b
    neg-int v6, v6

    .line 251
    add-int/lit8 v9, v6, -0x2

    .line 252
    .line 253
    add-int/lit8 v6, v6, -0x1

    .line 254
    .line 255
    int-to-float v11, v9

    .line 256
    aget v9, v5, v9

    .line 257
    .line 258
    sub-float/2addr v1, v9

    .line 259
    aget v6, v5, v6

    .line 260
    .line 261
    sub-float/2addr v6, v9

    .line 262
    div-float/2addr v1, v6

    .line 263
    add-float/2addr v1, v11

    .line 264
    div-float/2addr v1, v3

    .line 265
    aput v1, v2, v0

    .line 266
    .line 267
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_c
    const/4 v7, 0x0

    .line 271
    goto :goto_8

    .line 272
    :goto_7
    float-to-double v0, v5

    .line 273
    float-to-double v2, v11

    .line 274
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 275
    .line 276
    .line 277
    :goto_8
    aput-object v12, v23, v21

    .line 278
    .line 279
    add-int/lit8 v9, v21, 0x1

    .line 280
    .line 281
    move/from16 v1, v22

    .line 282
    .line 283
    move-object/from16 v0, v23

    .line 284
    .line 285
    move-object/from16 v8, v24

    .line 286
    .line 287
    const/4 v2, 0x1

    .line 288
    const/4 v3, 0x5

    .line 289
    const/4 v5, 0x0

    .line 290
    const/4 v6, 0x4

    .line 291
    const/4 v7, 0x3

    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :cond_d
    return-void
.end method
