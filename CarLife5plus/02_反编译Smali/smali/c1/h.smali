.class public final Lc1/h;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/h;->a:I

    iput-object p2, p0, Lc1/h;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc1/h;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lf9/n;II)V
    .locals 0

    .line 2
    iput p4, p0, Lc1/h;->a:I

    iput-object p1, p0, Lc1/h;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc1/h;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lc1/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lc1/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v5, p0, Lc1/h;->b:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    check-cast p2, Ly2/m;

    .line 22
    .line 23
    check-cast v5, Lt1/c;

    .line 24
    .line 25
    check-cast v4, Lr2/l2;

    .line 26
    .line 27
    iget-object v0, v4, Lr2/l2;->b:Ls/x;

    .line 28
    .line 29
    iget v1, p2, Ly2/m;->g:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ls/x;->b(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v5, p1, p2}, Lt1/c;->p(ILy2/m;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v5, Lt1/c;->h:Lcc/h;

    .line 41
    .line 42
    invoke-interface {p1, v6}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-object v6

    .line 46
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    check-cast v4, Lr3/v;

    .line 55
    .line 56
    and-int/lit8 v0, p2, 0x3

    .line 57
    .line 58
    if-eq v0, v1, :cond_1

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    and-int/2addr p2, v3

    .line 64
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_a

    .line 69
    .line 70
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 75
    .line 76
    if-ne p2, v0, :cond_2

    .line 77
    .line 78
    sget-object p2, Lr3/d;->e:Lr3/d;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    check-cast p2, Lf9/k;

    .line 84
    .line 85
    new-instance v1, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 86
    .line 87
    invoke-direct {v1, p2, v2}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lf9/k;Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    if-ne v7, v0, :cond_4

    .line 101
    .line 102
    :cond_3
    new-instance v7, Lr3/j;

    .line 103
    .line 104
    invoke-direct {v7, v4, v3}, Lr3/j;-><init>(Lr3/v;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    check-cast v7, Lf9/k;

    .line 111
    .line 112
    invoke-static {v1, v7}, Landroidx/compose/ui/layout/a;->e(Lr1/p;Lf9/k;)Lr1/p;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {v4}, Lr3/v;->getCanCalculatePosition()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    const/4 v1, 0x0

    .line 126
    :goto_1
    invoke-static {p2, v1}, Lp9/p1;->i(Lr1/p;F)Lr1/p;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    check-cast v5, Lf1/b1;

    .line 131
    .line 132
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lf9/n;

    .line 137
    .line 138
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-ne v4, v0, :cond_6

    .line 143
    .line 144
    sget-object v4, Lr3/f;->c:Lr3/f;

    .line 145
    .line 146
    invoke-virtual {p1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    check-cast v4, Lo2/m0;

    .line 150
    .line 151
    iget-wide v7, p1, Lf1/s;->T:J

    .line 152
    .line 153
    const/16 v0, 0x20

    .line 154
    .line 155
    ushr-long v9, v7, v0

    .line 156
    .line 157
    xor-long/2addr v7, v9

    .line 158
    long-to-int v0, v7

    .line 159
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {p1, p2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    sget-object v7, Lq2/j;->d0:Lq2/i;

    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    sget-object v7, Lq2/i;->b:Lq2/a0;

    .line 173
    .line 174
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 175
    .line 176
    .line 177
    iget-boolean v8, p1, Lf1/s;->S:Z

    .line 178
    .line 179
    if-eqz v8, :cond_7

    .line 180
    .line 181
    invoke-virtual {p1, v7}, Lf1/s;->k(Lf9/a;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 186
    .line 187
    .line 188
    :goto_2
    sget-object v7, Lq2/i;->e:Lq2/h;

    .line 189
    .line 190
    invoke-static {p1, v7, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 194
    .line 195
    invoke-static {p1, v4, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 199
    .line 200
    iget-boolean v5, p1, Lf1/s;->S:Z

    .line 201
    .line 202
    if-nez v5, :cond_8

    .line 203
    .line 204
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-static {v5, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_9

    .line 217
    .line 218
    :cond_8
    invoke-static {v0, p1, v0, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 222
    .line 223
    invoke-static {p1, v0, p2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-interface {v1, p1, p2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v3}, Lf1/s;->p(Z)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_a
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 238
    .line 239
    .line 240
    :goto_3
    return-object v6

    .line 241
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 242
    .line 243
    check-cast p2, Ljava/lang/Number;

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 246
    .line 247
    .line 248
    check-cast v4, Lr2/u;

    .line 249
    .line 250
    check-cast v5, Lf9/n;

    .line 251
    .line 252
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    invoke-static {v4, v5, p1, p2}, Lr2/n0;->a(Lr2/u;Lf9/n;Lf1/s;I)V

    .line 257
    .line 258
    .line 259
    return-object v6

    .line 260
    :pswitch_2
    check-cast p1, Ly1/o;

    .line 261
    .line 262
    check-cast p2, Lb2/c;

    .line 263
    .line 264
    check-cast v4, Lq2/h1;

    .line 265
    .line 266
    iget-object v0, v4, Lq2/h1;->o:Lq2/h0;

    .line 267
    .line 268
    invoke-virtual {v0}, Lq2/h0;->J()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_b

    .line 273
    .line 274
    iput-object p1, v4, Lq2/h1;->E:Ly1/o;

    .line 275
    .line 276
    iput-object p2, v4, Lq2/h1;->D:Lb2/c;

    .line 277
    .line 278
    invoke-static {v0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Lr2/u;

    .line 283
    .line 284
    invoke-virtual {p1}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    sget-object p2, Lq2/h1;->J:Ly1/i0;

    .line 289
    .line 290
    sget-object p2, Lq2/e;->d:Lq2/e;

    .line 291
    .line 292
    check-cast v5, Lq2/e1;

    .line 293
    .line 294
    invoke-virtual {p1, v4, p2, v5}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 295
    .line 296
    .line 297
    iput-boolean v2, v4, Lq2/h1;->H:Z

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_b
    iput-boolean v3, v4, Lq2/h1;->H:Z

    .line 301
    .line 302
    :goto_4
    return-object v6

    .line 303
    :pswitch_3
    check-cast p1, Lf1/s;

    .line 304
    .line 305
    check-cast p2, Ljava/lang/Number;

    .line 306
    .line 307
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    and-int/lit8 v0, p2, 0x3

    .line 312
    .line 313
    if-eq v0, v1, :cond_c

    .line 314
    .line 315
    const/4 v0, 0x1

    .line 316
    goto :goto_5

    .line 317
    :cond_c
    const/4 v0, 0x0

    .line 318
    :goto_5
    and-int/2addr p2, v3

    .line 319
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-eqz p2, :cond_12

    .line 324
    .line 325
    check-cast v4, Lo2/b0;

    .line 326
    .line 327
    iget-object p2, v4, Lo2/b0;->g:Lf1/k1;

    .line 328
    .line 329
    invoke-virtual {p2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    check-cast p2, Ljava/lang/Boolean;

    .line 334
    .line 335
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    check-cast v5, Lf9/n;

    .line 340
    .line 341
    invoke-virtual {p1, p2}, Lf1/s;->Z(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v0}, Lf1/s;->g(Z)Z

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    if-eqz v0, :cond_d

    .line 349
    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    invoke-interface {v5, p1, p2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_d
    iget v0, p1, Lf1/s;->l:I

    .line 359
    .line 360
    if-nez v0, :cond_e

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_e
    const-string v0, "No nodes can be emitted before calling dactivateToEndGroup"

    .line 364
    .line 365
    invoke-static {v0}, Lf1/t;->c(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :goto_6
    iget-boolean v0, p1, Lf1/s;->S:Z

    .line 369
    .line 370
    if-nez v0, :cond_10

    .line 371
    .line 372
    if-nez p2, :cond_f

    .line 373
    .line 374
    invoke-virtual {p1}, Lf1/s;->P()V

    .line 375
    .line 376
    .line 377
    goto :goto_7

    .line 378
    :cond_f
    iget-object p2, p1, Lf1/s;->G:Lf1/g2;

    .line 379
    .line 380
    iget v0, p2, Lf1/g2;->g:I

    .line 381
    .line 382
    iget p2, p2, Lf1/g2;->h:I

    .line 383
    .line 384
    iget-object v1, p1, Lf1/s;->M:Lg1/b;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v2}, Lg1/b;->d(Z)V

    .line 390
    .line 391
    .line 392
    iget-object v1, v1, Lg1/b;->b:Lg1/a;

    .line 393
    .line 394
    iget-object v1, v1, Lg1/a;->c:Lg1/m0;

    .line 395
    .line 396
    sget-object v3, Lg1/i;->d:Lg1/i;

    .line 397
    .line 398
    invoke-virtual {v1, v3}, Lg1/m0;->f0(Lg1/j0;)V

    .line 399
    .line 400
    .line 401
    iget-object v1, p1, Lf1/s;->s:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-static {v1, v0, p2}, Lf1/t;->a(Ljava/util/List;II)V

    .line 404
    .line 405
    .line 406
    iget-object p2, p1, Lf1/s;->G:Lf1/g2;

    .line 407
    .line 408
    invoke-virtual {p2}, Lf1/g2;->t()V

    .line 409
    .line 410
    .line 411
    :cond_10
    :goto_7
    iget-boolean p2, p1, Lf1/s;->y:Z

    .line 412
    .line 413
    if-eqz p2, :cond_11

    .line 414
    .line 415
    iget-object p2, p1, Lf1/s;->G:Lf1/g2;

    .line 416
    .line 417
    iget p2, p2, Lf1/g2;->i:I

    .line 418
    .line 419
    iget v0, p1, Lf1/s;->z:I

    .line 420
    .line 421
    if-ne p2, v0, :cond_11

    .line 422
    .line 423
    const/4 p2, -0x1

    .line 424
    iput p2, p1, Lf1/s;->z:I

    .line 425
    .line 426
    iput-boolean v2, p1, Lf1/s;->y:Z

    .line 427
    .line 428
    :cond_11
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_12
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 433
    .line 434
    .line 435
    :goto_8
    return-object v6

    .line 436
    :pswitch_4
    check-cast p1, Lf1/s;

    .line 437
    .line 438
    check-cast p2, Ljava/lang/Number;

    .line 439
    .line 440
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 441
    .line 442
    .line 443
    check-cast v4, Lb3/o0;

    .line 444
    .line 445
    check-cast v5, Ln1/c;

    .line 446
    .line 447
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 448
    .line 449
    .line 450
    move-result p2

    .line 451
    invoke-static {v4, v5, p1, p2}, Lc1/u2;->a(Lb3/o0;Ln1/c;Lf1/s;I)V

    .line 452
    .line 453
    .line 454
    return-object v6

    .line 455
    :pswitch_5
    check-cast p1, Lf1/s;

    .line 456
    .line 457
    check-cast p2, Ljava/lang/Number;

    .line 458
    .line 459
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 460
    .line 461
    .line 462
    move-result p2

    .line 463
    and-int/lit8 p2, p2, 0x3

    .line 464
    .line 465
    if-ne p2, v1, :cond_14

    .line 466
    .line 467
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 468
    .line 469
    .line 470
    move-result p2

    .line 471
    if-nez p2, :cond_13

    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_13
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 475
    .line 476
    .line 477
    goto :goto_a

    .line 478
    :cond_14
    :goto_9
    check-cast v4, Lc1/y2;

    .line 479
    .line 480
    iget-object p2, v4, Lc1/y2;->j:Lb3/o0;

    .line 481
    .line 482
    check-cast v5, Ln1/c;

    .line 483
    .line 484
    invoke-static {p2, v5, p1, v2}, Lc1/u2;->a(Lb3/o0;Ln1/c;Lf1/s;I)V

    .line 485
    .line 486
    .line 487
    :goto_a
    return-object v6

    .line 488
    :pswitch_6
    check-cast p1, Lf1/s;

    .line 489
    .line 490
    check-cast p2, Ljava/lang/Number;

    .line 491
    .line 492
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 493
    .line 494
    .line 495
    move-result p2

    .line 496
    and-int/lit8 p2, p2, 0x3

    .line 497
    .line 498
    if-ne p2, v1, :cond_16

    .line 499
    .line 500
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 501
    .line 502
    .line 503
    move-result p2

    .line 504
    if-nez p2, :cond_15

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_15
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 508
    .line 509
    .line 510
    goto :goto_d

    .line 511
    :cond_16
    :goto_b
    sget p2, Lc1/b;->b:F

    .line 512
    .line 513
    sget v0, Lc1/b;->c:F

    .line 514
    .line 515
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 516
    .line 517
    invoke-static {v1, p2, v0}, Landroidx/compose/foundation/layout/c;->a(Lr1/p;FF)Lr1/p;

    .line 518
    .line 519
    .line 520
    move-result-object p2

    .line 521
    check-cast v4, Ld0/h0;

    .line 522
    .line 523
    invoke-static {p2, v4}, Landroidx/compose/foundation/layout/a;->g(Lr1/p;Ld0/h0;)Lr1/p;

    .line 524
    .line 525
    .line 526
    move-result-object p2

    .line 527
    sget-object v0, Ld0/h;->d:Ld0/d;

    .line 528
    .line 529
    sget-object v1, Lr1/c;->k:Lr1/g;

    .line 530
    .line 531
    check-cast v5, Ln1/c;

    .line 532
    .line 533
    const/16 v2, 0x36

    .line 534
    .line 535
    invoke-static {v0, v1, p1, v2}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-static {p1}, Lf1/b;->p(Lf1/s;)I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {p1, p2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    sget-object v4, Lq2/j;->d0:Lq2/i;

    .line 552
    .line 553
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    sget-object v4, Lq2/i;->b:Lq2/a0;

    .line 557
    .line 558
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 559
    .line 560
    .line 561
    iget-boolean v7, p1, Lf1/s;->S:Z

    .line 562
    .line 563
    if-eqz v7, :cond_17

    .line 564
    .line 565
    invoke-virtual {p1, v4}, Lf1/s;->k(Lf9/a;)V

    .line 566
    .line 567
    .line 568
    goto :goto_c

    .line 569
    :cond_17
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 570
    .line 571
    .line 572
    :goto_c
    sget-object v4, Lq2/i;->e:Lq2/h;

    .line 573
    .line 574
    invoke-static {p1, v4, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 578
    .line 579
    invoke-static {p1, v0, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 583
    .line 584
    iget-boolean v2, p1, Lf1/s;->S:Z

    .line 585
    .line 586
    if-nez v2, :cond_18

    .line 587
    .line 588
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    invoke-static {v2, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-nez v2, :cond_19

    .line 601
    .line 602
    :cond_18
    invoke-static {v1, p1, v1, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 603
    .line 604
    .line 605
    :cond_19
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 606
    .line 607
    invoke-static {p1, v0, p2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    const/4 p2, 0x6

    .line 611
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    sget-object v0, Ld0/o0;->a:Ld0/o0;

    .line 616
    .line 617
    invoke-virtual {v5, v0, p1, p2}, Ln1/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    invoke-virtual {p1, v3}, Lf1/s;->p(Z)V

    .line 621
    .line 622
    .line 623
    :goto_d
    return-object v6

    .line 624
    nop

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
