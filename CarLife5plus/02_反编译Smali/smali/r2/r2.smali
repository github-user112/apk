.class public final Lr2/r2;
.super Landroid/view/View;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/p1;


# static fields
.field public static final r:Lb2/m;

.field public static s:Ljava/lang/reflect/Method;

.field public static t:Ljava/lang/reflect/Field;

.field public static u:Z

.field public static v:Z


# instance fields
.field public final a:Lr2/u;

.field public final b:Lr2/n1;

.field public c:Lf9/n;

.field public d:Lf9/a;

.field public final e:Lr2/z1;

.field public f:Z

.field public g:Landroid/graphics/Rect;

.field public h:Z

.field public i:Ld7/q;

.field public j:Z

.field public final k:Ly1/p;

.field public final l:Lk2/e;

.field public m:F

.field public n:J

.field public o:Z

.field public final p:J

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb2/m;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lb2/m;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr2/r2;->r:Lb2/m;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lr2/u;Lr2/n1;Lf9/n;Lf9/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lr2/r2;->a:Lr2/u;

    .line 9
    .line 10
    iput-object p2, p0, Lr2/r2;->b:Lr2/n1;

    .line 11
    .line 12
    iput-object p3, p0, Lr2/r2;->c:Lf9/n;

    .line 13
    .line 14
    iput-object p4, p0, Lr2/r2;->d:Lf9/a;

    .line 15
    .line 16
    new-instance p1, Lr2/z1;

    .line 17
    .line 18
    invoke-direct {p1}, Lr2/z1;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lr2/r2;->e:Lr2/z1;

    .line 22
    .line 23
    new-instance p1, Ly1/p;

    .line 24
    .line 25
    invoke-direct {p1}, Ly1/p;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lr2/r2;->k:Ly1/p;

    .line 29
    .line 30
    new-instance p1, Lk2/e;

    .line 31
    .line 32
    sget-object p3, Lr2/f1;->d:Lr2/f1;

    .line 33
    .line 34
    invoke-direct {p1, p3}, Lk2/e;-><init>(Lf9/n;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lr2/r2;->l:Lk2/e;

    .line 38
    .line 39
    sget-wide p3, Ly1/p0;->a:J

    .line 40
    .line 41
    iput-wide p3, p0, Lr2/r2;->n:J

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lr2/r2;->o:Z

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-long p1, p1

    .line 58
    iput-wide p1, p0, Lr2/r2;->p:J

    .line 59
    .line 60
    return-void
.end method

.method private final getManualClipPath()Ly1/e0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lr2/r2;->e:Lr2/z1;

    .line 8
    .line 9
    iget-boolean v1, v0, Lr2/z1;->g:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lr2/z1;->e()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lr2/z1;->e:Ly1/e0;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method private final setInvalidated(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr2/r2;->h:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lr2/r2;->h:Z

    .line 6
    .line 7
    iget-object v0, p0, Lr2/r2;->a:Lr2/u;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lr2/u;->A(Lq2/p1;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/r2;->l:Lk2/e;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Ly1/a0;->e([F[F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Lx1/a;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/r2;->l:Lk2/e;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lk2/e;->b(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput p2, p1, Lx1/a;->a:F

    .line 13
    .line 14
    iput p2, p1, Lx1/a;->b:F

    .line 15
    .line 16
    iput p2, p1, Lx1/a;->c:F

    .line 17
    .line 18
    iput p2, p1, Lx1/a;->d:F

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean v0, v0, Lk2/e;->d:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {p2, p1}, Ly1/a0;->c([FLx1/a;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0, p0}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-boolean v0, v0, Lk2/e;->d:Z

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-static {p2, p1}, Ly1/a0;->c([FLx1/a;)V

    .line 38
    .line 39
    .line 40
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
    iget v3, v0, Lr2/r2;->q:I

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
    iget-wide v3, v1, Ly1/i0;->j:J

    .line 15
    .line 16
    iput-wide v3, v0, Lr2/r2;->n:J

    .line 17
    .line 18
    invoke-static {v3, v4}, Ly1/p0;->a(J)F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    int-to-float v4, v4

    .line 27
    mul-float v3, v3, v4

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 30
    .line 31
    .line 32
    iget-wide v3, v0, Lr2/r2;->n:J

    .line 33
    .line 34
    invoke-static {v3, v4}, Ly1/p0;->b(J)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    int-to-float v4, v4

    .line 43
    mul-float v3, v3, v4

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 46
    .line 47
    .line 48
    :cond_0
    and-int/lit8 v3, v2, 0x1

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget v3, v1, Ly1/i0;->b:F

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 55
    .line 56
    .line 57
    :cond_1
    and-int/lit8 v3, v2, 0x2

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget v3, v1, Ly1/i0;->c:F

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 64
    .line 65
    .line 66
    :cond_2
    and-int/lit8 v3, v2, 0x4

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    iget v3, v1, Ly1/i0;->d:F

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 73
    .line 74
    .line 75
    :cond_3
    and-int/lit8 v3, v2, 0x8

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 81
    .line 82
    .line 83
    :cond_4
    and-int/lit8 v3, v2, 0x10

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 88
    .line 89
    .line 90
    :cond_5
    and-int/lit8 v3, v2, 0x20

    .line 91
    .line 92
    if-eqz v3, :cond_6

    .line 93
    .line 94
    iget v3, v1, Ly1/i0;->e:F

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    .line 97
    .line 98
    .line 99
    :cond_6
    and-int/lit16 v3, v2, 0x400

    .line 100
    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    iget v3, v1, Ly1/i0;->h:F

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 106
    .line 107
    .line 108
    :cond_7
    and-int/lit16 v3, v2, 0x100

    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationX(F)V

    .line 113
    .line 114
    .line 115
    :cond_8
    and-int/lit16 v3, v2, 0x200

    .line 116
    .line 117
    if-eqz v3, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationY(F)V

    .line 120
    .line 121
    .line 122
    :cond_9
    and-int/lit16 v3, v2, 0x800

    .line 123
    .line 124
    if-eqz v3, :cond_a

    .line 125
    .line 126
    iget v3, v1, Ly1/i0;->i:F

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lr2/r2;->setCameraDistancePx(F)V

    .line 129
    .line 130
    .line 131
    :cond_a
    invoke-direct {v0}, Lr2/r2;->getManualClipPath()Ly1/e0;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const/4 v5, 0x0

    .line 136
    const/4 v6, 0x1

    .line 137
    if-eqz v3, :cond_b

    .line 138
    .line 139
    const/4 v3, 0x1

    .line 140
    goto :goto_0

    .line 141
    :cond_b
    const/4 v3, 0x0

    .line 142
    :goto_0
    iget-boolean v7, v1, Ly1/i0;->l:Z

    .line 143
    .line 144
    sget-object v8, Ly1/h0;->a:Ly1/g0;

    .line 145
    .line 146
    if-eqz v7, :cond_c

    .line 147
    .line 148
    iget-object v9, v1, Ly1/i0;->k:Ly1/l0;

    .line 149
    .line 150
    if-eq v9, v8, :cond_c

    .line 151
    .line 152
    const/4 v13, 0x1

    .line 153
    goto :goto_1

    .line 154
    :cond_c
    const/4 v13, 0x0

    .line 155
    :goto_1
    and-int/lit16 v9, v2, 0x6000

    .line 156
    .line 157
    if-eqz v9, :cond_e

    .line 158
    .line 159
    if-eqz v7, :cond_d

    .line 160
    .line 161
    iget-object v7, v1, Ly1/i0;->k:Ly1/l0;

    .line 162
    .line 163
    if-ne v7, v8, :cond_d

    .line 164
    .line 165
    const/4 v7, 0x1

    .line 166
    goto :goto_2

    .line 167
    :cond_d
    const/4 v7, 0x0

    .line 168
    :goto_2
    iput-boolean v7, v0, Lr2/r2;->f:Z

    .line 169
    .line 170
    invoke-virtual {v0}, Lr2/r2;->l()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v13}, Landroid/view/View;->setClipToOutline(Z)V

    .line 174
    .line 175
    .line 176
    :cond_e
    iget-object v11, v1, Ly1/i0;->q:Ly1/h0;

    .line 177
    .line 178
    iget v12, v1, Ly1/i0;->d:F

    .line 179
    .line 180
    iget v14, v1, Ly1/i0;->e:F

    .line 181
    .line 182
    iget-wide v7, v1, Ly1/i0;->m:J

    .line 183
    .line 184
    iget-object v10, v0, Lr2/r2;->e:Lr2/z1;

    .line 185
    .line 186
    move-wide v15, v7

    .line 187
    invoke-virtual/range {v10 .. v16}, Lr2/z1;->d(Ly1/h0;FZFJ)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    iget-object v8, v0, Lr2/r2;->e:Lr2/z1;

    .line 192
    .line 193
    iget-boolean v9, v8, Lr2/z1;->f:Z

    .line 194
    .line 195
    const/4 v10, 0x0

    .line 196
    if-eqz v9, :cond_10

    .line 197
    .line 198
    invoke-virtual {v8}, Lr2/z1;->b()Landroid/graphics/Outline;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    if-eqz v8, :cond_f

    .line 203
    .line 204
    sget-object v8, Lr2/r2;->r:Lb2/m;

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_f
    move-object v8, v10

    .line 208
    :goto_3
    invoke-virtual {v0, v8}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 209
    .line 210
    .line 211
    :cond_10
    invoke-direct {v0}, Lr2/r2;->getManualClipPath()Ly1/e0;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    if-eqz v8, :cond_11

    .line 216
    .line 217
    const/4 v8, 0x1

    .line 218
    goto :goto_4

    .line 219
    :cond_11
    const/4 v8, 0x0

    .line 220
    :goto_4
    if-ne v3, v8, :cond_12

    .line 221
    .line 222
    if-eqz v8, :cond_13

    .line 223
    .line 224
    if-eqz v7, :cond_13

    .line 225
    .line 226
    :cond_12
    invoke-virtual {v0}, Lr2/r2;->invalidate()V

    .line 227
    .line 228
    .line 229
    :cond_13
    iget-boolean v3, v0, Lr2/r2;->j:Z

    .line 230
    .line 231
    if-nez v3, :cond_14

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    cmpl-float v3, v3, v4

    .line 238
    .line 239
    if-lez v3, :cond_14

    .line 240
    .line 241
    iget-object v3, v0, Lr2/r2;->d:Lf9/a;

    .line 242
    .line 243
    if-eqz v3, :cond_14

    .line 244
    .line 245
    invoke-interface {v3}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    :cond_14
    and-int/lit16 v3, v2, 0x1f1b

    .line 249
    .line 250
    if-eqz v3, :cond_15

    .line 251
    .line 252
    iget-object v3, v0, Lr2/r2;->l:Lk2/e;

    .line 253
    .line 254
    invoke-virtual {v3}, Lk2/e;->e()V

    .line 255
    .line 256
    .line 257
    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 258
    .line 259
    const/16 v4, 0x1c

    .line 260
    .line 261
    if-lt v3, v4, :cond_17

    .line 262
    .line 263
    and-int/lit8 v4, v2, 0x40

    .line 264
    .line 265
    if-eqz v4, :cond_16

    .line 266
    .line 267
    iget-wide v7, v1, Ly1/i0;->f:J

    .line 268
    .line 269
    invoke-static {v7, v8}, Ly1/h0;->C(J)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-static {v0, v4}, Ll8/e;->t(Lr2/r2;I)V

    .line 274
    .line 275
    .line 276
    :cond_16
    and-int/lit16 v4, v2, 0x80

    .line 277
    .line 278
    if-eqz v4, :cond_17

    .line 279
    .line 280
    iget-wide v7, v1, Ly1/i0;->g:J

    .line 281
    .line 282
    invoke-static {v7, v8}, Ly1/h0;->C(J)I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    invoke-static {v0, v4}, Ll8/e;->z(Lr2/r2;I)V

    .line 287
    .line 288
    .line 289
    :cond_17
    const/16 v4, 0x1f

    .line 290
    .line 291
    if-lt v3, v4, :cond_18

    .line 292
    .line 293
    const/high16 v3, 0x20000

    .line 294
    .line 295
    and-int/2addr v3, v2

    .line 296
    if-eqz v3, :cond_18

    .line 297
    .line 298
    invoke-static {v0}, Lc3/c;->C(Lr2/r2;)V

    .line 299
    .line 300
    .line 301
    :cond_18
    const/high16 v3, 0x40000

    .line 302
    .line 303
    and-int/2addr v3, v2

    .line 304
    if-nez v3, :cond_1a

    .line 305
    .line 306
    const/high16 v3, 0x80000

    .line 307
    .line 308
    and-int/2addr v3, v2

    .line 309
    if-eqz v3, :cond_19

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_19
    const/4 v3, 0x0

    .line 313
    goto :goto_6

    .line 314
    :cond_1a
    :goto_5
    const/4 v3, 0x1

    .line 315
    :goto_6
    const v4, 0x8000

    .line 316
    .line 317
    .line 318
    and-int/2addr v2, v4

    .line 319
    if-nez v2, :cond_1b

    .line 320
    .line 321
    if-eqz v3, :cond_1f

    .line 322
    .line 323
    :cond_1b
    if-ne v3, v6, :cond_1e

    .line 324
    .line 325
    if-eqz v3, :cond_1d

    .line 326
    .line 327
    iget-object v2, v0, Lr2/r2;->i:Ld7/q;

    .line 328
    .line 329
    if-nez v2, :cond_1c

    .line 330
    .line 331
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    iput-object v2, v0, Lr2/r2;->i:Ld7/q;

    .line 336
    .line 337
    :cond_1c
    invoke-virtual {v2, v10}, Ld7/q;->l(Ly1/k;)V

    .line 338
    .line 339
    .line 340
    iget v3, v1, Ly1/i0;->p:I

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Ld7/q;->j(I)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v2, Ld7/q;->c:Ljava/lang/Object;

    .line 346
    .line 347
    move-object v10, v2

    .line 348
    check-cast v10, Landroid/graphics/Paint;

    .line 349
    .line 350
    :cond_1d
    const/4 v2, 0x2

    .line 351
    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 352
    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_1e
    invoke-virtual {v0, v5, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 356
    .line 357
    .line 358
    :goto_7
    iput-boolean v6, v0, Lr2/r2;->o:Z

    .line 359
    .line 360
    :cond_1f
    iget v1, v1, Ly1/i0;->a:I

    .line 361
    .line 362
    iput v1, v0, Lr2/r2;->q:I

    .line 363
    .line 364
    return-void
.end method

.method public final d(Lf9/n;Lf9/a;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    sget-boolean v0, Lr2/r2;->v:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lr2/r2;->b:Lr2/n1;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :goto_1
    iget-object v0, p0, Lr2/r2;->l:Lk2/e;

    .line 23
    .line 24
    iput-boolean v2, v0, Lk2/e;->a:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Lk2/e;->b:Z

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lk2/e;->d:Z

    .line 30
    .line 31
    iput-boolean v1, v0, Lk2/e;->c:Z

    .line 32
    .line 33
    iget-object v1, v0, Lk2/e;->g:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, [F

    .line 36
    .line 37
    invoke-static {v1}, Ly1/a0;->d([F)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lk2/e;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, [F

    .line 43
    .line 44
    invoke-static {v0}, Ly1/a0;->d([F)V

    .line 45
    .line 46
    .line 47
    iput-boolean v2, p0, Lr2/r2;->f:Z

    .line 48
    .line 49
    iput-boolean v2, p0, Lr2/r2;->j:Z

    .line 50
    .line 51
    sget-wide v0, Ly1/p0;->a:J

    .line 52
    .line 53
    iput-wide v0, p0, Lr2/r2;->n:J

    .line 54
    .line 55
    iput-object p1, p0, Lr2/r2;->c:Lf9/n;

    .line 56
    .line 57
    iput-object p2, p0, Lr2/r2;->d:Lf9/a;

    .line 58
    .line 59
    invoke-direct {p0, v2}, Lr2/r2;->setInvalidated(Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lr2/r2;->setInvalidated(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, Lr2/r2;->a:Lr2/u;

    .line 7
    .line 8
    iput-boolean v0, v1, Lr2/u;->G:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lr2/r2;->c:Lf9/n;

    .line 12
    .line 13
    iput-object v0, p0, Lr2/r2;->d:Lf9/a;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Lr2/u;->I(Lq2/p1;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x17

    .line 22
    .line 23
    if-ge v1, v2, :cond_1

    .line 24
    .line 25
    sget-boolean v1, Lr2/r2;->v:Z

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v0, 0x8

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lr2/r2;->b:Lr2/n1;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lr2/r2;->k:Ly1/p;

    .line 2
    .line 3
    iget-object v1, v0, Ly1/p;->a:Ly1/b;

    .line 4
    .line 5
    iget-object v2, v1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 6
    .line 7
    iput-object p1, v1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 8
    .line 9
    invoke-direct {p0}, Lr2/r2;->getManualClipPath()Ly1/e0;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ly1/o;->f()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lr2/r2;->e:Lr2/z1;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lr2/z1;->a(Ly1/o;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    :goto_1
    iget-object v3, p0, Lr2/r2;->c:Lf9/n;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-interface {v3, v1, v5}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_2
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-interface {v1}, Ly1/o;->n()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object p1, v0, Ly1/p;->a:Ly1/b;

    .line 48
    .line 49
    iput-object v2, p1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 50
    .line 51
    invoke-direct {p0, v4}, Lr2/r2;->setInvalidated(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final e(Ly1/o;Lb2/c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float p2, p2, v0

    .line 7
    .line 8
    if-lez p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    iput-boolean p2, p0, Lr2/r2;->j:Z

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ly1/o;->r()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p2, p0, Lr2/r2;->b:Lr2/n1;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-virtual {p2, p1, p0, v0, v1}, Lr2/n1;->a(Ly1/o;Lr2/r2;J)V

    .line 27
    .line 28
    .line 29
    iget-boolean p2, p0, Lr2/r2;->j:Z

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ly1/o;->g()V

    .line 34
    .line 35
    .line 36
    :cond_2
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
    iget-boolean v2, p0, Lr2/r2;->f:Z

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    cmpg-float p2, p1, v0

    .line 28
    .line 29
    if-gtz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    int-to-float p2, p2

    .line 36
    cmpg-float p2, v0, p2

    .line 37
    .line 38
    if-gez p2, :cond_0

    .line 39
    .line 40
    cmpg-float p1, p1, v1

    .line 41
    .line 42
    if-gtz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-float p1, p1

    .line 49
    cmpg-float p1, v1, p1

    .line 50
    .line 51
    if-gez p1, :cond_0

    .line 52
    .line 53
    return v3

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    return p1

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lr2/r2;->e:Lr2/z1;

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Lr2/z1;->c(J)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_2
    return v3
.end method

.method public final forceLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(JZ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/r2;->l:Lk2/e;

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lk2/e;->b(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    const-wide p1, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    return-wide p1

    .line 17
    :cond_0
    iget-boolean v0, v0, Lk2/e;->d:Z

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Ly1/a0;->b(J[F)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    return-wide p1

    .line 26
    :cond_1
    invoke-virtual {v0, p0}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    iget-boolean v0, v0, Lk2/e;->d:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-static {p1, p2, p3}, Ly1/a0;->b(J[F)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    :cond_2
    return-wide p1
.end method

.method public final getCameraDistancePx()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getCameraDistance()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    div-float/2addr v0, v1

    .line 17
    return v0
.end method

.method public final getContainer()Lr2/n1;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/r2;->b:Lr2/n1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameRate()F
    .locals 1

    .line 1
    iget v0, p0, Lr2/r2;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getLayerId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lr2/r2;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getOwnerView()Lr2/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/r2;->a:Lr2/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOwnerViewId()J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lr2/r2;->a:Lr2/u;

    .line 8
    .line 9
    invoke-static {v0}, Lk2/n;->d(Landroid/view/View;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    return-wide v0
.end method

.method public getUnderlyingMatrix-sQKQjiQ()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/r2;->l:Lk2/e;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne v1, p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eq p2, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    :goto_0
    iget-wide v2, p0, Lr2/r2;->n:J

    .line 28
    .line 29
    invoke-static {v2, v3}, Ly1/p0;->a(J)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float v0, v1

    .line 34
    mul-float p1, p1, v0

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 37
    .line 38
    .line 39
    iget-wide v2, p0, Lr2/r2;->n:J

    .line 40
    .line 41
    invoke-static {v2, v3}, Ly1/p0;->b(J)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-float v0, p2

    .line 46
    mul-float p1, p1, v0

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lr2/r2;->e:Lr2/z1;

    .line 52
    .line 53
    invoke-virtual {p1}, Lr2/z1;->b()Landroid/graphics/Outline;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    sget-object p1, Lr2/r2;->r:Lb2/m;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/2addr v2, v1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v1, p2

    .line 84
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lr2/r2;->l()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lr2/r2;->l:Lk2/e;

    .line 91
    .line 92
    invoke-virtual {p1}, Lk2/e;->e()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr2/r2;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/r2;->l:Lk2/e;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lk2/e;->b(Ljava/lang/Object;)[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v0}, Ly1/a0;->e([F[F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr2/r2;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lr2/r2;->setInvalidated(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lr2/r2;->a:Lr2/u;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final j(J)V
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v2, p0, Lr2/r2;->l:Lk2/e;

    .line 11
    .line 12
    if-eq v1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr v1, v0

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lk2/e;->e()V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-wide v0, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr p1, v0

    .line 31
    long-to-int p2, p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eq p2, p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    sub-int/2addr p2, p1

    .line 43
    invoke-virtual {p0, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lk2/e;->e()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr2/r2;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lr2/r2;->v:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lr2/j0;->x(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lr2/r2;->setInvalidated(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lr2/r2;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lr2/r2;->g:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lr2/r2;->g:Landroid/graphics/Rect;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Lr2/r2;->g:Landroid/graphics/Rect;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCameraDistancePx(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    mul-float p1, p1, v0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setFrameRate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lr2/r2;->m:F

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRateFromParent(Z)V
    .locals 0

    .line 1
    return-void
.end method
