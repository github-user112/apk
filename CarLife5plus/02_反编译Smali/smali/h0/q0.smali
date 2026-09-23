.class public final Lh0/q0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lh0/g0;


# instance fields
.field public final a:I

.field public final b:La2/b;

.field public final c:Lf9/k;

.field public d:Ln3/a;

.field public e:Lo2/f1;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/Object;

.field public j:Z

.field public k:Lh0/p0;

.field public l:Z

.field public m:J

.field public n:J

.field public o:J

.field public final synthetic p:Lf1/t0;


# direct methods
.method public constructor <init>(Lf1/t0;ILa2/b;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/q0;->p:Lf1/t0;

    .line 5
    .line 6
    iput p2, p0, Lh0/q0;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lh0/q0;->b:La2/b;

    .line 9
    .line 10
    iput-object p4, p0, Lh0/q0;->c:Lf9/k;

    .line 11
    .line 12
    sget p1, Lyb/i;->b:I

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    sget-wide p3, Lyb/i;->a:J

    .line 19
    .line 20
    sub-long/2addr p1, p3

    .line 21
    iput-wide p1, p0, Lh0/q0;->o:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh0/q0;->l:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/q0;->e:Lo2/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lo2/f1;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lh0/q0;->e:Lo2/f1;

    .line 10
    .line 11
    iput-object v0, p0, Lh0/q0;->k:Lh0/p0;

    .line 12
    .line 13
    return-void
.end method

.method public final c(Lh0/a;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh0/q0;->p:Lf1/t0;

    .line 2
    .line 3
    iget-boolean v0, v0, Lf1/t0;->a:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lh0/q0;->l:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "compose:lazy:prefetch:execute:urgent"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Lh0/q0;->d(Lh0/a;)Z

    .line 19
    .line 20
    .line 21
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lh0/q0;->d(Lh0/a;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    const-string v0, "compose:lazy:prefetch:execute:item"

    .line 36
    .line 37
    const-wide/16 v1, -0x1

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Li9/a;->Y(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    return p1
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh0/q0;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lh0/q0;->g:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lh0/q0;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d(Lh0/a;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lh0/q0;->a:I

    .line 4
    .line 5
    int-to-long v2, v0

    .line 6
    const-string v4, "compose:lazy:prefetch:execute:item"

    .line 7
    .line 8
    invoke-static {v4, v2, v3}, Li9/a;->Y(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    iget-object v5, v1, Lh0/q0;->p:Lf1/t0;

    .line 12
    .line 13
    iget-object v6, v5, Lf1/t0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v6, Lh0/t;

    .line 16
    .line 17
    iget-object v6, v6, Lh0/t;->b:La8/f;

    .line 18
    .line 19
    invoke-virtual {v6}, La8/f;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lh0/v;

    .line 24
    .line 25
    iget-boolean v7, v1, Lh0/q0;->g:Z

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    if-nez v7, :cond_22

    .line 29
    .line 30
    invoke-interface {v6}, Lh0/v;->a()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-ltz v0, :cond_22

    .line 35
    .line 36
    if-ge v0, v7, :cond_22

    .line 37
    .line 38
    invoke-interface {v6, v0}, Lh0/v;->b(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object v9, v1, Lh0/q0;->i:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v9, :cond_0

    .line 45
    .line 46
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-nez v9, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Lh0/q0;->b()V

    .line 53
    .line 54
    .line 55
    return v8

    .line 56
    :cond_0
    invoke-interface {v6, v0}, Lh0/v;->c(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget-object v9, v1, Lh0/q0;->b:La2/b;

    .line 61
    .line 62
    iget-object v10, v9, La2/b;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v10, Lh0/c;

    .line 65
    .line 66
    iget-object v11, v9, La2/b;->c:Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v12, -0x1

    .line 69
    if-ne v11, v6, :cond_1

    .line 70
    .line 71
    if-eqz v10, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v10, v9, La2/b;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v10, Ls/h0;

    .line 77
    .line 78
    invoke-virtual {v10, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    if-nez v11, :cond_2

    .line 83
    .line 84
    new-instance v11, Lh0/c;

    .line 85
    .line 86
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput v12, v11, Lh0/c;->d:I

    .line 90
    .line 91
    invoke-virtual {v10, v6, v11}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    move-object v10, v11

    .line 95
    check-cast v10, Lh0/c;

    .line 96
    .line 97
    iput-object v6, v9, La2/b;->c:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v10, v9, La2/b;->d:Ljava/lang/Object;

    .line 100
    .line 101
    :goto_0
    invoke-virtual {v1}, Lh0/q0;->e()Z

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Lh0/a;->a()J

    .line 105
    .line 106
    .line 107
    move-result-wide v13

    .line 108
    iput-wide v13, v1, Lh0/q0;->m:J

    .line 109
    .line 110
    sget v9, Lyb/i;->b:I

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v15

    .line 116
    sget-wide v17, Lyb/i;->a:J

    .line 117
    .line 118
    sub-long v8, v15, v17

    .line 119
    .line 120
    iput-wide v8, v1, Lh0/q0;->o:J

    .line 121
    .line 122
    const-wide/16 v8, 0x0

    .line 123
    .line 124
    iput-wide v8, v1, Lh0/q0;->n:J

    .line 125
    .line 126
    const-string v15, "compose:lazy:prefetch:available_time_nanos"

    .line 127
    .line 128
    invoke-static {v15, v13, v14}, Li9/a;->Y(Ljava/lang/String;J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lh0/q0;->e()Z

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    const/4 v14, 0x1

    .line 136
    move-wide v15, v8

    .line 137
    if-nez v13, :cond_a

    .line 138
    .line 139
    iget-wide v8, v1, Lh0/q0;->m:J

    .line 140
    .line 141
    iget-wide v11, v10, Lh0/c;->a:J

    .line 142
    .line 143
    invoke-virtual {v1, v8, v9, v11, v12}, Lh0/q0;->h(JJ)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_9

    .line 148
    .line 149
    const-string v8, "compose:lazy:prefetch:compose"

    .line 150
    .line 151
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :try_start_0
    iget-object v8, v1, Lh0/q0;->e:Lo2/f1;

    .line 155
    .line 156
    if-nez v8, :cond_3

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    const-string v8, "Request was already composed!"

    .line 160
    .line 161
    invoke-static {v8}, Lc0/b;->a(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    iget-object v8, v5, Lf1/t0;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v8, Lh0/t;

    .line 167
    .line 168
    invoke-virtual {v8, v0, v7, v6}, Lh0/t;->a(ILjava/lang/Object;Ljava/lang/Object;)Lf9/n;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iput-object v7, v1, Lh0/q0;->i:Ljava/lang/Object;

    .line 173
    .line 174
    iget-object v5, v5, Lf1/t0;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v5, Lo2/h1;

    .line 177
    .line 178
    invoke-virtual {v5}, Lo2/h1;->a()Lo2/i0;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    iget-object v6, v5, Lo2/i0;->a:Lq2/h0;

    .line 183
    .line 184
    invoke-virtual {v6}, Lq2/h0;->I()Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-nez v8, :cond_4

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    invoke-virtual {v5}, Lo2/i0;->e()V

    .line 192
    .line 193
    .line 194
    iget-object v8, v5, Lo2/i0;->g:Ls/h0;

    .line 195
    .line 196
    invoke-virtual {v8, v7}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-nez v8, :cond_7

    .line 201
    .line 202
    iget-object v8, v5, Lo2/i0;->l:Ls/h0;

    .line 203
    .line 204
    invoke-virtual {v8, v7}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    iget-object v8, v5, Lo2/i0;->j:Ls/h0;

    .line 208
    .line 209
    invoke-virtual {v8, v7}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    if-nez v9, :cond_6

    .line 214
    .line 215
    invoke-virtual {v5, v7}, Lo2/i0;->i(Ljava/lang/Object;)Lq2/h0;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    if-eqz v9, :cond_5

    .line 220
    .line 221
    invoke-virtual {v6}, Lq2/h0;->p()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    check-cast v11, Lh1/b;

    .line 226
    .line 227
    iget-object v11, v11, Lh1/b;->b:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v11, Lh1/e;

    .line 230
    .line 231
    invoke-virtual {v11, v9}, Lh1/e;->j(Ljava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    invoke-virtual {v6}, Lq2/h0;->p()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    check-cast v12, Lh1/b;

    .line 240
    .line 241
    iget-object v12, v12, Lh1/b;->b:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v12, Lh1/e;

    .line 244
    .line 245
    iget v12, v12, Lh1/e;->c:I

    .line 246
    .line 247
    iput-boolean v14, v6, Lq2/h0;->p:Z

    .line 248
    .line 249
    invoke-virtual {v6, v11, v12, v14}, Lq2/h0;->M(III)V

    .line 250
    .line 251
    .line 252
    const/4 v11, 0x0

    .line 253
    iput-boolean v11, v6, Lq2/h0;->p:Z

    .line 254
    .line 255
    iget v12, v5, Lo2/i0;->o:I

    .line 256
    .line 257
    add-int/2addr v12, v14

    .line 258
    iput v12, v5, Lo2/i0;->o:I

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_5
    invoke-virtual {v6}, Lq2/h0;->p()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    check-cast v9, Lh1/b;

    .line 266
    .line 267
    iget-object v9, v9, Lh1/b;->b:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v9, Lh1/e;

    .line 270
    .line 271
    iget v9, v9, Lh1/e;->c:I

    .line 272
    .line 273
    new-instance v12, Lq2/h0;

    .line 274
    .line 275
    const/4 v11, 0x2

    .line 276
    invoke-direct {v12, v11}, Lq2/h0;-><init>(I)V

    .line 277
    .line 278
    .line 279
    iput-boolean v14, v6, Lq2/h0;->p:Z

    .line 280
    .line 281
    invoke-virtual {v6, v9, v12}, Lq2/h0;->B(ILq2/h0;)V

    .line 282
    .line 283
    .line 284
    const/4 v11, 0x0

    .line 285
    iput-boolean v11, v6, Lq2/h0;->p:Z

    .line 286
    .line 287
    iget v9, v5, Lo2/i0;->o:I

    .line 288
    .line 289
    add-int/2addr v9, v14

    .line 290
    iput v9, v5, Lo2/i0;->o:I

    .line 291
    .line 292
    move-object v9, v12

    .line 293
    :goto_2
    invoke-virtual {v8, v7, v9}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_6
    check-cast v9, Lq2/h0;

    .line 297
    .line 298
    const/4 v11, 0x0

    .line 299
    invoke-virtual {v5, v9, v7, v11, v0}, Lo2/i0;->h(Lq2/h0;Ljava/lang/Object;ZLf9/n;)V

    .line 300
    .line 301
    .line 302
    :cond_7
    :goto_3
    invoke-virtual {v6}, Lq2/h0;->I()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_8

    .line 307
    .line 308
    new-instance v0, Lo2/g0;

    .line 309
    .line 310
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_8
    new-instance v0, Lo2/h0;

    .line 315
    .line 316
    invoke-direct {v0, v5, v7}, Lo2/h0;-><init>(Lo2/i0;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :goto_4
    iput-object v0, v1, Lh0/q0;->e:Lo2/f1;

    .line 320
    .line 321
    iput-boolean v14, v1, Lh0/q0;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .line 323
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Lh0/q0;->i()V

    .line 327
    .line 328
    .line 329
    iget-wide v5, v1, Lh0/q0;->n:J

    .line 330
    .line 331
    iget-wide v7, v10, Lh0/c;->a:J

    .line 332
    .line 333
    invoke-static {v5, v6, v7, v8}, Lh0/c;->a(JJ)J

    .line 334
    .line 335
    .line 336
    move-result-wide v5

    .line 337
    iput-wide v5, v10, Lh0/c;->a:J

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :catchall_0
    move-exception v0

    .line 341
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 342
    .line 343
    .line 344
    throw v0

    .line 345
    :cond_9
    :goto_5
    invoke-virtual {v1}, Lh0/q0;->e()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-nez v0, :cond_a

    .line 350
    .line 351
    goto/16 :goto_11

    .line 352
    .line 353
    :cond_a
    iget-boolean v0, v1, Lh0/q0;->j:Z

    .line 354
    .line 355
    if-nez v0, :cond_b

    .line 356
    .line 357
    iget-wide v5, v1, Lh0/q0;->m:J

    .line 358
    .line 359
    cmp-long v0, v5, v15

    .line 360
    .line 361
    if-lez v0, :cond_1a

    .line 362
    .line 363
    const-string v0, "compose:lazy:prefetch:resolve-nested"

    .line 364
    .line 365
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :try_start_1
    invoke-virtual {v1}, Lh0/q0;->g()Lh0/p0;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iput-object v0, v1, Lh0/q0;->k:Lh0/p0;

    .line 373
    .line 374
    iput-boolean v14, v1, Lh0/q0;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :catchall_1
    move-exception v0

    .line 381
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :cond_b
    :goto_6
    iget-object v0, v1, Lh0/q0;->k:Lh0/p0;

    .line 386
    .line 387
    if-eqz v0, :cond_18

    .line 388
    .line 389
    iget v5, v10, Lh0/c;->d:I

    .line 390
    .line 391
    iget-boolean v6, v1, Lh0/q0;->l:Z

    .line 392
    .line 393
    iget-object v7, v0, Lh0/p0;->b:[Ljava/util/List;

    .line 394
    .line 395
    iget v8, v0, Lh0/p0;->c:I

    .line 396
    .line 397
    iget-object v9, v0, Lh0/p0;->a:Ljava/util/List;

    .line 398
    .line 399
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    if-lt v8, v12, :cond_c

    .line 404
    .line 405
    goto/16 :goto_10

    .line 406
    .line 407
    :cond_c
    iget-object v8, v0, Lh0/p0;->f:Lh0/q0;

    .line 408
    .line 409
    iget-boolean v8, v8, Lh0/q0;->g:Z

    .line 410
    .line 411
    if-eqz v8, :cond_d

    .line 412
    .line 413
    const-string v8, "Should not execute nested prefetch on canceled request"

    .line 414
    .line 415
    invoke-static {v8}, Lc0/b;->c(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    :cond_d
    const-string v8, "compose:lazy:prefetch:update_nested_prefetch_count"

    .line 419
    .line 420
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :try_start_2
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    const/4 v12, 0x0

    .line 428
    :goto_7
    if-ge v12, v8, :cond_e

    .line 429
    .line 430
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v17

    .line 434
    move-object/from16 v11, v17

    .line 435
    .line 436
    check-cast v11, Lh0/h0;

    .line 437
    .line 438
    iput v5, v11, Lh0/h0;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 439
    .line 440
    add-int/lit8 v12, v12, 0x1

    .line 441
    .line 442
    goto :goto_7

    .line 443
    :catchall_2
    move-exception v0

    .line 444
    goto/16 :goto_f

    .line 445
    .line 446
    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 447
    .line 448
    .line 449
    const-string v5, "compose:lazy:prefetch:nested"

    .line 450
    .line 451
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :goto_8
    :try_start_3
    iget v5, v0, Lh0/p0;->c:I

    .line 455
    .line 456
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 457
    .line 458
    .line 459
    move-result v8

    .line 460
    if-ge v5, v8, :cond_17

    .line 461
    .line 462
    iget v5, v0, Lh0/p0;->c:I

    .line 463
    .line 464
    aget-object v5, v7, v5

    .line 465
    .line 466
    if-nez v5, :cond_11

    .line 467
    .line 468
    invoke-virtual/range {p1 .. p1}, Lh0/a;->a()J

    .line 469
    .line 470
    .line 471
    move-result-wide v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 472
    cmp-long v5, v11, v15

    .line 473
    .line 474
    if-gtz v5, :cond_f

    .line 475
    .line 476
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 477
    .line 478
    .line 479
    return v14

    .line 480
    :cond_f
    :try_start_4
    iget v5, v0, Lh0/p0;->c:I

    .line 481
    .line 482
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    check-cast v8, Lh0/h0;

    .line 487
    .line 488
    iget-object v11, v8, Lh0/h0;->a:Lf9/k;

    .line 489
    .line 490
    if-nez v11, :cond_10

    .line 491
    .line 492
    sget-object v8, Ls8/w;->a:Ls8/w;

    .line 493
    .line 494
    goto :goto_9

    .line 495
    :cond_10
    new-instance v12, Lh0/f0;

    .line 496
    .line 497
    iget v13, v8, Lh0/h0;->d:I

    .line 498
    .line 499
    invoke-direct {v12, v8, v13}, Lh0/f0;-><init>(Lh0/h0;I)V

    .line 500
    .line 501
    .line 502
    invoke-interface {v11, v12}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    iget-object v11, v12, Lh0/f0;->b:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 508
    .line 509
    .line 510
    move-result v12

    .line 511
    iput v12, v8, Lh0/h0;->f:I

    .line 512
    .line 513
    move-object v8, v11

    .line 514
    :goto_9
    aput-object v8, v7, v5

    .line 515
    .line 516
    goto :goto_a

    .line 517
    :catchall_3
    move-exception v0

    .line 518
    goto :goto_e

    .line 519
    :cond_11
    :goto_a
    iget v5, v0, Lh0/p0;->c:I

    .line 520
    .line 521
    aget-object v5, v7, v5

    .line 522
    .line 523
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :goto_b
    iget v8, v0, Lh0/p0;->d:I

    .line 527
    .line 528
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 529
    .line 530
    .line 531
    move-result v11

    .line 532
    if-ge v8, v11, :cond_16

    .line 533
    .line 534
    iget v8, v0, Lh0/p0;->d:I

    .line 535
    .line 536
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v8

    .line 540
    check-cast v8, Lh0/q0;

    .line 541
    .line 542
    if-eqz v6, :cond_14

    .line 543
    .line 544
    if-eqz v8, :cond_12

    .line 545
    .line 546
    const/4 v11, 0x1

    .line 547
    goto :goto_c

    .line 548
    :cond_12
    const/4 v11, 0x0

    .line 549
    :goto_c
    if-eqz v11, :cond_13

    .line 550
    .line 551
    move-object v11, v8

    .line 552
    goto :goto_d

    .line 553
    :cond_13
    const/4 v11, 0x0

    .line 554
    :goto_d
    if-eqz v11, :cond_14

    .line 555
    .line 556
    iput-boolean v14, v11, Lh0/q0;->l:Z

    .line 557
    .line 558
    :cond_14
    iput-boolean v14, v0, Lh0/p0;->e:Z

    .line 559
    .line 560
    move-object/from16 v12, p1

    .line 561
    .line 562
    invoke-virtual {v8, v12}, Lh0/q0;->c(Lh0/a;)Z

    .line 563
    .line 564
    .line 565
    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 566
    if-eqz v8, :cond_15

    .line 567
    .line 568
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 569
    .line 570
    .line 571
    return v14

    .line 572
    :cond_15
    :try_start_5
    iget v8, v0, Lh0/p0;->d:I

    .line 573
    .line 574
    add-int/2addr v8, v14

    .line 575
    iput v8, v0, Lh0/p0;->d:I

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_16
    move-object/from16 v12, p1

    .line 579
    .line 580
    const/4 v11, 0x0

    .line 581
    iput v11, v0, Lh0/p0;->d:I

    .line 582
    .line 583
    iget v5, v0, Lh0/p0;->c:I

    .line 584
    .line 585
    add-int/2addr v5, v14

    .line 586
    iput v5, v0, Lh0/p0;->c:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 587
    .line 588
    goto/16 :goto_8

    .line 589
    .line 590
    :cond_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 591
    .line 592
    .line 593
    goto :goto_10

    .line 594
    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 595
    .line 596
    .line 597
    throw v0

    .line 598
    :goto_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 599
    .line 600
    .line 601
    throw v0

    .line 602
    :cond_18
    :goto_10
    iget-object v0, v1, Lh0/q0;->k:Lh0/p0;

    .line 603
    .line 604
    if-eqz v0, :cond_19

    .line 605
    .line 606
    iget-boolean v0, v0, Lh0/p0;->e:Z

    .line 607
    .line 608
    if-ne v0, v14, :cond_19

    .line 609
    .line 610
    invoke-virtual {v1}, Lh0/q0;->i()V

    .line 611
    .line 612
    .line 613
    invoke-static {v4, v2, v3}, Li9/a;->Y(Ljava/lang/String;J)V

    .line 614
    .line 615
    .line 616
    iget-object v0, v1, Lh0/q0;->k:Lh0/p0;

    .line 617
    .line 618
    if-eqz v0, :cond_19

    .line 619
    .line 620
    const/4 v11, 0x0

    .line 621
    iput-boolean v11, v0, Lh0/p0;->e:Z

    .line 622
    .line 623
    :cond_19
    iget-object v0, v1, Lh0/q0;->d:Ln3/a;

    .line 624
    .line 625
    iget-boolean v2, v1, Lh0/q0;->f:Z

    .line 626
    .line 627
    if-nez v2, :cond_1b

    .line 628
    .line 629
    if-eqz v0, :cond_1b

    .line 630
    .line 631
    iget-wide v2, v1, Lh0/q0;->m:J

    .line 632
    .line 633
    iget-wide v4, v10, Lh0/c;->c:J

    .line 634
    .line 635
    invoke-virtual {v1, v2, v3, v4, v5}, Lh0/q0;->h(JJ)Z

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    if-eqz v2, :cond_1a

    .line 640
    .line 641
    const-string v2, "compose:lazy:prefetch:measure"

    .line 642
    .line 643
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    :try_start_6
    iget-wide v2, v0, Ln3/a;->a:J

    .line 647
    .line 648
    invoke-virtual {v1, v2, v3}, Lh0/q0;->f(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 649
    .line 650
    .line 651
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1}, Lh0/q0;->i()V

    .line 655
    .line 656
    .line 657
    iget-wide v2, v1, Lh0/q0;->n:J

    .line 658
    .line 659
    iget-wide v4, v10, Lh0/c;->c:J

    .line 660
    .line 661
    invoke-static {v2, v3, v4, v5}, Lh0/c;->a(JJ)J

    .line 662
    .line 663
    .line 664
    move-result-wide v2

    .line 665
    iput-wide v2, v10, Lh0/c;->c:J

    .line 666
    .line 667
    iget-object v0, v1, Lh0/q0;->c:Lf9/k;

    .line 668
    .line 669
    if-eqz v0, :cond_1b

    .line 670
    .line 671
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    goto :goto_12

    .line 675
    :catchall_4
    move-exception v0

    .line 676
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 677
    .line 678
    .line 679
    throw v0

    .line 680
    :cond_1a
    :goto_11
    return v14

    .line 681
    :cond_1b
    :goto_12
    iget-object v0, v1, Lh0/q0;->k:Lh0/p0;

    .line 682
    .line 683
    iget-boolean v2, v1, Lh0/q0;->f:Z

    .line 684
    .line 685
    if-eqz v2, :cond_21

    .line 686
    .line 687
    iget-boolean v2, v1, Lh0/q0;->j:Z

    .line 688
    .line 689
    if-eqz v2, :cond_21

    .line 690
    .line 691
    if-eqz v0, :cond_21

    .line 692
    .line 693
    iget-object v0, v0, Lh0/p0;->a:Ljava/util/List;

    .line 694
    .line 695
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    const v3, 0x7fffffff

    .line 700
    .line 701
    .line 702
    const/4 v4, 0x0

    .line 703
    const v5, 0x7fffffff

    .line 704
    .line 705
    .line 706
    :goto_13
    if-ge v4, v2, :cond_1c

    .line 707
    .line 708
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    check-cast v6, Lh0/h0;

    .line 713
    .line 714
    iget v6, v6, Lh0/h0;->e:I

    .line 715
    .line 716
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 717
    .line 718
    .line 719
    move-result v5

    .line 720
    add-int/lit8 v4, v4, 0x1

    .line 721
    .line 722
    goto :goto_13

    .line 723
    :cond_1c
    if-ne v5, v3, :cond_1d

    .line 724
    .line 725
    const/4 v5, 0x0

    .line 726
    :cond_1d
    iget v2, v10, Lh0/c;->d:I

    .line 727
    .line 728
    const/4 v13, -0x1

    .line 729
    if-ne v2, v13, :cond_1e

    .line 730
    .line 731
    move v2, v5

    .line 732
    goto :goto_14

    .line 733
    :cond_1e
    mul-int/lit8 v2, v2, 0x3

    .line 734
    .line 735
    add-int/2addr v2, v5

    .line 736
    div-int/lit8 v2, v2, 0x4

    .line 737
    .line 738
    :goto_14
    iput v2, v10, Lh0/c;->d:I

    .line 739
    .line 740
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    const/4 v4, 0x0

    .line 745
    const v6, 0x7fffffff

    .line 746
    .line 747
    .line 748
    :goto_15
    if-ge v4, v2, :cond_1f

    .line 749
    .line 750
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v7

    .line 754
    check-cast v7, Lh0/h0;

    .line 755
    .line 756
    iget v7, v7, Lh0/h0;->f:I

    .line 757
    .line 758
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 759
    .line 760
    .line 761
    move-result v6

    .line 762
    add-int/lit8 v4, v4, 0x1

    .line 763
    .line 764
    goto :goto_15

    .line 765
    :cond_1f
    if-ne v6, v3, :cond_20

    .line 766
    .line 767
    const/4 v6, 0x0

    .line 768
    :cond_20
    if-ge v6, v5, :cond_21

    .line 769
    .line 770
    move-wide v2, v15

    .line 771
    iput-wide v2, v10, Lh0/c;->c:J

    .line 772
    .line 773
    const/4 v11, 0x0

    .line 774
    return v11

    .line 775
    :cond_21
    const/4 v11, 0x0

    .line 776
    return v11

    .line 777
    :cond_22
    const/4 v11, 0x0

    .line 778
    invoke-virtual {v1}, Lh0/q0;->b()V

    .line 779
    .line 780
    .line 781
    return v11
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh0/q0;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method public final f(J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lh0/q0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Callers should check whether the request is still valid before calling performMeasure()"

    .line 6
    .line 7
    invoke-static {v0}, Lc0/b;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lh0/q0;->f:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "Request was already measured!"

    .line 15
    .line 16
    invoke-static {v0}, Lc0/b;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lh0/q0;->f:Z

    .line 21
    .line 22
    iget-object v0, p0, Lh0/q0;->e:Lo2/f1;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Lo2/f1;->b()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0, v2, p1, p2}, Lo2/f1;->e(IJ)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void

    .line 40
    :cond_3
    const-string p1, "performComposition() must be called before performMeasure()"

    .line 41
    .line 42
    invoke-static {p1}, Lc0/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 43
    .line 44
    .line 45
    new-instance p1, Lac/p;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final g()Lh0/p0;
    .locals 4

    .line 1
    iget-object v0, p0, Lh0/q0;->e:Lo2/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v1, Lg9/x;

    .line 6
    .line 7
    invoke-direct {v1}, Lg9/x;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, La8/q;

    .line 11
    .line 12
    const/16 v3, 0x10

    .line 13
    .line 14
    invoke-direct {v2, v3, v1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2}, Lo2/f1;->d(La8/q;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Lh0/p0;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0}, Lh0/p0;-><init>(Lh0/q0;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return-object v0

    .line 34
    :cond_1
    const-string v0, "Should precompose before resolving nested prefetch states"

    .line 35
    .line 36
    invoke-static {v0}, Lc0/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lac/p;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final h(JJ)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh0/q0;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 p3, 0x0

    .line 6
    .line 7
    :cond_0
    cmp-long v0, p1, p3

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final i()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lyb/i;->b:I

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-wide v3, Lyb/i;->a:J

    .line 10
    .line 11
    sub-long/2addr v1, v3

    .line 12
    iget-wide v3, v0, Lh0/q0;->o:J

    .line 13
    .line 14
    sget-object v5, Lyb/c;->b:Lyb/c;

    .line 15
    .line 16
    const-string v6, "unit"

    .line 17
    .line 18
    invoke-static {v5, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v6, 0x1

    .line 22
    .line 23
    sub-long v8, v3, v6

    .line 24
    .line 25
    or-long/2addr v8, v6

    .line 26
    const-wide/16 v10, 0x0

    .line 27
    .line 28
    const-wide v12, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmp-long v14, v8, v12

    .line 34
    .line 35
    if-nez v14, :cond_2

    .line 36
    .line 37
    cmp-long v5, v1, v3

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    sget v3, Lyb/a;->d:I

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    cmp-long v5, v3, v10

    .line 45
    .line 46
    if-gez v5, :cond_1

    .line 47
    .line 48
    sget-wide v3, Lyb/a;->c:J

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-wide v3, Lyb/a;->b:J

    .line 52
    .line 53
    :goto_0
    invoke-static {v3, v4}, Lyb/a;->g(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    sub-long v8, v1, v6

    .line 59
    .line 60
    or-long/2addr v8, v6

    .line 61
    cmp-long v14, v8, v12

    .line 62
    .line 63
    if-nez v14, :cond_4

    .line 64
    .line 65
    cmp-long v3, v1, v10

    .line 66
    .line 67
    if-gez v3, :cond_3

    .line 68
    .line 69
    sget-wide v3, Lyb/a;->c:J

    .line 70
    .line 71
    :goto_1
    move-wide v10, v3

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    sget-wide v3, Lyb/a;->b:J

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    sub-long v8, v1, v3

    .line 77
    .line 78
    xor-long v14, v8, v1

    .line 79
    .line 80
    move-wide/from16 v16, v10

    .line 81
    .line 82
    xor-long v10, v8, v3

    .line 83
    .line 84
    not-long v10, v10

    .line 85
    and-long/2addr v10, v14

    .line 86
    cmp-long v14, v10, v16

    .line 87
    .line 88
    if-gez v14, :cond_7

    .line 89
    .line 90
    sget-object v10, Lyb/c;->c:Lyb/c;

    .line 91
    .line 92
    invoke-virtual {v5, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-gez v11, :cond_5

    .line 97
    .line 98
    invoke-static {v6, v7, v10, v5}, Lyb/f;->c(JLyb/c;Lyb/c;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    div-long v8, v1, v6

    .line 103
    .line 104
    div-long v14, v3, v6

    .line 105
    .line 106
    sub-long/2addr v8, v14

    .line 107
    rem-long v14, v1, v6

    .line 108
    .line 109
    rem-long/2addr v3, v6

    .line 110
    sub-long/2addr v14, v3

    .line 111
    sget v3, Lyb/a;->d:I

    .line 112
    .line 113
    invoke-static {v8, v9, v10}, Lyb/f;->k(JLyb/c;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    invoke-static {v14, v15, v5}, Lyb/f;->k(JLyb/c;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    invoke-static {v3, v4, v5, v6}, Lyb/a;->e(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    cmp-long v3, v8, v16

    .line 127
    .line 128
    if-gez v3, :cond_6

    .line 129
    .line 130
    sget-wide v3, Lyb/a;->c:J

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    sget-wide v3, Lyb/a;->b:J

    .line 134
    .line 135
    :goto_2
    invoke-static {v3, v4}, Lyb/a;->g(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v10

    .line 139
    goto :goto_3

    .line 140
    :cond_7
    invoke-static {v8, v9, v5}, Lyb/f;->k(JLyb/c;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v10

    .line 144
    :goto_3
    const/4 v3, 0x1

    .line 145
    shr-long v4, v10, v3

    .line 146
    .line 147
    sget v6, Lyb/a;->d:I

    .line 148
    .line 149
    long-to-int v6, v10

    .line 150
    and-int/2addr v3, v6

    .line 151
    if-nez v3, :cond_8

    .line 152
    .line 153
    move-wide v12, v4

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    const-wide v6, 0x8637bd05af6L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    cmp-long v3, v4, v6

    .line 161
    .line 162
    if-lez v3, :cond_9

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    const-wide v6, -0x8637bd05af6L

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    cmp-long v3, v4, v6

    .line 171
    .line 172
    if-gez v3, :cond_a

    .line 173
    .line 174
    const-wide/high16 v12, -0x8000000000000000L

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_a
    const v3, 0xf4240

    .line 178
    .line 179
    .line 180
    int-to-long v6, v3

    .line 181
    mul-long v12, v4, v6

    .line 182
    .line 183
    :goto_4
    iput-wide v12, v0, Lh0/q0;->n:J

    .line 184
    .line 185
    iget-wide v3, v0, Lh0/q0;->m:J

    .line 186
    .line 187
    sub-long/2addr v3, v12

    .line 188
    iput-wide v3, v0, Lh0/q0;->m:J

    .line 189
    .line 190
    iput-wide v1, v0, Lh0/q0;->o:J

    .line 191
    .line 192
    const-string v1, "compose:lazy:prefetch:available_time_nanos"

    .line 193
    .line 194
    invoke-static {v1, v3, v4}, Li9/a;->Y(Ljava/lang/String;J)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HandleAndRequestImpl { index = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lh0/q0;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", constraints = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lh0/q0;->d:Ln3/a;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isComposed = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lh0/q0;->e()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", isMeasured = "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lh0/q0;->f:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", isCanceled = "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Lh0/q0;->g:Z

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " }"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
