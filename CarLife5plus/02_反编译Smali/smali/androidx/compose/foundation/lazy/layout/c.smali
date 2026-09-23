.class public final Landroidx/compose/foundation/lazy/layout/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Lh0/h0;

.field public final synthetic b:Lr1/p;

.field public final synthetic c:Lf0/k;

.field public final synthetic d:Lf1/b1;


# direct methods
.method public constructor <init>(Lh0/h0;Lr1/p;Lf0/k;Lf1/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/c;->a:Lh0/h0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/c;->b:Lr1/p;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/c;->c:Lf0/k;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/c;->d:Lf1/b1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lo1/b;

    .line 2
    .line 3
    check-cast p2, Lf1/s;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 15
    .line 16
    if-ne p3, v0, :cond_0

    .line 17
    .line 18
    new-instance p3, Lh0/t;

    .line 19
    .line 20
    new-instance v1, La8/f;

    .line 21
    .line 22
    const/16 v2, 0x1c

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/c;->d:Lf1/b1;

    .line 25
    .line 26
    invoke-direct {v1, v3, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p3, p1, v1}, Lh0/t;-><init>(Lo1/b;La8/f;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    move-object v3, p3

    .line 36
    check-cast v3, Lh0/t;

    .line 37
    .line 38
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    new-instance p1, Lo2/h1;

    .line 45
    .line 46
    new-instance p3, Landroid/support/v4/media/session/t;

    .line 47
    .line 48
    invoke-direct {p3, v3}, Landroid/support/v4/media/session/t;-><init>(Lh0/t;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p3}, Lo2/h1;-><init>(Landroid/support/v4/media/session/t;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    move-object v4, p1

    .line 58
    check-cast v4, Lo2/h1;

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/c;->a:Lh0/h0;

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    if-eqz v2, :cond_9

    .line 64
    .line 65
    const p3, 0x67eb8deb

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Lf1/s;->W(I)V

    .line 69
    .line 70
    .line 71
    const p3, 0x34e696b7

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Lf1/s;->W(I)V

    .line 75
    .line 76
    .line 77
    sget-object p3, Lh0/t0;->a:Lh0/s0;

    .line 78
    .line 79
    if-eqz p3, :cond_2

    .line 80
    .line 81
    const v1, 0x5034f7f0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 88
    .line 89
    .line 90
    :goto_0
    move-object v5, p3

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const p3, 0x5035b7a1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Lf1/s;->W(I)V

    .line 96
    .line 97
    .line 98
    sget-object p3, Lr2/n0;->f:Lf1/w2;

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-nez v1, :cond_3

    .line 115
    .line 116
    if-ne v5, v0, :cond_6

    .line 117
    .line 118
    :cond_3
    const v1, 0x7f08004b

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    instance-of v6, v5, Lh0/r0;

    .line 126
    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    check-cast v5, Lh0/r0;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const/4 v5, 0x0

    .line 133
    :goto_1
    if-nez v5, :cond_5

    .line 134
    .line 135
    new-instance v5, Lh0/b;

    .line 136
    .line 137
    invoke-direct {v5, p3}, Lh0/b;-><init>(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-virtual {p2, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    move-object p3, v5

    .line 147
    check-cast p3, Lh0/r0;

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :goto_2
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 154
    .line 155
    .line 156
    const/4 p3, 0x4

    .line 157
    new-array p3, p3, [Ljava/lang/Object;

    .line 158
    .line 159
    aput-object v2, p3, p1

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    aput-object v3, p3, v1

    .line 163
    .line 164
    const/4 v1, 0x2

    .line 165
    aput-object v4, p3, v1

    .line 166
    .line 167
    const/4 v1, 0x3

    .line 168
    aput-object v5, p3, v1

    .line 169
    .line 170
    invoke-virtual {p2, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {p2, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    or-int/2addr v1, v6

    .line 179
    invoke-virtual {p2, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    or-int/2addr v1, v6

    .line 184
    invoke-virtual {p2, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    or-int/2addr v1, v6

    .line 189
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    if-nez v1, :cond_7

    .line 194
    .line 195
    if-ne v6, v0, :cond_8

    .line 196
    .line 197
    :cond_7
    new-instance v1, La8/h;

    .line 198
    .line 199
    const/4 v6, 0x2

    .line 200
    invoke-direct/range {v1 .. v6}, La8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    move-object v6, v1

    .line 207
    :cond_8
    check-cast v6, Lf9/k;

    .line 208
    .line 209
    invoke-static {p3, v6, p2}, Lf1/b;->e([Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    const p3, 0x67f47fcd

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, p3}, Lf1/s;->W(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 223
    .line 224
    .line 225
    :goto_3
    sget p1, Lh0/i0;->a:I

    .line 226
    .line 227
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/c;->b:Lr1/p;

    .line 228
    .line 229
    if-eqz v2, :cond_b

    .line 230
    .line 231
    new-instance p3, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    .line 232
    .line 233
    invoke-direct {p3, v2}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Lh0/h0;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p1, p3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    if-nez p3, :cond_a

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_a
    move-object p1, p3

    .line 244
    :cond_b
    :goto_4
    invoke-virtual {p2, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p3

    .line 248
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/c;->c:Lf0/k;

    .line 249
    .line 250
    invoke-virtual {p2, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    or-int/2addr p3, v2

    .line 255
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    if-nez p3, :cond_c

    .line 260
    .line 261
    if-ne v2, v0, :cond_d

    .line 262
    .line 263
    :cond_c
    new-instance v2, La8/w;

    .line 264
    .line 265
    const/4 p3, 0x7

    .line 266
    invoke-direct {v2, p3, v3, v1}, La8/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_d
    check-cast v2, Lf9/n;

    .line 273
    .line 274
    const/16 p3, 0x8

    .line 275
    .line 276
    invoke-static {v4, p1, v2, p2, p3}, Lo2/d1;->a(Lo2/h1;Lr1/p;Lf9/n;Lf1/s;I)V

    .line 277
    .line 278
    .line 279
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 280
    .line 281
    return-object p1
.end method
