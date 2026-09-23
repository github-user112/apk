.class public final synthetic Lac/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lac/h;->a:I

    iput-object p2, p0, Lac/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljc/c;Ljc/b;)V
    .locals 0

    .line 2
    const/4 p2, 0x1

    iput p2, p0, Lac/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lac/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    iget-object v6, p0, Lac/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v6, Lf9/k;

    .line 19
    .line 20
    check-cast p1, Lk2/w;

    .line 21
    .line 22
    check-cast p2, Lk2/w;

    .line 23
    .line 24
    check-cast p3, Lx1/b;

    .line 25
    .line 26
    iget-wide p1, p2, Lk2/w;->c:J

    .line 27
    .line 28
    new-instance p3, Lx1/b;

    .line 29
    .line 30
    invoke-direct {p3, p1, p2}, Lx1/b;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v6, p3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v5

    .line 37
    :pswitch_0
    check-cast v6, Lu0/e;

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    check-cast p2, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    check-cast p3, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, v6, Lu0/e;->u:Lg3/q;

    .line 61
    .line 62
    invoke-interface {v0, p1}, Lg3/q;->a(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    :goto_0
    if-eqz p3, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, v6, Lu0/e;->u:Lg3/q;

    .line 70
    .line 71
    invoke-interface {v0, p2}, Lg3/q;->a(I)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    :goto_1
    iget-boolean v0, v6, Lu0/e;->t:Z

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_2
    iget-object v0, v6, Lu0/e;->r:Lg3/w;

    .line 82
    .line 83
    iget-wide v7, v0, Lg3/w;->b:J

    .line 84
    .line 85
    sget v0, Lb3/n0;->c:I

    .line 86
    .line 87
    shr-long v9, v7, v4

    .line 88
    .line 89
    long-to-int v0, v9

    .line 90
    if-ne p1, v0, :cond_3

    .line 91
    .line 92
    and-long/2addr v2, v7

    .line 93
    long-to-int v0, v2

    .line 94
    if-ne p2, v0, :cond_3

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sget-object v2, Ll0/i0;->a:Ll0/i0;

    .line 102
    .line 103
    if-ltz v0, :cond_6

    .line 104
    .line 105
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget-object v3, v6, Lu0/e;->r:Lg3/w;

    .line 110
    .line 111
    iget-object v3, v3, Lg3/w;->a:Lb3/g;

    .line 112
    .line 113
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-gt v0, v3, :cond_6

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    if-nez p3, :cond_5

    .line 123
    .line 124
    if-ne p1, p2, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    iget-object p3, v6, Lu0/e;->v:Lw0/r1;

    .line 128
    .line 129
    invoke-virtual {p3, v0}, Lw0/r1;->h(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    :goto_2
    iget-object p3, v6, Lu0/e;->v:Lw0/r1;

    .line 134
    .line 135
    invoke-virtual {p3, v5}, Lw0/r1;->s(Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, v2}, Lw0/r1;->p(Ll0/i0;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    iget-object p3, v6, Lu0/e;->s:Ll0/s0;

    .line 142
    .line 143
    iget-object p3, p3, Ll0/s0;->v:Ll0/s;

    .line 144
    .line 145
    new-instance v2, Lg3/w;

    .line 146
    .line 147
    iget-object v3, v6, Lu0/e;->r:Lg3/w;

    .line 148
    .line 149
    iget-object v3, v3, Lg3/w;->a:Lb3/g;

    .line 150
    .line 151
    invoke-static {p1, p2}, Lb3/d0;->b(II)J

    .line 152
    .line 153
    .line 154
    move-result-wide p1

    .line 155
    invoke-direct {v2, v3, p1, p2, v1}, Lg3/w;-><init>(Lb3/g;JLb3/n0;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v2}, Ll0/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const/4 v5, 0x1

    .line 162
    goto :goto_4

    .line 163
    :cond_6
    iget-object p1, v6, Lu0/e;->v:Lw0/r1;

    .line 164
    .line 165
    invoke-virtual {p1, v5}, Lw0/r1;->s(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lw0/r1;->p(Ll0/i0;)V

    .line 169
    .line 170
    .line 171
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    return-object p1

    .line 176
    :pswitch_1
    check-cast v6, Ll0/p1;

    .line 177
    .line 178
    check-cast p1, Lo2/o0;

    .line 179
    .line 180
    check-cast p2, Lo2/l0;

    .line 181
    .line 182
    check-cast p3, Ln3/a;

    .line 183
    .line 184
    iget-wide v0, v6, Ll0/p1;->f:J

    .line 185
    .line 186
    iget-wide v5, p3, Ln3/a;->a:J

    .line 187
    .line 188
    shr-long v7, v0, v4

    .line 189
    .line 190
    long-to-int v4, v7

    .line 191
    invoke-static {v5, v6}, Ln3/a;->j(J)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    iget-wide v8, p3, Ln3/a;->a:J

    .line 196
    .line 197
    invoke-static {v8, v9}, Ln3/a;->h(J)I

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    invoke-static {v4, v7, p3}, Li9/a;->n(III)I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    and-long/2addr v0, v2

    .line 206
    long-to-int p3, v0

    .line 207
    invoke-static {v8, v9}, Ln3/a;->i(J)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v8, v9}, Ln3/a;->g(J)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-static {p3, v0, v1}, Li9/a;->n(III)I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    const/4 v10, 0x0

    .line 220
    const/16 v11, 0xa

    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    invoke-static/range {v5 .. v11}, Ln3/a;->a(JIIIII)J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-interface {p2, v0, v1}, Lo2/l0;->u(J)Lo2/v0;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    iget p3, p2, Lo2/v0;->a:I

    .line 232
    .line 233
    iget v0, p2, Lo2/v0;->b:I

    .line 234
    .line 235
    new-instance v1, Ld0/i;

    .line 236
    .line 237
    const/4 v2, 0x6

    .line 238
    invoke-direct {v1, p2, v2}, Ld0/i;-><init>(Lo2/v0;I)V

    .line 239
    .line 240
    .line 241
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 242
    .line 243
    invoke-interface {p1, p3, v0, p2, v1}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    return-object p1

    .line 248
    :pswitch_2
    check-cast v6, Ljc/g;

    .line 249
    .line 250
    check-cast p1, Ljava/lang/Throwable;

    .line 251
    .line 252
    check-cast p2, Lr8/z;

    .line 253
    .line 254
    check-cast p3, Lw8/h;

    .line 255
    .line 256
    invoke-virtual {v6}, Ljc/g;->b()V

    .line 257
    .line 258
    .line 259
    return-object v5

    .line 260
    :pswitch_3
    check-cast v6, Ljc/c;

    .line 261
    .line 262
    check-cast p1, Ljava/lang/Throwable;

    .line 263
    .line 264
    check-cast p2, Lr8/z;

    .line 265
    .line 266
    check-cast p3, Lw8/h;

    .line 267
    .line 268
    sget-object p1, Ljc/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 269
    .line 270
    invoke-virtual {p1, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v1}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    return-object v5

    .line 277
    :pswitch_4
    check-cast v6, La8/q;

    .line 278
    .line 279
    check-cast p1, Ljava/lang/Throwable;

    .line 280
    .line 281
    check-cast p3, Lw8/h;

    .line 282
    .line 283
    invoke-virtual {v6, p1}, La8/q;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    return-object v5

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
