.class public final Lv1/g;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;
.implements Lq2/o;


# instance fields
.field public o:Ld2/b;

.field public p:Z

.field public q:Lr1/d;

.field public r:Lo2/i;

.field public s:F

.field public t:Ly1/k;


# direct methods
.method public static B0(J)Z
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0, v1}, Lx1/e;->a(JJ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide v0, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr p0, v0

    .line 18
    long-to-int p1, p0

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const p1, 0x7fffffff

    .line 28
    .line 29
    .line 30
    and-int/2addr p0, p1

    .line 31
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 32
    .line 33
    if-ge p0, p1, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static C0(J)Z
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0, v1}, Lx1/e;->a(JJ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x20

    .line 13
    .line 14
    shr-long/2addr p0, v0

    .line 15
    long-to-int p1, p0

    .line 16
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const p1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    and-int/2addr p0, p1

    .line 28
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 29
    .line 30
    if-ge p0, p1, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method


# virtual methods
.method public final A0()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lv1/g;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lv1/g;->o:Ld2/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ld2/b;->d()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final D0(J)J
    .locals 11

    .line 1
    invoke-static {p1, p2}, Ln3/a;->d(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2}, Ln3/a;->c(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {p1, p2}, Ln3/a;->f(J)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-static {p1, p2}, Ln3/a;->e(J)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lv1/g;->A0()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    :cond_2
    if-eqz v1, :cond_4

    .line 40
    .line 41
    :cond_3
    invoke-static {p1, p2}, Ln3/a;->h(J)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {p1, p2}, Ln3/a;->g(J)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v8, 0x0

    .line 50
    const/16 v9, 0xa

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    move-wide v3, p1

    .line 54
    invoke-static/range {v3 .. v9}, Ln3/a;->a(JIIIII)J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    return-wide p1

    .line 59
    :cond_4
    move-wide v0, p1

    .line 60
    iget-object p1, p0, Lv1/g;->o:Ld2/b;

    .line 61
    .line 62
    invoke-virtual {p1}, Ld2/b;->d()J

    .line 63
    .line 64
    .line 65
    move-result-wide p1

    .line 66
    invoke-static {p1, p2}, Lv1/g;->C0(J)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/16 v3, 0x20

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    shr-long v4, p1, v3

    .line 75
    .line 76
    long-to-int v2, v4

    .line 77
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-static {v0, v1}, Ln3/a;->j(J)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_1
    invoke-static {p1, p2}, Lv1/g;->B0(J)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const-wide v5, 0xffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    and-long/2addr p1, v5

    .line 102
    long-to-int p2, p1

    .line 103
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    goto :goto_2

    .line 112
    :cond_6
    invoke-static {v0, v1}, Ln3/a;->i(J)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    :goto_2
    invoke-static {v2, v0, v1}, Ln3/b;->g(IJ)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-static {p1, v0, v1}, Ln3/b;->f(IJ)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    int-to-float p2, p2

    .line 125
    int-to-float p1, p1

    .line 126
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    int-to-long v7, p2

    .line 131
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    int-to-long p1, p1

    .line 136
    shl-long/2addr v7, v3

    .line 137
    and-long/2addr p1, v5

    .line 138
    or-long/2addr p1, v7

    .line 139
    invoke-virtual {p0}, Lv1/g;->A0()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_7

    .line 144
    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_7
    iget-object v2, p0, Lv1/g;->o:Ld2/b;

    .line 148
    .line 149
    invoke-virtual {v2}, Ld2/b;->d()J

    .line 150
    .line 151
    .line 152
    move-result-wide v7

    .line 153
    invoke-static {v7, v8}, Lv1/g;->C0(J)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_8

    .line 158
    .line 159
    shr-long v7, p1, v3

    .line 160
    .line 161
    long-to-int v2, v7

    .line 162
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    goto :goto_3

    .line 167
    :cond_8
    iget-object v2, p0, Lv1/g;->o:Ld2/b;

    .line 168
    .line 169
    invoke-virtual {v2}, Ld2/b;->d()J

    .line 170
    .line 171
    .line 172
    move-result-wide v7

    .line 173
    shr-long/2addr v7, v3

    .line 174
    long-to-int v2, v7

    .line 175
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    :goto_3
    iget-object v4, p0, Lv1/g;->o:Ld2/b;

    .line 180
    .line 181
    invoke-virtual {v4}, Ld2/b;->d()J

    .line 182
    .line 183
    .line 184
    move-result-wide v7

    .line 185
    invoke-static {v7, v8}, Lv1/g;->B0(J)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-nez v4, :cond_9

    .line 190
    .line 191
    and-long v7, p1, v5

    .line 192
    .line 193
    long-to-int v4, v7

    .line 194
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    goto :goto_4

    .line 199
    :cond_9
    iget-object v4, p0, Lv1/g;->o:Ld2/b;

    .line 200
    .line 201
    invoke-virtual {v4}, Ld2/b;->d()J

    .line 202
    .line 203
    .line 204
    move-result-wide v7

    .line 205
    and-long/2addr v7, v5

    .line 206
    long-to-int v4, v7

    .line 207
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    int-to-long v7, v2

    .line 216
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    int-to-long v9, v2

    .line 221
    shl-long/2addr v7, v3

    .line 222
    and-long/2addr v9, v5

    .line 223
    or-long/2addr v7, v9

    .line 224
    shr-long v9, p1, v3

    .line 225
    .line 226
    long-to-int v2, v9

    .line 227
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    const/4 v4, 0x0

    .line 232
    cmpg-float v2, v2, v4

    .line 233
    .line 234
    if-nez v2, :cond_a

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    and-long v9, p1, v5

    .line 238
    .line 239
    long-to-int v2, v9

    .line 240
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    cmpg-float v2, v2, v4

    .line 245
    .line 246
    if-nez v2, :cond_b

    .line 247
    .line 248
    :goto_5
    const-wide/16 p1, 0x0

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_b
    iget-object v2, p0, Lv1/g;->r:Lo2/i;

    .line 252
    .line 253
    invoke-virtual {v2, v7, v8, p1, p2}, Lo2/i;->a(JJ)J

    .line 254
    .line 255
    .line 256
    move-result-wide p1

    .line 257
    invoke-static {v7, v8, p1, p2}, Lo2/d1;->i(JJ)J

    .line 258
    .line 259
    .line 260
    move-result-wide p1

    .line 261
    :goto_6
    shr-long v2, p1, v3

    .line 262
    .line 263
    long-to-int v3, v2

    .line 264
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    invoke-static {v2, v0, v1}, Ln3/b;->g(IJ)I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    and-long/2addr p1, v5

    .line 277
    long-to-int p2, p1

    .line 278
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    invoke-static {p1, v0, v1}, Ln3/b;->f(IJ)I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    const/4 v5, 0x0

    .line 291
    const/16 v6, 0xa

    .line 292
    .line 293
    const/4 v3, 0x0

    .line 294
    invoke-static/range {v0 .. v6}, Ln3/a;->a(JIIIII)J

    .line 295
    .line 296
    .line 297
    move-result-wide p1

    .line 298
    return-wide p1
.end method

.method public final synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 2

    .line 1
    invoke-virtual {p0, p3, p4}, Lv1/g;->D0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p3

    .line 5
    invoke-interface {p2, p3, p4}, Lo2/l0;->u(J)Lo2/v0;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget p3, p2, Lo2/v0;->a:I

    .line 10
    .line 11
    iget p4, p2, Lo2/v0;->b:I

    .line 12
    .line 13
    new-instance v0, Lo2/y0;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-direct {v0, p2, v1}, Lo2/y0;-><init>(Lo2/v0;I)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 20
    .line 21
    invoke-interface {p1, p3, p4, p2, v0}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final c(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv1/g;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-static {p1, p3, v0}, Ln3/b;->b(III)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lv1/g;->D0(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-interface {p2, p3}, Lo2/l0;->l(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v0, v1}, Ln3/a;->j(J)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-interface {p2, p3}, Lo2/l0;->l(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final d(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv1/g;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-static {p3, p1, v0}, Ln3/b;->b(III)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lv1/g;->D0(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-interface {p2, p3}, Lo2/l0;->I(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {v0, v1}, Ln3/a;->i(J)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-interface {p2, p3}, Lo2/l0;->I(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final e(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv1/g;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-static {p3, p1, v0}, Ln3/b;->b(III)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lv1/g;->D0(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-interface {p2, p3}, Lo2/l0;->c(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {v0, v1}, Ln3/a;->i(J)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-interface {p2, p3}, Lo2/l0;->c(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final f(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv1/g;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-static {p1, p3, v0}, Ln3/b;->b(III)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lv1/g;->D0(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-interface {p2, p3}, Lo2/l0;->r(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v0, v1}, Ln3/a;->j(J)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-interface {p2, p3}, Lo2/l0;->r(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PainterModifier(painter="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lv1/g;->o:Ld2/b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", sizeToIntrinsics="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lv1/g;->p:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", alignment="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lv1/g;->q:Lr1/d;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", alpha="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lv1/g;->s:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", colorFilter="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lv1/g;->t:Ly1/k;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x29

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final v(Lq2/j0;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v8, v3, Lq2/j0;->a:La2/c;

    .line 6
    .line 7
    iget-object v0, v1, Lv1/g;->o:Ld2/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Ld2/b;->d()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-static {v4, v5}, Lv1/g;->C0(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x20

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    shr-long v6, v4, v2

    .line 22
    .line 23
    long-to-int v0, v6

    .line 24
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, v8, La2/c;->b:La2/b;

    .line 30
    .line 31
    invoke-virtual {v0}, La2/b;->J()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    shr-long/2addr v6, v2

    .line 36
    long-to-int v0, v6

    .line 37
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    invoke-static {v4, v5}, Lv1/g;->B0(J)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-wide v9, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    and-long/2addr v4, v9

    .line 53
    long-to-int v5, v4

    .line 54
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v4, v8, La2/c;->b:La2/b;

    .line 60
    .line 61
    invoke-virtual {v4}, La2/b;->J()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    and-long/2addr v4, v9

    .line 66
    long-to-int v5, v4

    .line 67
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    int-to-long v5, v0

    .line 76
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    int-to-long v11, v0

    .line 81
    shl-long v4, v5, v2

    .line 82
    .line 83
    and-long v6, v11, v9

    .line 84
    .line 85
    or-long/2addr v4, v6

    .line 86
    iget-object v0, v8, La2/c;->b:La2/b;

    .line 87
    .line 88
    invoke-virtual {v0}, La2/b;->J()J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    shr-long/2addr v6, v2

    .line 93
    long-to-int v0, v6

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v6, 0x0

    .line 99
    cmpg-float v0, v0, v6

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object v0, v8, La2/c;->b:La2/b;

    .line 105
    .line 106
    invoke-virtual {v0}, La2/b;->J()J

    .line 107
    .line 108
    .line 109
    move-result-wide v11

    .line 110
    and-long/2addr v11, v9

    .line 111
    long-to-int v0, v11

    .line 112
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    cmpg-float v0, v0, v6

    .line 117
    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    :goto_2
    const-wide/16 v4, 0x0

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    iget-object v0, v1, Lv1/g;->r:Lo2/i;

    .line 124
    .line 125
    iget-object v6, v8, La2/c;->b:La2/b;

    .line 126
    .line 127
    invoke-virtual {v6}, La2/b;->J()J

    .line 128
    .line 129
    .line 130
    move-result-wide v6

    .line 131
    invoke-virtual {v0, v4, v5, v6, v7}, Lo2/i;->a(JJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v6

    .line 135
    invoke-static {v4, v5, v6, v7}, Lo2/d1;->i(JJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    :goto_3
    iget-object v11, v1, Lv1/g;->q:Lr1/d;

    .line 140
    .line 141
    shr-long v6, v4, v2

    .line 142
    .line 143
    long-to-int v0, v6

    .line 144
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    and-long v6, v4, v9

    .line 153
    .line 154
    long-to-int v7, v6

    .line 155
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    int-to-long v12, v0

    .line 164
    shl-long/2addr v12, v2

    .line 165
    int-to-long v6, v6

    .line 166
    and-long/2addr v6, v9

    .line 167
    or-long/2addr v12, v6

    .line 168
    iget-object v0, v8, La2/c;->b:La2/b;

    .line 169
    .line 170
    invoke-virtual {v0}, La2/b;->J()J

    .line 171
    .line 172
    .line 173
    move-result-wide v6

    .line 174
    shr-long/2addr v6, v2

    .line 175
    long-to-int v0, v6

    .line 176
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iget-object v6, v8, La2/c;->b:La2/b;

    .line 185
    .line 186
    invoke-virtual {v6}, La2/b;->J()J

    .line 187
    .line 188
    .line 189
    move-result-wide v6

    .line 190
    and-long/2addr v6, v9

    .line 191
    long-to-int v7, v6

    .line 192
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    int-to-long v14, v0

    .line 201
    shl-long/2addr v14, v2

    .line 202
    int-to-long v6, v6

    .line 203
    and-long/2addr v6, v9

    .line 204
    or-long/2addr v14, v6

    .line 205
    invoke-virtual {v3}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    invoke-interface/range {v11 .. v16}, Lr1/d;->a(JJLn3/m;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v6

    .line 213
    shr-long v11, v6, v2

    .line 214
    .line 215
    long-to-int v0, v11

    .line 216
    int-to-float v11, v0

    .line 217
    and-long/2addr v6, v9

    .line 218
    long-to-int v0, v6

    .line 219
    int-to-float v9, v0

    .line 220
    iget-object v0, v8, La2/c;->b:La2/b;

    .line 221
    .line 222
    iget-object v0, v0, La2/b;->b:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, La2/d;

    .line 225
    .line 226
    invoke-virtual {v0, v11, v9}, La2/d;->y(FF)V

    .line 227
    .line 228
    .line 229
    :try_start_0
    iget-object v2, v1, Lv1/g;->o:Ld2/b;

    .line 230
    .line 231
    iget v6, v1, Lv1/g;->s:F

    .line 232
    .line 233
    iget-object v7, v1, Lv1/g;->t:Ly1/k;

    .line 234
    .line 235
    invoke-virtual/range {v2 .. v7}, Ld2/b;->c(Lq2/j0;JFLy1/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .line 237
    .line 238
    iget-object v0, v8, La2/c;->b:La2/b;

    .line 239
    .line 240
    iget-object v0, v0, La2/b;->b:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, La2/d;

    .line 243
    .line 244
    neg-float v2, v11

    .line 245
    neg-float v3, v9

    .line 246
    invoke-virtual {v0, v2, v3}, La2/d;->y(FF)V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Lq2/j0;->b()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    iget-object v2, v8, La2/c;->b:La2/b;

    .line 255
    .line 256
    iget-object v2, v2, La2/b;->b:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v2, La2/d;

    .line 259
    .line 260
    neg-float v3, v11

    .line 261
    neg-float v4, v9

    .line 262
    invoke-virtual {v2, v3, v4}, La2/d;->y(FF)V

    .line 263
    .line 264
    .line 265
    throw v0
.end method
