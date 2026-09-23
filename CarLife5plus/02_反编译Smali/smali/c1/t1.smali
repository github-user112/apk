.class public final Lc1/t1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lc1/t1;

.field public static final b:F

.field public static final c:F

.field public static final d:Ly1/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc1/t1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc1/t1;->a:Lc1/t1;

    .line 7
    .line 8
    sget v0, Le1/m;->e:F

    .line 9
    .line 10
    sput v0, Lc1/t1;->b:F

    .line 11
    .line 12
    sput v0, Lc1/t1;->c:F

    .line 13
    .line 14
    invoke-static {}, Ly1/j;->a()Ly1/h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lc1/t1;->d:Ly1/h;

    .line 19
    .line 20
    return-void
.end method

.method public static c(Lf1/s;)Lc1/m1;
    .locals 27

    .line 1
    sget-object v0, Lc1/y;->a:Lf1/w2;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lc1/w;

    .line 10
    .line 11
    iget-object v1, v0, Lc1/w;->N:Lc1/m1;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v2, Lc1/m1;

    .line 16
    .line 17
    sget v1, Le1/m;->a:F

    .line 18
    .line 19
    const/16 v1, 0x1a

    .line 20
    .line 21
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    const/16 v7, 0x20

    .line 30
    .line 31
    invoke-static {v0, v7}, Lc1/y;->c(Lc1/w;I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    invoke-static {v0, v7}, Lc1/y;->c(Lc1/w;I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v10

    .line 39
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v12

    .line 43
    const/16 v1, 0x12

    .line 44
    .line 45
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v14

    .line 49
    const v7, 0x3ec28f5c    # 0.38f

    .line 50
    .line 51
    .line 52
    invoke-static {v7, v14, v15}, Ly1/q;->b(FJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v14

    .line 56
    move-wide/from16 v16, v8

    .line 57
    .line 58
    iget-wide v7, v0, Lc1/w;->p:J

    .line 59
    .line 60
    invoke-static {v14, v15, v7, v8}, Ly1/h0;->k(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v14

    .line 68
    const v9, 0x3ec28f5c    # 0.38f

    .line 69
    .line 70
    .line 71
    invoke-static {v9, v14, v15}, Ly1/q;->b(FJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v14

    .line 75
    move-wide/from16 v18, v10

    .line 76
    .line 77
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v9

    .line 81
    const v11, 0x3df5c28f    # 0.12f

    .line 82
    .line 83
    .line 84
    invoke-static {v11, v9, v10}, Ly1/q;->b(FJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v9

    .line 88
    move-object/from16 v20, v2

    .line 89
    .line 90
    move-wide/from16 v21, v3

    .line 91
    .line 92
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-static {v11, v2, v3}, Ly1/q;->b(FJ)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    move-wide/from16 v23, v2

    .line 101
    .line 102
    invoke-static {v0, v1}, Lc1/y;->c(Lc1/w;I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    const v3, 0x3ec28f5c    # 0.38f

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v1, v2}, Ly1/q;->b(FJ)J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    move-wide v11, v12

    .line 114
    move-wide/from16 v3, v21

    .line 115
    .line 116
    move-wide/from16 v21, v1

    .line 117
    .line 118
    move-object/from16 v2, v20

    .line 119
    .line 120
    move-wide/from16 v25, v14

    .line 121
    .line 122
    move-wide v13, v7

    .line 123
    move-wide/from16 v7, v16

    .line 124
    .line 125
    move-wide/from16 v15, v25

    .line 126
    .line 127
    move-wide/from16 v25, v18

    .line 128
    .line 129
    move-wide/from16 v17, v9

    .line 130
    .line 131
    move-wide/from16 v9, v25

    .line 132
    .line 133
    move-wide/from16 v19, v23

    .line 134
    .line 135
    invoke-direct/range {v2 .. v22}, Lc1/m1;-><init>(JJJJJJJJJJ)V

    .line 136
    .line 137
    .line 138
    iput-object v2, v0, Lc1/w;->N:Lc1/m1;

    .line 139
    .line 140
    return-object v2

    .line 141
    :cond_0
    return-object v1
.end method

.method public static d(La2/g;JJJFF)V
    .locals 20

    .line 1
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-long v2, v2

    .line 11
    const/16 v4, 0x20

    .line 12
    .line 13
    shl-long/2addr v0, v4

    .line 14
    const-wide v5, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr v2, v5

    .line 20
    or-long v12, v0, v2

    .line 21
    .line 22
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-long v2, v2

    .line 32
    shl-long/2addr v0, v4

    .line 33
    and-long/2addr v2, v5

    .line 34
    or-long v14, v0, v2

    .line 35
    .line 36
    invoke-static/range {p1 .. p2}, Lx1/b;->d(J)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lp9/q;->d(FF)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static/range {p3 .. p4}, Lx1/e;->d(J)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static/range {p3 .. p4}, Lx1/e;->b(J)F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v2, v3}, Lp4/e;->b(FF)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-static {v0, v1, v2, v3}, Lp9/p1;->d(JJ)Lx1/c;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v7, Lx1/d;

    .line 62
    .line 63
    iget v8, v0, Lx1/c;->a:F

    .line 64
    .line 65
    iget v9, v0, Lx1/c;->b:F

    .line 66
    .line 67
    iget v10, v0, Lx1/c;->c:F

    .line 68
    .line 69
    iget v11, v0, Lx1/c;->d:F

    .line 70
    .line 71
    move-wide/from16 v16, v14

    .line 72
    .line 73
    move-wide/from16 v18, v12

    .line 74
    .line 75
    invoke-direct/range {v7 .. v19}, Lx1/d;-><init>(FFFFJJJJ)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lc1/t1;->d:Ly1/h;

    .line 79
    .line 80
    invoke-static {v1, v7}, Lp9/v;->h(Ly1/e0;Lx1/d;)V

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const/16 v5, 0x3c

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    .line 88
    move-wide/from16 v2, p5

    .line 89
    .line 90
    invoke-static/range {v0 .. v5}, La2/f;->v(La2/g;Ly1/e0;JLa2/k;I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v1, Ly1/h;->a:Landroid/graphics/Path;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 96
    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a(Lb0/k;Lr1/p;Lc1/m1;ZJLf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v0, p7

    .line 8
    .line 9
    const v1, -0x114d4821

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v6, 0x4

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    :goto_0
    or-int v1, p8, v1

    .line 27
    .line 28
    or-int/lit8 v1, v1, 0x30

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    const/16 v7, 0x100

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v7, 0x80

    .line 40
    .line 41
    :goto_1
    or-int/2addr v1, v7

    .line 42
    invoke-virtual {v0, v5}, Lf1/s;->g(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    const/16 v7, 0x800

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v7, 0x400

    .line 52
    .line 53
    :goto_2
    or-int/2addr v1, v7

    .line 54
    or-int/lit16 v1, v1, 0x6000

    .line 55
    .line 56
    const v7, 0x12493

    .line 57
    .line 58
    .line 59
    and-int/2addr v7, v1

    .line 60
    const v8, 0x12492

    .line 61
    .line 62
    .line 63
    if-ne v7, v8, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 73
    .line 74
    .line 75
    move-object/from16 v3, p2

    .line 76
    .line 77
    move-wide/from16 v6, p5

    .line 78
    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lf1/s;->S()V

    .line 82
    .line 83
    .line 84
    and-int/lit8 v7, p8, 0x1

    .line 85
    .line 86
    if-eqz v7, :cond_6

    .line 87
    .line 88
    invoke-virtual {v0}, Lf1/s;->x()Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_5

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 96
    .line 97
    .line 98
    move-object/from16 v9, p2

    .line 99
    .line 100
    move-wide/from16 v7, p5

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    :goto_4
    sget-wide v7, Lc1/g2;->c:J

    .line 104
    .line 105
    sget-object v9, Lr1/m;->a:Lr1/m;

    .line 106
    .line 107
    :goto_5
    invoke-virtual {v0}, Lf1/s;->q()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 115
    .line 116
    if-ne v10, v11, :cond_7

    .line 117
    .line 118
    new-instance v10, Lp1/p;

    .line 119
    .line 120
    invoke-direct {v10}, Lp1/p;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    check-cast v10, Lp1/p;

    .line 127
    .line 128
    and-int/lit8 v1, v1, 0xe

    .line 129
    .line 130
    const/4 v12, 0x1

    .line 131
    if-ne v1, v6, :cond_8

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    goto :goto_6

    .line 135
    :cond_8
    const/4 v1, 0x0

    .line 136
    :goto_6
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-nez v1, :cond_9

    .line 141
    .line 142
    if-ne v6, v11, :cond_a

    .line 143
    .line 144
    :cond_9
    new-instance v6, Lc1/d;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-direct {v6, v2, v10, v1, v12}, Lc1/d;-><init>(Lb0/k;Lp1/p;Lw8/c;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_a
    check-cast v6, Lf9/n;

    .line 154
    .line 155
    invoke-static {v0, v6, v2}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10}, Lp1/p;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_b

    .line 163
    .line 164
    invoke-static {v7, v8}, Ln3/h;->b(J)F

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    int-to-float v3, v3

    .line 169
    div-float/2addr v1, v3

    .line 170
    invoke-static {v7, v8}, Ln3/h;->a(J)F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    int-to-long v10, v1

    .line 179
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    int-to-long v12, v1

    .line 184
    const/16 v1, 0x20

    .line 185
    .line 186
    shl-long/2addr v10, v1

    .line 187
    const-wide v14, 0xffffffffL

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    and-long/2addr v12, v14

    .line 193
    or-long/2addr v10, v12

    .line 194
    goto :goto_7

    .line 195
    :cond_b
    move-wide v10, v7

    .line 196
    :goto_7
    sget-object v1, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 197
    .line 198
    invoke-static {v10, v11}, Ln3/h;->b(J)F

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-static {v10, v11}, Ln3/h;->a(J)F

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {v9, v1, v3}, Landroidx/compose/foundation/layout/c;->i(Lr1/p;FF)Lr1/p;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1, v2}, Landroidx/compose/foundation/a;->g(Lr1/p;Lb0/k;)Lr1/p;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-eqz v5, :cond_c

    .line 215
    .line 216
    iget-wide v10, v4, Lc1/m1;->a:J

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_c
    iget-wide v10, v4, Lc1/m1;->f:J

    .line 220
    .line 221
    :goto_8
    sget v3, Le1/m;->a:F

    .line 222
    .line 223
    const/4 v3, 0x5

    .line 224
    invoke-static {v3, v0}, Lc1/l1;->a(ILf1/s;)Ly1/l0;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v1, v10, v11, v3}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 233
    .line 234
    .line 235
    move-wide v6, v7

    .line 236
    move-object v3, v9

    .line 237
    :goto_9
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    if-eqz v9, :cond_d

    .line 242
    .line 243
    new-instance v0, Lc1/o1;

    .line 244
    .line 245
    move-object/from16 v1, p0

    .line 246
    .line 247
    move/from16 v8, p8

    .line 248
    .line 249
    invoke-direct/range {v0 .. v8}, Lc1/o1;-><init>(Lc1/t1;Lb0/k;Lr1/p;Lc1/m1;ZJI)V

    .line 250
    .line 251
    .line 252
    iput-object v0, v9, Lf1/w1;->d:Lf9/n;

    .line 253
    .line 254
    :cond_d
    return-void
.end method

.method public final b(Lc1/i2;Lr1/p;ZLc1/m1;Lf9/n;Lf9/o;FFLf1/s;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    move-object/from16 v15, p4

    .line 6
    .line 7
    move-object/from16 v0, p9

    .line 8
    .line 9
    move/from16 v2, p10

    .line 10
    .line 11
    const v3, 0x2fab503

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v3, v2, 0x6

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x2

    .line 30
    :goto_0
    or-int/2addr v3, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_1
    or-int/lit8 v3, v3, 0x30

    .line 34
    .line 35
    and-int/lit16 v4, v2, 0x180

    .line 36
    .line 37
    const/16 v5, 0x100

    .line 38
    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, v14}, Lf1/s;->g(Z)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    const/16 v4, 0x100

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v4, 0x80

    .line 51
    .line 52
    :goto_2
    or-int/2addr v3, v4

    .line 53
    :cond_3
    and-int/lit16 v4, v2, 0xc00

    .line 54
    .line 55
    const/16 v6, 0x800

    .line 56
    .line 57
    if-nez v4, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, v15}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    const/16 v4, 0x800

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v4, 0x400

    .line 69
    .line 70
    :goto_3
    or-int/2addr v3, v4

    .line 71
    :cond_5
    and-int/lit16 v4, v2, 0x6000

    .line 72
    .line 73
    if-nez v4, :cond_6

    .line 74
    .line 75
    or-int/lit16 v3, v3, 0x2000

    .line 76
    .line 77
    :cond_6
    const/high16 v4, 0xdb0000

    .line 78
    .line 79
    or-int/2addr v3, v4

    .line 80
    const/high16 v4, 0x6000000

    .line 81
    .line 82
    and-int/2addr v4, v2

    .line 83
    if-nez v4, :cond_8

    .line 84
    .line 85
    move-object/from16 v4, p0

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_7

    .line 92
    .line 93
    const/high16 v7, 0x4000000

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    const/high16 v7, 0x2000000

    .line 97
    .line 98
    :goto_4
    or-int/2addr v3, v7

    .line 99
    goto :goto_5

    .line 100
    :cond_8
    move-object/from16 v4, p0

    .line 101
    .line 102
    :goto_5
    const v7, 0x2492493

    .line 103
    .line 104
    .line 105
    and-int/2addr v7, v3

    .line 106
    const v8, 0x2492492

    .line 107
    .line 108
    .line 109
    if-ne v7, v8, :cond_a

    .line 110
    .line 111
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-nez v7, :cond_9

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_9
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 119
    .line 120
    .line 121
    move-object/from16 v3, p2

    .line 122
    .line 123
    move-object/from16 v6, p5

    .line 124
    .line 125
    move-object/from16 v7, p6

    .line 126
    .line 127
    move/from16 v8, p7

    .line 128
    .line 129
    move/from16 v9, p8

    .line 130
    .line 131
    move-object v14, v0

    .line 132
    goto/16 :goto_13

    .line 133
    .line 134
    :cond_a
    :goto_6
    invoke-virtual {v0}, Lf1/s;->S()V

    .line 135
    .line 136
    .line 137
    and-int/lit8 v7, v2, 0x1

    .line 138
    .line 139
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 140
    .line 141
    const v9, -0xe001

    .line 142
    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    const/4 v11, 0x1

    .line 146
    if-eqz v7, :cond_c

    .line 147
    .line 148
    invoke-virtual {v0}, Lf1/s;->x()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_b

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_b
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 156
    .line 157
    .line 158
    and-int/2addr v3, v9

    .line 159
    move-object/from16 v12, p5

    .line 160
    .line 161
    move-object/from16 v13, p6

    .line 162
    .line 163
    move/from16 v6, p7

    .line 164
    .line 165
    move/from16 v7, p8

    .line 166
    .line 167
    move v5, v3

    .line 168
    move-object/from16 v3, p2

    .line 169
    .line 170
    goto :goto_a

    .line 171
    :cond_c
    :goto_7
    and-int/lit16 v7, v3, 0x1c00

    .line 172
    .line 173
    xor-int/lit16 v7, v7, 0xc00

    .line 174
    .line 175
    if-le v7, v6, :cond_d

    .line 176
    .line 177
    invoke-virtual {v0, v15}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-nez v7, :cond_e

    .line 182
    .line 183
    :cond_d
    and-int/lit16 v7, v3, 0xc00

    .line 184
    .line 185
    if-ne v7, v6, :cond_f

    .line 186
    .line 187
    :cond_e
    const/4 v6, 0x1

    .line 188
    goto :goto_8

    .line 189
    :cond_f
    const/4 v6, 0x0

    .line 190
    :goto_8
    and-int/lit16 v7, v3, 0x380

    .line 191
    .line 192
    if-ne v7, v5, :cond_10

    .line 193
    .line 194
    const/4 v5, 0x1

    .line 195
    goto :goto_9

    .line 196
    :cond_10
    const/4 v5, 0x0

    .line 197
    :goto_9
    or-int/2addr v5, v6

    .line 198
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    if-nez v5, :cond_11

    .line 203
    .line 204
    if-ne v6, v8, :cond_12

    .line 205
    .line 206
    :cond_11
    new-instance v6, Lc1/p1;

    .line 207
    .line 208
    invoke-direct {v6, v15, v14}, Lc1/p1;-><init>(Lc1/m1;Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_12
    move-object v5, v6

    .line 215
    check-cast v5, Lf9/n;

    .line 216
    .line 217
    and-int/2addr v3, v9

    .line 218
    sget v6, Lc1/g2;->d:F

    .line 219
    .line 220
    sget v7, Lc1/g2;->e:F

    .line 221
    .line 222
    sget-object v9, Lr1/m;->a:Lr1/m;

    .line 223
    .line 224
    sget-object v12, Lc1/q1;->a:Lc1/q1;

    .line 225
    .line 226
    move-object v13, v12

    .line 227
    move-object v12, v5

    .line 228
    move v5, v3

    .line 229
    move-object v3, v9

    .line 230
    :goto_a
    invoke-virtual {v0}, Lf1/s;->q()V

    .line 231
    .line 232
    .line 233
    move/from16 p2, v5

    .line 234
    .line 235
    invoke-virtual {v15, v14, v10}, Lc1/m1;->a(ZZ)J

    .line 236
    .line 237
    .line 238
    move-result-wide v4

    .line 239
    move/from16 p5, v6

    .line 240
    .line 241
    move/from16 p6, v7

    .line 242
    .line 243
    invoke-virtual {v15, v14, v11}, Lc1/m1;->a(ZZ)J

    .line 244
    .line 245
    .line 246
    move-result-wide v6

    .line 247
    if-eqz v14, :cond_13

    .line 248
    .line 249
    iget-wide v10, v15, Lc1/m1;->e:J

    .line 250
    .line 251
    goto :goto_b

    .line 252
    :cond_13
    iget-wide v10, v15, Lc1/m1;->j:J

    .line 253
    .line 254
    :goto_b
    if-eqz v14, :cond_14

    .line 255
    .line 256
    move-wide/from16 v17, v10

    .line 257
    .line 258
    iget-wide v9, v15, Lc1/m1;->c:J

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_14
    move-wide/from16 v17, v10

    .line 262
    .line 263
    iget-wide v9, v15, Lc1/m1;->h:J

    .line 264
    .line 265
    :goto_c
    sget-object v11, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 266
    .line 267
    invoke-interface {v3, v11}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    sget v2, Lc1/g2;->a:F

    .line 272
    .line 273
    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    sget-object v11, Lr2/i1;->n:Lf1/w2;

    .line 278
    .line 279
    invoke-virtual {v0, v11}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    move-object/from16 p8, v3

    .line 284
    .line 285
    sget-object v3, Ln3/m;->b:Ln3/m;

    .line 286
    .line 287
    if-ne v11, v3, :cond_15

    .line 288
    .line 289
    const/high16 v3, 0x43340000    # 180.0f

    .line 290
    .line 291
    goto :goto_d

    .line 292
    :cond_15
    const/4 v3, 0x0

    .line 293
    :goto_d
    invoke-static {v2, v3}, Lp4/e;->y(Lr1/p;F)Lr1/p;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    invoke-virtual {v0, v4, v5}, Lf1/s;->e(J)Z

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    or-int/2addr v3, v11

    .line 306
    invoke-virtual {v0, v6, v7}, Lf1/s;->e(J)Z

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    or-int/2addr v3, v11

    .line 311
    move-object v11, v2

    .line 312
    move-wide/from16 v1, v17

    .line 313
    .line 314
    invoke-virtual {v0, v1, v2}, Lf1/s;->e(J)Z

    .line 315
    .line 316
    .line 317
    move-result v17

    .line 318
    or-int v3, v3, v17

    .line 319
    .line 320
    invoke-virtual {v0, v9, v10}, Lf1/s;->e(J)Z

    .line 321
    .line 322
    .line 323
    move-result v17

    .line 324
    or-int v3, v3, v17

    .line 325
    .line 326
    const/high16 v17, 0x380000

    .line 327
    .line 328
    move-wide/from16 v18, v1

    .line 329
    .line 330
    and-int v1, p2, v17

    .line 331
    .line 332
    const/high16 v2, 0x100000

    .line 333
    .line 334
    if-ne v1, v2, :cond_16

    .line 335
    .line 336
    const/4 v1, 0x1

    .line 337
    goto :goto_e

    .line 338
    :cond_16
    const/4 v1, 0x0

    .line 339
    :goto_e
    or-int/2addr v1, v3

    .line 340
    const/high16 v2, 0x1c00000

    .line 341
    .line 342
    and-int v2, p2, v2

    .line 343
    .line 344
    const/high16 v3, 0x800000

    .line 345
    .line 346
    if-ne v2, v3, :cond_17

    .line 347
    .line 348
    const/4 v2, 0x1

    .line 349
    goto :goto_f

    .line 350
    :cond_17
    const/4 v2, 0x0

    .line 351
    :goto_f
    or-int/2addr v1, v2

    .line 352
    invoke-virtual {v0, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    or-int/2addr v1, v2

    .line 357
    const/high16 v2, 0x70000

    .line 358
    .line 359
    and-int v2, p2, v2

    .line 360
    .line 361
    const/high16 v3, 0x20000

    .line 362
    .line 363
    if-ne v2, v3, :cond_18

    .line 364
    .line 365
    const/16 v16, 0x1

    .line 366
    .line 367
    goto :goto_10

    .line 368
    :cond_18
    const/16 v16, 0x0

    .line 369
    .line 370
    :goto_10
    or-int v1, v1, v16

    .line 371
    .line 372
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    if-nez v1, :cond_1a

    .line 377
    .line 378
    if-ne v2, v8, :cond_19

    .line 379
    .line 380
    goto :goto_11

    .line 381
    :cond_19
    move/from16 v10, p5

    .line 382
    .line 383
    move-object/from16 v16, p8

    .line 384
    .line 385
    move-object v14, v0

    .line 386
    move-object v15, v11

    .line 387
    move/from16 v11, p6

    .line 388
    .line 389
    goto :goto_12

    .line 390
    :cond_1a
    :goto_11
    new-instance v0, Lc1/r1;

    .line 391
    .line 392
    move-object/from16 v1, p1

    .line 393
    .line 394
    move-object/from16 v16, p8

    .line 395
    .line 396
    move-object/from16 v14, p9

    .line 397
    .line 398
    move-wide v2, v4

    .line 399
    move-wide v4, v6

    .line 400
    move-wide v8, v9

    .line 401
    move-object v15, v11

    .line 402
    move-wide/from16 v6, v18

    .line 403
    .line 404
    move/from16 v10, p5

    .line 405
    .line 406
    move/from16 v11, p6

    .line 407
    .line 408
    invoke-direct/range {v0 .. v13}, Lc1/r1;-><init>(Lc1/i2;JJJJFFLf9/n;Lf9/o;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v14, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    move-object v2, v0

    .line 415
    :goto_12
    check-cast v2, Lf9/k;

    .line 416
    .line 417
    const/4 v9, 0x0

    .line 418
    invoke-static {v9, v14, v2, v15}, Lp4/e;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 419
    .line 420
    .line 421
    move v8, v10

    .line 422
    move v9, v11

    .line 423
    move-object v6, v12

    .line 424
    move-object v7, v13

    .line 425
    move-object/from16 v3, v16

    .line 426
    .line 427
    :goto_13
    invoke-virtual {v14}, Lf1/s;->r()Lf1/w1;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    if-eqz v11, :cond_1b

    .line 432
    .line 433
    new-instance v0, Lc1/s1;

    .line 434
    .line 435
    move-object/from16 v1, p0

    .line 436
    .line 437
    move-object/from16 v2, p1

    .line 438
    .line 439
    move/from16 v4, p3

    .line 440
    .line 441
    move-object/from16 v5, p4

    .line 442
    .line 443
    move/from16 v10, p10

    .line 444
    .line 445
    invoke-direct/range {v0 .. v10}, Lc1/s1;-><init>(Lc1/t1;Lc1/i2;Lr1/p;ZLc1/m1;Lf9/n;Lf9/o;FFI)V

    .line 446
    .line 447
    .line 448
    iput-object v0, v11, Lf1/w1;->d:Lf9/n;

    .line 449
    .line 450
    :cond_1b
    return-void
.end method
