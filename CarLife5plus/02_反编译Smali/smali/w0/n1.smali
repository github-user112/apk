.class public final Lw0/n1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ll0/z0;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw0/r1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw0/n1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw0/n1;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lw0/n1;->b:Z

    return-void
.end method

.method public constructor <init>(Lw0/r1;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lw0/n1;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lw0/n1;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lw0/n1;->b:Z

    return-void
.end method

.method public constructor <init>(ZLw0/w0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lw0/n1;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lw0/n1;->b:Z

    iput-object p2, p0, Lw0/n1;->c:Ljava/lang/Object;

    return-void
.end method

.method private final f()V
    .locals 0

    .line 1
    return-void
.end method

.method private final g()V
    .locals 0

    .line 1
    return-void
.end method

.method private final i(J)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 11

    .line 1
    iget v0, p0, Lw0/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lw0/n1;->b:Z

    .line 7
    .line 8
    iget-object p2, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p2, Lw0/w0;

    .line 11
    .line 12
    invoke-virtual {p2}, Lw0/w0;->f()Ll0/h0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p2}, Lw0/w0;->g()Lw0/z;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lw0/z;->a:Lw0/y;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, v0, Lw0/z;->b:Lw0/y;

    .line 32
    .line 33
    :goto_0
    iget-object v2, p2, Lw0/w0;->a:Lw0/c1;

    .line 34
    .line 35
    iget-object v2, v2, Lw0/c1;->c:Ls/a0;

    .line 36
    .line 37
    iget-wide v3, v1, Lw0/y;->c:J

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    check-cast v1, Lw0/p;

    .line 46
    .line 47
    invoke-virtual {v1}, Lw0/p;->c()Lo2/w;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1, v0, p1}, Lw0/p;->a(Lw0/z;Z)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    const-wide v3, 0x7fffffff7fffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v3, v0

    .line 63
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmp-long p1, v3, v5

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {v0, v1}, Lw0/o0;->a(J)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p2}, Lw0/w0;->k()Lo2/w;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1, v2, v0, v1}, Lo2/w;->p(Lo2/w;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    iget-object p1, p2, Lw0/w0;->n:Lf1/k1;

    .line 86
    .line 87
    new-instance v2, Lx1/b;

    .line 88
    .line 89
    invoke-direct {v2, v0, v1}, Lx1/b;-><init>(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p2, Lw0/w0;->o:Lf1/k1;

    .line 96
    .line 97
    new-instance p2, Lx1/b;

    .line 98
    .line 99
    const-wide/16 v0, 0x0

    .line 100
    .line 101
    invoke-direct {p2, v0, v1}, Lx1/b;-><init>(J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void

    .line 108
    :cond_3
    const-string p1, "Current selectable should have layout coordinates."

    .line 109
    .line 110
    invoke-static {p1}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 111
    .line 112
    .line 113
    new-instance p1, Lac/p;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_4
    const-string p1, "SelectionRegistrar should contain the current selection\'s selectableIds"

    .line 120
    .line 121
    invoke-static {p1}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 122
    .line 123
    .line 124
    new-instance p1, Lac/p;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :pswitch_0
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 131
    .line 132
    move-object v1, v0

    .line 133
    check-cast v1, Lw0/r1;

    .line 134
    .line 135
    iget-object v0, v1, Lw0/r1;->q:Lf1/k1;

    .line 136
    .line 137
    invoke-virtual {v1}, Lw0/r1;->j()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Ll0/h0;

    .line 148
    .line 149
    if-eqz v2, :cond_5

    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_5
    sget-object v2, Ll0/h0;->c:Ll0/h0;

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const/4 v0, -0x1

    .line 159
    iput v0, v1, Lw0/r1;->s:I

    .line 160
    .line 161
    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lw0/n1;->b:Z

    .line 163
    .line 164
    invoke-virtual {v1}, Lw0/r1;->n()V

    .line 165
    .line 166
    .line 167
    iget-object v2, v1, Lw0/r1;->d:Ll0/s0;

    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    invoke-virtual {v2}, Ll0/s0;->d()Ll0/q1;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    invoke-virtual {v2, p1, p2}, Ll0/q1;->c(J)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-ne v2, v0, :cond_7

    .line 183
    .line 184
    invoke-virtual {v1}, Lw0/r1;->m()Lg3/w;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v0, v0, Lg3/w;->a:Lb3/g;

    .line 189
    .line 190
    iget-object v0, v0, Lb3/g;->b:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_6

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_6
    invoke-virtual {v1, v3}, Lw0/r1;->h(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lw0/r1;->m()Lg3/w;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-wide v2, Lb3/n0;->b:J

    .line 208
    .line 209
    const/4 v4, 0x5

    .line 210
    const/4 v5, 0x0

    .line 211
    invoke-static {v0, v5, v2, v3, v4}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    sget-object v7, Lw0/b0;->e:Lw0/a0;

    .line 216
    .line 217
    const/4 v8, 0x1

    .line 218
    const/4 v5, 0x1

    .line 219
    const/4 v6, 0x0

    .line 220
    move-wide v3, p1

    .line 221
    invoke-static/range {v1 .. v8}, Lw0/r1;->c(Lw0/r1;Lg3/w;JZZLw0/a0;Z)J

    .line 222
    .line 223
    .line 224
    move-result-wide p1

    .line 225
    move-wide v9, v3

    .line 226
    move-object v4, v1

    .line 227
    move-wide v1, v9

    .line 228
    new-instance v0, Lb3/n0;

    .line 229
    .line 230
    invoke-direct {v0, p1, p2}, Lb3/n0;-><init>(J)V

    .line 231
    .line 232
    .line 233
    iput-object v0, v4, Lw0/r1;->o:Lb3/n0;

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_7
    move-object v4, v1

    .line 237
    move-wide v1, p1

    .line 238
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 239
    .line 240
    if-eqz p1, :cond_9

    .line 241
    .line 242
    invoke-virtual {p1}, Ll0/s0;->d()Ll0/q1;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_9

    .line 247
    .line 248
    invoke-virtual {p1, v1, v2, v0}, Ll0/q1;->b(JZ)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    iget-object p2, v4, Lw0/r1;->b:Lg3/q;

    .line 253
    .line 254
    invoke-interface {p2, p1}, Lg3/q;->a(I)I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-virtual {v4}, Lw0/r1;->m()Lg3/w;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget-object p2, p2, Lg3/w;->a:Lb3/g;

    .line 263
    .line 264
    invoke-static {p1, p1}, Lb3/d0;->b(II)J

    .line 265
    .line 266
    .line 267
    move-result-wide v5

    .line 268
    invoke-static {p2, v5, v6}, Lw0/r1;->e(Lb3/g;J)Lg3/w;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {v4, v3}, Lw0/r1;->h(Z)V

    .line 273
    .line 274
    .line 275
    iget-object p2, v4, Lw0/r1;->j:Lg2/a;

    .line 276
    .line 277
    if-eqz p2, :cond_8

    .line 278
    .line 279
    const/16 v0, 0x9

    .line 280
    .line 281
    invoke-interface {p2, v0}, Lg2/a;->a(I)V

    .line 282
    .line 283
    .line 284
    :cond_8
    iget-object p2, v4, Lw0/r1;->c:Lf9/k;

    .line 285
    .line 286
    invoke-interface {p2, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    iget-wide p1, p1, Lg3/w;->b:J

    .line 290
    .line 291
    new-instance v0, Lb3/n0;

    .line 292
    .line 293
    invoke-direct {v0, p1, p2}, Lb3/n0;-><init>(J)V

    .line 294
    .line 295
    .line 296
    iput-object v0, v4, Lw0/r1;->v:Lb3/n0;

    .line 297
    .line 298
    :cond_9
    iput-boolean v3, p0, Lw0/n1;->b:Z

    .line 299
    .line 300
    :goto_2
    sget-object p1, Ll0/i0;->a:Ll0/i0;

    .line 301
    .line 302
    invoke-virtual {v4, p1}, Lw0/r1;->p(Ll0/i0;)V

    .line 303
    .line 304
    .line 305
    iput-wide v1, v4, Lw0/r1;->n:J

    .line 306
    .line 307
    new-instance p1, Lx1/b;

    .line 308
    .line 309
    invoke-direct {p1, v1, v2}, Lx1/b;-><init>(J)V

    .line 310
    .line 311
    .line 312
    iget-object p2, v4, Lw0/r1;->r:Lf1/k1;

    .line 313
    .line 314
    invoke-virtual {p2, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    const-wide/16 p1, 0x0

    .line 318
    .line 319
    iput-wide p1, v4, Lw0/r1;->p:J

    .line 320
    .line 321
    :cond_a
    :goto_3
    :pswitch_1
    return-void

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lw0/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/w0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lw0/w0;->x:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Lw0/w0;->p()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lw0/w0;->r:Lf1/k1;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lw0/w0;->s:Lf1/k1;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Lw0/n1;->h()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lw0/r1;

    .line 35
    .line 36
    iget-object v1, v0, Lw0/r1;->q:Lf1/k1;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lw0/r1;->r:Lf1/k1;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lw0/r1;->s(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lw0/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/w0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lw0/w0;->x:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Lw0/w0;->p()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lw0/w0;->r:Lf1/k1;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lw0/w0;->s:Lf1/k1;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :pswitch_0
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lw0/r1;

    .line 31
    .line 32
    iget-object v1, v0, Lw0/r1;->q:Lf1/k1;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lw0/r1;->r:Lf1/k1;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lw0/r1;->s(Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 10

    .line 1
    iget v0, p0, Lw0/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/w0;

    .line 9
    .line 10
    iget-boolean v1, p0, Lw0/n1;->b:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Lw0/w0;->p:Lf1/k1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lx1/b;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, v0, Lw0/w0;->q:Lf1/k1;

    .line 24
    .line 25
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lx1/b;

    .line 30
    .line 31
    :goto_0
    if-eqz v2, :cond_7

    .line 32
    .line 33
    invoke-virtual {v0}, Lw0/w0;->g()Lw0/z;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v3, v2, Lw0/z;->a:Lw0/y;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v3, v2, Lw0/z;->b:Lw0/y;

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0, v3}, Lw0/w0;->d(Lw0/y;)Lw0/p;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v3}, Lw0/p;->c()Lo2/w;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    invoke-virtual {v3, v2, v1}, Lw0/p;->a(Lw0/z;Z)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    const-wide v5, 0x7fffffff7fffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v5, v2

    .line 71
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    cmp-long v9, v5, v7

    .line 77
    .line 78
    if-nez v9, :cond_5

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    invoke-static {v2, v3}, Lw0/o0;->a(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {v0}, Lw0/w0;->k()Lo2/w;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v5, v4, v2, v3}, Lo2/w;->p(Lo2/w;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    new-instance v4, Lx1/b;

    .line 94
    .line 95
    invoke-direct {v4, v2, v3}, Lx1/b;-><init>(J)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v0, Lw0/w0;->s:Lf1/k1;

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    sget-object v1, Ll0/h0;->b:Ll0/h0;

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    sget-object v1, Ll0/h0;->c:Ll0/h0;

    .line 109
    .line 110
    :goto_2
    iget-object v2, v0, Lw0/w0;->r:Lf1/k1;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    iput-boolean v1, v0, Lw0/w0;->x:Z

    .line 117
    .line 118
    invoke-virtual {v0}, Lw0/w0;->p()V

    .line 119
    .line 120
    .line 121
    :cond_7
    :goto_3
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Lw0/r1;

    .line 125
    .line 126
    iget-boolean v1, p0, Lw0/n1;->b:Z

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    sget-object v2, Ll0/h0;->b:Ll0/h0;

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_8
    sget-object v2, Ll0/h0;->c:Ll0/h0;

    .line 134
    .line 135
    :goto_4
    iget-object v3, v0, Lw0/r1;->q:Lf1/k1;

    .line 136
    .line 137
    invoke-virtual {v3, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lw0/r1;->k(Z)J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    invoke-static {v1, v2}, Lw0/o0;->a(J)J

    .line 145
    .line 146
    .line 147
    move-result-wide v1

    .line 148
    iget-object v3, v0, Lw0/r1;->d:Ll0/s0;

    .line 149
    .line 150
    if-eqz v3, :cond_b

    .line 151
    .line 152
    invoke-virtual {v3}, Ll0/s0;->d()Ll0/q1;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v3, :cond_9

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-virtual {v3, v1, v2}, Ll0/q1;->e(J)J

    .line 160
    .line 161
    .line 162
    move-result-wide v1

    .line 163
    iput-wide v1, v0, Lw0/r1;->n:J

    .line 164
    .line 165
    new-instance v3, Lx1/b;

    .line 166
    .line 167
    invoke-direct {v3, v1, v2}, Lx1/b;-><init>(J)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lw0/r1;->r:Lf1/k1;

    .line 171
    .line 172
    invoke-virtual {v1, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    const-wide/16 v1, 0x0

    .line 176
    .line 177
    iput-wide v1, v0, Lw0/r1;->p:J

    .line 178
    .line 179
    const/4 v1, -0x1

    .line 180
    iput v1, v0, Lw0/r1;->s:I

    .line 181
    .line 182
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 183
    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    iget-object v1, v1, Ll0/s0;->q:Lf1/k1;

    .line 187
    .line 188
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lw0/r1;->s(Z)V

    .line 195
    .line 196
    .line 197
    :cond_b
    :goto_5
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget v3, v0, Lw0/n1;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lw0/n1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v4, v3

    .line 13
    check-cast v4, Lw0/w0;

    .line 14
    .line 15
    iget-object v3, v4, Lw0/w0;->n:Lf1/k1;

    .line 16
    .line 17
    iget-object v11, v4, Lw0/w0;->o:Lf1/k1;

    .line 18
    .line 19
    invoke-virtual {v4}, Lw0/w0;->f()Ll0/h0;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v11}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lx1/b;

    .line 31
    .line 32
    iget-wide v5, v5, Lx1/b;->a:J

    .line 33
    .line 34
    invoke-static {v5, v6, v1, v2}, Lx1/b;->h(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    new-instance v5, Lx1/b;

    .line 39
    .line 40
    invoke-direct {v5, v1, v2}, Lx1/b;-><init>(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v11, v5}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lx1/b;

    .line 51
    .line 52
    iget-wide v1, v1, Lx1/b;->a:J

    .line 53
    .line 54
    invoke-virtual {v11}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lx1/b;

    .line 59
    .line 60
    iget-wide v5, v5, Lx1/b;->a:J

    .line 61
    .line 62
    invoke-static {v1, v2, v5, v6}, Lx1/b;->h(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lx1/b;

    .line 71
    .line 72
    iget-wide v7, v1, Lx1/b;->a:J

    .line 73
    .line 74
    iget-boolean v9, v0, Lw0/n1;->b:Z

    .line 75
    .line 76
    sget-object v10, Lw0/b0;->g:Lw0/a0;

    .line 77
    .line 78
    invoke-virtual/range {v4 .. v10}, Lw0/w0;->o(JJZLw0/a0;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    new-instance v1, Lx1/b;

    .line 85
    .line 86
    invoke-direct {v1, v5, v6}, Lx1/b;-><init>(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lx1/b;

    .line 93
    .line 94
    const-wide/16 v2, 0x0

    .line 95
    .line 96
    invoke-direct {v1, v2, v3}, Lx1/b;-><init>(J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void

    .line 103
    :pswitch_0
    sget-object v18, Lw0/b0;->e:Lw0/a0;

    .line 104
    .line 105
    iget-object v3, v0, Lw0/n1;->c:Ljava/lang/Object;

    .line 106
    .line 107
    move-object v4, v3

    .line 108
    check-cast v4, Lw0/r1;

    .line 109
    .line 110
    invoke-virtual {v4}, Lw0/r1;->j()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_8

    .line 115
    .line 116
    invoke-virtual {v4}, Lw0/r1;->m()Lg3/w;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v3, v3, Lg3/w;->a:Lb3/g;

    .line 121
    .line 122
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_2

    .line 129
    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :cond_2
    iget-wide v5, v4, Lw0/r1;->p:J

    .line 133
    .line 134
    invoke-static {v5, v6, v1, v2}, Lx1/b;->h(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    iput-wide v1, v4, Lw0/r1;->p:J

    .line 139
    .line 140
    iget-object v1, v4, Lw0/r1;->d:Ll0/s0;

    .line 141
    .line 142
    const/4 v2, 0x0

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    invoke-virtual {v1}, Ll0/s0;->d()Ll0/q1;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    iget-wide v5, v4, Lw0/r1;->n:J

    .line 152
    .line 153
    iget-wide v7, v4, Lw0/r1;->p:J

    .line 154
    .line 155
    invoke-static {v5, v6, v7, v8}, Lx1/b;->h(JJ)J

    .line 156
    .line 157
    .line 158
    move-result-wide v5

    .line 159
    new-instance v3, Lx1/b;

    .line 160
    .line 161
    invoke-direct {v3, v5, v6}, Lx1/b;-><init>(J)V

    .line 162
    .line 163
    .line 164
    iget-object v5, v4, Lw0/r1;->r:Lf1/k1;

    .line 165
    .line 166
    invoke-virtual {v5, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v3, v4, Lw0/r1;->o:Lb3/n0;

    .line 170
    .line 171
    if-nez v3, :cond_4

    .line 172
    .line 173
    invoke-virtual {v4}, Lw0/r1;->i()Lx1/b;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iget-wide v5, v3, Lx1/b;->a:J

    .line 181
    .line 182
    invoke-virtual {v1, v5, v6}, Ll0/q1;->c(J)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_4

    .line 187
    .line 188
    iget-object v3, v4, Lw0/r1;->b:Lg3/q;

    .line 189
    .line 190
    iget-wide v5, v4, Lw0/r1;->n:J

    .line 191
    .line 192
    const/4 v7, 0x1

    .line 193
    invoke-virtual {v1, v5, v6, v7}, Ll0/q1;->b(JZ)I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-interface {v3, v5}, Lg3/q;->a(I)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iget-object v5, v4, Lw0/r1;->b:Lg3/q;

    .line 202
    .line 203
    invoke-virtual {v4}, Lw0/r1;->i()Lx1/b;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-wide v8, v6, Lx1/b;->a:J

    .line 211
    .line 212
    invoke-virtual {v1, v8, v9, v7}, Ll0/q1;->b(JZ)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-interface {v5, v1}, Lg3/q;->a(I)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-ne v3, v1, :cond_3

    .line 221
    .line 222
    sget-object v18, Lw0/b0;->d:Lw0/a0;

    .line 223
    .line 224
    :cond_3
    move-object/from16 v10, v18

    .line 225
    .line 226
    invoke-virtual {v4}, Lw0/r1;->m()Lg3/w;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v4}, Lw0/r1;->i()Lx1/b;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-wide v6, v1, Lx1/b;->a:J

    .line 238
    .line 239
    const/4 v9, 0x0

    .line 240
    const/4 v11, 0x1

    .line 241
    const/4 v8, 0x0

    .line 242
    invoke-static/range {v4 .. v11}, Lw0/r1;->c(Lw0/r1;Lg3/w;JZZLw0/a0;Z)J

    .line 243
    .line 244
    .line 245
    move-result-wide v5

    .line 246
    goto :goto_2

    .line 247
    :cond_4
    iget-object v3, v4, Lw0/r1;->o:Lb3/n0;

    .line 248
    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    iget-wide v5, v3, Lb3/n0;->a:J

    .line 252
    .line 253
    const/16 v3, 0x20

    .line 254
    .line 255
    shr-long/2addr v5, v3

    .line 256
    long-to-int v3, v5

    .line 257
    goto :goto_1

    .line 258
    :cond_5
    iget-wide v5, v4, Lw0/r1;->n:J

    .line 259
    .line 260
    invoke-virtual {v1, v5, v6, v2}, Ll0/q1;->b(JZ)I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    :goto_1
    invoke-virtual {v4}, Lw0/r1;->i()Lx1/b;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-wide v5, v5, Lx1/b;->a:J

    .line 272
    .line 273
    invoke-virtual {v1, v5, v6, v2}, Ll0/q1;->b(JZ)I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    iget-object v5, v4, Lw0/r1;->o:Lb3/n0;

    .line 278
    .line 279
    if-nez v5, :cond_6

    .line 280
    .line 281
    if-ne v3, v1, :cond_6

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_6
    invoke-virtual {v4}, Lw0/r1;->m()Lg3/w;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    invoke-virtual {v4}, Lw0/r1;->i()Lx1/b;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iget-wide v14, v1, Lx1/b;->a:J

    .line 296
    .line 297
    const/16 v17, 0x0

    .line 298
    .line 299
    const/16 v19, 0x1

    .line 300
    .line 301
    const/16 v16, 0x0

    .line 302
    .line 303
    move-object v12, v4

    .line 304
    invoke-static/range {v12 .. v19}, Lw0/r1;->c(Lw0/r1;Lg3/w;JZZLw0/a0;Z)J

    .line 305
    .line 306
    .line 307
    move-result-wide v5

    .line 308
    :goto_2
    iget-object v1, v4, Lw0/r1;->o:Lb3/n0;

    .line 309
    .line 310
    invoke-static {v5, v6, v1}, Lb3/n0;->a(JLjava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_7

    .line 315
    .line 316
    iput-boolean v2, v0, Lw0/n1;->b:Z

    .line 317
    .line 318
    :cond_7
    invoke-virtual {v4, v2}, Lw0/r1;->s(Z)V

    .line 319
    .line 320
    .line 321
    :cond_8
    :goto_3
    return-void

    .line 322
    :pswitch_1
    iget-object v3, v0, Lw0/n1;->c:Ljava/lang/Object;

    .line 323
    .line 324
    move-object v4, v3

    .line 325
    check-cast v4, Lw0/r1;

    .line 326
    .line 327
    iget-wide v5, v4, Lw0/r1;->p:J

    .line 328
    .line 329
    invoke-static {v5, v6, v1, v2}, Lx1/b;->h(JJ)J

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    iput-wide v1, v4, Lw0/r1;->p:J

    .line 334
    .line 335
    iget-wide v5, v4, Lw0/r1;->n:J

    .line 336
    .line 337
    invoke-static {v5, v6, v1, v2}, Lx1/b;->h(JJ)J

    .line 338
    .line 339
    .line 340
    move-result-wide v1

    .line 341
    new-instance v3, Lx1/b;

    .line 342
    .line 343
    invoke-direct {v3, v1, v2}, Lx1/b;-><init>(J)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v4, Lw0/r1;->r:Lf1/k1;

    .line 347
    .line 348
    invoke-virtual {v1, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Lw0/r1;->m()Lg3/w;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v4}, Lw0/r1;->i()Lx1/b;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    iget-wide v6, v1, Lx1/b;->a:J

    .line 363
    .line 364
    iget-boolean v9, v0, Lw0/n1;->b:Z

    .line 365
    .line 366
    sget-object v10, Lw0/b0;->g:Lw0/a0;

    .line 367
    .line 368
    const/4 v11, 0x1

    .line 369
    const/4 v8, 0x0

    .line 370
    invoke-static/range {v4 .. v11}, Lw0/r1;->c(Lw0/r1;Lg3/w;JZZLw0/a0;Z)J

    .line 371
    .line 372
    .line 373
    const/4 v1, 0x0

    .line 374
    invoke-virtual {v4, v1}, Lw0/r1;->s(Z)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    nop

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw0/r1;

    .line 4
    .line 5
    iget-object v1, v0, Lw0/r1;->q:Lf1/k1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lw0/r1;->r:Lf1/k1;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lw0/r1;->s(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-wide v3, v3, Lg3/w;->b:J

    .line 25
    .line 26
    invoke-static {v3, v4}, Lb3/n0;->c(J)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    sget-object v4, Ll0/i0;->c:Ll0/i0;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v4, Ll0/i0;->b:Ll0/i0;

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v4}, Lw0/r1;->p(Ll0/i0;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Lw0/r1;->d:Ll0/s0;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    invoke-static {v0, v1}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v6, 0x0

    .line 56
    :goto_1
    iget-object v4, v4, Ll0/s0;->m:Lf1/k1;

    .line 57
    .line 58
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v4, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v4, v0, Lw0/r1;->d:Ll0/s0;

    .line 66
    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    invoke-static {v0, v5}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v6, 0x0

    .line 80
    :goto_2
    iget-object v4, v4, Ll0/s0;->n:Lf1/k1;

    .line 81
    .line 82
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v4, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object v4, v0, Lw0/r1;->d:Ll0/s0;

    .line 90
    .line 91
    if-eqz v4, :cond_6

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-static {v0, v1}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/4 v1, 0x0

    .line 103
    :goto_3
    iget-object v3, v4, Ll0/s0;->o:Lf1/k1;

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v3, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    iget-boolean v1, p0, Lw0/n1;->b:Z

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    iget-object v1, v0, Lw0/r1;->o:Lb3/n0;

    .line 117
    .line 118
    invoke-static {v0, v1}, Lw0/r1;->a(Lw0/r1;Lb3/n0;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    iput-object v2, v0, Lw0/r1;->o:Lb3/n0;

    .line 122
    .line 123
    return-void
.end method

.method public final onCancel()V
    .locals 3

    .line 1
    iget v0, p0, Lw0/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/n1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/w0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lw0/w0;->x:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Lw0/w0;->p()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lw0/w0;->r:Lf1/k1;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lw0/w0;->s:Lf1/k1;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Lw0/n1;->h()V

    .line 29
    .line 30
    .line 31
    :pswitch_1
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
