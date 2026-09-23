.class public final synthetic La8/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La8/q;->a:I

    iput-object p2, p0, La8/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, La8/q;->a:I

    iput-object p2, p0, La8/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp1/u;

    .line 4
    .line 5
    iget-object v1, v0, Lp1/u;->g:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lp1/u;->i:Lp1/t;

    .line 9
    .line 10
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lp1/t;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget v3, v0, Lp1/t;->d:I

    .line 19
    .line 20
    iget-object v4, v0, Lp1/t;->c:Ls/c0;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    new-instance v4, Ls/c0;

    .line 25
    .line 26
    invoke-direct {v4}, Ls/c0;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v4, v0, Lp1/t;->c:Ls/c0;

    .line 30
    .line 31
    iget-object v5, v0, Lp1/t;->f:Ls/h0;

    .line 32
    .line 33
    invoke-virtual {v5, v2, v4}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, p1, v3, v2, v4}, Lp1/t;->c(Ljava/lang/Object;ILjava/lang/Object;Ls/c0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v1

    .line 40
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 41
    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v1

    .line 45
    throw p1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, La8/q;->a:I

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x4

    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, La8/q;

    .line 19
    .line 20
    check-cast p1, Lq2/d2;

    .line 21
    .line 22
    instance-of v1, p1, Lr0/a;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast p1, Lr0/a;

    .line 27
    .line 28
    iget-object p1, p1, Lr0/a;->o:La8/q;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, La8/q;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ln0/a;

    .line 47
    .line 48
    check-cast p1, Lf9/k;

    .line 49
    .line 50
    invoke-interface {p1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 54
    .line 55
    return-object p1

    .line 56
    :pswitch_1
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lr0/b;

    .line 59
    .line 60
    check-cast p1, Ln0/a;

    .line 61
    .line 62
    iget-object v1, v0, Lr0/b;->q:Lf9/n;

    .line 63
    .line 64
    sget-object v2, Lr2/n0;->b:Lf1/w2;

    .line 65
    .line 66
    invoke-static {v0, v2}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v1, p1, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_2
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    check-cast p1, La2/g;

    .line 81
    .line 82
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, La2/b;->z()Ly1/o;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {p1}, La2/g;->g()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    const/16 v4, 0x20

    .line 95
    .line 96
    shr-long/2addr v2, v4

    .line 97
    long-to-int v3, v2

    .line 98
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    float-to-int v2, v2

    .line 103
    invoke-interface {p1}, La2/g;->g()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    const-wide v5, 0xffffffffL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    and-long/2addr v3, v5

    .line 113
    long-to-int p1, v3

    .line 114
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    float-to-int p1, p1

    .line 119
    invoke-virtual {v0, v7, v7, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 130
    .line 131
    return-object p1

    .line 132
    :pswitch_3
    invoke-direct {p0, p1}, La8/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :pswitch_4
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lo1/d;

    .line 140
    .line 141
    iget-object v0, v0, Lo1/d;->c:Lo1/f;

    .line 142
    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    invoke-interface {v0, p1}, Lo1/f;->a(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    :pswitch_5
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, p1}, Llc/e;->l(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, ": "

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, p1}, Llc/e;->n(I)Llc/e;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-interface {p1}, Llc/e;->h()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :pswitch_6
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v0, Lnc/l0;

    .line 198
    .line 199
    check-cast p1, Llc/a;

    .line 200
    .line 201
    const-string v1, "$this$buildSerialDescriptor"

    .line 202
    .line 203
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 210
    .line 211
    iput-object v0, p1, Llc/a;->b:Ljava/util/List;

    .line 212
    .line 213
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 214
    .line 215
    return-object p1

    .line 216
    :pswitch_7
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Ll7/g;

    .line 219
    .line 220
    check-cast p1, [B

    .line 221
    .line 222
    const-string v1, "pcmBytes"

    .line 223
    .line 224
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    array-length v1, p1

    .line 228
    iget-object v2, v0, Ll7/g;->c:Ll7/h;

    .line 229
    .line 230
    invoke-virtual {v2, p1, v7, v1}, Ll7/h;->d([BII)V

    .line 231
    .line 232
    .line 233
    iget-object p1, v0, Ll7/g;->b:Ll7/c;

    .line 234
    .line 235
    iget v0, p1, Ll7/c;->c:I

    .line 236
    .line 237
    div-int/2addr v0, v4

    .line 238
    iget p1, p1, Ll7/c;->b:I

    .line 239
    .line 240
    mul-int v0, v0, p1

    .line 241
    .line 242
    div-int/2addr v1, v0

    .line 243
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 244
    .line 245
    return-object p1

    .line 246
    :pswitch_8
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, Ll5/l;

    .line 249
    .line 250
    check-cast p1, Lx1/b;

    .line 251
    .line 252
    iget-wide v1, p1, Lx1/b;->a:J

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2, v8}, Ll5/l;->b(JZ)V

    .line 255
    .line 256
    .line 257
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 258
    .line 259
    return-object p1

    .line 260
    :pswitch_9
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v0, Ll0/o1;

    .line 263
    .line 264
    check-cast p1, Ljava/lang/Float;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    iget-object v1, v0, Ll0/o1;->a:Lf1/g1;

    .line 271
    .line 272
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    add-float/2addr v2, p1

    .line 277
    iget-object v0, v0, Ll0/o1;->b:Lf1/g1;

    .line 278
    .line 279
    invoke-virtual {v0}, Lf1/g1;->f()F

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    cmpl-float v3, v2, v3

    .line 284
    .line 285
    if-lez v3, :cond_2

    .line 286
    .line 287
    invoke-virtual {v0}, Lf1/g1;->f()F

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    sub-float/2addr p1, v0

    .line 296
    goto :goto_0

    .line 297
    :cond_2
    cmpg-float v0, v2, v5

    .line 298
    .line 299
    if-gez v0, :cond_3

    .line 300
    .line 301
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    neg-float p1, p1

    .line 306
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    add-float/2addr v0, p1

    .line 311
    invoke-virtual {v1, v0}, Lf1/g1;->g(F)V

    .line 312
    .line 313
    .line 314
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    return-object p1

    .line 319
    :pswitch_a
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Lw0/q;

    .line 322
    .line 323
    check-cast p1, Ly2/j;

    .line 324
    .line 325
    sget-object v1, Lw0/o0;->c:Ly2/u;

    .line 326
    .line 327
    new-instance v2, Lw0/n0;

    .line 328
    .line 329
    sget-object v3, Ll0/h0;->a:Ll0/h0;

    .line 330
    .line 331
    invoke-interface {v0}, Lw0/q;->a()J

    .line 332
    .line 333
    .line 334
    move-result-wide v4

    .line 335
    sget-object v6, Lw0/m0;->b:Lw0/m0;

    .line 336
    .line 337
    const/4 v7, 0x1

    .line 338
    invoke-direct/range {v2 .. v7}, Lw0/n0;-><init>(Ll0/h0;JLw0/m0;Z)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, v1, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 345
    .line 346
    return-object p1

    .line 347
    :pswitch_b
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v0, Ljc/c;

    .line 350
    .line 351
    check-cast p1, Ljava/lang/Throwable;

    .line 352
    .line 353
    invoke-virtual {v0, v6}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 357
    .line 358
    return-object p1

    .line 359
    :pswitch_c
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v0, Lg9/x;

    .line 362
    .line 363
    check-cast p1, Lq2/d2;

    .line 364
    .line 365
    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    .line 366
    .line 367
    invoke-static {p1, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    check-cast p1, Lh0/w0;

    .line 371
    .line 372
    iget-object p1, p1, Lh0/w0;->o:Lh0/h0;

    .line 373
    .line 374
    iget-object v1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v1, Ljava/util/List;

    .line 377
    .line 378
    if-eqz v1, :cond_4

    .line 379
    .line 380
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    goto :goto_1

    .line 384
    :cond_4
    new-array v1, v8, [Lh0/h0;

    .line 385
    .line 386
    aput-object p1, v1, v7

    .line 387
    .line 388
    invoke-static {v1}, Lp9/x1;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    :goto_1
    iput-object v1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 393
    .line 394
    sget-object p1, Lq2/c2;->b:Lq2/c2;

    .line 395
    .line 396
    return-object p1

    .line 397
    :pswitch_d
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v0, Lo1/f;

    .line 400
    .line 401
    if-eqz v0, :cond_5

    .line 402
    .line 403
    invoke-interface {v0, p1}, Lo1/f;->a(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    :cond_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    return-object p1

    .line 412
    :pswitch_e
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, Lh0/c0;

    .line 415
    .line 416
    check-cast p1, Lf1/i0;

    .line 417
    .line 418
    new-instance p1, Lc8/p;

    .line 419
    .line 420
    invoke-direct {p1, v3, v0}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    return-object p1

    .line 424
    :pswitch_f
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v0, Lh0/s;

    .line 427
    .line 428
    check-cast p1, Lf1/i0;

    .line 429
    .line 430
    new-instance p1, Lc8/p;

    .line 431
    .line 432
    invoke-direct {p1, v2, v0}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    return-object p1

    .line 436
    :pswitch_10
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v0, Lg3/g;

    .line 439
    .line 440
    check-cast p1, Lg3/g;

    .line 441
    .line 442
    if-ne v0, p1, :cond_6

    .line 443
    .line 444
    const-string v0, " > "

    .line 445
    .line 446
    goto :goto_2

    .line 447
    :cond_6
    const-string v0, "   "

    .line 448
    .line 449
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v0, ", newCursorPosition="

    .line 458
    .line 459
    instance-of v2, p1, Lg3/a;

    .line 460
    .line 461
    const/16 v3, 0x29

    .line 462
    .line 463
    if-eqz v2, :cond_7

    .line 464
    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    const-string v4, "CommitTextCommand(text.length="

    .line 468
    .line 469
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    check-cast p1, Lg3/a;

    .line 473
    .line 474
    iget-object v4, p1, Lg3/a;->a:Lb3/g;

    .line 475
    .line 476
    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    iget p1, p1, Lg3/a;->b:I

    .line 489
    .line 490
    :goto_3
    invoke-static {v2, p1, v3}, La2/f;->I(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    goto/16 :goto_4

    .line 495
    .line 496
    :cond_7
    instance-of v2, p1, Lg3/u;

    .line 497
    .line 498
    if-eqz v2, :cond_8

    .line 499
    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    const-string v4, "SetComposingTextCommand(text.length="

    .line 503
    .line 504
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    check-cast p1, Lg3/u;

    .line 508
    .line 509
    iget-object v4, p1, Lg3/u;->a:Lb3/g;

    .line 510
    .line 511
    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    iget p1, p1, Lg3/u;->b:I

    .line 524
    .line 525
    goto :goto_3

    .line 526
    :cond_8
    instance-of v0, p1, Lg3/t;

    .line 527
    .line 528
    if-eqz v0, :cond_9

    .line 529
    .line 530
    check-cast p1, Lg3/t;

    .line 531
    .line 532
    invoke-virtual {p1}, Lg3/t;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    goto :goto_4

    .line 537
    :cond_9
    instance-of v0, p1, Lg3/e;

    .line 538
    .line 539
    if-eqz v0, :cond_a

    .line 540
    .line 541
    check-cast p1, Lg3/e;

    .line 542
    .line 543
    invoke-virtual {p1}, Lg3/e;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    goto :goto_4

    .line 548
    :cond_a
    instance-of v0, p1, Lg3/f;

    .line 549
    .line 550
    if-eqz v0, :cond_b

    .line 551
    .line 552
    check-cast p1, Lg3/f;

    .line 553
    .line 554
    invoke-virtual {p1}, Lg3/f;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    goto :goto_4

    .line 559
    :cond_b
    instance-of v0, p1, Lg3/v;

    .line 560
    .line 561
    if-eqz v0, :cond_c

    .line 562
    .line 563
    check-cast p1, Lg3/v;

    .line 564
    .line 565
    invoke-virtual {p1}, Lg3/v;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    goto :goto_4

    .line 570
    :cond_c
    instance-of v0, p1, Lg3/i;

    .line 571
    .line 572
    if-eqz v0, :cond_d

    .line 573
    .line 574
    const-string p1, "FinishComposingTextCommand()"

    .line 575
    .line 576
    goto :goto_4

    .line 577
    :cond_d
    instance-of v0, p1, Lg3/d;

    .line 578
    .line 579
    if-eqz v0, :cond_e

    .line 580
    .line 581
    const-string p1, "DeleteAllCommand()"

    .line 582
    .line 583
    goto :goto_4

    .line 584
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 589
    .line 590
    invoke-virtual {v0, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    invoke-interface {p1}, Lm9/c;->k()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    if-nez p1, :cond_f

    .line 599
    .line 600
    const-string p1, "{anonymous EditCommand}"

    .line 601
    .line 602
    :cond_f
    const-string v0, "Unknown EditCommand: "

    .line 603
    .line 604
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    return-object p1

    .line 616
    :pswitch_11
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v0, Lg0/u;

    .line 619
    .line 620
    check-cast p1, Ljava/lang/Float;

    .line 621
    .line 622
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    neg-float p1, p1

    .line 627
    cmpg-float v2, p1, v5

    .line 628
    .line 629
    if-gez v2, :cond_10

    .line 630
    .line 631
    invoke-virtual {v0}, Lg0/u;->c()Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-eqz v2, :cond_19

    .line 636
    .line 637
    :cond_10
    cmpl-float v2, p1, v5

    .line 638
    .line 639
    if-lez v2, :cond_11

    .line 640
    .line 641
    invoke-virtual {v0}, Lg0/u;->b()Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    if-nez v2, :cond_11

    .line 646
    .line 647
    goto/16 :goto_8

    .line 648
    .line 649
    :cond_11
    iget v2, v0, Lg0/u;->g:F

    .line 650
    .line 651
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    cmpg-float v2, v2, v1

    .line 656
    .line 657
    if-gtz v2, :cond_12

    .line 658
    .line 659
    goto :goto_5

    .line 660
    :cond_12
    const-string v2, "entered drag with non-zero pending scroll"

    .line 661
    .line 662
    invoke-static {v2}, Lc0/b;->c(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    :goto_5
    iget v2, v0, Lg0/u;->g:F

    .line 666
    .line 667
    add-float/2addr v2, p1

    .line 668
    iput v2, v0, Lg0/u;->g:F

    .line 669
    .line 670
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    cmpl-float v2, v2, v1

    .line 675
    .line 676
    if-lez v2, :cond_17

    .line 677
    .line 678
    iget v2, v0, Lg0/u;->g:F

    .line 679
    .line 680
    invoke-static {v2}, Li9/a;->N(F)I

    .line 681
    .line 682
    .line 683
    move-result v3

    .line 684
    iget-object v4, v0, Lg0/u;->e:Lf1/k1;

    .line 685
    .line 686
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    check-cast v4, Lg0/m;

    .line 691
    .line 692
    iget-boolean v7, v0, Lg0/u;->b:Z

    .line 693
    .line 694
    xor-int/2addr v7, v8

    .line 695
    invoke-virtual {v4, v3, v7}, Lg0/m;->a(IZ)Lg0/m;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    if-eqz v4, :cond_13

    .line 700
    .line 701
    iget-object v7, v0, Lg0/u;->c:Lg0/m;

    .line 702
    .line 703
    if-eqz v7, :cond_13

    .line 704
    .line 705
    invoke-virtual {v7, v3, v8}, Lg0/m;->a(IZ)Lg0/m;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    if-eqz v3, :cond_14

    .line 710
    .line 711
    iput-object v3, v0, Lg0/u;->c:Lg0/m;

    .line 712
    .line 713
    :cond_13
    move-object v6, v4

    .line 714
    :cond_14
    if-eqz v6, :cond_15

    .line 715
    .line 716
    iget-boolean v3, v0, Lg0/u;->b:Z

    .line 717
    .line 718
    invoke-virtual {v0, v6, v3, v8}, Lg0/u;->f(Lg0/m;ZZ)V

    .line 719
    .line 720
    .line 721
    iget-object v3, v0, Lg0/u;->r:Lf1/b1;

    .line 722
    .line 723
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 724
    .line 725
    invoke-interface {v3, v4}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    iget v3, v0, Lg0/u;->g:F

    .line 729
    .line 730
    sub-float/2addr v2, v3

    .line 731
    invoke-virtual {v0, v2, v6}, Lg0/u;->h(FLg0/m;)V

    .line 732
    .line 733
    .line 734
    goto :goto_6

    .line 735
    :cond_15
    iget-object v3, v0, Lg0/u;->j:Lq2/h0;

    .line 736
    .line 737
    if-eqz v3, :cond_16

    .line 738
    .line 739
    invoke-virtual {v3}, Lq2/h0;->k()V

    .line 740
    .line 741
    .line 742
    :cond_16
    iget v3, v0, Lg0/u;->g:F

    .line 743
    .line 744
    sub-float/2addr v2, v3

    .line 745
    invoke-virtual {v0}, Lg0/u;->g()Lg0/m;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    invoke-virtual {v0, v2, v3}, Lg0/u;->h(FLg0/m;)V

    .line 750
    .line 751
    .line 752
    :cond_17
    :goto_6
    iget v2, v0, Lg0/u;->g:F

    .line 753
    .line 754
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    cmpg-float v1, v2, v1

    .line 759
    .line 760
    if-gtz v1, :cond_18

    .line 761
    .line 762
    :goto_7
    move v5, p1

    .line 763
    goto :goto_8

    .line 764
    :cond_18
    iget v1, v0, Lg0/u;->g:F

    .line 765
    .line 766
    sub-float/2addr p1, v1

    .line 767
    iput v5, v0, Lg0/u;->g:F

    .line 768
    .line 769
    goto :goto_7

    .line 770
    :cond_19
    :goto_8
    neg-float p1, v5

    .line 771
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    return-object p1

    .line 776
    :pswitch_12
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Lg0/r;

    .line 779
    .line 780
    check-cast p1, Ljava/lang/Integer;

    .line 781
    .line 782
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 783
    .line 784
    .line 785
    move-result p1

    .line 786
    invoke-virtual {v0, p1}, Lg0/r;->c(I)I

    .line 787
    .line 788
    .line 789
    move-result p1

    .line 790
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 791
    .line 792
    .line 793
    move-result-object p1

    .line 794
    return-object p1

    .line 795
    :pswitch_13
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v0, Lf3/e;

    .line 798
    .line 799
    check-cast p1, Lf3/o;

    .line 800
    .line 801
    iget-object v3, p1, Lf3/o;->b:Lf3/k;

    .line 802
    .line 803
    iget v4, p1, Lf3/o;->c:I

    .line 804
    .line 805
    iget v5, p1, Lf3/o;->d:I

    .line 806
    .line 807
    iget-object v6, p1, Lf3/o;->e:Ljava/lang/Object;

    .line 808
    .line 809
    new-instance v1, Lf3/o;

    .line 810
    .line 811
    const/4 v2, 0x0

    .line 812
    invoke-direct/range {v1 .. v6}, Lf3/o;-><init>(Lf3/n;Lf3/k;IILjava/lang/Object;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, v1}, Lf3/e;->a(Lf3/o;)Lf3/p;

    .line 816
    .line 817
    .line 818
    move-result-object p1

    .line 819
    iget-object p1, p1, Lf3/p;->a:Ljava/lang/Object;

    .line 820
    .line 821
    return-object p1

    .line 822
    :pswitch_14
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast v0, Ls/i0;

    .line 825
    .line 826
    instance-of v1, p1, Lp1/a0;

    .line 827
    .line 828
    if-eqz v1, :cond_1a

    .line 829
    .line 830
    move-object v1, p1

    .line 831
    check-cast v1, Lp1/a0;

    .line 832
    .line 833
    invoke-virtual {v1, v3}, Lp1/a0;->e(I)V

    .line 834
    .line 835
    .line 836
    :cond_1a
    invoke-virtual {v0, p1}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 840
    .line 841
    return-object p1

    .line 842
    :pswitch_15
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast v0, Lf1/b2;

    .line 845
    .line 846
    check-cast p1, Ljava/lang/Throwable;

    .line 847
    .line 848
    const-string v1, "Recomposer effect job completed"

    .line 849
    .line 850
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 851
    .line 852
    invoke-direct {v2, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 856
    .line 857
    .line 858
    iget-object v1, v0, Lf1/b2;->b:Ljava/lang/Object;

    .line 859
    .line 860
    monitor-enter v1

    .line 861
    :try_start_0
    iget-object v3, v0, Lf1/b2;->c:Lac/v0;

    .line 862
    .line 863
    if-eqz v3, :cond_1b

    .line 864
    .line 865
    iget-object v5, v0, Lf1/b2;->t:Ldc/l0;

    .line 866
    .line 867
    sget-object v7, Lf1/x1;->b:Lf1/x1;

    .line 868
    .line 869
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v5, v6, v7}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    invoke-interface {v3, v2}, Lac/v0;->a(Ljava/util/concurrent/CancellationException;)V

    .line 876
    .line 877
    .line 878
    iput-object v6, v0, Lf1/b2;->q:Lac/i;

    .line 879
    .line 880
    new-instance v2, La8/v;

    .line 881
    .line 882
    invoke-direct {v2, v4, v0, p1}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 883
    .line 884
    .line 885
    invoke-interface {v3, v2}, Lac/v0;->y(Lf9/k;)Lac/h0;

    .line 886
    .line 887
    .line 888
    goto :goto_9

    .line 889
    :catchall_0
    move-exception v0

    .line 890
    move-object p1, v0

    .line 891
    goto :goto_a

    .line 892
    :cond_1b
    iput-object v2, v0, Lf1/b2;->d:Ljava/lang/Throwable;

    .line 893
    .line 894
    iget-object p1, v0, Lf1/b2;->t:Ldc/l0;

    .line 895
    .line 896
    sget-object v0, Lf1/x1;->a:Lf1/x1;

    .line 897
    .line 898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    .line 900
    .line 901
    invoke-virtual {p1, v6, v0}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    .line 903
    .line 904
    :goto_9
    monitor-exit v1

    .line 905
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 906
    .line 907
    return-object p1

    .line 908
    :goto_a
    monitor-exit v1

    .line 909
    throw p1

    .line 910
    :pswitch_16
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 911
    .line 912
    check-cast v0, Lf1/y;

    .line 913
    .line 914
    invoke-virtual {v0, p1}, Lf1/y;->z(Ljava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 918
    .line 919
    return-object p1

    .line 920
    :pswitch_17
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast v0, Lf0/u;

    .line 923
    .line 924
    check-cast p1, Ljava/lang/Float;

    .line 925
    .line 926
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 927
    .line 928
    .line 929
    move-result p1

    .line 930
    neg-float p1, p1

    .line 931
    cmpg-float v2, p1, v5

    .line 932
    .line 933
    if-gez v2, :cond_1c

    .line 934
    .line 935
    invoke-virtual {v0}, Lf0/u;->c()Z

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    if-eqz v2, :cond_25

    .line 940
    .line 941
    :cond_1c
    cmpl-float v2, p1, v5

    .line 942
    .line 943
    if-lez v2, :cond_1d

    .line 944
    .line 945
    invoke-virtual {v0}, Lf0/u;->b()Z

    .line 946
    .line 947
    .line 948
    move-result v2

    .line 949
    if-nez v2, :cond_1d

    .line 950
    .line 951
    goto/16 :goto_e

    .line 952
    .line 953
    :cond_1d
    iget v2, v0, Lf0/u;->h:F

    .line 954
    .line 955
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    cmpg-float v2, v2, v1

    .line 960
    .line 961
    if-gtz v2, :cond_1e

    .line 962
    .line 963
    goto :goto_b

    .line 964
    :cond_1e
    const-string v2, "entered drag with non-zero pending scroll"

    .line 965
    .line 966
    invoke-static {v2}, Lc0/b;->c(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    :goto_b
    iput-boolean v8, v0, Lf0/u;->d:Z

    .line 970
    .line 971
    iget v2, v0, Lf0/u;->h:F

    .line 972
    .line 973
    add-float/2addr v2, p1

    .line 974
    iput v2, v0, Lf0/u;->h:F

    .line 975
    .line 976
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    cmpl-float v2, v2, v1

    .line 981
    .line 982
    if-lez v2, :cond_23

    .line 983
    .line 984
    iget v2, v0, Lf0/u;->h:F

    .line 985
    .line 986
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    iget-object v4, v0, Lf0/u;->f:Lf1/k1;

    .line 991
    .line 992
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v4

    .line 996
    check-cast v4, Lf0/m;

    .line 997
    .line 998
    iget-boolean v7, v0, Lf0/u;->b:Z

    .line 999
    .line 1000
    xor-int/2addr v7, v8

    .line 1001
    invoke-virtual {v4, v3, v7}, Lf0/m;->a(IZ)Lf0/m;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v4

    .line 1005
    if-eqz v4, :cond_1f

    .line 1006
    .line 1007
    iget-object v7, v0, Lf0/u;->c:Lf0/m;

    .line 1008
    .line 1009
    if-eqz v7, :cond_1f

    .line 1010
    .line 1011
    invoke-virtual {v7, v3, v8}, Lf0/m;->a(IZ)Lf0/m;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    if-eqz v3, :cond_20

    .line 1016
    .line 1017
    iput-object v3, v0, Lf0/u;->c:Lf0/m;

    .line 1018
    .line 1019
    :cond_1f
    move-object v6, v4

    .line 1020
    :cond_20
    if-eqz v6, :cond_21

    .line 1021
    .line 1022
    iget-boolean v3, v0, Lf0/u;->b:Z

    .line 1023
    .line 1024
    invoke-virtual {v0, v6, v3, v8}, Lf0/u;->f(Lf0/m;ZZ)V

    .line 1025
    .line 1026
    .line 1027
    iget-object v3, v0, Lf0/u;->v:Lf1/b1;

    .line 1028
    .line 1029
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 1030
    .line 1031
    invoke-interface {v3, v4}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 1032
    .line 1033
    .line 1034
    iget v3, v0, Lf0/u;->h:F

    .line 1035
    .line 1036
    sub-float/2addr v2, v3

    .line 1037
    invoke-virtual {v0, v2, v6}, Lf0/u;->h(FLf0/m;)V

    .line 1038
    .line 1039
    .line 1040
    goto :goto_c

    .line 1041
    :cond_21
    iget-object v3, v0, Lf0/u;->k:Lq2/h0;

    .line 1042
    .line 1043
    if-eqz v3, :cond_22

    .line 1044
    .line 1045
    invoke-virtual {v3}, Lq2/h0;->k()V

    .line 1046
    .line 1047
    .line 1048
    :cond_22
    iget v3, v0, Lf0/u;->h:F

    .line 1049
    .line 1050
    sub-float/2addr v2, v3

    .line 1051
    invoke-virtual {v0}, Lf0/u;->g()Lf0/m;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    invoke-virtual {v0, v2, v3}, Lf0/u;->h(FLf0/m;)V

    .line 1056
    .line 1057
    .line 1058
    :cond_23
    :goto_c
    iget v2, v0, Lf0/u;->h:F

    .line 1059
    .line 1060
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 1061
    .line 1062
    .line 1063
    move-result v2

    .line 1064
    cmpg-float v1, v2, v1

    .line 1065
    .line 1066
    if-gtz v1, :cond_24

    .line 1067
    .line 1068
    :goto_d
    move v5, p1

    .line 1069
    goto :goto_e

    .line 1070
    :cond_24
    iget v1, v0, Lf0/u;->h:F

    .line 1071
    .line 1072
    sub-float/2addr p1, v1

    .line 1073
    iput v5, v0, Lf0/u;->h:F

    .line 1074
    .line 1075
    goto :goto_d

    .line 1076
    :cond_25
    :goto_e
    neg-float p1, v5

    .line 1077
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1078
    .line 1079
    .line 1080
    move-result-object p1

    .line 1081
    return-object p1

    .line 1082
    :pswitch_18
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 1083
    .line 1084
    check-cast v0, Lf0/j;

    .line 1085
    .line 1086
    check-cast p1, Ljava/lang/Integer;

    .line 1087
    .line 1088
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 1089
    .line 1090
    .line 1091
    move-result p1

    .line 1092
    iget-wide v1, v0, Lf0/j;->d:J

    .line 1093
    .line 1094
    invoke-virtual {v0, p1, v1, v2}, Lf0/j;->u0(IJ)Lf0/n;

    .line 1095
    .line 1096
    .line 1097
    move-result-object p1

    .line 1098
    return-object p1

    .line 1099
    :pswitch_19
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 1100
    .line 1101
    check-cast v0, Le8/i;

    .line 1102
    .line 1103
    check-cast p1, Landroid/content/Context;

    .line 1104
    .line 1105
    const-string v1, "context"

    .line 1106
    .line 1107
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    iget v0, v0, Le8/i;->e:I

    .line 1111
    .line 1112
    if-ne v0, v2, :cond_26

    .line 1113
    .line 1114
    new-instance v0, Lg8/b;

    .line 1115
    .line 1116
    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v0, v7}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1126
    .line 1127
    .line 1128
    goto :goto_f

    .line 1129
    :cond_26
    if-ne v0, v8, :cond_27

    .line 1130
    .line 1131
    new-instance v0, Lg8/d;

    .line 1132
    .line 1133
    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1137
    .line 1138
    .line 1139
    goto :goto_f

    .line 1140
    :cond_27
    new-instance v0, Lg8/c;

    .line 1141
    .line 1142
    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p1

    .line 1149
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1150
    .line 1151
    .line 1152
    :goto_f
    return-object v0

    .line 1153
    :pswitch_1a
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 1154
    .line 1155
    check-cast v0, Lc8/z0;

    .line 1156
    .line 1157
    check-cast p1, Lf1/i0;

    .line 1158
    .line 1159
    const-string v1, "$this$DisposableEffect"

    .line 1160
    .line 1161
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    new-instance p1, Lc8/p;

    .line 1165
    .line 1166
    invoke-direct {p1, v8, v0}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    return-object p1

    .line 1170
    :pswitch_1b
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 1171
    .line 1172
    check-cast v0, Lc8/q;

    .line 1173
    .line 1174
    check-cast p1, Lf1/i0;

    .line 1175
    .line 1176
    const-string v1, "$this$DisposableEffect"

    .line 1177
    .line 1178
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    new-instance p1, Lc8/p;

    .line 1182
    .line 1183
    invoke-direct {p1, v7, v0}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 1184
    .line 1185
    .line 1186
    return-object p1

    .line 1187
    :pswitch_1c
    iget-object v0, p0, La8/q;->b:Ljava/lang/Object;

    .line 1188
    .line 1189
    check-cast v0, Lp1/p;

    .line 1190
    .line 1191
    check-cast p1, Lf0/g;

    .line 1192
    .line 1193
    const-string v1, "$this$LazyColumn"

    .line 1194
    .line 1195
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v0}, Lp1/p;->size()I

    .line 1199
    .line 1200
    .line 1201
    move-result v1

    .line 1202
    new-instance v2, La8/r;

    .line 1203
    .line 1204
    invoke-direct {v2, v7, v0}, La8/r;-><init>(ILjava/util/List;)V

    .line 1205
    .line 1206
    .line 1207
    new-instance v3, La8/s;

    .line 1208
    .line 1209
    invoke-direct {v3, v0}, La8/s;-><init>(Ljava/util/List;)V

    .line 1210
    .line 1211
    .line 1212
    new-instance v0, Ln1/c;

    .line 1213
    .line 1214
    const v4, 0x2fd4df92

    .line 1215
    .line 1216
    .line 1217
    invoke-direct {v0, v3, v4, v8}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 1218
    .line 1219
    .line 1220
    iget-object p1, p1, Lf0/g;->b:Le7/l;

    .line 1221
    .line 1222
    new-instance v3, Lf0/f;

    .line 1223
    .line 1224
    invoke-direct {v3, v2, v0}, Lf0/f;-><init>(Lf9/k;Ln1/c;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {p1, v1, v3}, Le7/l;->a(ILh0/p;)V

    .line 1228
    .line 1229
    .line 1230
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 1231
    .line 1232
    return-object p1

    .line 1233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
