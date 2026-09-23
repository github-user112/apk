.class public abstract Lf6/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:La2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La2/d;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, La2/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lf6/g;->a:La2/d;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lf6/e;)Lf6/c;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-boolean v2, v0, Lf6/e;->d:Z

    .line 8
    .line 9
    iget-object v3, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Lf6/c;

    .line 12
    .line 13
    iget-object v4, v0, Lu0/j;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, [Lf6/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lf6/e;->P()Lf6/a;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, -0x1

    .line 22
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x0

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    goto :goto_6

    .line 28
    :cond_1
    iget v5, v5, Lf6/a;->f:I

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v9, v3, Lf6/c;->b:Lm5/o;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v9, v3, Lf6/c;->d:Lm5/o;

    .line 36
    .line 37
    :goto_0
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget-object v10, v3, Lf6/c;->c:Lm5/o;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget-object v10, v3, Lf6/c;->e:Lm5/o;

    .line 43
    .line 44
    :goto_1
    iget v9, v9, Lm5/o;->b:F

    .line 45
    .line 46
    float-to-int v9, v9

    .line 47
    invoke-virtual {v0, v9}, Lu0/j;->v(I)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    iget v10, v10, Lm5/o;->b:F

    .line 52
    .line 53
    float-to-int v10, v10

    .line 54
    invoke-virtual {v0, v10}, Lu0/j;->v(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v10, -0x1

    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v12, 0x1

    .line 61
    :goto_2
    if-ge v9, v0, :cond_8

    .line 62
    .line 63
    aget-object v13, v4, v9

    .line 64
    .line 65
    if-eqz v13, :cond_7

    .line 66
    .line 67
    invoke-virtual {v13}, Lf6/a;->b()V

    .line 68
    .line 69
    .line 70
    iget v14, v13, Lf6/a;->f:I

    .line 71
    .line 72
    sub-int v15, v14, v10

    .line 73
    .line 74
    if-nez v15, :cond_4

    .line 75
    .line 76
    add-int/lit8 v11, v11, 0x1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    if-ne v15, v7, :cond_5

    .line 80
    .line 81
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    iget v10, v13, Lf6/a;->f:I

    .line 86
    .line 87
    :goto_3
    const/4 v11, 0x1

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    if-lt v14, v5, :cond_6

    .line 90
    .line 91
    aput-object v1, v4, v9

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    move v10, v14

    .line 95
    goto :goto_3

    .line 96
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_8
    new-array v0, v5, [I

    .line 100
    .line 101
    array-length v9, v4

    .line 102
    const/4 v10, 0x0

    .line 103
    :goto_5
    if-ge v10, v9, :cond_a

    .line 104
    .line 105
    aget-object v11, v4, v10

    .line 106
    .line 107
    if-eqz v11, :cond_9

    .line 108
    .line 109
    iget v11, v11, Lf6/a;->f:I

    .line 110
    .line 111
    if-ge v11, v5, :cond_9

    .line 112
    .line 113
    aget v12, v0, v11

    .line 114
    .line 115
    add-int/2addr v12, v7

    .line 116
    aput v12, v0, v11

    .line 117
    .line 118
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_a
    :goto_6
    if-nez v0, :cond_b

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_b
    array-length v1, v0

    .line 125
    const/4 v5, 0x0

    .line 126
    :goto_7
    if-ge v5, v1, :cond_c

    .line 127
    .line 128
    aget v9, v0, v5

    .line 129
    .line 130
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    array-length v1, v0

    .line 138
    const/4 v5, 0x0

    .line 139
    const/4 v9, 0x0

    .line 140
    :goto_8
    if-ge v5, v1, :cond_d

    .line 141
    .line 142
    aget v10, v0, v5

    .line 143
    .line 144
    sub-int v11, v6, v10

    .line 145
    .line 146
    add-int/2addr v9, v11

    .line 147
    if-gtz v10, :cond_d

    .line 148
    .line 149
    add-int/lit8 v5, v5, 0x1

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_d
    const/4 v1, 0x0

    .line 153
    :goto_9
    if-lez v9, :cond_e

    .line 154
    .line 155
    aget-object v5, v4, v1

    .line 156
    .line 157
    if-nez v5, :cond_e

    .line 158
    .line 159
    add-int/lit8 v9, v9, -0x1

    .line 160
    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_e
    array-length v1, v0

    .line 165
    sub-int/2addr v1, v7

    .line 166
    const/4 v5, 0x0

    .line 167
    :goto_a
    if-ltz v1, :cond_f

    .line 168
    .line 169
    aget v10, v0, v1

    .line 170
    .line 171
    sub-int v11, v6, v10

    .line 172
    .line 173
    add-int/2addr v5, v11

    .line 174
    if-gtz v10, :cond_f

    .line 175
    .line 176
    add-int/lit8 v1, v1, -0x1

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_f
    array-length v0, v4

    .line 180
    sub-int/2addr v0, v7

    .line 181
    :goto_b
    if-lez v5, :cond_10

    .line 182
    .line 183
    aget-object v1, v4, v0

    .line 184
    .line 185
    if-nez v1, :cond_10

    .line 186
    .line 187
    add-int/lit8 v5, v5, -0x1

    .line 188
    .line 189
    add-int/lit8 v0, v0, -0x1

    .line 190
    .line 191
    goto :goto_b

    .line 192
    :cond_10
    iget-object v0, v3, Lf6/c;->b:Lm5/o;

    .line 193
    .line 194
    iget-object v1, v3, Lf6/c;->c:Lm5/o;

    .line 195
    .line 196
    iget-object v4, v3, Lf6/c;->d:Lm5/o;

    .line 197
    .line 198
    iget-object v6, v3, Lf6/c;->e:Lm5/o;

    .line 199
    .line 200
    if-lez v9, :cond_14

    .line 201
    .line 202
    if-eqz v2, :cond_11

    .line 203
    .line 204
    move-object v10, v0

    .line 205
    goto :goto_c

    .line 206
    :cond_11
    move-object v10, v4

    .line 207
    :goto_c
    iget v11, v10, Lm5/o;->b:F

    .line 208
    .line 209
    float-to-int v11, v11

    .line 210
    sub-int/2addr v11, v9

    .line 211
    if-gez v11, :cond_12

    .line 212
    .line 213
    goto :goto_d

    .line 214
    :cond_12
    move v8, v11

    .line 215
    :goto_d
    new-instance v9, Lm5/o;

    .line 216
    .line 217
    iget v10, v10, Lm5/o;->a:F

    .line 218
    .line 219
    int-to-float v8, v8

    .line 220
    invoke-direct {v9, v10, v8}, Lm5/o;-><init>(FF)V

    .line 221
    .line 222
    .line 223
    if-eqz v2, :cond_13

    .line 224
    .line 225
    move-object v15, v4

    .line 226
    move-object v13, v9

    .line 227
    goto :goto_e

    .line 228
    :cond_13
    move-object v13, v0

    .line 229
    move-object v15, v9

    .line 230
    goto :goto_e

    .line 231
    :cond_14
    move-object v13, v0

    .line 232
    move-object v15, v4

    .line 233
    :goto_e
    if-lez v5, :cond_18

    .line 234
    .line 235
    if-eqz v2, :cond_15

    .line 236
    .line 237
    move-object v0, v1

    .line 238
    goto :goto_f

    .line 239
    :cond_15
    move-object v0, v6

    .line 240
    :goto_f
    iget v4, v0, Lm5/o;->b:F

    .line 241
    .line 242
    float-to-int v4, v4

    .line 243
    add-int/2addr v4, v5

    .line 244
    iget-object v5, v3, Lf6/c;->a:Ls5/b;

    .line 245
    .line 246
    iget v5, v5, Ls5/b;->b:I

    .line 247
    .line 248
    if-lt v4, v5, :cond_16

    .line 249
    .line 250
    add-int/lit8 v4, v5, -0x1

    .line 251
    .line 252
    :cond_16
    new-instance v5, Lm5/o;

    .line 253
    .line 254
    iget v0, v0, Lm5/o;->a:F

    .line 255
    .line 256
    int-to-float v4, v4

    .line 257
    invoke-direct {v5, v0, v4}, Lm5/o;-><init>(FF)V

    .line 258
    .line 259
    .line 260
    if-eqz v2, :cond_17

    .line 261
    .line 262
    move-object v14, v5

    .line 263
    :goto_10
    move-object/from16 v16, v6

    .line 264
    .line 265
    goto :goto_11

    .line 266
    :cond_17
    move-object v14, v1

    .line 267
    move-object/from16 v16, v5

    .line 268
    .line 269
    goto :goto_11

    .line 270
    :cond_18
    move-object v14, v1

    .line 271
    goto :goto_10

    .line 272
    :goto_11
    new-instance v11, Lf6/c;

    .line 273
    .line 274
    iget-object v12, v3, Lf6/c;->a:Ls5/b;

    .line 275
    .line 276
    invoke-direct/range {v11 .. v16}, Lf6/c;-><init>(Ls5/b;Lm5/o;Lm5/o;Lm5/o;Lm5/o;)V

    .line 277
    .line 278
    .line 279
    return-object v11
.end method

.method public static b([II[I)Ls5/d;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    if-eqz v2, :cond_46

    .line 7
    .line 8
    add-int/lit8 v2, p1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    shl-int v2, v3, v2

    .line 12
    .line 13
    array-length v4, v1

    .line 14
    div-int/lit8 v5, v2, 0x2

    .line 15
    .line 16
    add-int/lit8 v5, v5, 0x3

    .line 17
    .line 18
    if-gt v4, v5, :cond_45

    .line 19
    .line 20
    if-ltz v2, :cond_45

    .line 21
    .line 22
    const/16 v4, 0x200

    .line 23
    .line 24
    if-gt v2, v4, :cond_45

    .line 25
    .line 26
    sget-object v4, Lf6/g;->a:La2/d;

    .line 27
    .line 28
    iget-object v4, v4, La2/d;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Lg6/a;

    .line 31
    .line 32
    array-length v5, v0

    .line 33
    if-eqz v5, :cond_44

    .line 34
    .line 35
    array-length v5, v0

    .line 36
    const/4 v6, 0x0

    .line 37
    if-le v5, v3, :cond_2

    .line 38
    .line 39
    aget v7, v0, v6

    .line 40
    .line 41
    if-nez v7, :cond_2

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    :goto_0
    if-ge v7, v5, :cond_0

    .line 45
    .line 46
    aget v8, v0, v7

    .line 47
    .line 48
    if-nez v8, :cond_0

    .line 49
    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-ne v7, v5, :cond_1

    .line 54
    .line 55
    filled-new-array {v6}, [I

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    sub-int/2addr v5, v7

    .line 61
    new-array v8, v5, [I

    .line 62
    .line 63
    invoke-static {v0, v7, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    move-object v5, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v5, v0

    .line 69
    :goto_1
    new-array v7, v2, [I

    .line 70
    .line 71
    move v8, v2

    .line 72
    const/4 v9, 0x0

    .line 73
    :goto_2
    if-lez v8, :cond_7

    .line 74
    .line 75
    iget-object v10, v4, Lg6/a;->a:[I

    .line 76
    .line 77
    aget v10, v10, v8

    .line 78
    .line 79
    if-nez v10, :cond_3

    .line 80
    .line 81
    array-length v10, v5

    .line 82
    sub-int/2addr v10, v3

    .line 83
    aget v10, v5, v10

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_3
    if-ne v10, v3, :cond_5

    .line 87
    .line 88
    array-length v10, v5

    .line 89
    const/4 v11, 0x0

    .line 90
    const/4 v12, 0x0

    .line 91
    :goto_3
    if-ge v12, v10, :cond_4

    .line 92
    .line 93
    aget v13, v5, v12

    .line 94
    .line 95
    invoke-virtual {v4, v11, v13}, Lg6/a;->a(II)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    add-int/lit8 v12, v12, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move v10, v11

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    aget v11, v5, v6

    .line 105
    .line 106
    array-length v12, v5

    .line 107
    const/4 v13, 0x1

    .line 108
    :goto_4
    if-ge v13, v12, :cond_4

    .line 109
    .line 110
    invoke-virtual {v4, v10, v11}, Lg6/a;->c(II)I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    aget v14, v5, v13

    .line 115
    .line 116
    invoke-virtual {v4, v11, v14}, Lg6/a;->a(II)I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    add-int/lit8 v13, v13, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :goto_5
    sub-int v11, v2, v8

    .line 124
    .line 125
    aput v10, v7, v11

    .line 126
    .line 127
    if-eqz v10, :cond_6

    .line 128
    .line 129
    const/4 v9, 0x1

    .line 130
    :cond_6
    add-int/lit8 v8, v8, -0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    if-nez v9, :cond_8

    .line 134
    .line 135
    goto/16 :goto_17

    .line 136
    .line 137
    :cond_8
    iget-object v8, v4, Lg6/a;->d:Lu0/j;

    .line 138
    .line 139
    iget-object v9, v4, Lg6/a;->c:Lu0/j;

    .line 140
    .line 141
    array-length v10, v1

    .line 142
    const/4 v11, 0x0

    .line 143
    :goto_6
    const/16 v12, 0x3a1

    .line 144
    .line 145
    if-ge v11, v10, :cond_9

    .line 146
    .line 147
    aget v13, v1, v11

    .line 148
    .line 149
    array-length v14, v0

    .line 150
    sub-int/2addr v14, v3

    .line 151
    sub-int/2addr v14, v13

    .line 152
    iget-object v13, v4, Lg6/a;->a:[I

    .line 153
    .line 154
    aget v13, v13, v14

    .line 155
    .line 156
    new-instance v14, Lu0/j;

    .line 157
    .line 158
    rsub-int v13, v13, 0x3a1

    .line 159
    .line 160
    rem-int/2addr v13, v12

    .line 161
    filled-new-array {v13, v3}, [I

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    invoke-direct {v14, v4, v12}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8, v14}, Lu0/j;->A(Lu0/j;)Lu0/j;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    add-int/lit8 v11, v11, 0x1

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_9
    new-instance v1, Lu0/j;

    .line 176
    .line 177
    invoke-direct {v1, v4, v7}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 178
    .line 179
    .line 180
    if-ltz v2, :cond_43

    .line 181
    .line 182
    add-int/lit8 v7, v2, 0x1

    .line 183
    .line 184
    new-array v7, v7, [I

    .line 185
    .line 186
    aput v3, v7, v6

    .line 187
    .line 188
    new-instance v8, Lu0/j;

    .line 189
    .line 190
    invoke-direct {v8, v4, v7}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Lu0/j;->r()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    invoke-virtual {v1}, Lu0/j;->r()I

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-ge v7, v10, :cond_a

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_a
    move-object/from16 v24, v8

    .line 205
    .line 206
    move-object v8, v1

    .line 207
    move-object/from16 v1, v24

    .line 208
    .line 209
    :goto_7
    iget-object v7, v4, Lg6/a;->d:Lu0/j;

    .line 210
    .line 211
    move-object v10, v7

    .line 212
    move-object v7, v1

    .line 213
    move-object v1, v8

    .line 214
    move-object v8, v10

    .line 215
    move-object v10, v9

    .line 216
    :goto_8
    invoke-virtual {v1}, Lu0/j;->r()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    div-int/lit8 v13, v2, 0x2

    .line 221
    .line 222
    if-lt v11, v13, :cond_13

    .line 223
    .line 224
    invoke-virtual {v1}, Lu0/j;->x()Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-nez v11, :cond_12

    .line 229
    .line 230
    invoke-virtual {v1}, Lu0/j;->r()I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    invoke-virtual {v1, v11}, Lu0/j;->q(I)I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    invoke-virtual {v4, v11}, Lg6/a;->b(I)I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    move-object v13, v9

    .line 243
    :goto_9
    invoke-virtual {v7}, Lu0/j;->r()I

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    invoke-virtual {v1}, Lu0/j;->r()I

    .line 248
    .line 249
    .line 250
    move-result v15

    .line 251
    if-lt v14, v15, :cond_10

    .line 252
    .line 253
    invoke-virtual {v7}, Lu0/j;->x()Z

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    if-nez v14, :cond_10

    .line 258
    .line 259
    invoke-virtual {v7}, Lu0/j;->r()I

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    invoke-virtual {v1}, Lu0/j;->r()I

    .line 264
    .line 265
    .line 266
    move-result v15

    .line 267
    sub-int/2addr v14, v15

    .line 268
    invoke-virtual {v7}, Lu0/j;->r()I

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    invoke-virtual {v7, v15}, Lu0/j;->q(I)I

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    invoke-virtual {v4, v15, v11}, Lg6/a;->c(II)I

    .line 277
    .line 278
    .line 279
    move-result v15

    .line 280
    if-ltz v14, :cond_f

    .line 281
    .line 282
    if-nez v15, :cond_b

    .line 283
    .line 284
    move-object v5, v9

    .line 285
    const/16 v16, 0x1

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_b
    const/16 v16, 0x1

    .line 289
    .line 290
    add-int/lit8 v3, v14, 0x1

    .line 291
    .line 292
    new-array v3, v3, [I

    .line 293
    .line 294
    aput v15, v3, v6

    .line 295
    .line 296
    new-instance v5, Lu0/j;

    .line 297
    .line 298
    invoke-direct {v5, v4, v3}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 299
    .line 300
    .line 301
    :goto_a
    invoke-virtual {v13, v5}, Lu0/j;->g(Lu0/j;)Lu0/j;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    iget-object v3, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v3, [I

    .line 308
    .line 309
    iget-object v5, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v5, Lg6/a;

    .line 312
    .line 313
    if-ltz v14, :cond_e

    .line 314
    .line 315
    if-nez v15, :cond_c

    .line 316
    .line 317
    iget-object v3, v5, Lg6/a;->c:Lu0/j;

    .line 318
    .line 319
    goto :goto_c

    .line 320
    :cond_c
    array-length v6, v3

    .line 321
    add-int/2addr v14, v6

    .line 322
    new-array v14, v14, [I

    .line 323
    .line 324
    const/4 v12, 0x0

    .line 325
    :goto_b
    if-ge v12, v6, :cond_d

    .line 326
    .line 327
    move-object/from16 p2, v3

    .line 328
    .line 329
    aget v3, p2, v12

    .line 330
    .line 331
    invoke-virtual {v5, v3, v15}, Lg6/a;->c(II)I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    aput v3, v14, v12

    .line 336
    .line 337
    add-int/lit8 v12, v12, 0x1

    .line 338
    .line 339
    move-object/from16 v3, p2

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_d
    new-instance v3, Lu0/j;

    .line 343
    .line 344
    invoke-direct {v3, v5, v14}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 345
    .line 346
    .line 347
    :goto_c
    invoke-virtual {v7, v3}, Lu0/j;->H(Lu0/j;)Lu0/j;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    const/4 v3, 0x1

    .line 352
    const/4 v6, 0x0

    .line 353
    const/16 v12, 0x3a1

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 363
    .line 364
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    :cond_10
    const/16 v16, 0x1

    .line 369
    .line 370
    invoke-virtual {v13, v8}, Lu0/j;->A(Lu0/j;)Lu0/j;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-virtual {v3, v10}, Lu0/j;->H(Lu0/j;)Lu0/j;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    iget-object v5, v3, Lu0/j;->b:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v5, Lg6/a;

    .line 381
    .line 382
    iget-object v3, v3, Lu0/j;->c:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v3, [I

    .line 385
    .line 386
    array-length v6, v3

    .line 387
    new-array v10, v6, [I

    .line 388
    .line 389
    const/4 v11, 0x0

    .line 390
    :goto_d
    if-ge v11, v6, :cond_11

    .line 391
    .line 392
    aget v12, v3, v11

    .line 393
    .line 394
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    const/16 v13, 0x3a1

    .line 398
    .line 399
    rsub-int v12, v12, 0x3a1

    .line 400
    .line 401
    rem-int/2addr v12, v13

    .line 402
    aput v12, v10, v11

    .line 403
    .line 404
    add-int/lit8 v11, v11, 0x1

    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_11
    new-instance v3, Lu0/j;

    .line 408
    .line 409
    invoke-direct {v3, v5, v10}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 410
    .line 411
    .line 412
    move-object v6, v7

    .line 413
    move-object v7, v1

    .line 414
    move-object v1, v6

    .line 415
    move-object v10, v8

    .line 416
    const/4 v6, 0x0

    .line 417
    const/16 v12, 0x3a1

    .line 418
    .line 419
    move-object v8, v3

    .line 420
    const/4 v3, 0x1

    .line 421
    goto/16 :goto_8

    .line 422
    .line 423
    :cond_12
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    throw v0

    .line 428
    :cond_13
    const/4 v3, 0x0

    .line 429
    const/16 v16, 0x1

    .line 430
    .line 431
    invoke-virtual {v8, v3}, Lu0/j;->q(I)I

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v5, :cond_42

    .line 436
    .line 437
    invoke-virtual {v4, v5}, Lg6/a;->b(I)I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    invoke-virtual {v8, v5}, Lu0/j;->z(I)Lu0/j;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    invoke-virtual {v1, v5}, Lu0/j;->z(I)Lu0/j;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    const/4 v5, 0x2

    .line 450
    new-array v7, v5, [Lu0/j;

    .line 451
    .line 452
    aput-object v6, v7, v3

    .line 453
    .line 454
    aput-object v1, v7, v16

    .line 455
    .line 456
    aget-object v1, v7, v3

    .line 457
    .line 458
    aget-object v3, v7, v16

    .line 459
    .line 460
    invoke-virtual {v1}, Lu0/j;->r()I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    new-array v6, v5, [I

    .line 465
    .line 466
    const/4 v7, 0x1

    .line 467
    const/4 v8, 0x0

    .line 468
    :goto_e
    const/16 v13, 0x3a1

    .line 469
    .line 470
    if-ge v7, v13, :cond_15

    .line 471
    .line 472
    if-ge v8, v5, :cond_15

    .line 473
    .line 474
    invoke-virtual {v1, v7}, Lu0/j;->m(I)I

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-nez v9, :cond_14

    .line 479
    .line 480
    invoke-virtual {v4, v7}, Lg6/a;->b(I)I

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    aput v9, v6, v8

    .line 485
    .line 486
    add-int/lit8 v8, v8, 0x1

    .line 487
    .line 488
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 489
    .line 490
    goto :goto_e

    .line 491
    :cond_15
    if-ne v8, v5, :cond_41

    .line 492
    .line 493
    invoke-virtual {v1}, Lu0/j;->r()I

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    new-array v8, v7, [I

    .line 498
    .line 499
    const/4 v9, 0x1

    .line 500
    :goto_f
    if-gt v9, v7, :cond_16

    .line 501
    .line 502
    sub-int v10, v7, v9

    .line 503
    .line 504
    invoke-virtual {v1, v9}, Lu0/j;->q(I)I

    .line 505
    .line 506
    .line 507
    move-result v11

    .line 508
    invoke-virtual {v4, v9, v11}, Lg6/a;->c(II)I

    .line 509
    .line 510
    .line 511
    move-result v11

    .line 512
    aput v11, v8, v10

    .line 513
    .line 514
    add-int/lit8 v9, v9, 0x1

    .line 515
    .line 516
    goto :goto_f

    .line 517
    :cond_16
    if-eqz v7, :cond_40

    .line 518
    .line 519
    const/4 v1, 0x1

    .line 520
    if-le v7, v1, :cond_19

    .line 521
    .line 522
    const/16 v18, 0x0

    .line 523
    .line 524
    aget v1, v8, v18

    .line 525
    .line 526
    if-nez v1, :cond_19

    .line 527
    .line 528
    const/4 v1, 0x1

    .line 529
    :goto_10
    if-ge v1, v7, :cond_17

    .line 530
    .line 531
    aget v9, v8, v1

    .line 532
    .line 533
    if-nez v9, :cond_17

    .line 534
    .line 535
    add-int/lit8 v1, v1, 0x1

    .line 536
    .line 537
    goto :goto_10

    .line 538
    :cond_17
    if-ne v1, v7, :cond_18

    .line 539
    .line 540
    const/4 v9, 0x0

    .line 541
    filled-new-array {v9}, [I

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    goto :goto_11

    .line 546
    :cond_18
    const/4 v9, 0x0

    .line 547
    sub-int/2addr v7, v1

    .line 548
    new-array v10, v7, [I

    .line 549
    .line 550
    invoke-static {v8, v1, v10, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    .line 552
    .line 553
    move-object v8, v10

    .line 554
    :cond_19
    :goto_11
    new-array v1, v5, [I

    .line 555
    .line 556
    const/4 v7, 0x0

    .line 557
    :goto_12
    if-ge v7, v5, :cond_1e

    .line 558
    .line 559
    aget v9, v6, v7

    .line 560
    .line 561
    invoke-virtual {v4, v9}, Lg6/a;->b(I)I

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    invoke-virtual {v3, v9}, Lu0/j;->m(I)I

    .line 566
    .line 567
    .line 568
    move-result v10

    .line 569
    const/16 v13, 0x3a1

    .line 570
    .line 571
    rsub-int v12, v10, 0x3a1

    .line 572
    .line 573
    rem-int/2addr v12, v13

    .line 574
    if-nez v9, :cond_1a

    .line 575
    .line 576
    array-length v9, v8

    .line 577
    const/4 v10, 0x1

    .line 578
    sub-int/2addr v9, v10

    .line 579
    aget v9, v8, v9

    .line 580
    .line 581
    goto :goto_15

    .line 582
    :cond_1a
    const/4 v10, 0x1

    .line 583
    if-ne v9, v10, :cond_1c

    .line 584
    .line 585
    array-length v9, v8

    .line 586
    const/4 v10, 0x0

    .line 587
    const/4 v11, 0x0

    .line 588
    :goto_13
    if-ge v10, v9, :cond_1b

    .line 589
    .line 590
    aget v13, v8, v10

    .line 591
    .line 592
    invoke-virtual {v4, v11, v13}, Lg6/a;->a(II)I

    .line 593
    .line 594
    .line 595
    move-result v11

    .line 596
    add-int/lit8 v10, v10, 0x1

    .line 597
    .line 598
    goto :goto_13

    .line 599
    :cond_1b
    move v9, v11

    .line 600
    goto :goto_15

    .line 601
    :cond_1c
    const/16 v18, 0x0

    .line 602
    .line 603
    aget v10, v8, v18

    .line 604
    .line 605
    array-length v11, v8

    .line 606
    const/4 v13, 0x1

    .line 607
    :goto_14
    if-ge v13, v11, :cond_1d

    .line 608
    .line 609
    invoke-virtual {v4, v9, v10}, Lg6/a;->c(II)I

    .line 610
    .line 611
    .line 612
    move-result v10

    .line 613
    aget v14, v8, v13

    .line 614
    .line 615
    invoke-virtual {v4, v10, v14}, Lg6/a;->a(II)I

    .line 616
    .line 617
    .line 618
    move-result v10

    .line 619
    add-int/lit8 v13, v13, 0x1

    .line 620
    .line 621
    goto :goto_14

    .line 622
    :cond_1d
    move v9, v10

    .line 623
    :goto_15
    invoke-virtual {v4, v9}, Lg6/a;->b(I)I

    .line 624
    .line 625
    .line 626
    move-result v9

    .line 627
    invoke-virtual {v4, v12, v9}, Lg6/a;->c(II)I

    .line 628
    .line 629
    .line 630
    move-result v9

    .line 631
    aput v9, v1, v7

    .line 632
    .line 633
    add-int/lit8 v7, v7, 0x1

    .line 634
    .line 635
    goto :goto_12

    .line 636
    :cond_1e
    const/4 v3, 0x0

    .line 637
    :goto_16
    if-ge v3, v5, :cond_21

    .line 638
    .line 639
    array-length v7, v0

    .line 640
    const/16 v16, 0x1

    .line 641
    .line 642
    add-int/lit8 v7, v7, -0x1

    .line 643
    .line 644
    aget v8, v6, v3

    .line 645
    .line 646
    if-eqz v8, :cond_20

    .line 647
    .line 648
    iget-object v9, v4, Lg6/a;->b:[I

    .line 649
    .line 650
    aget v8, v9, v8

    .line 651
    .line 652
    sub-int/2addr v7, v8

    .line 653
    if-ltz v7, :cond_1f

    .line 654
    .line 655
    aget v8, v0, v7

    .line 656
    .line 657
    aget v9, v1, v3

    .line 658
    .line 659
    const/16 v13, 0x3a1

    .line 660
    .line 661
    add-int v12, v13, v8

    .line 662
    .line 663
    sub-int/2addr v12, v9

    .line 664
    rem-int/2addr v12, v13

    .line 665
    aput v12, v0, v7

    .line 666
    .line 667
    add-int/lit8 v3, v3, 0x1

    .line 668
    .line 669
    goto :goto_16

    .line 670
    :cond_1f
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    throw v0

    .line 675
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 676
    .line 677
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 678
    .line 679
    .line 680
    throw v0

    .line 681
    :cond_21
    :goto_17
    array-length v1, v0

    .line 682
    const/4 v3, 0x4

    .line 683
    if-lt v1, v3, :cond_3f

    .line 684
    .line 685
    const/16 v18, 0x0

    .line 686
    .line 687
    aget v1, v0, v18

    .line 688
    .line 689
    array-length v3, v0

    .line 690
    if-gt v1, v3, :cond_3e

    .line 691
    .line 692
    if-nez v1, :cond_23

    .line 693
    .line 694
    array-length v1, v0

    .line 695
    if-ge v2, v1, :cond_22

    .line 696
    .line 697
    array-length v1, v0

    .line 698
    sub-int/2addr v1, v2

    .line 699
    aput v1, v0, v18

    .line 700
    .line 701
    goto :goto_18

    .line 702
    :cond_22
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    throw v0

    .line 707
    :cond_23
    :goto_18
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    sget-object v2, Lf6/d;->a:[C

    .line 712
    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    array-length v3, v0

    .line 716
    const/16 v16, 0x1

    .line 717
    .line 718
    shl-int/lit8 v3, v3, 0x1

    .line 719
    .line 720
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 721
    .line 722
    .line 723
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 724
    .line 725
    aget v4, v0, v16

    .line 726
    .line 727
    new-instance v5, Le6/c;

    .line 728
    .line 729
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 730
    .line 731
    .line 732
    const/4 v6, 0x2

    .line 733
    :goto_19
    const/16 v18, 0x0

    .line 734
    .line 735
    aget v7, v0, v18

    .line 736
    .line 737
    if-ge v6, v7, :cond_3c

    .line 738
    .line 739
    const/16 v8, 0x391

    .line 740
    .line 741
    if-eq v4, v8, :cond_3a

    .line 742
    .line 743
    const/16 v8, 0x384

    .line 744
    .line 745
    packed-switch v4, :pswitch_data_0

    .line 746
    .line 747
    .line 748
    packed-switch v4, :pswitch_data_1

    .line 749
    .line 750
    .line 751
    add-int/lit8 v6, v6, -0x1

    .line 752
    .line 753
    invoke-static {v0, v6, v2}, Lf6/d;->c([IILjava/lang/StringBuilder;)I

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    :cond_24
    :goto_1a
    const/16 v19, 0x0

    .line 758
    .line 759
    goto/16 :goto_2a

    .line 760
    .line 761
    :pswitch_0
    add-int/lit8 v4, v6, 0x2

    .line 762
    .line 763
    if-gt v4, v7, :cond_2b

    .line 764
    .line 765
    const/4 v7, 0x2

    .line 766
    new-array v4, v7, [I

    .line 767
    .line 768
    const/4 v8, 0x0

    .line 769
    :goto_1b
    if-ge v8, v7, :cond_25

    .line 770
    .line 771
    aget v9, v0, v6

    .line 772
    .line 773
    aput v9, v4, v8

    .line 774
    .line 775
    add-int/lit8 v8, v8, 0x1

    .line 776
    .line 777
    add-int/lit8 v6, v6, 0x1

    .line 778
    .line 779
    goto :goto_1b

    .line 780
    :cond_25
    invoke-static {v4, v7}, Lf6/d;->a([II)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .line 791
    .line 792
    invoke-static {v0, v6, v4}, Lf6/d;->c([IILjava/lang/StringBuilder;)I

    .line 793
    .line 794
    .line 795
    move-result v4

    .line 796
    aget v6, v0, v4

    .line 797
    .line 798
    const/4 v8, -0x1

    .line 799
    const/16 v9, 0x39b

    .line 800
    .line 801
    if-ne v6, v9, :cond_26

    .line 802
    .line 803
    add-int/lit8 v6, v4, 0x1

    .line 804
    .line 805
    :goto_1c
    const/16 v18, 0x0

    .line 806
    .line 807
    goto :goto_1d

    .line 808
    :cond_26
    const/4 v6, -0x1

    .line 809
    goto :goto_1c

    .line 810
    :goto_1d
    aget v10, v0, v18

    .line 811
    .line 812
    if-ge v4, v10, :cond_29

    .line 813
    .line 814
    aget v10, v0, v4

    .line 815
    .line 816
    const/16 v11, 0x39a

    .line 817
    .line 818
    if-eq v10, v11, :cond_28

    .line 819
    .line 820
    if-ne v10, v9, :cond_27

    .line 821
    .line 822
    add-int/lit8 v10, v4, 0x1

    .line 823
    .line 824
    aget v10, v0, v10

    .line 825
    .line 826
    packed-switch v10, :pswitch_data_2

    .line 827
    .line 828
    .line 829
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    throw v0

    .line 834
    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 835
    .line 836
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .line 838
    .line 839
    add-int/lit8 v4, v4, 0x2

    .line 840
    .line 841
    invoke-static {v0, v4, v10}, Lf6/d;->b([IILjava/lang/StringBuilder;)I

    .line 842
    .line 843
    .line 844
    move-result v4

    .line 845
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v10

    .line 849
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 850
    .line 851
    .line 852
    goto :goto_1c

    .line 853
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 854
    .line 855
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .line 857
    .line 858
    add-int/lit8 v4, v4, 0x2

    .line 859
    .line 860
    invoke-static {v0, v4, v10}, Lf6/d;->b([IILjava/lang/StringBuilder;)I

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v10

    .line 868
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 869
    .line 870
    .line 871
    goto :goto_1c

    .line 872
    :pswitch_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .line 876
    .line 877
    add-int/lit8 v4, v4, 0x2

    .line 878
    .line 879
    invoke-static {v0, v4, v10}, Lf6/d;->c([IILjava/lang/StringBuilder;)I

    .line 880
    .line 881
    .line 882
    move-result v4

    .line 883
    goto :goto_1c

    .line 884
    :pswitch_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 885
    .line 886
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .line 888
    .line 889
    add-int/lit8 v4, v4, 0x2

    .line 890
    .line 891
    invoke-static {v0, v4, v10}, Lf6/d;->c([IILjava/lang/StringBuilder;)I

    .line 892
    .line 893
    .line 894
    move-result v4

    .line 895
    goto :goto_1c

    .line 896
    :pswitch_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    add-int/lit8 v4, v4, 0x2

    .line 902
    .line 903
    invoke-static {v0, v4, v10}, Lf6/d;->b([IILjava/lang/StringBuilder;)I

    .line 904
    .line 905
    .line 906
    move-result v4

    .line 907
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v10

    .line 911
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 912
    .line 913
    .line 914
    goto :goto_1c

    .line 915
    :pswitch_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .line 919
    .line 920
    add-int/lit8 v4, v4, 0x2

    .line 921
    .line 922
    invoke-static {v0, v4, v10}, Lf6/d;->b([IILjava/lang/StringBuilder;)I

    .line 923
    .line 924
    .line 925
    move-result v4

    .line 926
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v10

    .line 930
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    goto/16 :goto_1c

    .line 934
    .line 935
    :pswitch_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .line 939
    .line 940
    add-int/lit8 v4, v4, 0x2

    .line 941
    .line 942
    invoke-static {v0, v4, v10}, Lf6/d;->c([IILjava/lang/StringBuilder;)I

    .line 943
    .line 944
    .line 945
    move-result v4

    .line 946
    goto/16 :goto_1c

    .line 947
    .line 948
    :cond_27
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    throw v0

    .line 953
    :cond_28
    add-int/lit8 v4, v4, 0x1

    .line 954
    .line 955
    const/4 v10, 0x1

    .line 956
    iput-boolean v10, v5, Le6/c;->a:Z

    .line 957
    .line 958
    goto/16 :goto_1c

    .line 959
    .line 960
    :cond_29
    const/4 v10, 0x1

    .line 961
    if-eq v6, v8, :cond_24

    .line 962
    .line 963
    sub-int v8, v4, v6

    .line 964
    .line 965
    iget-boolean v9, v5, Le6/c;->a:Z

    .line 966
    .line 967
    if-eqz v9, :cond_2a

    .line 968
    .line 969
    add-int/lit8 v8, v8, -0x1

    .line 970
    .line 971
    :cond_2a
    add-int/2addr v8, v6

    .line 972
    invoke-static {v0, v6, v8}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 973
    .line 974
    .line 975
    goto/16 :goto_1a

    .line 976
    .line 977
    :cond_2b
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    throw v0

    .line 982
    :pswitch_8
    const/4 v7, 0x2

    .line 983
    const/4 v10, 0x1

    .line 984
    add-int/lit8 v4, v6, 0x1

    .line 985
    .line 986
    aget v3, v0, v6

    .line 987
    .line 988
    sget-object v6, Ls5/c;->c:Ljava/util/HashMap;

    .line 989
    .line 990
    if-ltz v3, :cond_2c

    .line 991
    .line 992
    if-ge v3, v8, :cond_2c

    .line 993
    .line 994
    sget-object v6, Ls5/c;->c:Ljava/util/HashMap;

    .line 995
    .line 996
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 997
    .line 998
    .line 999
    move-result-object v3

    .line 1000
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    check-cast v3, Ls5/c;

    .line 1005
    .line 1006
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v3

    .line 1014
    goto/16 :goto_1a

    .line 1015
    .line 1016
    :cond_2c
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    throw v0

    .line 1021
    :pswitch_9
    const/4 v7, 0x2

    .line 1022
    const/4 v10, 0x1

    .line 1023
    add-int/lit8 v4, v6, 0x2

    .line 1024
    .line 1025
    goto/16 :goto_1a

    .line 1026
    .line 1027
    :pswitch_a
    const/4 v7, 0x2

    .line 1028
    const/4 v10, 0x1

    .line 1029
    add-int/lit8 v4, v6, 0x1

    .line 1030
    .line 1031
    goto/16 :goto_1a

    .line 1032
    .line 1033
    :pswitch_b
    const/4 v7, 0x2

    .line 1034
    const/4 v10, 0x1

    .line 1035
    goto :goto_1e

    .line 1036
    :pswitch_c
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    throw v0

    .line 1041
    :pswitch_d
    const/4 v7, 0x2

    .line 1042
    const/4 v10, 0x1

    .line 1043
    invoke-static {v0, v6, v2}, Lf6/d;->b([IILjava/lang/StringBuilder;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v4

    .line 1047
    goto/16 :goto_1a

    .line 1048
    .line 1049
    :goto_1e
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 1050
    .line 1051
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1052
    .line 1053
    .line 1054
    const/16 v11, 0x385

    .line 1055
    .line 1056
    const/16 v12, 0x3a0

    .line 1057
    .line 1058
    const-wide/16 v13, 0x384

    .line 1059
    .line 1060
    const/4 v15, 0x6

    .line 1061
    const-wide/16 v16, 0x0

    .line 1062
    .line 1063
    if-eq v4, v11, :cond_33

    .line 1064
    .line 1065
    const/16 v11, 0x39c

    .line 1066
    .line 1067
    if-eq v4, v11, :cond_2d

    .line 1068
    .line 1069
    :goto_1f
    const/16 v19, 0x0

    .line 1070
    .line 1071
    goto/16 :goto_29

    .line 1072
    .line 1073
    :cond_2d
    move v11, v6

    .line 1074
    move-wide/from16 v19, v16

    .line 1075
    .line 1076
    const/4 v4, 0x0

    .line 1077
    const/4 v6, 0x0

    .line 1078
    :goto_20
    const/16 v18, 0x0

    .line 1079
    .line 1080
    aget v7, v0, v18

    .line 1081
    .line 1082
    if-ge v11, v7, :cond_32

    .line 1083
    .line 1084
    if-nez v4, :cond_32

    .line 1085
    .line 1086
    add-int/lit8 v7, v11, 0x1

    .line 1087
    .line 1088
    aget v10, v0, v11

    .line 1089
    .line 1090
    if-ge v10, v8, :cond_2e

    .line 1091
    .line 1092
    add-int/lit8 v6, v6, 0x1

    .line 1093
    .line 1094
    mul-long v19, v19, v13

    .line 1095
    .line 1096
    int-to-long v10, v10

    .line 1097
    add-long v19, v19, v10

    .line 1098
    .line 1099
    :goto_21
    move v11, v7

    .line 1100
    goto :goto_22

    .line 1101
    :cond_2e
    if-eq v10, v12, :cond_2f

    .line 1102
    .line 1103
    packed-switch v10, :pswitch_data_3

    .line 1104
    .line 1105
    .line 1106
    packed-switch v10, :pswitch_data_4

    .line 1107
    .line 1108
    .line 1109
    goto :goto_21

    .line 1110
    :cond_2f
    :pswitch_e
    const/4 v4, 0x1

    .line 1111
    :goto_22
    rem-int/lit8 v7, v6, 0x5

    .line 1112
    .line 1113
    if-nez v7, :cond_31

    .line 1114
    .line 1115
    if-lez v6, :cond_31

    .line 1116
    .line 1117
    const/4 v6, 0x0

    .line 1118
    :goto_23
    if-ge v6, v15, :cond_30

    .line 1119
    .line 1120
    rsub-int/lit8 v7, v6, 0x5

    .line 1121
    .line 1122
    mul-int/lit8 v7, v7, 0x8

    .line 1123
    .line 1124
    move-wide/from16 v21, v13

    .line 1125
    .line 1126
    shr-long v13, v19, v7

    .line 1127
    .line 1128
    long-to-int v7, v13

    .line 1129
    int-to-byte v7, v7

    .line 1130
    invoke-virtual {v9, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1131
    .line 1132
    .line 1133
    add-int/lit8 v6, v6, 0x1

    .line 1134
    .line 1135
    move-wide/from16 v13, v21

    .line 1136
    .line 1137
    goto :goto_23

    .line 1138
    :cond_30
    move-wide/from16 v21, v13

    .line 1139
    .line 1140
    move-wide/from16 v19, v16

    .line 1141
    .line 1142
    const/4 v6, 0x0

    .line 1143
    goto :goto_24

    .line 1144
    :cond_31
    move-wide/from16 v21, v13

    .line 1145
    .line 1146
    :goto_24
    move-wide/from16 v13, v21

    .line 1147
    .line 1148
    const/4 v10, 0x1

    .line 1149
    goto :goto_20

    .line 1150
    :cond_32
    move v6, v11

    .line 1151
    goto :goto_1f

    .line 1152
    :cond_33
    move-wide/from16 v21, v13

    .line 1153
    .line 1154
    new-array v4, v15, [I

    .line 1155
    .line 1156
    add-int/lit8 v7, v6, 0x1

    .line 1157
    .line 1158
    aget v6, v0, v6

    .line 1159
    .line 1160
    move v11, v6

    .line 1161
    move v10, v7

    .line 1162
    move-wide/from16 v13, v16

    .line 1163
    .line 1164
    const/4 v6, 0x0

    .line 1165
    const/16 v18, 0x0

    .line 1166
    .line 1167
    const/16 v19, 0x0

    .line 1168
    .line 1169
    :goto_25
    aget v7, v0, v19

    .line 1170
    .line 1171
    if-ge v10, v7, :cond_37

    .line 1172
    .line 1173
    if-nez v18, :cond_37

    .line 1174
    .line 1175
    add-int/lit8 v7, v6, 0x1

    .line 1176
    .line 1177
    aput v11, v4, v6

    .line 1178
    .line 1179
    mul-long v13, v13, v21

    .line 1180
    .line 1181
    move-object/from16 v23, v9

    .line 1182
    .line 1183
    int-to-long v8, v11

    .line 1184
    add-long/2addr v13, v8

    .line 1185
    add-int/lit8 v6, v10, 0x1

    .line 1186
    .line 1187
    aget v11, v0, v10

    .line 1188
    .line 1189
    if-eq v11, v12, :cond_36

    .line 1190
    .line 1191
    packed-switch v11, :pswitch_data_5

    .line 1192
    .line 1193
    .line 1194
    packed-switch v11, :pswitch_data_6

    .line 1195
    .line 1196
    .line 1197
    rem-int/lit8 v8, v7, 0x5

    .line 1198
    .line 1199
    if-nez v8, :cond_35

    .line 1200
    .line 1201
    if-lez v7, :cond_35

    .line 1202
    .line 1203
    const/4 v7, 0x0

    .line 1204
    :goto_26
    if-ge v7, v15, :cond_34

    .line 1205
    .line 1206
    rsub-int/lit8 v8, v7, 0x5

    .line 1207
    .line 1208
    mul-int/lit8 v8, v8, 0x8

    .line 1209
    .line 1210
    shr-long v8, v13, v8

    .line 1211
    .line 1212
    long-to-int v9, v8

    .line 1213
    int-to-byte v8, v9

    .line 1214
    move-object/from16 v9, v23

    .line 1215
    .line 1216
    invoke-virtual {v9, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1217
    .line 1218
    .line 1219
    add-int/lit8 v7, v7, 0x1

    .line 1220
    .line 1221
    goto :goto_26

    .line 1222
    :cond_34
    move v10, v6

    .line 1223
    move-wide/from16 v13, v16

    .line 1224
    .line 1225
    move-object/from16 v9, v23

    .line 1226
    .line 1227
    const/4 v6, 0x0

    .line 1228
    :goto_27
    const/16 v8, 0x384

    .line 1229
    .line 1230
    goto :goto_25

    .line 1231
    :cond_35
    move-object/from16 v9, v23

    .line 1232
    .line 1233
    move v10, v6

    .line 1234
    move v6, v7

    .line 1235
    goto :goto_27

    .line 1236
    :cond_36
    :pswitch_f
    move-object/from16 v9, v23

    .line 1237
    .line 1238
    move v6, v7

    .line 1239
    const/16 v8, 0x384

    .line 1240
    .line 1241
    const/16 v18, 0x1

    .line 1242
    .line 1243
    goto :goto_25

    .line 1244
    :cond_37
    if-ne v10, v7, :cond_38

    .line 1245
    .line 1246
    const/16 v7, 0x384

    .line 1247
    .line 1248
    if-ge v11, v7, :cond_38

    .line 1249
    .line 1250
    add-int/lit8 v7, v6, 0x1

    .line 1251
    .line 1252
    aput v11, v4, v6

    .line 1253
    .line 1254
    move v6, v7

    .line 1255
    :cond_38
    const/4 v7, 0x0

    .line 1256
    :goto_28
    if-ge v7, v6, :cond_39

    .line 1257
    .line 1258
    aget v8, v4, v7

    .line 1259
    .line 1260
    int-to-byte v8, v8

    .line 1261
    invoke-virtual {v9, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1262
    .line 1263
    .line 1264
    add-int/lit8 v7, v7, 0x1

    .line 1265
    .line 1266
    goto :goto_28

    .line 1267
    :cond_39
    move v6, v10

    .line 1268
    :goto_29
    new-instance v4, Ljava/lang/String;

    .line 1269
    .line 1270
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1271
    .line 1272
    .line 1273
    move-result-object v7

    .line 1274
    invoke-direct {v4, v7, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    move v4, v6

    .line 1281
    goto :goto_2a

    .line 1282
    :pswitch_10
    const/16 v19, 0x0

    .line 1283
    .line 1284
    invoke-static {v0, v6, v2}, Lf6/d;->c([IILjava/lang/StringBuilder;)I

    .line 1285
    .line 1286
    .line 1287
    move-result v4

    .line 1288
    goto :goto_2a

    .line 1289
    :cond_3a
    const/16 v19, 0x0

    .line 1290
    .line 1291
    add-int/lit8 v4, v6, 0x1

    .line 1292
    .line 1293
    aget v6, v0, v6

    .line 1294
    .line 1295
    int-to-char v6, v6

    .line 1296
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    :goto_2a
    array-length v6, v0

    .line 1300
    if-ge v4, v6, :cond_3b

    .line 1301
    .line 1302
    add-int/lit8 v6, v4, 0x1

    .line 1303
    .line 1304
    aget v4, v0, v4

    .line 1305
    .line 1306
    goto/16 :goto_19

    .line 1307
    .line 1308
    :cond_3b
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    throw v0

    .line 1313
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 1314
    .line 1315
    .line 1316
    move-result v0

    .line 1317
    if-eqz v0, :cond_3d

    .line 1318
    .line 1319
    new-instance v0, Ls5/d;

    .line 1320
    .line 1321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v2

    .line 1325
    const/4 v3, 0x0

    .line 1326
    invoke-direct {v0, v3, v2, v3, v1}, Ls5/d;-><init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    iput-object v5, v0, Ls5/d;->e:Ljava/lang/Object;

    .line 1330
    .line 1331
    return-object v0

    .line 1332
    :cond_3d
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    throw v0

    .line 1337
    :cond_3e
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    throw v0

    .line 1342
    :cond_3f
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v0

    .line 1346
    throw v0

    .line 1347
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1348
    .line 1349
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1350
    .line 1351
    .line 1352
    throw v0

    .line 1353
    :cond_41
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    throw v0

    .line 1358
    :cond_42
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    throw v0

    .line 1363
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1364
    .line 1365
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1366
    .line 1367
    .line 1368
    throw v0

    .line 1369
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1370
    .line 1371
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1372
    .line 1373
    .line 1374
    throw v0

    .line 1375
    :cond_45
    invoke-static {}, Lm5/c;->a()Lm5/c;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    throw v0

    .line 1380
    :cond_46
    invoke-static {}, Lm5/f;->a()Lm5/f;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    throw v0

    .line 1385
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_10
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    :pswitch_data_3
    .packed-switch 0x384
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    :pswitch_data_4
    .packed-switch 0x39a
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    :pswitch_data_5
    .packed-switch 0x384
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    :pswitch_data_6
    .packed-switch 0x39a
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static c(Ls5/b;IIZIIII)Lf6/a;
    .locals 19

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
    move/from16 v3, p5

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/4 v6, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v6, 0x1

    .line 16
    :goto_0
    const/4 v7, 0x0

    .line 17
    move/from16 v10, p3

    .line 18
    .line 19
    move/from16 v9, p4

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    :goto_1
    const/4 v11, 0x2

    .line 23
    if-ge v8, v11, :cond_4

    .line 24
    .line 25
    :goto_2
    if-eqz v10, :cond_1

    .line 26
    .line 27
    if-lt v9, v1, :cond_3

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    if-ge v9, v2, :cond_3

    .line 31
    .line 32
    :goto_3
    invoke-virtual {v0, v9, v3}, Ls5/b;->b(II)Z

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    if-ne v10, v12, :cond_3

    .line 37
    .line 38
    sub-int v12, p4, v9

    .line 39
    .line 40
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-le v12, v11, :cond_2

    .line 45
    .line 46
    move/from16 v9, p4

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_2
    add-int/2addr v9, v6

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    neg-int v6, v6

    .line 52
    xor-int/lit8 v10, v10, 0x1

    .line 53
    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    :goto_4
    const/16 v6, 0x8

    .line 58
    .line 59
    new-array v8, v6, [I

    .line 60
    .line 61
    if-eqz p3, :cond_5

    .line 62
    .line 63
    const/4 v10, 0x1

    .line 64
    goto :goto_5

    .line 65
    :cond_5
    const/4 v10, -0x1

    .line 66
    :goto_5
    move/from16 v14, p3

    .line 67
    .line 68
    move v12, v9

    .line 69
    const/4 v13, 0x0

    .line 70
    :goto_6
    if-eqz p3, :cond_6

    .line 71
    .line 72
    if-ge v12, v2, :cond_8

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_6
    if-lt v12, v1, :cond_8

    .line 76
    .line 77
    :goto_7
    if-ge v13, v6, :cond_8

    .line 78
    .line 79
    invoke-virtual {v0, v12, v3}, Ls5/b;->b(II)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-ne v15, v14, :cond_7

    .line 84
    .line 85
    aget v15, v8, v13

    .line 86
    .line 87
    add-int/2addr v15, v5

    .line 88
    aput v15, v8, v13

    .line 89
    .line 90
    add-int/2addr v12, v10

    .line 91
    goto :goto_6

    .line 92
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 93
    .line 94
    xor-int/lit8 v14, v14, 0x1

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_8
    const/4 v0, 0x7

    .line 98
    if-eq v13, v6, :cond_b

    .line 99
    .line 100
    if-eqz p3, :cond_9

    .line 101
    .line 102
    move v1, v2

    .line 103
    :cond_9
    if-ne v12, v1, :cond_a

    .line 104
    .line 105
    if-ne v13, v0, :cond_a

    .line 106
    .line 107
    goto :goto_8

    .line 108
    :cond_a
    const/4 v8, 0x0

    .line 109
    :cond_b
    :goto_8
    if-nez v8, :cond_d

    .line 110
    .line 111
    :cond_c
    const/16 p4, 0x0

    .line 112
    .line 113
    goto/16 :goto_17

    .line 114
    .line 115
    :cond_d
    invoke-static {v8}, Lp4/e;->C([I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz p3, :cond_e

    .line 120
    .line 121
    add-int v2, v9, v1

    .line 122
    .line 123
    goto :goto_a

    .line 124
    :cond_e
    const/4 v2, 0x0

    .line 125
    :goto_9
    array-length v10, v8

    .line 126
    div-int/2addr v10, v11

    .line 127
    if-ge v2, v10, :cond_f

    .line 128
    .line 129
    aget v10, v8, v2

    .line 130
    .line 131
    array-length v12, v8

    .line 132
    sub-int/2addr v12, v5

    .line 133
    sub-int/2addr v12, v2

    .line 134
    aget v12, v8, v12

    .line 135
    .line 136
    aput v12, v8, v2

    .line 137
    .line 138
    array-length v12, v8

    .line 139
    sub-int/2addr v12, v5

    .line 140
    sub-int/2addr v12, v2

    .line 141
    aput v10, v8, v12

    .line 142
    .line 143
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_9

    .line 146
    :cond_f
    sub-int v2, v9, v1

    .line 147
    .line 148
    move/from16 v18, v9

    .line 149
    .line 150
    move v9, v2

    .line 151
    move/from16 v2, v18

    .line 152
    .line 153
    :goto_a
    add-int/lit8 v10, p6, -0x2

    .line 154
    .line 155
    if-gt v10, v1, :cond_c

    .line 156
    .line 157
    add-int/lit8 v10, p7, 0x2

    .line 158
    .line 159
    if-gt v1, v10, :cond_c

    .line 160
    .line 161
    sget-object v1, Lf6/f;->a:[[F

    .line 162
    .line 163
    invoke-static {v8}, Lp4/e;->C([I)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    int-to-float v1, v1

    .line 168
    new-array v10, v6, [I

    .line 169
    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    :goto_b
    const/16 v15, 0x11

    .line 174
    .line 175
    if-ge v12, v15, :cond_11

    .line 176
    .line 177
    const/high16 v15, 0x42080000    # 34.0f

    .line 178
    .line 179
    div-float v15, v1, v15

    .line 180
    .line 181
    int-to-float v0, v12

    .line 182
    mul-float v0, v0, v1

    .line 183
    .line 184
    const/high16 v16, 0x41880000    # 17.0f

    .line 185
    .line 186
    div-float v0, v0, v16

    .line 187
    .line 188
    add-float/2addr v0, v15

    .line 189
    aget v15, v8, v14

    .line 190
    .line 191
    add-int/2addr v15, v13

    .line 192
    const/16 p4, 0x0

    .line 193
    .line 194
    int-to-float v3, v15

    .line 195
    cmpg-float v0, v3, v0

    .line 196
    .line 197
    if-gtz v0, :cond_10

    .line 198
    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    move v13, v15

    .line 202
    :cond_10
    aget v0, v10, v14

    .line 203
    .line 204
    add-int/2addr v0, v5

    .line 205
    aput v0, v10, v14

    .line 206
    .line 207
    add-int/lit8 v12, v12, 0x1

    .line 208
    .line 209
    const/4 v0, 0x7

    .line 210
    goto :goto_b

    .line 211
    :cond_11
    const/16 p4, 0x0

    .line 212
    .line 213
    const-wide/16 v0, 0x0

    .line 214
    .line 215
    const/4 v3, 0x0

    .line 216
    :goto_c
    if-ge v3, v6, :cond_14

    .line 217
    .line 218
    const/4 v12, 0x0

    .line 219
    :goto_d
    aget v13, v10, v3

    .line 220
    .line 221
    if-ge v12, v13, :cond_13

    .line 222
    .line 223
    shl-long/2addr v0, v5

    .line 224
    rem-int/lit8 v13, v3, 0x2

    .line 225
    .line 226
    if-nez v13, :cond_12

    .line 227
    .line 228
    const/4 v13, 0x1

    .line 229
    goto :goto_e

    .line 230
    :cond_12
    const/4 v13, 0x0

    .line 231
    :goto_e
    int-to-long v13, v13

    .line 232
    or-long/2addr v0, v13

    .line 233
    add-int/lit8 v12, v12, 0x1

    .line 234
    .line 235
    goto :goto_d

    .line 236
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_14
    long-to-int v1, v0

    .line 240
    const v0, 0x3ffff

    .line 241
    .line 242
    .line 243
    and-int v3, v1, v0

    .line 244
    .line 245
    sget-object v10, Le6/a;->b:[I

    .line 246
    .line 247
    invoke-static {v10, v3}, Ljava/util/Arrays;->binarySearch([II)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    sget-object v12, Le6/a;->c:[I

    .line 252
    .line 253
    if-gez v3, :cond_15

    .line 254
    .line 255
    const/4 v3, -0x1

    .line 256
    goto :goto_f

    .line 257
    :cond_15
    aget v3, v12, v3

    .line 258
    .line 259
    sub-int/2addr v3, v5

    .line 260
    rem-int/lit16 v3, v3, 0x3a1

    .line 261
    .line 262
    :goto_f
    if-ne v3, v4, :cond_16

    .line 263
    .line 264
    const/4 v1, -0x1

    .line 265
    :cond_16
    if-eq v1, v4, :cond_18

    .line 266
    .line 267
    :cond_17
    const p1, 0x3ffff

    .line 268
    .line 269
    .line 270
    goto :goto_13

    .line 271
    :cond_18
    invoke-static {v8}, Lp4/e;->C([I)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    new-array v3, v6, [F

    .line 276
    .line 277
    if-le v1, v5, :cond_19

    .line 278
    .line 279
    const/4 v13, 0x0

    .line 280
    :goto_10
    if-ge v13, v6, :cond_19

    .line 281
    .line 282
    aget v14, v8, v13

    .line 283
    .line 284
    int-to-float v14, v14

    .line 285
    int-to-float v15, v1

    .line 286
    div-float/2addr v14, v15

    .line 287
    aput v14, v3, v13

    .line 288
    .line 289
    add-int/lit8 v13, v13, 0x1

    .line 290
    .line 291
    goto :goto_10

    .line 292
    :cond_19
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 293
    .line 294
    .line 295
    const/4 v1, -0x1

    .line 296
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 297
    .line 298
    .line 299
    const/4 v13, 0x0

    .line 300
    :goto_11
    sget-object v14, Lf6/f;->a:[[F

    .line 301
    .line 302
    array-length v15, v14

    .line 303
    if-ge v13, v15, :cond_17

    .line 304
    .line 305
    aget-object v14, v14, v13

    .line 306
    .line 307
    const/4 v15, 0x0

    .line 308
    const p1, 0x3ffff

    .line 309
    .line 310
    .line 311
    const/4 v0, 0x0

    .line 312
    :goto_12
    if-ge v0, v6, :cond_1a

    .line 313
    .line 314
    aget v16, v14, v0

    .line 315
    .line 316
    aget v17, v3, v0

    .line 317
    .line 318
    sub-float v16, v16, v17

    .line 319
    .line 320
    mul-float v16, v16, v16

    .line 321
    .line 322
    add-float v15, v16, v15

    .line 323
    .line 324
    cmpl-float v16, v15, v8

    .line 325
    .line 326
    if-gez v16, :cond_1a

    .line 327
    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 329
    .line 330
    goto :goto_12

    .line 331
    :cond_1a
    cmpg-float v0, v15, v8

    .line 332
    .line 333
    if-gez v0, :cond_1b

    .line 334
    .line 335
    aget v1, v10, v13

    .line 336
    .line 337
    move v8, v15

    .line 338
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    .line 339
    .line 340
    const v0, 0x3ffff

    .line 341
    .line 342
    .line 343
    goto :goto_11

    .line 344
    :goto_13
    and-int v0, v1, p1

    .line 345
    .line 346
    invoke-static {v10, v0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-gez v0, :cond_1c

    .line 351
    .line 352
    const/4 v0, -0x1

    .line 353
    goto :goto_14

    .line 354
    :cond_1c
    aget v0, v12, v0

    .line 355
    .line 356
    sub-int/2addr v0, v5

    .line 357
    rem-int/lit16 v0, v0, 0x3a1

    .line 358
    .line 359
    :goto_14
    if-ne v0, v4, :cond_1d

    .line 360
    .line 361
    goto :goto_17

    .line 362
    :cond_1d
    new-instance v3, Lf6/a;

    .line 363
    .line 364
    new-array v4, v6, [I

    .line 365
    .line 366
    move v6, v1

    .line 367
    const/4 v1, 0x7

    .line 368
    const/4 v8, 0x0

    .line 369
    :goto_15
    and-int/lit8 v10, v6, 0x1

    .line 370
    .line 371
    if-eq v10, v8, :cond_1f

    .line 372
    .line 373
    add-int/lit8 v1, v1, -0x1

    .line 374
    .line 375
    if-ltz v1, :cond_1e

    .line 376
    .line 377
    move-object v8, v3

    .line 378
    move v3, v0

    .line 379
    move-object v0, v8

    .line 380
    move v8, v10

    .line 381
    goto :goto_16

    .line 382
    :cond_1e
    aget v1, v4, v7

    .line 383
    .line 384
    aget v5, v4, v11

    .line 385
    .line 386
    sub-int/2addr v1, v5

    .line 387
    const/4 v5, 0x4

    .line 388
    aget v5, v4, v5

    .line 389
    .line 390
    add-int/2addr v1, v5

    .line 391
    const/4 v5, 0x6

    .line 392
    aget v4, v4, v5

    .line 393
    .line 394
    sub-int/2addr v1, v4

    .line 395
    add-int/lit8 v1, v1, 0x9

    .line 396
    .line 397
    rem-int/lit8 v1, v1, 0x9

    .line 398
    .line 399
    const/4 v4, 0x1

    .line 400
    move/from16 p4, v0

    .line 401
    .line 402
    move/from16 p3, v1

    .line 403
    .line 404
    move/from16 p2, v2

    .line 405
    .line 406
    move-object/from16 p0, v3

    .line 407
    .line 408
    move/from16 p1, v9

    .line 409
    .line 410
    const/16 p5, 0x1

    .line 411
    .line 412
    invoke-direct/range {p0 .. p5}, Lf6/a;-><init>(IIIII)V

    .line 413
    .line 414
    .line 415
    move-object/from16 v0, p0

    .line 416
    .line 417
    return-object v0

    .line 418
    :cond_1f
    move-object/from16 v18, v3

    .line 419
    .line 420
    move v3, v0

    .line 421
    move-object/from16 v0, v18

    .line 422
    .line 423
    :goto_16
    aget v10, v4, v1

    .line 424
    .line 425
    add-int/2addr v10, v5

    .line 426
    aput v10, v4, v1

    .line 427
    .line 428
    shr-int/lit8 v6, v6, 0x1

    .line 429
    .line 430
    move/from16 v18, v3

    .line 431
    .line 432
    move-object v3, v0

    .line 433
    move/from16 v0, v18

    .line 434
    .line 435
    goto :goto_15

    .line 436
    :goto_17
    return-object p4
.end method

.method public static d(Ls5/b;Lf6/c;Lm5/o;ZII)Lf6/e;
    .locals 11

    .line 1
    move v3, p3

    .line 2
    new-instance v8, Lf6/e;

    .line 3
    .line 4
    invoke-direct {v8, p1, p3}, Lf6/e;-><init>(Lf6/c;Z)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v9, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x2

    .line 10
    if-ge v9, v0, :cond_4

    .line 11
    .line 12
    if-nez v9, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v10, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    const/4 v10, -0x1

    .line 19
    :goto_1
    iget v0, p2, Lm5/o;->a:F

    .line 20
    .line 21
    float-to-int v0, v0

    .line 22
    iget v1, p2, Lm5/o;->b:F

    .line 23
    .line 24
    float-to-int v1, v1

    .line 25
    move v4, v0

    .line 26
    move v5, v1

    .line 27
    :goto_2
    iget v0, p1, Lf6/c;->i:I

    .line 28
    .line 29
    if-gt v5, v0, :cond_3

    .line 30
    .line 31
    iget v0, p1, Lf6/c;->h:I

    .line 32
    .line 33
    if-lt v5, v0, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iget v2, p0, Ls5/b;->a:I

    .line 37
    .line 38
    move-object v0, p0

    .line 39
    move v6, p4

    .line 40
    move/from16 v7, p5

    .line 41
    .line 42
    invoke-static/range {v0 .. v7}, Lf6/g;->c(Ls5/b;IIZIIII)Lf6/a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v0, v8, Lu0/j;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, [Lf6/a;

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Lu0/j;->v(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    if-eqz p3, :cond_1

    .line 59
    .line 60
    iget v0, v1, Lf6/a;->b:I

    .line 61
    .line 62
    :goto_3
    move v4, v0

    .line 63
    goto :goto_4

    .line 64
    :cond_1
    iget v0, v1, Lf6/a;->c:I

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    :goto_4
    add-int/2addr v5, v10

    .line 68
    move v3, p3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 71
    .line 72
    move v3, p3

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    return-object v8
.end method
