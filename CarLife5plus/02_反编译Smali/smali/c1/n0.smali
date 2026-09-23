.class public abstract Lc1/n0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lc1/x;->g:Lc1/x;

    .line 2
    .line 3
    new-instance v1, Lf1/v0;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/v0;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final a(Lc1/w;Lc1/k1;Lc1/y2;Ln1/c;Lf1/s;I)V
    .locals 10

    .line 1
    const v0, -0x7ec9fb7e

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
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x4

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p4, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p5

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p5

    .line 25
    :goto_1
    and-int/lit8 v3, p5, 0x30

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    or-int/lit8 v0, v0, 0x10

    .line 30
    .line 31
    :cond_2
    and-int/lit16 v3, p5, 0x180

    .line 32
    .line 33
    if-nez v3, :cond_4

    .line 34
    .line 35
    invoke-virtual {p4, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    const/16 v3, 0x100

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/16 v3, 0x80

    .line 45
    .line 46
    :goto_2
    or-int/2addr v0, v3

    .line 47
    :cond_4
    and-int/lit16 v3, p5, 0xc00

    .line 48
    .line 49
    if-nez v3, :cond_6

    .line 50
    .line 51
    invoke-virtual {p4, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    const/16 v3, 0x800

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    const/16 v3, 0x400

    .line 61
    .line 62
    :goto_3
    or-int/2addr v0, v3

    .line 63
    :cond_6
    and-int/lit16 v0, v0, 0x493

    .line 64
    .line 65
    const/16 v3, 0x492

    .line 66
    .line 67
    if-ne v0, v3, :cond_8

    .line 68
    .line 69
    invoke-virtual {p4}, Lf1/s;->z()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_7
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 77
    .line 78
    .line 79
    :goto_4
    move-object v4, p1

    .line 80
    goto/16 :goto_8

    .line 81
    .line 82
    :cond_8
    :goto_5
    invoke-virtual {p4}, Lf1/s;->S()V

    .line 83
    .line 84
    .line 85
    and-int/lit8 v0, p5, 0x1

    .line 86
    .line 87
    if-eqz v0, :cond_a

    .line 88
    .line 89
    invoke-virtual {p4}, Lf1/s;->x()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_9
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 97
    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_a
    :goto_6
    sget-object p1, Lc1/l1;->a:Lf1/w2;

    .line 101
    .line 102
    invoke-virtual {p4, p1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lc1/k1;

    .line 107
    .line 108
    :goto_7
    invoke-virtual {p4}, Lf1/s;->q()V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    const/4 v3, 0x7

    .line 113
    const/4 v4, 0x0

    .line 114
    invoke-static {v0, p4, v4, v3}, Lc1/h1;->a(FLf1/s;II)Lx/n0;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-wide v5, p0, Lc1/w;->a:J

    .line 119
    .line 120
    invoke-virtual {p4, v5, v6}, Lf1/s;->e(J)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    if-nez v3, :cond_b

    .line 129
    .line 130
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 131
    .line 132
    if-ne v7, v3, :cond_c

    .line 133
    .line 134
    :cond_b
    new-instance v7, Lw0/w1;

    .line 135
    .line 136
    const v3, 0x3ecccccd    # 0.4f

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v5, v6}, Ly1/q;->b(FJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    invoke-direct {v7, v5, v6, v8, v9}, Lw0/w1;-><init>(JJ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p4, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_c
    check-cast v7, Lw0/w1;

    .line 150
    .line 151
    sget-object v3, Lc1/y;->a:Lf1/w2;

    .line 152
    .line 153
    invoke-virtual {v3, p0}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    sget-object v5, Landroidx/compose/foundation/c;->a:Lf1/c0;

    .line 158
    .line 159
    invoke-virtual {v5, v0}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sget-object v5, Lb1/o;->a:Lf1/w2;

    .line 164
    .line 165
    sget-object v6, Lc1/z;->a:Lc1/z;

    .line 166
    .line 167
    invoke-virtual {v5, v6}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    sget-object v6, Lc1/l1;->a:Lf1/w2;

    .line 172
    .line 173
    invoke-virtual {v6, p1}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    sget-object v8, Lw0/x1;->a:Lf1/c0;

    .line 178
    .line 179
    invoke-virtual {v8, v7}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    sget-object v8, Lc1/z2;->a:Lf1/w2;

    .line 184
    .line 185
    invoke-virtual {v8, p2}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    const/4 v9, 0x6

    .line 190
    new-array v9, v9, [Lf1/u1;

    .line 191
    .line 192
    aput-object v3, v9, v4

    .line 193
    .line 194
    const/4 v3, 0x1

    .line 195
    aput-object v0, v9, v3

    .line 196
    .line 197
    aput-object v5, v9, v1

    .line 198
    .line 199
    const/4 v0, 0x3

    .line 200
    aput-object v6, v9, v0

    .line 201
    .line 202
    aput-object v7, v9, v2

    .line 203
    .line 204
    const/4 v0, 0x5

    .line 205
    aput-object v8, v9, v0

    .line 206
    .line 207
    new-instance v0, Lc1/h;

    .line 208
    .line 209
    invoke-direct {v0, v3, p2, p3}, Lc1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    const v1, -0x3f9276be

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v0, p4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const/16 v1, 0x38

    .line 220
    .line 221
    invoke-static {v9, v0, p4, v1}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_4

    .line 225
    .line 226
    :goto_8
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_d

    .line 231
    .line 232
    new-instance v2, Lc1/m0;

    .line 233
    .line 234
    move-object v3, p0

    .line 235
    move-object v5, p2

    .line 236
    move-object v6, p3

    .line 237
    move v7, p5

    .line 238
    invoke-direct/range {v2 .. v7}, Lc1/m0;-><init>(Lc1/w;Lc1/k1;Lc1/y2;Ln1/c;I)V

    .line 239
    .line 240
    .line 241
    iput-object v2, p1, Lf1/w1;->d:Lf9/n;

    .line 242
    .line 243
    :cond_d
    return-void
.end method
