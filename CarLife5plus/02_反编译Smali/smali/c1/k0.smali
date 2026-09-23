.class public abstract Lc1/k0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Le1/j;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/layout/c;->h(F)Lr1/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lc1/k0;->a:Lr1/p;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Ld2/b;Ljava/lang/String;Lr1/p;JLf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v0, p5

    .line 8
    .line 9
    move/from16 v6, p6

    .line 10
    .line 11
    const v1, -0x7faffaf9

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v1, v6, 0x6

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    move-object/from16 v1, p0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v7, 0x2

    .line 32
    :goto_0
    or-int/2addr v7, v6

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object/from16 v1, p0

    .line 35
    .line 36
    move v7, v6

    .line 37
    :goto_1
    and-int/lit8 v8, v6, 0x30

    .line 38
    .line 39
    const/16 v9, 0x20

    .line 40
    .line 41
    if-nez v8, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    const/16 v8, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v8, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v7, v8

    .line 55
    :cond_3
    and-int/lit16 v8, v6, 0x180

    .line 56
    .line 57
    if-nez v8, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_4

    .line 64
    .line 65
    const/16 v8, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v8, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v7, v8

    .line 71
    :cond_5
    and-int/lit16 v8, v6, 0xc00

    .line 72
    .line 73
    const/16 v10, 0x800

    .line 74
    .line 75
    if-nez v8, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0, v4, v5}, Lf1/s;->e(J)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_6

    .line 82
    .line 83
    const/16 v8, 0x800

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v8, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr v7, v8

    .line 89
    :cond_7
    and-int/lit16 v8, v7, 0x493

    .line 90
    .line 91
    const/16 v11, 0x492

    .line 92
    .line 93
    if-ne v8, v11, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-nez v8, :cond_8

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_d

    .line 106
    .line 107
    :cond_9
    :goto_5
    invoke-virtual {v0}, Lf1/s;->S()V

    .line 108
    .line 109
    .line 110
    and-int/lit8 v8, v6, 0x1

    .line 111
    .line 112
    if-eqz v8, :cond_b

    .line 113
    .line 114
    invoke-virtual {v0}, Lf1/s;->x()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_a

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_a
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 122
    .line 123
    .line 124
    :cond_b
    :goto_6
    invoke-virtual {v0}, Lf1/s;->q()V

    .line 125
    .line 126
    .line 127
    and-int/lit16 v8, v7, 0x1c00

    .line 128
    .line 129
    xor-int/lit16 v8, v8, 0xc00

    .line 130
    .line 131
    const/4 v11, 0x1

    .line 132
    if-le v8, v10, :cond_c

    .line 133
    .line 134
    invoke-virtual {v0, v4, v5}, Lf1/s;->e(J)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-nez v8, :cond_d

    .line 139
    .line 140
    :cond_c
    and-int/lit16 v8, v7, 0xc00

    .line 141
    .line 142
    if-ne v8, v10, :cond_e

    .line 143
    .line 144
    :cond_d
    const/4 v8, 0x1

    .line 145
    goto :goto_7

    .line 146
    :cond_e
    const/4 v8, 0x0

    .line 147
    :goto_7
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 152
    .line 153
    if-nez v8, :cond_f

    .line 154
    .line 155
    if-ne v10, v12, :cond_11

    .line 156
    .line 157
    :cond_f
    sget-wide v14, Ly1/q;->m:J

    .line 158
    .line 159
    invoke-static {v4, v5, v14, v15}, Ly1/q;->c(JJ)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_10

    .line 164
    .line 165
    const/4 v8, 0x0

    .line 166
    :goto_8
    move-object v10, v8

    .line 167
    goto :goto_9

    .line 168
    :cond_10
    new-instance v8, Ly1/k;

    .line 169
    .line 170
    const/4 v10, 0x5

    .line 171
    invoke-direct {v8, v10, v4, v5}, Ly1/k;-><init>(IJ)V

    .line 172
    .line 173
    .line 174
    goto :goto_8

    .line 175
    :goto_9
    invoke-virtual {v0, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_11
    check-cast v10, Ly1/k;

    .line 179
    .line 180
    const v8, -0x7fd87200

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v8}, Lf1/s;->W(I)V

    .line 184
    .line 185
    .line 186
    sget-object v8, Lr1/m;->a:Lr1/m;

    .line 187
    .line 188
    if-eqz v2, :cond_15

    .line 189
    .line 190
    and-int/lit8 v7, v7, 0x70

    .line 191
    .line 192
    if-ne v7, v9, :cond_12

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_12
    const/4 v11, 0x0

    .line 196
    :goto_a
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    if-nez v11, :cond_13

    .line 201
    .line 202
    if-ne v7, v12, :cond_14

    .line 203
    .line 204
    :cond_13
    new-instance v7, Lc1/j0;

    .line 205
    .line 206
    const/4 v9, 0x0

    .line 207
    invoke-direct {v7, v9, v2}, Lc1/j0;-><init>(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_14
    check-cast v7, Lf9/k;

    .line 214
    .line 215
    invoke-static {v8, v7}, Ly2/k;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    move-object v14, v7

    .line 220
    :goto_b
    const/4 v7, 0x0

    .line 221
    goto :goto_c

    .line 222
    :cond_15
    move-object v14, v8

    .line 223
    goto :goto_b

    .line 224
    :goto_c
    invoke-virtual {v0, v7}, Lf1/s;->p(Z)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ld2/b;->d()J

    .line 228
    .line 229
    .line 230
    move-result-wide v11

    .line 231
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    invoke-static {v11, v12, v1, v2}, Lx1/e;->a(JJ)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_16

    .line 241
    .line 242
    invoke-virtual/range {p0 .. p0}, Ld2/b;->d()J

    .line 243
    .line 244
    .line 245
    move-result-wide v1

    .line 246
    invoke-static {v1, v2}, Lx1/e;->d(J)F

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_17

    .line 255
    .line 256
    invoke-static {v1, v2}, Lx1/e;->b(J)F

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_17

    .line 265
    .line 266
    :cond_16
    sget-object v8, Lc1/k0;->a:Lr1/p;

    .line 267
    .line 268
    :cond_17
    invoke-interface {v3, v8}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    const/4 v11, 0x0

    .line 273
    const/16 v13, 0x16

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    move-object v12, v10

    .line 277
    sget-object v10, Lo2/j;->b:Lo2/i;

    .line 278
    .line 279
    move-object/from16 v8, p0

    .line 280
    .line 281
    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/draw/a;->d(Lr1/p;Ld2/b;Lr1/d;Lo2/i;FLy1/k;I)Lr1/p;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-interface {v1, v14}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const/4 v7, 0x0

    .line 290
    invoke-static {v1, v0, v7}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 291
    .line 292
    .line 293
    :goto_d
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    if-eqz v7, :cond_18

    .line 298
    .line 299
    new-instance v0, Lc1/i0;

    .line 300
    .line 301
    move-object/from16 v1, p0

    .line 302
    .line 303
    move-object/from16 v2, p1

    .line 304
    .line 305
    invoke-direct/range {v0 .. v6}, Lc1/i0;-><init>(Ld2/b;Ljava/lang/String;Lr1/p;JI)V

    .line 306
    .line 307
    .line 308
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 309
    .line 310
    :cond_18
    return-void
.end method

.method public static final b(Le2/f;Ljava/lang/String;Lr1/p;JLf1/s;II)V
    .locals 8

    .line 1
    const v0, -0x79033cc

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
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p5, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p6

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p6

    .line 23
    :goto_1
    and-int/lit8 v1, p6, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit16 v1, p6, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {p5, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const/16 v1, 0x100

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/16 v1, 0x80

    .line 53
    .line 54
    :goto_3
    or-int/2addr v0, v1

    .line 55
    :cond_5
    and-int/lit16 v1, p6, 0xc00

    .line 56
    .line 57
    if-nez v1, :cond_7

    .line 58
    .line 59
    and-int/lit8 v1, p7, 0x8

    .line 60
    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p5, p3, p4}, Lf1/s;->e(J)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    const/16 v1, 0x800

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    const/16 v1, 0x400

    .line 73
    .line 74
    :goto_4
    or-int/2addr v0, v1

    .line 75
    :cond_7
    and-int/lit16 v1, v0, 0x493

    .line 76
    .line 77
    const/16 v2, 0x492

    .line 78
    .line 79
    if-ne v1, v2, :cond_9

    .line 80
    .line 81
    invoke-virtual {p5}, Lf1/s;->z()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_8

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_8
    invoke-virtual {p5}, Lf1/s;->Q()V

    .line 89
    .line 90
    .line 91
    move-object v6, p5

    .line 92
    move-wide p4, p3

    .line 93
    move-object p3, p2

    .line 94
    move-object p2, p1

    .line 95
    goto :goto_9

    .line 96
    :cond_9
    :goto_5
    invoke-virtual {p5}, Lf1/s;->S()V

    .line 97
    .line 98
    .line 99
    and-int/lit8 v1, p6, 0x1

    .line 100
    .line 101
    if-eqz v1, :cond_c

    .line 102
    .line 103
    invoke-virtual {p5}, Lf1/s;->x()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_a
    invoke-virtual {p5}, Lf1/s;->Q()V

    .line 111
    .line 112
    .line 113
    and-int/lit8 v1, p7, 0x8

    .line 114
    .line 115
    if-eqz v1, :cond_b

    .line 116
    .line 117
    :goto_6
    and-int/lit16 v0, v0, -0x1c01

    .line 118
    .line 119
    :cond_b
    move-wide v4, p3

    .line 120
    goto :goto_8

    .line 121
    :cond_c
    :goto_7
    and-int/lit8 v1, p7, 0x8

    .line 122
    .line 123
    if-eqz v1, :cond_b

    .line 124
    .line 125
    sget-object p3, Lc1/a0;->a:Lf1/c0;

    .line 126
    .line 127
    invoke-virtual {p5, p3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    check-cast p3, Ly1/q;

    .line 132
    .line 133
    iget-wide p3, p3, Ly1/q;->a:J

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :goto_8
    invoke-virtual {p5}, Lf1/s;->q()V

    .line 137
    .line 138
    .line 139
    invoke-static {p0, p5}, Le2/b;->c(Le2/f;Lf1/s;)Le2/k0;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    and-int/lit8 p3, v0, 0x70

    .line 144
    .line 145
    const/16 p4, 0x8

    .line 146
    .line 147
    or-int/2addr p3, p4

    .line 148
    and-int/lit16 p4, v0, 0x380

    .line 149
    .line 150
    or-int/2addr p3, p4

    .line 151
    and-int/lit16 p4, v0, 0x1c00

    .line 152
    .line 153
    or-int v7, p3, p4

    .line 154
    .line 155
    move-object v2, p1

    .line 156
    move-object v3, p2

    .line 157
    move-object v6, p5

    .line 158
    invoke-static/range {v1 .. v7}, Lc1/k0;->a(Ld2/b;Ljava/lang/String;Lr1/p;JLf1/s;I)V

    .line 159
    .line 160
    .line 161
    move-object p2, v2

    .line 162
    move-object p3, v3

    .line 163
    move-wide p4, v4

    .line 164
    :goto_9
    invoke-virtual {v6}, Lf1/s;->r()Lf1/w1;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_d

    .line 169
    .line 170
    move-object p1, p0

    .line 171
    new-instance p0, Lc1/h0;

    .line 172
    .line 173
    invoke-direct/range {p0 .. p7}, Lc1/h0;-><init>(Le2/f;Ljava/lang/String;Lr1/p;JII)V

    .line 174
    .line 175
    .line 176
    iput-object p0, v0, Lf1/w1;->d:Lf9/n;

    .line 177
    .line 178
    :cond_d
    return-void
.end method
