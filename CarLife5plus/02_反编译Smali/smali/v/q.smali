.class public final Lv/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv/t;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FF)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput v1, v0, Lv/q;->a:F

    .line 11
    .line 12
    iput v2, v0, Lv/q;->b:F

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/high16 v5, 0x3f800000    # 1.0f

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v6, "Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: "

    .line 45
    .line 46
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", 0.0, "

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", 1.0."

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lv/d0;->a(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    const/4 v1, 0x5

    .line 73
    new-array v1, v1, [F

    .line 74
    .line 75
    float-to-double v2, v4

    .line 76
    const/high16 v6, 0x40400000    # 3.0f

    .line 77
    .line 78
    float-to-double v7, v6

    .line 79
    float-to-double v9, v4

    .line 80
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 81
    .line 82
    mul-double v13, v7, v11

    .line 83
    .line 84
    sub-double v15, v2, v13

    .line 85
    .line 86
    add-double/2addr v15, v9

    .line 87
    const-wide/16 v17, 0x0

    .line 88
    .line 89
    const/high16 p1, 0x40400000    # 3.0f

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    cmpg-double v19, v15, v17

    .line 93
    .line 94
    if-nez v19, :cond_2

    .line 95
    .line 96
    cmpg-double v2, v7, v9

    .line 97
    .line 98
    if-nez v2, :cond_1

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    sub-double v2, v13, v9

    .line 103
    .line 104
    mul-double v9, v9, v11

    .line 105
    .line 106
    sub-double/2addr v13, v9

    .line 107
    div-double/2addr v2, v13

    .line 108
    double-to-float v2, v2

    .line 109
    invoke-static {v2, v1, v6}, Ly1/h0;->J(F[FI)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    mul-double v11, v7, v7

    .line 115
    .line 116
    mul-double v9, v9, v2

    .line 117
    .line 118
    sub-double/2addr v11, v9

    .line 119
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    neg-double v9, v9

    .line 124
    neg-double v2, v2

    .line 125
    add-double/2addr v2, v7

    .line 126
    add-double v7, v9, v2

    .line 127
    .line 128
    neg-double v7, v7

    .line 129
    div-double/2addr v7, v15

    .line 130
    double-to-float v7, v7

    .line 131
    invoke-static {v7, v1, v6}, Ly1/h0;->J(F[FI)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    sub-double/2addr v9, v2

    .line 136
    div-double/2addr v9, v15

    .line 137
    double-to-float v2, v9

    .line 138
    invoke-static {v2, v1, v7}, Ly1/h0;->J(F[FI)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    add-int/2addr v2, v7

    .line 143
    const/4 v3, 0x1

    .line 144
    if-le v2, v3, :cond_4

    .line 145
    .line 146
    aget v7, v1, v6

    .line 147
    .line 148
    aget v8, v1, v3

    .line 149
    .line 150
    cmpl-float v9, v7, v8

    .line 151
    .line 152
    if-lez v9, :cond_3

    .line 153
    .line 154
    aput v8, v1, v6

    .line 155
    .line 156
    aput v7, v1, v3

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    cmpg-float v3, v7, v8

    .line 160
    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 164
    .line 165
    :cond_4
    :goto_1
    const/high16 v3, 0x3f000000    # 0.5f

    .line 166
    .line 167
    invoke-static {v3, v1, v2}, Ly1/h0;->J(F[FI)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    add-int/2addr v3, v2

    .line 172
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    :goto_2
    if-ge v6, v3, :cond_5

    .line 181
    .line 182
    aget v7, v1, v6

    .line 183
    .line 184
    const/high16 v8, -0x40000000    # -2.0f

    .line 185
    .line 186
    mul-float v8, v8, v7

    .line 187
    .line 188
    add-float v8, v8, p1

    .line 189
    .line 190
    mul-float v8, v8, v7

    .line 191
    .line 192
    add-float/2addr v8, v4

    .line 193
    mul-float v8, v8, v7

    .line 194
    .line 195
    add-float/2addr v8, v4

    .line 196
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    add-int/lit8 v6, v6, 0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    int-to-long v1, v1

    .line 212
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    int-to-long v3, v3

    .line 217
    const/16 v5, 0x20

    .line 218
    .line 219
    shl-long/2addr v1, v5

    .line 220
    const-wide v6, 0xffffffffL

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    and-long/2addr v3, v6

    .line 226
    or-long/2addr v1, v3

    .line 227
    shr-long v3, v1, v5

    .line 228
    .line 229
    long-to-int v4, v3

    .line 230
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    iput v3, v0, Lv/q;->c:F

    .line 235
    .line 236
    and-long/2addr v1, v6

    .line 237
    long-to-int v2, v1

    .line 238
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iput v1, v0, Lv/q;->d:F

    .line 243
    .line 244
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v3, v1, v2

    .line 7
    .line 8
    if-lez v3, :cond_25

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpg-float v4, v1, v3

    .line 13
    .line 14
    if-gez v4, :cond_25

    .line 15
    .line 16
    const/high16 v4, 0x34000000

    .line 17
    .line 18
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sub-float v5, v2, v4

    .line 23
    .line 24
    iget v6, v0, Lv/q;->a:F

    .line 25
    .line 26
    sub-float v7, v6, v4

    .line 27
    .line 28
    iget v8, v0, Lv/q;->b:F

    .line 29
    .line 30
    sub-float v9, v8, v4

    .line 31
    .line 32
    sub-float v4, v3, v4

    .line 33
    .line 34
    float-to-double v10, v5

    .line 35
    float-to-double v12, v7

    .line 36
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 37
    .line 38
    mul-double v12, v12, v14

    .line 39
    .line 40
    sub-double v12, v10, v12

    .line 41
    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    const/high16 v17, 0x3f800000    # 1.0f

    .line 45
    .line 46
    float-to-double v2, v9

    .line 47
    add-double/2addr v12, v2

    .line 48
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 49
    .line 50
    mul-double v12, v12, v2

    .line 51
    .line 52
    move-wide/from16 v18, v2

    .line 53
    .line 54
    sub-float v2, v7, v5

    .line 55
    .line 56
    float-to-double v2, v2

    .line 57
    mul-double v2, v2, v18

    .line 58
    .line 59
    neg-float v5, v5

    .line 60
    move-wide/from16 v20, v14

    .line 61
    .line 62
    float-to-double v14, v5

    .line 63
    sub-float/2addr v7, v9

    .line 64
    move-wide/from16 v22, v12

    .line 65
    .line 66
    float-to-double v12, v7

    .line 67
    mul-double v12, v12, v18

    .line 68
    .line 69
    add-double/2addr v12, v14

    .line 70
    float-to-double v4, v4

    .line 71
    add-double/2addr v12, v4

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    sub-double v14, v12, v4

    .line 75
    .line 76
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v14

    .line 80
    const v7, 0x358cedba    # 1.05E-6f

    .line 81
    .line 82
    .line 83
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 84
    .line 85
    const-wide v24, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmpg-double v26, v14, v24

    .line 91
    .line 92
    if-gez v26, :cond_b

    .line 93
    .line 94
    sub-double v12, v22, v4

    .line 95
    .line 96
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 97
    .line 98
    .line 99
    move-result-wide v12

    .line 100
    cmpg-double v14, v12, v24

    .line 101
    .line 102
    if-gez v14, :cond_4

    .line 103
    .line 104
    sub-double v4, v2, v4

    .line 105
    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    cmpg-double v12, v4, v24

    .line 111
    .line 112
    if-gez v12, :cond_0

    .line 113
    .line 114
    goto/16 :goto_a

    .line 115
    .line 116
    :cond_0
    neg-double v4, v10

    .line 117
    div-double/2addr v4, v2

    .line 118
    double-to-float v2, v4

    .line 119
    cmpg-float v3, v2, v16

    .line 120
    .line 121
    if-gez v3, :cond_1

    .line 122
    .line 123
    const/4 v3, 0x0

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    move v3, v2

    .line 126
    :goto_0
    cmpl-float v4, v3, v17

    .line 127
    .line 128
    if-lez v4, :cond_2

    .line 129
    .line 130
    const/high16 v3, 0x3f800000    # 1.0f

    .line 131
    .line 132
    :cond_2
    sub-float v2, v3, v2

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    cmpl-float v2, v2, v7

    .line 139
    .line 140
    if-lez v2, :cond_3

    .line 141
    .line 142
    goto/16 :goto_a

    .line 143
    .line 144
    :cond_3
    move v9, v3

    .line 145
    goto/16 :goto_a

    .line 146
    .line 147
    :cond_4
    mul-double v4, v2, v2

    .line 148
    .line 149
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    .line 150
    .line 151
    mul-double v12, v12, v22

    .line 152
    .line 153
    mul-double v12, v12, v10

    .line 154
    .line 155
    sub-double/2addr v4, v12

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    mul-double v12, v22, v20

    .line 161
    .line 162
    sub-double v10, v4, v2

    .line 163
    .line 164
    div-double/2addr v10, v12

    .line 165
    double-to-float v10, v10

    .line 166
    cmpg-float v11, v10, v16

    .line 167
    .line 168
    if-gez v11, :cond_5

    .line 169
    .line 170
    const/4 v11, 0x0

    .line 171
    goto :goto_1

    .line 172
    :cond_5
    move v11, v10

    .line 173
    :goto_1
    cmpl-float v14, v11, v17

    .line 174
    .line 175
    if-lez v14, :cond_6

    .line 176
    .line 177
    const/high16 v11, 0x3f800000    # 1.0f

    .line 178
    .line 179
    :cond_6
    sub-float v10, v11, v10

    .line 180
    .line 181
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    cmpl-float v10, v10, v7

    .line 186
    .line 187
    if-lez v10, :cond_7

    .line 188
    .line 189
    const/high16 v11, 0x7fc00000    # Float.NaN

    .line 190
    .line 191
    :cond_7
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-nez v10, :cond_8

    .line 196
    .line 197
    :goto_2
    move v9, v11

    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_8
    neg-double v2, v2

    .line 201
    sub-double/2addr v2, v4

    .line 202
    div-double/2addr v2, v12

    .line 203
    double-to-float v2, v2

    .line 204
    cmpg-float v3, v2, v16

    .line 205
    .line 206
    if-gez v3, :cond_9

    .line 207
    .line 208
    const/4 v3, 0x0

    .line 209
    goto :goto_3

    .line 210
    :cond_9
    move v3, v2

    .line 211
    :goto_3
    cmpl-float v4, v3, v17

    .line 212
    .line 213
    if-lez v4, :cond_a

    .line 214
    .line 215
    const/high16 v3, 0x3f800000    # 1.0f

    .line 216
    .line 217
    :cond_a
    sub-float v2, v3, v2

    .line 218
    .line 219
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    cmpl-float v2, v2, v7

    .line 224
    .line 225
    if-lez v2, :cond_3

    .line 226
    .line 227
    goto/16 :goto_a

    .line 228
    .line 229
    :cond_b
    div-double v14, v22, v12

    .line 230
    .line 231
    div-double/2addr v2, v12

    .line 232
    div-double/2addr v10, v12

    .line 233
    mul-double v12, v2, v18

    .line 234
    .line 235
    mul-double v22, v14, v14

    .line 236
    .line 237
    sub-double v12, v12, v22

    .line 238
    .line 239
    const-wide/high16 v22, 0x4022000000000000L    # 9.0

    .line 240
    .line 241
    div-double v12, v12, v22

    .line 242
    .line 243
    mul-double v20, v20, v14

    .line 244
    .line 245
    mul-double v20, v20, v14

    .line 246
    .line 247
    mul-double v20, v20, v14

    .line 248
    .line 249
    mul-double v22, v22, v14

    .line 250
    .line 251
    mul-double v22, v22, v2

    .line 252
    .line 253
    sub-double v20, v20, v22

    .line 254
    .line 255
    const-wide/high16 v2, 0x403b000000000000L    # 27.0

    .line 256
    .line 257
    mul-double v10, v10, v2

    .line 258
    .line 259
    add-double v10, v10, v20

    .line 260
    .line 261
    const-wide/high16 v2, 0x404b000000000000L    # 54.0

    .line 262
    .line 263
    div-double/2addr v10, v2

    .line 264
    mul-double v2, v10, v10

    .line 265
    .line 266
    mul-double v20, v12, v12

    .line 267
    .line 268
    mul-double v12, v12, v20

    .line 269
    .line 270
    add-double/2addr v2, v12

    .line 271
    div-double v14, v14, v18

    .line 272
    .line 273
    const/high16 v20, 0x40000000    # 2.0f

    .line 274
    .line 275
    cmpg-double v21, v2, v4

    .line 276
    .line 277
    if-gez v21, :cond_18

    .line 278
    .line 279
    neg-double v2, v12

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 281
    .line 282
    .line 283
    move-result-wide v2

    .line 284
    neg-double v4, v10

    .line 285
    div-double/2addr v4, v2

    .line 286
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 287
    .line 288
    cmpg-double v12, v4, v10

    .line 289
    .line 290
    if-gez v12, :cond_c

    .line 291
    .line 292
    move-wide v4, v10

    .line 293
    :cond_c
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 294
    .line 295
    cmpl-double v12, v4, v10

    .line 296
    .line 297
    if-lez v12, :cond_d

    .line 298
    .line 299
    move-wide v4, v10

    .line 300
    :cond_d
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    .line 301
    .line 302
    .line 303
    move-result-wide v4

    .line 304
    double-to-float v2, v2

    .line 305
    invoke-static {v2}, Lm9/e0;->a0(F)F

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    mul-float v2, v2, v20

    .line 310
    .line 311
    float-to-double v2, v2

    .line 312
    div-double v10, v4, v18

    .line 313
    .line 314
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 315
    .line 316
    .line 317
    move-result-wide v10

    .line 318
    mul-double v10, v10, v2

    .line 319
    .line 320
    sub-double/2addr v10, v14

    .line 321
    double-to-float v10, v10

    .line 322
    cmpg-float v11, v10, v16

    .line 323
    .line 324
    if-gez v11, :cond_e

    .line 325
    .line 326
    const/4 v11, 0x0

    .line 327
    goto :goto_4

    .line 328
    :cond_e
    move v11, v10

    .line 329
    :goto_4
    cmpl-float v12, v11, v17

    .line 330
    .line 331
    if-lez v12, :cond_f

    .line 332
    .line 333
    const/high16 v11, 0x3f800000    # 1.0f

    .line 334
    .line 335
    :cond_f
    sub-float v10, v11, v10

    .line 336
    .line 337
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    cmpl-float v10, v10, v7

    .line 342
    .line 343
    if-lez v10, :cond_10

    .line 344
    .line 345
    const/high16 v11, 0x7fc00000    # Float.NaN

    .line 346
    .line 347
    :cond_10
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-nez v10, :cond_11

    .line 352
    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :cond_11
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    add-double/2addr v10, v4

    .line 361
    div-double v10, v10, v18

    .line 362
    .line 363
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 364
    .line 365
    .line 366
    move-result-wide v10

    .line 367
    mul-double v10, v10, v2

    .line 368
    .line 369
    sub-double/2addr v10, v14

    .line 370
    double-to-float v10, v10

    .line 371
    cmpg-float v11, v10, v16

    .line 372
    .line 373
    if-gez v11, :cond_12

    .line 374
    .line 375
    const/4 v11, 0x0

    .line 376
    goto :goto_5

    .line 377
    :cond_12
    move v11, v10

    .line 378
    :goto_5
    cmpl-float v12, v11, v17

    .line 379
    .line 380
    if-lez v12, :cond_13

    .line 381
    .line 382
    const/high16 v11, 0x3f800000    # 1.0f

    .line 383
    .line 384
    :cond_13
    sub-float v10, v11, v10

    .line 385
    .line 386
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    cmpl-float v10, v10, v7

    .line 391
    .line 392
    if-lez v10, :cond_14

    .line 393
    .line 394
    const/high16 v11, 0x7fc00000    # Float.NaN

    .line 395
    .line 396
    :cond_14
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 397
    .line 398
    .line 399
    move-result v10

    .line 400
    if-nez v10, :cond_15

    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :cond_15
    const-wide v10, 0x402921fb54442d18L    # 12.566370614359172

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    add-double/2addr v4, v10

    .line 410
    div-double v4, v4, v18

    .line 411
    .line 412
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 413
    .line 414
    .line 415
    move-result-wide v4

    .line 416
    mul-double v4, v4, v2

    .line 417
    .line 418
    sub-double/2addr v4, v14

    .line 419
    double-to-float v2, v4

    .line 420
    cmpg-float v3, v2, v16

    .line 421
    .line 422
    if-gez v3, :cond_16

    .line 423
    .line 424
    const/4 v3, 0x0

    .line 425
    goto :goto_6

    .line 426
    :cond_16
    move v3, v2

    .line 427
    :goto_6
    cmpl-float v4, v3, v17

    .line 428
    .line 429
    if-lez v4, :cond_17

    .line 430
    .line 431
    const/high16 v3, 0x3f800000    # 1.0f

    .line 432
    .line 433
    :cond_17
    sub-float v2, v3, v2

    .line 434
    .line 435
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    cmpl-float v2, v2, v7

    .line 440
    .line 441
    if-lez v2, :cond_3

    .line 442
    .line 443
    goto/16 :goto_a

    .line 444
    .line 445
    :cond_18
    if-nez v21, :cond_1f

    .line 446
    .line 447
    double-to-float v2, v10

    .line 448
    invoke-static {v2}, Lm9/e0;->a0(F)F

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    neg-float v2, v2

    .line 453
    mul-float v20, v20, v2

    .line 454
    .line 455
    double-to-float v3, v14

    .line 456
    sub-float v20, v20, v3

    .line 457
    .line 458
    cmpg-float v4, v20, v16

    .line 459
    .line 460
    if-gez v4, :cond_19

    .line 461
    .line 462
    const/4 v4, 0x0

    .line 463
    goto :goto_7

    .line 464
    :cond_19
    move/from16 v4, v20

    .line 465
    .line 466
    :goto_7
    cmpl-float v5, v4, v17

    .line 467
    .line 468
    if-lez v5, :cond_1a

    .line 469
    .line 470
    const/high16 v4, 0x3f800000    # 1.0f

    .line 471
    .line 472
    :cond_1a
    sub-float v5, v4, v20

    .line 473
    .line 474
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    cmpl-float v5, v5, v7

    .line 479
    .line 480
    if-lez v5, :cond_1b

    .line 481
    .line 482
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 483
    .line 484
    :cond_1b
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-nez v5, :cond_1c

    .line 489
    .line 490
    move v9, v4

    .line 491
    goto :goto_a

    .line 492
    :cond_1c
    neg-float v2, v2

    .line 493
    sub-float/2addr v2, v3

    .line 494
    cmpg-float v3, v2, v16

    .line 495
    .line 496
    if-gez v3, :cond_1d

    .line 497
    .line 498
    const/4 v3, 0x0

    .line 499
    goto :goto_8

    .line 500
    :cond_1d
    move v3, v2

    .line 501
    :goto_8
    cmpl-float v4, v3, v17

    .line 502
    .line 503
    if-lez v4, :cond_1e

    .line 504
    .line 505
    const/high16 v3, 0x3f800000    # 1.0f

    .line 506
    .line 507
    :cond_1e
    sub-float v2, v3, v2

    .line 508
    .line 509
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    cmpl-float v2, v2, v7

    .line 514
    .line 515
    if-lez v2, :cond_3

    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_1f
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 519
    .line 520
    .line 521
    move-result-wide v2

    .line 522
    neg-double v4, v10

    .line 523
    add-double/2addr v4, v2

    .line 524
    double-to-float v4, v4

    .line 525
    invoke-static {v4}, Lm9/e0;->a0(F)F

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    add-double/2addr v10, v2

    .line 530
    double-to-float v2, v10

    .line 531
    invoke-static {v2}, Lm9/e0;->a0(F)F

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    sub-float/2addr v4, v2

    .line 536
    float-to-double v2, v4

    .line 537
    sub-double/2addr v2, v14

    .line 538
    double-to-float v2, v2

    .line 539
    cmpg-float v3, v2, v16

    .line 540
    .line 541
    if-gez v3, :cond_20

    .line 542
    .line 543
    const/4 v3, 0x0

    .line 544
    goto :goto_9

    .line 545
    :cond_20
    move v3, v2

    .line 546
    :goto_9
    cmpl-float v4, v3, v17

    .line 547
    .line 548
    if-lez v4, :cond_21

    .line 549
    .line 550
    const/high16 v3, 0x3f800000    # 1.0f

    .line 551
    .line 552
    :cond_21
    sub-float v2, v3, v2

    .line 553
    .line 554
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    cmpl-float v2, v2, v7

    .line 559
    .line 560
    if-lez v2, :cond_3

    .line 561
    .line 562
    :goto_a
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    if-nez v2, :cond_24

    .line 567
    .line 568
    const v1, -0x40d55556

    .line 569
    .line 570
    .line 571
    mul-float v1, v1, v9

    .line 572
    .line 573
    add-float v1, v1, v17

    .line 574
    .line 575
    mul-float v1, v1, v9

    .line 576
    .line 577
    add-float v1, v1, v16

    .line 578
    .line 579
    const/high16 v2, 0x40400000    # 3.0f

    .line 580
    .line 581
    mul-float v1, v1, v2

    .line 582
    .line 583
    mul-float v1, v1, v9

    .line 584
    .line 585
    iget v2, v0, Lv/q;->c:F

    .line 586
    .line 587
    cmpg-float v3, v1, v2

    .line 588
    .line 589
    if-gez v3, :cond_22

    .line 590
    .line 591
    move v1, v2

    .line 592
    :cond_22
    iget v2, v0, Lv/q;->d:F

    .line 593
    .line 594
    cmpl-float v3, v1, v2

    .line 595
    .line 596
    if-lez v3, :cond_23

    .line 597
    .line 598
    return v2

    .line 599
    :cond_23
    return v1

    .line 600
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 601
    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    const-string v4, "The cubic curve with parameters ("

    .line 605
    .line 606
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v4, ", 0.0, "

    .line 613
    .line 614
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v4, ", 1.0) has no solution at "

    .line 621
    .line 622
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    throw v2

    .line 636
    :cond_25
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lv/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lv/q;

    .line 6
    .line 7
    iget v0, p1, Lv/q;->a:F

    .line 8
    .line 9
    iget v1, p0, Lv/q;->a:F

    .line 10
    .line 11
    cmpg-float v0, v1, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lv/q;->b:F

    .line 16
    .line 17
    iget p1, p1, Lv/q;->b:F

    .line 18
    .line 19
    cmpg-float p1, v0, p1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lv/q;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lv/q;->b:F

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CubicBezierEasing(a="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lv/q;->a:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", b=0.0, c="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lv/q;->b:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", d=1.0)"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
