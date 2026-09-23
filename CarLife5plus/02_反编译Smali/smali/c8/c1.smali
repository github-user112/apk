.class public final synthetic Lc8/c1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;Lf1/b1;Lf1/b1;)V
    .locals 1

    .line 2
    const/4 v0, 0x7

    iput v0, p0, Lc8/c1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/c1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc8/c1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc8/c1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lf1/s;Lg1/a;Lf1/g2;Lf1/a1;)V
    .locals 0

    .line 1
    const/4 p4, 0x2

    iput p4, p0, Lc8/c1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/c1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc8/c1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc8/c1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lf9/k;Lc8/e1;Lf1/b1;Lf1/h1;)V
    .locals 0

    .line 3
    const/4 p2, 0x0

    iput p2, p0, Lc8/c1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/c1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc8/c1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lc8/c1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/b1;I)V
    .locals 0

    .line 4
    iput p4, p0, Lc8/c1;->a:I

    iput-object p1, p0, Lc8/c1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc8/c1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lc8/c1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 5
    iput p4, p0, Lc8/c1;->a:I

    iput-object p1, p0, Lc8/c1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc8/c1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc8/c1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lc8/c1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v4, p0, Lc8/c1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Lc8/c1;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, p0, Lc8/c1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v6, Lz/f;

    .line 17
    .line 18
    check-cast v5, Lz/f2;

    .line 19
    .line 20
    check-cast v4, Lz/c;

    .line 21
    .line 22
    iget-object v0, v6, Lz/f;->r:Lh0/k;

    .line 23
    .line 24
    :goto_0
    iget-object v2, v0, Lh0/k;->a:Lh1/e;

    .line 25
    .line 26
    iget v7, v2, Lh1/e;->c:I

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-eqz v7, :cond_2

    .line 30
    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    add-int/lit8 v7, v7, -0x1

    .line 34
    .line 35
    iget-object v2, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 36
    .line 37
    aget-object v2, v2, v7

    .line 38
    .line 39
    check-cast v2, Lz/e;

    .line 40
    .line 41
    iget-object v2, v2, Lz/e;->a:Li0/d;

    .line 42
    .line 43
    invoke-virtual {v2}, Li0/d;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lx1/c;

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-wide v9, v6, Lz/f;->v:J

    .line 54
    .line 55
    invoke-virtual {v6, v2, v9, v10}, Lz/f;->C0(Lx1/c;J)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_1
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v2, v0, Lh0/k;->a:Lh1/e;

    .line 62
    .line 63
    iget v7, v2, Lh1/e;->c:I

    .line 64
    .line 65
    sub-int/2addr v7, v8

    .line 66
    invoke-virtual {v2, v7}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lz/e;

    .line 71
    .line 72
    iget-object v2, v2, Lz/e;->b:Lac/i;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lac/i;->f(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 79
    .line 80
    const-string v1, "MutableVector is empty."

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_2
    iget-boolean v0, v6, Lz/f;->t:Z

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v6}, Lz/f;->B0()Lx1/c;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-wide v9, v6, Lz/f;->v:J

    .line 97
    .line 98
    invoke-virtual {v6, v0, v9, v10}, Lz/f;->C0(Lx1/c;J)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ne v0, v8, :cond_3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    const/4 v8, 0x0

    .line 106
    :goto_2
    if-eqz v8, :cond_4

    .line 107
    .line 108
    iput-boolean v1, v6, Lz/f;->t:Z

    .line 109
    .line 110
    :cond_4
    invoke-static {v6, v4}, Lz/f;->A0(Lz/f;Lz/c;)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, v5, Lz/f2;->e:F

    .line 115
    .line 116
    return-object v3

    .line 117
    :pswitch_0
    check-cast v5, Lf1/b1;

    .line 118
    .line 119
    check-cast v6, Lf1/b1;

    .line 120
    .line 121
    check-cast v4, Lf1/b1;

    .line 122
    .line 123
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 136
    .line 137
    const-string v0, "\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    .line 138
    .line 139
    invoke-static {v1, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    const/16 v2, 0x8

    .line 154
    .line 155
    if-ge v0, v2, :cond_6

    .line 156
    .line 157
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 158
    .line 159
    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u5c11\u4e8e8\u4f4d"

    .line 160
    .line 161
    invoke-static {v1, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    sget-object v0, Ll8/o;->a:Lr8/o;

    .line 178
    .line 179
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v0, v1}, Ll8/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    invoke-static {}, Ll8/o;->a()V

    .line 196
    .line 197
    .line 198
    :goto_3
    return-object v3

    .line 199
    :pswitch_1
    check-cast v6, Landroid/view/View;

    .line 200
    .line 201
    check-cast v4, Lt7/f;

    .line 202
    .line 203
    check-cast v5, Lf1/b1;

    .line 204
    .line 205
    invoke-virtual {v6, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v5, v4}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return-object v3

    .line 212
    :pswitch_2
    check-cast v6, Lf9/n;

    .line 213
    .line 214
    check-cast v4, Lf9/a;

    .line 215
    .line 216
    check-cast v5, Lf1/b1;

    .line 217
    .line 218
    sget-object v0, Lm7/k;->a:Lm7/k;

    .line 219
    .line 220
    const-string v0, ""

    .line 221
    .line 222
    invoke-interface {v5, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Ljava/lang/String;

    .line 230
    .line 231
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-interface {v6, v0, v1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-interface {v4}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    return-object v3

    .line 240
    :pswitch_3
    check-cast v6, Li0/f;

    .line 241
    .line 242
    check-cast v5, Lq2/h1;

    .line 243
    .line 244
    check-cast v4, Lk2/d;

    .line 245
    .line 246
    invoke-static {v6, v5, v4}, Li0/f;->A0(Li0/f;Lq2/h1;Lk2/d;)Lx1/c;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-eqz v0, :cond_9

    .line 251
    .line 252
    iget-object v1, v6, Li0/f;->o:Lz/f;

    .line 253
    .line 254
    iget-wide v2, v1, Lz/f;->v:J

    .line 255
    .line 256
    const-wide/16 v4, 0x0

    .line 257
    .line 258
    invoke-static {v2, v3, v4, v5}, Ln3/l;->a(JJ)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_8

    .line 263
    .line 264
    const-string v2, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 265
    .line 266
    invoke-static {v2}, Lc0/b;->c(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_8
    iget-wide v2, v1, Lz/f;->v:J

    .line 270
    .line 271
    invoke-virtual {v1, v0, v2, v3}, Lz/f;->E0(Lx1/c;J)J

    .line 272
    .line 273
    .line 274
    move-result-wide v1

    .line 275
    const-wide v3, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    xor-long/2addr v1, v3

    .line 281
    invoke-virtual {v0, v1, v2}, Lx1/c;->i(J)Lx1/c;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    :cond_9
    return-object v2

    .line 286
    :pswitch_4
    check-cast v6, Lf1/a;

    .line 287
    .line 288
    check-cast v5, Lf1/k2;

    .line 289
    .line 290
    check-cast v4, Lg1/k0;

    .line 291
    .line 292
    if-eqz v6, :cond_a

    .line 293
    .line 294
    invoke-virtual {v5, v6}, Lf1/k2;->c(Lf1/a;)I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    iget v1, v5, Lf1/k2;->t:I

    .line 299
    .line 300
    sub-int/2addr v0, v1

    .line 301
    invoke-virtual {v5, v0}, Lf1/k2;->a(I)V

    .line 302
    .line 303
    .line 304
    :cond_a
    iget v0, v5, Lf1/k2;->t:I

    .line 305
    .line 306
    invoke-static {v5, v2, v0, v2}, Lp9/x1;->d(Lf1/k2;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v0}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Lq1/a;

    .line 315
    .line 316
    if-eqz v1, :cond_b

    .line 317
    .line 318
    iget-object v1, v1, Lq1/a;->a:Ljava/lang/Integer;

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_b
    move-object v1, v2

    .line 322
    :goto_4
    invoke-interface {v4, v1}, Lg1/k0;->d(Ljava/lang/Integer;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    if-eqz v1, :cond_d

    .line 327
    .line 328
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_c

    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_c
    invoke-static {v3}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    check-cast v4, Lq1/a;

    .line 340
    .line 341
    invoke-static {v3}, Ls8/p;->Z(Ljava/util/List;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    new-instance v4, Lq1/a;

    .line 349
    .line 350
    invoke-direct {v4, v2, v1}, Lq1/a;-><init>(Lp4/o;Ljava/lang/Integer;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v4}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {v3, v1}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    :cond_d
    :goto_5
    invoke-static {v3, v0}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    return-object v0

    .line 366
    :pswitch_5
    check-cast v6, Lf1/s;

    .line 367
    .line 368
    check-cast v5, Lg1/a;

    .line 369
    .line 370
    check-cast v4, Lf1/g2;

    .line 371
    .line 372
    iget-object v0, v6, Lf1/s;->M:Lg1/b;

    .line 373
    .line 374
    iget-object v3, v0, Lg1/b;->b:Lg1/a;

    .line 375
    .line 376
    :try_start_0
    iput-object v5, v0, Lg1/b;->b:Lg1/a;

    .line 377
    .line 378
    iget-object v5, v6, Lf1/s;->G:Lf1/g2;

    .line 379
    .line 380
    iget-object v7, v6, Lf1/s;->o:[I

    .line 381
    .line 382
    iget-object v8, v6, Lf1/s;->v:Ls/w;

    .line 383
    .line 384
    iput-object v2, v6, Lf1/s;->o:[I

    .line 385
    .line 386
    iput-object v2, v6, Lf1/s;->v:Ls/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 387
    .line 388
    :try_start_1
    iput-object v4, v6, Lf1/s;->G:Lf1/g2;

    .line 389
    .line 390
    iget-boolean v4, v0, Lg1/b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    .line 392
    :try_start_2
    iput-boolean v1, v0, Lg1/b;->e:Z

    .line 393
    .line 394
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    :catchall_0
    move-exception v1

    .line 396
    :try_start_3
    iput-boolean v4, v0, Lg1/b;->e:Z

    .line 397
    .line 398
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    :catchall_1
    move-exception v1

    .line 400
    :try_start_4
    iput-object v5, v6, Lf1/s;->G:Lf1/g2;

    .line 401
    .line 402
    iput-object v7, v6, Lf1/s;->o:[I

    .line 403
    .line 404
    iput-object v8, v6, Lf1/s;->v:Ls/w;

    .line 405
    .line 406
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 407
    :catchall_2
    move-exception v1

    .line 408
    iput-object v3, v0, Lg1/b;->b:Lg1/a;

    .line 409
    .line 410
    throw v1

    .line 411
    :pswitch_6
    check-cast v6, Lf1/f0;

    .line 412
    .line 413
    check-cast v5, Lf0/u;

    .line 414
    .line 415
    check-cast v4, Lf0/c;

    .line 416
    .line 417
    invoke-virtual {v6}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Lf0/g;

    .line 422
    .line 423
    new-instance v1, Le7/l;

    .line 424
    .line 425
    iget-object v2, v5, Lf0/u;->e:Lf0/p;

    .line 426
    .line 427
    iget-object v2, v2, Lf0/p;->f:Lh0/b0;

    .line 428
    .line 429
    invoke-virtual {v2}, Lh0/b0;->getValue()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    check-cast v2, Ll9/d;

    .line 434
    .line 435
    invoke-direct {v1, v2, v0}, Le7/l;-><init>(Ll9/d;Lh0/z;)V

    .line 436
    .line 437
    .line 438
    new-instance v2, Lf0/i;

    .line 439
    .line 440
    invoke-direct {v2, v5, v0, v4, v1}, Lf0/i;-><init>(Lf0/u;Lf0/g;Lf0/c;Le7/l;)V

    .line 441
    .line 442
    .line 443
    return-object v2

    .line 444
    :pswitch_7
    check-cast v6, Lf9/k;

    .line 445
    .line 446
    check-cast v5, Lf1/b1;

    .line 447
    .line 448
    check-cast v4, Lf1/h1;

    .line 449
    .line 450
    new-instance v0, Lz7/a2;

    .line 451
    .line 452
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Ljava/lang/Boolean;

    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_e

    .line 463
    .line 464
    const-string v1, "\u5c0f\u4e8e"

    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_e
    const-string v1, "\u5927\u4e8e"

    .line 468
    .line 469
    :goto_6
    invoke-virtual {v4}, Lf1/h1;->f()I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v8, "\u73af\u5883\u5149\u4eae\u5ea6"

    .line 476
    .line 477
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v1, "lux\u65f6"

    .line 487
    .line 488
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    new-instance v2, Lz7/a1;

    .line 496
    .line 497
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    check-cast v5, Ljava/lang/Boolean;

    .line 502
    .line 503
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    invoke-virtual {v4}, Lf1/h1;->f()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    invoke-direct {v2, v4, v5}, Lz7/a1;-><init>(IZ)V

    .line 512
    .line 513
    .line 514
    const-string v4, "Sensor"

    .line 515
    .line 516
    const-string v5, "\u5149\u7167\u4eae\u5ea6"

    .line 517
    .line 518
    invoke-direct {v0, v4, v5, v1, v2}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 519
    .line 520
    .line 521
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    return-object v3

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
