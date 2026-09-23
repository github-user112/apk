.class public final Ll0/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ll0/s0;

.field public final synthetic b:Lb3/o0;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ll0/o1;

.field public final synthetic f:Lg3/w;

.field public final synthetic g:Lb3/i0;

.field public final synthetic h:Lr1/p;

.field public final synthetic i:Lr1/p;

.field public final synthetic j:Lr1/p;

.field public final synthetic k:Lr1/p;

.field public final synthetic l:Li0/b;

.field public final synthetic m:Lw0/r1;

.field public final synthetic n:Z

.field public final synthetic o:Lf9/k;

.field public final synthetic p:Lg3/q;

.field public final synthetic q:Ln3/c;


# direct methods
.method public constructor <init>(Ll0/s0;Lb3/o0;IILl0/o1;Lg3/w;Lb3/i0;Lr1/p;Lr1/p;Lr1/p;Lr1/p;Li0/b;Lw0/r1;ZLf9/k;Lg3/q;Ln3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/z;->a:Ll0/s0;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/z;->b:Lb3/o0;

    .line 7
    .line 8
    iput p3, p0, Ll0/z;->c:I

    .line 9
    .line 10
    iput p4, p0, Ll0/z;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Ll0/z;->e:Ll0/o1;

    .line 13
    .line 14
    iput-object p6, p0, Ll0/z;->f:Lg3/w;

    .line 15
    .line 16
    iput-object p7, p0, Ll0/z;->g:Lb3/i0;

    .line 17
    .line 18
    iput-object p8, p0, Ll0/z;->h:Lr1/p;

    .line 19
    .line 20
    iput-object p9, p0, Ll0/z;->i:Lr1/p;

    .line 21
    .line 22
    iput-object p10, p0, Ll0/z;->j:Lr1/p;

    .line 23
    .line 24
    iput-object p11, p0, Ll0/z;->k:Lr1/p;

    .line 25
    .line 26
    iput-object p12, p0, Ll0/z;->l:Li0/b;

    .line 27
    .line 28
    iput-object p13, p0, Ll0/z;->m:Lw0/r1;

    .line 29
    .line 30
    iput-boolean p14, p0, Ll0/z;->n:Z

    .line 31
    .line 32
    iput-object p15, p0, Ll0/z;->o:Lf9/k;

    .line 33
    .line 34
    move-object/from16 p1, p16

    .line 35
    .line 36
    iput-object p1, p0, Ll0/z;->p:Lg3/q;

    .line 37
    .line 38
    move-object/from16 p1, p17

    .line 39
    .line 40
    iput-object p1, p0, Ll0/z;->q:Ln3/c;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x2

    .line 19
    if-eq v3, v5, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    and-int/2addr v2, v4

    .line 25
    invoke-virtual {v1, v2, v3}, Lf1/s;->N(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_7

    .line 30
    .line 31
    iget-object v8, v0, Ll0/z;->a:Ll0/s0;

    .line 32
    .line 33
    iget-object v2, v8, Ll0/s0;->g:Lf1/k1;

    .line 34
    .line 35
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ln3/f;

    .line 40
    .line 41
    iget v2, v2, Ln3/f;->a:F

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    sget-object v6, Lr1/m;->a:Lr1/m;

    .line 45
    .line 46
    invoke-static {v6, v2, v3, v5}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Ll0/j0;

    .line 51
    .line 52
    iget v6, v0, Ll0/z;->c:I

    .line 53
    .line 54
    iget v7, v0, Ll0/z;->d:I

    .line 55
    .line 56
    iget-object v9, v0, Ll0/z;->b:Lb3/o0;

    .line 57
    .line 58
    invoke-direct {v3, v6, v7, v9}, Ll0/j0;-><init>(IILb3/o0;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v11, v0, Ll0/z;->f:Lg3/w;

    .line 66
    .line 67
    iget-wide v6, v11, Lg3/w;->b:J

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 80
    .line 81
    if-ne v10, v3, :cond_2

    .line 82
    .line 83
    :cond_1
    new-instance v10, La5/e;

    .line 84
    .line 85
    const/16 v3, 0xc

    .line 86
    .line 87
    invoke-direct {v10, v3, v8}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    check-cast v10, Lf9/a;

    .line 94
    .line 95
    iget-object v3, v0, Ll0/z;->e:Ll0/o1;

    .line 96
    .line 97
    iget-object v12, v3, Ll0/o1;->f:Lf1/k1;

    .line 98
    .line 99
    invoke-virtual {v12}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Lz/w0;

    .line 104
    .line 105
    sget v13, Lb3/n0;->c:I

    .line 106
    .line 107
    const/16 v13, 0x20

    .line 108
    .line 109
    shr-long v14, v6, v13

    .line 110
    .line 111
    long-to-int v15, v14

    .line 112
    const/16 p1, 0x20

    .line 113
    .line 114
    iget-wide v13, v3, Ll0/o1;->e:J

    .line 115
    .line 116
    shr-long v4, v13, p1

    .line 117
    .line 118
    long-to-int v5, v4

    .line 119
    if-eq v15, v5, :cond_3

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const-wide v16, 0xffffffffL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    and-long v4, v6, v16

    .line 128
    .line 129
    long-to-int v15, v4

    .line 130
    and-long v4, v13, v16

    .line 131
    .line 132
    long-to-int v5, v4

    .line 133
    if-eq v15, v5, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-static {v6, v7}, Lb3/n0;->f(J)I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    :goto_1
    iput-wide v6, v3, Ll0/o1;->e:J

    .line 141
    .line 142
    iget-object v4, v11, Lg3/w;->a:Lb3/g;

    .line 143
    .line 144
    iget-object v5, v0, Ll0/z;->g:Lb3/i0;

    .line 145
    .line 146
    invoke-static {v5, v4}, Ll0/p0;->n(Lb3/i0;Lb3/g;)Lg3/d0;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_6

    .line 155
    .line 156
    const/4 v6, 0x1

    .line 157
    if-ne v5, v6, :cond_5

    .line 158
    .line 159
    new-instance v5, Ll0/k0;

    .line 160
    .line 161
    invoke-direct {v5, v3, v15, v4, v10}, Ll0/k0;-><init>(Ll0/o1;ILg3/d0;Lf9/a;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    new-instance v1, Lac/p;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 168
    .line 169
    .line 170
    throw v1

    .line 171
    :cond_6
    new-instance v5, Ll0/s1;

    .line 172
    .line 173
    invoke-direct {v5, v3, v15, v4, v10}, Ll0/s1;-><init>(Ll0/o1;ILg3/d0;Lf9/a;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    invoke-static {v2}, Lp9/x1;->g(Lr1/p;)Lr1/p;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v2, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-object v3, v0, Ll0/z;->h:Lr1/p;

    .line 185
    .line 186
    invoke-interface {v2, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget-object v3, v0, Ll0/z;->i:Lr1/p;

    .line 191
    .line 192
    invoke-interface {v2, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    new-instance v3, Lc8/n0;

    .line 197
    .line 198
    const/4 v4, 0x2

    .line 199
    invoke-direct {v3, v4, v9}, Lc8/n0;-><init>(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v3}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iget-object v3, v0, Ll0/z;->j:Lr1/p;

    .line 207
    .line 208
    invoke-interface {v2, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget-object v3, v0, Ll0/z;->k:Lr1/p;

    .line 213
    .line 214
    invoke-interface {v2, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iget-object v3, v0, Ll0/z;->l:Li0/b;

    .line 219
    .line 220
    invoke-static {v2, v3}, Landroidx/compose/foundation/relocation/a;->a(Lr1/p;Li0/b;)Lr1/p;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    new-instance v6, Ll0/y;

    .line 225
    .line 226
    iget-object v13, v0, Ll0/z;->q:Ln3/c;

    .line 227
    .line 228
    iget v14, v0, Ll0/z;->d:I

    .line 229
    .line 230
    iget-object v7, v0, Ll0/z;->m:Lw0/r1;

    .line 231
    .line 232
    iget-boolean v9, v0, Ll0/z;->n:Z

    .line 233
    .line 234
    iget-object v10, v0, Ll0/z;->o:Lf9/k;

    .line 235
    .line 236
    iget-object v12, v0, Ll0/z;->p:Lg3/q;

    .line 237
    .line 238
    invoke-direct/range {v6 .. v14}, Ll0/y;-><init>(Lw0/r1;Ll0/s0;ZLf9/k;Lg3/w;Lg3/q;Ln3/c;I)V

    .line 239
    .line 240
    .line 241
    const v3, 0x54340ce8

    .line 242
    .line 243
    .line 244
    invoke-static {v3, v6, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const/16 v4, 0x30

    .line 249
    .line 250
    invoke-static {v2, v3, v1, v4}, Lw0/y0;->f(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_7
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 255
    .line 256
    .line 257
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 258
    .line 259
    return-object v1
.end method
