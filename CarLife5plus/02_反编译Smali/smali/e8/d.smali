.class public final Le8/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Le8/d;

.field public static final b:Le8/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le8/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le8/d;->a:Le8/d;

    .line 7
    .line 8
    new-instance v0, Le8/d;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Le8/d;->b:Le8/d;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(ILf1/s;)V
    .locals 12

    .line 1
    sget-object v0, Lr1/c;->a:Lr1/h;

    .line 2
    .line 3
    const v1, -0xb1c4ce2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_1
    :goto_0
    sget-object v1, Le8/i;->h:Ldc/l0;

    .line 26
    .line 27
    invoke-static {v1, p2}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->z:Ldc/l0;

    .line 32
    .line 33
    invoke-static {v2, p2}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const v5, 0x4ac383a3    # 6406609.5f

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v5, v2}, Lf1/s;->U(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static {v0, v5}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-wide v7, p2, Lf1/s;->T:J

    .line 80
    .line 81
    const/16 v9, 0x20

    .line 82
    .line 83
    ushr-long v10, v7, v9

    .line 84
    .line 85
    xor-long/2addr v7, v10

    .line 86
    long-to-int v8, v7

    .line 87
    invoke-virtual {p2}, Lf1/s;->l()Lf1/q1;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {p2, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    sget-object v10, Lq2/j;->d0:Lq2/i;

    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object v10, Lq2/i;->b:Lq2/a0;

    .line 101
    .line 102
    invoke-virtual {p2}, Lf1/s;->a0()V

    .line 103
    .line 104
    .line 105
    iget-boolean v11, p2, Lf1/s;->S:Z

    .line 106
    .line 107
    if-eqz v11, :cond_2

    .line 108
    .line 109
    invoke-virtual {p2, v10}, Lf1/s;->k(Lf9/a;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p2}, Lf1/s;->k0()V

    .line 114
    .line 115
    .line 116
    :goto_1
    sget-object v10, Lq2/i;->e:Lq2/h;

    .line 117
    .line 118
    invoke-static {p2, v10, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 122
    .line 123
    invoke-static {p2, v6, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v6, Lq2/i;->f:Lq2/h;

    .line 127
    .line 128
    iget-boolean v7, p2, Lf1/s;->S:Z

    .line 129
    .line 130
    if-nez v7, :cond_3

    .line 131
    .line 132
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-static {v7, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-nez v7, :cond_4

    .line 145
    .line 146
    :cond_3
    invoke-static {v8, p2, v8, v6}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    sget-object v6, Lq2/i;->c:Lq2/h;

    .line 150
    .line 151
    invoke-static {p2, v6, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object v2, Le8/c;->d:Le8/d;

    .line 155
    .line 156
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Le8/i;

    .line 161
    .line 162
    iget v6, v6, Le8/i;->c:I

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    sget-object v2, Le8/c;->f:Lz8/b;

    .line 168
    .line 169
    invoke-virtual {v2}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_6

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    move-object v8, v7

    .line 184
    check-cast v8, Le8/c;

    .line 185
    .line 186
    iget v8, v8, Le8/c;->b:I

    .line 187
    .line 188
    if-ne v8, v6, :cond_5

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    const/4 v7, 0x0

    .line 192
    :goto_2
    check-cast v7, Le8/c;

    .line 193
    .line 194
    if-eqz v7, :cond_7

    .line 195
    .line 196
    iget-object v2, v7, Le8/c;->c:Lr1/h;

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    sget-object v2, Lr1/c;->e:Lr1/h;

    .line 200
    .line 201
    :goto_3
    sget-object v6, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 202
    .line 203
    invoke-virtual {v6, v2}, Landroidx/compose/foundation/layout/b;->a(Lr1/d;)Lr1/p;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Le8/i;

    .line 212
    .line 213
    iget v6, v6, Le8/i;->a:I

    .line 214
    .line 215
    sget-object v7, Lr1/m;->a:Lr1/m;

    .line 216
    .line 217
    const/4 v8, 0x1

    .line 218
    if-gt v8, v6, :cond_8

    .line 219
    .line 220
    if-ge v6, v4, :cond_8

    .line 221
    .line 222
    sget-object v4, Ll8/c;->a:Lfc/c;

    .line 223
    .line 224
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    check-cast v4, Le8/i;

    .line 229
    .line 230
    iget v4, v4, Le8/i;->a:I

    .line 231
    .line 232
    invoke-static {v4}, Ll8/c;->f(I)F

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    goto :goto_4

    .line 241
    :cond_8
    sget-object v4, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 242
    .line 243
    :goto_4
    check-cast v2, Lq2/z0;

    .line 244
    .line 245
    invoke-static {v2, v4}, Lp9/v;->f(Lr1/p;Lr1/p;)Lr1/p;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Le8/i;

    .line 254
    .line 255
    iget v4, v4, Le8/i;->b:I

    .line 256
    .line 257
    if-gt v8, v4, :cond_9

    .line 258
    .line 259
    if-ge v4, v3, :cond_9

    .line 260
    .line 261
    sget-object v3, Ll8/c;->a:Lfc/c;

    .line 262
    .line 263
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Le8/i;

    .line 268
    .line 269
    iget v3, v3, Le8/i;->b:I

    .line 270
    .line 271
    invoke-static {v3}, Ll8/c;->f(I)F

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    goto :goto_5

    .line 280
    :cond_9
    sget-object v3, Landroidx/compose/foundation/layout/c;->b:Landroidx/compose/foundation/layout/FillElement;

    .line 281
    .line 282
    :goto_5
    invoke-interface {v2, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-static {v0, v5}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-wide v3, p2, Lf1/s;->T:J

    .line 291
    .line 292
    ushr-long v6, v3, v9

    .line 293
    .line 294
    xor-long/2addr v3, v6

    .line 295
    long-to-int v4, v3

    .line 296
    invoke-virtual {p2}, Lf1/s;->l()Lf1/q1;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-static {p2, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 305
    .line 306
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 310
    .line 311
    invoke-virtual {p2}, Lf1/s;->a0()V

    .line 312
    .line 313
    .line 314
    iget-boolean v7, p2, Lf1/s;->S:Z

    .line 315
    .line 316
    if-eqz v7, :cond_a

    .line 317
    .line 318
    invoke-virtual {p2, v6}, Lf1/s;->k(Lf9/a;)V

    .line 319
    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_a
    invoke-virtual {p2}, Lf1/s;->k0()V

    .line 323
    .line 324
    .line 325
    :goto_6
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 326
    .line 327
    invoke-static {p2, v6, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 331
    .line 332
    invoke-static {p2, v0, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 336
    .line 337
    iget-boolean v3, p2, Lf1/s;->S:Z

    .line 338
    .line 339
    if-nez v3, :cond_b

    .line 340
    .line 341
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-static {v3, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-nez v3, :cond_c

    .line 354
    .line 355
    :cond_b
    invoke-static {v4, p2, v4, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 356
    .line 357
    .line 358
    :cond_c
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 359
    .line 360
    invoke-static {p2, v0, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Le8/i;

    .line 368
    .line 369
    const/16 v1, 0x30

    .line 370
    .line 371
    sget-object v2, Le8/d;->a:Le8/d;

    .line 372
    .line 373
    invoke-virtual {v2, v0, p2, v1}, Le8/d;->b(Le8/i;Lf1/s;I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2, v8}, Lf1/s;->p(Z)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2, v8}, Lf1/s;->p(Z)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 383
    .line 384
    .line 385
    :goto_7
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    if-eqz p2, :cond_d

    .line 390
    .line 391
    new-instance v0, La8/d;

    .line 392
    .line 393
    const/16 v1, 0x8

    .line 394
    .line 395
    invoke-direct {v0, p1, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 399
    .line 400
    :cond_d
    return-void
.end method

.method public b(Le8/i;Lf1/s;I)V
    .locals 4

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x671c817a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x4

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int/2addr v0, p3

    .line 24
    and-int/lit8 v3, v0, 0x3

    .line 25
    .line 26
    if-ne v3, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    :goto_1
    sget-object v1, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 40
    .line 41
    const v3, 0x4c5de2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v3}, Lf1/s;->W(I)V

    .line 45
    .line 46
    .line 47
    and-int/lit8 v0, v0, 0xe

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    if-ne v0, v2, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    :goto_2
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 62
    .line 63
    if-ne v2, v0, :cond_5

    .line 64
    .line 65
    :cond_4
    new-instance v2, La8/q;

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-direct {v2, v0, p1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    check-cast v2, Lf9/k;

    .line 75
    .line 76
    invoke-virtual {p2, v3}, Lf1/s;->p(Z)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    const/16 v3, 0x30

    .line 81
    .line 82
    invoke-static {v2, v1, v0, p2, v3}, Landroidx/compose/ui/viewinterop/a;->b(Lf9/k;Lr1/p;Lf9/k;Lf1/s;I)V

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-eqz p2, :cond_6

    .line 90
    .line 91
    new-instance v0, La8/w;

    .line 92
    .line 93
    const/4 v1, 0x3

    .line 94
    invoke-direct {v0, p3, v1, p0, p1}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 98
    .line 99
    :cond_6
    return-void
.end method

.method public c(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, -0x50627f95

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "\u89c6\u9891\u8bbe\u7f6e"

    .line 33
    .line 34
    const-string v1, "CarLife\u663e\u793a\u753b\u9762\u8bbe\u7f6e"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    sget-object v0, Le8/i;->h:Ldc/l0;

    .line 45
    .line 46
    invoke-static {v0, v4}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const v0, 0x6e3c21fe

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 61
    .line 62
    if-ne v0, v8, :cond_2

    .line 63
    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    move-object v9, v0

    .line 74
    check-cast v9, Lf1/b1;

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, La8/j;

    .line 81
    .line 82
    const/4 v1, 0x6

    .line 83
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 84
    .line 85
    .line 86
    const v1, -0x1507329e

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sget-object v1, Le8/b;->a:Ln1/c;

    .line 94
    .line 95
    const v11, 0x4c5de2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-ne v2, v8, :cond_3

    .line 106
    .line 107
    new-instance v2, La8/f;

    .line 108
    .line 109
    const/16 v3, 0x18

    .line 110
    .line 111
    invoke-direct {v2, v9, v3}, La8/f;-><init>(Lf1/b1;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    move-object v3, v2

    .line 118
    check-cast v3, Lf9/a;

    .line 119
    .line 120
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 121
    .line 122
    .line 123
    const/16 v5, 0xc36

    .line 124
    .line 125
    const/4 v6, 0x4

    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-ne v1, v8, :cond_4

    .line 148
    .line 149
    new-instance v1, La8/f;

    .line 150
    .line 151
    const/16 v2, 0x19

    .line 152
    .line 153
    invoke-direct {v1, v9, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    check-cast v1, Lf9/a;

    .line 160
    .line 161
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Le8/h;

    .line 165
    .line 166
    const/4 v3, 0x2

    .line 167
    invoke-direct {v2, v7, v3}, Le8/h;-><init>(Lf1/v2;I)V

    .line 168
    .line 169
    .line 170
    const v3, -0x1c170b5e

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const/16 v12, 0x30

    .line 178
    .line 179
    const/16 v13, 0x3fc

    .line 180
    .line 181
    const-wide/16 v2, 0x0

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v6, 0x0

    .line 186
    const/4 v7, 0x0

    .line 187
    const/4 v8, 0x0

    .line 188
    const/4 v9, 0x0

    .line 189
    move-object/from16 v11, p2

    .line 190
    .line 191
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 192
    .line 193
    .line 194
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    new-instance v1, La8/w;

    .line 201
    .line 202
    const/4 v2, 0x4

    .line 203
    move-object/from16 v3, p0

    .line 204
    .line 205
    invoke-direct {v1, v14, v2, v3, v15}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 209
    .line 210
    return-void

    .line 211
    :cond_5
    move-object/from16 v3, p0

    .line 212
    .line 213
    return-void
.end method
