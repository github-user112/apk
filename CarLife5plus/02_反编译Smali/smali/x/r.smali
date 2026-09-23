.class public Lx/r;
.super Lx/f;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public K:Lk2/w;


# virtual methods
.method public final E0()Lk2/n0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final K0(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final L0(Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lx/f;->w:Lf9/a;

    .line 2
    .line 3
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l0(Lk2/o;Lk2/p;J)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-super/range {p0 .. p4}, Lx/f;->l0(Lk2/o;Lk2/p;J)V

    .line 8
    .line 9
    .line 10
    sget-object v5, Lk2/p;->b:Lk2/p;

    .line 11
    .line 12
    move-wide/from16 v6, p3

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ne v2, v5, :cond_b

    .line 17
    .line 18
    iget-object v2, v1, Lx/r;->K:Lk2/w;

    .line 19
    .line 20
    const/4 v8, 0x3

    .line 21
    const/4 v5, 0x1

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    invoke-static {v0, v5, v3}, Lz/d2;->f(Lk2/o;ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_d

    .line 29
    .line 30
    iget-object v0, v0, Lk2/o;->a:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lk2/w;

    .line 37
    .line 38
    invoke-virtual {v0}, Lk2/w;->a()V

    .line 39
    .line 40
    .line 41
    iput-object v0, v1, Lx/r;->K:Lk2/w;

    .line 42
    .line 43
    iget-boolean v2, v1, Lx/f;->v:Z

    .line 44
    .line 45
    if-eqz v2, :cond_d

    .line 46
    .line 47
    iget-wide v2, v0, Lk2/w;->c:J

    .line 48
    .line 49
    move-object v0, v1

    .line 50
    iget-object v1, v0, Lx/f;->q:Lb0/k;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-instance v5, Lb0/m;

    .line 55
    .line 56
    invoke-direct {v5, v2, v3}, Lb0/m;-><init>(J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lx/f;->F0()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0}, Lr1/o;->m0()Lac/w;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v0, Lb1/f;

    .line 70
    .line 71
    move-object v2, v5

    .line 72
    const/16 v5, 0xd

    .line 73
    .line 74
    move-object/from16 v3, p0

    .line 75
    .line 76
    invoke-direct/range {v0 .. v5}, Lb1/f;-><init>(Lb0/k;Lb0/j;Ljava/lang/Object;Lw8/c;I)V

    .line 77
    .line 78
    .line 79
    move-object v1, v3

    .line 80
    move-object v9, v4

    .line 81
    invoke-static {v6, v9, v0, v8}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, v1, Lx/f;->H:Lac/j1;

    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    move-object v2, v1

    .line 89
    move-object v1, v0

    .line 90
    move-object v0, v2

    .line 91
    move-object v9, v4

    .line 92
    move-object v2, v5

    .line 93
    iput-object v2, v1, Lx/f;->B:Lb0/m;

    .line 94
    .line 95
    invoke-virtual {v1}, Lr1/o;->m0()Lac/w;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Lx/c;

    .line 100
    .line 101
    invoke-direct {v4, v0, v2, v9}, Lx/c;-><init>(Lb0/k;Lb0/m;Lw8/c;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v9, v4, v8}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    move-object v1, v0

    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_2
    move-object v9, v4

    .line 112
    iget-object v0, v0, Lk2/o;->a:Ljava/lang/Object;

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    const/4 v10, 0x0

    .line 119
    :goto_0
    if-ge v10, v4, :cond_6

    .line 120
    .line 121
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    check-cast v11, Lk2/w;

    .line 126
    .line 127
    invoke-static {v11}, Lk2/v;->b(Lk2/w;)Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-nez v11, :cond_5

    .line 132
    .line 133
    sget-object v2, Lr2/i1;->s:Lf1/w2;

    .line 134
    .line 135
    invoke-static {v1, v2}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lr2/q2;

    .line 140
    .line 141
    invoke-interface {v2}, Lr2/q2;->d()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    invoke-static {v1}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object v2, v2, Lq2/h0;->x:Ln3/c;

    .line 150
    .line 151
    invoke-interface {v2, v4, v5}, Ln3/c;->e0(J)J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    const/16 v2, 0x20

    .line 156
    .line 157
    shr-long v10, v4, v2

    .line 158
    .line 159
    long-to-int v8, v10

    .line 160
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    shr-long v10, v6, v2

    .line 165
    .line 166
    long-to-int v11, v10

    .line 167
    int-to-float v10, v11

    .line 168
    sub-float/2addr v8, v10

    .line 169
    const/4 v10, 0x0

    .line 170
    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    const/high16 v11, 0x40000000    # 2.0f

    .line 175
    .line 176
    div-float/2addr v8, v11

    .line 177
    const-wide v12, 0xffffffffL

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    and-long/2addr v4, v12

    .line 183
    long-to-int v5, v4

    .line 184
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    and-long v14, v6, v12

    .line 189
    .line 190
    long-to-int v5, v14

    .line 191
    int-to-float v5, v5

    .line 192
    sub-float/2addr v4, v5

    .line 193
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    div-float/2addr v4, v11

    .line 198
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    int-to-long v10, v5

    .line 203
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    int-to-long v4, v4

    .line 208
    shl-long/2addr v10, v2

    .line 209
    and-long/2addr v4, v12

    .line 210
    or-long/2addr v4, v10

    .line 211
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    :goto_1
    if-ge v3, v2, :cond_d

    .line 216
    .line 217
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    check-cast v8, Lk2/w;

    .line 222
    .line 223
    invoke-virtual {v8}, Lk2/w;->b()Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-nez v10, :cond_4

    .line 228
    .line 229
    invoke-static {v8, v6, v7, v4, v5}, Lk2/v;->e(Lk2/w;JJ)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_3

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_4
    :goto_2
    iput-object v9, v1, Lx/r;->K:Lk2/w;

    .line 240
    .line 241
    invoke-virtual {v1}, Lx/f;->H0()V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lk2/w;

    .line 254
    .line 255
    invoke-virtual {v0}, Lk2/w;->a()V

    .line 256
    .line 257
    .line 258
    iget-boolean v0, v1, Lx/f;->v:Z

    .line 259
    .line 260
    if-eqz v0, :cond_a

    .line 261
    .line 262
    iget-wide v2, v2, Lk2/w;->c:J

    .line 263
    .line 264
    iget-object v4, v1, Lx/f;->q:Lb0/k;

    .line 265
    .line 266
    if-eqz v4, :cond_9

    .line 267
    .line 268
    iget-object v0, v1, Lx/f;->H:Lac/j1;

    .line 269
    .line 270
    if-eqz v0, :cond_7

    .line 271
    .line 272
    invoke-virtual {v0}, Lac/c1;->b()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-ne v0, v5, :cond_7

    .line 277
    .line 278
    invoke-virtual {v1}, Lr1/o;->m0()Lac/w;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    new-instance v0, Ll0/g1;

    .line 283
    .line 284
    const/4 v5, 0x0

    .line 285
    const/4 v6, 0x3

    .line 286
    invoke-direct/range {v0 .. v6}, Ll0/g1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Lw8/c;I)V

    .line 287
    .line 288
    .line 289
    invoke-static {v7, v9, v0, v8}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_7
    iget-object v0, v1, Lx/f;->B:Lb0/m;

    .line 294
    .line 295
    if-eqz v0, :cond_8

    .line 296
    .line 297
    invoke-virtual {v1}, Lr1/o;->m0()Lac/w;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    new-instance v3, Lx/c;

    .line 302
    .line 303
    const/4 v5, 0x1

    .line 304
    invoke-direct {v3, v0, v4, v9, v5}, Lx/c;-><init>(Lb0/m;Lb0/k;Lw8/c;I)V

    .line 305
    .line 306
    .line 307
    invoke-static {v2, v9, v3, v8}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 308
    .line 309
    .line 310
    :cond_8
    :goto_3
    iput-object v9, v1, Lx/f;->B:Lb0/m;

    .line 311
    .line 312
    :cond_9
    iget-object v0, v1, Lx/f;->w:Lf9/a;

    .line 313
    .line 314
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    :cond_a
    iput-object v9, v1, Lx/r;->K:Lk2/w;

    .line 318
    .line 319
    return-void

    .line 320
    :cond_b
    move-object v9, v4

    .line 321
    sget-object v4, Lk2/p;->c:Lk2/p;

    .line 322
    .line 323
    if-ne v2, v4, :cond_d

    .line 324
    .line 325
    iget-object v2, v1, Lx/r;->K:Lk2/w;

    .line 326
    .line 327
    if-eqz v2, :cond_d

    .line 328
    .line 329
    iget-object v0, v0, Lk2/o;->a:Ljava/lang/Object;

    .line 330
    .line 331
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    :goto_4
    if-ge v3, v2, :cond_d

    .line 336
    .line 337
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    check-cast v4, Lk2/w;

    .line 342
    .line 343
    invoke-virtual {v4}, Lk2/w;->b()Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-eqz v5, :cond_c

    .line 348
    .line 349
    iget-object v5, v1, Lx/r;->K:Lk2/w;

    .line 350
    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-nez v4, :cond_c

    .line 356
    .line 357
    iput-object v9, v1, Lx/r;->K:Lk2/w;

    .line 358
    .line 359
    invoke-virtual {v1}, Lx/f;->H0()V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_d
    :goto_5
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    invoke-super {p0}, Lx/f;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx/r;->K:Lk2/w;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lx/r;->K:Lk2/w;

    .line 10
    .line 11
    invoke-virtual {p0}, Lx/f;->H0()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
