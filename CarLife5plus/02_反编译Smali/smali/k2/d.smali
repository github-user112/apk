.class public final Lk2/d;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lk2/d;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lk2/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lg9/x;

    .line 9
    .line 10
    iget-object v1, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lw1/s;

    .line 13
    .line 14
    invoke-virtual {v1}, Lw1/s;->B0()Lw1/m;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lf9/a;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lx1/c;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lq2/h1;

    .line 40
    .line 41
    invoke-virtual {v0}, Lq2/h1;->G0()Lr1/o;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v0, v2

    .line 52
    :goto_0
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-wide v0, v0, Lo2/v0;->c:J

    .line 55
    .line 56
    invoke-static {v0, v1}, La/a;->S(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    invoke-static {v2, v3, v0, v1}, Lp9/p1;->d(JJ)Lx1/c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object v0, v2

    .line 68
    :cond_3
    :goto_1
    return-object v0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lv1/b;

    .line 72
    .line 73
    iget-object v0, v0, Lv1/b;->q:Lf9/k;

    .line 74
    .line 75
    iget-object v1, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lv1/c;

    .line 78
    .line 79
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 83
    .line 84
    return-object v0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lr2/b0;

    .line 88
    .line 89
    iget-object v1, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lr2/k2;

    .line 92
    .line 93
    iget-object v2, v1, Lr2/k2;->e:Ly2/h;

    .line 94
    .line 95
    iget-object v3, v1, Lr2/k2;->f:Ly2/h;

    .line 96
    .line 97
    iget-object v4, v1, Lr2/k2;->c:Ljava/lang/Float;

    .line 98
    .line 99
    iget-object v5, v1, Lr2/k2;->d:Ljava/lang/Float;

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    iget-object v7, v2, Ly2/h;->a:Lf9/a;

    .line 107
    .line 108
    invoke-interface {v7}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    sub-float/2addr v7, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const/4 v7, 0x0

    .line 125
    :goto_2
    if-eqz v3, :cond_5

    .line 126
    .line 127
    if-eqz v5, :cond_5

    .line 128
    .line 129
    iget-object v4, v3, Ly2/h;->a:Lf9/a;

    .line 130
    .line 131
    invoke-interface {v4}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    sub-float/2addr v4, v5

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    const/4 v4, 0x0

    .line 148
    :goto_3
    cmpg-float v5, v7, v6

    .line 149
    .line 150
    if-nez v5, :cond_6

    .line 151
    .line 152
    cmpg-float v4, v4, v6

    .line 153
    .line 154
    if-nez v4, :cond_6

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_6
    iget v4, v1, Lr2/k2;->a:I

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Lr2/b0;->v(I)I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iget v6, v0, Lr2/b0;->n:I

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ls/k;->b(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Ly2/n;

    .line 174
    .line 175
    if-eqz v5, :cond_7

    .line 176
    .line 177
    :try_start_0
    iget-object v6, v0, Lr2/b0;->p:Lf4/e;

    .line 178
    .line 179
    if-eqz v6, :cond_7

    .line 180
    .line 181
    invoke-virtual {v0, v5}, Lr2/b0;->f(Ly2/n;)Landroid/graphics/Rect;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget-object v6, v6, Lf4/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 186
    .line 187
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :catch_0
    nop

    .line 192
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    iget v6, v0, Lr2/b0;->o:I

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Ls/k;->b(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Ly2/n;

    .line 203
    .line 204
    if-eqz v5, :cond_8

    .line 205
    .line 206
    :try_start_1
    iget-object v6, v0, Lr2/b0;->q:Lf4/e;

    .line 207
    .line 208
    if-eqz v6, :cond_8

    .line 209
    .line 210
    invoke-virtual {v0, v5}, Lr2/b0;->f(Ly2/n;)Landroid/graphics/Rect;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    iget-object v6, v6, Lf4/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 215
    .line 216
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :catch_1
    nop

    .line 221
    :cond_8
    :goto_5
    iget-object v5, v0, Lr2/b0;->d:Lr2/u;

    .line 222
    .line 223
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5, v4}, Ls/k;->b(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Ly2/n;

    .line 235
    .line 236
    if-eqz v5, :cond_b

    .line 237
    .line 238
    iget-object v5, v5, Ly2/n;->a:Ly2/m;

    .line 239
    .line 240
    if-eqz v5, :cond_b

    .line 241
    .line 242
    iget-object v5, v5, Ly2/m;->c:Lq2/h0;

    .line 243
    .line 244
    if-eqz v5, :cond_b

    .line 245
    .line 246
    if-eqz v2, :cond_9

    .line 247
    .line 248
    iget-object v6, v0, Lr2/b0;->s:Ls/w;

    .line 249
    .line 250
    invoke-virtual {v6, v4, v2}, Ls/w;->h(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_9
    if-eqz v3, :cond_a

    .line 254
    .line 255
    iget-object v6, v0, Lr2/b0;->t:Ls/w;

    .line 256
    .line 257
    invoke-virtual {v6, v4, v3}, Ls/w;->h(ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_a
    invoke-virtual {v0, v5}, Lr2/b0;->r(Lq2/h0;)V

    .line 261
    .line 262
    .line 263
    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    .line 264
    .line 265
    iget-object v0, v2, Ly2/h;->a:Lf9/a;

    .line 266
    .line 267
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Ljava/lang/Float;

    .line 272
    .line 273
    iput-object v0, v1, Lr2/k2;->c:Ljava/lang/Float;

    .line 274
    .line 275
    :cond_c
    if-eqz v3, :cond_d

    .line 276
    .line 277
    iget-object v0, v3, Ly2/h;->a:Lf9/a;

    .line 278
    .line 279
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Ljava/lang/Float;

    .line 284
    .line 285
    iput-object v0, v1, Lr2/k2;->d:Ljava/lang/Float;

    .line 286
    .line 287
    :cond_d
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 288
    .line 289
    return-object v0

    .line 290
    :pswitch_3
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Lr2/u;

    .line 293
    .line 294
    iget-object v1, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v1, Landroid/view/MotionEvent;

    .line 297
    .line 298
    invoke-static {v1, v0}, Lr2/u;->i(Landroid/view/MotionEvent;Lr2/u;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    return-object v0

    .line 307
    :pswitch_4
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Lr2/u;

    .line 310
    .line 311
    iget-object v1, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v1, Landroid/view/KeyEvent;

    .line 314
    .line 315
    invoke-static {v0, v1}, Lr2/u;->j(Lr2/u;Landroid/view/KeyEvent;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    return-object v0

    .line 324
    :pswitch_5
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Lq2/u0;

    .line 327
    .line 328
    iget-object v1, v0, Lq2/u0;->f:Lq2/l0;

    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    iput v2, v1, Lq2/l0;->h:I

    .line 332
    .line 333
    iget-object v3, v1, Lq2/l0;->a:Lq2/h0;

    .line 334
    .line 335
    invoke-virtual {v3}, Lq2/h0;->z()Lh1/e;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    iget-object v4, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 340
    .line 341
    iget v3, v3, Lh1/e;->c:I

    .line 342
    .line 343
    const/4 v5, 0x0

    .line 344
    :goto_7
    const v6, 0x7fffffff

    .line 345
    .line 346
    .line 347
    if-ge v5, v3, :cond_f

    .line 348
    .line 349
    aget-object v7, v4, v5

    .line 350
    .line 351
    check-cast v7, Lq2/h0;

    .line 352
    .line 353
    iget-object v7, v7, Lq2/h0;->F:Lq2/l0;

    .line 354
    .line 355
    iget-object v7, v7, Lq2/l0;->q:Lq2/u0;

    .line 356
    .line 357
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    iget v8, v7, Lq2/u0;->i:I

    .line 361
    .line 362
    iput v8, v7, Lq2/u0;->h:I

    .line 363
    .line 364
    iput v6, v7, Lq2/u0;->i:I

    .line 365
    .line 366
    iget-object v6, v7, Lq2/u0;->j:Lq2/f0;

    .line 367
    .line 368
    sget-object v8, Lq2/f0;->b:Lq2/f0;

    .line 369
    .line 370
    if-ne v6, v8, :cond_e

    .line 371
    .line 372
    sget-object v6, Lq2/f0;->c:Lq2/f0;

    .line 373
    .line 374
    iput-object v6, v7, Lq2/u0;->j:Lq2/f0;

    .line 375
    .line 376
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_f
    iget-object v3, v1, Lq2/l0;->a:Lq2/h0;

    .line 380
    .line 381
    iget-object v1, v1, Lq2/l0;->a:Lq2/h0;

    .line 382
    .line 383
    invoke-virtual {v3}, Lq2/h0;->z()Lh1/e;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    iget-object v4, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 388
    .line 389
    iget v3, v3, Lh1/e;->c:I

    .line 390
    .line 391
    const/4 v5, 0x0

    .line 392
    :goto_8
    if-ge v5, v3, :cond_10

    .line 393
    .line 394
    aget-object v7, v4, v5

    .line 395
    .line 396
    check-cast v7, Lq2/h0;

    .line 397
    .line 398
    iget-object v7, v7, Lq2/h0;->F:Lq2/l0;

    .line 399
    .line 400
    iget-object v7, v7, Lq2/l0;->q:Lq2/u0;

    .line 401
    .line 402
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    iget-object v7, v7, Lq2/u0;->q:Lq2/i0;

    .line 406
    .line 407
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    add-int/lit8 v5, v5, 0x1

    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_10
    invoke-virtual {v0}, Lq2/u0;->f()Lq2/t;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    iget-object v3, v3, Lq2/t;->P:Lq2/s;

    .line 418
    .line 419
    if-eqz v3, :cond_12

    .line 420
    .line 421
    iget-boolean v3, v3, Lq2/p0;->k:Z

    .line 422
    .line 423
    invoke-virtual {v1}, Lq2/h0;->o()Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    check-cast v4, Lh1/b;

    .line 428
    .line 429
    iget-object v5, v4, Lh1/b;->b:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v5, Lh1/e;

    .line 432
    .line 433
    iget v5, v5, Lh1/e;->c:I

    .line 434
    .line 435
    const/4 v7, 0x0

    .line 436
    :goto_9
    if-ge v7, v5, :cond_12

    .line 437
    .line 438
    invoke-virtual {v4, v7}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    check-cast v8, Lq2/h0;

    .line 443
    .line 444
    iget-object v8, v8, Lq2/h0;->E:Lq2/d1;

    .line 445
    .line 446
    iget-object v8, v8, Lq2/d1;->d:Lq2/h1;

    .line 447
    .line 448
    invoke-virtual {v8}, Lq2/h1;->E0()Lq2/q0;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    if-eqz v8, :cond_11

    .line 453
    .line 454
    iput-boolean v3, v8, Lq2/p0;->k:Z

    .line 455
    .line 456
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_12
    iget-object v3, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v3, Lq2/q0;

    .line 462
    .line 463
    invoke-virtual {v3}, Lq2/q0;->o0()Lo2/n0;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-interface {v3}, Lo2/n0;->c()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Lq2/u0;->f()Lq2/t;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    iget-object v0, v0, Lq2/t;->P:Lq2/s;

    .line 475
    .line 476
    if-eqz v0, :cond_14

    .line 477
    .line 478
    invoke-virtual {v1}, Lq2/h0;->o()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Lh1/b;

    .line 483
    .line 484
    iget-object v3, v0, Lh1/b;->b:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v3, Lh1/e;

    .line 487
    .line 488
    iget v3, v3, Lh1/e;->c:I

    .line 489
    .line 490
    const/4 v4, 0x0

    .line 491
    :goto_a
    if-ge v4, v3, :cond_14

    .line 492
    .line 493
    invoke-virtual {v0, v4}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    check-cast v5, Lq2/h0;

    .line 498
    .line 499
    iget-object v5, v5, Lq2/h0;->E:Lq2/d1;

    .line 500
    .line 501
    iget-object v5, v5, Lq2/d1;->d:Lq2/h1;

    .line 502
    .line 503
    invoke-virtual {v5}, Lq2/h1;->E0()Lq2/q0;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    if-eqz v5, :cond_13

    .line 508
    .line 509
    iput-boolean v2, v5, Lq2/p0;->k:Z

    .line 510
    .line 511
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 512
    .line 513
    goto :goto_a

    .line 514
    :cond_14
    invoke-virtual {v1}, Lq2/h0;->z()Lh1/e;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    iget-object v3, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 519
    .line 520
    iget v0, v0, Lh1/e;->c:I

    .line 521
    .line 522
    const/4 v4, 0x0

    .line 523
    :goto_b
    if-ge v4, v0, :cond_16

    .line 524
    .line 525
    aget-object v5, v3, v4

    .line 526
    .line 527
    check-cast v5, Lq2/h0;

    .line 528
    .line 529
    iget-object v5, v5, Lq2/h0;->F:Lq2/l0;

    .line 530
    .line 531
    iget-object v5, v5, Lq2/l0;->q:Lq2/u0;

    .line 532
    .line 533
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    iget v7, v5, Lq2/u0;->h:I

    .line 537
    .line 538
    iget v8, v5, Lq2/u0;->i:I

    .line 539
    .line 540
    if-eq v7, v8, :cond_15

    .line 541
    .line 542
    if-ne v8, v6, :cond_15

    .line 543
    .line 544
    const/4 v7, 0x1

    .line 545
    invoke-virtual {v5, v7}, Lq2/u0;->Z(Z)V

    .line 546
    .line 547
    .line 548
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 549
    .line 550
    goto :goto_b

    .line 551
    :cond_16
    invoke-virtual {v1}, Lq2/h0;->z()Lh1/e;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 556
    .line 557
    iget v0, v0, Lh1/e;->c:I

    .line 558
    .line 559
    const/4 v3, 0x0

    .line 560
    :goto_c
    if-ge v3, v0, :cond_17

    .line 561
    .line 562
    aget-object v4, v1, v3

    .line 563
    .line 564
    check-cast v4, Lq2/h0;

    .line 565
    .line 566
    iget-object v4, v4, Lq2/h0;->F:Lq2/l0;

    .line 567
    .line 568
    iget-object v4, v4, Lq2/l0;->q:Lq2/u0;

    .line 569
    .line 570
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    iget-object v4, v4, Lq2/u0;->q:Lq2/i0;

    .line 574
    .line 575
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    iput-boolean v2, v4, Lq2/i0;->c:Z

    .line 579
    .line 580
    add-int/lit8 v3, v3, 0x1

    .line 581
    .line 582
    goto :goto_c

    .line 583
    :cond_17
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 584
    .line 585
    return-object v0

    .line 586
    :pswitch_6
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v0, Lq2/h0;

    .line 589
    .line 590
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 591
    .line 592
    iget-object v1, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v1, Lg9/x;

    .line 595
    .line 596
    iget-object v2, v0, Lq2/d1;->f:Lr1/o;

    .line 597
    .line 598
    iget v2, v2, Lr1/o;->d:I

    .line 599
    .line 600
    and-int/lit8 v2, v2, 0x8

    .line 601
    .line 602
    if-eqz v2, :cond_22

    .line 603
    .line 604
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 605
    .line 606
    :goto_d
    if-eqz v0, :cond_22

    .line 607
    .line 608
    iget v2, v0, Lr1/o;->c:I

    .line 609
    .line 610
    and-int/lit8 v2, v2, 0x8

    .line 611
    .line 612
    if-eqz v2, :cond_21

    .line 613
    .line 614
    const/4 v2, 0x0

    .line 615
    move-object v3, v0

    .line 616
    move-object v4, v2

    .line 617
    :goto_e
    if-eqz v3, :cond_21

    .line 618
    .line 619
    instance-of v5, v3, Lq2/y1;

    .line 620
    .line 621
    const/4 v6, 0x1

    .line 622
    if-eqz v5, :cond_1a

    .line 623
    .line 624
    check-cast v3, Lq2/y1;

    .line 625
    .line 626
    invoke-interface {v3}, Lq2/y1;->z()Z

    .line 627
    .line 628
    .line 629
    move-result v5

    .line 630
    if-eqz v5, :cond_18

    .line 631
    .line 632
    new-instance v5, Ly2/j;

    .line 633
    .line 634
    invoke-direct {v5}, Ly2/j;-><init>()V

    .line 635
    .line 636
    .line 637
    iput-object v5, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 638
    .line 639
    iput-boolean v6, v5, Ly2/j;->d:Z

    .line 640
    .line 641
    :cond_18
    invoke-interface {v3}, Lq2/y1;->j0()Z

    .line 642
    .line 643
    .line 644
    move-result v5

    .line 645
    if-eqz v5, :cond_19

    .line 646
    .line 647
    iget-object v5, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v5, Ly2/j;

    .line 650
    .line 651
    iput-boolean v6, v5, Ly2/j;->c:Z

    .line 652
    .line 653
    :cond_19
    iget-object v5, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v5, Ly2/j;

    .line 656
    .line 657
    invoke-interface {v3, v5}, Lq2/y1;->Z(Ly2/j;)V

    .line 658
    .line 659
    .line 660
    goto :goto_11

    .line 661
    :cond_1a
    iget v5, v3, Lr1/o;->c:I

    .line 662
    .line 663
    and-int/lit8 v5, v5, 0x8

    .line 664
    .line 665
    if-eqz v5, :cond_20

    .line 666
    .line 667
    instance-of v5, v3, Lq2/m;

    .line 668
    .line 669
    if-eqz v5, :cond_20

    .line 670
    .line 671
    move-object v5, v3

    .line 672
    check-cast v5, Lq2/m;

    .line 673
    .line 674
    iget-object v5, v5, Lq2/m;->p:Lr1/o;

    .line 675
    .line 676
    const/4 v7, 0x0

    .line 677
    :goto_f
    if-eqz v5, :cond_1f

    .line 678
    .line 679
    iget v8, v5, Lr1/o;->c:I

    .line 680
    .line 681
    and-int/lit8 v8, v8, 0x8

    .line 682
    .line 683
    if-eqz v8, :cond_1e

    .line 684
    .line 685
    add-int/lit8 v7, v7, 0x1

    .line 686
    .line 687
    if-ne v7, v6, :cond_1b

    .line 688
    .line 689
    move-object v3, v5

    .line 690
    goto :goto_10

    .line 691
    :cond_1b
    if-nez v4, :cond_1c

    .line 692
    .line 693
    new-instance v4, Lh1/e;

    .line 694
    .line 695
    const/16 v8, 0x10

    .line 696
    .line 697
    new-array v8, v8, [Lr1/o;

    .line 698
    .line 699
    invoke-direct {v4, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    :cond_1c
    if-eqz v3, :cond_1d

    .line 703
    .line 704
    invoke-virtual {v4, v3}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 705
    .line 706
    .line 707
    move-object v3, v2

    .line 708
    :cond_1d
    invoke-virtual {v4, v5}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    :cond_1e
    :goto_10
    iget-object v5, v5, Lr1/o;->f:Lr1/o;

    .line 712
    .line 713
    goto :goto_f

    .line 714
    :cond_1f
    if-ne v7, v6, :cond_20

    .line 715
    .line 716
    goto :goto_e

    .line 717
    :cond_20
    :goto_11
    invoke-static {v4}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    goto :goto_e

    .line 722
    :cond_21
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 723
    .line 724
    goto :goto_d

    .line 725
    :cond_22
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 726
    .line 727
    return-object v0

    .line 728
    :pswitch_7
    iget-object v0, p0, Lk2/d;->b:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast v0, Lk2/e;

    .line 731
    .line 732
    iget-object v1, p0, Lk2/d;->c:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v1, Lr1/o;

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Lk2/e;->g(Lr1/o;)V

    .line 737
    .line 738
    .line 739
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 740
    .line 741
    return-object v0

    .line 742
    nop

    .line 743
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
