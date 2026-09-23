.class public final Lw0/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Lw0/q;


# direct methods
.method public constructor <init>(JZLr1/p;Lw0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lw0/e;->a:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lw0/e;->b:Z

    .line 7
    .line 8
    iput-object p4, p0, Lw0/e;->c:Lr1/p;

    .line 9
    .line 10
    iput-object p5, p0, Lw0/e;->d:Lw0/q;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    and-int/2addr v2, v5

    .line 26
    invoke-virtual {v1, v2, v3}, Lf1/s;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_a

    .line 31
    .line 32
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 38
    .line 39
    iget-object v7, v0, Lw0/e;->d:Lw0/q;

    .line 40
    .line 41
    iget-boolean v8, v0, Lw0/e;->b:Z

    .line 42
    .line 43
    iget-wide v9, v0, Lw0/e;->a:J

    .line 44
    .line 45
    cmp-long v11, v9, v2

    .line 46
    .line 47
    if-eqz v11, :cond_7

    .line 48
    .line 49
    const v2, 0x34c4c6

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 53
    .line 54
    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    sget-object v2, Ld0/c;->b:Ld0/b;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    sget-object v2, Ld0/c;->a:Ld0/b;

    .line 61
    .line 62
    :goto_1
    invoke-static {v9, v10}, Ln3/h;->b(J)F

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    invoke-static {v9, v10}, Ln3/h;->a(J)F

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    const/4 v15, 0x0

    .line 71
    const/16 v16, 0xc

    .line 72
    .line 73
    iget-object v11, v0, Lw0/e;->c:Lr1/p;

    .line 74
    .line 75
    const/4 v14, 0x0

    .line 76
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/c;->g(Lr1/p;FFFFI)Lr1/p;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    sget-object v9, Lr1/c;->j:Lr1/g;

    .line 81
    .line 82
    invoke-static {v2, v9, v1, v6}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-wide v9, v1, Lf1/s;->T:J

    .line 87
    .line 88
    const/16 v11, 0x20

    .line 89
    .line 90
    ushr-long v11, v9, v11

    .line 91
    .line 92
    xor-long/2addr v9, v11

    .line 93
    long-to-int v10, v9

    .line 94
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-static {v1, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    sget-object v11, Lq2/j;->d0:Lq2/i;

    .line 103
    .line 104
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 108
    .line 109
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 110
    .line 111
    .line 112
    iget-boolean v12, v1, Lf1/s;->S:Z

    .line 113
    .line 114
    if-eqz v12, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1, v11}, Lf1/s;->k(Lf9/a;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 121
    .line 122
    .line 123
    :goto_2
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 124
    .line 125
    invoke-static {v1, v11, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 129
    .line 130
    invoke-static {v1, v2, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 134
    .line 135
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 136
    .line 137
    if-nez v9, :cond_3

    .line 138
    .line 139
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    invoke-static {v9, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-nez v9, :cond_4

    .line 152
    .line 153
    :cond_3
    invoke-static {v10, v1, v10, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 157
    .line 158
    invoke-static {v1, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-nez v2, :cond_5

    .line 170
    .line 171
    if-ne v3, v4, :cond_6

    .line 172
    .line 173
    :cond_5
    new-instance v3, Lw0/d;

    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-direct {v3, v7, v2}, Lw0/d;-><init>(Lw0/q;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    check-cast v3, Lf9/a;

    .line 183
    .line 184
    const/4 v2, 0x6

    .line 185
    sget-object v4, Lr1/m;->a:Lr1/m;

    .line 186
    .line 187
    invoke-static {v4, v3, v8, v1, v2}, Lw0/y0;->e(Lr1/p;Lf9/a;ZLf1/s;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v5}, Lf1/s;->p(Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v6}, Lf1/s;->p(Z)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    const v2, 0x42f938

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    if-nez v2, :cond_8

    .line 212
    .line 213
    if-ne v3, v4, :cond_9

    .line 214
    .line 215
    :cond_8
    new-instance v3, Lw0/d;

    .line 216
    .line 217
    const/4 v2, 0x1

    .line 218
    invoke-direct {v3, v7, v2}, Lw0/d;-><init>(Lw0/q;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_9
    check-cast v3, Lf9/a;

    .line 225
    .line 226
    iget-object v2, v0, Lw0/e;->c:Lr1/p;

    .line 227
    .line 228
    invoke-static {v2, v3, v8, v1, v6}, Lw0/y0;->e(Lr1/p;Lf9/a;ZLf1/s;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v6}, Lf1/s;->p(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 236
    .line 237
    .line 238
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 239
    .line 240
    return-object v1
.end method
