.class public abstract Lc1/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    int-to-float v0, v0

    .line 3
    sput v0, Lc1/v;->a:F

    .line 4
    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    sput v1, Lc1/v;->b:F

    .line 9
    .line 10
    sput v0, Lc1/v;->c:F

    .line 11
    .line 12
    sput v0, Lc1/v;->d:F

    .line 13
    .line 14
    return-void
.end method

.method public static final a(ZLr1/p;ZLc1/q;Lf1/s;I)V
    .locals 33

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    const v0, -0x53d92a91

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v7, v1}, Lf1/s;->g(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int v0, p5, v0

    .line 21
    .line 22
    const v2, 0x32d80

    .line 23
    .line 24
    .line 25
    or-int/2addr v0, v2

    .line 26
    const v2, 0x12493

    .line 27
    .line 28
    .line 29
    and-int/2addr v0, v2

    .line 30
    const v2, 0x12492

    .line 31
    .line 32
    .line 33
    if-ne v0, v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    move-object/from16 v2, p1

    .line 46
    .line 47
    move/from16 v3, p2

    .line 48
    .line 49
    move-object/from16 v4, p3

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_2
    :goto_1
    invoke-virtual {v7}, Lf1/s;->S()V

    .line 54
    .line 55
    .line 56
    and-int/lit8 v0, p5, 0x1

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v7}, Lf1/s;->x()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 68
    .line 69
    .line 70
    move-object/from16 v4, p1

    .line 71
    .line 72
    move/from16 v5, p2

    .line 73
    .line 74
    move-object/from16 v6, p3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    sget-object v0, Lc1/y;->a:Lf1/w2;

    .line 78
    .line 79
    invoke-virtual {v7, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lc1/w;

    .line 84
    .line 85
    iget-object v2, v0, Lc1/w;->M:Lc1/q;

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    new-instance v8, Lc1/q;

    .line 90
    .line 91
    sget v2, Le1/a;->d:I

    .line 92
    .line 93
    invoke-static {v0, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    sget-wide v11, Ly1/q;->l:J

    .line 98
    .line 99
    sget v2, Le1/a;->b:I

    .line 100
    .line 101
    invoke-static {v0, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v13

    .line 105
    sget v3, Le1/a;->c:I

    .line 106
    .line 107
    invoke-static {v0, v3}, Lc1/y;->c(Lc1/w;I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    const v6, 0x3ec28f5c    # 0.38f

    .line 112
    .line 113
    .line 114
    invoke-static {v6, v4, v5}, Ly1/q;->b(FJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v17

    .line 118
    invoke-static {v0, v3}, Lc1/y;->c(Lc1/w;I)J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    invoke-static {v6, v4, v5}, Ly1/q;->b(FJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v21

    .line 126
    invoke-static {v0, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v23

    .line 130
    sget v2, Le1/a;->f:I

    .line 131
    .line 132
    invoke-static {v0, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v25

    .line 136
    invoke-static {v0, v3}, Lc1/y;->c(Lc1/w;I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    invoke-static {v6, v4, v5}, Ly1/q;->b(FJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide v27

    .line 144
    sget v2, Le1/a;->e:I

    .line 145
    .line 146
    invoke-static {v0, v2}, Lc1/y;->c(Lc1/w;I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    invoke-static {v6, v4, v5}, Ly1/q;->b(FJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v29

    .line 154
    invoke-static {v0, v3}, Lc1/y;->c(Lc1/w;I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {v6, v2, v3}, Ly1/q;->b(FJ)J

    .line 159
    .line 160
    .line 161
    move-result-wide v31

    .line 162
    move-wide v15, v11

    .line 163
    move-wide/from16 v19, v11

    .line 164
    .line 165
    invoke-direct/range {v8 .. v32}, Lc1/q;-><init>(JJJJJJJJJJJJ)V

    .line 166
    .line 167
    .line 168
    iput-object v8, v0, Lc1/w;->M:Lc1/q;

    .line 169
    .line 170
    move-object v2, v8

    .line 171
    :cond_5
    const/4 v0, 0x1

    .line 172
    sget-object v3, Lr1/m;->a:Lr1/m;

    .line 173
    .line 174
    move-object v6, v2

    .line 175
    move-object v4, v3

    .line 176
    const/4 v5, 0x1

    .line 177
    :goto_3
    invoke-virtual {v7}, Lf1/s;->q()V

    .line 178
    .line 179
    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    sget-object v0, La3/a;->a:La3/a;

    .line 183
    .line 184
    :goto_4
    move-object v2, v0

    .line 185
    goto :goto_5

    .line 186
    :cond_6
    sget-object v0, La3/a;->b:La3/a;

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :goto_5
    const v0, 0x3e66fb2a

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v0}, Lf1/s;->W(I)V

    .line 193
    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-virtual {v7, v0}, Lf1/s;->p(Z)V

    .line 197
    .line 198
    .line 199
    const v8, 0x30d80

    .line 200
    .line 201
    .line 202
    const/4 v3, 0x0

    .line 203
    invoke-static/range {v2 .. v8}, Lc1/v;->c(La3/a;Lf9/a;Lr1/p;ZLc1/q;Lf1/s;I)V

    .line 204
    .line 205
    .line 206
    move-object v2, v4

    .line 207
    move v3, v5

    .line 208
    move-object v4, v6

    .line 209
    :goto_6
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-eqz v6, :cond_7

    .line 214
    .line 215
    new-instance v0, Lc1/r;

    .line 216
    .line 217
    move/from16 v5, p5

    .line 218
    .line 219
    invoke-direct/range {v0 .. v5}, Lc1/r;-><init>(ZLr1/p;ZLc1/q;I)V

    .line 220
    .line 221
    .line 222
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 223
    .line 224
    :cond_7
    return-void
.end method

.method public static final b(ZLa3/a;Lr1/p;Lc1/q;Lf1/s;I)V
    .locals 25

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v10, p4

    .line 10
    .line 11
    move/from16 v0, p5

    .line 12
    .line 13
    const v5, 0x77a265e0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v5}, Lf1/s;->Y(I)Lf1/s;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v5, v0, 0x6

    .line 20
    .line 21
    const/4 v12, 0x2

    .line 22
    if-nez v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v10, v1}, Lf1/s;->g(Z)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v5, 0x2

    .line 33
    :goto_0
    or-int/2addr v5, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v5, v0

    .line 36
    :goto_1
    and-int/lit8 v6, v0, 0x30

    .line 37
    .line 38
    if-nez v6, :cond_3

    .line 39
    .line 40
    invoke-virtual {v10, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    const/16 v6, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v6, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v5, v6

    .line 52
    :cond_3
    and-int/lit16 v6, v0, 0x180

    .line 53
    .line 54
    if-nez v6, :cond_5

    .line 55
    .line 56
    invoke-virtual {v10, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_4

    .line 61
    .line 62
    const/16 v6, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v6, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v5, v6

    .line 68
    :cond_5
    and-int/lit16 v6, v0, 0xc00

    .line 69
    .line 70
    if-nez v6, :cond_7

    .line 71
    .line 72
    invoke-virtual {v10, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_6

    .line 77
    .line 78
    const/16 v6, 0x800

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    const/16 v6, 0x400

    .line 82
    .line 83
    :goto_4
    or-int/2addr v5, v6

    .line 84
    :cond_7
    and-int/lit16 v6, v5, 0x493

    .line 85
    .line 86
    const/16 v7, 0x492

    .line 87
    .line 88
    if-ne v6, v7, :cond_9

    .line 89
    .line 90
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_8

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_8
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1a

    .line 101
    .line 102
    :cond_9
    :goto_5
    shr-int/lit8 v5, v5, 0x3

    .line 103
    .line 104
    and-int/lit8 v5, v5, 0xe

    .line 105
    .line 106
    invoke-static {v2, v10, v5, v12}, Lv/u0;->c(Ljava/lang/Enum;Lf1/s;II)Lv/s0;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iget-object v13, v5, Lv/s0;->b:Lf1/k1;

    .line 111
    .line 112
    sget-object v9, Lv/d;->j:Lv/w0;

    .line 113
    .line 114
    invoke-virtual {v5}, Lv/s0;->c()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, La3/a;

    .line 119
    .line 120
    const v7, 0x6b4ad266

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v7}, Lf1/s;->W(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    const/4 v15, 0x1

    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    if-eqz v6, :cond_a

    .line 134
    .line 135
    if-eq v6, v15, :cond_c

    .line 136
    .line 137
    if-ne v6, v12, :cond_b

    .line 138
    .line 139
    :cond_a
    const/high16 v6, 0x3f800000    # 1.0f

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_b
    new-instance v0, Lac/p;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_c
    const/4 v6, 0x0

    .line 149
    :goto_6
    const/4 v8, 0x0

    .line 150
    invoke-virtual {v10, v8}, Lf1/s;->p(Z)V

    .line 151
    .line 152
    .line 153
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v13}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    check-cast v11, La3/a;

    .line 162
    .line 163
    invoke-virtual {v10, v7}, Lf1/s;->W(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_d

    .line 171
    .line 172
    if-eq v7, v15, :cond_f

    .line 173
    .line 174
    if-ne v7, v12, :cond_e

    .line 175
    .line 176
    :cond_d
    const/high16 v7, 0x3f800000    # 1.0f

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_e
    new-instance v0, Lac/p;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_f
    const/4 v7, 0x0

    .line 186
    :goto_7
    invoke-virtual {v10, v8}, Lf1/s;->p(Z)V

    .line 187
    .line 188
    .line 189
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v5}, Lv/s0;->e()Lv/o0;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    const v14, 0x51daeb66

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v14}, Lf1/s;->W(I)V

    .line 201
    .line 202
    .line 203
    iget-object v14, v11, Lv/o0;->a:Ljava/lang/Object;

    .line 204
    .line 205
    const/16 v12, 0x64

    .line 206
    .line 207
    const/4 v15, 0x0

    .line 208
    const/4 v8, 0x6

    .line 209
    sget-object v0, La3/a;->b:La3/a;

    .line 210
    .line 211
    if-ne v14, v0, :cond_10

    .line 212
    .line 213
    invoke-static {v12, v8, v15}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    :goto_8
    const/4 v14, 0x0

    .line 218
    goto :goto_9

    .line 219
    :cond_10
    iget-object v11, v11, Lv/o0;->b:Ljava/lang/Object;

    .line 220
    .line 221
    if-ne v11, v0, :cond_11

    .line 222
    .line 223
    new-instance v11, Lv/e0;

    .line 224
    .line 225
    invoke-direct {v11, v12}, Lv/e0;-><init>(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_11
    const/4 v11, 0x7

    .line 230
    invoke-static {v11, v15}, Lv/d;->j(ILjava/lang/Object;)Lv/g0;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    goto :goto_8

    .line 235
    :goto_9
    invoke-virtual {v10, v14}, Lf1/s;->p(Z)V

    .line 236
    .line 237
    .line 238
    move-object v8, v11

    .line 239
    const/16 v17, 0x6

    .line 240
    .line 241
    const/4 v11, 0x0

    .line 242
    invoke-static/range {v5 .. v11}, Lv/u0;->b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;

    .line 243
    .line 244
    .line 245
    move-result-object v22

    .line 246
    invoke-virtual {v5}, Lv/s0;->c()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    check-cast v6, La3/a;

    .line 251
    .line 252
    const v7, -0x550dd391

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v7}, Lf1/s;->W(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_13

    .line 263
    .line 264
    const/4 v8, 0x1

    .line 265
    if-eq v6, v8, :cond_13

    .line 266
    .line 267
    const/4 v8, 0x2

    .line 268
    if-ne v6, v8, :cond_12

    .line 269
    .line 270
    const/high16 v6, 0x3f800000    # 1.0f

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_12
    new-instance v0, Lac/p;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 276
    .line 277
    .line 278
    throw v0

    .line 279
    :cond_13
    const/4 v6, 0x0

    .line 280
    :goto_a
    invoke-virtual {v10, v14}, Lf1/s;->p(Z)V

    .line 281
    .line 282
    .line 283
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-virtual {v13}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    check-cast v8, La3/a;

    .line 292
    .line 293
    invoke-virtual {v10, v7}, Lf1/s;->W(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_15

    .line 301
    .line 302
    const/4 v8, 0x1

    .line 303
    if-eq v7, v8, :cond_15

    .line 304
    .line 305
    const/4 v8, 0x2

    .line 306
    if-ne v7, v8, :cond_14

    .line 307
    .line 308
    const/high16 v16, 0x3f800000    # 1.0f

    .line 309
    .line 310
    goto :goto_b

    .line 311
    :cond_14
    new-instance v0, Lac/p;

    .line 312
    .line 313
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :cond_15
    :goto_b
    invoke-virtual {v10, v14}, Lf1/s;->p(Z)V

    .line 318
    .line 319
    .line 320
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    invoke-virtual {v5}, Lv/s0;->e()Lv/o0;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    const v13, -0x4ef1fa91

    .line 329
    .line 330
    .line 331
    invoke-virtual {v10, v13}, Lf1/s;->W(I)V

    .line 332
    .line 333
    .line 334
    iget-object v13, v8, Lv/o0;->a:Ljava/lang/Object;

    .line 335
    .line 336
    if-ne v13, v0, :cond_16

    .line 337
    .line 338
    new-instance v8, Lv/e0;

    .line 339
    .line 340
    invoke-direct {v8, v14}, Lv/e0;-><init>(I)V

    .line 341
    .line 342
    .line 343
    :goto_c
    const/4 v13, 0x6

    .line 344
    goto :goto_d

    .line 345
    :cond_16
    iget-object v8, v8, Lv/o0;->b:Ljava/lang/Object;

    .line 346
    .line 347
    if-ne v8, v0, :cond_17

    .line 348
    .line 349
    new-instance v8, Lv/e0;

    .line 350
    .line 351
    invoke-direct {v8, v12}, Lv/e0;-><init>(I)V

    .line 352
    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_17
    const/4 v13, 0x6

    .line 356
    invoke-static {v12, v13, v15}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    :goto_d
    invoke-virtual {v10, v14}, Lf1/s;->p(Z)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v12, v22

    .line 364
    .line 365
    invoke-static/range {v5 .. v11}, Lv/u0;->b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 374
    .line 375
    if-ne v6, v7, :cond_18

    .line 376
    .line 377
    new-instance v6, Lc1/p;

    .line 378
    .line 379
    invoke-direct {v6}, Lc1/p;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    :cond_18
    move-object/from16 v24, v6

    .line 386
    .line 387
    check-cast v24, Lc1/p;

    .line 388
    .line 389
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    if-ne v2, v0, :cond_19

    .line 393
    .line 394
    iget-wide v8, v4, Lc1/q;->b:J

    .line 395
    .line 396
    goto :goto_e

    .line 397
    :cond_19
    iget-wide v8, v4, Lc1/q;->a:J

    .line 398
    .line 399
    :goto_e
    if-ne v2, v0, :cond_1a

    .line 400
    .line 401
    const/16 v11, 0x64

    .line 402
    .line 403
    goto :goto_f

    .line 404
    :cond_1a
    const/16 v11, 0x32

    .line 405
    .line 406
    :goto_f
    invoke-static {v11, v13, v15}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 407
    .line 408
    .line 409
    move-result-object v11

    .line 410
    invoke-static {v8, v9, v11, v10, v14}, Lu/g;->a(JLv/v0;Lf1/s;I)Lf1/v2;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    if-eqz v1, :cond_1e

    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 417
    .line 418
    .line 419
    move-result v9

    .line 420
    if-eqz v9, :cond_1b

    .line 421
    .line 422
    const/4 v11, 0x1

    .line 423
    if-eq v9, v11, :cond_1d

    .line 424
    .line 425
    const/4 v11, 0x2

    .line 426
    if-ne v9, v11, :cond_1c

    .line 427
    .line 428
    :cond_1b
    move-object v9, v7

    .line 429
    goto :goto_10

    .line 430
    :cond_1c
    new-instance v0, Lac/p;

    .line 431
    .line 432
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :cond_1d
    move-object v9, v7

    .line 437
    iget-wide v6, v4, Lc1/q;->d:J

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :goto_10
    iget-wide v6, v4, Lc1/q;->c:J

    .line 441
    .line 442
    goto :goto_11

    .line 443
    :cond_1e
    move-object v9, v7

    .line 444
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    if-eqz v6, :cond_21

    .line 449
    .line 450
    const/4 v7, 0x1

    .line 451
    if-eq v6, v7, :cond_20

    .line 452
    .line 453
    const/4 v7, 0x2

    .line 454
    if-ne v6, v7, :cond_1f

    .line 455
    .line 456
    iget-wide v6, v4, Lc1/q;->g:J

    .line 457
    .line 458
    goto :goto_11

    .line 459
    :cond_1f
    new-instance v0, Lac/p;

    .line 460
    .line 461
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 462
    .line 463
    .line 464
    throw v0

    .line 465
    :cond_20
    iget-wide v6, v4, Lc1/q;->f:J

    .line 466
    .line 467
    goto :goto_11

    .line 468
    :cond_21
    iget-wide v6, v4, Lc1/q;->e:J

    .line 469
    .line 470
    :goto_11
    if-eqz v1, :cond_23

    .line 471
    .line 472
    const v11, -0x1760adc2

    .line 473
    .line 474
    .line 475
    invoke-virtual {v10, v11}, Lf1/s;->W(I)V

    .line 476
    .line 477
    .line 478
    if-ne v2, v0, :cond_22

    .line 479
    .line 480
    const/16 v11, 0x64

    .line 481
    .line 482
    goto :goto_12

    .line 483
    :cond_22
    const/16 v11, 0x32

    .line 484
    .line 485
    :goto_12
    invoke-static {v11, v13, v15}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    invoke-static {v6, v7, v11, v10, v14}, Lu/g;->a(JLv/v0;Lf1/s;I)Lf1/v2;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-virtual {v10, v14}, Lf1/s;->p(Z)V

    .line 494
    .line 495
    .line 496
    goto :goto_13

    .line 497
    :cond_23
    const v11, -0x175dec82

    .line 498
    .line 499
    .line 500
    invoke-virtual {v10, v11}, Lf1/s;->W(I)V

    .line 501
    .line 502
    .line 503
    new-instance v11, Ly1/q;

    .line 504
    .line 505
    invoke-direct {v11, v6, v7}, Ly1/q;-><init>(J)V

    .line 506
    .line 507
    .line 508
    invoke-static {v11, v10}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-virtual {v10, v14}, Lf1/s;->p(Z)V

    .line 513
    .line 514
    .line 515
    :goto_13
    if-eqz v1, :cond_27

    .line 516
    .line 517
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eqz v7, :cond_26

    .line 522
    .line 523
    const/4 v11, 0x1

    .line 524
    if-eq v7, v11, :cond_25

    .line 525
    .line 526
    const/4 v11, 0x2

    .line 527
    if-ne v7, v11, :cond_24

    .line 528
    .line 529
    goto :goto_14

    .line 530
    :cond_24
    new-instance v0, Lac/p;

    .line 531
    .line 532
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 533
    .line 534
    .line 535
    throw v0

    .line 536
    :cond_25
    iget-wide v13, v4, Lc1/q;->i:J

    .line 537
    .line 538
    goto :goto_15

    .line 539
    :cond_26
    :goto_14
    iget-wide v13, v4, Lc1/q;->h:J

    .line 540
    .line 541
    goto :goto_15

    .line 542
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 543
    .line 544
    .line 545
    move-result v7

    .line 546
    if-eqz v7, :cond_2a

    .line 547
    .line 548
    const/4 v11, 0x1

    .line 549
    if-eq v7, v11, :cond_29

    .line 550
    .line 551
    const/4 v11, 0x2

    .line 552
    if-ne v7, v11, :cond_28

    .line 553
    .line 554
    iget-wide v13, v4, Lc1/q;->l:J

    .line 555
    .line 556
    goto :goto_15

    .line 557
    :cond_28
    new-instance v0, Lac/p;

    .line 558
    .line 559
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 560
    .line 561
    .line 562
    throw v0

    .line 563
    :cond_29
    iget-wide v13, v4, Lc1/q;->k:J

    .line 564
    .line 565
    goto :goto_15

    .line 566
    :cond_2a
    iget-wide v13, v4, Lc1/q;->j:J

    .line 567
    .line 568
    :goto_15
    if-eqz v1, :cond_2c

    .line 569
    .line 570
    const v7, -0x66dddeb1

    .line 571
    .line 572
    .line 573
    invoke-virtual {v10, v7}, Lf1/s;->W(I)V

    .line 574
    .line 575
    .line 576
    if-ne v2, v0, :cond_2b

    .line 577
    .line 578
    const/16 v0, 0x64

    .line 579
    .line 580
    :goto_16
    const/4 v7, 0x6

    .line 581
    goto :goto_17

    .line 582
    :cond_2b
    const/16 v0, 0x32

    .line 583
    .line 584
    goto :goto_16

    .line 585
    :goto_17
    invoke-static {v0, v7, v15}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const/4 v7, 0x0

    .line 590
    invoke-static {v13, v14, v0, v10, v7}, Lu/g;->a(JLv/v0;Lf1/s;I)Lf1/v2;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {v10, v7}, Lf1/s;->p(Z)V

    .line 595
    .line 596
    .line 597
    :goto_18
    const/4 v11, 0x2

    .line 598
    goto :goto_19

    .line 599
    :cond_2c
    const/4 v7, 0x0

    .line 600
    const v0, -0x66db1d71

    .line 601
    .line 602
    .line 603
    invoke-virtual {v10, v0}, Lf1/s;->W(I)V

    .line 604
    .line 605
    .line 606
    new-instance v0, Ly1/q;

    .line 607
    .line 608
    invoke-direct {v0, v13, v14}, Ly1/q;-><init>(J)V

    .line 609
    .line 610
    .line 611
    invoke-static {v0, v10}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v10, v7}, Lf1/s;->p(Z)V

    .line 616
    .line 617
    .line 618
    goto :goto_18

    .line 619
    :goto_19
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/c;->n(Lr1/p;I)Lr1/p;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    invoke-static {v7}, Landroidx/compose/foundation/layout/c;->e(Lr1/p;)Lr1/p;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    invoke-virtual {v10, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v11

    .line 631
    invoke-virtual {v10, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v13

    .line 635
    or-int/2addr v11, v13

    .line 636
    invoke-virtual {v10, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v13

    .line 640
    or-int/2addr v11, v13

    .line 641
    invoke-virtual {v10, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v13

    .line 645
    or-int/2addr v11, v13

    .line 646
    invoke-virtual {v10, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v13

    .line 650
    or-int/2addr v11, v13

    .line 651
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v13

    .line 655
    if-nez v11, :cond_2d

    .line 656
    .line 657
    if-ne v13, v9, :cond_2e

    .line 658
    .line 659
    :cond_2d
    new-instance v18, Lc1/s;

    .line 660
    .line 661
    move-object/from16 v20, v0

    .line 662
    .line 663
    move-object/from16 v23, v5

    .line 664
    .line 665
    move-object/from16 v19, v6

    .line 666
    .line 667
    move-object/from16 v21, v8

    .line 668
    .line 669
    move-object/from16 v22, v12

    .line 670
    .line 671
    invoke-direct/range {v18 .. v24}, Lc1/s;-><init>(Lf1/v2;Lf1/v2;Lf1/v2;Lv/p0;Lv/p0;Lc1/p;)V

    .line 672
    .line 673
    .line 674
    move-object/from16 v13, v18

    .line 675
    .line 676
    invoke-virtual {v10, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    :cond_2e
    check-cast v13, Lf9/k;

    .line 680
    .line 681
    const/4 v14, 0x0

    .line 682
    invoke-static {v14, v10, v13, v7}, Lp4/e;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 683
    .line 684
    .line 685
    :goto_1a
    invoke-virtual {v10}, Lf1/s;->r()Lf1/w1;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    if-eqz v6, :cond_2f

    .line 690
    .line 691
    new-instance v0, Lc1/t;

    .line 692
    .line 693
    move/from16 v5, p5

    .line 694
    .line 695
    invoke-direct/range {v0 .. v5}, Lc1/t;-><init>(ZLa3/a;Lr1/p;Lc1/q;I)V

    .line 696
    .line 697
    .line 698
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 699
    .line 700
    :cond_2f
    return-void
.end method

.method public static final c(La3/a;Lf9/a;Lr1/p;ZLc1/q;Lf1/s;I)V
    .locals 9

    .line 1
    const v0, -0x5fdd98b1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x6

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x2

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p5, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p6

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p6

    .line 25
    :goto_1
    and-int/lit8 v3, p6, 0x30

    .line 26
    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    invoke-virtual {p5, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v3, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v3

    .line 41
    :cond_3
    and-int/lit16 v3, p6, 0x180

    .line 42
    .line 43
    if-nez v3, :cond_5

    .line 44
    .line 45
    invoke-virtual {p5, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    const/16 v3, 0x100

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    const/16 v3, 0x80

    .line 55
    .line 56
    :goto_3
    or-int/2addr v0, v3

    .line 57
    :cond_5
    and-int/lit16 v3, p6, 0xc00

    .line 58
    .line 59
    if-nez v3, :cond_7

    .line 60
    .line 61
    invoke-virtual {p5, p3}, Lf1/s;->g(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    const/16 v3, 0x800

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_6
    const/16 v3, 0x400

    .line 71
    .line 72
    :goto_4
    or-int/2addr v0, v3

    .line 73
    :cond_7
    and-int/lit16 v3, p6, 0x6000

    .line 74
    .line 75
    if-nez v3, :cond_9

    .line 76
    .line 77
    invoke-virtual {p5, p4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_8

    .line 82
    .line 83
    const/16 v3, 0x4000

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_8
    const/16 v3, 0x2000

    .line 87
    .line 88
    :goto_5
    or-int/2addr v0, v3

    .line 89
    :cond_9
    const/high16 v3, 0x30000

    .line 90
    .line 91
    and-int/2addr v3, p6

    .line 92
    if-nez v3, :cond_b

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-virtual {p5, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_a

    .line 100
    .line 101
    const/high16 v3, 0x20000

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_a
    const/high16 v3, 0x10000

    .line 105
    .line 106
    :goto_6
    or-int/2addr v0, v3

    .line 107
    :cond_b
    const v3, 0x12493

    .line 108
    .line 109
    .line 110
    and-int/2addr v3, v0

    .line 111
    const v4, 0x12492

    .line 112
    .line 113
    .line 114
    if-ne v3, v4, :cond_d

    .line 115
    .line 116
    invoke-virtual {p5}, Lf1/s;->z()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_c

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_c
    invoke-virtual {p5}, Lf1/s;->Q()V

    .line 124
    .line 125
    .line 126
    move-object v4, p0

    .line 127
    move-object v7, p5

    .line 128
    move-object p5, p4

    .line 129
    move p4, p3

    .line 130
    goto :goto_a

    .line 131
    :cond_d
    :goto_7
    invoke-virtual {p5}, Lf1/s;->S()V

    .line 132
    .line 133
    .line 134
    and-int/lit8 v3, p6, 0x1

    .line 135
    .line 136
    if-eqz v3, :cond_f

    .line 137
    .line 138
    invoke-virtual {p5}, Lf1/s;->x()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_e

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_e
    invoke-virtual {p5}, Lf1/s;->Q()V

    .line 146
    .line 147
    .line 148
    :cond_f
    :goto_8
    invoke-virtual {p5}, Lf1/s;->q()V

    .line 149
    .line 150
    .line 151
    const v3, -0x5cbc2c2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p5, v3}, Lf1/s;->W(I)V

    .line 155
    .line 156
    .line 157
    sget-object v3, Lr1/m;->a:Lr1/m;

    .line 158
    .line 159
    if-eqz p1, :cond_10

    .line 160
    .line 161
    sget v4, Le1/a;->a:F

    .line 162
    .line 163
    int-to-float v2, v2

    .line 164
    div-float/2addr v4, v2

    .line 165
    const/16 v2, 0x36

    .line 166
    .line 167
    invoke-static {v4, p5, v2, v1}, Lc1/h1;->a(FLf1/s;II)Lx/n0;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v2, Ly2/g;

    .line 172
    .line 173
    const/4 v4, 0x1

    .line 174
    invoke-direct {v2, v4}, Ly2/g;-><init>(I)V

    .line 175
    .line 176
    .line 177
    invoke-static {p0, p1, v1, v2, p3}, Landroidx/compose/foundation/selection/b;->b(La3/a;Lf9/a;Lx/n0;Ly2/g;Z)Lr1/p;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    goto :goto_9

    .line 182
    :cond_10
    move-object v1, v3

    .line 183
    :goto_9
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p5, v2}, Lf1/s;->p(Z)V

    .line 185
    .line 186
    .line 187
    if-eqz p1, :cond_11

    .line 188
    .line 189
    sget-object v2, Lc1/l0;->a:Lf1/w2;

    .line 190
    .line 191
    sget-object v3, Landroidx/compose/material3/MinimumInteractiveModifier;->a:Landroidx/compose/material3/MinimumInteractiveModifier;

    .line 192
    .line 193
    :cond_11
    invoke-interface {p2, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-interface {v2, v1}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    sget v2, Lc1/v;->a:F

    .line 202
    .line 203
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/a;->h(Lr1/p;F)Lr1/p;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    shr-int/lit8 v1, v0, 0x9

    .line 208
    .line 209
    and-int/lit8 v1, v1, 0xe

    .line 210
    .line 211
    shl-int/lit8 v2, v0, 0x3

    .line 212
    .line 213
    and-int/lit8 v2, v2, 0x70

    .line 214
    .line 215
    or-int/2addr v1, v2

    .line 216
    shr-int/lit8 v0, v0, 0x3

    .line 217
    .line 218
    and-int/lit16 v0, v0, 0x1c00

    .line 219
    .line 220
    or-int v8, v1, v0

    .line 221
    .line 222
    move-object v4, p0

    .line 223
    move v3, p3

    .line 224
    move-object v6, p4

    .line 225
    move-object v7, p5

    .line 226
    invoke-static/range {v3 .. v8}, Lc1/v;->b(ZLa3/a;Lr1/p;Lc1/q;Lf1/s;I)V

    .line 227
    .line 228
    .line 229
    move p4, v3

    .line 230
    move-object p5, v6

    .line 231
    :goto_a
    invoke-virtual {v7}, Lf1/s;->r()Lf1/w1;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    if-eqz v0, :cond_12

    .line 236
    .line 237
    new-instance p0, Lc1/u;

    .line 238
    .line 239
    move-object p3, p2

    .line 240
    move-object p2, p1

    .line 241
    move-object p1, v4

    .line 242
    invoke-direct/range {p0 .. p6}, Lc1/u;-><init>(La3/a;Lf9/a;Lr1/p;ZLc1/q;I)V

    .line 243
    .line 244
    .line 245
    iput-object p0, v0, Lf1/w1;->d:Lf9/n;

    .line 246
    .line 247
    :cond_12
    return-void
.end method
