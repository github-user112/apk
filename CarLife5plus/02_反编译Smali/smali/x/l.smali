.class public final Lx/l;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/o;
.implements Lq2/l1;
.implements Lq2/y1;


# instance fields
.field public o:J

.field public p:Ly1/m;

.field public q:F

.field public r:Ly1/l0;

.field public s:J

.field public t:Ln3/m;

.field public u:Ly1/h0;

.field public v:Ly1/l0;

.field public w:Ly1/h0;


# virtual methods
.method public final synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Y()V
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lx/l;->s:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lx/l;->t:Ln3/m;

    .line 10
    .line 11
    iput-object v0, p0, Lx/l;->u:Ly1/h0;

    .line 12
    .line 13
    iput-object v0, p0, Lx/l;->v:Ly1/l0;

    .line 14
    .line 15
    invoke-static {p0}, Lq2/f;->l(Lq2/o;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Z(Ly2/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

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

.method public final v(Lq2/j0;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lq2/j0;->a:La2/c;

    .line 6
    .line 7
    iget-object v3, v0, Lx/l;->r:Ly1/l0;

    .line 8
    .line 9
    sget-object v4, Ly1/h0;->a:Ly1/g0;

    .line 10
    .line 11
    if-ne v3, v4, :cond_2

    .line 12
    .line 13
    iget-wide v2, v0, Lx/l;->o:J

    .line 14
    .line 15
    sget-wide v4, Ly1/q;->m:J

    .line 16
    .line 17
    invoke-static {v2, v3, v4, v5}, Ly1/q;->c(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-wide v2, v0, Lx/l;->o:J

    .line 24
    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    const/16 v8, 0x7e

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    invoke-static/range {v1 .. v8}, La2/f;->x(La2/g;JJJI)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v2, v0, Lx/l;->p:Ly1/m;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget v7, v0, Lx/l;->q:F

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/16 v9, 0x76

    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    move-object/from16 v1, p1

    .line 48
    .line 49
    invoke-static/range {v1 .. v9}, La2/f;->w(Lq2/j0;Ly1/m;JJFLa2/h;I)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    move-object/from16 v1, p1

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_2
    iget-object v3, v2, La2/c;->b:La2/b;

    .line 59
    .line 60
    invoke-virtual {v3}, La2/b;->J()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    iget-wide v5, v0, Lx/l;->s:J

    .line 65
    .line 66
    invoke-static {v3, v4, v5, v6}, Lx1/e;->a(JJ)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v4, v0, Lx/l;->t:Ln3/m;

    .line 77
    .line 78
    if-ne v3, v4, :cond_3

    .line 79
    .line 80
    iget-object v3, v0, Lx/l;->v:Ly1/l0;

    .line 81
    .line 82
    iget-object v4, v0, Lx/l;->r:Ly1/l0;

    .line 83
    .line 84
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    iget-object v3, v0, Lx/l;->u:Ly1/h0;

    .line 91
    .line 92
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    new-instance v3, La8/n0;

    .line 97
    .line 98
    const/16 v4, 0x16

    .line 99
    .line 100
    invoke-direct {v3, v4, v0, v1}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v3}, Lq2/f;->r(Lr1/o;Lf9/a;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, v0, Lx/l;->w:Ly1/h0;

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    iput-object v4, v0, Lx/l;->w:Ly1/h0;

    .line 110
    .line 111
    :goto_0
    iput-object v3, v0, Lx/l;->u:Ly1/h0;

    .line 112
    .line 113
    iget-object v2, v2, La2/c;->b:La2/b;

    .line 114
    .line 115
    invoke-virtual {v2}, La2/b;->J()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    iput-wide v4, v0, Lx/l;->s:J

    .line 120
    .line 121
    invoke-virtual {v1}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, v0, Lx/l;->t:Ln3/m;

    .line 126
    .line 127
    iget-object v2, v0, Lx/l;->r:Ly1/l0;

    .line 128
    .line 129
    iput-object v2, v0, Lx/l;->v:Ly1/l0;

    .line 130
    .line 131
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-wide v4, v0, Lx/l;->o:J

    .line 135
    .line 136
    sget-wide v6, Ly1/q;->m:J

    .line 137
    .line 138
    invoke-static {v4, v5, v6, v7}, Ly1/q;->c(JJ)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_4

    .line 143
    .line 144
    iget-wide v4, v0, Lx/l;->o:J

    .line 145
    .line 146
    invoke-static {v1, v3, v4, v5}, Ly1/h0;->m(La2/g;Ly1/h0;J)V

    .line 147
    .line 148
    .line 149
    :cond_4
    iget-object v2, v0, Lx/l;->p:Ly1/m;

    .line 150
    .line 151
    if-eqz v2, :cond_9

    .line 152
    .line 153
    iget v4, v0, Lx/l;->q:F

    .line 154
    .line 155
    instance-of v5, v3, Ly1/c0;

    .line 156
    .line 157
    const-wide v7, 0xffffffffL

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    const/16 v9, 0x20

    .line 163
    .line 164
    sget-object v10, La2/j;->a:La2/j;

    .line 165
    .line 166
    if-eqz v5, :cond_5

    .line 167
    .line 168
    check-cast v3, Ly1/c0;

    .line 169
    .line 170
    iget-object v3, v3, Ly1/c0;->e:Lx1/c;

    .line 171
    .line 172
    iget v5, v3, Lx1/c;->a:F

    .line 173
    .line 174
    iget v6, v3, Lx1/c;->b:F

    .line 175
    .line 176
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    int-to-long v11, v5

    .line 181
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    int-to-long v5, v5

    .line 186
    shl-long/2addr v11, v9

    .line 187
    and-long/2addr v5, v7

    .line 188
    or-long/2addr v5, v11

    .line 189
    invoke-static {v3}, Ly1/h0;->w(Lx1/c;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v7

    .line 193
    move-wide/from16 v18, v7

    .line 194
    .line 195
    move v7, v4

    .line 196
    move-wide v3, v5

    .line 197
    move-wide/from16 v5, v18

    .line 198
    .line 199
    move-object v8, v10

    .line 200
    invoke-virtual/range {v1 .. v8}, Lq2/j0;->d(Ly1/m;JJFLa2/h;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_2

    .line 204
    .line 205
    :cond_5
    move-object v5, v10

    .line 206
    instance-of v1, v3, Ly1/d0;

    .line 207
    .line 208
    const/4 v6, 0x3

    .line 209
    if-eqz v1, :cond_7

    .line 210
    .line 211
    move-object v10, v3

    .line 212
    check-cast v10, Ly1/d0;

    .line 213
    .line 214
    move-object v3, v2

    .line 215
    iget-object v2, v10, Ly1/d0;->f:Ly1/h;

    .line 216
    .line 217
    if-eqz v2, :cond_6

    .line 218
    .line 219
    :goto_1
    move-object/from16 v1, p1

    .line 220
    .line 221
    invoke-virtual/range {v1 .. v6}, Lq2/j0;->T(Ly1/e0;Ly1/m;FLa2/h;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_6
    move-object v2, v3

    .line 226
    iget-object v1, v10, Ly1/d0;->e:Lx1/d;

    .line 227
    .line 228
    iget-wide v10, v1, Lx1/d;->h:J

    .line 229
    .line 230
    shr-long/2addr v10, v9

    .line 231
    long-to-int v3, v10

    .line 232
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    iget v6, v1, Lx1/d;->a:F

    .line 237
    .line 238
    iget v10, v1, Lx1/d;->b:F

    .line 239
    .line 240
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    int-to-long v11, v6

    .line 245
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    int-to-long v13, v6

    .line 250
    shl-long v10, v11, v9

    .line 251
    .line 252
    and-long/2addr v13, v7

    .line 253
    or-long/2addr v10, v13

    .line 254
    invoke-virtual {v1}, Lx1/d;->b()F

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    invoke-virtual {v1}, Lx1/d;->a()F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    int-to-long v12, v6

    .line 267
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    int-to-long v14, v1

    .line 272
    shl-long/2addr v12, v9

    .line 273
    and-long/2addr v14, v7

    .line 274
    or-long/2addr v12, v14

    .line 275
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    int-to-long v14, v1

    .line 280
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    move-wide/from16 v16, v7

    .line 285
    .line 286
    int-to-long v7, v1

    .line 287
    shl-long/2addr v14, v9

    .line 288
    and-long v7, v7, v16

    .line 289
    .line 290
    or-long/2addr v7, v14

    .line 291
    move-object/from16 v1, p1

    .line 292
    .line 293
    move v9, v4

    .line 294
    move-wide v3, v10

    .line 295
    move-object v10, v5

    .line 296
    move-wide v5, v12

    .line 297
    invoke-virtual/range {v1 .. v10}, Lq2/j0;->e(Ly1/m;JJJFLa2/h;)V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_7
    instance-of v1, v3, Ly1/b0;

    .line 302
    .line 303
    if-eqz v1, :cond_8

    .line 304
    .line 305
    check-cast v3, Ly1/b0;

    .line 306
    .line 307
    iget-object v1, v3, Ly1/b0;->e:Ly1/e0;

    .line 308
    .line 309
    move-object v3, v2

    .line 310
    move-object v2, v1

    .line 311
    goto :goto_1

    .line 312
    :cond_8
    new-instance v1, Lac/p;

    .line 313
    .line 314
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 315
    .line 316
    .line 317
    throw v1

    .line 318
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lq2/j0;->b()V

    .line 319
    .line 320
    .line 321
    return-void
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
