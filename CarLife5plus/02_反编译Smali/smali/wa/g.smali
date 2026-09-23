.class public final Lwa/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lwa/i;


# static fields
.field public static final c:Lwa/g;

.field public static final d:Lwa/g;

.field public static final e:Lwa/g;


# instance fields
.field public final a:Lwa/k;

.field public final b:Lr8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lwa/d;->b:Lwa/d;

    .line 2
    .line 3
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwa/d;->d:Lwa/d;

    .line 7
    .line 8
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lwa/d;->e:Lwa/d;

    .line 12
    .line 13
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lwa/d;->f:Lwa/d;

    .line 17
    .line 18
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lwa/d;->g:Lwa/d;

    .line 22
    .line 23
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lwa/d;->h:Lwa/d;

    .line 27
    .line 28
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lwa/d;->i:Lwa/d;

    .line 32
    .line 33
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lwa/g;->c:Lwa/g;

    .line 38
    .line 39
    sget-object v0, Lwa/d;->j:Lwa/d;

    .line 40
    .line 41
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 42
    .line 43
    .line 44
    sget-object v0, Lwa/d;->k:Lwa/d;

    .line 45
    .line 46
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lwa/g;->d:Lwa/g;

    .line 51
    .line 52
    sget-object v0, Lwa/d;->l:Lwa/d;

    .line 53
    .line 54
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lwa/g;->e:Lwa/g;

    .line 59
    .line 60
    sget-object v0, Lwa/d;->c:Lwa/d;

    .line 61
    .line 62
    invoke-static {v0}, Lp9/l;->u(Lf9/k;)Lwa/g;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Lwa/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwa/g;->a:Lwa/k;

    .line 5
    .line 6
    new-instance p1, La8/g0;

    .line 7
    .line 8
    const/16 v0, 0x1a

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lwa/g;->b:Lr8/o;

    .line 18
    .line 19
    return-void
.end method

.method public static U(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static g0(Llb/w;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lp9/q;->E(Llb/w;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Llb/n0;

    .line 35
    .line 36
    invoke-virtual {v0}, Llb/n0;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public static final l(Lwa/g;Lv9/k0;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lwa/g;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lwa/g;->a:Lwa/k;

    .line 6
    .line 7
    const-string v2, "getTypeParameters(...)"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v0, :cond_8

    .line 11
    .line 12
    iget-object v0, v1, Lwa/k;->g:Lwa/j;

    .line 13
    .line 14
    sget-object v4, Lwa/k;->Y:[Lm9/u;

    .line 15
    .line 16
    const/4 v5, 0x5

    .line 17
    aget-object v5, v4, v5

    .line 18
    .line 19
    invoke-virtual {v0, v1, v5}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v0, :cond_7

    .line 31
    .line 32
    invoke-interface {p1}, Lv9/b;->f0()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v6, "getContextReceiverParameters(...)"

    .line 37
    .line 38
    invoke-static {v0, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, v0}, Lwa/g;->A(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v6, Lwa/h;->g:Lwa/h;

    .line 49
    .line 50
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p2, p1, v0}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Lv9/k0;->e0()Ly9/r;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    sget-object v6, Lw9/d;->b:Lw9/d;

    .line 68
    .line 69
    invoke-virtual {p0, p2, v0, v6}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-interface {p1}, Lv9/k0;->b0()Ly9/r;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    sget-object v6, Lw9/d;->j:Lw9/d;

    .line 79
    .line 80
    invoke-virtual {p0, p2, v0, v6}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, v1, Lwa/k;->H:Lwa/j;

    .line 84
    .line 85
    const/16 v6, 0x20

    .line 86
    .line 87
    aget-object v4, v4, v6

    .line 88
    .line 89
    invoke-virtual {v0, v1, v4}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lwa/p;

    .line 94
    .line 95
    sget-object v1, Lwa/p;->b:Lwa/p;

    .line 96
    .line 97
    if-ne v0, v1, :cond_4

    .line 98
    .line 99
    invoke-interface {p1}, Lv9/k0;->b()Ly9/j0;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    sget-object v1, Lw9/d;->e:Lw9/d;

    .line 106
    .line 107
    invoke-virtual {p0, p2, v0, v1}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-interface {p1}, Lv9/k0;->c()Ly9/k0;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    sget-object v1, Lw9/d;->f:Lw9/d;

    .line 117
    .line 118
    invoke-virtual {p0, p2, v0, v1}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ly9/k0;->S()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "getValueParameters(...)"

    .line 126
    .line 127
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ly9/r0;

    .line 135
    .line 136
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object v1, Lw9/d;->i:Lw9/d;

    .line 140
    .line 141
    invoke-virtual {p0, p2, v0, v1}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_0
    invoke-interface {p1}, Lv9/w;->d()Lea/o;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v1, "getVisibility(...)"

    .line 149
    .line 150
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0, p2}, Lwa/g;->e0(Lea/o;Ljava/lang/StringBuilder;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v1, Lwa/h;->n:Lwa/h;

    .line 161
    .line 162
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    invoke-interface {p1}, Lv9/t0;->v()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_1

    .line 176
    :cond_5
    const/4 v0, 0x0

    .line 177
    :goto_1
    const-string v1, "const"

    .line 178
    .line 179
    invoke-virtual {p0, p2, v0, v1}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1, p2}, Lwa/g;->I(Lv9/w;Ljava/lang/StringBuilder;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p2, p1}, Lwa/g;->K(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p2, p1}, Lwa/g;->Q(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget-object v1, Lwa/h;->o:Lwa/h;

    .line 196
    .line 197
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_6

    .line 202
    .line 203
    invoke-interface {p1}, Lv9/t0;->h0()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    const/4 v0, 0x1

    .line 210
    goto :goto_2

    .line 211
    :cond_6
    const/4 v0, 0x0

    .line 212
    :goto_2
    const-string v1, "lateinit"

    .line 213
    .line 214
    invoke-virtual {p0, p2, v0, v1}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p2, p1}, Lwa/g;->H(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 218
    .line 219
    .line 220
    :cond_7
    invoke-virtual {p0, p1, p2, v5}, Lwa/g;->b0(Lv9/t0;Ljava/lang/StringBuilder;Z)V

    .line 221
    .line 222
    .line 223
    invoke-interface {p1}, Lv9/b;->getTypeParameters()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p2, v0, v3}, Lwa/g;->a0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p2, p1}, Lwa/g;->S(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    invoke-virtual {p0, p1, p2, v3}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 237
    .line 238
    .line 239
    const-string v0, ": "

    .line 240
    .line 241
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-interface {p1}, Lv9/s0;->getType()Llb/w;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v1, "getType(...)"

    .line 249
    .line 250
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, p2, p1}, Lwa/g;->T(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1, p2}, Lwa/g;->F(Lv9/t0;Ljava/lang/StringBuilder;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {p1}, Lv9/b;->getTypeParameters()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, p2, p1}, Lwa/g;->f0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 274
    .line 275
    .line 276
    return-void
.end method

.method public static t(Lv9/w;)Lv9/x;
    .locals 6

    .line 1
    instance-of v0, p0, Lv9/e;

    .line 2
    .line 3
    sget-object v1, Lv9/x;->e:Lv9/x;

    .line 4
    .line 5
    sget-object v2, Lv9/f;->b:Lv9/f;

    .line 6
    .line 7
    sget-object v3, Lv9/x;->b:Lv9/x;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p0, Lv9/e;

    .line 12
    .line 13
    invoke-interface {p0}, Lv9/e;->f()Lv9/f;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-ne p0, v2, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    return-object v3

    .line 21
    :cond_1
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v4, v0, Lv9/e;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    check-cast v0, Lv9/e;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-nez v0, :cond_3

    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_3
    instance-of v4, p0, Lv9/c;

    .line 37
    .line 38
    if-nez v4, :cond_4

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_4
    check-cast p0, Lv9/c;

    .line 42
    .line 43
    invoke-interface {p0}, Lv9/c;->m()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "getOverriddenDescriptors(...)"

    .line 48
    .line 49
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    sget-object v5, Lv9/x;->d:Lv9/x;

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    invoke-interface {v0}, Lv9/e;->h()Lv9/x;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eq v4, v3, :cond_5

    .line 65
    .line 66
    return-object v5

    .line 67
    :cond_5
    invoke-interface {v0}, Lv9/e;->f()Lv9/f;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-ne v0, v2, :cond_7

    .line 72
    .line 73
    invoke-interface {p0}, Lv9/w;->d()Lea/o;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v2, Lv9/o;->a:Lea/o;

    .line 78
    .line 79
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_7

    .line 84
    .line 85
    invoke-interface {p0}, Lv9/w;->h()Lv9/x;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-ne p0, v1, :cond_6

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_6
    return-object v5

    .line 93
    :cond_7
    return-object v3
.end method

.method public static synthetic x(Lwa/g;Ljava/lang/StringBuilder;Lw9/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "context("

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ly9/v;

    .line 30
    .line 31
    sget-object v4, Lw9/d;->g:Lw9/d;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v3, v4}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ly9/v;->getType()Llb/w;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "getType(...)"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lwa/g;->E(Llb/w;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lp9/x1;->u(Ljava/util/List;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ne v1, v3, :cond_0

    .line 57
    .line 58
    const-string v1, ") "

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const-string v1, ", "

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :goto_1
    move v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public final B(Ljava/lang/StringBuilder;Llb/a0;)V
    .locals 6

    .line 1
    invoke-static {p0, p1, p2}, Lwa/g;->x(Lwa/g;Ljava/lang/StringBuilder;Lw9/a;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Llb/c;->j(Llb/w;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    instance-of v0, p2, Lnb/i;

    .line 12
    .line 13
    iget-object v2, p0, Lwa/g;->a:Lwa/k;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object v3, p2

    .line 18
    check-cast v3, Lnb/i;

    .line 19
    .line 20
    iget-object v3, v3, Lnb/i;->d:Lnb/k;

    .line 21
    .line 22
    iget-boolean v3, v3, Lnb/k;->b:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v3, v2, Lwa/k;->V:Lwa/j;

    .line 27
    .line 28
    sget-object v4, Lwa/k;->Y:[Lm9/u;

    .line 29
    .line 30
    const/16 v5, 0x2f

    .line 31
    .line 32
    aget-object v4, v4, v5

    .line 33
    .line 34
    invoke-virtual {v3, v2, v4}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    sget-object v2, Lnb/l;->a:Lnb/l;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    move-object v0, p2

    .line 51
    check-cast v0, Lnb/i;

    .line 52
    .line 53
    iget-object v0, v0, Lnb/i;->d:Lnb/k;

    .line 54
    .line 55
    iget-boolean v0, v0, Lnb/k;->b:Z

    .line 56
    .line 57
    :cond_0
    invoke-virtual {p2}, Llb/w;->D0()Llb/k0;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    .line 62
    .line 63
    invoke-static {v0, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v0, Lnb/j;

    .line 67
    .line 68
    iget-object v0, v0, Lnb/j;->b:[Ljava/lang/String;

    .line 69
    .line 70
    aget-object v0, v0, v1

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lwa/g;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, v2, Lwa/k;->X:Lwa/j;

    .line 83
    .line 84
    sget-object v1, Lwa/k;->Y:[Lm9/u;

    .line 85
    .line 86
    const/16 v3, 0x31

    .line 87
    .line 88
    aget-object v1, v1, v3

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    move-object v0, p2

    .line 103
    check-cast v0, Lnb/i;

    .line 104
    .line 105
    iget-object v0, v0, Lnb/i;->h:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p2}, Llb/w;->D0()Llb/k0;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {p2}, Llb/w;->B0()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lwa/g;->W(Ljava/util/List;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {p2}, Llb/w;->D0()Llb/k0;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p2}, Llb/w;->D0()Llb/k0;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v2}, Llb/k0;->k()Lv9/h;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    instance-of v3, v2, Lv9/i;

    .line 147
    .line 148
    if-eqz v3, :cond_4

    .line 149
    .line 150
    check-cast v2, Lv9/i;

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    const/4 v2, 0x0

    .line 154
    :goto_1
    invoke-static {p2, v2, v1}, Lv9/v;->a(Llb/a0;Lv9/i;I)La2/b;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-nez v1, :cond_5

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Lwa/g;->X(Llb/k0;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Llb/w;->B0()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lwa/g;->W(Ljava/util/List;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    invoke-virtual {p0, p1, v1}, Lwa/g;->R(Ljava/lang/StringBuilder;La2/b;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    invoke-virtual {p2}, Llb/w;->E0()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    const-string v0, "?"

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    :cond_6
    instance-of p2, p2, Llb/l;

    .line 194
    .line 195
    if-eqz p2, :cond_7

    .line 196
    .line 197
    const-string p2, " & Any"

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_7
    return-void
.end method

.method public final C(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "<font color=red><b>"

    .line 15
    .line 16
    const-string v1, "</b></font>"

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p1, Lac/p;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    return-object p1
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;Ls9/i;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "lowerRendered"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "upperRendered"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lp9/q;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "("

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {p2, v1}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string p2, ")!"

    .line 26
    .line 27
    invoke-static {v1, p1, p2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    const-string p2, "!"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lwa/g;->n()Lwa/c;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Ls9/o;->C:Lua/c;

    .line 44
    .line 45
    invoke-virtual {p3, v2}, Ls9/i;->j(Lua/c;)Lv9/e;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v0, v2, p0}, Lwa/c;->a(Lv9/h;Lwa/g;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "Collection"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lxb/i;->d0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v2, "Mutable"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "(Mutable)"

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {p1, v2, p2, v0, v3}, Lp9/q;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_2
    const-string v2, "MutableMap.MutableEntry"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "Map.Entry"

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const-string v4, "(Mutable)Map.(Mutable)Entry"

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1, v2, p2, v3, v0}, Lp9/q;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lwa/g;->n()Lwa/c;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v2, "Array"

    .line 108
    .line 109
    invoke-virtual {p3, v2}, Ls9/i;->k(Ljava/lang/String;)Lv9/e;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-interface {v0, p3, p0}, Lwa/c;->a(Lv9/h;Lwa/g;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-static {p3, v2}, Lxb/i;->d0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    const-string v0, "Array<"

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v2, "Array<out "

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v3, "Array<(out) "

    .line 142
    .line 143
    invoke-virtual {p0, v3}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {p3, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-static {p1, v0, p2, v2, p3}, Lp9/q;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    if-eqz p3, :cond_4

    .line 156
    .line 157
    return-object p3

    .line 158
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p1, ".."

    .line 167
    .line 168
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const/16 p1, 0x29

    .line 175
    .line 176
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    return-object p1
.end method

.method public final E(Llb/w;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lwa/g;->g0(Llb/w;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Llb/v0;->e(Llb/w;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    instance-of p1, p1, Llb/l;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "("

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x29

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_2
    return-object v0
.end method

.method public final F(Lv9/t0;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->u:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x13

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lv9/t0;->Q()Lza/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lwa/g;->z(Lza/g;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const-string v0, " = "

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 15
    .line 16
    iget-object v1, v0, Lwa/k;->W:Lwa/j;

    .line 17
    .line 18
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 19
    .line 20
    const/16 v3, 0x30

    .line 21
    .line 22
    aget-object v2, v2, v3

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "<b>"

    .line 38
    .line 39
    const-string v1, "</b>"

    .line 40
    .line 41
    invoke-static {v0, p1, v1}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    new-instance p1, Lac/p;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_0
    return-object p1
.end method

.method public final H(Ljava/lang/StringBuilder;Lv9/c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lwa/h;->i:Lwa/h;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lwa/g;->s()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    invoke-interface {p2}, Lv9/c;->f()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_5

    .line 26
    .line 27
    const-string v0, "/*"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Lv9/c;->f()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 v0, 0x1

    .line 37
    if-eq p2, v0, :cond_4

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    if-eq p2, v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    if-eq p2, v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    if-ne p2, v0, :cond_1

    .line 47
    .line 48
    const-string p2, "SYNTHESIZED"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    throw p1

    .line 53
    :cond_2
    const-string p2, "DELEGATION"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string p2, "FAKE_OVERRIDE"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    const-string p2, "DECLARATION"

    .line 60
    .line 61
    :goto_0
    invoke-static {p2}, Lp9/p1;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p2, "*/ "

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_1
    return-void
.end method

.method public final I(Lv9/w;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lv9/w;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "external"

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0, v1}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lwa/h;->l:Lwa/h;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lv9/w;->H()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    const-string v3, "expect"

    .line 34
    .line 35
    invoke-virtual {p0, p2, v0, v3}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v3, Lwa/h;->m:Lwa/h;

    .line 43
    .line 44
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p1}, Lv9/w;->t0()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_1
    const-string p1, "actual"

    .line 58
    .line 59
    invoke-virtual {p0, p2, v1, p1}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final J(Lv9/x;Ljava/lang/StringBuilder;Lv9/x;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->p:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0xe

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    sget-object v0, Lwa/h;->e:Lwa/h;

    .line 31
    .line 32
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lp9/p1;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p2, p3, p1}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final K(Ljava/lang/StringBuilder;Lv9/c;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lxa/d;->s(Lv9/k;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lv9/w;->h()Lv9/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lv9/x;->b:Lv9/x;

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 16
    .line 17
    iget-object v1, v0, Lwa/k;->B:Lwa/j;

    .line 18
    .line 19
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 20
    .line 21
    const/16 v3, 0x1a

    .line 22
    .line 23
    aget-object v2, v2, v3

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lwa/n;

    .line 30
    .line 31
    sget-object v1, Lwa/n;->a:Lwa/n;

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    invoke-interface {p2}, Lv9/w;->h()Lv9/x;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lv9/x;->d:Lv9/x;

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    invoke-interface {p2}, Lv9/c;->m()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    invoke-interface {p2}, Lv9/w;->h()Lv9/x;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "getModality(...)"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lwa/g;->t(Lv9/w;)Lv9/x;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p0, v0, p1, p2}, Lwa/g;->J(Lv9/x;Ljava/lang/StringBuilder;Lv9/x;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    const-string p2, " "

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final M(Lua/e;Z)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lp9/q;->I(Lua/e;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 10
    .line 11
    iget-object v1, v0, Lwa/k;->W:Lwa/j;

    .line 12
    .line 13
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 14
    .line 15
    const/16 v3, 0x30

    .line 16
    .line 17
    aget-object v2, v2, v3

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lwa/s;->b:Lwa/q;

    .line 36
    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    const-string p2, "<b>"

    .line 42
    .line 43
    const-string v0, "</b>"

    .line 44
    .line 45
    invoke-static {p2, p1, v0}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_0
    return-object p1
.end method

.method public final N(Lv9/k;Ljava/lang/StringBuilder;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getName(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final O(Ljava/lang/StringBuilder;Llb/w;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Llb/w;->G0()Llb/x0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Llb/a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Llb/a;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iget-object p2, v0, Llb/a;->c:Llb/a0;

    .line 16
    .line 17
    iget-object v0, v0, Llb/a;->b:Llb/a0;

    .line 18
    .line 19
    iget-object v1, p0, Lwa/g;->a:Lwa/k;

    .line 20
    .line 21
    iget-object v2, v1, Lwa/k;->R:Lwa/j;

    .line 22
    .line 23
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 24
    .line 25
    const/16 v4, 0x2a

    .line 26
    .line 27
    aget-object v4, v3, v4

    .line 28
    .line 29
    invoke-virtual {v2, v1, v4}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sget-object v4, Lwa/s;->b:Lwa/q;

    .line 40
    .line 41
    const-string v5, "</i></font>"

    .line 42
    .line 43
    const-string v6, " */"

    .line 44
    .line 45
    const-string v7, " /* "

    .line 46
    .line 47
    const-string v8, "<font color=\"808080\"><i>"

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lwa/g;->P(Ljava/lang/StringBuilder;Llb/w;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Lwa/k;->S:Lwa/j;

    .line 55
    .line 56
    const/16 v2, 0x2b

    .line 57
    .line 58
    aget-object v2, v3, v2

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-ne v0, v4, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, "from: "

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lwa/g;->P(Ljava/lang/StringBuilder;Llb/w;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-ne p2, v4, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    invoke-virtual {p0, p1, p2}, Lwa/g;->P(Ljava/lang/StringBuilder;Llb/w;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, v1, Lwa/k;->Q:Lwa/j;

    .line 109
    .line 110
    const/16 v2, 0x29

    .line 111
    .line 112
    aget-object v2, v3, v2

    .line 113
    .line 114
    invoke-virtual {p2, v1, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_4

    .line 125
    .line 126
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-ne p2, v4, :cond_3

    .line 131
    .line 132
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p2, "= "

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1, v0}, Lwa/g;->P(Ljava/lang/StringBuilder;Llb/w;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-ne p2, v4, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_4
    return-void

    .line 159
    :cond_5
    invoke-virtual {p0, p1, p2}, Lwa/g;->P(Ljava/lang/StringBuilder;Llb/w;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final P(Ljava/lang/StringBuilder;Llb/w;)V
    .locals 23

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
    iget-object v3, v0, Lwa/g;->a:Lwa/k;

    .line 8
    .line 9
    instance-of v4, v2, Llb/y;

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    invoke-virtual {v3}, Lwa/k;->l()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    move-object v4, v2

    .line 20
    check-cast v4, Llb/y;

    .line 21
    .line 22
    iget-object v4, v4, Llb/y;->d:Lkb/j;

    .line 23
    .line 24
    iget-object v5, v4, Lkb/i;->c:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object v6, Lkb/k;->a:Lkb/k;

    .line 27
    .line 28
    if-eq v5, v6, :cond_0

    .line 29
    .line 30
    iget-object v4, v4, Lkb/i;->c:Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v5, Lkb/k;->b:Lkb/k;

    .line 33
    .line 34
    if-eq v4, v5, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v2, "<Not computed yet>"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v2}, Llb/w;->G0()Llb/x0;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    instance-of v4, v2, Llb/p;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    check-cast v2, Llb/p;

    .line 52
    .line 53
    invoke-virtual {v2, v0, v0}, Llb/p;->L0(Lwa/g;Lwa/g;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    instance-of v4, v2, Llb/a0;

    .line 62
    .line 63
    if-eqz v4, :cond_21

    .line 64
    .line 65
    check-cast v2, Llb/a0;

    .line 66
    .line 67
    sget-object v4, Llb/v0;->b:Lnb/i;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Llb/w;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const-string v5, "???"

    .line 74
    .line 75
    if-nez v4, :cond_20

    .line 76
    .line 77
    invoke-virtual {v2}, Llb/w;->D0()Llb/k0;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    sget-object v6, Llb/v0;->a:Lnb/i;

    .line 82
    .line 83
    iget-object v6, v6, Lnb/i;->b:Llb/k0;

    .line 84
    .line 85
    if-ne v4, v6, :cond_3

    .line 86
    .line 87
    goto/16 :goto_c

    .line 88
    .line 89
    :cond_3
    invoke-virtual {v2}, Llb/w;->D0()Llb/k0;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    instance-of v6, v4, Lnb/j;

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    if-eqz v6, :cond_5

    .line 97
    .line 98
    check-cast v4, Lnb/j;

    .line 99
    .line 100
    iget-object v4, v4, Lnb/j;->a:Lnb/k;

    .line 101
    .line 102
    sget-object v6, Lnb/k;->j:Lnb/k;

    .line 103
    .line 104
    if-ne v4, v6, :cond_5

    .line 105
    .line 106
    iget-object v4, v3, Lwa/k;->t:Lwa/j;

    .line 107
    .line 108
    sget-object v6, Lwa/k;->Y:[Lm9/u;

    .line 109
    .line 110
    const/16 v8, 0x12

    .line 111
    .line 112
    aget-object v6, v6, v8

    .line 113
    .line 114
    invoke-virtual {v4, v3, v6}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    invoke-virtual {v2}, Llb/w;->D0()Llb/k0;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    .line 131
    .line 132
    invoke-static {v2, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    check-cast v2, Lnb/j;

    .line 136
    .line 137
    iget-object v2, v2, Lnb/j;->b:[Ljava/lang/String;

    .line 138
    .line 139
    aget-object v2, v2, v7

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lwa/g;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_5
    invoke-static {v2}, Llb/c;->j(Llb/w;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0, v1, v2}, Lwa/g;->B(Ljava/lang/StringBuilder;Llb/a0;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_6
    invoke-static {v2}, Lwa/g;->g0(Llb/w;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_1f

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    iget-object v6, v0, Lwa/g;->b:Lr8/o;

    .line 174
    .line 175
    invoke-virtual {v6}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Lwa/g;

    .line 180
    .line 181
    invoke-static {v6, v1, v2}, Lwa/g;->x(Lwa/g;Ljava/lang/StringBuilder;Lw9/a;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    const/4 v8, 0x1

    .line 189
    if-eq v6, v4, :cond_7

    .line 190
    .line 191
    const/4 v6, 0x1

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    const/4 v6, 0x0

    .line 194
    :goto_1
    invoke-static {v2}, Lp9/q;->C(Llb/w;)Llb/w;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-static {v2}, Lp9/q;->A(Llb/w;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-static {v2}, Lp9/q;->F(Llb/w;)Z

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    invoke-virtual {v2}, Llb/w;->E0()Z

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    if-nez v12, :cond_9

    .line 211
    .line 212
    if-eqz v6, :cond_8

    .line 213
    .line 214
    if-eqz v9, :cond_8

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    const/4 v13, 0x0

    .line 218
    goto :goto_3

    .line 219
    :cond_9
    :goto_2
    const/4 v13, 0x1

    .line 220
    :goto_3
    const-string v14, "("

    .line 221
    .line 222
    if-eqz v13, :cond_c

    .line 223
    .line 224
    if-eqz v11, :cond_a

    .line 225
    .line 226
    const/16 v6, 0x28

    .line 227
    .line 228
    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_a
    if-eqz v6, :cond_b

    .line 233
    .line 234
    invoke-static {v1}, Lxb/i;->R(Ljava/lang/CharSequence;)C

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    invoke-static {v4}, Lp4/e;->r(C)Z

    .line 239
    .line 240
    .line 241
    invoke-static {v1}, Lxb/i;->L(Ljava/lang/CharSequence;)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    sub-int/2addr v4, v8

    .line 246
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    const/16 v6, 0x29

    .line 251
    .line 252
    if-eq v4, v6, :cond_b

    .line 253
    .line 254
    invoke-static {v1}, Lxb/i;->L(Ljava/lang/CharSequence;)I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    const-string v6, "()"

    .line 259
    .line 260
    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    :cond_b
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :cond_c
    :goto_4
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    const-string v6, ") "

    .line 271
    .line 272
    const-string v15, ", "

    .line 273
    .line 274
    if-nez v4, :cond_e

    .line 275
    .line 276
    const-string v4, "context("

    .line 277
    .line 278
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-static {v10}, Lp9/x1;->u(Ljava/util/List;)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    invoke-interface {v10, v7, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v16

    .line 297
    if-eqz v16, :cond_d

    .line 298
    .line 299
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v16

    .line 303
    move-object/from16 v7, v16

    .line 304
    .line 305
    check-cast v7, Llb/w;

    .line 306
    .line 307
    invoke-virtual {v0, v1, v7}, Lwa/g;->O(Ljava/lang/StringBuilder;Llb/w;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const/4 v7, 0x0

    .line 314
    goto :goto_5

    .line 315
    :cond_d
    invoke-static {v10}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    check-cast v4, Llb/w;

    .line 320
    .line 321
    invoke-virtual {v0, v1, v4}, Lwa/g;->O(Ljava/lang/StringBuilder;Llb/w;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    :cond_e
    const-string v4, "suspend"

    .line 328
    .line 329
    invoke-virtual {v0, v1, v11, v4}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v4, ")"

    .line 333
    .line 334
    if-eqz v9, :cond_15

    .line 335
    .line 336
    invoke-static {v9}, Lwa/g;->g0(Llb/w;)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-eqz v7, :cond_f

    .line 341
    .line 342
    invoke-virtual {v9}, Llb/w;->E0()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-eqz v7, :cond_12

    .line 347
    .line 348
    :cond_f
    invoke-static {v9}, Lp9/q;->F(Llb/w;)Z

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    if-nez v7, :cond_12

    .line 353
    .line 354
    invoke-virtual {v9}, Llb/w;->getAnnotations()Lw9/h;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-interface {v7}, Lw9/h;->isEmpty()Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-nez v7, :cond_10

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_10
    instance-of v7, v9, Llb/l;

    .line 366
    .line 367
    if-eqz v7, :cond_11

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_11
    const/4 v7, 0x0

    .line 371
    goto :goto_7

    .line 372
    :cond_12
    :goto_6
    const/4 v7, 0x1

    .line 373
    :goto_7
    if-eqz v7, :cond_13

    .line 374
    .line 375
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    :cond_13
    invoke-virtual {v0, v1, v9}, Lwa/g;->O(Ljava/lang/StringBuilder;Llb/w;)V

    .line 379
    .line 380
    .line 381
    if-eqz v7, :cond_14

    .line 382
    .line 383
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    :cond_14
    const-string v7, "."

    .line 387
    .line 388
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    :cond_15
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-static {v2}, Lp9/q;->E(Llb/w;)Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    const-string v9, "getType(...)"

    .line 399
    .line 400
    if-eqz v7, :cond_16

    .line 401
    .line 402
    invoke-virtual {v2}, Llb/w;->getAnnotations()Lw9/h;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    sget-object v10, Ls9/o;->p:Lua/c;

    .line 407
    .line 408
    invoke-interface {v7, v10}, Lw9/h;->c(Lua/c;)Lw9/b;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    if-eqz v7, :cond_16

    .line 413
    .line 414
    invoke-virtual {v2}, Llb/w;->B0()Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-gt v7, v8, :cond_16

    .line 423
    .line 424
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    goto/16 :goto_a

    .line 428
    .line 429
    :cond_16
    invoke-static {v2}, Lp9/q;->D(Llb/w;)Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    const/4 v7, 0x0

    .line 438
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    if-eqz v10, :cond_1a

    .line 443
    .line 444
    add-int/lit8 v10, v7, 0x1

    .line 445
    .line 446
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v11

    .line 450
    check-cast v11, Llb/n0;

    .line 451
    .line 452
    if-lez v7, :cond_17

    .line 453
    .line 454
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    :cond_17
    iget-object v7, v3, Lwa/k;->U:Lwa/j;

    .line 458
    .line 459
    sget-object v14, Lwa/k;->Y:[Lm9/u;

    .line 460
    .line 461
    const/16 v16, 0x2d

    .line 462
    .line 463
    aget-object v14, v14, v16

    .line 464
    .line 465
    invoke-virtual {v7, v3, v14}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    check-cast v7, Ljava/lang/Boolean;

    .line 470
    .line 471
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    if-eqz v7, :cond_18

    .line 476
    .line 477
    invoke-virtual {v11}, Llb/n0;->b()Llb/w;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    invoke-static {v7, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-static {v7}, Lp9/q;->x(Llb/w;)Lua/e;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    goto :goto_9

    .line 489
    :cond_18
    const/4 v7, 0x0

    .line 490
    :goto_9
    const/4 v14, 0x0

    .line 491
    if-eqz v7, :cond_19

    .line 492
    .line 493
    invoke-virtual {v0, v7, v14}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v7, ": "

    .line 501
    .line 502
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    :cond_19
    const-string v7, "typeProjection"

    .line 506
    .line 507
    invoke-static {v11, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    new-instance v17, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-static {v11}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 516
    .line 517
    .line 518
    move-result-object v16

    .line 519
    new-instance v7, Lwa/f;

    .line 520
    .line 521
    const/4 v11, 0x0

    .line 522
    invoke-direct {v7, v0, v11}, Lwa/f;-><init>(Lwa/g;I)V

    .line 523
    .line 524
    .line 525
    const/16 v22, 0x3c

    .line 526
    .line 527
    const-string v18, ", "

    .line 528
    .line 529
    const/16 v19, 0x0

    .line 530
    .line 531
    const/16 v20, 0x0

    .line 532
    .line 533
    move-object/from16 v21, v7

    .line 534
    .line 535
    invoke-static/range {v16 .. v22}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    move v7, v10

    .line 546
    goto :goto_8

    .line 547
    :cond_1a
    :goto_a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Lwa/g;->q()Lwa/s;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    if-eqz v3, :cond_1c

    .line 559
    .line 560
    if-ne v3, v8, :cond_1b

    .line 561
    .line 562
    const-string v3, "&rarr;"

    .line 563
    .line 564
    goto :goto_b

    .line 565
    :cond_1b
    new-instance v1, Lac/p;

    .line 566
    .line 567
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 568
    .line 569
    .line 570
    throw v1

    .line 571
    :cond_1c
    const-string v3, "->"

    .line 572
    .line 573
    invoke-virtual {v0, v3}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    :goto_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v3, " "

    .line 581
    .line 582
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-static {v2}, Lp9/q;->E(Llb/w;)Z

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2}, Llb/w;->B0()Ljava/util/List;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-static {v2}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    check-cast v2, Llb/n0;

    .line 597
    .line 598
    invoke-virtual {v2}, Llb/n0;->b()Llb/w;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-static {v2, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v1, v2}, Lwa/g;->O(Ljava/lang/StringBuilder;Llb/w;)V

    .line 606
    .line 607
    .line 608
    if-eqz v13, :cond_1d

    .line 609
    .line 610
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    :cond_1d
    if-eqz v12, :cond_1e

    .line 614
    .line 615
    const-string v2, "?"

    .line 616
    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    :cond_1e
    return-void

    .line 621
    :cond_1f
    invoke-virtual {v0, v1, v2}, Lwa/g;->B(Ljava/lang/StringBuilder;Llb/a0;)V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :cond_20
    :goto_c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :cond_21
    new-instance v1, Lac/p;

    .line 630
    .line 631
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 632
    .line 633
    .line 634
    throw v1
.end method

.method public final Q(Ljava/lang/StringBuilder;Lv9/c;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lwa/h;->f:Lwa/h;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p2}, Lv9/c;->m()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 25
    .line 26
    iget-object v1, v0, Lwa/k;->B:Lwa/j;

    .line 27
    .line 28
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 29
    .line 30
    const/16 v3, 0x1a

    .line 31
    .line 32
    aget-object v2, v2, v3

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lwa/n;

    .line 39
    .line 40
    sget-object v1, Lwa/n;->b:Lwa/n;

    .line 41
    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    const-string v1, "override"

    .line 46
    .line 47
    invoke-virtual {p0, p1, v0, v1}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lwa/g;->s()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const-string v0, "/*"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {p2}, Lv9/c;->m()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p2, "*/ "

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method public final R(Ljava/lang/StringBuilder;La2/b;)V
    .locals 2

    .line 1
    iget-object v0, p2, La2/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La2/b;

    .line 4
    .line 5
    iget-object v1, p2, La2/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lv9/i;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lwa/g;->R(Ljava/lang/StringBuilder;La2/b;)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x2e

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Lv9/k;->getName()Lua/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "getName(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {v1}, Lv9/h;->t()Llb/k0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "getTypeConstructor(...)"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lwa/g;->X(Llb/k0;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p2, p2, La2/b;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Ljava/util/List;

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lwa/g;->W(Ljava/util/List;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final S(Ljava/lang/StringBuilder;Lv9/c;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lv9/b;->a0()Ly9/v;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget-object v0, Lw9/d;->g:Lw9/d;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ly9/v;->getType()Llb/w;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v0, "getType(...)"

    .line 17
    .line 18
    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lwa/g;->E(Llb/w;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, "."

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final T(Ljava/lang/StringBuilder;Lv9/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->F:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x1e

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p2}, Lv9/b;->a0()Ly9/v;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    const-string v0, " on "

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ly9/v;->getType()Llb/w;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v0, "getType(...)"

    .line 40
    .line 41
    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final V(Llb/w;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lwa/g;->a:Lwa/k;

    .line 12
    .line 13
    iget-object v2, v1, Lwa/k;->y:Lwa/j;

    .line 14
    .line 15
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 16
    .line 17
    const/16 v4, 0x17

    .line 18
    .line 19
    aget-object v3, v3, v4

    .line 20
    .line 21
    invoke-virtual {v2, v1, v3}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lf9/k;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Llb/w;

    .line 32
    .line 33
    invoke-virtual {p0, v0, p1}, Lwa/g;->O(Ljava/lang/StringBuilder;Llb/w;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final W(Ljava/util/List;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "typeArguments"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "<"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v5, Lwa/f;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {v5, p0, v0}, Lwa/f;-><init>(Lwa/g;I)V

    .line 33
    .line 34
    .line 35
    const/16 v6, 0x3c

    .line 36
    .line 37
    const-string v2, ", "

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v0, p1

    .line 42
    invoke-static/range {v0 .. v6}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 43
    .line 44
    .line 45
    const-string p1, ">"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public final X(Llb/k0;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "typeConstructor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Llb/k0;->k()Lv9/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lv9/q0;

    .line 11
    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    instance-of v1, v0, Lv9/e;

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    instance-of v1, v0, Lv9/p0;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez v0, :cond_2

    .line 24
    .line 25
    instance-of v0, p1, Llb/v;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast p1, Llb/v;

    .line 30
    .line 31
    sget-object v0, Lwa/d;->m:Lwa/d;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Llb/v;->c(Lf9/k;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Unexpected classifier: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_3
    :goto_0
    const-string p1, "klass"

    .line 72
    .line 73
    invoke-static {v0, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lnb/l;->f(Lv9/k;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-interface {v0}, Lv9/h;->t()Llb/k0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_4
    invoke-virtual {p0}, Lwa/g;->n()Lwa/c;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1, v0, p0}, Lwa/c;->a(Lv9/h;Lwa/g;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method

.method public final Y(Lv9/q0;Ljava/lang/StringBuilder;Z)V
    .locals 7

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const-string v0, "<"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lwa/g;->s()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "/*"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lv9/q0;->getIndex()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "*/ "

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {p1}, Lv9/q0;->C()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v1, "reified"

    .line 40
    .line 41
    invoke-virtual {p0, p2, v0, v1}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lv9/q0;->J()Llb/y0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Llb/y0;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x1

    .line 56
    if-lez v1, :cond_2

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0, p2, v1, v0}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p2, p1, v0}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/16 v4, 0x8d

    .line 80
    .line 81
    const-string v5, " : "

    .line 82
    .line 83
    if-le v1, v3, :cond_3

    .line 84
    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    :cond_3
    if-ne v1, v3, :cond_7

    .line 88
    .line 89
    :cond_4
    invoke-interface {p1}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Llb/w;

    .line 102
    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-static {p1}, Ls9/i;->y(Llb/w;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1}, Llb/w;->E0()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_6
    invoke-static {v4}, Ls9/i;->a(I)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_7
    if-eqz p3, :cond_b

    .line 134
    .line 135
    invoke-interface {p1}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_b

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Llb/w;

    .line 154
    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    invoke-static {v1}, Ls9/i;->y(Llb/w;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_8

    .line 162
    .line 163
    invoke-virtual {v1}, Llb/w;->E0()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_8

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_8
    if-eqz v3, :cond_9

    .line 171
    .line 172
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    const-string v3, " & "

    .line 177
    .line 178
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :goto_2
    invoke-virtual {p0, v1}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const/4 v3, 0x0

    .line 189
    goto :goto_1

    .line 190
    :cond_a
    invoke-static {v4}, Ls9/i;->a(I)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_b
    :goto_3
    if-eqz p3, :cond_c

    .line 195
    .line 196
    const-string p1, ">"

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    :cond_c
    return-void
.end method

.method public final Z(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lv9/q0;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, p1, v1}, Lwa/g;->Y(Lv9/q0;Ljava/lang/StringBuilder;Z)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, ", "

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final a0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->w:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x15

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "<"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lwa/g;->Z(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    const-string p2, ">"

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    const-string p2, " "

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b0(Lv9/t0;Ljava/lang/StringBuilder;Z)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    instance-of p3, p1, Ly9/r0;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p1}, Lv9/t0;->Z()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    const-string p1, "var"

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    const-string p1, "val"

    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0, p1}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " "

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c0(Ly9/r0;ZLjava/lang/StringBuilder;Z)V
    .locals 10

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const-string v0, "value-parameter"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, " "

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lwa/g;->s()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "/*"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v0, p1, Ly9/r0;->f:I

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "*/ "

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p3, p1, v0}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p1, Ly9/r0;->h:Z

    .line 43
    .line 44
    const-string v2, "crossinline"

    .line 45
    .line 46
    invoke-virtual {p0, p3, v1, v2}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p1, Ly9/r0;->i:Z

    .line 50
    .line 51
    const-string v2, "noinline"

    .line 52
    .line 53
    invoke-virtual {p0, p3, v1, v2}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lwa/g;->a:Lwa/k;

    .line 57
    .line 58
    iget-object v2, v1, Lwa/k;->r:Lwa/j;

    .line 59
    .line 60
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 61
    .line 62
    const/16 v4, 0x10

    .line 63
    .line 64
    aget-object v4, v3, v4

    .line 65
    .line 66
    invoke-virtual {v2, v1, v4}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x1

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Ly9/r0;->E0()Lv9/b;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    instance-of v6, v2, Ly9/i;

    .line 85
    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    move-object v0, v2

    .line 89
    check-cast v0, Ly9/i;

    .line 90
    .line 91
    :cond_2
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-boolean v0, v0, Ly9/i;->D:Z

    .line 94
    .line 95
    if-ne v0, v5, :cond_3

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    const/4 v0, 0x0

    .line 100
    :goto_0
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object v2, v1, Lwa/k;->s:Lwa/j;

    .line 103
    .line 104
    const/16 v6, 0x11

    .line 105
    .line 106
    aget-object v6, v3, v6

    .line 107
    .line 108
    invoke-virtual {v2, v1, v6}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const-string v6, "actual"

    .line 119
    .line 120
    invoke-virtual {p0, p3, v2, v6}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    move-object v2, p1

    .line 124
    check-cast v2, Ly9/s0;

    .line 125
    .line 126
    invoke-virtual {v2}, Ly9/s0;->getType()Llb/w;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const-string v6, "getType(...)"

    .line 131
    .line 132
    invoke-static {v2, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v6, p1, Ly9/r0;->j:Llb/w;

    .line 136
    .line 137
    if-nez v6, :cond_5

    .line 138
    .line 139
    move-object v7, v2

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    move-object v7, v6

    .line 142
    :goto_1
    if-eqz v6, :cond_6

    .line 143
    .line 144
    const/4 v8, 0x1

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    const/4 v8, 0x0

    .line 147
    :goto_2
    const-string v9, "vararg"

    .line 148
    .line 149
    invoke-virtual {p0, p3, v8, v9}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    if-eqz p4, :cond_8

    .line 155
    .line 156
    invoke-virtual {p0}, Lwa/g;->p()Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-nez v8, :cond_8

    .line 161
    .line 162
    :cond_7
    invoke-virtual {p0, p1, p3, v0}, Lwa/g;->b0(Lv9/t0;Ljava/lang/StringBuilder;Z)V

    .line 163
    .line 164
    .line 165
    :cond_8
    if-eqz p2, :cond_9

    .line 166
    .line 167
    invoke-virtual {p0, p1, p3, p4}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 168
    .line 169
    .line 170
    const-string p2, ": "

    .line 171
    .line 172
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    :cond_9
    invoke-virtual {p0, v7}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1, p3}, Lwa/g;->F(Lv9/t0;Ljava/lang/StringBuilder;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lwa/g;->s()Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-eqz p2, :cond_a

    .line 190
    .line 191
    if-eqz v6, :cond_a

    .line 192
    .line 193
    const-string p2, " /*"

    .line 194
    .line 195
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v2}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p2, "*/"

    .line 206
    .line 207
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_a
    iget-object p2, v1, Lwa/k;->z:Lwa/j;

    .line 211
    .line 212
    const/16 p4, 0x18

    .line 213
    .line 214
    aget-object v0, v3, p4

    .line 215
    .line 216
    invoke-virtual {p2, v1, v0}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Lf9/k;

    .line 221
    .line 222
    if-eqz p2, :cond_c

    .line 223
    .line 224
    invoke-virtual {v1}, Lwa/k;->l()Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_b

    .line 229
    .line 230
    invoke-virtual {p1}, Ly9/r0;->D0()Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    goto :goto_3

    .line 235
    :cond_b
    invoke-static {p1}, Lbb/e;->a(Ly9/r0;)Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    :goto_3
    if-eqz p2, :cond_c

    .line 240
    .line 241
    const/4 v4, 0x1

    .line 242
    :cond_c
    if-eqz v4, :cond_d

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v0, " = "

    .line 247
    .line 248
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v1, Lwa/k;->z:Lwa/j;

    .line 252
    .line 253
    aget-object p4, v3, p4

    .line 254
    .line 255
    invoke-virtual {v0, v1, p4}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p4

    .line 259
    check-cast p4, Lf9/k;

    .line 260
    .line 261
    invoke-static {p4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p4, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    :cond_d
    return-void
.end method

.method public final d(Ljava/util/Set;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lwa/k;->d(Ljava/util/Set;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->E:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x1d

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lwa/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const/4 p3, 0x2

    .line 28
    if-ne v0, p3, :cond_1

    .line 29
    .line 30
    :cond_0
    const/4 p3, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Lac/p;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    if-nez p3, :cond_0

    .line 39
    .line 40
    :cond_3
    const/4 p3, 0x1

    .line 41
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0}, Lwa/g;->r()Lwa/e;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v3, "builder"

    .line 53
    .line 54
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "("

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const/4 v3, 0x0

    .line 67
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    add-int/lit8 v4, v3, 0x1

    .line 74
    .line 75
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ly9/r0;

    .line 80
    .line 81
    invoke-virtual {p0}, Lwa/g;->r()Lwa/e;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    const-string v6, "parameter"

    .line 89
    .line 90
    invoke-static {v5, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v5, p3, p1, v1}, Lwa/g;->c0(Ly9/r0;ZLjava/lang/StringBuilder;Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lwa/g;->r()Lwa/e;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    add-int/lit8 v5, v0, -0x1

    .line 104
    .line 105
    if-eq v3, v5, :cond_4

    .line 106
    .line 107
    const-string v3, ", "

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_4
    move v3, v4

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {p0}, Lwa/g;->r()Lwa/e;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const-string p2, ")"

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final e(Lwa/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lwa/k;->e(Lwa/o;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e0(Lea/o;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lwa/h;->d:Lwa/h;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 15
    .line 16
    iget-object v1, v0, Lwa/k;->n:Lwa/j;

    .line 17
    .line 18
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 19
    .line 20
    const/16 v3, 0xc

    .line 21
    .line 22
    aget-object v3, v2, v3

    .line 23
    .line 24
    invoke-virtual {v1, v0, v3}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object p1, p1, Lea/o;->a:Ln/a;

    .line 37
    .line 38
    invoke-virtual {p1}, Ln/a;->k()Ln/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lv9/o;->f(Ln/a;)Lea/o;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_1
    iget-object v1, v0, Lwa/k;->o:Lwa/j;

    .line 47
    .line 48
    const/16 v3, 0xd

    .line 49
    .line 50
    aget-object v2, v2, v3

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    sget-object v0, Lv9/o;->j:Lea/o;

    .line 65
    .line 66
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    :goto_0
    const/4 p1, 0x0

    .line 73
    return p1

    .line 74
    :cond_2
    iget-object p1, p1, Lea/o;->a:Ln/a;

    .line 75
    .line 76
    invoke-virtual {p1}, Ln/a;->d()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, " "

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    return p1
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->w:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x15

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lv9/q0;

    .line 46
    .line 47
    invoke-interface {v2}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "getUpperBounds(...)"

    .line 52
    .line 53
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Ls8/p;->Z(Ljava/util/List;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Llb/w;

    .line 75
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2}, Lv9/k;->getName()Lua/e;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const-string v7, "getName(...)"

    .line 86
    .line 87
    invoke-static {v6, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v6, v0}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v6, " : "

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v4}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_3

    .line 125
    .line 126
    const-string p2, " "

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, "where"

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    const/16 v7, 0x7c

    .line 145
    .line 146
    const-string v3, ", "

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    const/4 v5, 0x0

    .line 150
    move-object v2, p1

    .line 151
    invoke-static/range {v1 .. v7}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Lwa/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lwa/k;->i(Lwa/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwa/k;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lwa/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final n()Lwa/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->b:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lwa/c;

    .line 15
    .line 16
    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->e:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Set;

    .line 15
    .line 16
    return-object v0
.end method

.method public final p()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->f:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final q()Lwa/s;
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->D:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lwa/s;

    .line 16
    .line 17
    return-object v0
.end method

.method public final r()Lwa/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->C:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x1b

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lwa/e;

    .line 16
    .line 17
    return-object v0
.end method

.method public final s()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->j:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public final u(Lv9/k;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "declarationDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lv/a1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lv/a1;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1, v0}, Lv9/k;->G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lwa/g;->a:Lwa/k;

    .line 20
    .line 21
    iget-object v2, v1, Lwa/k;->c:Lwa/j;

    .line 22
    .line 23
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aget-object v5, v3, v4

    .line 27
    .line 28
    invoke-virtual {v2, v1, v5}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    instance-of v2, p1, Lv9/d0;

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    instance-of v2, p1, Lv9/h0;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    instance-of v5, v2, Lv9/y;

    .line 56
    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    const-string v5, " "

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lwa/g;->q()Lwa/s;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    if-ne v6, v4, :cond_1

    .line 75
    .line 76
    const-string v4, "<i>defined in</i>"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance p1, Lac/p;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_2
    const-string v4, "defined in"

    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "getFqName(...)"

    .line 98
    .line 99
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Lua/d;->c()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    const-string v4, "root package"

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-static {v4}, Lua/d;->e(Lua/d;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v4}, Lp9/q;->J(Ljava/util/List;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {p0, v4}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v4, v1, Lwa/k;->d:Lwa/j;

    .line 127
    .line 128
    const/4 v5, 0x2

    .line 129
    aget-object v3, v3, v5

    .line 130
    .line 131
    invoke-virtual {v4, v1, v3}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    instance-of v1, v2, Lv9/d0;

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    instance-of v1, p1, Lv9/l;

    .line 148
    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    check-cast p1, Lv9/l;

    .line 152
    .line 153
    invoke-interface {p1}, Lv9/l;->getSource()Lv9/m0;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    return-object p1
.end method

.method public final v(Lw9/b;Lw9/d;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->N:Lwa/j;

    .line 4
    .line 5
    const-string v2, "annotation"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x40

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p2, p2, Lw9/d;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 p2, 0x3a

    .line 33
    .line 34
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {p1}, Lw9/b;->getType()Llb/w;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 56
    .line 57
    const/16 v3, 0x26

    .line 58
    .line 59
    aget-object v5, v2, v3

    .line 60
    .line 61
    invoke-virtual {v1, v0, v5}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lwa/a;

    .line 66
    .line 67
    iget-boolean v5, v5, Lwa/a;->a:Z

    .line 68
    .line 69
    if-eqz v5, :cond_f

    .line 70
    .line 71
    invoke-interface {p1}, Lw9/b;->b()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget-object v6, v0, Lwa/k;->I:Lwa/j;

    .line 76
    .line 77
    const/16 v7, 0x21

    .line 78
    .line 79
    aget-object v2, v2, v7

    .line 80
    .line 81
    invoke-virtual {v6, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v6, 0x0

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-static {p1}, Lbb/e;->d(Lw9/b;)Lv9/e;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move-object p1, v6

    .line 100
    :goto_0
    const/16 v2, 0xa

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-interface {p1}, Lv9/e;->N()Ly9/i;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    check-cast p1, Ly9/u;

    .line 111
    .line 112
    invoke-virtual {p1}, Ly9/u;->S()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    new-instance v6, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_3

    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    move-object v8, v7

    .line 138
    check-cast v8, Ly9/r0;

    .line 139
    .line 140
    invoke-virtual {v8}, Ly9/r0;->D0()Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_2

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-static {v6, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_4

    .line 168
    .line 169
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    check-cast v7, Ly9/r0;

    .line 174
    .line 175
    check-cast v7, Ly9/m;

    .line 176
    .line 177
    invoke-virtual {v7}, Ly9/m;->getName()Lua/e;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    move-object v6, p1

    .line 186
    :cond_5
    if-nez v6, :cond_6

    .line 187
    .line 188
    sget-object v6, Ls8/w;->a:Ls8/w;

    .line 189
    .line 190
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-eqz v8, :cond_8

    .line 204
    .line 205
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    move-object v9, v8

    .line 210
    check-cast v9, Lua/e;

    .line 211
    .line 212
    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-nez v9, :cond_7

    .line 217
    .line 218
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-static {p1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_9

    .line 240
    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    check-cast v8, Lua/e;

    .line 246
    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8}, Lua/e;->b()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v8, " = ..."

    .line 260
    .line 261
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_9
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Ljava/lang/Iterable;

    .line 277
    .line 278
    new-instance v5, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-static {p1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .line 286
    .line 287
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_b

    .line 296
    .line 297
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Ljava/util/Map$Entry;

    .line 302
    .line 303
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    check-cast v8, Lua/e;

    .line 308
    .line 309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lza/g;

    .line 314
    .line 315
    new-instance v9, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8}, Lua/e;->b()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v10, " = "

    .line 328
    .line 329
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-nez v8, :cond_a

    .line 337
    .line 338
    invoke-virtual {p0, v2}, Lwa/g;->z(Lza/g;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    goto :goto_6

    .line 343
    :cond_a
    const-string v2, "..."

    .line 344
    .line 345
    :goto_6
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_b
    invoke-static {v5, v7}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    const/4 v5, 0x1

    .line 365
    if-gt v2, v5, :cond_c

    .line 366
    .line 367
    invoke-static {p1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    goto :goto_7

    .line 372
    :cond_c
    const/4 v2, 0x0

    .line 373
    new-array v2, v2, [Ljava/lang/Comparable;

    .line 374
    .line 375
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    move-object v2, p1

    .line 380
    check-cast v2, [Ljava/lang/Comparable;

    .line 381
    .line 382
    const-string v6, "<this>"

    .line 383
    .line 384
    invoke-static {v2, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    array-length v6, v2

    .line 388
    if-le v6, v5, :cond_d

    .line 389
    .line 390
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :cond_d
    invoke-static {p1}, Ls8/l;->J([Ljava/lang/Object;)Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    :goto_7
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 398
    .line 399
    aget-object v2, v2, v3

    .line 400
    .line 401
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Lwa/a;

    .line 406
    .line 407
    iget-boolean v0, v0, Lwa/a;->b:Z

    .line 408
    .line 409
    if-nez v0, :cond_e

    .line 410
    .line 411
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_f

    .line 416
    .line 417
    :cond_e
    const/4 v8, 0x0

    .line 418
    const/16 v9, 0x70

    .line 419
    .line 420
    const-string v5, ", "

    .line 421
    .line 422
    const-string v6, "("

    .line 423
    .line 424
    const-string v7, ")"

    .line 425
    .line 426
    move-object v3, p1

    .line 427
    invoke-static/range {v3 .. v9}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 428
    .line 429
    .line 430
    :cond_f
    invoke-virtual {p0}, Lwa/g;->s()Z

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    if-eqz p1, :cond_11

    .line 435
    .line 436
    invoke-static {p2}, Llb/c;->j(Llb/w;)Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-nez p1, :cond_10

    .line 441
    .line 442
    invoke-virtual {p2}, Llb/w;->D0()Llb/k0;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-interface {p1}, Llb/k0;->k()Lv9/h;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    instance-of p1, p1, Lv9/c0;

    .line 451
    .line 452
    if-eqz p1, :cond_11

    .line 453
    .line 454
    :cond_10
    const-string p1, " /* annotation class not found */"

    .line 455
    .line 456
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    :cond_11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    return-object p1
.end method

.method public final w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lwa/g;->o()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lwa/h;->g:Lwa/h;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    instance-of v0, p2, Llb/w;

    .line 16
    .line 17
    iget-object v1, p0, Lwa/g;->a:Lwa/k;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lwa/k;->m()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, v1, Lwa/k;->K:Lwa/j;

    .line 27
    .line 28
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 29
    .line 30
    const/16 v3, 0x23

    .line 31
    .line 32
    aget-object v2, v2, v3

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/Set;

    .line 39
    .line 40
    :goto_0
    iget-object v2, v1, Lwa/k;->M:Lwa/j;

    .line 41
    .line 42
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 43
    .line 44
    const/16 v4, 0x25

    .line 45
    .line 46
    aget-object v3, v3, v4

    .line 47
    .line 48
    invoke-virtual {v2, v1, v3}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lf9/k;

    .line 53
    .line 54
    invoke-interface {p2}, Lw9/a;->getAnnotations()Lw9/h;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lw9/b;

    .line 73
    .line 74
    move-object v4, v0

    .line 75
    check-cast v4, Ljava/lang/Iterable;

    .line 76
    .line 77
    invoke-interface {v3}, Lw9/b;->a()Lua/c;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {v4, v5}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_2

    .line 86
    .line 87
    invoke-interface {v3}, Lw9/b;->a()Lua/c;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sget-object v5, Ls9/o;->r:Lua/c;

    .line 92
    .line 93
    invoke-static {v4, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-interface {v2, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    :cond_3
    invoke-virtual {p0, v3, p3}, Lwa/g;->v(Lw9/b;Lw9/d;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v3, v1, Lwa/k;->J:Lwa/j;

    .line 121
    .line 122
    sget-object v4, Lwa/k;->Y:[Lm9/u;

    .line 123
    .line 124
    const/16 v5, 0x22

    .line 125
    .line 126
    aget-object v4, v4, v5

    .line 127
    .line 128
    invoke-virtual {v3, v1, v4}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    const/16 v3, 0xa

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    const-string v3, " "

    .line 147
    .line 148
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    :goto_2
    return-void
.end method

.method public final y(Lv9/i;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lv9/i;->q()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getDeclaredTypeParameters(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lv9/h;->t()Llb/k0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Llb/k0;->m()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "getParameters(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lwa/g;->s()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Lv9/i;->I()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-le p1, v2, :cond_0

    .line 44
    .line 45
    const-string p1, " /*captured type parameters: "

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p2, p1}, Lwa/g;->Z(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "*/"

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public final z(Lza/g;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->v:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lf9/k;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    instance-of v0, p1, Lza/b;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    check-cast p1, Lza/b;

    .line 31
    .line 32
    iget-object p1, p1, Lza/g;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Iterable;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lza/g;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lwa/g;->z(Lza/g;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v4, 0x0

    .line 68
    const/16 v5, 0x38

    .line 69
    .line 70
    const-string v1, ", "

    .line 71
    .line 72
    const-string v2, "{"

    .line 73
    .line 74
    const-string v3, "}"

    .line 75
    .line 76
    invoke-static/range {v0 .. v5}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_3
    instance-of v0, p1, Lza/a;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    check-cast p1, Lza/a;

    .line 86
    .line 87
    iget-object p1, p1, Lza/g;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lw9/b;

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Lwa/g;->v(Lw9/b;Lw9/d;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "@"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lxb/i;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_4
    instance-of v0, p1, Lza/s;

    .line 104
    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    check-cast p1, Lza/s;

    .line 108
    .line 109
    iget-object p1, p1, Lza/g;->a:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Lza/r;

    .line 112
    .line 113
    instance-of v0, p1, Lza/p;

    .line 114
    .line 115
    const-string v1, "::class"

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    check-cast p1, Lza/p;

    .line 125
    .line 126
    iget-object p1, p1, Lza/p;->a:Llb/w;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_5
    instance-of v0, p1, Lza/q;

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    check-cast p1, Lza/q;

    .line 144
    .line 145
    iget-object p1, p1, Lza/q;->a:Lza/f;

    .line 146
    .line 147
    iget-object v0, p1, Lza/f;->a:Lua/b;

    .line 148
    .line 149
    invoke-virtual {v0}, Lua/b;->a()Lua/c;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 154
    .line 155
    iget-object v0, v0, Lua/d;->a:Ljava/lang/String;

    .line 156
    .line 157
    iget p1, p1, Lza/f;->b:I

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    :goto_1
    if-ge v2, p1, :cond_6

    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v4, "kotlin.Array<"

    .line 165
    .line 166
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const/16 v0, 0x3e

    .line 173
    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1

    .line 189
    :cond_7
    new-instance p1, Lac/p;

    .line 190
    .line 191
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :cond_8
    invoke-virtual {p1}, Lza/g;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    return-object p1
.end method
