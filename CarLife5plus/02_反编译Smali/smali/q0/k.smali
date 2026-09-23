.class public abstract Lq0/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr3/z;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lr3/z;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    and-int/2addr v1, v2

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    :goto_0
    sget-object v3, Lr3/a0;->a:Lr3/a0;

    .line 13
    .line 14
    invoke-direct {v0, v1, v3, v2}, Lr3/z;-><init>(ZLr3/a0;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lq0/k;->a:Lr3/z;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Ls0/b;Lo0/c;Lf1/s;I)V
    .locals 8

    .line 1
    const v0, 0x71816bae

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    :goto_0
    or-int/2addr v0, p3

    .line 18
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 v2, 0x10

    .line 28
    .line 29
    :goto_1
    or-int/2addr v0, v2

    .line 30
    and-int/lit8 v2, v0, 0x13

    .line 31
    .line 32
    const/16 v3, 0x12

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eq v2, v3, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v3, v2}, Lf1/s;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_7

    .line 48
    .line 49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v3, 0x1c

    .line 52
    .line 53
    if-lt v2, v3, :cond_3

    .line 54
    .line 55
    const v2, -0x3c2b2dd8

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v2}, Lf1/s;->W(I)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lr2/n0;->b:Lf1/w2;

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const v2, -0x3c2a6e08

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Lf1/s;->W(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    :goto_3
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    and-int/lit8 v0, v0, 0xe

    .line 88
    .line 89
    if-eq v0, v1, :cond_4

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    :cond_4
    or-int v0, v3, v4

    .line 93
    .line 94
    invoke-virtual {p2, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    or-int/2addr v0, v1

    .line 99
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 106
    .line 107
    if-ne v1, v0, :cond_6

    .line 108
    .line 109
    :cond_5
    new-instance v1, Ll0/u;

    .line 110
    .line 111
    const/16 v0, 0xa

    .line 112
    .line 113
    invoke-direct {v1, p1, v2, p0, v0}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    move-object v4, v1

    .line 120
    check-cast v4, Lf9/k;

    .line 121
    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x3

    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v3, 0x0

    .line 126
    move-object v5, p2

    .line 127
    invoke-static/range {v2 .. v7}, Ly/g;->b(Lr1/p;Ly/c;Lf9/k;Lf1/s;II)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    move-object v5, p2

    .line 132
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 133
    .line 134
    .line 135
    :goto_4
    invoke-virtual {v5}, Lf1/s;->r()Lf1/w1;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-eqz p2, :cond_8

    .line 140
    .line 141
    new-instance v0, La8/w;

    .line 142
    .line 143
    const/16 v1, 0xb

    .line 144
    .line 145
    invoke-direct {v0, p3, v1, p0, p1}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 149
    .line 150
    :cond_8
    return-void
.end method

.method public static final b(IJLf1/s;I)V
    .locals 20

    .line 1
    move-wide/from16 v4, p1

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const v1, -0x49eca00d

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p4, 0x6

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    move/from16 v1, p0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lf1/s;->d(I)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v3, 0x2

    .line 27
    :goto_0
    or-int v3, p4, v3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v1, p0

    .line 31
    .line 32
    move/from16 v3, p4

    .line 33
    .line 34
    :goto_1
    and-int/lit8 v6, p4, 0x30

    .line 35
    .line 36
    const/16 v7, 0x20

    .line 37
    .line 38
    if-nez v6, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v4, v5}, Lf1/s;->e(J)Z

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
    or-int/2addr v3, v6

    .line 52
    :cond_3
    and-int/lit8 v6, v3, 0x13

    .line 53
    .line 54
    const/16 v8, 0x12

    .line 55
    .line 56
    const/4 v9, 0x1

    .line 57
    const/4 v10, 0x0

    .line 58
    if-eq v6, v8, :cond_4

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    const/4 v6, 0x0

    .line 63
    :goto_3
    and-int/lit8 v8, v3, 0x1

    .line 64
    .line 65
    invoke-virtual {v0, v8, v6}, Lf1/s;->N(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_d

    .line 70
    .line 71
    sget-object v6, Lr2/n0;->b:Lf1/w2;

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    and-int/lit8 v11, v3, 0xe

    .line 84
    .line 85
    if-ne v11, v2, :cond_5

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    const/4 v2, 0x0

    .line 90
    :goto_4
    or-int/2addr v2, v8

    .line 91
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const/4 v11, -0x1

    .line 96
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 97
    .line 98
    if-nez v2, :cond_6

    .line 99
    .line 100
    if-ne v8, v12, :cond_7

    .line 101
    .line 102
    :cond_6
    filled-new-array {v1}, [I

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v6, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v0, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    check-cast v8, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-ne v2, v11, :cond_8

    .line 128
    .line 129
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-eqz v6, :cond_e

    .line 134
    .line 135
    new-instance v0, Lq0/j;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    move/from16 v2, p4

    .line 139
    .line 140
    invoke-direct/range {v0 .. v5}, Lq0/j;-><init>(IIIJ)V

    .line 141
    .line 142
    .line 143
    :goto_5
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 144
    .line 145
    return-void

    .line 146
    :cond_8
    invoke-static {v2, v0}, Lp9/p1;->B(ILf1/s;)Ld2/b;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    and-int/lit8 v1, v3, 0x70

    .line 151
    .line 152
    if-ne v1, v7, :cond_9

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_9
    const/4 v9, 0x0

    .line 156
    :goto_6
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-nez v9, :cond_a

    .line 161
    .line 162
    if-ne v1, v12, :cond_c

    .line 163
    .line 164
    :cond_a
    const-wide/16 v1, 0x10

    .line 165
    .line 166
    cmp-long v3, v4, v1

    .line 167
    .line 168
    if-nez v3, :cond_b

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    goto :goto_7

    .line 172
    :cond_b
    new-instance v1, Ly1/k;

    .line 173
    .line 174
    const/4 v2, 0x5

    .line 175
    invoke-direct {v1, v2, v4, v5}, Ly1/k;-><init>(IJ)V

    .line 176
    .line 177
    .line 178
    :goto_7
    invoke-virtual {v0, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_c
    move-object/from16 v18, v1

    .line 182
    .line 183
    check-cast v18, Ly1/k;

    .line 184
    .line 185
    sget v1, Ly/f;->j:F

    .line 186
    .line 187
    invoke-static {v1}, Landroidx/compose/foundation/layout/c;->h(F)Lr1/p;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    const/16 v17, 0x0

    .line 192
    .line 193
    const/16 v19, 0x16

    .line 194
    .line 195
    const/4 v15, 0x0

    .line 196
    sget-object v16, Lo2/j;->b:Lo2/i;

    .line 197
    .line 198
    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/draw/a;->d(Lr1/p;Ld2/b;Lr1/d;Lo2/i;FLy1/k;I)Lr1/p;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1, v0, v10}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 203
    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_d
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 207
    .line 208
    .line 209
    :goto_8
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-eqz v6, :cond_e

    .line 214
    .line 215
    new-instance v0, Lq0/j;

    .line 216
    .line 217
    const/4 v3, 0x1

    .line 218
    move/from16 v1, p0

    .line 219
    .line 220
    move/from16 v2, p4

    .line 221
    .line 222
    invoke-direct/range {v0 .. v5}, Lq0/j;-><init>(IIIJ)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_e
    return-void
.end method

.method public static final c(Ls0/b;Ls0/e;Lf9/a;Lf1/s;I)V
    .locals 13

    .line 1
    move-object/from16 v8, p3

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    const v1, -0x799dedcc

    .line 6
    .line 7
    .line 8
    invoke-virtual {v8, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, v0, 0x6

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    and-int/lit8 v1, v0, 0x8

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v8, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v8, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v1, 0x2

    .line 34
    :goto_1
    or-int/2addr v1, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v1, v0

    .line 37
    :goto_2
    and-int/lit8 v5, v0, 0x30

    .line 38
    .line 39
    const/16 v6, 0x20

    .line 40
    .line 41
    if-nez v5, :cond_5

    .line 42
    .line 43
    and-int/lit8 v5, v0, 0x40

    .line 44
    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    invoke-virtual {v8, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {v8, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    :goto_3
    if-eqz v5, :cond_4

    .line 57
    .line 58
    const/16 v5, 0x20

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    const/16 v5, 0x10

    .line 62
    .line 63
    :goto_4
    or-int/2addr v1, v5

    .line 64
    :cond_5
    and-int/lit16 v5, v0, 0x180

    .line 65
    .line 66
    if-nez v5, :cond_7

    .line 67
    .line 68
    invoke-virtual {v8, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    const/16 v5, 0x100

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_6
    const/16 v5, 0x80

    .line 78
    .line 79
    :goto_5
    or-int/2addr v1, v5

    .line 80
    :cond_7
    and-int/lit16 v5, v1, 0x93

    .line 81
    .line 82
    const/16 v7, 0x92

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x1

    .line 86
    if-eq v5, v7, :cond_8

    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    goto :goto_6

    .line 90
    :cond_8
    const/4 v5, 0x0

    .line 91
    :goto_6
    and-int/lit8 v7, v1, 0x1

    .line 92
    .line 93
    invoke-virtual {v8, v7, v5}, Lf1/s;->N(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_11

    .line 98
    .line 99
    and-int/lit8 v5, v1, 0x70

    .line 100
    .line 101
    if-eq v5, v6, :cond_a

    .line 102
    .line 103
    and-int/lit8 v5, v1, 0x40

    .line 104
    .line 105
    if-eqz v5, :cond_9

    .line 106
    .line 107
    invoke-virtual {v8, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_9

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_9
    const/4 v5, 0x0

    .line 115
    goto :goto_8

    .line 116
    :cond_a
    :goto_7
    const/4 v5, 0x1

    .line 117
    :goto_8
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 122
    .line 123
    if-nez v5, :cond_b

    .line 124
    .line 125
    if-ne v6, v7, :cond_c

    .line 126
    .line 127
    :cond_b
    new-instance v6, Lq0/m;

    .line 128
    .line 129
    new-instance v5, Lv/a1;

    .line 130
    .line 131
    new-instance v11, La8/n0;

    .line 132
    .line 133
    const/16 v12, 0xd

    .line 134
    .line 135
    invoke-direct {v11, v12, p1, p2}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, v11}, Lv/a1;-><init>(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v6, v5}, Lq0/m;-><init>(Lv/a1;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_c
    check-cast v6, Lq0/m;

    .line 148
    .line 149
    and-int/lit8 v5, v1, 0xe

    .line 150
    .line 151
    if-eq v5, v4, :cond_d

    .line 152
    .line 153
    and-int/lit8 v1, v1, 0x8

    .line 154
    .line 155
    if-eqz v1, :cond_e

    .line 156
    .line 157
    invoke-virtual {v8, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_e

    .line 162
    .line 163
    :cond_d
    const/4 v9, 0x1

    .line 164
    :cond_e
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-nez v9, :cond_f

    .line 169
    .line 170
    if-ne v1, v7, :cond_10

    .line 171
    .line 172
    :cond_f
    new-instance v1, La5/e;

    .line 173
    .line 174
    const/16 v4, 0x16

    .line 175
    .line 176
    invoke-direct {v1, v4, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_10
    move-object v5, v1

    .line 183
    check-cast v5, Lf9/a;

    .line 184
    .line 185
    new-instance v1, Lc8/s;

    .line 186
    .line 187
    const/16 v4, 0xe

    .line 188
    .line 189
    invoke-direct {v1, v4, p1, p0}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const v4, 0x4e63add6    # 9.5495514E8f

    .line 193
    .line 194
    .line 195
    invoke-static {v4, v1, v8}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    const/16 v9, 0xd80

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    move-object v4, v6

    .line 203
    sget-object v6, Lq0/k;->a:Lr3/z;

    .line 204
    .line 205
    invoke-static/range {v4 .. v10}, Lr3/l;->a(Lr3/y;Lf9/a;Lr3/z;Ln1/c;Lf1/s;II)V

    .line 206
    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_11
    invoke-virtual/range {p3 .. p3}, Lf1/s;->Q()V

    .line 210
    .line 211
    .line 212
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    if-eqz v6, :cond_12

    .line 217
    .line 218
    new-instance v0, Lh0/u;

    .line 219
    .line 220
    const/4 v5, 0x6

    .line 221
    move-object v1, p0

    .line 222
    move-object v2, p1

    .line 223
    move-object v3, p2

    .line 224
    move/from16 v4, p4

    .line 225
    .line 226
    invoke-direct/range {v0 .. v5}, Lh0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 227
    .line 228
    .line 229
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 230
    .line 231
    :cond_12
    return-void
.end method

.method public static final d(Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 4

    .line 1
    const v0, 0x52f9d6eb

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p3

    .line 24
    :goto_1
    and-int/lit8 v2, p3, 0x30

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v2

    .line 40
    :cond_3
    and-int/lit8 v2, v0, 0x13

    .line 41
    .line 42
    const/16 v3, 0x12

    .line 43
    .line 44
    if-eq v2, v3, :cond_4

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    const/4 v2, 0x0

    .line 49
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p2, v3, v2}, Lf1/s;->N(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_5

    .line 56
    .line 57
    sget-object v2, Ls0/g;->a:Lf1/c0;

    .line 58
    .line 59
    sget-object v3, Lq0/i;->a:Ln1/c;

    .line 60
    .line 61
    and-int/lit8 v3, v0, 0xe

    .line 62
    .line 63
    or-int/lit16 v3, v3, 0x1b0

    .line 64
    .line 65
    shl-int/lit8 v0, v0, 0x6

    .line 66
    .line 67
    and-int/lit16 v0, v0, 0x1c00

    .line 68
    .line 69
    or-int/2addr v0, v3

    .line 70
    invoke-static {p0, v2, p1, p2, v0}, Lp9/q;->e(Lr1/p;Lf1/t1;Ln1/c;Lf1/s;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 75
    .line 76
    .line 77
    :goto_4
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-eqz p2, :cond_6

    .line 82
    .line 83
    new-instance v0, Lq0/g;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1, p3, v1}, Lq0/g;-><init>(Lr1/p;Ln1/c;II)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 89
    .line 90
    :cond_6
    return-void
.end method
