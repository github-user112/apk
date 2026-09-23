.class public final Lu0/e;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/y1;


# instance fields
.field public q:Lg3/d0;

.field public r:Lg3/w;

.field public s:Ll0/s0;

.field public t:Z

.field public u:Lg3/q;

.field public v:Lw0/r1;

.field public w:Lg3/k;

.field public x:Lw1/o;


# direct methods
.method public static D0(Ll0/s0;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Ll0/s0;->e:Lg3/c0;

    .line 5
    .line 6
    iget-object v0, p0, Ll0/s0;->v:Ll0/s;

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    new-instance v1, Lg3/d;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lg3/a;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, v3, p1}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    new-array p1, p1, [Lg3/g;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v1, p1, v4

    .line 26
    .line 27
    aput-object v2, p1, v3

    .line 28
    .line 29
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->J0(Ljava/util/List;)Lg3/w;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p2, p1, p0}, Lg3/c0;->a(Lg3/w;Lg3/w;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ll0/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p0, Lg3/w;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p2, p2}, Lb3/d0;->b(II)J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    const/4 p2, 0x4

    .line 58
    invoke-direct {p0, p1, v1, v2, p2}, Lg3/w;-><init>(Ljava/lang/String;JI)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ll0/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final Z(Ly2/j;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lu0/e;->r:Lg3/w;

    .line 2
    .line 3
    iget-object v0, v0, Lg3/w;->a:Lb3/g;

    .line 4
    .line 5
    sget-object v1, Ly2/t;->a:[Lm9/u;

    .line 6
    .line 7
    sget-object v1, Ly2/r;->D:Ly2/u;

    .line 8
    .line 9
    sget-object v2, Ly2/t;->a:[Lm9/u;

    .line 10
    .line 11
    const/16 v3, 0x11

    .line 12
    .line 13
    aget-object v3, v2, v3

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lu0/e;->q:Lg3/d0;

    .line 19
    .line 20
    iget-object v0, v0, Lg3/d0;->a:Lb3/g;

    .line 21
    .line 22
    sget-object v1, Ly2/r;->E:Ly2/u;

    .line 23
    .line 24
    const/16 v3, 0x12

    .line 25
    .line 26
    aget-object v3, v2, v3

    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lu0/e;->r:Lg3/w;

    .line 32
    .line 33
    iget-wide v0, v0, Lg3/w;->b:J

    .line 34
    .line 35
    sget-object v3, Ly2/r;->F:Ly2/u;

    .line 36
    .line 37
    const/16 v4, 0x13

    .line 38
    .line 39
    aget-object v4, v2, v4

    .line 40
    .line 41
    new-instance v4, Lb3/n0;

    .line 42
    .line 43
    invoke-direct {v4, v0, v1}, Lb3/n0;-><init>(J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1, v4}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Ly2/r;->r:Ly2/u;

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    aget-object v1, v2, v1

    .line 54
    .line 55
    sget-object v1, Ls1/l;->a:Ls1/d;

    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lu0/d;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-direct {v0, p0, v1}, Lu0/d;-><init>(Lu0/e;I)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Ly2/i;->g:Ly2/u;

    .line 67
    .line 68
    new-instance v3, Ly2/a;

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-direct {v3, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v0, p0, Lu0/e;->t:Z

    .line 78
    .line 79
    if-nez v0, :cond_0

    .line 80
    .line 81
    sget-object v0, Ly2/r;->i:Ly2/u;

    .line 82
    .line 83
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-boolean v0, p0, Lu0/e;->t:Z

    .line 89
    .line 90
    sget-object v1, Ly2/r;->M:Ly2/u;

    .line 91
    .line 92
    const/16 v3, 0x19

    .line 93
    .line 94
    aget-object v2, v2, v3

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, p1, v2}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lu0/d;

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-direct {v1, p0, v2}, Lu0/d;-><init>(Lu0/e;I)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v1}, Ly2/t;->a(Ly2/j;Lf9/k;)V

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x2

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    new-instance v0, Lu0/d;

    .line 116
    .line 117
    invoke-direct {v0, p0, v1}, Lu0/d;-><init>(Lu0/e;I)V

    .line 118
    .line 119
    .line 120
    sget-object v3, Ly2/i;->j:Ly2/u;

    .line 121
    .line 122
    new-instance v5, Ly2/a;

    .line 123
    .line 124
    invoke-direct {v5, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v3, v5}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lu0/d;

    .line 131
    .line 132
    invoke-direct {v0, p0, p1}, Lu0/d;-><init>(Lu0/e;Ly2/j;)V

    .line 133
    .line 134
    .line 135
    sget-object v3, Ly2/i;->n:Ly2/u;

    .line 136
    .line 137
    new-instance v5, Ly2/a;

    .line 138
    .line 139
    invoke-direct {v5, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v3, v5}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    new-instance v0, Lac/h;

    .line 146
    .line 147
    const/4 v3, 0x4

    .line 148
    invoke-direct {v0, v3, p0}, Lac/h;-><init>(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    sget-object v3, Ly2/i;->i:Ly2/u;

    .line 152
    .line 153
    new-instance v5, Ly2/a;

    .line 154
    .line 155
    invoke-direct {v5, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v3, v5}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lu0/e;->w:Lg3/k;

    .line 162
    .line 163
    iget v0, v0, Lg3/k;->e:I

    .line 164
    .line 165
    new-instance v3, Lu0/c;

    .line 166
    .line 167
    const/4 v5, 0x6

    .line 168
    invoke-direct {v3, p0, v5}, Lu0/c;-><init>(Lu0/e;I)V

    .line 169
    .line 170
    .line 171
    sget-object v5, Ly2/r;->G:Ly2/u;

    .line 172
    .line 173
    new-instance v6, Lg3/j;

    .line 174
    .line 175
    invoke-direct {v6, v0}, Lg3/j;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v5, v6}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    sget-object v0, Ly2/i;->o:Ly2/u;

    .line 182
    .line 183
    new-instance v5, Ly2/a;

    .line 184
    .line 185
    invoke-direct {v5, v4, v3}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0, v5}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lu0/c;

    .line 192
    .line 193
    const/4 v3, 0x7

    .line 194
    invoke-direct {v0, p0, v3}, Lu0/c;-><init>(Lu0/e;I)V

    .line 195
    .line 196
    .line 197
    sget-object v3, Ly2/i;->b:Ly2/u;

    .line 198
    .line 199
    new-instance v5, Ly2/a;

    .line 200
    .line 201
    invoke-direct {v5, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v3, v5}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lu0/c;

    .line 208
    .line 209
    invoke-direct {v0, p0, v2}, Lu0/c;-><init>(Lu0/e;I)V

    .line 210
    .line 211
    .line 212
    sget-object v2, Ly2/i;->c:Ly2/u;

    .line 213
    .line 214
    new-instance v3, Ly2/a;

    .line 215
    .line 216
    invoke-direct {v3, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lu0/e;->r:Lg3/w;

    .line 223
    .line 224
    iget-wide v2, v0, Lg3/w;->b:J

    .line 225
    .line 226
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_2

    .line 231
    .line 232
    new-instance v0, Lu0/c;

    .line 233
    .line 234
    invoke-direct {v0, p0, v1}, Lu0/c;-><init>(Lu0/e;I)V

    .line 235
    .line 236
    .line 237
    sget-object v1, Ly2/i;->p:Ly2/u;

    .line 238
    .line 239
    new-instance v2, Ly2/a;

    .line 240
    .line 241
    invoke-direct {v2, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v1, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-boolean v0, p0, Lu0/e;->t:Z

    .line 248
    .line 249
    if-eqz v0, :cond_2

    .line 250
    .line 251
    new-instance v0, Lu0/c;

    .line 252
    .line 253
    const/4 v1, 0x3

    .line 254
    invoke-direct {v0, p0, v1}, Lu0/c;-><init>(Lu0/e;I)V

    .line 255
    .line 256
    .line 257
    sget-object v1, Ly2/i;->q:Ly2/u;

    .line 258
    .line 259
    new-instance v2, Ly2/a;

    .line 260
    .line 261
    invoke-direct {v2, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v1, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_2
    iget-boolean v0, p0, Lu0/e;->t:Z

    .line 268
    .line 269
    if-eqz v0, :cond_3

    .line 270
    .line 271
    new-instance v0, Lu0/c;

    .line 272
    .line 273
    const/4 v1, 0x5

    .line 274
    invoke-direct {v0, p0, v1}, Lu0/c;-><init>(Lu0/e;I)V

    .line 275
    .line 276
    .line 277
    sget-object v1, Ly2/i;->r:Ly2/u;

    .line 278
    .line 279
    new-instance v2, Ly2/a;

    .line 280
    .line 281
    invoke-direct {v2, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v1, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_3
    return-void
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
