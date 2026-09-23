.class public final Lr2/g2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/p1;


# instance fields
.field public final a:Lr2/u;

.field public b:Lf9/n;

.field public c:Lf9/a;

.field public d:Z

.field public final e:Lr2/z1;

.field public f:Z

.field public g:Z

.field public h:Ld7/q;

.field public final i:Lk2/e;

.field public final j:Ly1/p;

.field public k:J

.field public final l:Lr2/k1;

.field public m:I


# direct methods
.method public constructor <init>(Lr2/u;Lf9/n;Lf9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/g2;->a:Lr2/u;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/g2;->b:Lf9/n;

    .line 7
    .line 8
    iput-object p3, p0, Lr2/g2;->c:Lf9/a;

    .line 9
    .line 10
    new-instance p2, Lr2/z1;

    .line 11
    .line 12
    invoke-direct {p2}, Lr2/z1;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lr2/g2;->e:Lr2/z1;

    .line 16
    .line 17
    new-instance p2, Lk2/e;

    .line 18
    .line 19
    sget-object p3, Lr2/f1;->c:Lr2/f1;

    .line 20
    .line 21
    invoke-direct {p2, p3}, Lk2/e;-><init>(Lf9/n;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lr2/g2;->i:Lk2/e;

    .line 25
    .line 26
    new-instance p2, Ly1/p;

    .line 27
    .line 28
    invoke-direct {p2}, Ly1/p;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lr2/g2;->j:Ly1/p;

    .line 32
    .line 33
    sget-wide p2, Ly1/p0;->a:J

    .line 34
    .line 35
    iput-wide p2, p0, Lr2/g2;->k:J

    .line 36
    .line 37
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 p3, 0x1d

    .line 40
    .line 41
    if-lt p2, p3, :cond_0

    .line 42
    .line 43
    new-instance p1, Lr2/f2;

    .line 44
    .line 45
    invoke-direct {p1}, Lr2/f2;-><init>()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p2, Lr2/e2;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Lr2/e2;-><init>(Lr2/u;)V

    .line 52
    .line 53
    .line 54
    move-object p1, p2

    .line 55
    :goto_0
    invoke-interface {p1}, Lr2/k1;->A()Z

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-interface {p1, p2}, Lr2/k1;->u(Z)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lr2/g2;->l:Lr2/k1;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/g2;->i:Lk2/e;

    .line 2
    .line 3
    iget-object v1, p0, Lr2/g2;->l:Lr2/k1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Ly1/a0;->e([F[F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Lx1/a;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/g2;->l:Lr2/k1;

    .line 2
    .line 3
    iget-object v1, p0, Lr2/g2;->i:Lk2/e;

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lk2/e;->b(Ljava/lang/Object;)[F

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput p2, p1, Lx1/a;->a:F

    .line 15
    .line 16
    iput p2, p1, Lx1/a;->b:F

    .line 17
    .line 18
    iput p2, p1, Lx1/a;->c:F

    .line 19
    .line 20
    iput p2, p1, Lx1/a;->d:F

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean v0, v1, Lk2/e;->d:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-static {p2, p1}, Ly1/a0;->c([FLx1/a;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v1, v0}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-boolean v0, v1, Lk2/e;->d:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {p2, p1}, Ly1/a0;->c([FLx1/a;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final c(Ly1/i0;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Ly1/i0;->a:I

    .line 6
    .line 7
    iget v3, v0, Lr2/g2;->m:I

    .line 8
    .line 9
    or-int/2addr v2, v3

    .line 10
    and-int/lit16 v3, v2, 0x1000

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget-wide v4, v1, Ly1/i0;->j:J

    .line 15
    .line 16
    iput-wide v4, v0, Lr2/g2;->k:J

    .line 17
    .line 18
    :cond_0
    iget-object v4, v0, Lr2/g2;->l:Lr2/k1;

    .line 19
    .line 20
    invoke-interface {v4}, Lr2/k1;->H()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v6, v0, Lr2/g2;->e:Lr2/z1;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    iget-boolean v5, v6, Lr2/z1;->g:Z

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v5, 0x0

    .line 37
    :goto_0
    and-int/lit8 v9, v2, 0x1

    .line 38
    .line 39
    if-eqz v9, :cond_2

    .line 40
    .line 41
    iget v9, v1, Ly1/i0;->b:F

    .line 42
    .line 43
    invoke-interface {v4, v9}, Lr2/k1;->l(F)V

    .line 44
    .line 45
    .line 46
    :cond_2
    and-int/lit8 v9, v2, 0x2

    .line 47
    .line 48
    if-eqz v9, :cond_3

    .line 49
    .line 50
    iget v9, v1, Ly1/i0;->c:F

    .line 51
    .line 52
    invoke-interface {v4, v9}, Lr2/k1;->e(F)V

    .line 53
    .line 54
    .line 55
    :cond_3
    and-int/lit8 v9, v2, 0x4

    .line 56
    .line 57
    if-eqz v9, :cond_4

    .line 58
    .line 59
    iget v9, v1, Ly1/i0;->d:F

    .line 60
    .line 61
    invoke-interface {v4, v9}, Lr2/k1;->h(F)V

    .line 62
    .line 63
    .line 64
    :cond_4
    and-int/lit8 v9, v2, 0x8

    .line 65
    .line 66
    if-eqz v9, :cond_5

    .line 67
    .line 68
    invoke-interface {v4}, Lr2/k1;->m()V

    .line 69
    .line 70
    .line 71
    :cond_5
    and-int/lit8 v9, v2, 0x10

    .line 72
    .line 73
    if-eqz v9, :cond_6

    .line 74
    .line 75
    invoke-interface {v4}, Lr2/k1;->i()V

    .line 76
    .line 77
    .line 78
    :cond_6
    and-int/lit8 v9, v2, 0x20

    .line 79
    .line 80
    if-eqz v9, :cond_7

    .line 81
    .line 82
    iget v9, v1, Ly1/i0;->e:F

    .line 83
    .line 84
    invoke-interface {v4, v9}, Lr2/k1;->x(F)V

    .line 85
    .line 86
    .line 87
    :cond_7
    and-int/lit8 v9, v2, 0x40

    .line 88
    .line 89
    if-eqz v9, :cond_8

    .line 90
    .line 91
    iget-wide v9, v1, Ly1/i0;->f:J

    .line 92
    .line 93
    invoke-static {v9, v10}, Ly1/h0;->C(J)I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    invoke-interface {v4, v9}, Lr2/k1;->F(I)V

    .line 98
    .line 99
    .line 100
    :cond_8
    and-int/lit16 v9, v2, 0x80

    .line 101
    .line 102
    if-eqz v9, :cond_9

    .line 103
    .line 104
    iget-wide v9, v1, Ly1/i0;->g:J

    .line 105
    .line 106
    invoke-static {v9, v10}, Ly1/h0;->C(J)I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-interface {v4, v9}, Lr2/k1;->J(I)V

    .line 111
    .line 112
    .line 113
    :cond_9
    and-int/lit16 v9, v2, 0x400

    .line 114
    .line 115
    if-eqz v9, :cond_a

    .line 116
    .line 117
    iget v9, v1, Ly1/i0;->h:F

    .line 118
    .line 119
    invoke-interface {v4, v9}, Lr2/k1;->b(F)V

    .line 120
    .line 121
    .line 122
    :cond_a
    and-int/lit16 v9, v2, 0x100

    .line 123
    .line 124
    if-eqz v9, :cond_b

    .line 125
    .line 126
    invoke-interface {v4}, Lr2/k1;->g()V

    .line 127
    .line 128
    .line 129
    :cond_b
    and-int/lit16 v9, v2, 0x200

    .line 130
    .line 131
    if-eqz v9, :cond_c

    .line 132
    .line 133
    invoke-interface {v4}, Lr2/k1;->j()V

    .line 134
    .line 135
    .line 136
    :cond_c
    and-int/lit16 v9, v2, 0x800

    .line 137
    .line 138
    if-eqz v9, :cond_d

    .line 139
    .line 140
    iget v9, v1, Ly1/i0;->i:F

    .line 141
    .line 142
    invoke-interface {v4, v9}, Lr2/k1;->n(F)V

    .line 143
    .line 144
    .line 145
    :cond_d
    if-eqz v3, :cond_e

    .line 146
    .line 147
    iget-wide v9, v0, Lr2/g2;->k:J

    .line 148
    .line 149
    invoke-static {v9, v10}, Ly1/p0;->a(J)F

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-interface {v4}, Lr2/k1;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    int-to-float v9, v9

    .line 158
    mul-float v3, v3, v9

    .line 159
    .line 160
    invoke-interface {v4, v3}, Lr2/k1;->t(F)V

    .line 161
    .line 162
    .line 163
    iget-wide v9, v0, Lr2/g2;->k:J

    .line 164
    .line 165
    invoke-static {v9, v10}, Ly1/p0;->b(J)F

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-interface {v4}, Lr2/k1;->getHeight()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    int-to-float v9, v9

    .line 174
    mul-float v3, v3, v9

    .line 175
    .line 176
    invoke-interface {v4, v3}, Lr2/k1;->w(F)V

    .line 177
    .line 178
    .line 179
    :cond_e
    iget-boolean v3, v1, Ly1/i0;->l:Z

    .line 180
    .line 181
    sget-object v9, Ly1/h0;->a:Ly1/g0;

    .line 182
    .line 183
    if-eqz v3, :cond_f

    .line 184
    .line 185
    iget-object v3, v1, Ly1/i0;->k:Ly1/l0;

    .line 186
    .line 187
    if-eq v3, v9, :cond_f

    .line 188
    .line 189
    const/4 v13, 0x1

    .line 190
    goto :goto_1

    .line 191
    :cond_f
    const/4 v13, 0x0

    .line 192
    :goto_1
    and-int/lit16 v3, v2, 0x6000

    .line 193
    .line 194
    if-eqz v3, :cond_11

    .line 195
    .line 196
    invoke-interface {v4, v13}, Lr2/k1;->I(Z)V

    .line 197
    .line 198
    .line 199
    iget-boolean v3, v1, Ly1/i0;->l:Z

    .line 200
    .line 201
    if-eqz v3, :cond_10

    .line 202
    .line 203
    iget-object v3, v1, Ly1/i0;->k:Ly1/l0;

    .line 204
    .line 205
    if-ne v3, v9, :cond_10

    .line 206
    .line 207
    const/4 v3, 0x1

    .line 208
    goto :goto_2

    .line 209
    :cond_10
    const/4 v3, 0x0

    .line 210
    :goto_2
    invoke-interface {v4, v3}, Lr2/k1;->u(Z)V

    .line 211
    .line 212
    .line 213
    :cond_11
    const/high16 v3, 0x20000

    .line 214
    .line 215
    and-int/2addr v3, v2

    .line 216
    if-eqz v3, :cond_12

    .line 217
    .line 218
    invoke-interface {v4}, Lr2/k1;->q()V

    .line 219
    .line 220
    .line 221
    :cond_12
    const/high16 v3, 0x40000

    .line 222
    .line 223
    and-int/2addr v3, v2

    .line 224
    if-eqz v3, :cond_13

    .line 225
    .line 226
    invoke-interface {v4}, Lr2/k1;->k()V

    .line 227
    .line 228
    .line 229
    :cond_13
    const/high16 v3, 0x80000

    .line 230
    .line 231
    and-int/2addr v3, v2

    .line 232
    if-eqz v3, :cond_14

    .line 233
    .line 234
    iget v3, v1, Ly1/i0;->p:I

    .line 235
    .line 236
    invoke-interface {v4, v3}, Lr2/k1;->c(I)V

    .line 237
    .line 238
    .line 239
    :cond_14
    const v3, 0x8000

    .line 240
    .line 241
    .line 242
    and-int/2addr v3, v2

    .line 243
    if-eqz v3, :cond_15

    .line 244
    .line 245
    invoke-interface {v4}, Lr2/k1;->E()V

    .line 246
    .line 247
    .line 248
    :cond_15
    iget-object v11, v1, Ly1/i0;->q:Ly1/h0;

    .line 249
    .line 250
    iget v12, v1, Ly1/i0;->d:F

    .line 251
    .line 252
    iget v14, v1, Ly1/i0;->e:F

    .line 253
    .line 254
    iget-wide v9, v1, Ly1/i0;->m:J

    .line 255
    .line 256
    move-wide v15, v9

    .line 257
    iget-object v10, v0, Lr2/g2;->e:Lr2/z1;

    .line 258
    .line 259
    invoke-virtual/range {v10 .. v16}, Lr2/z1;->d(Ly1/h0;FZFJ)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    iget-boolean v9, v6, Lr2/z1;->f:Z

    .line 264
    .line 265
    if-eqz v9, :cond_16

    .line 266
    .line 267
    invoke-virtual {v6}, Lr2/z1;->b()Landroid/graphics/Outline;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-interface {v4, v9}, Lr2/k1;->z(Landroid/graphics/Outline;)V

    .line 272
    .line 273
    .line 274
    :cond_16
    if-eqz v13, :cond_17

    .line 275
    .line 276
    iget-boolean v6, v6, Lr2/z1;->g:Z

    .line 277
    .line 278
    if-eqz v6, :cond_17

    .line 279
    .line 280
    const/4 v7, 0x1

    .line 281
    :cond_17
    iget-object v6, v0, Lr2/g2;->a:Lr2/u;

    .line 282
    .line 283
    if-ne v5, v7, :cond_1a

    .line 284
    .line 285
    if-eqz v7, :cond_18

    .line 286
    .line 287
    if-eqz v3, :cond_18

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 291
    .line 292
    const/16 v5, 0x1a

    .line 293
    .line 294
    if-lt v3, v5, :cond_19

    .line 295
    .line 296
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    if-eqz v3, :cond_1b

    .line 301
    .line 302
    invoke-static {v3, v6, v6}, Lq0/o;->q(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_19
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_1a
    :goto_3
    iget-boolean v3, v0, Lr2/g2;->d:Z

    .line 311
    .line 312
    if-nez v3, :cond_1b

    .line 313
    .line 314
    iget-boolean v3, v0, Lr2/g2;->f:Z

    .line 315
    .line 316
    if-nez v3, :cond_1b

    .line 317
    .line 318
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v8}, Lr2/g2;->l(Z)V

    .line 322
    .line 323
    .line 324
    :cond_1b
    :goto_4
    iget-boolean v3, v0, Lr2/g2;->g:Z

    .line 325
    .line 326
    if-nez v3, :cond_1c

    .line 327
    .line 328
    invoke-interface {v4}, Lr2/k1;->L()F

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    const/4 v4, 0x0

    .line 333
    cmpl-float v3, v3, v4

    .line 334
    .line 335
    if-lez v3, :cond_1c

    .line 336
    .line 337
    iget-object v3, v0, Lr2/g2;->c:Lf9/a;

    .line 338
    .line 339
    if-eqz v3, :cond_1c

    .line 340
    .line 341
    invoke-interface {v3}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    :cond_1c
    and-int/lit16 v2, v2, 0x1f1b

    .line 345
    .line 346
    if-eqz v2, :cond_1d

    .line 347
    .line 348
    iget-object v2, v0, Lr2/g2;->i:Lk2/e;

    .line 349
    .line 350
    invoke-virtual {v2}, Lk2/e;->e()V

    .line 351
    .line 352
    .line 353
    :cond_1d
    iget v1, v1, Ly1/i0;->a:I

    .line 354
    .line 355
    iput v1, v0, Lr2/g2;->m:I

    .line 356
    .line 357
    return-void
.end method

.method public final d(Lf9/n;Lf9/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/g2;->i:Lk2/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lk2/e;->a:Z

    .line 5
    .line 6
    iput-boolean v1, v0, Lk2/e;->b:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lk2/e;->d:Z

    .line 10
    .line 11
    iput-boolean v2, v0, Lk2/e;->c:Z

    .line 12
    .line 13
    iget-object v2, v0, Lk2/e;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, [F

    .line 16
    .line 17
    invoke-static {v2}, Ly1/a0;->d([F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lk2/e;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, [F

    .line 23
    .line 24
    invoke-static {v0}, Ly1/a0;->d([F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lr2/g2;->l(Z)V

    .line 28
    .line 29
    .line 30
    iput-boolean v1, p0, Lr2/g2;->f:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lr2/g2;->g:Z

    .line 33
    .line 34
    sget-wide v0, Ly1/p0;->a:J

    .line 35
    .line 36
    iput-wide v0, p0, Lr2/g2;->k:J

    .line 37
    .line 38
    iput-object p1, p0, Lr2/g2;->b:Lf9/n;

    .line 39
    .line 40
    iput-object p2, p0, Lr2/g2;->c:Lf9/a;

    .line 41
    .line 42
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/g2;->l:Lr2/k1;

    .line 2
    .line 3
    invoke-interface {v0}, Lr2/k1;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lr2/k1;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lr2/g2;->b:Lf9/n;

    .line 14
    .line 15
    iput-object v0, p0, Lr2/g2;->c:Lf9/a;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lr2/g2;->f:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Lr2/g2;->l(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lr2/g2;->a:Lr2/u;

    .line 25
    .line 26
    iput-boolean v0, v1, Lr2/u;->G:Z

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lr2/u;->I(Lq2/p1;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e(Ly1/o;Lb2/c;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v6, 0x0

    .line 10
    iget-object v7, p0, Lr2/g2;->l:Lr2/k1;

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lr2/g2;->k()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v7}, Lr2/k1;->L()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    cmpl-float p2, p2, v1

    .line 23
    .line 24
    if-lez p2, :cond_0

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    :cond_0
    iput-boolean v6, p0, Lr2/g2;->g:Z

    .line 28
    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ly1/o;->r()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-interface {v7, v0}, Lr2/k1;->r(Landroid/graphics/Canvas;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p2, p0, Lr2/g2;->g:Z

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-interface {p1}, Ly1/o;->g()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :cond_3
    invoke-interface {v7}, Lr2/k1;->s()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    int-to-float v1, p2

    .line 50
    invoke-interface {v7}, Lr2/k1;->D()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    int-to-float v2, p2

    .line 55
    invoke-interface {v7}, Lr2/k1;->G()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    int-to-float v3, p2

    .line 60
    invoke-interface {v7}, Lr2/k1;->p()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    int-to-float v4, p2

    .line 65
    invoke-interface {v7}, Lr2/k1;->a()F

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    const/high16 v5, 0x3f800000    # 1.0f

    .line 70
    .line 71
    cmpg-float p2, p2, v5

    .line 72
    .line 73
    if-gez p2, :cond_5

    .line 74
    .line 75
    iget-object p2, p0, Lr2/g2;->h:Ld7/q;

    .line 76
    .line 77
    if-nez p2, :cond_4

    .line 78
    .line 79
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p0, Lr2/g2;->h:Ld7/q;

    .line 84
    .line 85
    :cond_4
    invoke-interface {v7}, Lr2/k1;->a()F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {p2, v5}, Ld7/q;->i(F)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p2, Ld7/q;->c:Ljava/lang/Object;

    .line 93
    .line 94
    move-object v5, p2

    .line 95
    check-cast v5, Landroid/graphics/Paint;

    .line 96
    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    invoke-interface {p1}, Ly1/o;->f()V

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-interface {p1, v1, v2}, Ly1/o;->l(FF)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lr2/g2;->i:Lk2/e;

    .line 108
    .line 109
    invoke-virtual {p2, v7}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-interface {p1, p2}, Ly1/o;->j([F)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v7}, Lr2/k1;->H()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_6

    .line 121
    .line 122
    invoke-interface {v7}, Lr2/k1;->C()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_7

    .line 127
    .line 128
    :cond_6
    iget-object p2, p0, Lr2/g2;->e:Lr2/z1;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lr2/z1;->a(Ly1/o;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object p2, p0, Lr2/g2;->b:Lf9/n;

    .line 134
    .line 135
    if-eqz p2, :cond_8

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-interface {p2, p1, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_8
    invoke-interface {p1}, Ly1/o;->n()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v6}, Lr2/g2;->l(Z)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final f(J)Z
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-wide v1, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long/2addr v1, p1

    .line 16
    long-to-int v2, v1

    .line 17
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lr2/g2;->l:Lr2/k1;

    .line 22
    .line 23
    invoke-interface {v2}, Lr2/k1;->C()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    cmpg-float p2, p1, v0

    .line 31
    .line 32
    if-gtz p2, :cond_0

    .line 33
    .line 34
    invoke-interface {v2}, Lr2/k1;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    int-to-float p2, p2

    .line 39
    cmpg-float p2, v0, p2

    .line 40
    .line 41
    if-gez p2, :cond_0

    .line 42
    .line 43
    cmpg-float p1, p1, v1

    .line 44
    .line 45
    if-gtz p1, :cond_0

    .line 46
    .line 47
    invoke-interface {v2}, Lr2/k1;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    int-to-float p1, p1

    .line 52
    cmpg-float p1, v1, p1

    .line 53
    .line 54
    if-gez p1, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    return p1

    .line 59
    :cond_1
    invoke-interface {v2}, Lr2/k1;->H()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lr2/g2;->e:Lr2/z1;

    .line 66
    .line 67
    invoke-virtual {v0, p1, p2}, Lr2/z1;->c(J)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 73
    return p1
.end method

.method public final g(JZ)J
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/g2;->l:Lr2/k1;

    .line 2
    .line 3
    iget-object v1, p0, Lr2/g2;->i:Lk2/e;

    .line 4
    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lk2/e;->b(Ljava/lang/Object;)[F

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    const-wide p1, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    return-wide p1

    .line 19
    :cond_0
    iget-boolean v0, v1, Lk2/e;->d:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-static {p1, p2, p3}, Ly1/a0;->b(J[F)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    return-wide p1

    .line 28
    :cond_1
    invoke-virtual {v1, v0}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iget-boolean v0, v1, Lk2/e;->d:Z

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {p1, p2, p3}, Ly1/a0;->b(J[F)J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    :cond_2
    return-wide p1
.end method

.method public final getUnderlyingMatrix-sQKQjiQ()[F
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/g2;->i:Lk2/e;

    .line 2
    .line 3
    iget-object v1, p0, Lr2/g2;->l:Lr2/k1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h(J)V
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p1, v2

    .line 12
    long-to-int p2, p1

    .line 13
    iget-wide v2, p0, Lr2/g2;->k:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ly1/p0;->a(J)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float v0, v1

    .line 20
    mul-float p1, p1, v0

    .line 21
    .line 22
    iget-object v0, p0, Lr2/g2;->l:Lr2/k1;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lr2/k1;->t(F)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lr2/g2;->k:J

    .line 28
    .line 29
    invoke-static {v2, v3}, Ly1/p0;->b(J)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float v2, p2

    .line 34
    mul-float p1, p1, v2

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lr2/k1;->w(F)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lr2/k1;->s()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {v0}, Lr2/k1;->D()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-interface {v0}, Lr2/k1;->s()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    add-int/2addr v3, v1

    .line 52
    invoke-interface {v0}, Lr2/k1;->D()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v1, p2

    .line 57
    invoke-interface {v0, p1, v2, v3, v1}, Lr2/k1;->v(IIII)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lr2/g2;->e:Lr2/z1;

    .line 64
    .line 65
    invoke-virtual {p1}, Lr2/z1;->b()Landroid/graphics/Outline;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {v0, p1}, Lr2/k1;->z(Landroid/graphics/Outline;)V

    .line 70
    .line 71
    .line 72
    iget-boolean p1, p0, Lr2/g2;->d:Z

    .line 73
    .line 74
    if-nez p1, :cond_0

    .line 75
    .line 76
    iget-boolean p1, p0, Lr2/g2;->f:Z

    .line 77
    .line 78
    if-nez p1, :cond_0

    .line 79
    .line 80
    iget-object p1, p0, Lr2/g2;->a:Lr2/u;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lr2/g2;->l(Z)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lr2/g2;->i:Lk2/e;

    .line 90
    .line 91
    invoke-virtual {p1}, Lk2/e;->e()V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method

.method public final i([F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/g2;->i:Lk2/e;

    .line 2
    .line 3
    iget-object v1, p0, Lr2/g2;->l:Lr2/k1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lk2/e;->b(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, Ly1/a0;->e([F[F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr2/g2;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lr2/g2;->f:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lr2/g2;->a:Lr2/u;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lr2/g2;->l(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final j(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lr2/g2;->l:Lr2/k1;

    .line 2
    .line 3
    invoke-interface {v0}, Lr2/k1;->s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0}, Lr2/k1;->D()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    shr-long v3, p1, v3

    .line 14
    .line 15
    long-to-int v4, v3

    .line 16
    const-wide v5, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p1, v5

    .line 22
    long-to-int p2, p1

    .line 23
    if-ne v1, v4, :cond_1

    .line 24
    .line 25
    if-eq v2, p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    :goto_0
    if-eq v1, v4, :cond_2

    .line 30
    .line 31
    sub-int/2addr v4, v1

    .line 32
    invoke-interface {v0, v4}, Lr2/k1;->o(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    if-eq v2, p2, :cond_3

    .line 36
    .line 37
    sub-int/2addr p2, v2

    .line 38
    invoke-interface {v0, p2}, Lr2/k1;->y(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 p2, 0x1a

    .line 44
    .line 45
    iget-object v0, p0, Lr2/g2;->a:Lr2/u;

    .line 46
    .line 47
    if-lt p1, p2, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    invoke-static {p1, v0, v0}, Lq0/o;->q(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 60
    .line 61
    .line 62
    :cond_5
    :goto_1
    iget-object p1, p0, Lr2/g2;->i:Lk2/e;

    .line 63
    .line 64
    invoke-virtual {p1}, Lk2/e;->e()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lr2/g2;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Lr2/g2;->l:Lr2/k1;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v1}, Lr2/k1;->f()Z

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
    return-void

    .line 15
    :cond_1
    :goto_0
    invoke-interface {v1}, Lr2/k1;->H()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lr2/g2;->e:Lr2/z1;

    .line 22
    .line 23
    iget-boolean v2, v0, Lr2/z1;->g:Z

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lr2/z1;->e()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lr2/z1;->e:Ly1/e0;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_1
    iget-object v2, p0, Lr2/g2;->b:Lf9/n;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    new-instance v3, Lb2/a;

    .line 39
    .line 40
    const/16 v4, 0xd

    .line 41
    .line 42
    invoke-direct {v3, v4, v2}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lr2/g2;->j:Ly1/p;

    .line 46
    .line 47
    invoke-interface {v1, v2, v0, v3}, Lr2/k1;->B(Ly1/p;Ly1/e0;Lb2/a;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lr2/g2;->l(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final l(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr2/g2;->d:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lr2/g2;->d:Z

    .line 6
    .line 7
    iget-object v0, p0, Lr2/g2;->a:Lr2/u;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lr2/u;->A(Lq2/p1;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
