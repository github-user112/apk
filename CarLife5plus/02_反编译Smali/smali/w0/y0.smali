.class public abstract Lw0/y0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lx1/c;

.field public static b:Ly1/f;

.field public static c:Ly1/b;

.field public static d:La2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lx1/c;

    .line 2
    .line 3
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 4
    .line 5
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 6
    .line 7
    invoke-direct {v0, v1, v1, v2, v2}, Lx1/c;-><init>(FFFF)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lw0/y0;->a:Lx1/c;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(Lw0/q;Lr1/d;Ln1/c;Lf1/s;I)V
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    const v3, -0x40fab302

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v3, v0, 0x6

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    and-int/lit8 v3, v0, 0x8

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p3, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_0
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v3, 0x2

    .line 32
    :goto_1
    or-int/2addr v3, v0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v3, v0

    .line 35
    :goto_2
    and-int/lit8 v5, v0, 0x30

    .line 36
    .line 37
    const/16 v6, 0x20

    .line 38
    .line 39
    if-nez v5, :cond_4

    .line 40
    .line 41
    invoke-virtual {p3, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    const/16 v5, 0x20

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const/16 v5, 0x10

    .line 51
    .line 52
    :goto_3
    or-int/2addr v3, v5

    .line 53
    :cond_4
    and-int/lit16 v5, v0, 0x180

    .line 54
    .line 55
    if-nez v5, :cond_6

    .line 56
    .line 57
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_5

    .line 62
    .line 63
    const/16 v8, 0x100

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_5
    const/16 v8, 0x80

    .line 67
    .line 68
    :goto_4
    or-int/2addr v3, v8

    .line 69
    :cond_6
    and-int/lit16 v8, v3, 0x93

    .line 70
    .line 71
    const/16 v9, 0x92

    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x1

    .line 75
    if-eq v8, v9, :cond_7

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    goto :goto_5

    .line 79
    :cond_7
    const/4 v8, 0x0

    .line 80
    :goto_5
    and-int/lit8 v9, v3, 0x1

    .line 81
    .line 82
    invoke-virtual {p3, v9, v8}, Lf1/s;->N(IZ)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_d

    .line 87
    .line 88
    and-int/lit8 v8, v3, 0x70

    .line 89
    .line 90
    if-ne v8, v6, :cond_8

    .line 91
    .line 92
    const/4 v6, 0x1

    .line 93
    goto :goto_6

    .line 94
    :cond_8
    const/4 v6, 0x0

    .line 95
    :goto_6
    and-int/lit8 v8, v3, 0xe

    .line 96
    .line 97
    if-eq v8, v4, :cond_a

    .line 98
    .line 99
    and-int/lit8 v4, v3, 0x8

    .line 100
    .line 101
    if-eqz v4, :cond_9

    .line 102
    .line 103
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_9

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_9
    const/4 v11, 0x0

    .line 111
    :cond_a
    :goto_7
    or-int v4, v6, v11

    .line 112
    .line 113
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    if-nez v4, :cond_b

    .line 118
    .line 119
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 120
    .line 121
    if-ne v6, v4, :cond_c

    .line 122
    .line 123
    :cond_b
    new-instance v6, Lw0/m;

    .line 124
    .line 125
    invoke-direct {v6, p1, p0}, Lw0/m;-><init>(Lr1/d;Lw0/q;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_c
    check-cast v6, Lw0/m;

    .line 132
    .line 133
    new-instance v5, Lr3/z;

    .line 134
    .line 135
    sget-object v4, Lr3/a0;->a:Lr3/a0;

    .line 136
    .line 137
    invoke-direct {v5, v10, v4, v10}, Lr3/z;-><init>(ZLr3/a0;Z)V

    .line 138
    .line 139
    .line 140
    shl-int/lit8 v3, v3, 0x3

    .line 141
    .line 142
    and-int/lit16 v3, v3, 0x1c00

    .line 143
    .line 144
    or-int/lit16 v8, v3, 0x180

    .line 145
    .line 146
    const/4 v9, 0x2

    .line 147
    const/4 v4, 0x0

    .line 148
    move-object v7, p3

    .line 149
    move-object v3, v6

    .line 150
    move-object v6, p2

    .line 151
    invoke-static/range {v3 .. v9}, Lr3/l;->a(Lr3/y;Lf9/a;Lr3/z;Ln1/c;Lf1/s;II)V

    .line 152
    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_d
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 156
    .line 157
    .line 158
    :goto_8
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-eqz v6, :cond_e

    .line 163
    .line 164
    new-instance v0, Lh0/u;

    .line 165
    .line 166
    const/16 v5, 0x8

    .line 167
    .line 168
    move-object v1, p0

    .line 169
    move-object v2, p1

    .line 170
    move-object v3, p2

    .line 171
    move/from16 v4, p4

    .line 172
    .line 173
    invoke-direct/range {v0 .. v5}, Lh0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 177
    .line 178
    :cond_e
    return-void
.end method

.method public static final b(Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 8

    .line 1
    const v0, 0x742e8cdd

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    or-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    and-int/lit8 v1, v0, 0x13

    .line 10
    .line 11
    const/16 v2, 0x12

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    and-int/2addr v0, v3

    .line 20
    invoke-virtual {p2, v0, v1}, Lf1/s;->N(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 31
    .line 32
    if-ne p0, v0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    invoke-static {p0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast p0, Lf1/b1;

    .line 43
    .line 44
    invoke-interface {p0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v3, v1

    .line 49
    check-cast v3, Lw0/z;

    .line 50
    .line 51
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-ne v1, v0, :cond_2

    .line 56
    .line 57
    new-instance v1, La8/s0;

    .line 58
    .line 59
    const/16 v0, 0x18

    .line 60
    .line 61
    invoke-direct {v1, p0, v0}, La8/s0;-><init>(Lf1/b1;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    move-object v4, v1

    .line 68
    check-cast v4, Lf9/k;

    .line 69
    .line 70
    const/16 v7, 0xd86

    .line 71
    .line 72
    sget-object v2, Lr1/m;->a:Lr1/m;

    .line 73
    .line 74
    move-object v5, p1

    .line 75
    move-object v6, p2

    .line 76
    invoke-static/range {v2 .. v7}, Lw0/y0;->c(Lr1/p;Lw0/z;Lf9/k;Ln1/c;Lf1/s;I)V

    .line 77
    .line 78
    .line 79
    move-object p0, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-object v5, p1

    .line 82
    move-object v6, p2

    .line 83
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {v6}, Lf1/s;->r()Lf1/w1;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    new-instance p2, Lw0/d0;

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-direct {p2, p0, v5, p3, v0}, Lw0/d0;-><init>(Lr1/p;Ln1/c;II)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p1, Lf1/w1;->d:Lf9/n;

    .line 99
    .line 100
    :cond_4
    return-void
.end method

.method public static final c(Lr1/p;Lw0/z;Lf9/k;Ln1/c;Lf1/s;I)V
    .locals 10

    .line 1
    const v0, -0x36b68b90    # -825159.0f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p4, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p5

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p5

    .line 23
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p4, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p5, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {p4, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p5, 0xc00

    .line 56
    .line 57
    if-nez v1, :cond_7

    .line 58
    .line 59
    invoke-virtual {p4, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    const/16 v1, 0x800

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_6
    const/16 v1, 0x400

    .line 69
    .line 70
    :goto_4
    or-int/2addr v0, v1

    .line 71
    :cond_7
    and-int/lit16 v1, v0, 0x493

    .line 72
    .line 73
    const/16 v2, 0x492

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    if-eq v1, v2, :cond_8

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_5

    .line 81
    :cond_8
    const/4 v1, 0x0

    .line 82
    :goto_5
    and-int/2addr v0, v4

    .line 83
    invoke-virtual {p4, v0, v1}, Lf1/s;->N(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_13

    .line 88
    .line 89
    new-array v0, v3, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 96
    .line 97
    if-ne v1, v2, :cond_9

    .line 98
    .line 99
    new-instance v1, Lu7/i;

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    invoke-direct {v1, v5}, Lu7/i;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    check-cast v1, Lf9/a;

    .line 109
    .line 110
    sget-object v5, Lw0/c1;->l:Lu0/j;

    .line 111
    .line 112
    const/16 v6, 0x180

    .line 113
    .line 114
    invoke-static {v0, v5, v1, p4, v6}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lw0/c1;

    .line 119
    .line 120
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-ne v1, v2, :cond_a

    .line 125
    .line 126
    new-instance v1, Lw0/w0;

    .line 127
    .line 128
    invoke-direct {v1, v0}, Lw0/w0;-><init>(Lw0/c1;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_a
    check-cast v1, Lw0/w0;

    .line 135
    .line 136
    sget-object v5, Lr2/i1;->f:Lf1/w2;

    .line 137
    .line 138
    invoke-virtual {p4, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Lr2/d1;

    .line 143
    .line 144
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-ne v6, v2, :cond_b

    .line 149
    .line 150
    invoke-static {p4}, Lf1/b;->l(Lf1/s;)Lac/w;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {p4, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    check-cast v6, Lac/w;

    .line 158
    .line 159
    sget-object v7, Lr2/i1;->l:Lf1/w2;

    .line 160
    .line 161
    invoke-virtual {p4, v7}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Lg2/a;

    .line 166
    .line 167
    iput-object v7, v1, Lw0/w0;->e:Lg2/a;

    .line 168
    .line 169
    invoke-virtual {p4, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-virtual {p4, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    or-int/2addr v7, v8

    .line 178
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    if-nez v7, :cond_c

    .line 183
    .line 184
    if-ne v8, v2, :cond_d

    .line 185
    .line 186
    :cond_c
    new-instance v8, La8/v;

    .line 187
    .line 188
    const/16 v7, 0x14

    .line 189
    .line 190
    invoke-direct {v8, v7, v6, v5}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p4, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_d
    check-cast v8, Lf9/k;

    .line 197
    .line 198
    iput-object v8, v1, Lw0/w0;->f:Lf9/k;

    .line 199
    .line 200
    sget-object v5, Lr2/i1;->q:Lf1/w2;

    .line 201
    .line 202
    invoke-virtual {p4, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Lr2/n2;

    .line 207
    .line 208
    new-instance v5, La8/v;

    .line 209
    .line 210
    const/16 v7, 0x15

    .line 211
    .line 212
    invoke-direct {v5, v7, v1, p2}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iput-object v5, v1, Lw0/w0;->d:Lf9/k;

    .line 216
    .line 217
    invoke-virtual {v1, p1}, Lw0/w0;->m(Lw0/z;)V

    .line 218
    .line 219
    .line 220
    const v5, -0x4e7e5c4

    .line 221
    .line 222
    .line 223
    invoke-virtual {p4, v5}, Lf1/s;->W(I)V

    .line 224
    .line 225
    .line 226
    sget-object v5, Lw0/x;->b:Lw0/x;

    .line 227
    .line 228
    const/4 v7, 0x0

    .line 229
    const/16 v8, 0x36

    .line 230
    .line 231
    invoke-static {v5, v7, p4, v8}, Lw0/v;->b(Lw0/x;Li3/b;Lf1/s;I)Lw0/t;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    iput-object v5, v1, Lw0/w0;->w:Lw0/t;

    .line 236
    .line 237
    iput-object v6, v1, Lw0/w0;->v:Lac/w;

    .line 238
    .line 239
    invoke-virtual {p4, v3}, Lf1/s;->p(Z)V

    .line 240
    .line 241
    .line 242
    new-instance v3, Lw0/f0;

    .line 243
    .line 244
    const/4 v5, 0x3

    .line 245
    invoke-direct {v3, v1, v5}, Lw0/f0;-><init>(Lw0/w0;I)V

    .line 246
    .line 247
    .line 248
    new-instance v5, Ll0/e0;

    .line 249
    .line 250
    const/4 v6, 0x2

    .line 251
    invoke-direct {v5, v6, v1, v3}, Ll0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    sget-object v3, Lr1/m;->a:Lr1/m;

    .line 255
    .line 256
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 257
    .line 258
    invoke-static {v3, v6, v5}, Lk2/i0;->c(Lr1/p;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lr1/p;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    new-instance v6, Lw0/e0;

    .line 263
    .line 264
    const/4 v8, 0x4

    .line 265
    invoke-direct {v6, v1, v8}, Lw0/e0;-><init>(Lw0/w0;I)V

    .line 266
    .line 267
    .line 268
    invoke-static {v5, v6}, Landroidx/compose/ui/layout/a;->d(Lr1/p;Lf9/k;)Lr1/p;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iget-object v6, v1, Lw0/w0;->h:Lw1/o;

    .line 273
    .line 274
    invoke-static {v5, v6}, Landroidx/compose/ui/focus/a;->a(Lr1/p;Lw1/o;)Lr1/p;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    new-instance v6, Lw0/e0;

    .line 279
    .line 280
    const/4 v8, 0x5

    .line 281
    invoke-direct {v6, v1, v8}, Lw0/e0;-><init>(Lw0/w0;I)V

    .line 282
    .line 283
    .line 284
    invoke-static {v5, v6}, Landroidx/compose/ui/focus/a;->b(Lr1/p;Lf9/k;)Lr1/p;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-static {v5, v4, v7}, Landroidx/compose/foundation/a;->f(Lr1/p;ZLb0/k;)Lr1/p;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    new-instance v6, Lw0/e0;

    .line 293
    .line 294
    const/4 v7, 0x6

    .line 295
    invoke-direct {v6, v1, v7}, Lw0/e0;-><init>(Lw0/w0;I)V

    .line 296
    .line 297
    .line 298
    const v7, 0x845fed

    .line 299
    .line 300
    .line 301
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    new-instance v8, Lo7/g;

    .line 306
    .line 307
    const/4 v9, 0x3

    .line 308
    invoke-direct {v8, v9, v6}, Lo7/g;-><init>(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v5, v7, v8}, Lk2/i0;->c(Lr1/p;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lr1/p;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    new-instance v6, Lba/j;

    .line 316
    .line 317
    const/16 v7, 0x17

    .line 318
    .line 319
    invoke-direct {v6, v7, v1}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v5, v6}, Landroidx/compose/ui/input/key/a;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {v1}, Lw0/w0;->f()Ll0/h0;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    if-eqz v6, :cond_10

    .line 331
    .line 332
    invoke-virtual {v1}, Lw0/w0;->h()Z

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-eqz v6, :cond_10

    .line 337
    .line 338
    invoke-virtual {v1}, Lw0/w0;->g()Lw0/z;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    if-nez v6, :cond_e

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_e
    iget-object v4, v6, Lw0/z;->a:Lw0/y;

    .line 346
    .line 347
    iget-object v6, v6, Lw0/z;->b:Lw0/y;

    .line 348
    .line 349
    invoke-static {v4, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    :goto_6
    if-nez v4, :cond_10

    .line 354
    .line 355
    invoke-static {}, Lx/u0;->a()Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-nez v4, :cond_f

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_f
    new-instance v4, Lc8/n0;

    .line 363
    .line 364
    const/4 v6, 0x6

    .line 365
    invoke-direct {v4, v6, v1}, Lc8/n0;-><init>(ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v3, v4}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    :cond_10
    :goto_7
    invoke-interface {v5, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    new-instance v4, La8/d;

    .line 377
    .line 378
    const/16 v5, 0x1c

    .line 379
    .line 380
    invoke-direct {v4, v5, v1}, La8/d;-><init>(ILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v3, v4}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->a(Lr1/p;Lf9/n;)Lr1/p;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-interface {p0, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    new-instance v4, Lw0/h0;

    .line 392
    .line 393
    invoke-direct {v4, v1, v0, p3}, Lw0/h0;-><init>(Lw0/w0;Lw0/c1;Ln1/c;)V

    .line 394
    .line 395
    .line 396
    const v0, -0x6b43299a

    .line 397
    .line 398
    .line 399
    invoke-static {v0, v4, p4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    const/16 v4, 0x30

    .line 404
    .line 405
    invoke-static {v3, v0, p4, v4}, Lw0/y0;->f(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p4, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    if-nez v0, :cond_11

    .line 417
    .line 418
    if-ne v3, v2, :cond_12

    .line 419
    .line 420
    :cond_11
    new-instance v3, Lw0/e0;

    .line 421
    .line 422
    const/4 v0, 0x0

    .line 423
    invoke-direct {v3, v1, v0}, Lw0/e0;-><init>(Lw0/w0;I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    :cond_12
    check-cast v3, Lf9/k;

    .line 430
    .line 431
    invoke-static {v1, v3, p4}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 432
    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_13
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 436
    .line 437
    .line 438
    :goto_8
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 439
    .line 440
    .line 441
    move-result-object p4

    .line 442
    if-eqz p4, :cond_14

    .line 443
    .line 444
    new-instance v0, La8/x;

    .line 445
    .line 446
    move-object v1, p0

    .line 447
    move-object v2, p1

    .line 448
    move-object v3, p2

    .line 449
    move-object v4, p3

    .line 450
    move v5, p5

    .line 451
    invoke-direct/range {v0 .. v5}, La8/x;-><init>(Lr1/p;Lw0/z;Lf9/k;Ln1/c;I)V

    .line 452
    .line 453
    .line 454
    iput-object v0, p4, Lf1/w1;->d:Lf9/n;

    .line 455
    .line 456
    :cond_14
    return-void
.end method

.method public static final d(Lw0/q;ZLm3/j;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;Lf1/s;I)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    move-object/from16 v11, p8

    .line 12
    .line 13
    move/from16 v12, p9

    .line 14
    .line 15
    const v0, -0x1bcadee8

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v12, 0x6

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    and-int/lit8 v0, v12, 0x8

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v11, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v11, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x2

    .line 44
    :goto_1
    or-int/2addr v0, v12

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v0, v12

    .line 47
    :goto_2
    and-int/lit8 v2, v12, 0x30

    .line 48
    .line 49
    const/16 v3, 0x20

    .line 50
    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v11, v7}, Lf1/s;->g(Z)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    const/16 v2, 0x20

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/16 v2, 0x10

    .line 63
    .line 64
    :goto_3
    or-int/2addr v0, v2

    .line 65
    :cond_4
    and-int/lit16 v2, v12, 0x180

    .line 66
    .line 67
    if-nez v2, :cond_6

    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v11, v2}, Lf1/s;->d(I)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    const/16 v2, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const/16 v2, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v2

    .line 85
    :cond_6
    and-int/lit16 v2, v12, 0xc00

    .line 86
    .line 87
    if-nez v2, :cond_8

    .line 88
    .line 89
    invoke-virtual {v11, v9}, Lf1/s;->g(Z)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    const/16 v2, 0x800

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    const/16 v2, 0x400

    .line 99
    .line 100
    :goto_5
    or-int/2addr v0, v2

    .line 101
    :cond_8
    and-int/lit16 v2, v12, 0x6000

    .line 102
    .line 103
    if-nez v2, :cond_9

    .line 104
    .line 105
    or-int/lit16 v0, v0, 0x2000

    .line 106
    .line 107
    :cond_9
    const/high16 v2, 0x180000

    .line 108
    .line 109
    and-int/2addr v2, v12

    .line 110
    if-nez v2, :cond_b

    .line 111
    .line 112
    invoke-virtual {v11, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_a

    .line 117
    .line 118
    const/high16 v2, 0x100000

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_a
    const/high16 v2, 0x80000

    .line 122
    .line 123
    :goto_6
    or-int/2addr v0, v2

    .line 124
    :cond_b
    const v2, 0x82493

    .line 125
    .line 126
    .line 127
    and-int/2addr v2, v0

    .line 128
    const v4, 0x82492

    .line 129
    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    if-eq v2, v4, :cond_c

    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    goto :goto_7

    .line 136
    :cond_c
    const/4 v2, 0x0

    .line 137
    :goto_7
    and-int/lit8 v4, v0, 0x1

    .line 138
    .line 139
    invoke-virtual {v11, v4, v2}, Lf1/s;->N(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_1d

    .line 144
    .line 145
    invoke-virtual {v11}, Lf1/s;->S()V

    .line 146
    .line 147
    .line 148
    and-int/lit8 v2, v12, 0x1

    .line 149
    .line 150
    const v4, -0xe001

    .line 151
    .line 152
    .line 153
    if-eqz v2, :cond_e

    .line 154
    .line 155
    invoke-virtual {v11}, Lf1/s;->x()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_d

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_d
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 163
    .line 164
    .line 165
    and-int/2addr v0, v4

    .line 166
    move-wide/from16 v14, p4

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_e
    :goto_8
    and-int/2addr v0, v4

    .line 170
    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :goto_9
    invoke-virtual {v11}, Lf1/s;->q()V

    .line 176
    .line 177
    .line 178
    sget-object v2, Lm3/j;->b:Lm3/j;

    .line 179
    .line 180
    sget-object v4, Lm3/j;->a:Lm3/j;

    .line 181
    .line 182
    if-eqz v7, :cond_12

    .line 183
    .line 184
    sget v16, Lw0/o0;->a:F

    .line 185
    .line 186
    if-ne v8, v4, :cond_f

    .line 187
    .line 188
    if-eqz v9, :cond_10

    .line 189
    .line 190
    :cond_f
    if-ne v8, v2, :cond_11

    .line 191
    .line 192
    if-eqz v9, :cond_11

    .line 193
    .line 194
    :cond_10
    const/4 v2, 0x1

    .line 195
    goto :goto_a

    .line 196
    :cond_11
    const/4 v2, 0x0

    .line 197
    :goto_a
    move v4, v2

    .line 198
    goto :goto_c

    .line 199
    :cond_12
    sget v16, Lw0/o0;->a:F

    .line 200
    .line 201
    if-ne v8, v4, :cond_13

    .line 202
    .line 203
    if-eqz v9, :cond_14

    .line 204
    .line 205
    :cond_13
    if-ne v8, v2, :cond_15

    .line 206
    .line 207
    if-eqz v9, :cond_15

    .line 208
    .line 209
    :cond_14
    const/4 v2, 0x1

    .line 210
    goto :goto_b

    .line 211
    :cond_15
    const/4 v2, 0x0

    .line 212
    :goto_b
    if-nez v2, :cond_16

    .line 213
    .line 214
    const/4 v4, 0x1

    .line 215
    goto :goto_c

    .line 216
    :cond_16
    const/4 v4, 0x0

    .line 217
    :goto_c
    if-eqz v4, :cond_17

    .line 218
    .line 219
    sget-object v2, Lr1/a;->b:Lr1/e;

    .line 220
    .line 221
    goto :goto_d

    .line 222
    :cond_17
    sget-object v2, Lr1/a;->a:Lr1/e;

    .line 223
    .line 224
    :goto_d
    and-int/lit8 v13, v0, 0xe

    .line 225
    .line 226
    if-eq v13, v1, :cond_19

    .line 227
    .line 228
    and-int/lit8 v1, v0, 0x8

    .line 229
    .line 230
    if-eqz v1, :cond_18

    .line 231
    .line 232
    invoke-virtual {v11, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_18

    .line 237
    .line 238
    goto :goto_e

    .line 239
    :cond_18
    const/4 v1, 0x0

    .line 240
    goto :goto_f

    .line 241
    :cond_19
    :goto_e
    const/4 v1, 0x1

    .line 242
    :goto_f
    and-int/lit8 v0, v0, 0x70

    .line 243
    .line 244
    if-ne v0, v3, :cond_1a

    .line 245
    .line 246
    const/4 v5, 0x1

    .line 247
    :cond_1a
    or-int v0, v1, v5

    .line 248
    .line 249
    invoke-virtual {v11, v4}, Lf1/s;->g(Z)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    or-int/2addr v0, v1

    .line 254
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    if-nez v0, :cond_1b

    .line 259
    .line 260
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 261
    .line 262
    if-ne v1, v0, :cond_1c

    .line 263
    .line 264
    :cond_1b
    new-instance v1, Lw0/a;

    .line 265
    .line 266
    invoke-direct {v1, v6, v7, v4}, Lw0/a;-><init>(Lw0/q;ZZ)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_1c
    check-cast v1, Lf9/k;

    .line 273
    .line 274
    invoke-static {v10, v1}, Ly2/k;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    sget-object v0, Lr2/i1;->s:Lf1/w2;

    .line 279
    .line 280
    invoke-virtual {v11, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v1, v0

    .line 285
    check-cast v1, Lr2/q2;

    .line 286
    .line 287
    new-instance v0, Lw0/f;

    .line 288
    .line 289
    move-wide/from16 v17, v14

    .line 290
    .line 291
    move-object v14, v2

    .line 292
    move-wide/from16 v2, v17

    .line 293
    .line 294
    invoke-direct/range {v0 .. v6}, Lw0/f;-><init>(Lr2/q2;JZLr1/p;Lw0/q;)V

    .line 295
    .line 296
    .line 297
    const v1, 0x515e2041

    .line 298
    .line 299
    .line 300
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    or-int/lit16 v1, v13, 0x180

    .line 305
    .line 306
    invoke-static {v6, v14, v0, v11, v1}, Lw0/y0;->a(Lw0/q;Lr1/d;Ln1/c;Lf1/s;I)V

    .line 307
    .line 308
    .line 309
    goto :goto_10

    .line 310
    :cond_1d
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 311
    .line 312
    .line 313
    move-wide/from16 v2, p4

    .line 314
    .line 315
    :goto_10
    invoke-virtual {v11}, Lf1/s;->r()Lf1/w1;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    if-eqz v11, :cond_1e

    .line 320
    .line 321
    new-instance v0, Lw0/b;

    .line 322
    .line 323
    move-object v1, v6

    .line 324
    move v4, v9

    .line 325
    move v9, v12

    .line 326
    move-wide v5, v2

    .line 327
    move v2, v7

    .line 328
    move-object v3, v8

    .line 329
    move-object v8, v10

    .line 330
    move/from16 v7, p6

    .line 331
    .line 332
    invoke-direct/range {v0 .. v9}, Lw0/b;-><init>(Lw0/q;ZLm3/j;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;I)V

    .line 333
    .line 334
    .line 335
    iput-object v0, v11, Lf1/w1;->d:Lf9/n;

    .line 336
    .line 337
    :cond_1e
    return-void
.end method

.method public static final e(Lr1/p;Lf9/a;ZLf1/s;I)V
    .locals 4

    .line 1
    const v0, 0x7ddd909a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p4, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p4

    .line 23
    :goto_1
    invoke-virtual {p3, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/16 v1, 0x10

    .line 33
    .line 34
    :goto_2
    or-int/2addr v0, v1

    .line 35
    invoke-virtual {p3, p2}, Lf1/s;->g(Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/16 v1, 0x100

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    const/16 v1, 0x80

    .line 45
    .line 46
    :goto_3
    or-int/2addr v0, v1

    .line 47
    and-int/lit16 v1, v0, 0x93

    .line 48
    .line 49
    const/16 v2, 0x92

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    if-eq v1, v2, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    const/4 v1, 0x0

    .line 57
    :goto_4
    and-int/2addr v0, v3

    .line 58
    invoke-virtual {p3, v0, v1}, Lf1/s;->N(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    sget v0, Lw0/o0;->a:F

    .line 65
    .line 66
    sget v1, Lw0/o0;->b:F

    .line 67
    .line 68
    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/layout/c;->i(Lr1/p;FF)Lr1/p;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lw0/i;

    .line 73
    .line 74
    invoke-direct {v1, p1, p2}, Lw0/i;-><init>(Lf9/a;Z)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p3, v0}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 82
    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_5
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 86
    .line 87
    .line 88
    :goto_5
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-eqz p3, :cond_6

    .line 93
    .line 94
    new-instance v0, Lw0/c;

    .line 95
    .line 96
    invoke-direct {v0, p0, p1, p2, p4}, Lw0/c;-><init>(Lr1/p;Lf9/a;ZI)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p3, Lf1/w1;->d:Lf9/n;

    .line 100
    .line 101
    :cond_6
    return-void
.end method

.method public static final f(Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 7

    .line 1
    const v0, -0x6e8e8303

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
    or-int/2addr v0, p3

    .line 17
    and-int/lit8 v1, v0, 0x13

    .line 18
    .line 19
    const/16 v2, 0x12

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_1
    and-int/2addr v0, v3

    .line 28
    invoke-virtual {p2, v0, v1}, Lf1/s;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 39
    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    sget-object v0, Lw0/e1;->a:Lw0/e1;

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    check-cast v0, Lo2/m0;

    .line 48
    .line 49
    iget-wide v1, p2, Lf1/s;->T:J

    .line 50
    .line 51
    const/16 v4, 0x20

    .line 52
    .line 53
    ushr-long v4, v1, v4

    .line 54
    .line 55
    xor-long/2addr v1, v4

    .line 56
    long-to-int v2, v1

    .line 57
    invoke-virtual {p2}, Lf1/s;->l()Lf1/q1;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {p2, p0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    sget-object v5, Lq2/j;->d0:Lq2/i;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    sget-object v5, Lq2/i;->b:Lq2/a0;

    .line 71
    .line 72
    invoke-virtual {p2}, Lf1/s;->a0()V

    .line 73
    .line 74
    .line 75
    iget-boolean v6, p2, Lf1/s;->S:Z

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    invoke-virtual {p2, v5}, Lf1/s;->k(Lf9/a;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p2}, Lf1/s;->k0()V

    .line 84
    .line 85
    .line 86
    :goto_2
    sget-object v5, Lq2/i;->e:Lq2/h;

    .line 87
    .line 88
    invoke-static {p2, v5, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 92
    .line 93
    invoke-static {p2, v0, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 97
    .line 98
    iget-boolean v1, p2, Lf1/s;->S:Z

    .line 99
    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v1, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    :cond_4
    invoke-static {v2, p2, v2, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 120
    .line 121
    invoke-static {p2, v0, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x6

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, p2, v0}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v3}, Lf1/s;->p(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 137
    .line 138
    .line 139
    :goto_3
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    new-instance v0, Lw0/d0;

    .line 146
    .line 147
    const/4 v1, 0x1

    .line 148
    invoke-direct {v0, p0, p1, p3, v1}, Lw0/d0;-><init>(Lr1/p;Ln1/c;II)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 152
    .line 153
    :cond_7
    return-void
.end method

.method public static final g(ZLm3/j;Lw0/r1;Lf1/s;I)V
    .locals 12

    .line 1
    move-object v8, p3

    .line 2
    move/from16 v10, p4

    .line 3
    .line 4
    const v0, -0x50245748

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v0, v10, 0x6

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3, p0}, Lf1/s;->g(Z)Z

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
    or-int/2addr v0, v10

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, v10

    .line 27
    :goto_1
    and-int/lit8 v3, v10, 0x30

    .line 28
    .line 29
    const/16 v4, 0x20

    .line 30
    .line 31
    if-nez v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p3, v3}, Lf1/s;->d(I)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v0, v3

    .line 49
    :cond_3
    and-int/lit16 v3, v10, 0x180

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    const/16 v3, 0x100

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    const/16 v3, 0x80

    .line 63
    .line 64
    :goto_3
    or-int/2addr v0, v3

    .line 65
    :cond_5
    and-int/lit16 v3, v0, 0x93

    .line 66
    .line 67
    const/16 v5, 0x92

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x1

    .line 71
    if-eq v3, v5, :cond_6

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_6
    const/4 v3, 0x0

    .line 76
    :goto_4
    and-int/lit8 v5, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {p3, v5, v3}, Lf1/s;->N(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_11

    .line 83
    .line 84
    and-int/lit8 v3, v0, 0xe

    .line 85
    .line 86
    if-ne v3, v2, :cond_7

    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    goto :goto_5

    .line 90
    :cond_7
    const/4 v5, 0x0

    .line 91
    :goto_5
    invoke-virtual {p3, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    or-int/2addr v5, v9

    .line 96
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 101
    .line 102
    if-nez v5, :cond_8

    .line 103
    .line 104
    if-ne v9, v11, :cond_9

    .line 105
    .line 106
    :cond_8
    new-instance v9, Lw0/n1;

    .line 107
    .line 108
    invoke-direct {v9, p2, p0}, Lw0/n1;-><init>(Lw0/r1;Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_9
    check-cast v9, Ll0/z0;

    .line 115
    .line 116
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-ne v3, v2, :cond_a

    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    :cond_a
    or-int v2, v5, v6

    .line 124
    .line 125
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v2, :cond_b

    .line 130
    .line 131
    if-ne v3, v11, :cond_c

    .line 132
    .line 133
    :cond_b
    new-instance v3, Lw0/s1;

    .line 134
    .line 135
    invoke-direct {v3, p2, p0}, Lw0/s1;-><init>(Lw0/r1;Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_c
    check-cast v3, Lw0/q;

    .line 142
    .line 143
    invoke-virtual {p2}, Lw0/r1;->m()Lg3/w;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget-wide v5, v2, Lg3/w;->b:J

    .line 148
    .line 149
    invoke-static {v5, v6}, Lb3/n0;->g(J)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz p0, :cond_d

    .line 154
    .line 155
    invoke-virtual {p2}, Lw0/r1;->m()Lg3/w;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    iget-wide v5, v5, Lg3/w;->b:J

    .line 160
    .line 161
    shr-long v4, v5, v4

    .line 162
    .line 163
    :goto_6
    long-to-int v5, v4

    .line 164
    goto :goto_7

    .line 165
    :cond_d
    invoke-virtual {p2}, Lw0/r1;->m()Lg3/w;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    iget-wide v4, v4, Lg3/w;->b:J

    .line 170
    .line 171
    const-wide v6, 0xffffffffL

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    and-long/2addr v4, v6

    .line 177
    goto :goto_6

    .line 178
    :goto_7
    iget-object v4, p2, Lw0/r1;->d:Ll0/s0;

    .line 179
    .line 180
    if-eqz v4, :cond_e

    .line 181
    .line 182
    invoke-virtual {v4}, Ll0/s0;->d()Ll0/q1;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    if-eqz v4, :cond_e

    .line 187
    .line 188
    iget-object v4, v4, Ll0/q1;->a:Lb3/l0;

    .line 189
    .line 190
    invoke-static {v4, v5}, Ll0/p0;->t(Lb3/l0;I)F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    move v6, v4

    .line 195
    goto :goto_8

    .line 196
    :cond_e
    const/4 v4, 0x0

    .line 197
    const/4 v6, 0x0

    .line 198
    :goto_8
    invoke-virtual {p3, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    if-nez v4, :cond_f

    .line 207
    .line 208
    if-ne v5, v11, :cond_10

    .line 209
    .line 210
    :cond_f
    new-instance v5, Lw0/g0;

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    invoke-direct {v5, v9, v4}, Lw0/g0;-><init>(Ll0/z0;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_10
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 220
    .line 221
    new-instance v7, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 222
    .line 223
    const/4 v4, 0x0

    .line 224
    const/4 v11, 0x6

    .line 225
    invoke-direct {v7, v9, v4, v5, v11}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 226
    .line 227
    .line 228
    shl-int/lit8 v0, v0, 0x3

    .line 229
    .line 230
    and-int/lit16 v9, v0, 0x3f0

    .line 231
    .line 232
    const-wide/16 v4, 0x0

    .line 233
    .line 234
    move v1, p0

    .line 235
    move-object v0, v3

    .line 236
    move v3, v2

    .line 237
    move-object v2, p1

    .line 238
    invoke-static/range {v0 .. v9}, Lw0/y0;->d(Lw0/q;ZLm3/j;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;Lf1/s;I)V

    .line 239
    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_11
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 243
    .line 244
    .line 245
    :goto_9
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_12

    .line 250
    .line 251
    new-instance v2, Lw0/c;

    .line 252
    .line 253
    invoke-direct {v2, p0, p1, p2, v10}, Lw0/c;-><init>(ZLm3/j;Lw0/r1;I)V

    .line 254
    .line 255
    .line 256
    iput-object v2, v0, Lf1/w1;->d:Lf9/n;

    .line 257
    .line 258
    :cond_12
    return-void
.end method

.method public static final h(Lw0/p0;Lw0/j;)Lw0/z;
    .locals 6

    .line 1
    invoke-interface {p0}, Lw0/p0;->i()Lw0/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lw0/k;->a:Lw0/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Lw0/z;

    .line 15
    .line 16
    invoke-interface {p0}, Lw0/p0;->j()Lw0/w;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface {p0}, Lw0/p0;->k()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {v4, v0, v3, v5, p1}, Lw0/y0;->m(Lw0/w;ZZILw0/j;)Lw0/y;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {p0}, Lw0/p0;->h()Lw0/w;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {p0}, Lw0/p0;->g()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {v4, v0, v2, p0, p1}, Lw0/y0;->m(Lw0/w;ZZILw0/j;)Lw0/y;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, v3, p0, v0}, Lw0/z;-><init>(Lw0/y;Lw0/y;Z)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static final i(Lk2/m0;Ly8/a;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lw0/j0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lw0/j0;

    .line 7
    .line 8
    iget v1, v0, Lw0/j0;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lw0/j0;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lw0/j0;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lw0/j0;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lw0/j0;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lw0/j0;->d:Lk2/m0;

    .line 35
    .line 36
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    iput-object p0, v0, Lw0/j0;->d:Lk2/m0;

    .line 52
    .line 53
    iput v2, v0, Lw0/j0;->f:I

    .line 54
    .line 55
    sget-object p1, Lk2/p;->b:Lk2/p;

    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 62
    .line 63
    if-ne p1, v1, :cond_3

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_3
    :goto_2
    check-cast p1, Lk2/o;

    .line 67
    .line 68
    iget-object v1, p1, Lk2/o;->a:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_3
    if-ge v4, v3, :cond_5

    .line 76
    .line 77
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lk2/w;

    .line 82
    .line 83
    invoke-static {v5}, Lk2/v;->a(Lk2/w;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_4

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    return-object p1
.end method

.method public static final j(Lk2/m0;Lw0/n;Le7/l;Lk2/o;Ly8/a;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    sget-object v5, Lw0/b0;->d:Lw0/a0;

    .line 12
    .line 13
    instance-of v6, v4, Lw0/k0;

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    move-object v6, v4

    .line 18
    check-cast v6, Lw0/k0;

    .line 19
    .line 20
    iget v7, v6, Lw0/k0;->h:I

    .line 21
    .line 22
    const/high16 v8, -0x80000000

    .line 23
    .line 24
    and-int v9, v7, v8

    .line 25
    .line 26
    if-eqz v9, :cond_0

    .line 27
    .line 28
    sub-int/2addr v7, v8

    .line 29
    iput v7, v6, Lw0/k0;->h:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v6, Lw0/k0;

    .line 33
    .line 34
    invoke-direct {v6, v4}, Ly8/c;-><init>(Lw8/c;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v4, v6, Lw0/k0;->g:Ljava/lang/Object;

    .line 38
    .line 39
    iget v7, v6, Lw0/k0;->h:I

    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x1

    .line 44
    if-eqz v7, :cond_5

    .line 45
    .line 46
    if-eq v7, v10, :cond_2

    .line 47
    .line 48
    if-ne v7, v8, :cond_1

    .line 49
    .line 50
    iget-object v0, v6, Lw0/k0;->f:Lg9/t;

    .line 51
    .line 52
    iget-object v1, v6, Lw0/k0;->e:Lw0/n;

    .line 53
    .line 54
    iget-object v2, v6, Lw0/k0;->d:Lk2/m0;

    .line 55
    .line 56
    invoke-static {v4}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v17, v2

    .line 60
    .line 61
    move-object v2, v0

    .line 62
    move-object/from16 v0, v17

    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-object v0, v6, Lw0/k0;->e:Lw0/n;

    .line 75
    .line 76
    iget-object v1, v6, Lw0/k0;->d:Lk2/m0;

    .line 77
    .line 78
    invoke-static {v4}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    check-cast v4, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget-object v1, v1, Lk2/m0;->f:Lk2/n0;

    .line 90
    .line 91
    iget-object v1, v1, Lk2/n0;->s:Lk2/o;

    .line 92
    .line 93
    iget-object v1, v1, Lk2/o;->a:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    :goto_1
    if-ge v9, v2, :cond_4

    .line 100
    .line 101
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lk2/w;

    .line 106
    .line 107
    invoke-static {v3}, Lk2/v;->b(Lk2/w;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-virtual {v3}, Lk2/w;->a()V

    .line 114
    .line 115
    .line 116
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-interface {v0}, Lw0/n;->b()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_5
    invoke-static {v4}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v4, v2, Le7/l;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v4, Lr2/q2;

    .line 130
    .line 131
    iget-object v7, v2, Le7/l;->d:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v7, Lk2/w;

    .line 134
    .line 135
    iget-object v11, v3, Lk2/o;->a:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    check-cast v11, Lk2/w;

    .line 142
    .line 143
    if-eqz v7, :cond_6

    .line 144
    .line 145
    iget-wide v12, v11, Lk2/w;->b:J

    .line 146
    .line 147
    iget-wide v14, v7, Lk2/w;->b:J

    .line 148
    .line 149
    sub-long/2addr v12, v14

    .line 150
    invoke-interface {v4}, Lr2/q2;->a()J

    .line 151
    .line 152
    .line 153
    move-result-wide v14

    .line 154
    cmp-long v16, v12, v14

    .line 155
    .line 156
    if-gez v16, :cond_6

    .line 157
    .line 158
    iget v12, v7, Lk2/w;->i:I

    .line 159
    .line 160
    invoke-static {v4, v12}, Lz/y;->i(Lr2/q2;I)F

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    iget-wide v12, v7, Lk2/w;->c:J

    .line 165
    .line 166
    iget-wide v14, v11, Lk2/w;->c:J

    .line 167
    .line 168
    invoke-static {v12, v13, v14, v15}, Lx1/b;->g(JJ)J

    .line 169
    .line 170
    .line 171
    move-result-wide v12

    .line 172
    invoke-static {v12, v13}, Lx1/b;->c(J)F

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    cmpg-float v4, v7, v4

    .line 177
    .line 178
    if-gez v4, :cond_6

    .line 179
    .line 180
    iget v4, v2, Le7/l;->b:I

    .line 181
    .line 182
    add-int/2addr v4, v10

    .line 183
    iput v4, v2, Le7/l;->b:I

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    iput v10, v2, Le7/l;->b:I

    .line 187
    .line 188
    :goto_2
    iput-object v11, v2, Le7/l;->d:Ljava/lang/Object;

    .line 189
    .line 190
    iget-object v3, v3, Lk2/o;->a:Ljava/lang/Object;

    .line 191
    .line 192
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Lk2/w;

    .line 197
    .line 198
    iget v2, v2, Le7/l;->b:I

    .line 199
    .line 200
    if-eq v2, v10, :cond_8

    .line 201
    .line 202
    if-eq v2, v8, :cond_7

    .line 203
    .line 204
    sget-object v4, Lw0/b0;->f:Lw0/a0;

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    sget-object v4, Lw0/b0;->e:Lw0/a0;

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_8
    move-object v4, v5

    .line 211
    :goto_3
    iget-wide v11, v3, Lk2/w;->c:J

    .line 212
    .line 213
    invoke-interface {v1, v11, v12, v4, v2}, Lw0/n;->d(JLw0/a0;I)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_c

    .line 218
    .line 219
    new-instance v2, Lg9/t;

    .line 220
    .line 221
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    xor-int/2addr v5, v10

    .line 229
    iput-boolean v5, v2, Lg9/t;->a:Z

    .line 230
    .line 231
    iget-wide v10, v3, Lk2/w;->a:J

    .line 232
    .line 233
    new-instance v3, Ll0/u;

    .line 234
    .line 235
    const/16 v5, 0xb

    .line 236
    .line 237
    invoke-direct {v3, v1, v4, v2, v5}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    iput-object v0, v6, Lw0/k0;->d:Lk2/m0;

    .line 241
    .line 242
    iput-object v1, v6, Lw0/k0;->e:Lw0/n;

    .line 243
    .line 244
    iput-object v2, v6, Lw0/k0;->f:Lg9/t;

    .line 245
    .line 246
    iput v8, v6, Lw0/k0;->h:I

    .line 247
    .line 248
    invoke-static {v0, v10, v11, v3, v6}, Lz/y;->f(Lk2/m0;JLf9/k;Ly8/c;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 253
    .line 254
    if-ne v4, v3, :cond_9

    .line 255
    .line 256
    return-object v3

    .line 257
    :cond_9
    :goto_4
    check-cast v4, Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_b

    .line 264
    .line 265
    iget-boolean v2, v2, Lg9/t;->a:Z

    .line 266
    .line 267
    if-eqz v2, :cond_b

    .line 268
    .line 269
    iget-object v0, v0, Lk2/m0;->f:Lk2/n0;

    .line 270
    .line 271
    iget-object v0, v0, Lk2/n0;->s:Lk2/o;

    .line 272
    .line 273
    iget-object v0, v0, Lk2/o;->a:Ljava/lang/Object;

    .line 274
    .line 275
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    :goto_5
    if-ge v9, v2, :cond_b

    .line 280
    .line 281
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    check-cast v3, Lk2/w;

    .line 286
    .line 287
    invoke-static {v3}, Lk2/v;->b(Lk2/w;)Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_a

    .line 292
    .line 293
    invoke-virtual {v3}, Lk2/w;->a()V

    .line 294
    .line 295
    .line 296
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_b
    invoke-interface {v1}, Lw0/n;->b()V

    .line 300
    .line 301
    .line 302
    :cond_c
    :goto_6
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 303
    .line 304
    return-object v0
.end method

.method public static final k(Lk2/m0;Ll0/z0;Lk2/o;Ly8/a;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p3, Lw0/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lw0/l0;

    .line 7
    .line 8
    iget v1, v0, Lw0/l0;->h:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lw0/l0;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lw0/l0;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lw0/l0;->g:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lw0/l0;->h:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lx8/a;->a:Lx8/a;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lw0/l0;->e:Ll0/z0;

    .line 41
    .line 42
    iget-object p0, v0, Lw0/l0;->d:Lk2/m0;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    iget-object p0, v0, Lw0/l0;->f:Lk2/w;

    .line 61
    .line 62
    iget-object p1, v0, Lw0/l0;->e:Ll0/z0;

    .line 63
    .line 64
    iget-object p2, v0, Lw0/l0;->d:Lk2/m0;

    .line 65
    .line 66
    :try_start_1
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    move-object v10, p2

    .line 70
    move-object p2, p0

    .line 71
    move-object p0, v10

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :try_start_2
    iget-object p2, p2, Lk2/o;->a:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p2}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lk2/w;

    .line 83
    .line 84
    iget-wide v6, p2, Lk2/w;->a:J

    .line 85
    .line 86
    iput-object p0, v0, Lw0/l0;->d:Lk2/m0;

    .line 87
    .line 88
    iput-object p1, v0, Lw0/l0;->e:Ll0/z0;

    .line 89
    .line 90
    iput-object p2, v0, Lw0/l0;->f:Lk2/w;

    .line 91
    .line 92
    iput v4, v0, Lw0/l0;->h:I

    .line 93
    .line 94
    invoke-static {p0, v6, v7, v0}, Lz/y;->d(Lk2/m0;JLy8/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    if-ne p3, v5, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    :goto_1
    check-cast p3, Lk2/w;

    .line 102
    .line 103
    if-eqz p3, :cond_a

    .line 104
    .line 105
    iget-wide v6, p3, Lk2/w;->c:J

    .line 106
    .line 107
    invoke-virtual {p0}, Lk2/m0;->d()Lr2/q2;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget v8, p2, Lk2/w;->i:I

    .line 112
    .line 113
    invoke-static {v1, v8}, Lz/y;->i(Lr2/q2;I)F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iget-wide v8, p2, Lk2/w;->c:J

    .line 118
    .line 119
    invoke-static {v8, v9, v6, v7}, Lx1/b;->g(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    invoke-static {v8, v9}, Lx1/b;->c(J)F

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    cmpg-float p2, p2, v1

    .line 128
    .line 129
    if-gez p2, :cond_5

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    const/4 v4, 0x0

    .line 133
    :goto_2
    if-eqz v4, :cond_a

    .line 134
    .line 135
    invoke-interface {p1, v6, v7}, Ll0/z0;->a(J)V

    .line 136
    .line 137
    .line 138
    iget-wide p2, p3, Lk2/w;->a:J

    .line 139
    .line 140
    new-instance v1, Ll0/t0;

    .line 141
    .line 142
    const/4 v4, 0x1

    .line 143
    invoke-direct {v1, p1, v4}, Ll0/t0;-><init>(Ll0/z0;I)V

    .line 144
    .line 145
    .line 146
    iput-object p0, v0, Lw0/l0;->d:Lk2/m0;

    .line 147
    .line 148
    iput-object p1, v0, Lw0/l0;->e:Ll0/z0;

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    iput-object v4, v0, Lw0/l0;->f:Lk2/w;

    .line 152
    .line 153
    iput v3, v0, Lw0/l0;->h:I

    .line 154
    .line 155
    invoke-static {p0, p2, p3, v1, v0}, Lz/y;->f(Lk2/m0;JLf9/k;Ly8/c;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    if-ne p3, v5, :cond_6

    .line 160
    .line 161
    :goto_3
    return-object v5

    .line 162
    :cond_6
    :goto_4
    check-cast p3, Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_9

    .line 169
    .line 170
    iget-object p0, p0, Lk2/m0;->f:Lk2/n0;

    .line 171
    .line 172
    iget-object p0, p0, Lk2/n0;->s:Lk2/o;

    .line 173
    .line 174
    iget-object p0, p0, Lk2/o;->a:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    :goto_5
    if-ge v2, p2, :cond_8

    .line 181
    .line 182
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    check-cast p3, Lk2/w;

    .line 187
    .line 188
    invoke-static {p3}, Lk2/v;->b(Lk2/w;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    invoke-virtual {p3}, Lk2/w;->a()V

    .line 195
    .line 196
    .line 197
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    invoke-interface {p1}, Ll0/z0;->b()V

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_9
    invoke-interface {p1}, Ll0/z0;->onCancel()V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    .line 206
    .line 207
    :cond_a
    :goto_6
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 208
    .line 209
    return-object p0

    .line 210
    :goto_7
    invoke-interface {p1}, Ll0/z0;->onCancel()V

    .line 211
    .line 212
    .line 213
    throw p0
.end method

.method public static final l(Lw0/p0;Lw0/w;Lw0/y;)Lw0/y;
    .locals 12

    .line 1
    invoke-interface {p0}, Lw0/p0;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Lw0/w;->c:I

    .line 8
    .line 9
    :goto_0
    move v3, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget v0, p1, Lw0/w;->d:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    invoke-interface {p0}, Lw0/p0;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lw0/p0;->k()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    invoke-interface {p0}, Lw0/p0;->g()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_2
    iget v1, p1, Lw0/w;->b:I

    .line 30
    .line 31
    iget-object v7, p1, Lw0/w;->f:Lb3/l0;

    .line 32
    .line 33
    iget v8, p1, Lw0/w;->e:I

    .line 34
    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lw0/w;->a(I)Lw0/y;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_2
    new-instance v0, Lj8/v;

    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    invoke-direct {v0, v3, v9, p1}, Lj8/v;-><init>(IILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v10, Lr8/i;->b:Lr8/i;

    .line 49
    .line 50
    invoke-static {v10, v0}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {p0}, Lw0/p0;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget v0, p1, Lw0/w;->d:I

    .line 61
    .line 62
    :goto_3
    move v4, v0

    .line 63
    goto :goto_4

    .line 64
    :cond_3
    iget v0, p1, Lw0/w;->c:I

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :goto_4
    new-instance v1, Lw0/c0;

    .line 68
    .line 69
    move-object v5, p0

    .line 70
    move-object v2, p1

    .line 71
    invoke-direct/range {v1 .. v6}, Lw0/c0;-><init>(Lw0/w;IILw0/p0;Lr8/h;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v10, v1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-wide v0, v2, Lw0/w;->a:J

    .line 79
    .line 80
    iget-wide v10, p2, Lw0/y;->c:J

    .line 81
    .line 82
    cmp-long p1, v0, v10

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-interface {p0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lw0/y;

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_4
    if-ne v3, v8, :cond_5

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_5
    iget-object p1, v7, Lb3/l0;->b:Lb3/o;

    .line 97
    .line 98
    invoke-virtual {p1, v8}, Lb3/o;->d(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-interface {v6}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/Number;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eq v0, p1, :cond_6

    .line 113
    .line 114
    invoke-interface {p0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Lw0/y;

    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_6
    iget p1, p2, Lw0/y;->b:I

    .line 122
    .line 123
    invoke-virtual {v7, p1}, Lb3/l0;->j(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    invoke-interface {v5}, Lw0/p0;->a()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    const/4 v4, -0x1

    .line 132
    if-ne v8, v4, :cond_7

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_7
    if-ne v3, v8, :cond_8

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_8
    invoke-virtual {v2}, Lw0/w;->b()Lw0/k;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    sget-object v5, Lw0/k;->a:Lw0/k;

    .line 143
    .line 144
    if-ne v4, v5, :cond_9

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_9
    const/4 v9, 0x0

    .line 148
    :goto_5
    xor-int/2addr p2, v9

    .line 149
    if-eqz p2, :cond_a

    .line 150
    .line 151
    if-ge v3, v8, :cond_d

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_a
    if-le v3, v8, :cond_d

    .line 155
    .line 156
    :goto_6
    sget p2, Lb3/n0;->c:I

    .line 157
    .line 158
    const/16 p2, 0x20

    .line 159
    .line 160
    shr-long v4, v0, p2

    .line 161
    .line 162
    long-to-int p2, v4

    .line 163
    if-eq p1, p2, :cond_c

    .line 164
    .line 165
    const-wide v4, 0xffffffffL

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    and-long/2addr v0, v4

    .line 171
    long-to-int p2, v0

    .line 172
    if-ne p1, p2, :cond_b

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_b
    invoke-virtual {v2, v3}, Lw0/w;->a(I)Lw0/y;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :cond_c
    :goto_7
    invoke-interface {p0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Lw0/y;

    .line 185
    .line 186
    return-object p0

    .line 187
    :cond_d
    :goto_8
    invoke-virtual {v2, v3}, Lw0/w;->a(I)Lw0/y;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    return-object p0
.end method

.method public static final m(Lw0/w;ZZILw0/j;)Lw0/y;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lw0/w;->c:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lw0/w;->d:I

    .line 7
    .line 8
    :goto_0
    iget v1, p0, Lw0/w;->b:I

    .line 9
    .line 10
    if-eq p3, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lw0/w;->a(I)Lw0/y;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    invoke-interface {p4, p0, v0}, Lw0/j;->a(Lw0/w;I)J

    .line 18
    .line 19
    .line 20
    move-result-wide p3

    .line 21
    xor-int/2addr p1, p2

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    sget p1, Lb3/n0;->c:I

    .line 25
    .line 26
    const/16 p1, 0x20

    .line 27
    .line 28
    shr-long p1, p3, p1

    .line 29
    .line 30
    :goto_1
    long-to-int p2, p1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    sget p1, Lb3/n0;->c:I

    .line 33
    .line 34
    const-wide p1, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr p1, p3

    .line 40
    goto :goto_1

    .line 41
    :goto_2
    invoke-virtual {p0, p2}, Lw0/w;->a(I)Lw0/y;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final n(Lw0/l;Lw0/l;Lw0/q0;JLw0/y;)Lw0/l;
    .locals 0

    .line 1
    if-eqz p5, :cond_2

    .line 2
    .line 3
    iget-wide p0, p5, Lw0/y;->c:J

    .line 4
    .line 5
    iget-object p2, p2, Lw0/q0;->f:Llb/u;

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2, p0, p1}, Llb/u;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-gez p0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lw0/l;->a:Lw0/l;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    if-lez p0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lw0/l;->c:Lw0/l;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    sget-object p0, Lw0/l;->b:Lw0/l;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    invoke-static {p0, p1}, Lw0/y0;->x(Lw0/l;Lw0/l;)Lw0/l;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final o(Lw0/y;Lw0/w;I)Lw0/y;
    .locals 2

    .line 1
    iget-object p1, p1, Lw0/w;->f:Lb3/l0;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lb3/l0;->a(I)Lm3/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-wide v0, p0, Lw0/y;->c:J

    .line 8
    .line 9
    new-instance p0, Lw0/y;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lw0/y;-><init>(Lm3/j;IJ)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public static final p(Lx1/c;J)Z
    .locals 4

    .line 1
    iget v0, p0, Lx1/c;->a:F

    .line 2
    .line 3
    iget v1, p0, Lx1/c;->c:F

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    shr-long v2, p1, v2

    .line 8
    .line 9
    long-to-int v3, v2

    .line 10
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    cmpg-float v0, v0, v2

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    cmpg-float v0, v2, v1

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    .line 22
    iget v0, p0, Lx1/c;->b:F

    .line 23
    .line 24
    iget p0, p0, Lx1/c;->d:F

    .line 25
    .line 26
    const-wide v1, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr p1, v1

    .line 32
    long-to-int p2, p1

    .line 33
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    cmpg-float p2, v0, p1

    .line 38
    .line 39
    if-gtz p2, :cond_0

    .line 40
    .line 41
    cmpg-float p0, p1, p0

    .line 42
    .line 43
    if-gtz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public static final q(Lv1/c;F)Ly1/f;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    float-to-double v1, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    double-to-float v1, v1

    .line 11
    float-to-int v1, v1

    .line 12
    mul-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    sget-object v2, Lw0/y0;->b:Ly1/f;

    .line 15
    .line 16
    sget-object v4, Lw0/y0;->c:Ly1/b;

    .line 17
    .line 18
    sget-object v5, Lw0/y0;->d:La2/c;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v6, v2, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-gt v1, v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-le v1, v6, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    move-object v7, v2

    .line 40
    move-object v8, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 43
    invoke-static {v1, v1, v2}, Ly1/h0;->f(III)Ly1/f;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sput-object v2, Lw0/y0;->b:Ly1/f;

    .line 48
    .line 49
    invoke-static {v2}, Ly1/h0;->a(Ly1/f;)Ly1/b;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sput-object v4, Lw0/y0;->c:Ly1/b;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_2
    if-nez v5, :cond_2

    .line 57
    .line 58
    new-instance v5, La2/c;

    .line 59
    .line 60
    invoke-direct {v5}, La2/c;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v5, Lw0/y0;->d:La2/c;

    .line 64
    .line 65
    :cond_2
    move-object v9, v5

    .line 66
    iget-object v1, v9, La2/c;->a:La2/a;

    .line 67
    .line 68
    iget-object v2, v0, Lv1/c;->a:Lv1/a;

    .line 69
    .line 70
    invoke-interface {v2}, Lv1/a;->getLayoutDirection()Ln3/m;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v4, v7, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-float v5, v5

    .line 81
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    int-to-float v4, v4

    .line 86
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    int-to-long v5, v5

    .line 91
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    int-to-long v10, v4

    .line 96
    const/16 v4, 0x20

    .line 97
    .line 98
    shl-long/2addr v5, v4

    .line 99
    const-wide v17, 0xffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    and-long v10, v10, v17

    .line 105
    .line 106
    or-long/2addr v5, v10

    .line 107
    iget-object v10, v1, La2/a;->a:Ln3/c;

    .line 108
    .line 109
    iget-object v11, v1, La2/a;->b:Ln3/m;

    .line 110
    .line 111
    iget-object v12, v1, La2/a;->c:Ly1/o;

    .line 112
    .line 113
    iget-wide v13, v1, La2/a;->d:J

    .line 114
    .line 115
    iput-object v0, v1, La2/a;->a:Ln3/c;

    .line 116
    .line 117
    iput-object v2, v1, La2/a;->b:Ln3/m;

    .line 118
    .line 119
    iput-object v8, v1, La2/a;->c:Ly1/o;

    .line 120
    .line 121
    iput-wide v5, v1, La2/a;->d:J

    .line 122
    .line 123
    invoke-virtual {v8}, Ly1/b;->f()V

    .line 124
    .line 125
    .line 126
    move-object v0, v10

    .line 127
    move-object v2, v11

    .line 128
    sget-wide v10, Ly1/q;->b:J

    .line 129
    .line 130
    iget-object v5, v9, La2/c;->b:La2/b;

    .line 131
    .line 132
    invoke-virtual {v5}, La2/b;->J()J

    .line 133
    .line 134
    .line 135
    move-result-wide v5

    .line 136
    const/16 v16, 0x3a

    .line 137
    .line 138
    move-wide/from16 v19, v13

    .line 139
    .line 140
    move-object v14, v12

    .line 141
    const-wide/16 v12, 0x0

    .line 142
    .line 143
    move-wide/from16 v21, v5

    .line 144
    .line 145
    move-object v5, v14

    .line 146
    move-wide/from16 v14, v21

    .line 147
    .line 148
    move-wide/from16 v21, v19

    .line 149
    .line 150
    invoke-static/range {v9 .. v16}, La2/f;->x(La2/g;JJJI)V

    .line 151
    .line 152
    .line 153
    const-wide v19, 0xff000000L

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    invoke-static/range {v19 .. v20}, Ly1/h0;->d(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v10

    .line 162
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    int-to-long v12, v6

    .line 167
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    int-to-long v14, v6

    .line 172
    shl-long/2addr v12, v4

    .line 173
    and-long v14, v14, v17

    .line 174
    .line 175
    or-long/2addr v14, v12

    .line 176
    const/16 v16, 0x78

    .line 177
    .line 178
    const-wide/16 v12, 0x0

    .line 179
    .line 180
    invoke-static/range {v9 .. v16}, La2/f;->x(La2/g;JJJI)V

    .line 181
    .line 182
    .line 183
    invoke-static/range {v19 .. v20}, Ly1/h0;->d(J)J

    .line 184
    .line 185
    .line 186
    move-result-wide v10

    .line 187
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    int-to-long v12, v6

    .line 192
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    int-to-long v14, v6

    .line 197
    shl-long/2addr v12, v4

    .line 198
    and-long v14, v14, v17

    .line 199
    .line 200
    or-long/2addr v12, v14

    .line 201
    const/16 v6, 0x78

    .line 202
    .line 203
    move-object v14, v5

    .line 204
    move-wide v4, v12

    .line 205
    move-wide/from16 v23, v10

    .line 206
    .line 207
    move-object v10, v0

    .line 208
    move-object v11, v2

    .line 209
    move-object v0, v9

    .line 210
    move-object v9, v1

    .line 211
    move-wide/from16 v1, v23

    .line 212
    .line 213
    invoke-static/range {v0 .. v6}, La2/f;->s(La2/g;JFJI)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8}, Ly1/b;->n()V

    .line 217
    .line 218
    .line 219
    iput-object v10, v9, La2/a;->a:Ln3/c;

    .line 220
    .line 221
    iput-object v11, v9, La2/a;->b:Ln3/m;

    .line 222
    .line 223
    iput-object v14, v9, La2/a;->c:Ly1/o;

    .line 224
    .line 225
    move-wide/from16 v0, v21

    .line 226
    .line 227
    iput-wide v0, v9, La2/a;->d:J

    .line 228
    .line 229
    return-object v7
.end method

.method public static final r(Lw0/w0;JLw0/y;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual {v0, v3}, Lw0/w0;->d(Lw0/y;)Lw0/p;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_b

    .line 14
    .line 15
    :cond_0
    iget-object v5, v0, Lw0/w0;->l:Lo2/w;

    .line 16
    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    goto/16 :goto_b

    .line 20
    .line 21
    :cond_1
    iget-object v6, v4, Lw0/p;->c:Lv0/g;

    .line 22
    .line 23
    invoke-virtual {v4}, Lw0/p;->c()Lo2/w;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    if-nez v7, :cond_2

    .line 28
    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    :cond_2
    iget v3, v3, Lw0/y;->b:I

    .line 32
    .line 33
    invoke-virtual {v6}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Lb3/l0;

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v8, :cond_3

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v4, v8}, Lw0/p;->b(Lb3/l0;)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    :goto_0
    if-le v3, v8, :cond_4

    .line 49
    .line 50
    goto/16 :goto_b

    .line 51
    .line 52
    :cond_4
    iget-object v0, v0, Lw0/w0;->s:Lf1/k1;

    .line 53
    .line 54
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lx1/b;

    .line 59
    .line 60
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-wide v10, v0, Lx1/b;->a:J

    .line 64
    .line 65
    invoke-interface {v7, v5, v10, v11}, Lo2/w;->p(Lo2/w;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    const/16 v0, 0x20

    .line 70
    .line 71
    shr-long/2addr v10, v0

    .line 72
    long-to-int v8, v10

    .line 73
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    invoke-virtual {v6}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    check-cast v10, Lb3/l0;

    .line 82
    .line 83
    const/4 v11, 0x1

    .line 84
    if-nez v10, :cond_5

    .line 85
    .line 86
    sget-wide v9, Lb3/n0;->b:J

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    iget-object v12, v10, Lb3/l0;->b:Lb3/o;

    .line 90
    .line 91
    invoke-virtual {v4, v10}, Lw0/p;->b(Lb3/l0;)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v4, v11, :cond_6

    .line 96
    .line 97
    sget-wide v9, Lb3/n0;->b:J

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    sub-int/2addr v4, v11

    .line 101
    invoke-static {v3, v9, v4}, Li9/a;->n(III)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-virtual {v12, v4}, Lb3/o;->d(I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v10, v4}, Lb3/l0;->g(I)I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    invoke-virtual {v12, v4, v11}, Lb3/o;->c(IZ)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static {v9, v4}, Lb3/d0;->b(II)J

    .line 118
    .line 119
    .line 120
    move-result-wide v9

    .line 121
    :goto_1
    invoke-static {v9, v10}, Lb3/n0;->c(J)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    const/high16 v13, -0x40800000    # -1.0f

    .line 126
    .line 127
    if-eqz v4, :cond_9

    .line 128
    .line 129
    invoke-virtual {v6}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Lb3/l0;

    .line 134
    .line 135
    if-nez v4, :cond_7

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    iget-object v9, v4, Lb3/l0;->b:Lb3/o;

    .line 139
    .line 140
    invoke-virtual {v9, v3}, Lb3/o;->d(I)I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    iget v9, v9, Lb3/o;->f:I

    .line 145
    .line 146
    if-lt v10, v9, :cond_8

    .line 147
    .line 148
    :goto_2
    const/high16 v4, -0x40800000    # -1.0f

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    invoke-virtual {v4, v10}, Lb3/l0;->e(I)F

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    :goto_3
    const-wide v14, 0xffffffffL

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_9
    const/16 p0, 0x1

    .line 162
    .line 163
    const-wide v14, 0xffffffffL

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    shr-long v11, v9, v0

    .line 169
    .line 170
    long-to-int v4, v11

    .line 171
    invoke-virtual {v6}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    check-cast v11, Lb3/l0;

    .line 176
    .line 177
    if-nez v11, :cond_a

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    iget-object v12, v11, Lb3/l0;->b:Lb3/o;

    .line 181
    .line 182
    invoke-virtual {v12, v4}, Lb3/o;->d(I)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    iget v12, v12, Lb3/o;->f:I

    .line 187
    .line 188
    if-lt v4, v12, :cond_b

    .line 189
    .line 190
    :goto_4
    const/high16 v4, -0x40800000    # -1.0f

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_b
    invoke-virtual {v11, v4}, Lb3/l0;->e(I)F

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    :goto_5
    and-long/2addr v9, v14

    .line 198
    long-to-int v10, v9

    .line 199
    add-int/lit8 v10, v10, -0x1

    .line 200
    .line 201
    invoke-virtual {v6}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    check-cast v9, Lb3/l0;

    .line 206
    .line 207
    if-nez v9, :cond_c

    .line 208
    .line 209
    :goto_6
    const/high16 v9, -0x40800000    # -1.0f

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_c
    iget-object v11, v9, Lb3/l0;->b:Lb3/o;

    .line 213
    .line 214
    invoke-virtual {v11, v10}, Lb3/o;->d(I)I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    iget v11, v11, Lb3/o;->f:I

    .line 219
    .line 220
    if-lt v10, v11, :cond_d

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_d
    invoke-virtual {v9, v10}, Lb3/l0;->f(I)F

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    :goto_7
    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-static {v8, v10, v4}, Li9/a;->m(FFF)F

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    :goto_8
    cmpg-float v9, v4, v13

    .line 240
    .line 241
    if-nez v9, :cond_e

    .line 242
    .line 243
    goto :goto_b

    .line 244
    :cond_e
    const-wide/16 v9, 0x0

    .line 245
    .line 246
    invoke-static {v1, v2, v9, v10}, Ln3/l;->a(JJ)Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    const/4 v10, 0x2

    .line 251
    if-nez v9, :cond_f

    .line 252
    .line 253
    sub-float/2addr v8, v4

    .line 254
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    shr-long/2addr v1, v0

    .line 259
    long-to-int v2, v1

    .line 260
    div-int/2addr v2, v10

    .line 261
    int-to-float v1, v2

    .line 262
    cmpl-float v1, v8, v1

    .line 263
    .line 264
    if-lez v1, :cond_f

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_f
    invoke-virtual {v6}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Lb3/l0;

    .line 272
    .line 273
    if-nez v1, :cond_10

    .line 274
    .line 275
    :goto_9
    const/high16 v1, -0x40800000    # -1.0f

    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_10
    iget-object v1, v1, Lb3/l0;->b:Lb3/o;

    .line 279
    .line 280
    invoke-virtual {v1, v3}, Lb3/o;->d(I)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    iget v3, v1, Lb3/o;->f:I

    .line 285
    .line 286
    if-lt v2, v3, :cond_11

    .line 287
    .line 288
    goto :goto_9

    .line 289
    :cond_11
    invoke-virtual {v1, v2}, Lb3/o;->f(I)F

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {v1, v2}, Lb3/o;->b(I)F

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    sub-float/2addr v1, v3

    .line 298
    int-to-float v2, v10

    .line 299
    div-float/2addr v1, v2

    .line 300
    add-float/2addr v1, v3

    .line 301
    :goto_a
    cmpg-float v2, v1, v13

    .line 302
    .line 303
    if-nez v2, :cond_12

    .line 304
    .line 305
    :goto_b
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    return-wide v0

    .line 311
    :cond_12
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    int-to-long v2, v2

    .line 316
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    int-to-long v8, v1

    .line 321
    shl-long v0, v2, v0

    .line 322
    .line 323
    and-long v2, v8, v14

    .line 324
    .line 325
    or-long/2addr v0, v2

    .line 326
    invoke-interface {v5, v7, v0, v1}, Lo2/w;->p(Lo2/w;J)J

    .line 327
    .line 328
    .line 329
    move-result-wide v0

    .line 330
    return-wide v0
.end method

.method public static final s(JLb3/l0;)I
    .locals 3

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr v0, p0

    .line 7
    long-to-int v1, v0

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    cmpg-float v0, v0, v2

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p2, Lb3/l0;->b:Lb3/o;

    .line 24
    .line 25
    iget v2, v1, Lb3/o;->e:F

    .line 26
    .line 27
    cmpl-float v0, v0, v2

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    iget-object p0, p2, Lb3/l0;->a:Lb3/k0;

    .line 32
    .line 33
    iget-object p0, p0, Lb3/k0;->a:Lb3/g;

    .line 34
    .line 35
    iget-object p0, p0, Lb3/g;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    invoke-virtual {v1, p0, p1}, Lb3/o;->g(J)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public static final t(Lb3/l0;IZZ)J
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/l0;->b:Lb3/o;

    .line 2
    .line 3
    iget-wide v1, p0, Lb3/l0;->c:J

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lb3/o;->d(I)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget v4, v0, Lb3/o;->f:I

    .line 10
    .line 11
    if-lt v3, v4, :cond_0

    .line 12
    .line 13
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    return-wide p0

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    :cond_1
    if-nez p2, :cond_3

    .line 25
    .line 26
    if-eqz p3, :cond_3

    .line 27
    .line 28
    :cond_2
    move p2, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    add-int/lit8 p2, p1, -0x1

    .line 31
    .line 32
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :goto_0
    invoke-virtual {p0, p2}, Lb3/l0;->a(I)Lm3/j;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1}, Lb3/l0;->h(I)Lm3/j;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-ne p2, p0, :cond_4

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const/4 p0, 0x0

    .line 49
    :goto_1
    iget-object p2, v0, Lb3/o;->h:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lb3/o;->l(I)V

    .line 52
    .line 53
    .line 54
    iget-object p3, v0, Lb3/o;->a:Lb3/q;

    .line 55
    .line 56
    iget-object p3, p3, Lb3/q;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p3, Lb3/g;

    .line 59
    .line 60
    iget-object p3, p3, Lb3/g;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-ne p1, p3, :cond_5

    .line 67
    .line 68
    invoke-static {p2}, Lp9/x1;->u(Ljava/util/List;)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-static {p1, p2}, Lb3/d0;->d(ILjava/util/List;)I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    :goto_2
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lb3/r;

    .line 82
    .line 83
    iget-object p3, p2, Lb3/r;->a:Lb3/a;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lb3/r;->d(I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget-object p2, p3, Lb3/a;->d:Lc3/n;

    .line 90
    .line 91
    if-eqz p0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p2, p1, v4}, Lc3/n;->h(IZ)F

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    goto :goto_3

    .line 98
    :cond_6
    invoke-virtual {p2, p1, v4}, Lc3/n;->i(IZ)F

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    :goto_3
    const/16 p1, 0x20

    .line 103
    .line 104
    shr-long p2, v1, p1

    .line 105
    .line 106
    long-to-int p3, p2

    .line 107
    int-to-float p2, p3

    .line 108
    const/4 p3, 0x0

    .line 109
    invoke-static {p0, p3, p2}, Li9/a;->m(FFF)F

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-virtual {v0, v3}, Lb3/o;->b(I)F

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    const-wide v3, 0xffffffffL

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    and-long/2addr v1, v3

    .line 123
    long-to-int v0, v1

    .line 124
    int-to-float v0, v0

    .line 125
    invoke-static {p2, p3, v0}, Li9/a;->m(FFF)F

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    int-to-long v0, p0

    .line 134
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    int-to-long p2, p0

    .line 139
    shl-long p0, v0, p1

    .line 140
    .line 141
    and-long/2addr p2, v3

    .line 142
    or-long/2addr p0, p2

    .line 143
    return-wide p0
.end method

.method public static final u(Lb3/l0;I)Lm3/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/l0;->a:Lb3/k0;

    .line 2
    .line 3
    iget-object v1, p0, Lb3/l0;->b:Lb3/o;

    .line 4
    .line 5
    iget-object v2, v0, Lb3/k0;->a:Lb3/g;

    .line 6
    .line 7
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1, p1}, Lb3/o;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    add-int/lit8 v3, p1, -0x1

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lb3/o;->d(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    :cond_1
    iget-object v0, v0, Lb3/k0;->a:Lb3/g;

    .line 31
    .line 32
    iget-object v0, v0, Lb3/g;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eq p1, v0, :cond_3

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x1

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lb3/o;->d(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eq v2, v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0, p1}, Lb3/l0;->a(I)Lm3/j;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lb3/l0;->h(I)Lm3/j;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static final v(Lk2/o;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lk2/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lk2/w;

    .line 16
    .line 17
    iget v3, v3, Lk2/w;->i:I

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v1

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static final w(Lw0/r1;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll0/s0;->c()Lo2/w;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lw0/y0;->y(Lo2/w;)Lx1/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1}, Lw0/r1;->k(Z)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    invoke-static {v0, p0, p1}, Lw0/y0;->p(Lx1/c;J)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static final x(Lw0/l;Lw0/l;)Lw0/l;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Lw0/l;->a:Lw0/l;

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    sget-object v1, Lw0/l;->c:Lw0/l;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq p1, v3, :cond_1

    .line 14
    .line 15
    if-ne p1, v2, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    new-instance p0, Lac/p;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    if-eq p0, v3, :cond_3

    .line 31
    .line 32
    if-ne p0, v2, :cond_2

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    new-instance p0, Lac/p;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_3
    sget-object p0, Lw0/l;->b:Lw0/l;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    return-object v0
.end method

.method public static final y(Lo2/w;)Lx1/c;
    .locals 11

    .line 1
    invoke-static {p0}, Lo2/d1;->e(Lo2/w;)Lx1/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lx1/c;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {p0, v1, v2}, Lo2/w;->v(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget v3, v0, Lx1/c;->c:F

    .line 14
    .line 15
    iget v0, v0, Lx1/c;->d:F

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v3, v3

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v5, v0

    .line 27
    const/16 v0, 0x20

    .line 28
    .line 29
    shl-long/2addr v3, v0

    .line 30
    const-wide v7, 0xffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr v5, v7

    .line 36
    or-long/2addr v3, v5

    .line 37
    invoke-interface {p0, v3, v4}, Lo2/w;->v(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    new-instance p0, Lx1/c;

    .line 42
    .line 43
    shr-long v5, v1, v0

    .line 44
    .line 45
    long-to-int v6, v5

    .line 46
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    and-long/2addr v1, v7

    .line 51
    long-to-int v2, v1

    .line 52
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    shr-long v9, v3, v0

    .line 57
    .line 58
    long-to-int v0, v9

    .line 59
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    and-long/2addr v3, v7

    .line 64
    long-to-int v2, v3

    .line 65
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {p0, v5, v1, v0, v2}, Lx1/c;-><init>(FFFF)V

    .line 70
    .line 71
    .line 72
    return-object p0
.end method
