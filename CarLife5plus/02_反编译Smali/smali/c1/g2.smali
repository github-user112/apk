.class public abstract Lc1/g2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:J

.field public static final d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Le1/m;->d:F

    .line 2
    .line 3
    sput v0, Lc1/g2;->a:F

    .line 4
    .line 5
    sget v0, Le1/m;->c:F

    .line 6
    .line 7
    sput v0, Lc1/g2;->b:F

    .line 8
    .line 9
    sget v1, Le1/m;->b:F

    .line 10
    .line 11
    invoke-static {v0, v1}, Li2/c;->e(FF)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sput-wide v0, Lc1/g2;->c:J

    .line 16
    .line 17
    sget v0, Le1/m;->a:F

    .line 18
    .line 19
    sput v0, Lc1/g2;->d:F

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    int-to-float v0, v0

    .line 23
    sput v0, Lc1/g2;->e:F

    .line 24
    .line 25
    return-void
.end method

.method public static final a(FLf9/k;Lr1/p;ZLf9/a;Lc1/m1;Lb0/k;ILn1/c;Ln1/c;Ll9/a;Lf1/s;II)V
    .locals 21

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v0, p11

    move/from16 v3, p12

    const v4, 0x46ffd149

    .line 1
    invoke-virtual {v0, v4}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Lf1/s;->c(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v9, v3, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v0, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    :cond_3
    and-int/lit16 v9, v3, 0x180

    move-object/from16 v13, p2

    if-nez v9, :cond_5

    invoke-virtual {v0, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v4, v9

    :cond_5
    and-int/lit16 v9, v3, 0xc00

    move/from16 v14, p3

    if-nez v9, :cond_7

    invoke-virtual {v0, v14}, Lf1/s;->g(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_4

    :cond_6
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v4, v9

    :cond_7
    and-int/lit16 v9, v3, 0x6000

    if-nez v9, :cond_9

    invoke-virtual {v0, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_5

    :cond_8
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v4, v9

    :cond_9
    const/high16 v9, 0x30000

    and-int/2addr v9, v3

    if-nez v9, :cond_b

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v4, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p5

    :goto_7
    const/high16 v10, 0x180000

    and-int/2addr v10, v3

    if-nez v10, :cond_d

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v12, 0x80000

    :goto_8
    or-int/2addr v4, v12

    goto :goto_9

    :cond_d
    move-object/from16 v10, p6

    :goto_9
    const/high16 v12, 0xc00000

    and-int/2addr v12, v3

    if-nez v12, :cond_f

    invoke-virtual {v0, v8}, Lf1/s;->d(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v12, 0x400000

    :goto_a
    or-int/2addr v4, v12

    :cond_f
    const/high16 v12, 0x6000000

    and-int/2addr v12, v3

    if-nez v12, :cond_11

    move-object/from16 v12, p8

    invoke-virtual {v0, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x2000000

    :goto_b
    or-int v4, v4, v16

    goto :goto_c

    :cond_11
    move-object/from16 v12, p8

    :goto_c
    const/high16 v16, 0x30000000

    and-int v16, v3, v16

    move-object/from16 v7, p9

    if-nez v16, :cond_13

    invoke-virtual {v0, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v17, 0x10000000

    :goto_d
    or-int v4, v4, v17

    :cond_13
    and-int/lit8 v17, p13, 0x6

    if-nez v17, :cond_15

    invoke-virtual {v0, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x4

    goto :goto_e

    :cond_14
    const/16 v17, 0x2

    :goto_e
    or-int v17, p13, v17

    goto :goto_f

    :cond_15
    move/from16 v17, p13

    :goto_f
    const v18, 0x12492493

    and-int v15, v4, v18

    const v6, 0x12492492

    if-ne v15, v6, :cond_17

    and-int/lit8 v6, v17, 0x3

    const/4 v15, 0x2

    if-ne v6, v15, :cond_17

    invoke-virtual {v0}, Lf1/s;->z()Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_10

    .line 2
    :cond_16
    invoke-virtual {v0}, Lf1/s;->Q()V

    goto/16 :goto_14

    .line 3
    :cond_17
    :goto_10
    invoke-virtual {v0}, Lf1/s;->S()V

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_19

    invoke-virtual {v0}, Lf1/s;->x()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_11

    .line 4
    :cond_18
    invoke-virtual {v0}, Lf1/s;->Q()V

    :cond_19
    :goto_11
    invoke-virtual {v0}, Lf1/s;->q()V

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v4

    const/16 v18, 0x1

    const/high16 v15, 0x800000

    if-ne v6, v15, :cond_1a

    const/4 v6, 0x1

    goto :goto_12

    :cond_1a
    const/4 v6, 0x0

    :goto_12
    and-int/lit8 v15, v17, 0xe

    xor-int/lit8 v15, v15, 0x6

    const/4 v3, 0x4

    if-le v15, v3, :cond_1b

    .line 5
    invoke-virtual {v0, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    :cond_1b
    and-int/lit8 v15, v17, 0x6

    if-ne v15, v3, :cond_1d

    :cond_1c
    const/4 v15, 0x1

    goto :goto_13

    :cond_1d
    const/4 v15, 0x0

    :goto_13
    or-int v3, v6, v15

    .line 6
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_1e

    .line 7
    sget-object v3, Lf1/n;->a:Lf1/w0;

    if-ne v6, v3, :cond_1f

    .line 8
    :cond_1e
    new-instance v6, Lc1/i2;

    invoke-direct {v6, v1, v8, v5, v11}, Lc1/i2;-><init>(FILf9/a;Ll9/a;)V

    .line 9
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 10
    :cond_1f
    check-cast v6, Lc1/i2;

    .line 11
    iput-object v5, v6, Lc1/i2;->b:Lf9/a;

    .line 12
    iput-object v2, v6, Lc1/i2;->e:Lf9/k;

    .line 13
    invoke-virtual {v6, v1}, Lc1/i2;->c(F)V

    shr-int/lit8 v3, v4, 0x3

    and-int/lit16 v3, v3, 0x3f0

    shr-int/lit8 v15, v4, 0x6

    const v16, 0xe000

    and-int v15, v15, v16

    or-int/2addr v3, v15

    shr-int/lit8 v4, v4, 0x9

    const/high16 v15, 0x70000

    and-int/2addr v15, v4

    or-int/2addr v3, v15

    const/high16 v15, 0x380000

    and-int/2addr v4, v15

    or-int v20, v3, v4

    const/4 v15, 0x0

    move-object/from16 v19, v0

    move-object/from16 v18, v7

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object v12, v6

    .line 14
    invoke-static/range {v12 .. v20}, Lc1/g2;->c(Lc1/i2;Lr1/p;ZLc1/m1;Lb0/k;Ln1/c;Ln1/c;Lf1/s;I)V

    .line 15
    :goto_14
    invoke-virtual/range {p11 .. p11}, Lf1/s;->r()Lf1/w1;

    move-result-object v14

    if-eqz v14, :cond_20

    new-instance v0, Lc1/y1;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move/from16 v12, p12

    move/from16 v13, p13

    move-object v6, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v13}, Lc1/y1;-><init>(FLf9/k;Lr1/p;ZLf9/a;Lc1/m1;Lb0/k;ILn1/c;Ln1/c;Ll9/a;II)V

    .line 16
    iput-object v0, v14, Lf1/w1;->d:Lf9/n;

    :cond_20
    return-void
.end method

.method public static final b(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;Lf1/s;II)V
    .locals 15

    .line 1
    move-object/from16 v11, p9

    .line 2
    .line 3
    move/from16 v14, p10

    .line 4
    .line 5
    const v0, -0xc0af27b

    .line 6
    .line 7
    .line 8
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v11, p0}, Lf1/s;->c(F)Z

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
    or-int/2addr v0, v14

    .line 21
    and-int/lit16 v1, v14, 0x180

    .line 22
    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v11, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x100

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x80

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    :cond_2
    or-int/lit16 v0, v0, 0xc00

    .line 40
    .line 41
    move-object/from16 v5, p4

    .line 42
    .line 43
    invoke-virtual {v11, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/16 v1, 0x4000

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    const/16 v1, 0x2000

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v1

    .line 55
    const/high16 v1, 0x30000

    .line 56
    .line 57
    and-int/2addr v1, v14

    .line 58
    move/from16 v6, p5

    .line 59
    .line 60
    if-nez v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v11, v6}, Lf1/s;->d(I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    const/high16 v1, 0x20000

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/high16 v1, 0x10000

    .line 72
    .line 73
    :goto_3
    or-int/2addr v0, v1

    .line 74
    :cond_5
    and-int/lit8 v1, p11, 0x40

    .line 75
    .line 76
    const/high16 v3, 0x180000

    .line 77
    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    or-int/2addr v0, v3

    .line 81
    :cond_6
    move-object/from16 v4, p6

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_7
    and-int v4, v14, v3

    .line 85
    .line 86
    if-nez v4, :cond_6

    .line 87
    .line 88
    move-object/from16 v4, p6

    .line 89
    .line 90
    invoke-virtual {v11, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_8

    .line 95
    .line 96
    const/high16 v7, 0x100000

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_8
    const/high16 v7, 0x80000

    .line 100
    .line 101
    :goto_4
    or-int/2addr v0, v7

    .line 102
    :goto_5
    const/high16 v7, 0x6400000

    .line 103
    .line 104
    or-int/2addr v0, v7

    .line 105
    const v7, 0x2492493

    .line 106
    .line 107
    .line 108
    and-int/2addr v7, v0

    .line 109
    const v8, 0x2492492

    .line 110
    .line 111
    .line 112
    if-ne v7, v8, :cond_a

    .line 113
    .line 114
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_9

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_9
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 122
    .line 123
    .line 124
    move-object/from16 v8, p7

    .line 125
    .line 126
    move-object/from16 v9, p8

    .line 127
    .line 128
    move-object v7, v4

    .line 129
    move/from16 v4, p3

    .line 130
    .line 131
    goto/16 :goto_9

    .line 132
    .line 133
    :cond_a
    :goto_6
    invoke-virtual {v11}, Lf1/s;->S()V

    .line 134
    .line 135
    .line 136
    and-int/lit8 v7, v14, 0x1

    .line 137
    .line 138
    const v8, -0x1c00001

    .line 139
    .line 140
    .line 141
    if-eqz v7, :cond_c

    .line 142
    .line 143
    invoke-virtual {v11}, Lf1/s;->x()Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_b

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_b
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 151
    .line 152
    .line 153
    and-int/2addr v0, v8

    .line 154
    move/from16 v8, p3

    .line 155
    .line 156
    move-object/from16 v5, p7

    .line 157
    .line 158
    move-object/from16 v6, p8

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    move-object v4, v1

    .line 165
    :cond_d
    sget-object v1, Lc1/t1;->a:Lc1/t1;

    .line 166
    .line 167
    invoke-static {v11}, Lc1/t1;->c(Lf1/s;)Lc1/m1;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    and-int/2addr v0, v8

    .line 172
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 177
    .line 178
    if-ne v7, v8, :cond_e

    .line 179
    .line 180
    invoke-static {v11}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    :cond_e
    check-cast v7, Lb0/k;

    .line 185
    .line 186
    const/4 v8, 0x1

    .line 187
    move-object v5, v1

    .line 188
    move-object v6, v7

    .line 189
    :goto_8
    invoke-virtual {v11}, Lf1/s;->q()V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lc1/v1;

    .line 193
    .line 194
    invoke-direct {v1, v6, v5, v8}, Lc1/v1;-><init>(Lb0/k;Lc1/m1;Z)V

    .line 195
    .line 196
    .line 197
    const v7, 0x125f81c1

    .line 198
    .line 199
    .line 200
    invoke-static {v7, v1, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v7, Lc1/w1;

    .line 205
    .line 206
    invoke-direct {v7, v5, v8}, Lc1/w1;-><init>(Lc1/m1;Z)V

    .line 207
    .line 208
    .line 209
    const v9, -0x6ddd853e

    .line 210
    .line 211
    .line 212
    invoke-static {v9, v7, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    and-int/lit8 v7, v0, 0xe

    .line 217
    .line 218
    const v10, 0x36000030

    .line 219
    .line 220
    .line 221
    or-int/2addr v7, v10

    .line 222
    and-int/lit16 v10, v0, 0x380

    .line 223
    .line 224
    or-int/2addr v7, v10

    .line 225
    or-int/lit16 v7, v7, 0xc00

    .line 226
    .line 227
    shr-int/lit8 v10, v0, 0x6

    .line 228
    .line 229
    const v12, 0xe000

    .line 230
    .line 231
    .line 232
    and-int/2addr v10, v12

    .line 233
    or-int/2addr v7, v10

    .line 234
    or-int/2addr v3, v7

    .line 235
    const/high16 v7, 0x1c00000

    .line 236
    .line 237
    shl-int/lit8 v10, v0, 0x6

    .line 238
    .line 239
    and-int/2addr v7, v10

    .line 240
    or-int v12, v3, v7

    .line 241
    .line 242
    shr-int/lit8 v0, v0, 0xc

    .line 243
    .line 244
    and-int/lit8 v13, v0, 0xe

    .line 245
    .line 246
    move v0, p0

    .line 247
    move-object/from16 v10, p4

    .line 248
    .line 249
    move/from16 v7, p5

    .line 250
    .line 251
    move v3, v8

    .line 252
    move-object v8, v1

    .line 253
    move-object/from16 v1, p1

    .line 254
    .line 255
    invoke-static/range {v0 .. v13}, Lc1/g2;->a(FLf9/k;Lr1/p;ZLf9/a;Lc1/m1;Lb0/k;ILn1/c;Ln1/c;Ll9/a;Lf1/s;II)V

    .line 256
    .line 257
    .line 258
    move-object v7, v4

    .line 259
    move-object v8, v5

    .line 260
    move-object v9, v6

    .line 261
    move v4, v3

    .line 262
    :goto_9
    invoke-virtual/range {p9 .. p9}, Lf1/s;->r()Lf1/w1;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    if-eqz v12, :cond_f

    .line 267
    .line 268
    new-instance v0, Lc1/x1;

    .line 269
    .line 270
    move v1, p0

    .line 271
    move-object/from16 v2, p1

    .line 272
    .line 273
    move-object/from16 v3, p2

    .line 274
    .line 275
    move-object/from16 v5, p4

    .line 276
    .line 277
    move/from16 v6, p5

    .line 278
    .line 279
    move/from16 v11, p11

    .line 280
    .line 281
    move v10, v14

    .line 282
    invoke-direct/range {v0 .. v11}, Lc1/x1;-><init>(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;II)V

    .line 283
    .line 284
    .line 285
    iput-object v0, v12, Lf1/w1;->d:Lf9/n;

    .line 286
    .line 287
    :cond_f
    return-void
.end method

.method public static final c(Lc1/i2;Lr1/p;ZLc1/m1;Lb0/k;Ln1/c;Ln1/c;Lf1/s;I)V
    .locals 10

    .line 1
    move-object/from16 v6, p7

    .line 2
    .line 3
    move/from16 v8, p8

    .line 4
    .line 5
    const v0, -0x4db7b0d2

    .line 6
    .line 7
    .line 8
    invoke-virtual {v6, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, v8, 0x6

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v6, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int/2addr v0, v8

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, v8

    .line 27
    :goto_1
    and-int/lit8 v1, v8, 0x30

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v6, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    :cond_3
    and-int/lit16 v1, v8, 0x180

    .line 44
    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {v6, p2}, Lf1/s;->g(Z)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const/16 v1, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v1, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, v1

    .line 59
    :cond_5
    and-int/lit16 v1, v8, 0xc00

    .line 60
    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    or-int/lit16 v0, v0, 0x400

    .line 64
    .line 65
    :cond_6
    and-int/lit16 v1, v8, 0x6000

    .line 66
    .line 67
    if-nez v1, :cond_8

    .line 68
    .line 69
    invoke-virtual {v6, p4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    const/16 v1, 0x4000

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_7
    const/16 v1, 0x2000

    .line 79
    .line 80
    :goto_4
    or-int/2addr v0, v1

    .line 81
    :cond_8
    const/high16 v1, 0x30000

    .line 82
    .line 83
    and-int/2addr v1, v8

    .line 84
    if-nez v1, :cond_a

    .line 85
    .line 86
    invoke-virtual {v6, p5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_9

    .line 91
    .line 92
    const/high16 v1, 0x20000

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_9
    const/high16 v1, 0x10000

    .line 96
    .line 97
    :goto_5
    or-int/2addr v0, v1

    .line 98
    :cond_a
    const/high16 v1, 0x180000

    .line 99
    .line 100
    and-int/2addr v1, v8

    .line 101
    move-object/from16 v7, p6

    .line 102
    .line 103
    if-nez v1, :cond_c

    .line 104
    .line 105
    invoke-virtual {v6, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_b

    .line 110
    .line 111
    const/high16 v1, 0x100000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_b
    const/high16 v1, 0x80000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v0, v1

    .line 117
    :cond_c
    const v1, 0x92493

    .line 118
    .line 119
    .line 120
    and-int/2addr v1, v0

    .line 121
    const v2, 0x92492

    .line 122
    .line 123
    .line 124
    if-ne v1, v2, :cond_e

    .line 125
    .line 126
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_d
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 134
    .line 135
    .line 136
    move-object v4, p3

    .line 137
    goto :goto_a

    .line 138
    :cond_e
    :goto_7
    invoke-virtual {v6}, Lf1/s;->S()V

    .line 139
    .line 140
    .line 141
    and-int/lit8 v1, v8, 0x1

    .line 142
    .line 143
    if-eqz v1, :cond_10

    .line 144
    .line 145
    invoke-virtual {v6}, Lf1/s;->x()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_f

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_f
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 153
    .line 154
    .line 155
    and-int/lit16 v0, v0, -0x1c01

    .line 156
    .line 157
    move-object v9, p3

    .line 158
    goto :goto_9

    .line 159
    :cond_10
    :goto_8
    sget-object v1, Lc1/t1;->a:Lc1/t1;

    .line 160
    .line 161
    invoke-static {v6}, Lc1/t1;->c(Lf1/s;)Lc1/m1;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    and-int/lit16 v0, v0, -0x1c01

    .line 166
    .line 167
    move-object v9, v1

    .line 168
    :goto_9
    invoke-virtual {v6}, Lf1/s;->q()V

    .line 169
    .line 170
    .line 171
    iget v1, p0, Lc1/i2;->a:I

    .line 172
    .line 173
    if-ltz v1, :cond_12

    .line 174
    .line 175
    shr-int/lit8 v1, v0, 0x3

    .line 176
    .line 177
    and-int/lit8 v2, v1, 0xe

    .line 178
    .line 179
    shl-int/lit8 v5, v0, 0x3

    .line 180
    .line 181
    and-int/lit8 v5, v5, 0x70

    .line 182
    .line 183
    or-int/2addr v2, v5

    .line 184
    and-int/lit16 v0, v0, 0x380

    .line 185
    .line 186
    or-int/2addr v0, v2

    .line 187
    and-int/lit16 v2, v1, 0x1c00

    .line 188
    .line 189
    or-int/2addr v0, v2

    .line 190
    const v2, 0xe000

    .line 191
    .line 192
    .line 193
    and-int/2addr v2, v1

    .line 194
    or-int/2addr v0, v2

    .line 195
    const/high16 v2, 0x70000

    .line 196
    .line 197
    and-int/2addr v1, v2

    .line 198
    or-int/2addr v0, v1

    .line 199
    move-object v1, p0

    .line 200
    move v2, p2

    .line 201
    move-object v3, p4

    .line 202
    move-object v4, p5

    .line 203
    move-object v5, v7

    .line 204
    move v7, v0

    .line 205
    move-object v0, p1

    .line 206
    invoke-static/range {v0 .. v7}, Lc1/g2;->d(Lr1/p;Lc1/i2;ZLb0/k;Ln1/c;Ln1/c;Lf1/s;I)V

    .line 207
    .line 208
    .line 209
    move-object v4, v9

    .line 210
    :goto_a
    invoke-virtual/range {p7 .. p7}, Lf1/s;->r()Lf1/w1;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    if-eqz v9, :cond_11

    .line 215
    .line 216
    new-instance v0, Lc1/u1;

    .line 217
    .line 218
    move-object v1, p0

    .line 219
    move-object v2, p1

    .line 220
    move v3, p2

    .line 221
    move-object v5, p4

    .line 222
    move-object v6, p5

    .line 223
    move-object/from16 v7, p6

    .line 224
    .line 225
    invoke-direct/range {v0 .. v8}, Lc1/u1;-><init>(Lc1/i2;Lr1/p;ZLc1/m1;Lb0/k;Ln1/c;Ln1/c;I)V

    .line 226
    .line 227
    .line 228
    iput-object v0, v9, Lf1/w1;->d:Lf9/n;

    .line 229
    .line 230
    :cond_11
    return-void

    .line 231
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 232
    .line 233
    const-string p1, "steps should be >= 0"

    .line 234
    .line 235
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0
.end method

.method public static final d(Lr1/p;Lc1/i2;ZLb0/k;Ln1/c;Ln1/c;Lf1/s;I)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    move-object/from16 v10, p5

    .line 12
    .line 13
    move-object/from16 v11, p6

    .line 14
    .line 15
    move/from16 v12, p7

    .line 16
    .line 17
    const v5, 0x52e8d309    # 4.99986498E11f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v5}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v5, v12, 0x6

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v11, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v5, 0x2

    .line 37
    :goto_0
    or-int/2addr v5, v12

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v5, v12

    .line 40
    :goto_1
    and-int/lit8 v7, v12, 0x30

    .line 41
    .line 42
    if-nez v7, :cond_3

    .line 43
    .line 44
    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    const/16 v7, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v7, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v5, v7

    .line 56
    :cond_3
    and-int/lit16 v7, v12, 0x180

    .line 57
    .line 58
    if-nez v7, :cond_5

    .line 59
    .line 60
    invoke-virtual {v11, v3}, Lf1/s;->g(Z)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    const/16 v7, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v7, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v5, v7

    .line 72
    :cond_5
    and-int/lit16 v7, v12, 0xc00

    .line 73
    .line 74
    if-nez v7, :cond_7

    .line 75
    .line 76
    invoke-virtual {v11, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_6

    .line 81
    .line 82
    const/16 v7, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v7, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v5, v7

    .line 88
    :cond_7
    and-int/lit16 v7, v12, 0x6000

    .line 89
    .line 90
    if-nez v7, :cond_9

    .line 91
    .line 92
    invoke-virtual {v11, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_8

    .line 97
    .line 98
    const/16 v7, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v7, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v5, v7

    .line 104
    :cond_9
    const/high16 v7, 0x30000

    .line 105
    .line 106
    and-int/2addr v7, v12

    .line 107
    if-nez v7, :cond_b

    .line 108
    .line 109
    invoke-virtual {v11, v10}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_a

    .line 114
    .line 115
    const/high16 v7, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/high16 v7, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v5, v7

    .line 121
    :cond_b
    move v13, v5

    .line 122
    const v5, 0x12493

    .line 123
    .line 124
    .line 125
    and-int/2addr v5, v13

    .line 126
    const v7, 0x12492

    .line 127
    .line 128
    .line 129
    if-ne v5, v7, :cond_d

    .line 130
    .line 131
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_c

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_c
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_f

    .line 142
    .line 143
    :cond_d
    :goto_7
    sget-object v5, Lr2/i1;->n:Lf1/w2;

    .line 144
    .line 145
    invoke-virtual {v11, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    sget-object v7, Ln3/m;->b:Ln3/m;

    .line 150
    .line 151
    if-ne v5, v7, :cond_e

    .line 152
    .line 153
    const/4 v5, 0x1

    .line 154
    goto :goto_8

    .line 155
    :cond_e
    const/4 v5, 0x0

    .line 156
    :goto_8
    iput-boolean v5, v2, Lc1/i2;->h:Z

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    sget-object v7, Lr1/m;->a:Lr1/m;

    .line 160
    .line 161
    if-eqz v3, :cond_f

    .line 162
    .line 163
    new-instance v8, Lb0/g;

    .line 164
    .line 165
    const/4 v9, 0x3

    .line 166
    invoke-direct {v8, v2, v5, v9}, Lb0/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 167
    .line 168
    .line 169
    sget-object v9, Lk2/i0;->a:Lk2/o;

    .line 170
    .line 171
    new-instance v9, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 172
    .line 173
    new-instance v15, Lk2/h0;

    .line 174
    .line 175
    invoke-direct {v15, v8}, Lk2/h0;-><init>(Lf9/n;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v9, v2, v4, v15, v6}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 179
    .line 180
    .line 181
    move-object v15, v9

    .line 182
    goto :goto_9

    .line 183
    :cond_f
    move-object v15, v7

    .line 184
    :goto_9
    iget-boolean v9, v2, Lc1/i2;->h:Z

    .line 185
    .line 186
    iget-object v6, v2, Lc1/i2;->k:Lf1/k1;

    .line 187
    .line 188
    invoke-virtual {v6}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 207
    .line 208
    if-nez v8, :cond_10

    .line 209
    .line 210
    if-ne v14, v5, :cond_11

    .line 211
    .line 212
    :cond_10
    new-instance v14, Lc1/d2;

    .line 213
    .line 214
    const/4 v8, 0x0

    .line 215
    invoke-direct {v14, v2, v8}, Lc1/d2;-><init>(Lc1/i2;Lw8/c;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11, v14}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_11
    move-object v8, v14

    .line 222
    check-cast v8, Lf9/o;

    .line 223
    .line 224
    move-object v14, v7

    .line 225
    sget-object v7, Lz/h0;->a:Lz/g0;

    .line 226
    .line 227
    new-instance v2, Landroidx/compose/foundation/gestures/DraggableElement;

    .line 228
    .line 229
    move-object v12, v14

    .line 230
    move-object v14, v5

    .line 231
    move-object v5, v4

    .line 232
    move v4, v3

    .line 233
    move-object/from16 v3, p1

    .line 234
    .line 235
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Lc1/i2;ZLb0/k;ZLf9/o;Lf9/o;Z)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v22, v5

    .line 239
    .line 240
    move-object v5, v2

    .line 241
    move-object v2, v3

    .line 242
    move v3, v4

    .line 243
    move-object/from16 v4, v22

    .line 244
    .line 245
    sget-object v6, Lc1/l0;->a:Lf1/w2;

    .line 246
    .line 247
    sget-object v6, Landroidx/compose/material3/MinimumInteractiveModifier;->a:Landroidx/compose/material3/MinimumInteractiveModifier;

    .line 248
    .line 249
    invoke-interface {v1, v6}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 250
    .line 251
    .line 252
    move-result-object v16

    .line 253
    const/16 v20, 0x0

    .line 254
    .line 255
    const/16 v21, 0xc

    .line 256
    .line 257
    sget v17, Lc1/g2;->b:F

    .line 258
    .line 259
    sget v18, Lc1/g2;->a:F

    .line 260
    .line 261
    const/16 v19, 0x0

    .line 262
    .line 263
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/c;->g(Lr1/p;FFFFI)Lr1/p;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    new-instance v7, Lc1/e2;

    .line 268
    .line 269
    invoke-direct {v7, v3, v2}, Lc1/e2;-><init>(ZLc1/i2;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v6, v7}, Ly2/k;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    sget-object v7, Ld1/d;->b:Lr1/p;

    .line 277
    .line 278
    invoke-interface {v6, v7}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    iget-object v7, v2, Lc1/i2;->d:Lf1/g1;

    .line 283
    .line 284
    invoke-virtual {v7}, Lf1/g1;->f()F

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    iget-object v8, v2, Lc1/i2;->c:Ll9/a;

    .line 289
    .line 290
    iget v9, v8, Ll9/a;->a:F

    .line 291
    .line 292
    iget v8, v8, Ll9/a;->b:F

    .line 293
    .line 294
    new-instance v1, Ll9/a;

    .line 295
    .line 296
    invoke-direct {v1, v9, v8}, Ll9/a;-><init>(FF)V

    .line 297
    .line 298
    .line 299
    iget v8, v2, Lc1/i2;->a:I

    .line 300
    .line 301
    new-instance v9, Lx/j1;

    .line 302
    .line 303
    invoke-direct {v9, v7, v1, v8}, Lx/j1;-><init>(FLl9/a;I)V

    .line 304
    .line 305
    .line 306
    new-instance v1, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 307
    .line 308
    const/4 v7, 0x1

    .line 309
    invoke-direct {v1, v9, v7}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lf9/k;Z)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v6, v1}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/a;->f(Lr1/p;ZLb0/k;)Lr1/p;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-interface {v1, v15}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-interface {v1, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    if-nez v5, :cond_12

    .line 337
    .line 338
    if-ne v6, v14, :cond_13

    .line 339
    .line 340
    :cond_12
    new-instance v6, Lc1/b2;

    .line 341
    .line 342
    invoke-direct {v6, v2}, Lc1/b2;-><init>(Lc1/i2;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_13
    check-cast v6, Lo2/m0;

    .line 349
    .line 350
    invoke-static {v11}, Lf1/b;->p(Lf1/s;)I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    invoke-virtual {v11}, Lf1/s;->l()Lf1/q1;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-static {v11, v1}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    sget-object v8, Lq2/j;->d0:Lq2/i;

    .line 363
    .line 364
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 368
    .line 369
    invoke-virtual {v11}, Lf1/s;->a0()V

    .line 370
    .line 371
    .line 372
    iget-boolean v9, v11, Lf1/s;->S:Z

    .line 373
    .line 374
    if-eqz v9, :cond_14

    .line 375
    .line 376
    invoke-virtual {v11, v8}, Lf1/s;->k(Lf9/a;)V

    .line 377
    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_14
    invoke-virtual {v11}, Lf1/s;->k0()V

    .line 381
    .line 382
    .line 383
    :goto_a
    sget-object v9, Lq2/i;->e:Lq2/h;

    .line 384
    .line 385
    invoke-static {v11, v9, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 389
    .line 390
    invoke-static {v11, v6, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    sget-object v7, Lq2/i;->f:Lq2/h;

    .line 394
    .line 395
    iget-boolean v15, v11, Lf1/s;->S:Z

    .line 396
    .line 397
    if-nez v15, :cond_15

    .line 398
    .line 399
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v15

    .line 403
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-static {v15, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-nez v3, :cond_16

    .line 412
    .line 413
    :cond_15
    invoke-static {v5, v11, v5, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 414
    .line 415
    .line 416
    :cond_16
    sget-object v3, Lq2/i;->c:Lq2/h;

    .line 417
    .line 418
    invoke-static {v11, v3, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    sget-object v1, Lc1/n1;->a:Lc1/n1;

    .line 422
    .line 423
    invoke-static {v12, v1}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-static {v1}, Landroidx/compose/foundation/layout/c;->o(Lr1/p;)Lr1/p;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v15

    .line 439
    if-nez v5, :cond_18

    .line 440
    .line 441
    if-ne v15, v14, :cond_17

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_17
    const/4 v5, 0x0

    .line 445
    goto :goto_c

    .line 446
    :cond_18
    :goto_b
    new-instance v15, Lc1/z1;

    .line 447
    .line 448
    const/4 v5, 0x0

    .line 449
    invoke-direct {v15, v2, v5}, Lc1/z1;-><init>(Lc1/i2;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v11, v15}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :goto_c
    check-cast v15, Lf9/k;

    .line 456
    .line 457
    invoke-static {v1, v15}, Landroidx/compose/ui/layout/a;->e(Lr1/p;Lf9/k;)Lr1/p;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    sget-object v14, Lr1/c;->a:Lr1/h;

    .line 462
    .line 463
    invoke-static {v14, v5}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 464
    .line 465
    .line 466
    move-result-object v15

    .line 467
    invoke-static {v11}, Lf1/b;->p(Lf1/s;)I

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    invoke-virtual {v11}, Lf1/s;->l()Lf1/q1;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    invoke-static {v11, v1}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v11}, Lf1/s;->a0()V

    .line 480
    .line 481
    .line 482
    move/from16 v16, v13

    .line 483
    .line 484
    iget-boolean v13, v11, Lf1/s;->S:Z

    .line 485
    .line 486
    if-eqz v13, :cond_19

    .line 487
    .line 488
    invoke-virtual {v11, v8}, Lf1/s;->k(Lf9/a;)V

    .line 489
    .line 490
    .line 491
    goto :goto_d

    .line 492
    :cond_19
    invoke-virtual {v11}, Lf1/s;->k0()V

    .line 493
    .line 494
    .line 495
    :goto_d
    invoke-static {v11, v9, v15}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    invoke-static {v11, v6, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    iget-boolean v4, v11, Lf1/s;->S:Z

    .line 502
    .line 503
    if-nez v4, :cond_1a

    .line 504
    .line 505
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 510
    .line 511
    .line 512
    move-result-object v13

    .line 513
    invoke-static {v4, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    if-nez v4, :cond_1b

    .line 518
    .line 519
    :cond_1a
    invoke-static {v5, v11, v5, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 520
    .line 521
    .line 522
    :cond_1b
    invoke-static {v11, v3, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    shr-int/lit8 v1, v16, 0x3

    .line 526
    .line 527
    and-int/lit8 v1, v1, 0xe

    .line 528
    .line 529
    shr-int/lit8 v4, v16, 0x9

    .line 530
    .line 531
    and-int/lit8 v4, v4, 0x70

    .line 532
    .line 533
    or-int/2addr v4, v1

    .line 534
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v0, v2, v11, v4}, Ln1/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    const/4 v4, 0x1

    .line 542
    invoke-virtual {v11, v4}, Lf1/s;->p(Z)V

    .line 543
    .line 544
    .line 545
    sget-object v4, Lc1/n1;->b:Lc1/n1;

    .line 546
    .line 547
    invoke-static {v12, v4}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    const/4 v5, 0x0

    .line 552
    invoke-static {v14, v5}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    invoke-static {v11}, Lf1/b;->p(Lf1/s;)I

    .line 557
    .line 558
    .line 559
    move-result v12

    .line 560
    invoke-virtual {v11}, Lf1/s;->l()Lf1/q1;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    invoke-static {v11, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    invoke-virtual {v11}, Lf1/s;->a0()V

    .line 569
    .line 570
    .line 571
    iget-boolean v14, v11, Lf1/s;->S:Z

    .line 572
    .line 573
    if-eqz v14, :cond_1c

    .line 574
    .line 575
    invoke-virtual {v11, v8}, Lf1/s;->k(Lf9/a;)V

    .line 576
    .line 577
    .line 578
    goto :goto_e

    .line 579
    :cond_1c
    invoke-virtual {v11}, Lf1/s;->k0()V

    .line 580
    .line 581
    .line 582
    :goto_e
    invoke-static {v11, v9, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    invoke-static {v11, v6, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    iget-boolean v5, v11, Lf1/s;->S:Z

    .line 589
    .line 590
    if-nez v5, :cond_1d

    .line 591
    .line 592
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    if-nez v5, :cond_1e

    .line 605
    .line 606
    :cond_1d
    invoke-static {v12, v11, v12, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 607
    .line 608
    .line 609
    :cond_1e
    invoke-static {v11, v3, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    shr-int/lit8 v3, v16, 0xc

    .line 613
    .line 614
    and-int/lit8 v3, v3, 0x70

    .line 615
    .line 616
    or-int/2addr v1, v3

    .line 617
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v10, v2, v11, v1}, Ln1/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    const/4 v4, 0x1

    .line 625
    invoke-virtual {v11, v4}, Lf1/s;->p(Z)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v11, v4}, Lf1/s;->p(Z)V

    .line 629
    .line 630
    .line 631
    :goto_f
    invoke-virtual {v11}, Lf1/s;->r()Lf1/w1;

    .line 632
    .line 633
    .line 634
    move-result-object v8

    .line 635
    if-eqz v8, :cond_1f

    .line 636
    .line 637
    new-instance v0, Lc1/c2;

    .line 638
    .line 639
    move-object/from16 v1, p0

    .line 640
    .line 641
    move/from16 v3, p2

    .line 642
    .line 643
    move-object/from16 v4, p3

    .line 644
    .line 645
    move-object/from16 v5, p4

    .line 646
    .line 647
    move/from16 v7, p7

    .line 648
    .line 649
    move-object v6, v10

    .line 650
    invoke-direct/range {v0 .. v7}, Lc1/c2;-><init>(Lr1/p;Lc1/i2;ZLb0/k;Ln1/c;Ln1/c;I)V

    .line 651
    .line 652
    .line 653
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 654
    .line 655
    :cond_1f
    return-void
.end method

.method public static final e(F[FFF)F
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    aget v1, p1, v0

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_4

    .line 20
    :cond_1
    invoke-static {p2, p3, v1}, Lm9/e0;->p0(FFF)F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sub-float/2addr v4, p0

    .line 25
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    new-instance v5, Ll9/d;

    .line 30
    .line 31
    invoke-direct {v5, v3, v2, v3}, Ll9/b;-><init>(III)V

    .line 32
    .line 33
    .line 34
    iget v2, v5, Ll9/b;->b:I

    .line 35
    .line 36
    iget v5, v5, Ll9/b;->c:I

    .line 37
    .line 38
    if-lez v5, :cond_3

    .line 39
    .line 40
    if-gt v3, v2, :cond_2

    .line 41
    .line 42
    :goto_0
    const/4 v6, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v6, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    if-lt v3, v2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    if-eqz v6, :cond_4

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    move v3, v2

    .line 53
    :goto_2
    if-eqz v6, :cond_8

    .line 54
    .line 55
    if-ne v3, v2, :cond_6

    .line 56
    .line 57
    if-eqz v6, :cond_5

    .line 58
    .line 59
    move v7, v3

    .line 60
    const/4 v6, 0x0

    .line 61
    goto :goto_3

    .line 62
    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_6
    add-int v7, v3, v5

    .line 69
    .line 70
    :goto_3
    aget v3, p1, v3

    .line 71
    .line 72
    invoke-static {p2, p3, v3}, Lm9/e0;->p0(FFF)F

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    sub-float/2addr v8, p0

    .line 77
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-lez v9, :cond_7

    .line 86
    .line 87
    move v1, v3

    .line 88
    move v3, v7

    .line 89
    move v4, v8

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    move v3, v7

    .line 92
    goto :goto_2

    .line 93
    :cond_8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_4
    if-eqz p1, :cond_9

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-static {p2, p3, p0}, Lm9/e0;->p0(FFF)F

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    :cond_9
    return p0
.end method
