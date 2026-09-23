.class public abstract Lh0/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lb4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb4/c;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lb4/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lh0/z;->a:Lb4/c;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Lf9/a;Lr1/p;Lh0/h0;Lf0/k;Lf1/s;I)V
    .locals 7

    .line 1
    const v0, 0x3ee63d6d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p5

    .line 17
    invoke-virtual {p4, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    invoke-virtual {p4, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x100

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x80

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    invoke-virtual {p4, p3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const/16 v1, 0x800

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const/16 v1, 0x400

    .line 51
    .line 52
    :goto_3
    or-int/2addr v0, v1

    .line 53
    and-int/lit16 v1, v0, 0x493

    .line 54
    .line 55
    const/16 v2, 0x492

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    if-eq v1, v2, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    const/4 v1, 0x0

    .line 63
    :goto_4
    and-int/2addr v0, v3

    .line 64
    invoke-virtual {p4, v0, v1}, Lf1/s;->N(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-static {p0, p4}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Landroidx/compose/foundation/lazy/layout/c;

    .line 75
    .line 76
    invoke-direct {v1, p2, p1, p3, v0}, Landroidx/compose/foundation/lazy/layout/c;-><init>(Lh0/h0;Lr1/p;Lf0/k;Lf1/b1;)V

    .line 77
    .line 78
    .line 79
    const v0, -0x379ecb6b

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, p4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x6

    .line 87
    invoke-static {v0, p4, v1}, Lh0/z;->c(Ln1/c;Lf1/s;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 92
    .line 93
    .line 94
    :goto_5
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    if-eqz p4, :cond_6

    .line 99
    .line 100
    new-instance v0, Lh0/w;

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    move-object v1, p0

    .line 104
    move-object v2, p1

    .line 105
    move-object v3, p2

    .line 106
    move-object v4, p3

    .line 107
    move v5, p5

    .line 108
    invoke-direct/range {v0 .. v6}, Lh0/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p4, Lf1/w1;->d:Lf9/n;

    .line 112
    .line 113
    :cond_6
    return-void
.end method

.method public static final b(Ljava/lang/Object;ILh0/e0;Ln1/c;Lf1/s;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    const v6, 0x340208e3

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v6}, Lf1/s;->Y(I)Lf1/s;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v6, v5, 0x6

    .line 20
    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    const/4 v6, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v6, 0x2

    .line 32
    :goto_0
    or-int/2addr v6, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v6, v5

    .line 35
    :goto_1
    and-int/lit8 v7, v5, 0x30

    .line 36
    .line 37
    if-nez v7, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lf1/s;->d(I)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    const/16 v7, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v7, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v6, v7

    .line 51
    :cond_3
    and-int/lit16 v7, v5, 0x180

    .line 52
    .line 53
    if-nez v7, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    const/16 v7, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v7, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v6, v7

    .line 67
    :cond_5
    and-int/lit16 v7, v5, 0xc00

    .line 68
    .line 69
    if-nez v7, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_6

    .line 76
    .line 77
    const/16 v7, 0x800

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_6
    const/16 v7, 0x400

    .line 81
    .line 82
    :goto_4
    or-int/2addr v6, v7

    .line 83
    :cond_7
    and-int/lit16 v7, v6, 0x493

    .line 84
    .line 85
    const/16 v8, 0x492

    .line 86
    .line 87
    if-eq v7, v8, :cond_8

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    goto :goto_5

    .line 91
    :cond_8
    const/4 v7, 0x0

    .line 92
    :goto_5
    and-int/lit8 v8, v6, 0x1

    .line 93
    .line 94
    invoke-virtual {v0, v8, v7}, Lf1/s;->N(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_11

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v0, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    or-int/2addr v7, v8

    .line 109
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 114
    .line 115
    if-nez v7, :cond_9

    .line 116
    .line 117
    if-ne v8, v9, :cond_a

    .line 118
    .line 119
    :cond_9
    new-instance v8, Lh0/c0;

    .line 120
    .line 121
    invoke-direct {v8, v1, v3}, Lh0/c0;-><init>(Ljava/lang/Object;Lh0/e0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_a
    check-cast v8, Lh0/c0;

    .line 128
    .line 129
    iput v2, v8, Lh0/c0;->c:I

    .line 130
    .line 131
    iget-object v7, v8, Lh0/c0;->g:Lf1/k1;

    .line 132
    .line 133
    sget-object v10, Lo2/t0;->a:Lf1/c0;

    .line 134
    .line 135
    invoke-virtual {v0, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    check-cast v11, Lh0/c0;

    .line 140
    .line 141
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    if-eqz v12, :cond_b

    .line 146
    .line 147
    invoke-virtual {v12}, Lp1/f;->e()Lf9/k;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    goto :goto_6

    .line 152
    :cond_b
    const/4 v14, 0x0

    .line 153
    :goto_6
    invoke-static {v12}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    :try_start_0
    invoke-virtual {v7}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v16

    .line 161
    move-object/from16 v13, v16

    .line 162
    .line 163
    check-cast v13, Lh0/c0;

    .line 164
    .line 165
    if-eq v11, v13, :cond_e

    .line 166
    .line 167
    invoke-virtual {v7, v11}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget v7, v8, Lh0/c0;->d:I

    .line 171
    .line 172
    if-lez v7, :cond_e

    .line 173
    .line 174
    iget-object v7, v8, Lh0/c0;->e:Lh0/c0;

    .line 175
    .line 176
    if-eqz v7, :cond_c

    .line 177
    .line 178
    invoke-virtual {v7}, Lh0/c0;->b()V

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    goto :goto_9

    .line 184
    :cond_c
    :goto_7
    if-eqz v11, :cond_d

    .line 185
    .line 186
    invoke-virtual {v11}, Lh0/c0;->a()Lh0/c0;

    .line 187
    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_d
    const/4 v11, 0x0

    .line 191
    :goto_8
    iput-object v11, v8, Lh0/c0;->e:Lh0/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .line 193
    :cond_e
    invoke-static {v12, v15, v14}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    if-nez v7, :cond_f

    .line 205
    .line 206
    if-ne v11, v9, :cond_10

    .line 207
    .line 208
    :cond_f
    new-instance v11, La8/q;

    .line 209
    .line 210
    const/16 v7, 0xe

    .line 211
    .line 212
    invoke-direct {v11, v7, v8}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_10
    check-cast v11, Lf9/k;

    .line 219
    .line 220
    invoke-static {v8, v11, v0}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10, v8}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    shr-int/lit8 v6, v6, 0x6

    .line 228
    .line 229
    and-int/lit8 v6, v6, 0x70

    .line 230
    .line 231
    const/16 v8, 0x8

    .line 232
    .line 233
    or-int/2addr v6, v8

    .line 234
    invoke-static {v7, v4, v0, v6}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 235
    .line 236
    .line 237
    goto :goto_a

    .line 238
    :goto_9
    invoke-static {v12, v15, v14}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_11
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 243
    .line 244
    .line 245
    :goto_a
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    if-eqz v6, :cond_12

    .line 250
    .line 251
    new-instance v0, Lh0/d0;

    .line 252
    .line 253
    invoke-direct/range {v0 .. v5}, Lh0/d0;-><init>(Ljava/lang/Object;ILh0/e0;Ln1/c;I)V

    .line 254
    .line 255
    .line 256
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 257
    .line 258
    :cond_12
    return-void
.end method

.method public static final c(Ln1/c;Lf1/s;I)V
    .locals 10

    .line 1
    const v0, -0x2a4a252b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p2, 0x3

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    and-int/lit8 v1, p2, 0x1

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lf1/s;->N(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    sget-object v0, Lo1/h;->a:Lf1/w2;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lo1/f;

    .line 32
    .line 33
    const v4, 0x753e2915

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v4}, Lf1/s;->W(I)V

    .line 37
    .line 38
    .line 39
    new-array v4, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 46
    .line 47
    if-ne v5, v6, :cond_1

    .line 48
    .line 49
    new-instance v5, Lm7/e;

    .line 50
    .line 51
    const/16 v7, 0x9

    .line 52
    .line 53
    invoke-direct {v5, v7}, Lm7/e;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    check-cast v5, Lf9/a;

    .line 60
    .line 61
    const/16 v7, 0x180

    .line 62
    .line 63
    sget-object v8, Lo1/d;->e:Lu0/j;

    .line 64
    .line 65
    invoke-static {v4, v8, v5, p1, v7}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lo1/d;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lo1/f;

    .line 76
    .line 77
    iput-object v5, v4, Lo1/d;->c:Lo1/f;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 80
    .line 81
    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v1, v3, v2

    .line 85
    .line 86
    new-instance v5, Lf0/q;

    .line 87
    .line 88
    const/4 v7, 0x6

    .line 89
    invoke-direct {v5, v7}, Lf0/q;-><init>(I)V

    .line 90
    .line 91
    .line 92
    new-instance v7, La8/v;

    .line 93
    .line 94
    const/16 v8, 0xc

    .line 95
    .line 96
    invoke-direct {v7, v8, v1, v4}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v8, Lu0/j;

    .line 100
    .line 101
    const/16 v9, 0x13

    .line 102
    .line 103
    invoke-direct {v8, v9, v5, v7}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {p1, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    or-int/2addr v5, v7

    .line 115
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    if-nez v5, :cond_2

    .line 120
    .line 121
    if-ne v7, v6, :cond_3

    .line 122
    .line 123
    :cond_2
    new-instance v7, La8/n0;

    .line 124
    .line 125
    const/4 v5, 0x4

    .line 126
    invoke-direct {v7, v5, v1, v4}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    check-cast v7, Lf9/a;

    .line 133
    .line 134
    invoke-static {v3, v8, v7, p1, v2}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lh0/o0;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v2, Lc8/s;

    .line 145
    .line 146
    const/4 v3, 0x7

    .line 147
    invoke-direct {v2, v3, p0, v1}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const v1, -0x189b31eb

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const/16 v2, 0x38

    .line 158
    .line 159
    invoke-static {v0, v1, p1, v2}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 164
    .line 165
    .line 166
    :goto_1
    invoke-virtual {p1}, Lf1/s;->r()Lf1/w1;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_5

    .line 171
    .line 172
    new-instance v0, La8/d;

    .line 173
    .line 174
    const/16 v1, 0xd

    .line 175
    .line 176
    invoke-direct {v0, p2, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p1, Lf1/w1;->d:Lf9/n;

    .line 180
    .line 181
    :cond_5
    return-void
.end method

.method public static final d(Lh0/v;Ljava/lang/Object;ILjava/lang/Object;Lf1/s;I)V
    .locals 7

    .line 1
    const v0, 0x55d242fd

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p5

    .line 17
    invoke-virtual {p4, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    invoke-virtual {p4, p2}, Lf1/s;->d(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x100

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x80

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    invoke-virtual {p4, p3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const/16 v1, 0x800

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const/16 v1, 0x400

    .line 51
    .line 52
    :goto_3
    or-int/2addr v0, v1

    .line 53
    and-int/lit16 v1, v0, 0x493

    .line 54
    .line 55
    const/16 v2, 0x492

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    if-eq v1, v2, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    const/4 v1, 0x0

    .line 63
    :goto_4
    and-int/2addr v0, v3

    .line 64
    invoke-virtual {p4, v0, v1}, Lf1/s;->N(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    move-object v0, p1

    .line 71
    check-cast v0, Lo1/b;

    .line 72
    .line 73
    new-instance v1, La8/e0;

    .line 74
    .line 75
    invoke-direct {v1, p2, p0, p3}, La8/e0;-><init>(ILh0/v;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const v2, 0x3a785bde

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v1, p4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/16 v2, 0x30

    .line 86
    .line 87
    invoke-interface {v0, p3, v1, p4, v2}, Lo1/b;->d(Ljava/lang/Object;Ln1/c;Lf1/s;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 92
    .line 93
    .line 94
    :goto_5
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    if-eqz p4, :cond_6

    .line 99
    .line 100
    new-instance v0, Lh0/u;

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    move-object v1, p0

    .line 104
    move-object v2, p1

    .line 105
    move v3, p2

    .line 106
    move-object v4, p3

    .line 107
    move v5, p5

    .line 108
    invoke-direct/range {v0 .. v6}, Lh0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p4, Lf1/w1;->d:Lf9/n;

    .line 112
    .line 113
    :cond_6
    return-void
.end method

.method public static final e(ILh1/e;)I
    .locals 5

    .line 1
    iget v0, p1, Lh1/e;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    sub-int v2, v0, v1

    .line 9
    .line 10
    div-int/lit8 v2, v2, 0x2

    .line 11
    .line 12
    add-int/2addr v2, v1

    .line 13
    iget-object v3, p1, Lh1/e;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    aget-object v4, v3, v2

    .line 16
    .line 17
    check-cast v4, Lh0/i;

    .line 18
    .line 19
    iget v4, v4, Lh0/i;->a:I

    .line 20
    .line 21
    if-ne v4, p0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    if-ge v4, p0, :cond_2

    .line 25
    .line 26
    add-int/lit8 v1, v2, 0x1

    .line 27
    .line 28
    aget-object v3, v3, v1

    .line 29
    .line 30
    check-cast v3, Lh0/i;

    .line 31
    .line 32
    iget v3, v3, Lh0/i;->a:I

    .line 33
    .line 34
    if-ge p0, v3, :cond_0

    .line 35
    .line 36
    :goto_1
    return v2

    .line 37
    :cond_2
    add-int/lit8 v0, v2, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    return v1
.end method

.method public static final f(Lh0/a0;IILjava/util/ArrayList;Ls/v;IIILf9/k;)Ljava/util/List;
    .locals 21

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    if-eqz p0, :cond_13

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_13

    .line 16
    .line 17
    iget v4, v2, Ls/v;->b:I

    .line 18
    .line 19
    if-eqz v4, :cond_13

    .line 20
    .line 21
    sub-int v5, p2, v0

    .line 22
    .line 23
    const/4 v6, -0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    if-ltz v5, :cond_3

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {v7, v4}, Li9/a;->Z(II)Ll9/d;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget v5, v4, Ll9/b;->a:I

    .line 35
    .line 36
    iget v4, v4, Ll9/b;->b:I

    .line 37
    .line 38
    const/4 v8, -0x1

    .line 39
    if-gt v5, v4, :cond_1

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v2, v5}, Ls/v;->b(I)I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-gt v9, v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Ls/v;->b(I)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eq v5, v4, :cond_1

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-ne v8, v6, :cond_2

    .line 57
    .line 58
    sget-object v0, Ls/j;->a:Ls/v;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    sget-object v0, Ls/j;->a:Ls/v;

    .line 62
    .line 63
    new-instance v0, Ls/v;

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-direct {v0, v4}, Ls/v;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v8}, Ls/v;->a(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    sget-object v0, Ls/j;->a:Ls/v;

    .line 74
    .line 75
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    const/4 v9, 0x0

    .line 94
    :goto_3
    if-ge v9, v8, :cond_6

    .line 95
    .line 96
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    move-object v11, v10

    .line 101
    check-cast v11, Lh0/y;

    .line 102
    .line 103
    invoke-interface {v11}, Lh0/y;->getIndex()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    iget-object v12, v2, Ls/v;->a:[I

    .line 108
    .line 109
    iget v13, v2, Ls/v;->b:I

    .line 110
    .line 111
    const/4 v14, 0x0

    .line 112
    :goto_4
    if-ge v14, v13, :cond_5

    .line 113
    .line 114
    aget v15, v12, v14

    .line 115
    .line 116
    if-ne v15, v11, :cond_4

    .line 117
    .line 118
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    iget-object v2, v0, Ls/v;->a:[I

    .line 129
    .line 130
    iget v0, v0, Ls/v;->b:I

    .line 131
    .line 132
    const/4 v8, 0x0

    .line 133
    :goto_6
    if-ge v8, v0, :cond_12

    .line 134
    .line 135
    aget v9, v2, v8

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    const/4 v11, 0x0

    .line 142
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-eqz v12, :cond_8

    .line 147
    .line 148
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    check-cast v12, Lh0/y;

    .line 153
    .line 154
    invoke-interface {v12}, Lh0/y;->getIndex()I

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-ne v12, v9, :cond_7

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_8
    const/4 v11, -0x1

    .line 165
    :goto_8
    if-ne v11, v6, :cond_9

    .line 166
    .line 167
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    move-object/from16 v12, p8

    .line 172
    .line 173
    invoke-interface {v12, v10}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    check-cast v10, Lh0/y;

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_9
    move-object/from16 v12, p8

    .line 181
    .line 182
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    check-cast v10, Lh0/y;

    .line 187
    .line 188
    :goto_9
    invoke-interface {v10}, Lh0/y;->c()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    const-wide v15, 0xffffffffL

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    const/16 p0, 0x20

    .line 198
    .line 199
    const/high16 v14, -0x80000000

    .line 200
    .line 201
    if-ne v11, v6, :cond_a

    .line 202
    .line 203
    const/high16 v7, -0x80000000

    .line 204
    .line 205
    goto :goto_b

    .line 206
    :cond_a
    invoke-interface {v10, v7}, Lh0/y;->i(I)J

    .line 207
    .line 208
    .line 209
    move-result-wide v17

    .line 210
    invoke-interface {v10}, Lh0/y;->f()Z

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    if-eqz v11, :cond_b

    .line 215
    .line 216
    and-long v6, v17, v15

    .line 217
    .line 218
    :goto_a
    long-to-int v7, v6

    .line 219
    goto :goto_b

    .line 220
    :cond_b
    shr-long v6, v17, p0

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    const/4 v11, 0x0

    .line 228
    :goto_c
    if-ge v11, v6, :cond_d

    .line 229
    .line 230
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v17

    .line 234
    move-object/from16 v18, v17

    .line 235
    .line 236
    check-cast v18, Lh0/y;

    .line 237
    .line 238
    move-wide/from16 v19, v15

    .line 239
    .line 240
    invoke-interface/range {v18 .. v18}, Lh0/y;->getIndex()I

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    if-eq v15, v9, :cond_c

    .line 245
    .line 246
    goto :goto_d

    .line 247
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 248
    .line 249
    move-wide/from16 v15, v19

    .line 250
    .line 251
    goto :goto_c

    .line 252
    :cond_d
    move-wide/from16 v19, v15

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    :goto_d
    move-object/from16 v6, v17

    .line 257
    .line 258
    check-cast v6, Lh0/y;

    .line 259
    .line 260
    if-eqz v6, :cond_f

    .line 261
    .line 262
    const/4 v11, 0x0

    .line 263
    invoke-interface {v6, v11}, Lh0/y;->i(I)J

    .line 264
    .line 265
    .line 266
    move-result-wide v15

    .line 267
    invoke-interface {v6}, Lh0/y;->f()Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-eqz v6, :cond_e

    .line 272
    .line 273
    and-long v11, v15, v19

    .line 274
    .line 275
    :goto_e
    long-to-int v6, v11

    .line 276
    goto :goto_f

    .line 277
    :cond_e
    shr-long v11, v15, p0

    .line 278
    .line 279
    goto :goto_e

    .line 280
    :cond_f
    const/high16 v6, -0x80000000

    .line 281
    .line 282
    :goto_f
    if-ne v7, v14, :cond_10

    .line 283
    .line 284
    neg-int v7, v3

    .line 285
    goto :goto_10

    .line 286
    :cond_10
    neg-int v9, v3

    .line 287
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    :goto_10
    if-eq v6, v14, :cond_11

    .line 292
    .line 293
    sub-int/2addr v6, v13

    .line 294
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    :cond_11
    invoke-interface {v10}, Lh0/y;->g()V

    .line 299
    .line 300
    .line 301
    move/from16 v6, p6

    .line 302
    .line 303
    move/from16 v9, p7

    .line 304
    .line 305
    invoke-interface {v10, v7, v6, v9}, Lh0/y;->h(III)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    add-int/lit8 v8, v8, 0x1

    .line 312
    .line 313
    const/4 v6, -0x1

    .line 314
    const/4 v7, 0x0

    .line 315
    goto/16 :goto_6

    .line 316
    .line 317
    :cond_12
    return-object v4

    .line 318
    :cond_13
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 319
    .line 320
    return-object v0
.end method

.method public static final g(Lh0/v;Lh0/e0;Lh0/k;)Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p2, Lh0/k;->a:Lh1/e;

    .line 2
    .line 3
    iget v1, v0, Lh1/e;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p1, Lh0/e0;->a:Lp1/p;

    .line 15
    .line 16
    invoke-virtual {v1}, Lp1/p;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object p2, p2, Lh0/k;->a:Lh1/e;

    .line 31
    .line 32
    iget p2, p2, Lh1/e;->c:I

    .line 33
    .line 34
    if-eqz p2, :cond_9

    .line 35
    .line 36
    new-instance p2, Ll9/d;

    .line 37
    .line 38
    iget v4, v0, Lh1/e;->c:I

    .line 39
    .line 40
    const-string v5, "MutableVector is empty."

    .line 41
    .line 42
    if-eqz v4, :cond_8

    .line 43
    .line 44
    iget-object v6, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 45
    .line 46
    aget-object v7, v6, v2

    .line 47
    .line 48
    check-cast v7, Lh0/j;

    .line 49
    .line 50
    iget v7, v7, Lh0/j;->a:I

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    :goto_1
    if-ge v8, v4, :cond_3

    .line 54
    .line 55
    aget-object v9, v6, v8

    .line 56
    .line 57
    check-cast v9, Lh0/j;

    .line 58
    .line 59
    iget v9, v9, Lh0/j;->a:I

    .line 60
    .line 61
    if-ge v9, v7, :cond_2

    .line 62
    .line 63
    move v7, v9

    .line 64
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    if-ltz v7, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const-string v4, "negative minIndex"

    .line 71
    .line 72
    invoke-static {v4}, Lc0/b;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    iget v4, v0, Lh1/e;->c:I

    .line 76
    .line 77
    if-eqz v4, :cond_7

    .line 78
    .line 79
    iget-object v0, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 80
    .line 81
    aget-object v5, v0, v2

    .line 82
    .line 83
    check-cast v5, Lh0/j;

    .line 84
    .line 85
    iget v5, v5, Lh0/j;->b:I

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    :goto_3
    if-ge v6, v4, :cond_6

    .line 89
    .line 90
    aget-object v8, v0, v6

    .line 91
    .line 92
    check-cast v8, Lh0/j;

    .line 93
    .line 94
    iget v8, v8, Lh0/j;->b:I

    .line 95
    .line 96
    if-le v8, v5, :cond_5

    .line 97
    .line 98
    move v5, v8

    .line 99
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    invoke-interface {p0}, Lh0/v;->a()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    sub-int/2addr v0, v3

    .line 107
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-direct {p2, v7, v0, v3}, Ll9/b;-><init>(III)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 116
    .line 117
    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 122
    .line 123
    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_9
    sget-object p2, Ll9/d;->d:Ll9/d;

    .line 128
    .line 129
    :goto_4
    iget-object v0, p1, Lh0/e0;->a:Lp1/p;

    .line 130
    .line 131
    invoke-virtual {v0}, Lp1/p;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    :goto_5
    if-ge v2, v0, :cond_c

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Lh0/e0;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lh0/c0;

    .line 142
    .line 143
    iget-object v4, v3, Lh0/c0;->a:Ljava/lang/Object;

    .line 144
    .line 145
    iget v3, v3, Lh0/c0;->c:I

    .line 146
    .line 147
    invoke-static {v3, p0, v4}, Lh0/z;->i(ILh0/v;Ljava/lang/Object;)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    iget v4, p2, Ll9/b;->a:I

    .line 152
    .line 153
    iget v5, p2, Ll9/b;->b:I

    .line 154
    .line 155
    if-gt v3, v5, :cond_a

    .line 156
    .line 157
    if-gt v4, v3, :cond_a

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_a
    if-ltz v3, :cond_b

    .line 161
    .line 162
    invoke-interface {p0}, Lh0/v;->a()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-ge v3, v4, :cond_b

    .line 167
    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_c
    iget p0, p2, Ll9/b;->a:I

    .line 179
    .line 180
    iget p1, p2, Ll9/b;->b:I

    .line 181
    .line 182
    if-gt p0, p1, :cond_d

    .line 183
    .line 184
    :goto_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    if-eq p0, p1, :cond_d

    .line 192
    .line 193
    add-int/lit8 p0, p0, 0x1

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_d
    return-object v1
.end method

.method public static h()Lf1/b1;
    .locals 3

    .line 1
    sget-object v0, Lf1/w0;->c:Lf1/w0;

    .line 2
    .line 3
    new-instance v1, Lf1/k1;

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    invoke-direct {v1, v2, v0}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public static final i(ILh0/v;Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Lh0/v;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Lh0/v;->a()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p0, v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p0}, Lh0/v;->b(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1, p2}, Lh0/v;->d(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, -0x1

    .line 32
    if-eq p1, p2, :cond_2

    .line 33
    .line 34
    return p1

    .line 35
    :cond_2
    :goto_0
    return p0
.end method

.method public static final m(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p3}, Ls8/p;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lh0/y;

    .line 26
    .line 27
    invoke-interface {v2}, Lh0/y;->getIndex()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-gt p0, v3, :cond_1

    .line 32
    .line 33
    if-gt v3, p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget-object p0, Lh0/z;->a:Lb4/c;

    .line 42
    .line 43
    invoke-static {p3, p0}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    return-object p3
.end method


# virtual methods
.method public j(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh0/z;->k()Le7/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Le7/l;->c(I)Lh0/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lh0/i;->a:I

    .line 10
    .line 11
    sub-int/2addr p1, v1

    .line 12
    iget-object v0, v0, Lh0/i;->c:Lh0/p;

    .line 13
    .line 14
    invoke-interface {v0}, Lh0/p;->getType()Lf9/k;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public abstract k()Le7/l;
.end method

.method public l(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh0/z;->k()Le7/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Le7/l;->c(I)Lh0/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lh0/i;->a:I

    .line 10
    .line 11
    sub-int v1, p1, v1

    .line 12
    .line 13
    iget-object v0, v0, Lh0/i;->c:Lh0/p;

    .line 14
    .line 15
    invoke-interface {v0}, Lh0/p;->getKey()Lf9/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Lh0/g;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lh0/g;-><init>(I)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
