.class public final Lq2/c;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;
.implements Lq2/o;
.implements Lq2/y1;
.implements Lq2/v1;
.implements Lp2/d;
.implements Lp2/e;
.implements Lq2/t1;
.implements Lq2/w;
.implements Lq2/p;
.implements Lw1/e;
.implements Lw1/n;
.implements Lw1/p;
.implements Lq2/r1;
.implements Lv1/a;


# instance fields
.field public o:Lr1/n;

.field public p:Lp2/a;

.field public q:Ljava/util/HashSet;


# virtual methods
.method public final A0(Z)V
    .locals 5

    .line 1
    sget-object v0, Ld0/c;->c:Lp2/f;

    .line 2
    .line 3
    iget-boolean v1, p0, Lr1/o;->n:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "initializeModifier called on unattached node"

    .line 8
    .line 9
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lq2/c;->o:Lr1/n;

    .line 13
    .line 14
    iget v2, p0, Lr1/o;->c:I

    .line 15
    .line 16
    and-int/lit8 v2, v2, 0x20

    .line 17
    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    instance-of v2, v1, Ld0/a0;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    new-instance v2, Lq2/b;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, p0, v3}, Lq2/b;-><init>(Lq2/c;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lr2/u;

    .line 35
    .line 36
    iget-object v3, v3, Lr2/u;->C0:Ls/d0;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ls/d0;->f(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ltz v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v3, v2}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    instance-of v2, v1, Ld0/a0;

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    check-cast v2, Ld0/a0;

    .line 54
    .line 55
    iget-object v3, p0, Lq2/c;->p:Lp2/a;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Lp2/a;->j(Lp2/f;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    iput-object v2, v3, Lp2/a;->e:Ld0/a0;

    .line 66
    .line 67
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lr2/u;

    .line 72
    .line 73
    invoke-virtual {v2}, Lr2/u;->getModifierLocalManager()Lp2/c;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v3, v2, Lp2/c;->b:Lh1/e;

    .line 78
    .line 79
    invoke-virtual {v3, p0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, v2, Lp2/c;->c:Lh1/e;

    .line 83
    .line 84
    invoke-virtual {v3, v0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lp2/c;->a()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    new-instance v3, Lp2/a;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v2, v3, Lp2/a;->e:Ld0/a0;

    .line 97
    .line 98
    iput-object v3, p0, Lq2/c;->p:Lp2/a;

    .line 99
    .line 100
    invoke-static {p0}, Lq2/f;->d(Lq2/c;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lr2/u;

    .line 111
    .line 112
    invoke-virtual {v2}, Lr2/u;->getModifierLocalManager()Lp2/c;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v3, v2, Lp2/c;->b:Lh1/e;

    .line 117
    .line 118
    invoke-virtual {v3, p0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v2, Lp2/c;->c:Lh1/e;

    .line 122
    .line 123
    invoke-virtual {v3, v0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lp2/c;->a()V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    iget v0, p0, Lr1/o;->c:I

    .line 130
    .line 131
    and-int/lit8 v0, v0, 0x4

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    if-nez p1, :cond_5

    .line 137
    .line 138
    invoke-static {p0, v2}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lq2/h1;->N0()V

    .line 143
    .line 144
    .line 145
    :cond_5
    iget v0, p0, Lr1/o;->c:I

    .line 146
    .line 147
    and-int/2addr v0, v2

    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    invoke-static {p0}, Lq2/f;->d(Lq2/c;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    iget-object v0, p0, Lr1/o;->h:Lq2/h1;

    .line 157
    .line 158
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move-object v3, v0

    .line 162
    check-cast v3, Lq2/z;

    .line 163
    .line 164
    invoke-virtual {v3, p0}, Lq2/z;->g1(Lq2/x;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, v0, Lq2/h1;->I:Lq2/p1;

    .line 168
    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    invoke-interface {v0}, Lq2/p1;->invalidate()V

    .line 172
    .line 173
    .line 174
    :cond_6
    if-nez p1, :cond_7

    .line 175
    .line 176
    invoke-static {p0, v2}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lq2/h1;->N0()V

    .line 181
    .line 182
    .line 183
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lq2/h0;->E()V

    .line 188
    .line 189
    .line 190
    :cond_7
    instance-of p1, v1, Lf0/s;

    .line 191
    .line 192
    if-eqz p1, :cond_8

    .line 193
    .line 194
    move-object p1, v1

    .line 195
    check-cast p1, Lf0/s;

    .line 196
    .line 197
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget v2, p1, Lf0/s;->a:I

    .line 202
    .line 203
    packed-switch v2, :pswitch_data_0

    .line 204
    .line 205
    .line 206
    iget-object p1, p1, Lf0/s;->b:Lz/m1;

    .line 207
    .line 208
    check-cast p1, Lg0/u;

    .line 209
    .line 210
    iput-object v0, p1, Lg0/u;->j:Lq2/h0;

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :pswitch_0
    iget-object p1, p1, Lf0/s;->b:Lz/m1;

    .line 214
    .line 215
    check-cast p1, Lf0/u;

    .line 216
    .line 217
    iput-object v0, p1, Lf0/u;->k:Lq2/h0;

    .line 218
    .line 219
    :cond_8
    :goto_2
    iget p1, p0, Lr1/o;->c:I

    .line 220
    .line 221
    and-int/lit16 p1, p1, 0x100

    .line 222
    .line 223
    if-eqz p1, :cond_9

    .line 224
    .line 225
    instance-of p1, v1, Lh0/e;

    .line 226
    .line 227
    if-eqz p1, :cond_9

    .line 228
    .line 229
    invoke-static {p0}, Lq2/f;->d(Lq2/c;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_9

    .line 234
    .line 235
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lq2/h0;->E()V

    .line 240
    .line 241
    .line 242
    :cond_9
    iget p1, p0, Lr1/o;->c:I

    .line 243
    .line 244
    and-int/lit8 v0, p1, 0x10

    .line 245
    .line 246
    if-eqz v0, :cond_a

    .line 247
    .line 248
    instance-of v0, v1, Lk2/d0;

    .line 249
    .line 250
    if-eqz v0, :cond_a

    .line 251
    .line 252
    check-cast v1, Lk2/d0;

    .line 253
    .line 254
    iget-object v0, v1, Lk2/d0;->d:Lba/a;

    .line 255
    .line 256
    iget-object v1, p0, Lr1/o;->h:Lq2/h1;

    .line 257
    .line 258
    iput-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    .line 259
    .line 260
    :cond_a
    and-int/lit8 p1, p1, 0x8

    .line 261
    .line 262
    if-eqz p1, :cond_b

    .line 263
    .line 264
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Lr2/u;

    .line 269
    .line 270
    invoke-virtual {p1}, Lr2/u;->F()V

    .line 271
    .line 272
    .line 273
    :cond_b
    return-void

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final B0()V
    .locals 5

    .line 1
    sget-object v0, Ld0/c;->c:Lp2/f;

    .line 2
    .line 3
    iget-boolean v1, p0, Lr1/o;->n:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "unInitializeModifier called on unattached node"

    .line 8
    .line 9
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lq2/c;->o:Lr1/n;

    .line 13
    .line 14
    iget v2, p0, Lr1/o;->c:I

    .line 15
    .line 16
    and-int/lit8 v2, v2, 0x20

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    instance-of v2, v1, Ld0/a0;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lr2/u;

    .line 29
    .line 30
    invoke-virtual {v2}, Lr2/u;->getModifierLocalManager()Lp2/c;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, v2, Lp2/c;->d:Lh1/e;

    .line 35
    .line 36
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v2, Lp2/c;->e:Lh1/e;

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lp2/c;->a()V

    .line 49
    .line 50
    .line 51
    :cond_1
    instance-of v2, v1, Ld0/a0;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    check-cast v1, Ld0/a0;

    .line 56
    .line 57
    iget-object v0, v0, Lp2/f;->a:Lf9/a;

    .line 58
    .line 59
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ld0/t0;

    .line 64
    .line 65
    iget-object v2, v1, Ld0/a0;->a:Ld0/t0;

    .line 66
    .line 67
    new-instance v3, Ld0/v;

    .line 68
    .line 69
    invoke-direct {v3, v2, v0}, Ld0/v;-><init>(Ld0/t0;Ld0/t0;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v1, Ld0/a0;->b:Lf1/k1;

    .line 73
    .line 74
    invoke-virtual {v4, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Ld0/q0;

    .line 78
    .line 79
    invoke-direct {v3, v0, v2}, Ld0/q0;-><init>(Ld0/t0;Ld0/t0;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v1, Ld0/a0;->c:Lf1/k1;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget v0, p0, Lr1/o;->c:I

    .line 88
    .line 89
    and-int/lit8 v0, v0, 0x8

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lr2/u;

    .line 98
    .line 99
    invoke-virtual {v0}, Lr2/u;->F()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method

.method public final C0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq2/c;->q:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lr2/u;

    .line 15
    .line 16
    invoke-virtual {v0}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lq2/e;->b:Lq2/e;

    .line 21
    .line 22
    new-instance v2, Lq2/b;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v2, p0, v3}, Lq2/b;-><init>(Lq2/c;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0, v1, v2}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final F()V
    .locals 0

    .line 1
    invoke-static {p0}, Lq2/f;->l(Lq2/o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lk2/d0;

    .line 9
    .line 10
    iget-object v0, v0, Lk2/d0;->d:Lba/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final L()Li2/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/c;->p:Lp2/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Lp2/b;->e:Lp2/b;

    .line 7
    .line 8
    return-object v0
.end method

.method public final U(Lo2/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final V(Lq2/h1;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Lh0/e;

    .line 9
    .line 10
    iget-object v0, p1, Lh0/e;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-boolean v1, p1, Lh0/e;->a:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p1, Lh0/e;->a:Z

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lw8/c;

    .line 31
    .line 32
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    invoke-interface {v2, v3}, Lw8/c;->f(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final Z(Ly2/j;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lq2/c;->o:Lr1/n;

    .line 6
    .line 7
    const-string v3, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v2, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 13
    .line 14
    new-instance v3, Ly2/j;

    .line 15
    .line 16
    invoke-direct {v3}, Ly2/j;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-boolean v4, v2, Landroidx/compose/ui/semantics/AppendedSemanticsElement;->a:Z

    .line 20
    .line 21
    iput-boolean v4, v3, Ly2/j;->c:Z

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/compose/ui/semantics/AppendedSemanticsElement;->b:Lf9/k;

    .line 24
    .line 25
    invoke-interface {v2, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Ly2/j;->a:Ls/h0;

    .line 34
    .line 35
    iget-boolean v4, v3, Ly2/j;->c:Z

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iput-boolean v5, v1, Ly2/j;->c:Z

    .line 41
    .line 42
    :cond_0
    iget-boolean v4, v3, Ly2/j;->d:Z

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    iput-boolean v5, v1, Ly2/j;->d:Z

    .line 47
    .line 48
    :cond_1
    iget-object v1, v3, Ly2/j;->a:Ls/h0;

    .line 49
    .line 50
    iget-object v3, v1, Ls/h0;->b:[Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v4, v1, Ls/h0;->c:[Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v1, v1, Ls/h0;->a:[J

    .line 55
    .line 56
    array-length v5, v1

    .line 57
    add-int/lit8 v5, v5, -0x2

    .line 58
    .line 59
    if-ltz v5, :cond_8

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    :goto_0
    aget-wide v8, v1, v7

    .line 63
    .line 64
    not-long v10, v8

    .line 65
    const/4 v12, 0x7

    .line 66
    shl-long/2addr v10, v12

    .line 67
    and-long/2addr v10, v8

    .line 68
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr v10, v12

    .line 74
    cmp-long v14, v10, v12

    .line 75
    .line 76
    if-eqz v14, :cond_7

    .line 77
    .line 78
    sub-int v10, v7, v5

    .line 79
    .line 80
    not-int v10, v10

    .line 81
    ushr-int/lit8 v10, v10, 0x1f

    .line 82
    .line 83
    const/16 v11, 0x8

    .line 84
    .line 85
    rsub-int/lit8 v10, v10, 0x8

    .line 86
    .line 87
    const/4 v12, 0x0

    .line 88
    :goto_1
    if-ge v12, v10, :cond_6

    .line 89
    .line 90
    const-wide/16 v13, 0xff

    .line 91
    .line 92
    and-long/2addr v13, v8

    .line 93
    const-wide/16 v15, 0x80

    .line 94
    .line 95
    cmp-long v17, v13, v15

    .line 96
    .line 97
    if-gez v17, :cond_5

    .line 98
    .line 99
    shl-int/lit8 v13, v7, 0x3

    .line 100
    .line 101
    add-int/2addr v13, v12

    .line 102
    aget-object v14, v3, v13

    .line 103
    .line 104
    aget-object v13, v4, v13

    .line 105
    .line 106
    check-cast v14, Ly2/u;

    .line 107
    .line 108
    invoke-virtual {v2, v14}, Ls/h0;->b(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    if-nez v15, :cond_2

    .line 113
    .line 114
    invoke-virtual {v2, v14, v13}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    instance-of v15, v13, Ly2/a;

    .line 119
    .line 120
    if-eqz v15, :cond_5

    .line 121
    .line 122
    invoke-virtual {v2, v14}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>"

    .line 127
    .line 128
    invoke-static {v15, v6}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    check-cast v15, Ly2/a;

    .line 132
    .line 133
    new-instance v6, Ly2/a;

    .line 134
    .line 135
    const/16 v16, 0x8

    .line 136
    .line 137
    iget-object v11, v15, Ly2/a;->a:Ljava/lang/String;

    .line 138
    .line 139
    if-nez v11, :cond_3

    .line 140
    .line 141
    move-object v11, v13

    .line 142
    check-cast v11, Ly2/a;

    .line 143
    .line 144
    iget-object v11, v11, Ly2/a;->a:Ljava/lang/String;

    .line 145
    .line 146
    :cond_3
    iget-object v15, v15, Ly2/a;->b:Lr8/e;

    .line 147
    .line 148
    if-nez v15, :cond_4

    .line 149
    .line 150
    check-cast v13, Ly2/a;

    .line 151
    .line 152
    iget-object v15, v13, Ly2/a;->b:Lr8/e;

    .line 153
    .line 154
    :cond_4
    invoke-direct {v6, v11, v15}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v14, v6}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    :goto_2
    const/16 v16, 0x8

    .line 162
    .line 163
    :goto_3
    shr-long v8, v8, v16

    .line 164
    .line 165
    add-int/lit8 v12, v12, 0x1

    .line 166
    .line 167
    const/16 v11, 0x8

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    const/16 v6, 0x8

    .line 171
    .line 172
    if-ne v10, v6, :cond_8

    .line 173
    .line 174
    :cond_7
    if-eq v7, v5, :cond_8

    .line 175
    .line 176
    add-int/lit8 v7, v7, 0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_8
    return-void
.end method

.method public final a()Ln3/c;
    .locals 1

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lo2/y;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3, p4}, Lo2/y;->b(Lo2/o0;Lo2/l0;J)Lo2/n0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final c(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lo2/y;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Lo2/y;->c(Lq2/p0;Lo2/l0;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final d(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lo2/y;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Lo2/y;->d(Lq2/p0;Lo2/l0;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final d0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lk2/d0;

    .line 9
    .line 10
    iget-object v0, v0, Lk2/d0;->d:Lba/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public final e(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lo2/y;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Lo2/y;->e(Lq2/p0;Lo2/l0;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final f(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lo2/y;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Lo2/y;->f(Lq2/p0;Lo2/l0;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final g()J
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {p0, v0}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v0, v0, Lo2/v0;->c:J

    .line 8
    .line 9
    invoke-static {v0, v1}, La/a;->S(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final g0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq2/c;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lq2/h0;->y:Ln3/m;

    .line 6
    .line 7
    return-object v0
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final synthetic j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final k()J
    .locals 2

    .line 1
    sget-wide v0, Lq2/b2;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final k0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/lang/ClassCastException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final l(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l0(Lk2/o;Lk2/p;J)V
    .locals 9

    .line 1
    iget-object p3, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string p4, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {p3, p4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast p3, Lk2/d0;

    .line 9
    .line 10
    iget-object p3, p3, Lk2/d0;->d:Lba/a;

    .line 11
    .line 12
    iget-object p4, p3, Lba/a;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p4, Lk2/d0;

    .line 15
    .line 16
    iget-object v0, p1, Lk2/o;->a:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    const/4 v4, 0x1

    .line 25
    if-ge v3, v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lk2/w;

    .line 32
    .line 33
    invoke-static {v5}, Lk2/v;->a(Lk2/w;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    invoke-static {v5}, Lk2/v;->c(Lk2/w;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_0

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v1, 0x1

    .line 51
    :goto_1
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x0

    .line 58
    :goto_2
    if-ge v5, v3, :cond_3

    .line 59
    .line 60
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lk2/w;

    .line 65
    .line 66
    invoke-virtual {v6}, Lk2/w;->b()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v3, 0x1

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    :goto_3
    const/4 v3, 0x0

    .line 79
    :goto_4
    iget-boolean v5, p4, Lk2/d0;->c:Z

    .line 80
    .line 81
    if-nez v5, :cond_8

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/4 v6, 0x0

    .line 88
    :goto_5
    if-ge v6, v5, :cond_6

    .line 89
    .line 90
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Lk2/w;

    .line 95
    .line 96
    invoke-static {v7}, Lk2/v;->a(Lk2/w;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_8

    .line 101
    .line 102
    invoke-static {v7}, Lk2/v;->c(Lk2/w;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_5

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_6
    if-eqz v3, :cond_7

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_7
    const/4 v3, 0x0

    .line 116
    goto :goto_7

    .line 117
    :cond_8
    :goto_6
    const/4 v3, 0x1

    .line 118
    :goto_7
    iget-object v5, p3, Lba/a;->c:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v5, Lk2/b0;

    .line 121
    .line 122
    sget-object v6, Lk2/b0;->c:Lk2/b0;

    .line 123
    .line 124
    sget-object v7, Lk2/p;->c:Lk2/p;

    .line 125
    .line 126
    if-eq v5, v6, :cond_d

    .line 127
    .line 128
    sget-object v5, Lk2/p;->a:Lk2/p;

    .line 129
    .line 130
    if-ne p2, v5, :cond_b

    .line 131
    .line 132
    if-eqz v3, :cond_b

    .line 133
    .line 134
    iput-object p1, p3, Lba/a;->d:Ljava/lang/Object;

    .line 135
    .line 136
    if-eqz v1, :cond_a

    .line 137
    .line 138
    iget-boolean v5, p4, Lk2/d0;->c:Z

    .line 139
    .line 140
    if-eqz v5, :cond_9

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_9
    const/4 v5, 0x0

    .line 144
    goto :goto_9

    .line 145
    :cond_a
    :goto_8
    const/4 v5, 0x1

    .line 146
    :goto_9
    invoke-virtual {p3, p1, v5}, Lba/a;->r(Lk2/o;Z)V

    .line 147
    .line 148
    .line 149
    :cond_b
    sget-object v5, Lk2/p;->b:Lk2/p;

    .line 150
    .line 151
    if-ne p2, v5, :cond_c

    .line 152
    .line 153
    if-eqz v1, :cond_c

    .line 154
    .line 155
    iget-object v5, p3, Lba/a;->d:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v5, Lk2/o;

    .line 158
    .line 159
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_c

    .line 164
    .line 165
    iget-boolean v5, p4, Lk2/d0;->c:Z

    .line 166
    .line 167
    if-eqz v5, :cond_c

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    const/4 v6, 0x0

    .line 174
    :goto_a
    if-ge v6, v5, :cond_c

    .line 175
    .line 176
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    check-cast v8, Lk2/w;

    .line 181
    .line 182
    invoke-virtual {v8}, Lk2/w;->a()V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_c
    if-ne p2, v7, :cond_d

    .line 189
    .line 190
    if-nez v3, :cond_d

    .line 191
    .line 192
    iget-object v3, p3, Lba/a;->d:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v3, Lk2/o;

    .line 195
    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_d

    .line 201
    .line 202
    invoke-virtual {p3, p1, v4}, Lba/a;->r(Lk2/o;Z)V

    .line 203
    .line 204
    .line 205
    :cond_d
    if-ne p2, v7, :cond_12

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    const/4 v3, 0x0

    .line 212
    :goto_b
    if-ge v3, p2, :cond_f

    .line 213
    .line 214
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Lk2/w;

    .line 219
    .line 220
    invoke-static {v4}, Lk2/v;->c(Lk2/w;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_e

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 228
    .line 229
    goto :goto_b

    .line 230
    :cond_f
    sget-object p2, Lk2/b0;->a:Lk2/b0;

    .line 231
    .line 232
    iput-object p2, p3, Lba/a;->c:Ljava/lang/Object;

    .line 233
    .line 234
    iget-object p2, p3, Lba/a;->e:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p2, Lk2/d0;

    .line 237
    .line 238
    iput-boolean v2, p2, Lk2/d0;->c:Z

    .line 239
    .line 240
    const/4 p2, 0x0

    .line 241
    iput-object p2, p3, Lba/a;->d:Ljava/lang/Object;

    .line 242
    .line 243
    :goto_c
    iget-object p2, p3, Lba/a;->d:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p2, Lk2/o;

    .line 246
    .line 247
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-eqz p2, :cond_12

    .line 252
    .line 253
    if-eqz v1, :cond_12

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    const/4 v1, 0x0

    .line 260
    :goto_d
    if-ge v1, p2, :cond_11

    .line 261
    .line 262
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Lk2/w;

    .line 267
    .line 268
    invoke-virtual {v3}, Lk2/w;->b()Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_10

    .line 273
    .line 274
    iget-boolean p2, p4, Lk2/d0;->c:Z

    .line 275
    .line 276
    if-nez p2, :cond_11

    .line 277
    .line 278
    invoke-virtual {p3, p1}, Lba/a;->G(Lk2/o;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 283
    .line 284
    goto :goto_d

    .line 285
    :cond_11
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    :goto_e
    if-ge v2, p1, :cond_12

    .line 290
    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    check-cast p2, Lk2/w;

    .line 296
    .line 297
    invoke-virtual {p2}, Lk2/w;->a()V

    .line 298
    .line 299
    .line 300
    add-int/lit8 v2, v2, 0x1

    .line 301
    .line 302
    goto :goto_e

    .line 303
    :cond_12
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p(Lw1/r;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v0, "onFocusEvent called on wrong node"

    .line 4
    .line 5
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/ClassCastException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public final q0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lq2/c;->A0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    instance-of v0, v0, Lk2/d0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lq2/c;->x()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final s(Lw1/k;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v0, "applyFocusProperties called on wrong node"

    .line 4
    .line 5
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/ClassCastException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public final s0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq2/c;->B0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final v(Lq2/j0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lx/p0;

    .line 9
    .line 10
    iget-object v0, v0, Lx/p0;->a:Lx/o0;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lx/o0;->a(Lq2/j0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final x()V
    .locals 12

    .line 1
    iget-object v0, p0, Lq2/c;->o:Lr1/n;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lk2/d0;

    .line 9
    .line 10
    iget-object v0, v0, Lk2/d0;->d:Lba/a;

    .line 11
    .line 12
    iget-object v1, v0, Lba/a;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lk2/b0;

    .line 15
    .line 16
    iget-object v2, v0, Lba/a;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lk2/d0;

    .line 19
    .line 20
    sget-object v3, Lk2/b0;->b:Lk2/b0;

    .line 21
    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    new-instance v1, Lk2/c0;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v1, v2, v3}, Lk2/c0;-><init>(Lk2/d0;I)V

    .line 32
    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v8, 0x3

    .line 37
    const/4 v9, 0x0

    .line 38
    move-wide v6, v4

    .line 39
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lk2/c0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lk2/b0;->a:Lk2/b0;

    .line 54
    .line 55
    iput-object v1, v0, Lba/a;->c:Ljava/lang/Object;

    .line 56
    .line 57
    iput-boolean v4, v2, Lk2/d0;->c:Z

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Lba/a;->d:Ljava/lang/Object;

    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public final y(Lp2/f;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lq2/c;->q:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr1/o;->a:Lr1/o;

    .line 7
    .line 8
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "visitAncestors called on an unattached node"

    .line 13
    .line 14
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lr1/o;->a:Lr1/o;

    .line 18
    .line 19
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 20
    .line 21
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    if-eqz v1, :cond_b

    .line 26
    .line 27
    iget-object v2, v1, Lq2/h0;->E:Lq2/d1;

    .line 28
    .line 29
    iget-object v2, v2, Lq2/d1;->f:Lr1/o;

    .line 30
    .line 31
    iget v2, v2, Lr1/o;->d:I

    .line 32
    .line 33
    and-int/lit8 v2, v2, 0x20

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_9

    .line 37
    .line 38
    :goto_1
    if-eqz v0, :cond_9

    .line 39
    .line 40
    iget v2, v0, Lr1/o;->c:I

    .line 41
    .line 42
    and-int/lit8 v2, v2, 0x20

    .line 43
    .line 44
    if-eqz v2, :cond_8

    .line 45
    .line 46
    move-object v2, v0

    .line 47
    move-object v4, v3

    .line 48
    :goto_2
    if-eqz v2, :cond_8

    .line 49
    .line 50
    instance-of v5, v2, Lp2/d;

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    check-cast v2, Lp2/d;

    .line 55
    .line 56
    invoke-interface {v2}, Lp2/d;->L()Li2/c;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5, p1}, Li2/c;->j(Lp2/f;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_7

    .line 65
    .line 66
    invoke-interface {v2}, Lp2/d;->L()Li2/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Li2/c;->q(Lp2/f;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_1
    iget v5, v2, Lr1/o;->c:I

    .line 76
    .line 77
    and-int/lit8 v5, v5, 0x20

    .line 78
    .line 79
    if-eqz v5, :cond_7

    .line 80
    .line 81
    instance-of v5, v2, Lq2/m;

    .line 82
    .line 83
    if-eqz v5, :cond_7

    .line 84
    .line 85
    move-object v5, v2

    .line 86
    check-cast v5, Lq2/m;

    .line 87
    .line 88
    iget-object v5, v5, Lq2/m;->p:Lr1/o;

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    :goto_3
    const/4 v7, 0x1

    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    iget v8, v5, Lr1/o;->c:I

    .line 95
    .line 96
    and-int/lit8 v8, v8, 0x20

    .line 97
    .line 98
    if-eqz v8, :cond_5

    .line 99
    .line 100
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    if-ne v6, v7, :cond_2

    .line 103
    .line 104
    move-object v2, v5

    .line 105
    goto :goto_4

    .line 106
    :cond_2
    if-nez v4, :cond_3

    .line 107
    .line 108
    new-instance v4, Lh1/e;

    .line 109
    .line 110
    const/16 v7, 0x10

    .line 111
    .line 112
    new-array v7, v7, [Lr1/o;

    .line 113
    .line 114
    invoke-direct {v4, v7}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    if-eqz v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {v4, v2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-object v2, v3

    .line 123
    :cond_4
    invoke-virtual {v4, v5}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_4
    iget-object v5, v5, Lr1/o;->f:Lr1/o;

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_6
    if-ne v6, v7, :cond_7

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    invoke-static {v4}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_9
    invoke-virtual {v1}, Lq2/h0;->v()Lq2/h0;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_a

    .line 145
    .line 146
    iget-object v0, v1, Lq2/h0;->E:Lq2/d1;

    .line 147
    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_a
    move-object v0, v3

    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_b
    iget-object p1, p1, Lp2/f;->a:Lf9/a;

    .line 157
    .line 158
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
