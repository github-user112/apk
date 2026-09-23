.class public final Lq7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lr7/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lb8/g;

    .line 4
    .line 5
    const/16 v1, 0x11

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, v2, v1}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lc8/k0;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v3, 0x4

    .line 18
    invoke-direct {v0, v1, v2, v3}, Lc8/k0;-><init>(ILw8/c;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u60ac\u6d6e\u56fe\u6807"

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ILf1/s;)V
    .locals 0

    .line 1
    const p1, 0x3ba4bcd

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(ZLf9/a;Lf1/s;I)V
    .locals 15

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v14, p2

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    const-string v1, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v14, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v1, -0x549741c5

    .line 13
    .line 14
    .line 15
    invoke-virtual {v11, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v0}, Lf1/s;->g(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x4

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int v1, p4, v1

    .line 29
    .line 30
    and-int/lit8 v3, v1, 0x13

    .line 31
    .line 32
    const/16 v4, 0x12

    .line 33
    .line 34
    if-ne v3, v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_2
    :goto_1
    sget-object v3, Ld/c;->a:Lf1/c0;

    .line 49
    .line 50
    invoke-virtual {v11, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/app/Activity;

    .line 55
    .line 56
    sget-object v4, Lq7/e;->f:Ldc/l0;

    .line 57
    .line 58
    invoke-static {v4, v11}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lq7/e;

    .line 71
    .line 72
    iget-boolean v6, v6, Lq7/e;->a:Z

    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const v7, -0x615d173a

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v7}, Lf1/s;->W(I)V

    .line 82
    .line 83
    .line 84
    and-int/lit8 v12, v1, 0xe

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    if-ne v12, v2, :cond_3

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/4 v2, 0x0

    .line 92
    :goto_2
    invoke-virtual {v11, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    or-int/2addr v2, v7

    .line 97
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 102
    .line 103
    if-nez v2, :cond_4

    .line 104
    .line 105
    if-ne v7, v8, :cond_5

    .line 106
    .line 107
    :cond_4
    new-instance v7, Lq7/b;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    invoke-direct {v7, v0, v4, v9, v2}, Lq7/b;-><init>(ZLf1/b1;Lw8/c;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    check-cast v7, Lf9/n;

    .line 118
    .line 119
    invoke-virtual {v11, v1}, Lf1/s;->p(Z)V

    .line 120
    .line 121
    .line 122
    invoke-static {v5, v6, v7, v11}, Lf1/b;->g(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lf1/s;)V

    .line 123
    .line 124
    .line 125
    const v2, 0x4c5de2

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v2}, Lf1/s;->W(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-ne v2, v8, :cond_6

    .line 136
    .line 137
    new-instance v2, Lc8/g;

    .line 138
    .line 139
    const/16 v5, 0x15

    .line 140
    .line 141
    invoke-direct {v2, v14, v5}, Lc8/g;-><init>(Lf9/a;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_6
    check-cast v2, Lf9/a;

    .line 148
    .line 149
    invoke-virtual {v11, v1}, Lf1/s;->p(Z)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lm7/t;

    .line 153
    .line 154
    const/4 v5, 0x2

    .line 155
    invoke-direct {v1, v3, v4, v5}, Lm7/t;-><init>(Landroid/app/Activity;Lf1/b1;I)V

    .line 156
    .line 157
    .line 158
    const v3, -0x557ff4e

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v1, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    const/16 v13, 0x3fc

    .line 166
    .line 167
    move-object v1, v2

    .line 168
    const-wide/16 v2, 0x0

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    const/4 v5, 0x0

    .line 172
    const/4 v6, 0x0

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v8, 0x0

    .line 175
    const/4 v9, 0x0

    .line 176
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 177
    .line 178
    .line 179
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    if-eqz v6, :cond_7

    .line 184
    .line 185
    new-instance v0, Lo7/c;

    .line 186
    .line 187
    const/4 v5, 0x2

    .line 188
    move-object v1, p0

    .line 189
    move/from16 v2, p1

    .line 190
    .line 191
    move/from16 v4, p4

    .line 192
    .line 193
    move-object v3, v14

    .line 194
    invoke-direct/range {v0 .. v5}, Lo7/c;-><init>(Lr7/g;ZLf9/a;II)V

    .line 195
    .line 196
    .line 197
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 198
    .line 199
    :cond_7
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u5e94\u7528\u540e\u53f0\u65f6\u663e\u793a\u60ac\u6d6e\u56fe\u6807"

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(IILf1/s;I)V
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move/from16 v11, p4

    .line 8
    .line 9
    const v2, 0x7872b03a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8, v0}, Lf1/s;->d(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x2

    .line 24
    :goto_0
    or-int/2addr v2, v11

    .line 25
    invoke-virtual {v8, v1}, Lf1/s;->d(I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const/16 v3, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v3, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v2, v3

    .line 37
    and-int/lit8 v2, v2, 0x13

    .line 38
    .line 39
    const/16 v3, 0x12

    .line 40
    .line 41
    if-ne v2, v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_3
    :goto_2
    sget-object v2, Lq7/e;->f:Ldc/l0;

    .line 56
    .line 57
    invoke-static {v2, v8}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v3, Lr2/n0;->c:Lf1/c0;

    .line 62
    .line 63
    invoke-virtual {v8, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/content/res/Resources;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const v5, 0x6e3c21fe

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v5}, Lf1/s;->W(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 84
    .line 85
    if-ne v6, v7, :cond_4

    .line 86
    .line 87
    new-instance v6, Ln3/l;

    .line 88
    .line 89
    const-wide/16 v9, 0x0

    .line 90
    .line 91
    invoke-direct {v6, v9, v10}, Ln3/l;-><init>(J)V

    .line 92
    .line 93
    .line 94
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v8, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    check-cast v6, Lf1/b1;

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-static {v8, v9, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    if-ne v10, v7, :cond_5

    .line 109
    .line 110
    int-to-float v10, v0

    .line 111
    new-instance v12, Lf1/g1;

    .line 112
    .line 113
    invoke-direct {v12, v10}, Lf1/g1;-><init>(F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    move-object v10, v12

    .line 120
    :cond_5
    check-cast v10, Lf1/g1;

    .line 121
    .line 122
    invoke-static {v8, v9, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    if-ne v12, v7, :cond_6

    .line 127
    .line 128
    int-to-float v12, v1

    .line 129
    new-instance v13, Lf1/g1;

    .line 130
    .line 131
    invoke-direct {v13, v12}, Lf1/g1;-><init>(F)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    move-object v12, v13

    .line 138
    :cond_6
    check-cast v12, Lf1/g1;

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Lf1/s;->p(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10}, Lf1/g1;->f()F

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    invoke-virtual {v12}, Lf1/g1;->f()F

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    const v15, -0x615d173a

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v15}, Lf1/s;->W(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    if-ne v15, v7, :cond_7

    .line 170
    .line 171
    new-instance v15, Lb8/m;

    .line 172
    .line 173
    const/16 v16, 0x20

    .line 174
    .line 175
    const/16 v4, 0xb

    .line 176
    .line 177
    const/4 v5, 0x0

    .line 178
    invoke-direct {v15, v10, v12, v5, v4}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, v15}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    const/16 v16, 0x20

    .line 186
    .line 187
    :goto_3
    check-cast v15, Lf9/n;

    .line 188
    .line 189
    invoke-virtual {v8, v9}, Lf1/s;->p(Z)V

    .line 190
    .line 191
    .line 192
    invoke-static {v13, v14, v15, v8}, Lf1/b;->g(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lf1/s;)V

    .line 193
    .line 194
    .line 195
    sget-object v4, Lr1/m;->a:Lr1/m;

    .line 196
    .line 197
    const/4 v5, 0x3

    .line 198
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/c;->n(Lr1/p;I)Lr1/p;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Lq7/e;

    .line 207
    .line 208
    iget v5, v5, Lq7/e;->c:I

    .line 209
    .line 210
    invoke-static {v5, v8}, Lg5/a;->B(ILf1/s;)F

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-static {v5}, Lk0/e;->a(F)Lk0/d;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-static {v4, v5}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const v5, 0x4c5de2

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v5}, Lf1/s;->W(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    if-ne v5, v7, :cond_8

    .line 233
    .line 234
    new-instance v5, La8/s0;

    .line 235
    .line 236
    const/16 v13, 0x16

    .line 237
    .line 238
    invoke-direct {v5, v6, v13}, La8/s0;-><init>(Lf1/b1;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_8
    check-cast v5, Lf9/k;

    .line 245
    .line 246
    invoke-virtual {v8, v9}, Lf1/s;->p(Z)V

    .line 247
    .line 248
    .line 249
    invoke-static {v4, v5}, Landroidx/compose/ui/layout/a;->e(Lr1/p;Lf9/k;)Lr1/p;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    const v5, -0x48fade91

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v5}, Lf1/s;->W(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    if-nez v5, :cond_9

    .line 268
    .line 269
    if-ne v13, v7, :cond_a

    .line 270
    .line 271
    :cond_9
    new-instance v13, Ll0/j1;

    .line 272
    .line 273
    invoke-direct {v13, v3, v10, v6, v12}, Ll0/j1;-><init>(Landroid/util/DisplayMetrics;Lf1/g1;Lf1/b1;Lf1/g1;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_a
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 280
    .line 281
    invoke-virtual {v8, v9}, Lf1/s;->p(Z)V

    .line 282
    .line 283
    .line 284
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 285
    .line 286
    invoke-static {v4, v3, v13}, Lk2/i0;->c(Lr1/p;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lr1/p;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    sget-object v4, Lr1/c;->a:Lr1/h;

    .line 291
    .line 292
    invoke-static {v4, v9}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    iget-wide v5, v8, Lf1/s;->T:J

    .line 297
    .line 298
    ushr-long v12, v5, v16

    .line 299
    .line 300
    xor-long/2addr v5, v12

    .line 301
    long-to-int v6, v5

    .line 302
    invoke-virtual {v8}, Lf1/s;->l()Lf1/q1;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-static {v8, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    sget-object v10, Lq2/j;->d0:Lq2/i;

    .line 311
    .line 312
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    sget-object v10, Lq2/i;->b:Lq2/a0;

    .line 316
    .line 317
    invoke-virtual {v8}, Lf1/s;->a0()V

    .line 318
    .line 319
    .line 320
    iget-boolean v12, v8, Lf1/s;->S:Z

    .line 321
    .line 322
    if-eqz v12, :cond_b

    .line 323
    .line 324
    invoke-virtual {v8, v10}, Lf1/s;->k(Lf9/a;)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_b
    invoke-virtual {v8}, Lf1/s;->k0()V

    .line 329
    .line 330
    .line 331
    :goto_4
    sget-object v10, Lq2/i;->e:Lq2/h;

    .line 332
    .line 333
    invoke-static {v8, v10, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 337
    .line 338
    invoke-static {v8, v4, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 342
    .line 343
    iget-boolean v5, v8, Lf1/s;->S:Z

    .line 344
    .line 345
    if-nez v5, :cond_c

    .line 346
    .line 347
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    invoke-static {v5, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-nez v5, :cond_d

    .line 360
    .line 361
    :cond_c
    invoke-static {v6, v8, v6, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 362
    .line 363
    .line 364
    :cond_d
    sget-object v4, Lq2/i;->c:Lq2/h;

    .line 365
    .line 366
    invoke-static {v8, v4, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    const v3, 0x7f0c0001

    .line 370
    .line 371
    .line 372
    invoke-static {v3, v8}, Lp9/p1;->B(ILf1/s;)Ld2/b;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    check-cast v4, Lq7/e;

    .line 381
    .line 382
    iget v4, v4, Lq7/e;->b:I

    .line 383
    .line 384
    invoke-static {v4, v8}, Lg5/a;->B(ILf1/s;)F

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    invoke-static {v4}, Landroidx/compose/foundation/layout/c;->h(F)Lr1/p;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    check-cast v2, Lq7/e;

    .line 397
    .line 398
    iget v2, v2, Lq7/e;->d:I

    .line 399
    .line 400
    int-to-float v2, v2

    .line 401
    const/high16 v5, 0x41200000    # 10.0f

    .line 402
    .line 403
    div-float/2addr v2, v5

    .line 404
    invoke-static {v4, v2}, Lp9/p1;->i(Lr1/p;F)Lr1/p;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    const v4, 0x6e3c21fe

    .line 409
    .line 410
    .line 411
    invoke-virtual {v8, v4}, Lf1/s;->W(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    if-ne v5, v7, :cond_e

    .line 419
    .line 420
    invoke-static {v8}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    :cond_e
    check-cast v5, Lb0/k;

    .line 425
    .line 426
    invoke-static {v8, v9, v4}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    if-ne v6, v7, :cond_f

    .line 431
    .line 432
    new-instance v6, Lm7/e;

    .line 433
    .line 434
    const/16 v10, 0x15

    .line 435
    .line 436
    invoke-direct {v6, v10}, Lm7/e;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v8, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :cond_f
    check-cast v6, Lf9/a;

    .line 443
    .line 444
    invoke-static {v8, v9, v4}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    if-ne v4, v7, :cond_10

    .line 449
    .line 450
    new-instance v4, Lm7/e;

    .line 451
    .line 452
    const/16 v7, 0x16

    .line 453
    .line 454
    invoke-direct {v4, v7}, Lm7/e;-><init>(I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v8, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_10
    check-cast v4, Lf9/a;

    .line 461
    .line 462
    invoke-virtual {v8, v9}, Lf1/s;->p(Z)V

    .line 463
    .line 464
    .line 465
    invoke-static {v2, v5, v6, v4}, Landroidx/compose/foundation/a;->e(Lr1/p;Lb0/k;Lf9/a;Lf9/a;)Lr1/p;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    const/16 v9, 0x30

    .line 470
    .line 471
    const/16 v10, 0x78

    .line 472
    .line 473
    move-object v2, v3

    .line 474
    const/4 v3, 0x0

    .line 475
    const/4 v5, 0x0

    .line 476
    const/4 v6, 0x0

    .line 477
    const/4 v7, 0x0

    .line 478
    invoke-static/range {v2 .. v10}, Lp9/q;->b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V

    .line 479
    .line 480
    .line 481
    const/4 v2, 0x1

    .line 482
    invoke-virtual {v8, v2}, Lf1/s;->p(Z)V

    .line 483
    .line 484
    .line 485
    :goto_5
    invoke-virtual {v8}, Lf1/s;->r()Lf1/w1;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    if-eqz v2, :cond_11

    .line 490
    .line 491
    new-instance v3, Lq7/a;

    .line 492
    .line 493
    move-object/from16 v4, p0

    .line 494
    .line 495
    invoke-direct {v3, v4, v0, v1, v11}, Lq7/a;-><init>(Lq7/d;III)V

    .line 496
    .line 497
    .line 498
    iput-object v3, v2, Lf1/w1;->d:Lf9/n;

    .line 499
    .line 500
    return-void

    .line 501
    :cond_11
    move-object/from16 v4, p0

    .line 502
    .line 503
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Icon"

    .line 2
    .line 3
    return-object v0
.end method
