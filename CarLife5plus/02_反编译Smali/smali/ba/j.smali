.class public final Lba/j;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0xd

    iput v0, p0, Lba/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lba/j;->a:I

    iput-object p2, p0, Lba/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lv9/e;Lja/f;Llb/a0;Lja/a;)V
    .locals 0

    const/16 p2, 0xc

    iput p2, p0, Lba/j;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/j;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lba/j;->a:I

    .line 6
    .line 7
    const-string v3, "kotlinTypeRefiner"

    .line 8
    .line 9
    const-string v4, "getType(...)"

    .line 10
    .line 11
    const-string v5, "fqName"

    .line 12
    .line 13
    const/16 v6, 0xa

    .line 14
    .line 15
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 16
    .line 17
    const-string v8, "it"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x1

    .line 22
    packed-switch v2, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Llb/w;

    .line 28
    .line 29
    check-cast v1, Lv9/y;

    .line 30
    .line 31
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :pswitch_0
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ls9/k;

    .line 38
    .line 39
    check-cast v1, Lv9/y;

    .line 40
    .line 41
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Lv9/y;->j()Ls9/i;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v2}, Ls9/i;->r(Ls9/k;)Llb/a0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    return-object v1

    .line 53
    :pswitch_1
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Ly9/a0;

    .line 56
    .line 57
    check-cast v1, Lua/c;

    .line 58
    .line 59
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v2, Ly9/a0;->f:Ly9/f0;

    .line 63
    .line 64
    iget-object v4, v2, Ly9/a0;->c:Lkb/l;

    .line 65
    .line 66
    check-cast v3, Ly9/e0;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const-string v3, "storageManager"

    .line 72
    .line 73
    invoke-static {v4, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v3, Ly9/x;

    .line 77
    .line 78
    invoke-direct {v3, v2, v1, v4}, Ly9/x;-><init>(Ly9/a0;Lua/c;Lkb/l;)V

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :pswitch_2
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Ly9/f;

    .line 85
    .line 86
    check-cast v1, Llb/x0;

    .line 87
    .line 88
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Llb/c;->j(Llb/w;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_0

    .line 96
    .line 97
    invoke-virtual {v1}, Llb/w;->D0()Llb/k0;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1}, Llb/k0;->k()Lv9/h;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    instance-of v3, v1, Lv9/q0;

    .line 106
    .line 107
    if-eqz v3, :cond_0

    .line 108
    .line 109
    check-cast v1, Lv9/q0;

    .line 110
    .line 111
    invoke-interface {v1}, Lv9/k;->k()Lv9/k;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    .line 121
    const/4 v10, 0x1

    .line 122
    :cond_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    return-object v1

    .line 127
    :pswitch_3
    check-cast v1, Lmb/f;

    .line 128
    .line 129
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v2, Ly9/a;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v1, v2, Ly9/a;->b:Ly9/b;

    .line 137
    .line 138
    iget-object v1, v1, Ly9/b;->b:Lkb/j;

    .line 139
    .line 140
    invoke-virtual {v1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Llb/a0;

    .line 145
    .line 146
    return-object v1

    .line 147
    :pswitch_4
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Lub/h;

    .line 150
    .line 151
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    return-object v7

    .line 158
    :pswitch_5
    check-cast v1, Li2/b;

    .line 159
    .line 160
    iget-object v1, v1, Li2/b;->a:Landroid/view/KeyEvent;

    .line 161
    .line 162
    sget-object v2, Ll0/p0;->a:Ll0/m0;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Ll0/m0;->a(Landroid/view/KeyEvent;)Ll0/l0;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    sget-object v2, Ll0/l0;->s:Ll0/l0;

    .line 169
    .line 170
    if-ne v1, v2, :cond_1

    .line 171
    .line 172
    iget-object v1, v0, Lba/j;->b:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Lw0/w0;

    .line 175
    .line 176
    invoke-virtual {v1}, Lw0/w0;->c()V

    .line 177
    .line 178
    .line 179
    const/4 v10, 0x1

    .line 180
    :cond_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    return-object v1

    .line 185
    :pswitch_6
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v2, Lu9/m;

    .line 188
    .line 189
    check-cast v1, Lr8/j;

    .line 190
    .line 191
    const-string v3, "<destruct>"

    .line 192
    .line 193
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v3, v1, Lr8/j;->a:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v3, Ljava/lang/String;

    .line 199
    .line 200
    iget-object v1, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v1, Ljava/lang/String;

    .line 203
    .line 204
    iget-object v2, v2, Lu9/m;->a:Ly9/a0;

    .line 205
    .line 206
    iget-object v2, v2, Ly9/a0;->d:Ls9/i;

    .line 207
    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v5, "\'"

    .line 211
    .line 212
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, "()\' member of List is redundant in Kotlin and might be removed soon. Please use \'"

    .line 219
    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v3, "()\' stdlib extension instead"

    .line 227
    .line 228
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, "()"

    .line 244
    .line 245
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const-string v4, "HIDDEN"

    .line 253
    .line 254
    invoke-static {v2, v3, v1, v4}, Lw9/e;->a(Ls9/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lw9/j;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_2

    .line 267
    .line 268
    sget-object v1, Lw9/g;->a:Lw9/f;

    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_2
    new-instance v2, Lw9/i;

    .line 272
    .line 273
    invoke-direct {v2, v10, v1}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 274
    .line 275
    .line 276
    move-object v1, v2

    .line 277
    :goto_0
    return-object v1

    .line 278
    :pswitch_7
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v2, Lna/d;

    .line 281
    .line 282
    check-cast v1, Laa/c;

    .line 283
    .line 284
    const-string v3, "kotlinClass"

    .line 285
    .line 286
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v3, Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 292
    .line 293
    .line 294
    new-instance v5, Ljava/util/HashMap;

    .line 295
    .line 296
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 297
    .line 298
    .line 299
    new-instance v6, Ljava/util/HashMap;

    .line 300
    .line 301
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 302
    .line 303
    .line 304
    new-instance v7, Lu0/j;

    .line 305
    .line 306
    invoke-direct {v7, v2, v3, v5}, Lu0/j;-><init>(Lna/d;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v1, Laa/c;->a:Ljava/lang/Class;

    .line 310
    .line 311
    const-string v2, "klass"

    .line 312
    .line 313
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-static {v2}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    :goto_1
    invoke-virtual {v2}, Lg9/b;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v8

    .line 328
    const-string v9, "toString(...)"

    .line 329
    .line 330
    const-string v11, "("

    .line 331
    .line 332
    if-eqz v8, :cond_8

    .line 333
    .line 334
    invoke-virtual {v2}, Lg9/b;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    check-cast v8, Ljava/lang/reflect/Method;

    .line 339
    .line 340
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    invoke-static {v12}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    new-instance v13, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    invoke-static {v11}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    :goto_2
    invoke-virtual {v11}, Lg9/b;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v14

    .line 365
    if-eqz v14, :cond_3

    .line 366
    .line 367
    invoke-virtual {v11}, Lg9/b;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v14

    .line 371
    check-cast v14, Ljava/lang/Class;

    .line 372
    .line 373
    invoke-static {v14}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v14}, Lba/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v14

    .line 380
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_3
    const-string v11, ")"

    .line 385
    .line 386
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    const-string v14, "getReturnType(...)"

    .line 394
    .line 395
    invoke-static {v11, v14}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v11}, Lba/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    invoke-static {v11, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7, v12, v11}, Lu0/j;->N(Lua/e;Ljava/lang/String;)Lba/a;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    invoke-static {v11}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    :goto_3
    invoke-virtual {v11}, Lg9/b;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    if-eqz v12, :cond_4

    .line 429
    .line 430
    invoke-virtual {v11}, Lg9/b;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    check-cast v12, Ljava/lang/annotation/Annotation;

    .line 435
    .line 436
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v9, v12}, Lg5/a;->V(Lna/o;Ljava/lang/annotation/Annotation;)V

    .line 440
    .line 441
    .line 442
    goto :goto_3

    .line 443
    :cond_4
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    const-string v11, "getParameterAnnotations(...)"

    .line 448
    .line 449
    invoke-static {v8, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    check-cast v8, [[Ljava/lang/annotation/Annotation;

    .line 453
    .line 454
    array-length v11, v8

    .line 455
    const/4 v12, 0x0

    .line 456
    :goto_4
    if-ge v12, v11, :cond_7

    .line 457
    .line 458
    aget-object v13, v8, v12

    .line 459
    .line 460
    invoke-static {v13}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 461
    .line 462
    .line 463
    move-result-object v13

    .line 464
    :goto_5
    invoke-virtual {v13}, Lg9/b;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v14

    .line 468
    if-eqz v14, :cond_6

    .line 469
    .line 470
    invoke-virtual {v13}, Lg9/b;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v14

    .line 474
    check-cast v14, Ljava/lang/annotation/Annotation;

    .line 475
    .line 476
    invoke-static {v14}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 477
    .line 478
    .line 479
    move-result-object v15

    .line 480
    invoke-static {v15}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    move-result-object v15

    .line 484
    const/16 v16, 0x0

    .line 485
    .line 486
    invoke-static {v15}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    move-object/from16 p1, v1

    .line 491
    .line 492
    new-instance v1, Laa/a;

    .line 493
    .line 494
    invoke-direct {v1, v14}, Laa/a;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v9, v12, v10, v1}, Lba/a;->H(ILua/b;Laa/a;)Lp/h3;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    if-eqz v1, :cond_5

    .line 502
    .line 503
    invoke-static {v1, v14, v15}, Lg5/a;->W(Lna/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 504
    .line 505
    .line 506
    :cond_5
    move-object/from16 v1, p1

    .line 507
    .line 508
    const/4 v10, 0x0

    .line 509
    goto :goto_5

    .line 510
    :cond_6
    move-object/from16 p1, v1

    .line 511
    .line 512
    const/16 v16, 0x0

    .line 513
    .line 514
    add-int/lit8 v12, v12, 0x1

    .line 515
    .line 516
    const/4 v10, 0x0

    .line 517
    goto :goto_4

    .line 518
    :cond_7
    move-object/from16 p1, v1

    .line 519
    .line 520
    const/16 v16, 0x0

    .line 521
    .line 522
    invoke-virtual {v9}, Lba/a;->b()V

    .line 523
    .line 524
    .line 525
    const/4 v10, 0x0

    .line 526
    goto/16 :goto_1

    .line 527
    .line 528
    :cond_8
    move-object/from16 p1, v1

    .line 529
    .line 530
    const/16 v16, 0x0

    .line 531
    .line 532
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-static {v1}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    :goto_6
    invoke-virtual {v1}, Lg9/b;->hasNext()Z

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-eqz v2, :cond_f

    .line 545
    .line 546
    invoke-virtual {v1}, Lg9/b;->next()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 551
    .line 552
    sget-object v8, Lua/g;->e:Lua/e;

    .line 553
    .line 554
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    new-instance v10, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    move-result-object v12

    .line 566
    invoke-static {v12}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 567
    .line 568
    .line 569
    move-result-object v12

    .line 570
    :goto_7
    invoke-virtual {v12}, Lg9/b;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v13

    .line 574
    if-eqz v13, :cond_9

    .line 575
    .line 576
    invoke-virtual {v12}, Lg9/b;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v13

    .line 580
    check-cast v13, Ljava/lang/Class;

    .line 581
    .line 582
    invoke-static {v13}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    invoke-static {v13}, Lba/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v13

    .line 589
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    goto :goto_7

    .line 593
    :cond_9
    const-string v12, ")V"

    .line 594
    .line 595
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    invoke-static {v10, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v7, v8, v10}, Lu0/j;->N(Lua/e;Ljava/lang/String;)Lba/a;

    .line 606
    .line 607
    .line 608
    move-result-object v8

    .line 609
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 610
    .line 611
    .line 612
    move-result-object v10

    .line 613
    invoke-static {v10}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 614
    .line 615
    .line 616
    move-result-object v10

    .line 617
    :goto_8
    invoke-virtual {v10}, Lg9/b;->hasNext()Z

    .line 618
    .line 619
    .line 620
    move-result v12

    .line 621
    if-eqz v12, :cond_a

    .line 622
    .line 623
    invoke-virtual {v10}, Lg9/b;->next()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v12

    .line 627
    check-cast v12, Ljava/lang/annotation/Annotation;

    .line 628
    .line 629
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    invoke-static {v8, v12}, Lg5/a;->V(Lna/o;Ljava/lang/annotation/Annotation;)V

    .line 633
    .line 634
    .line 635
    goto :goto_8

    .line 636
    :cond_a
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 637
    .line 638
    .line 639
    move-result-object v10

    .line 640
    invoke-static {v10}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    array-length v12, v10

    .line 644
    if-nez v12, :cond_c

    .line 645
    .line 646
    :cond_b
    move-object/from16 v18, v1

    .line 647
    .line 648
    move-object/from16 v19, v9

    .line 649
    .line 650
    goto :goto_b

    .line 651
    :cond_c
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    array-length v2, v2

    .line 656
    array-length v12, v10

    .line 657
    sub-int/2addr v2, v12

    .line 658
    array-length v12, v10

    .line 659
    const/4 v13, 0x0

    .line 660
    :goto_9
    if-ge v13, v12, :cond_b

    .line 661
    .line 662
    aget-object v14, v10, v13

    .line 663
    .line 664
    invoke-static {v14}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 665
    .line 666
    .line 667
    move-result-object v14

    .line 668
    :goto_a
    invoke-virtual {v14}, Lg9/b;->hasNext()Z

    .line 669
    .line 670
    .line 671
    move-result v15

    .line 672
    if-eqz v15, :cond_e

    .line 673
    .line 674
    invoke-virtual {v14}, Lg9/b;->next()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v15

    .line 678
    check-cast v15, Ljava/lang/annotation/Annotation;

    .line 679
    .line 680
    invoke-static {v15}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 681
    .line 682
    .line 683
    move-result-object v17

    .line 684
    move-object/from16 v18, v1

    .line 685
    .line 686
    invoke-static/range {v17 .. v17}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    move/from16 v17, v2

    .line 691
    .line 692
    add-int v2, v13, v17

    .line 693
    .line 694
    move-object/from16 v19, v9

    .line 695
    .line 696
    invoke-static {v1}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 697
    .line 698
    .line 699
    move-result-object v9

    .line 700
    move-object/from16 v20, v10

    .line 701
    .line 702
    new-instance v10, Laa/a;

    .line 703
    .line 704
    invoke-direct {v10, v15}, Laa/a;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v8, v2, v9, v10}, Lba/a;->H(ILua/b;Laa/a;)Lp/h3;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    if-eqz v2, :cond_d

    .line 712
    .line 713
    invoke-static {v2, v15, v1}, Lg5/a;->W(Lna/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 714
    .line 715
    .line 716
    :cond_d
    move/from16 v2, v17

    .line 717
    .line 718
    move-object/from16 v1, v18

    .line 719
    .line 720
    move-object/from16 v9, v19

    .line 721
    .line 722
    move-object/from16 v10, v20

    .line 723
    .line 724
    goto :goto_a

    .line 725
    :cond_e
    move-object/from16 v18, v1

    .line 726
    .line 727
    move/from16 v17, v2

    .line 728
    .line 729
    move-object/from16 v19, v9

    .line 730
    .line 731
    move-object/from16 v20, v10

    .line 732
    .line 733
    add-int/lit8 v13, v13, 0x1

    .line 734
    .line 735
    goto :goto_9

    .line 736
    :goto_b
    invoke-virtual {v8}, Lba/a;->b()V

    .line 737
    .line 738
    .line 739
    move-object/from16 v1, v18

    .line 740
    .line 741
    move-object/from16 v9, v19

    .line 742
    .line 743
    goto/16 :goto_6

    .line 744
    .line 745
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-static {v1}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    :cond_10
    :goto_c
    invoke-virtual {v1}, Lg9/b;->hasNext()Z

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    if-eqz v2, :cond_13

    .line 758
    .line 759
    invoke-virtual {v1}, Lg9/b;->next()Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    check-cast v2, Ljava/lang/reflect/Field;

    .line 764
    .line 765
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v8

    .line 769
    invoke-static {v8}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 770
    .line 771
    .line 772
    move-result-object v8

    .line 773
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    move-result-object v9

    .line 777
    invoke-static {v9, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-static {v9}, Lba/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v9

    .line 784
    const-string v10, "desc"

    .line 785
    .line 786
    invoke-static {v9, v10}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v8}, Lua/e;->b()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v8

    .line 793
    const-string v10, "asString(...)"

    .line 794
    .line 795
    invoke-static {v8, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    new-instance v10, Lna/q;

    .line 799
    .line 800
    new-instance v11, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    const/16 v8, 0x23

    .line 809
    .line 810
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v8

    .line 820
    invoke-direct {v10, v8}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    new-instance v8, Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    invoke-static {v2}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    :cond_11
    :goto_d
    invoke-virtual {v2}, Lg9/b;->hasNext()Z

    .line 837
    .line 838
    .line 839
    move-result v9

    .line 840
    if-eqz v9, :cond_12

    .line 841
    .line 842
    invoke-virtual {v2}, Lg9/b;->next()Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v9

    .line 846
    check-cast v9, Ljava/lang/annotation/Annotation;

    .line 847
    .line 848
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    invoke-static {v9}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 852
    .line 853
    .line 854
    move-result-object v11

    .line 855
    invoke-static {v11}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    move-result-object v11

    .line 859
    invoke-static {v11}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 860
    .line 861
    .line 862
    move-result-object v12

    .line 863
    new-instance v13, Laa/a;

    .line 864
    .line 865
    invoke-direct {v13, v9}, Laa/a;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 866
    .line 867
    .line 868
    iget-object v14, v7, Lu0/j;->b:Ljava/lang/Object;

    .line 869
    .line 870
    check-cast v14, Lna/d;

    .line 871
    .line 872
    invoke-virtual {v14, v12, v13, v8}, Lna/d;->l(Lua/b;Laa/a;Ljava/util/List;)Lp/h3;

    .line 873
    .line 874
    .line 875
    move-result-object v12

    .line 876
    if-eqz v12, :cond_11

    .line 877
    .line 878
    invoke-static {v12, v9, v11}, Lg5/a;->W(Lna/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 879
    .line 880
    .line 881
    goto :goto_d

    .line 882
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    if-nez v2, :cond_10

    .line 887
    .line 888
    iget-object v2, v7, Lu0/j;->c:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v2, Ljava/util/HashMap;

    .line 891
    .line 892
    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    goto/16 :goto_c

    .line 896
    .line 897
    :cond_13
    new-instance v1, Lna/c;

    .line 898
    .line 899
    invoke-direct {v1, v3, v5, v6}, Lna/c;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 900
    .line 901
    .line 902
    return-object v1

    .line 903
    :pswitch_8
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v2, Ly9/r0;

    .line 906
    .line 907
    check-cast v1, Lv9/c;

    .line 908
    .line 909
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-interface {v1}, Lv9/b;->S()Ljava/util/List;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    iget v2, v2, Ly9/r0;->f:I

    .line 917
    .line 918
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    check-cast v1, Ly9/r0;

    .line 923
    .line 924
    check-cast v1, Ly9/s0;

    .line 925
    .line 926
    invoke-virtual {v1}, Ly9/s0;->getType()Llb/w;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    invoke-static {v1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    return-object v1

    .line 934
    :pswitch_9
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v2, Lma/r;

    .line 937
    .line 938
    sget-object v3, Lmb/e;->b:Lmb/e;

    .line 939
    .line 940
    check-cast v1, Lma/a;

    .line 941
    .line 942
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    iget-object v4, v1, Lma/a;->b:Lea/v;

    .line 946
    .line 947
    iget-object v1, v1, Lma/a;->a:Lob/d;

    .line 948
    .line 949
    iget-boolean v5, v2, Lma/r;->c:Z

    .line 950
    .line 951
    const-string v7, "$receiver"

    .line 952
    .line 953
    const-string v8, ", "

    .line 954
    .line 955
    const-string v10, "ClassicTypeSystemContext couldn\'t handle: "

    .line 956
    .line 957
    if-eqz v5, :cond_15

    .line 958
    .line 959
    if-eqz v1, :cond_15

    .line 960
    .line 961
    invoke-static {v1, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    instance-of v5, v1, Llb/w;

    .line 965
    .line 966
    if-eqz v5, :cond_14

    .line 967
    .line 968
    instance-of v5, v1, Lja/h;

    .line 969
    .line 970
    if-ne v5, v11, :cond_15

    .line 971
    .line 972
    goto/16 :goto_10

    .line 973
    .line 974
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 975
    .line 976
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    sget-object v3, Lg9/y;->a:Lg9/z;

    .line 990
    .line 991
    invoke-static {v3, v1, v2}, La2/f;->E(Lg9/z;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 996
    .line 997
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw v2

    .line 1005
    :cond_15
    if-eqz v1, :cond_1a

    .line 1006
    .line 1007
    invoke-virtual {v3, v1}, Lmb/e;->A0(Lob/d;)Llb/k0;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v5

    .line 1011
    if-eqz v5, :cond_1a

    .line 1012
    .line 1013
    instance-of v11, v5, Llb/k0;

    .line 1014
    .line 1015
    if-eqz v11, :cond_19

    .line 1016
    .line 1017
    check-cast v5, Llb/k0;

    .line 1018
    .line 1019
    invoke-interface {v5}, Llb/k0;->m()Ljava/util/List;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v5

    .line 1023
    const-string v11, "getParameters(...)"

    .line 1024
    .line 1025
    invoke-static {v5, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-static {v1, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    instance-of v7, v1, Llb/w;

    .line 1032
    .line 1033
    if-eqz v7, :cond_18

    .line 1034
    .line 1035
    check-cast v1, Llb/w;

    .line 1036
    .line 1037
    invoke-virtual {v1}, Llb/w;->B0()Ljava/util/List;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v7

    .line 1045
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v8

    .line 1049
    new-instance v10, Ljava/util/ArrayList;

    .line 1050
    .line 1051
    invoke-static {v5, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 1052
    .line 1053
    .line 1054
    move-result v5

    .line 1055
    invoke-static {v1, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 1056
    .line 1057
    .line 1058
    move-result v1

    .line 1059
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1064
    .line 1065
    .line 1066
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v1

    .line 1070
    if-eqz v1, :cond_17

    .line 1071
    .line 1072
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1073
    .line 1074
    .line 1075
    move-result v1

    .line 1076
    if-eqz v1, :cond_17

    .line 1077
    .line 1078
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v1

    .line 1082
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v5

    .line 1086
    check-cast v5, Llb/n0;

    .line 1087
    .line 1088
    check-cast v1, Lv9/q0;

    .line 1089
    .line 1090
    invoke-static {v3, v5}, Lmb/g;->r(Lmb/b;Llb/n0;)Llb/x0;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    if-nez v5, :cond_16

    .line 1095
    .line 1096
    new-instance v5, Lma/a;

    .line 1097
    .line 1098
    invoke-direct {v5, v9, v4, v1}, Lma/a;-><init>(Lob/d;Lea/v;Lv9/q0;)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_f

    .line 1102
    :cond_16
    new-instance v6, Lma/a;

    .line 1103
    .line 1104
    iget-object v11, v2, Lma/r;->e:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v11, Lba/a;

    .line 1107
    .line 1108
    iget-object v11, v11, Lba/a;->b:Ljava/lang/Object;

    .line 1109
    .line 1110
    check-cast v11, Lha/a;

    .line 1111
    .line 1112
    iget-object v11, v11, Lha/a;->q:Lea/b;

    .line 1113
    .line 1114
    invoke-virtual {v5}, Llb/w;->getAnnotations()Lw9/h;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v12

    .line 1118
    invoke-virtual {v11, v4, v12}, Lea/b;->b(Lea/v;Lw9/h;)Lea/v;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v11

    .line 1122
    invoke-direct {v6, v5, v11, v1}, Lma/a;-><init>(Lob/d;Lea/v;Lv9/q0;)V

    .line 1123
    .line 1124
    .line 1125
    move-object v5, v6

    .line 1126
    :goto_f
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    .line 1128
    .line 1129
    goto :goto_e

    .line 1130
    :cond_17
    move-object v9, v10

    .line 1131
    goto :goto_10

    .line 1132
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v1

    .line 1147
    sget-object v3, Lg9/y;->a:Lg9/z;

    .line 1148
    .line 1149
    invoke-static {v3, v1, v2}, La2/f;->E(Lg9/z;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v1

    .line 1153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1154
    .line 1155
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    throw v2

    .line 1163
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v2

    .line 1178
    sget-object v3, Lg9/y;->a:Lg9/z;

    .line 1179
    .line 1180
    invoke-static {v3, v2, v1}, La2/f;->E(Lg9/z;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1185
    .line 1186
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    throw v2

    .line 1194
    :cond_1a
    :goto_10
    return-object v9

    .line 1195
    :pswitch_a
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1196
    .line 1197
    check-cast v2, Landroid/support/v4/media/session/t;

    .line 1198
    .line 1199
    check-cast v1, Llb/m0;

    .line 1200
    .line 1201
    iget-object v3, v1, Llb/m0;->a:Lv9/q0;

    .line 1202
    .line 1203
    iget-object v12, v1, Llb/m0;->b:Lja/a;

    .line 1204
    .line 1205
    iget-object v1, v12, Lja/a;->e:Ljava/util/Set;

    .line 1206
    .line 1207
    if-eqz v1, :cond_1b

    .line 1208
    .line 1209
    invoke-interface {v3}, Lv9/q0;->a()Lv9/q0;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v4

    .line 1213
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v4

    .line 1217
    if-eqz v4, :cond_1b

    .line 1218
    .line 1219
    invoke-virtual {v2, v12}, Landroid/support/v4/media/session/t;->a1(Lja/a;)Llb/x0;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    goto/16 :goto_16

    .line 1224
    .line 1225
    :cond_1b
    invoke-interface {v3}, Lv9/h;->n()Llb/a0;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v4

    .line 1229
    const-string v5, "getDefaultType(...)"

    .line 1230
    .line 1231
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 1235
    .line 1236
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1237
    .line 1238
    .line 1239
    invoke-static {v4, v4, v5, v1}, Lp4/o;->D(Llb/w;Llb/a0;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-static {v5, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 1243
    .line 1244
    .line 1245
    move-result v4

    .line 1246
    invoke-static {v4}, Ls8/c0;->H(I)I

    .line 1247
    .line 1248
    .line 1249
    move-result v4

    .line 1250
    const/16 v6, 0x10

    .line 1251
    .line 1252
    if-ge v4, v6, :cond_1c

    .line 1253
    .line 1254
    const/16 v4, 0x10

    .line 1255
    .line 1256
    :cond_1c
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1257
    .line 1258
    invoke-direct {v6, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1259
    .line 1260
    .line 1261
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v4

    .line 1265
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v5

    .line 1269
    if-eqz v5, :cond_20

    .line 1270
    .line 1271
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v5

    .line 1275
    check-cast v5, Lv9/q0;

    .line 1276
    .line 1277
    if-eqz v1, :cond_1e

    .line 1278
    .line 1279
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1280
    .line 1281
    .line 1282
    move-result v7

    .line 1283
    if-nez v7, :cond_1d

    .line 1284
    .line 1285
    goto :goto_12

    .line 1286
    :cond_1d
    invoke-static {v5, v12}, Llb/v0;->k(Lv9/q0;Lja/a;)Llb/n0;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v7

    .line 1290
    goto :goto_15

    .line 1291
    :cond_1e
    :goto_12
    iget-object v7, v12, Lja/a;->e:Ljava/util/Set;

    .line 1292
    .line 1293
    if-eqz v7, :cond_1f

    .line 1294
    .line 1295
    invoke-static {v7, v3}, Ls8/f0;->f0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v7

    .line 1299
    :goto_13
    move-object v15, v7

    .line 1300
    goto :goto_14

    .line 1301
    :cond_1f
    invoke-static {v3}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v7

    .line 1305
    goto :goto_13

    .line 1306
    :goto_14
    const/16 v16, 0x0

    .line 1307
    .line 1308
    const/16 v17, 0x2f

    .line 1309
    .line 1310
    const/4 v13, 0x0

    .line 1311
    const/4 v14, 0x0

    .line 1312
    invoke-static/range {v12 .. v17}, Lja/a;->a(Lja/a;Lja/b;ZLjava/util/Set;Llb/a0;I)Lja/a;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v7

    .line 1316
    invoke-virtual {v2, v5, v7}, Landroid/support/v4/media/session/t;->b1(Lv9/q0;Lja/a;)Llb/w;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v7

    .line 1320
    invoke-static {v5, v12, v2, v7}, Lja/e;->a(Lv9/q0;Lja/a;Landroid/support/v4/media/session/t;Llb/w;)Llb/n0;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v7

    .line 1324
    :goto_15
    invoke-interface {v5}, Lv9/h;->t()Llb/k0;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v5

    .line 1328
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    goto :goto_11

    .line 1332
    :cond_20
    new-instance v1, Llb/g0;

    .line 1333
    .line 1334
    invoke-direct {v1, v11, v6}, Llb/g0;-><init>(ILjava/lang/Object;)V

    .line 1335
    .line 1336
    .line 1337
    new-instance v4, Llb/s0;

    .line 1338
    .line 1339
    invoke-direct {v4, v1}, Llb/s0;-><init>(Llb/q0;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-interface {v3}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v1

    .line 1346
    const-string v3, "getUpperBounds(...)"

    .line 1347
    .line 1348
    invoke-static {v1, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v2, v4, v1, v12}, Landroid/support/v4/media/session/t;->k1(Llb/s0;Ljava/util/List;Lja/a;)Lt8/g;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v1

    .line 1355
    iget-object v3, v1, Lt8/g;->a:Lt8/e;

    .line 1356
    .line 1357
    invoke-virtual {v3}, Lt8/e;->isEmpty()Z

    .line 1358
    .line 1359
    .line 1360
    move-result v3

    .line 1361
    if-nez v3, :cond_22

    .line 1362
    .line 1363
    iget-object v2, v1, Lt8/g;->a:Lt8/e;

    .line 1364
    .line 1365
    iget v2, v2, Lt8/e;->i:I

    .line 1366
    .line 1367
    if-ne v2, v11, :cond_21

    .line 1368
    .line 1369
    invoke-static {v1}, Ls8/p;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v1

    .line 1373
    check-cast v1, Llb/w;

    .line 1374
    .line 1375
    goto :goto_16

    .line 1376
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1377
    .line 1378
    const-string v2, "Should only be one computed upper bound if no need to intersect all bounds"

    .line 1379
    .line 1380
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    throw v1

    .line 1384
    :cond_22
    invoke-virtual {v2, v12}, Landroid/support/v4/media/session/t;->a1(Lja/a;)Llb/x0;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v1

    .line 1388
    :goto_16
    return-object v1

    .line 1389
    :pswitch_b
    const/16 v16, 0x0

    .line 1390
    .line 1391
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1392
    .line 1393
    check-cast v2, Llb/v;

    .line 1394
    .line 1395
    check-cast v1, Lmb/f;

    .line 1396
    .line 1397
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    iget-object v3, v2, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 1401
    .line 1402
    new-instance v4, Ljava/util/ArrayList;

    .line 1403
    .line 1404
    invoke-static {v3, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 1405
    .line 1406
    .line 1407
    move-result v5

    .line 1408
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1409
    .line 1410
    .line 1411
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v3

    .line 1415
    const/4 v10, 0x0

    .line 1416
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1417
    .line 1418
    .line 1419
    move-result v5

    .line 1420
    if-eqz v5, :cond_23

    .line 1421
    .line 1422
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v5

    .line 1426
    check-cast v5, Llb/w;

    .line 1427
    .line 1428
    invoke-virtual {v5, v1}, Llb/w;->F0(Lmb/f;)Llb/w;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v5

    .line 1432
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    .line 1434
    .line 1435
    const/4 v10, 0x1

    .line 1436
    goto :goto_17

    .line 1437
    :cond_23
    if-nez v10, :cond_24

    .line 1438
    .line 1439
    goto :goto_18

    .line 1440
    :cond_24
    iget-object v3, v2, Llb/v;->a:Llb/w;

    .line 1441
    .line 1442
    if-eqz v3, :cond_25

    .line 1443
    .line 1444
    invoke-virtual {v3, v1}, Llb/w;->F0(Lmb/f;)Llb/w;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v9

    .line 1448
    :cond_25
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 1449
    .line 1450
    .line 1451
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 1452
    .line 1453
    invoke-direct {v1, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 1457
    .line 1458
    .line 1459
    new-instance v3, Llb/v;

    .line 1460
    .line 1461
    invoke-direct {v3, v1}, Llb/v;-><init>(Ljava/util/AbstractCollection;)V

    .line 1462
    .line 1463
    .line 1464
    iput-object v9, v3, Llb/v;->a:Llb/w;

    .line 1465
    .line 1466
    move-object v9, v3

    .line 1467
    :goto_18
    if-nez v9, :cond_26

    .line 1468
    .line 1469
    goto :goto_19

    .line 1470
    :cond_26
    move-object v2, v9

    .line 1471
    :goto_19
    invoke-virtual {v2}, Llb/v;->b()Llb/a0;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v1

    .line 1475
    return-object v1

    .line 1476
    :pswitch_c
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1477
    .line 1478
    check-cast v2, Llb/f;

    .line 1479
    .line 1480
    check-cast v1, Llb/e;

    .line 1481
    .line 1482
    const-string v3, "supertypes"

    .line 1483
    .line 1484
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v2}, Llb/f;->d()Lv9/n0;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v3

    .line 1491
    iget-object v4, v1, Llb/e;->a:Ljava/util/Collection;

    .line 1492
    .line 1493
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1494
    .line 1495
    .line 1496
    const-string v3, "superTypes"

    .line 1497
    .line 1498
    invoke-static {v4, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1499
    .line 1500
    .line 1501
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 1502
    .line 1503
    .line 1504
    move-result v3

    .line 1505
    if-eqz v3, :cond_29

    .line 1506
    .line 1507
    invoke-virtual {v2}, Llb/f;->c()Llb/w;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v3

    .line 1511
    if-eqz v3, :cond_27

    .line 1512
    .line 1513
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v3

    .line 1517
    goto :goto_1a

    .line 1518
    :cond_27
    move-object v3, v9

    .line 1519
    :goto_1a
    if-nez v3, :cond_28

    .line 1520
    .line 1521
    sget-object v3, Ls8/w;->a:Ls8/w;

    .line 1522
    .line 1523
    :cond_28
    move-object v4, v3

    .line 1524
    :cond_29
    nop

    .line 1525
    instance-of v3, v4, Ljava/util/List;

    .line 1526
    .line 1527
    if-eqz v3, :cond_2a

    .line 1528
    .line 1529
    move-object v9, v4

    .line 1530
    check-cast v9, Ljava/util/List;

    .line 1531
    .line 1532
    :cond_2a
    if-nez v9, :cond_2b

    .line 1533
    .line 1534
    check-cast v4, Ljava/lang/Iterable;

    .line 1535
    .line 1536
    invoke-static {v4}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v9

    .line 1540
    :cond_2b
    invoke-virtual {v2, v9}, Llb/f;->g(Ljava/util/List;)Ljava/util/List;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v2

    .line 1544
    const-string v3, "<set-?>"

    .line 1545
    .line 1546
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    iput-object v2, v1, Llb/e;->b:Ljava/util/List;

    .line 1550
    .line 1551
    return-object v7

    .line 1552
    :pswitch_d
    check-cast v1, Ly1/a0;

    .line 1553
    .line 1554
    iget-object v1, v1, Ly1/a0;->a:[F

    .line 1555
    .line 1556
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1557
    .line 1558
    check-cast v2, Lo2/w;

    .line 1559
    .line 1560
    invoke-interface {v2}, Lo2/w;->isAttached()Z

    .line 1561
    .line 1562
    .line 1563
    move-result v3

    .line 1564
    if-eqz v3, :cond_2c

    .line 1565
    .line 1566
    invoke-static {v2}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v3

    .line 1570
    invoke-interface {v3, v2, v1}, Lo2/w;->e(Lo2/w;[F)V

    .line 1571
    .line 1572
    .line 1573
    :cond_2c
    return-object v7

    .line 1574
    :pswitch_e
    check-cast v1, Lo2/w;

    .line 1575
    .line 1576
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1577
    .line 1578
    check-cast v2, Ll0/s0;

    .line 1579
    .line 1580
    invoke-virtual {v2}, Ll0/s0;->d()Ll0/q1;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v2

    .line 1584
    if-eqz v2, :cond_2d

    .line 1585
    .line 1586
    iput-object v1, v2, Ll0/q1;->c:Lo2/w;

    .line 1587
    .line 1588
    :cond_2d
    return-object v7

    .line 1589
    :pswitch_f
    check-cast v1, Ljava/lang/Boolean;

    .line 1590
    .line 1591
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1592
    .line 1593
    .line 1594
    move-result v1

    .line 1595
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1596
    .line 1597
    check-cast v2, Lk2/d0;

    .line 1598
    .line 1599
    if-eqz v2, :cond_2e

    .line 1600
    .line 1601
    iput-boolean v1, v2, Lk2/d0;->c:Z

    .line 1602
    .line 1603
    :cond_2e
    return-object v7

    .line 1604
    :pswitch_10
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1605
    .line 1606
    check-cast v2, Lv9/e;

    .line 1607
    .line 1608
    check-cast v1, Lmb/f;

    .line 1609
    .line 1610
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1611
    .line 1612
    .line 1613
    invoke-static {v2}, Lbb/e;->f(Lv9/h;)Lua/b;

    .line 1614
    .line 1615
    .line 1616
    return-object v9

    .line 1617
    :pswitch_11
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1618
    .line 1619
    check-cast v2, Lua/e;

    .line 1620
    .line 1621
    check-cast v1, Leb/o;

    .line 1622
    .line 1623
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    sget-object v3, Lda/b;->e:Lda/b;

    .line 1627
    .line 1628
    invoke-interface {v1, v2, v3}, Leb/o;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v1

    .line 1632
    return-object v1

    .line 1633
    :pswitch_12
    const/16 v16, 0x0

    .line 1634
    .line 1635
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1636
    .line 1637
    check-cast v2, Lia/j;

    .line 1638
    .line 1639
    check-cast v1, Lmb/f;

    .line 1640
    .line 1641
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    .line 1643
    .line 1644
    new-instance v17, Lia/o;

    .line 1645
    .line 1646
    iget-object v1, v2, Lia/j;->j:Lba/a;

    .line 1647
    .line 1648
    iget-object v3, v2, Lia/j;->h:Lba/p;

    .line 1649
    .line 1650
    iget-object v4, v2, Lia/j;->i:Lv9/e;

    .line 1651
    .line 1652
    if-eqz v4, :cond_2f

    .line 1653
    .line 1654
    const/16 v21, 0x1

    .line 1655
    .line 1656
    goto :goto_1b

    .line 1657
    :cond_2f
    const/16 v21, 0x0

    .line 1658
    .line 1659
    :goto_1b
    iget-object v4, v2, Lia/j;->q:Lia/o;

    .line 1660
    .line 1661
    move-object/from16 v18, v1

    .line 1662
    .line 1663
    move-object/from16 v19, v2

    .line 1664
    .line 1665
    move-object/from16 v20, v3

    .line 1666
    .line 1667
    move-object/from16 v22, v4

    .line 1668
    .line 1669
    invoke-direct/range {v17 .. v22}, Lia/o;-><init>(Lba/a;Lv9/e;Lba/p;ZLia/o;)V

    .line 1670
    .line 1671
    .line 1672
    return-object v17

    .line 1673
    :pswitch_13
    const/16 v16, 0x0

    .line 1674
    .line 1675
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1676
    .line 1677
    check-cast v2, Lia/a;

    .line 1678
    .line 1679
    check-cast v1, Lba/y;

    .line 1680
    .line 1681
    const-string v3, "m"

    .line 1682
    .line 1683
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1684
    .line 1685
    .line 1686
    iget-object v2, v2, Lia/a;->b:Lf9/k;

    .line 1687
    .line 1688
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v2

    .line 1692
    check-cast v2, Ljava/lang/Boolean;

    .line 1693
    .line 1694
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1695
    .line 1696
    .line 1697
    move-result v2

    .line 1698
    if-eqz v2, :cond_3a

    .line 1699
    .line 1700
    invoke-virtual {v1}, Lba/y;->b()Ljava/lang/reflect/Member;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v2

    .line 1704
    check-cast v2, Ljava/lang/reflect/Method;

    .line 1705
    .line 1706
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v2

    .line 1710
    const-string v3, "getDeclaringClass(...)"

    .line 1711
    .line 1712
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    .line 1716
    .line 1717
    .line 1718
    move-result v2

    .line 1719
    if-eqz v2, :cond_39

    .line 1720
    .line 1721
    invoke-virtual {v1}, Lba/x;->c()Lua/e;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v2

    .line 1725
    invoke-virtual {v2}, Lua/e;->b()Ljava/lang/String;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v2

    .line 1729
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 1730
    .line 1731
    .line 1732
    move-result v3

    .line 1733
    const v4, -0x69e9ad94

    .line 1734
    .line 1735
    .line 1736
    if-eq v3, v4, :cond_37

    .line 1737
    .line 1738
    const v4, -0x4d378041

    .line 1739
    .line 1740
    .line 1741
    if-eq v3, v4, :cond_31

    .line 1742
    .line 1743
    const v4, 0x8cdac1b

    .line 1744
    .line 1745
    .line 1746
    if-eq v3, v4, :cond_30

    .line 1747
    .line 1748
    goto :goto_1d

    .line 1749
    :cond_30
    const-string v3, "hashCode"

    .line 1750
    .line 1751
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1752
    .line 1753
    .line 1754
    move-result v2

    .line 1755
    if-nez v2, :cond_38

    .line 1756
    .line 1757
    goto :goto_1d

    .line 1758
    :cond_31
    const-string v3, "equals"

    .line 1759
    .line 1760
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1761
    .line 1762
    .line 1763
    move-result v2

    .line 1764
    if-nez v2, :cond_32

    .line 1765
    .line 1766
    goto :goto_1d

    .line 1767
    :cond_32
    invoke-virtual {v1}, Lba/y;->g()Ljava/util/List;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v1

    .line 1771
    invoke-static {v1}, Ls8/p;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v1

    .line 1775
    check-cast v1, Lba/e0;

    .line 1776
    .line 1777
    if-eqz v1, :cond_33

    .line 1778
    .line 1779
    iget-object v1, v1, Lba/e0;->a:Lba/c0;

    .line 1780
    .line 1781
    goto :goto_1c

    .line 1782
    :cond_33
    move-object v1, v9

    .line 1783
    :goto_1c
    instance-of v2, v1, Lba/r;

    .line 1784
    .line 1785
    if-eqz v2, :cond_34

    .line 1786
    .line 1787
    move-object v9, v1

    .line 1788
    check-cast v9, Lba/r;

    .line 1789
    .line 1790
    :cond_34
    if-nez v9, :cond_35

    .line 1791
    .line 1792
    goto :goto_1d

    .line 1793
    :cond_35
    iget-object v1, v9, Lba/r;->b:Lba/t;

    .line 1794
    .line 1795
    instance-of v2, v1, Lba/p;

    .line 1796
    .line 1797
    if-eqz v2, :cond_36

    .line 1798
    .line 1799
    check-cast v1, Lba/p;

    .line 1800
    .line 1801
    invoke-virtual {v1}, Lba/p;->c()Lua/c;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v1

    .line 1805
    if-eqz v1, :cond_36

    .line 1806
    .line 1807
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 1808
    .line 1809
    iget-object v1, v1, Lua/d;->a:Ljava/lang/String;

    .line 1810
    .line 1811
    const-string v2, "java.lang.Object"

    .line 1812
    .line 1813
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1814
    .line 1815
    .line 1816
    move-result v1

    .line 1817
    if-eqz v1, :cond_36

    .line 1818
    .line 1819
    const/4 v1, 0x1

    .line 1820
    goto :goto_1e

    .line 1821
    :cond_36
    :goto_1d
    const/4 v1, 0x0

    .line 1822
    goto :goto_1e

    .line 1823
    :cond_37
    const-string v3, "toString"

    .line 1824
    .line 1825
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1826
    .line 1827
    .line 1828
    move-result v2

    .line 1829
    if-eqz v2, :cond_36

    .line 1830
    .line 1831
    :cond_38
    invoke-virtual {v1}, Lba/y;->g()Ljava/util/List;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v1

    .line 1835
    check-cast v1, Ljava/util/ArrayList;

    .line 1836
    .line 1837
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1838
    .line 1839
    .line 1840
    move-result v1

    .line 1841
    :goto_1e
    if-eqz v1, :cond_39

    .line 1842
    .line 1843
    const/4 v1, 0x1

    .line 1844
    goto :goto_1f

    .line 1845
    :cond_39
    const/4 v1, 0x0

    .line 1846
    :goto_1f
    if-nez v1, :cond_3a

    .line 1847
    .line 1848
    const/4 v10, 0x1

    .line 1849
    goto :goto_20

    .line 1850
    :cond_3a
    const/4 v10, 0x0

    .line 1851
    :goto_20
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v1

    .line 1855
    return-object v1

    .line 1856
    :pswitch_14
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 1857
    .line 1858
    check-cast v2, Lhb/g;

    .line 1859
    .line 1860
    check-cast v1, Lhb/f;

    .line 1861
    .line 1862
    const-string v3, "key"

    .line 1863
    .line 1864
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1865
    .line 1866
    .line 1867
    iget-object v3, v1, Lhb/f;->a:Lua/b;

    .line 1868
    .line 1869
    iget-object v10, v2, Lhb/g;->a:Lhb/i;

    .line 1870
    .line 1871
    iget-object v4, v10, Lhb/i;->k:Ljava/lang/Iterable;

    .line 1872
    .line 1873
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v4

    .line 1877
    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1878
    .line 1879
    .line 1880
    move-result v5

    .line 1881
    if-eqz v5, :cond_3c

    .line 1882
    .line 1883
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v5

    .line 1887
    check-cast v5, Lx9/c;

    .line 1888
    .line 1889
    invoke-interface {v5, v3}, Lx9/c;->a(Lua/b;)Lv9/e;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v5

    .line 1893
    if-eqz v5, :cond_3b

    .line 1894
    .line 1895
    move-object v9, v5

    .line 1896
    goto/16 :goto_26

    .line 1897
    .line 1898
    :cond_3c
    sget-object v4, Lhb/g;->c:Ljava/util/Set;

    .line 1899
    .line 1900
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1901
    .line 1902
    .line 1903
    move-result v4

    .line 1904
    if-eqz v4, :cond_3d

    .line 1905
    .line 1906
    goto/16 :goto_26

    .line 1907
    .line 1908
    :cond_3d
    iget-object v1, v1, Lhb/f;->b:Lhb/d;

    .line 1909
    .line 1910
    if-nez v1, :cond_3e

    .line 1911
    .line 1912
    iget-object v1, v10, Lhb/i;->d:Lhb/e;

    .line 1913
    .line 1914
    invoke-interface {v1, v3}, Lhb/e;->S(Lua/b;)Lhb/d;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v1

    .line 1918
    if-nez v1, :cond_3e

    .line 1919
    .line 1920
    goto/16 :goto_26

    .line 1921
    .line 1922
    :cond_3e
    iget-object v14, v1, Lhb/d;->a:Lra/f;

    .line 1923
    .line 1924
    iget-object v4, v1, Lhb/d;->b:Lpa/k;

    .line 1925
    .line 1926
    iget-object v15, v1, Lhb/d;->c:Lra/a;

    .line 1927
    .line 1928
    iget-object v1, v1, Lhb/d;->d:Lv9/m0;

    .line 1929
    .line 1930
    invoke-virtual {v3}, Lua/b;->e()Lua/b;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v5

    .line 1934
    if-eqz v5, :cond_42

    .line 1935
    .line 1936
    invoke-virtual {v2, v5, v9}, Lhb/g;->a(Lua/b;Lhb/d;)Lv9/e;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v2

    .line 1940
    instance-of v5, v2, Ljb/i;

    .line 1941
    .line 1942
    if-eqz v5, :cond_3f

    .line 1943
    .line 1944
    check-cast v2, Ljb/i;

    .line 1945
    .line 1946
    goto :goto_21

    .line 1947
    :cond_3f
    move-object v2, v9

    .line 1948
    :goto_21
    if-nez v2, :cond_40

    .line 1949
    .line 1950
    goto/16 :goto_26

    .line 1951
    .line 1952
    :cond_40
    invoke-virtual {v3}, Lua/b;->f()Lua/e;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v3

    .line 1956
    invoke-virtual {v2}, Ljb/i;->B0()Ljb/h;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v5

    .line 1960
    invoke-virtual {v5}, Ljb/q;->m()Ljava/util/Set;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v5

    .line 1964
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1965
    .line 1966
    .line 1967
    move-result v3

    .line 1968
    if-nez v3, :cond_41

    .line 1969
    .line 1970
    goto/16 :goto_26

    .line 1971
    .line 1972
    :cond_41
    iget-object v2, v2, Ljb/i;->l:Lhb/k;

    .line 1973
    .line 1974
    :goto_22
    move-object v12, v2

    .line 1975
    goto/16 :goto_25

    .line 1976
    .line 1977
    :cond_42
    iget-object v2, v10, Lhb/i;->f:Lv9/g0;

    .line 1978
    .line 1979
    iget-object v5, v3, Lua/b;->a:Lua/c;

    .line 1980
    .line 1981
    invoke-static {v2, v5}, Lv9/v;->i(Lv9/g0;Lua/c;)Ljava/util/ArrayList;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v2

    .line 1985
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v2

    .line 1989
    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1990
    .line 1991
    .line 1992
    move-result v5

    .line 1993
    if-eqz v5, :cond_44

    .line 1994
    .line 1995
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v5

    .line 1999
    move-object v6, v5

    .line 2000
    check-cast v6, Lv9/d0;

    .line 2001
    .line 2002
    instance-of v7, v6, Lib/c;

    .line 2003
    .line 2004
    if-eqz v7, :cond_45

    .line 2005
    .line 2006
    check-cast v6, Lib/c;

    .line 2007
    .line 2008
    invoke-virtual {v3}, Lua/b;->f()Lua/e;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v7

    .line 2012
    invoke-virtual {v6}, Lib/c;->R()Leb/o;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v6

    .line 2016
    check-cast v6, Ljb/q;

    .line 2017
    .line 2018
    invoke-virtual {v6}, Ljb/q;->m()Ljava/util/Set;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v6

    .line 2022
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2023
    .line 2024
    .line 2025
    move-result v6

    .line 2026
    if-eqz v6, :cond_43

    .line 2027
    .line 2028
    goto :goto_23

    .line 2029
    :cond_44
    move-object v5, v9

    .line 2030
    :cond_45
    :goto_23
    move-object v11, v5

    .line 2031
    check-cast v11, Lv9/d0;

    .line 2032
    .line 2033
    if-nez v11, :cond_46

    .line 2034
    .line 2035
    goto :goto_26

    .line 2036
    :cond_46
    new-instance v13, Lra/g;

    .line 2037
    .line 2038
    iget-object v2, v4, Lpa/k;->E:Lpa/y0;

    .line 2039
    .line 2040
    const-string v3, "getTypeTable(...)"

    .line 2041
    .line 2042
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    .line 2044
    .line 2045
    invoke-direct {v13, v2}, Lra/g;-><init>(Lpa/y0;)V

    .line 2046
    .line 2047
    .line 2048
    iget-object v2, v4, Lpa/k;->G:Lpa/f1;

    .line 2049
    .line 2050
    const-string v3, "getVersionRequirementTable(...)"

    .line 2051
    .line 2052
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    iget-object v3, v2, Lpa/f1;->b:Ljava/util/List;

    .line 2056
    .line 2057
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2058
    .line 2059
    .line 2060
    move-result v3

    .line 2061
    if-nez v3, :cond_47

    .line 2062
    .line 2063
    sget-object v2, Lra/h;->a:Lra/h;

    .line 2064
    .line 2065
    goto :goto_24

    .line 2066
    :cond_47
    new-instance v3, Lra/h;

    .line 2067
    .line 2068
    iget-object v2, v2, Lpa/f1;->b:Ljava/util/List;

    .line 2069
    .line 2070
    const-string v5, "getRequirementList(...)"

    .line 2071
    .line 2072
    invoke-static {v2, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2073
    .line 2074
    .line 2075
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2076
    .line 2077
    .line 2078
    move-object v2, v3

    .line 2079
    :goto_24
    const/16 v16, 0x0

    .line 2080
    .line 2081
    move-object v12, v14

    .line 2082
    move-object v14, v2

    .line 2083
    invoke-virtual/range {v10 .. v16}, Lhb/i;->a(Lv9/d0;Lra/f;Lra/g;Lra/h;Lra/a;Ljb/k;)Lhb/k;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v2

    .line 2087
    move-object v14, v12

    .line 2088
    goto :goto_22

    .line 2089
    :goto_25
    new-instance v11, Ljb/i;

    .line 2090
    .line 2091
    move-object/from16 v16, v1

    .line 2092
    .line 2093
    move-object v13, v4

    .line 2094
    invoke-direct/range {v11 .. v16}, Ljb/i;-><init>(Lhb/k;Lpa/k;Lra/f;Lra/a;Lv9/m0;)V

    .line 2095
    .line 2096
    .line 2097
    move-object v9, v11

    .line 2098
    :goto_26
    return-object v9

    .line 2099
    :pswitch_15
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2100
    .line 2101
    check-cast v2, Lu9/o;

    .line 2102
    .line 2103
    check-cast v1, Lua/c;

    .line 2104
    .line 2105
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2106
    .line 2107
    .line 2108
    invoke-virtual {v2, v1}, Lu9/o;->c(Lua/c;)Lib/c;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v1

    .line 2112
    if-eqz v1, :cond_49

    .line 2113
    .line 2114
    iget-object v2, v2, Lu9/o;->c:Lhb/i;

    .line 2115
    .line 2116
    if-eqz v2, :cond_48

    .line 2117
    .line 2118
    invoke-virtual {v1, v2}, Lib/c;->D0(Lhb/i;)V

    .line 2119
    .line 2120
    .line 2121
    move-object v9, v1

    .line 2122
    goto :goto_27

    .line 2123
    :cond_48
    const-string v1, "components"

    .line 2124
    .line 2125
    invoke-static {v1}, Lg9/l;->j(Ljava/lang/String;)V

    .line 2126
    .line 2127
    .line 2128
    throw v9

    .line 2129
    :cond_49
    :goto_27
    return-object v9

    .line 2130
    :pswitch_16
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2131
    .line 2132
    check-cast v2, Lha/e;

    .line 2133
    .line 2134
    check-cast v1, Lba/d0;

    .line 2135
    .line 2136
    const-string v3, "typeParameter"

    .line 2137
    .line 2138
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2139
    .line 2140
    .line 2141
    iget-object v3, v2, Lha/e;->e:Ljava/io/Serializable;

    .line 2142
    .line 2143
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 2144
    .line 2145
    iget-object v4, v2, Lha/e;->d:Ljava/lang/Object;

    .line 2146
    .line 2147
    check-cast v4, Lv9/l;

    .line 2148
    .line 2149
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v3

    .line 2153
    check-cast v3, Ljava/lang/Integer;

    .line 2154
    .line 2155
    if-eqz v3, :cond_4a

    .line 2156
    .line 2157
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 2158
    .line 2159
    .line 2160
    move-result v3

    .line 2161
    new-instance v9, Lia/f0;

    .line 2162
    .line 2163
    iget-object v5, v2, Lha/e;->c:Ljava/lang/Object;

    .line 2164
    .line 2165
    check-cast v5, Lba/a;

    .line 2166
    .line 2167
    const-string v6, "<this>"

    .line 2168
    .line 2169
    invoke-static {v5, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2170
    .line 2171
    .line 2172
    new-instance v6, Lba/a;

    .line 2173
    .line 2174
    iget-object v7, v5, Lba/a;->b:Ljava/lang/Object;

    .line 2175
    .line 2176
    check-cast v7, Lha/a;

    .line 2177
    .line 2178
    iget-object v5, v5, Lba/a;->d:Ljava/lang/Object;

    .line 2179
    .line 2180
    invoke-direct {v6, v7, v2, v5}, Lba/a;-><init>(Lha/a;Lha/f;Lr8/h;)V

    .line 2181
    .line 2182
    .line 2183
    invoke-interface {v4}, Lw9/a;->getAnnotations()Lw9/h;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v5

    .line 2187
    invoke-static {v6, v5}, Lg5/a;->C(Lba/a;Lw9/h;)Lba/a;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v5

    .line 2191
    iget v2, v2, Lha/e;->b:I

    .line 2192
    .line 2193
    add-int/2addr v2, v3

    .line 2194
    invoke-direct {v9, v5, v1, v2, v4}, Lia/f0;-><init>(Lba/a;Lba/d0;ILv9/l;)V

    .line 2195
    .line 2196
    .line 2197
    :cond_4a
    return-object v9

    .line 2198
    :pswitch_17
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2199
    .line 2200
    check-cast v2, Lha/c;

    .line 2201
    .line 2202
    check-cast v1, Lba/e;

    .line 2203
    .line 2204
    const-string v3, "annotation"

    .line 2205
    .line 2206
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2207
    .line 2208
    .line 2209
    sget-object v3, Lfa/c;->a:Lua/e;

    .line 2210
    .line 2211
    iget-object v3, v2, Lha/c;->a:Lba/a;

    .line 2212
    .line 2213
    iget-boolean v2, v2, Lha/c;->c:Z

    .line 2214
    .line 2215
    invoke-static {v3, v1, v2}, Lfa/c;->b(Lba/a;Lba/e;Z)Lga/g;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v1

    .line 2219
    return-object v1

    .line 2220
    :pswitch_18
    check-cast v1, Lv9/c;

    .line 2221
    .line 2222
    if-eqz v1, :cond_4b

    .line 2223
    .line 2224
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2225
    .line 2226
    check-cast v2, Lfa/a;

    .line 2227
    .line 2228
    iget-object v2, v2, Lfa/a;->c:Lhb/m;

    .line 2229
    .line 2230
    invoke-interface {v2, v1}, Lhb/m;->b(Lv9/c;)V

    .line 2231
    .line 2232
    .line 2233
    return-object v7

    .line 2234
    :cond_4b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2235
    .line 2236
    const-string v2, "Argument for @NotNull parameter \'descriptor\' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null"

    .line 2237
    .line 2238
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2239
    .line 2240
    .line 2241
    throw v1

    .line 2242
    :pswitch_19
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2243
    .line 2244
    check-cast v2, Landroid/support/v4/media/session/t;

    .line 2245
    .line 2246
    move-object v3, v1

    .line 2247
    check-cast v3, Lua/c;

    .line 2248
    .line 2249
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 2250
    .line 2251
    .line 2252
    iget-object v1, v2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 2253
    .line 2254
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 2255
    .line 2256
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2257
    .line 2258
    .line 2259
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v1

    .line 2263
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v1

    .line 2267
    :cond_4c
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2268
    .line 2269
    .line 2270
    move-result v4

    .line 2271
    if-eqz v4, :cond_4f

    .line 2272
    .line 2273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v4

    .line 2277
    check-cast v4, Ljava/util/Map$Entry;

    .line 2278
    .line 2279
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v5

    .line 2283
    check-cast v5, Lua/c;

    .line 2284
    .line 2285
    invoke-virtual {v3, v5}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 2286
    .line 2287
    .line 2288
    move-result v6

    .line 2289
    if-nez v6, :cond_4e

    .line 2290
    .line 2291
    const-string v6, "packageName"

    .line 2292
    .line 2293
    invoke-static {v5, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2294
    .line 2295
    .line 2296
    iget-object v6, v3, Lua/c;->a:Lua/d;

    .line 2297
    .line 2298
    invoke-virtual {v6}, Lua/d;->c()Z

    .line 2299
    .line 2300
    .line 2301
    move-result v6

    .line 2302
    if-eqz v6, :cond_4d

    .line 2303
    .line 2304
    move-object v6, v9

    .line 2305
    goto :goto_29

    .line 2306
    :cond_4d
    invoke-virtual {v3}, Lua/c;->b()Lua/c;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v6

    .line 2310
    :goto_29
    invoke-static {v6, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2311
    .line 2312
    .line 2313
    move-result v5

    .line 2314
    if-eqz v5, :cond_4c

    .line 2315
    .line 2316
    :cond_4e
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v5

    .line 2320
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v4

    .line 2324
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    .line 2326
    .line 2327
    goto :goto_28

    .line 2328
    :cond_4f
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 2329
    .line 2330
    .line 2331
    move-result v1

    .line 2332
    if-nez v1, :cond_50

    .line 2333
    .line 2334
    goto :goto_2a

    .line 2335
    :cond_50
    move-object v2, v9

    .line 2336
    :goto_2a
    if-nez v2, :cond_51

    .line 2337
    .line 2338
    goto :goto_2c

    .line 2339
    :cond_51
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v1

    .line 2343
    check-cast v1, Ljava/lang/Iterable;

    .line 2344
    .line 2345
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v2

    .line 2349
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2350
    .line 2351
    .line 2352
    move-result v1

    .line 2353
    if-nez v1, :cond_52

    .line 2354
    .line 2355
    move-object v1, v9

    .line 2356
    goto :goto_2b

    .line 2357
    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v1

    .line 2361
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2362
    .line 2363
    .line 2364
    move-result v4

    .line 2365
    if-nez v4, :cond_53

    .line 2366
    .line 2367
    goto :goto_2b

    .line 2368
    :cond_53
    move-object v4, v1

    .line 2369
    check-cast v4, Ljava/util/Map$Entry;

    .line 2370
    .line 2371
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v4

    .line 2375
    check-cast v4, Lua/c;

    .line 2376
    .line 2377
    invoke-static {v4, v3}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 2378
    .line 2379
    .line 2380
    move-result-object v4

    .line 2381
    iget-object v4, v4, Lua/c;->a:Lua/d;

    .line 2382
    .line 2383
    iget-object v4, v4, Lua/d;->a:Ljava/lang/String;

    .line 2384
    .line 2385
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 2386
    .line 2387
    .line 2388
    move-result v4

    .line 2389
    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2390
    .line 2391
    .line 2392
    move-result-object v5

    .line 2393
    move-object v6, v5

    .line 2394
    check-cast v6, Ljava/util/Map$Entry;

    .line 2395
    .line 2396
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v6

    .line 2400
    check-cast v6, Lua/c;

    .line 2401
    .line 2402
    invoke-static {v6, v3}, Lp4/e;->D(Lua/c;Lua/c;)Lua/c;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v6

    .line 2406
    iget-object v6, v6, Lua/c;->a:Lua/d;

    .line 2407
    .line 2408
    iget-object v6, v6, Lua/d;->a:Ljava/lang/String;

    .line 2409
    .line 2410
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 2411
    .line 2412
    .line 2413
    move-result v6

    .line 2414
    if-le v4, v6, :cond_55

    .line 2415
    .line 2416
    move-object v1, v5

    .line 2417
    move v4, v6

    .line 2418
    :cond_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2419
    .line 2420
    .line 2421
    move-result v5

    .line 2422
    if-nez v5, :cond_54

    .line 2423
    .line 2424
    :goto_2b
    check-cast v1, Ljava/util/Map$Entry;

    .line 2425
    .line 2426
    if-eqz v1, :cond_56

    .line 2427
    .line 2428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v9

    .line 2432
    :cond_56
    :goto_2c
    return-object v9

    .line 2433
    :pswitch_1a
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2434
    .line 2435
    check-cast v2, Ly9/l0;

    .line 2436
    .line 2437
    check-cast v1, Lv9/c;

    .line 2438
    .line 2439
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2440
    .line 2441
    .line 2442
    sget-object v1, Lea/h0;->i:Ljava/util/LinkedHashMap;

    .line 2443
    .line 2444
    invoke-static {v2}, Lm9/e0;->Q(Lv9/b;)Ljava/lang/String;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v2

    .line 2448
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2449
    .line 2450
    .line 2451
    move-result v1

    .line 2452
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v1

    .line 2456
    return-object v1

    .line 2457
    :pswitch_1b
    check-cast v1, Li2/b;

    .line 2458
    .line 2459
    iget-object v1, v1, Li2/b;->a:Landroid/view/KeyEvent;

    .line 2460
    .line 2461
    const-string v2, "event"

    .line 2462
    .line 2463
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2464
    .line 2465
    .line 2466
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2467
    .line 2468
    check-cast v2, Lf1/b1;

    .line 2469
    .line 2470
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2471
    .line 2472
    .line 2473
    move-result v1

    .line 2474
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2475
    .line 2476
    .line 2477
    move-result-object v1

    .line 2478
    invoke-interface {v2, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 2479
    .line 2480
    .line 2481
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2482
    .line 2483
    return-object v1

    .line 2484
    :pswitch_1c
    const/16 v16, 0x0

    .line 2485
    .line 2486
    iget-object v2, v0, Lba/j;->b:Ljava/lang/Object;

    .line 2487
    .line 2488
    check-cast v2, Lba/p;

    .line 2489
    .line 2490
    check-cast v1, Ljava/lang/reflect/Method;

    .line 2491
    .line 2492
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    .line 2493
    .line 2494
    .line 2495
    move-result v3

    .line 2496
    if-eqz v3, :cond_57

    .line 2497
    .line 2498
    goto :goto_2e

    .line 2499
    :cond_57
    iget-object v2, v2, Lba/p;->a:Ljava/lang/Class;

    .line 2500
    .line 2501
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    .line 2502
    .line 2503
    .line 2504
    move-result v2

    .line 2505
    if-eqz v2, :cond_5b

    .line 2506
    .line 2507
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v2

    .line 2511
    const-string v3, "values"

    .line 2512
    .line 2513
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2514
    .line 2515
    .line 2516
    move-result v3

    .line 2517
    if-eqz v3, :cond_59

    .line 2518
    .line 2519
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v1

    .line 2523
    const-string v2, "getParameterTypes(...)"

    .line 2524
    .line 2525
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2526
    .line 2527
    .line 2528
    array-length v1, v1

    .line 2529
    if-nez v1, :cond_58

    .line 2530
    .line 2531
    const/4 v1, 0x1

    .line 2532
    goto :goto_2d

    .line 2533
    :cond_58
    const/4 v1, 0x0

    .line 2534
    goto :goto_2d

    .line 2535
    :cond_59
    const-string v3, "valueOf"

    .line 2536
    .line 2537
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2538
    .line 2539
    .line 2540
    move-result v2

    .line 2541
    if-eqz v2, :cond_58

    .line 2542
    .line 2543
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v1

    .line 2547
    new-array v2, v11, [Ljava/lang/Class;

    .line 2548
    .line 2549
    const-class v3, Ljava/lang/String;

    .line 2550
    .line 2551
    aput-object v3, v2, v16

    .line 2552
    .line 2553
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 2554
    .line 2555
    .line 2556
    move-result v1

    .line 2557
    :goto_2d
    if-nez v1, :cond_5a

    .line 2558
    .line 2559
    goto :goto_2f

    .line 2560
    :cond_5a
    :goto_2e
    const/4 v10, 0x0

    .line 2561
    goto :goto_30

    .line 2562
    :cond_5b
    :goto_2f
    const/4 v10, 0x1

    .line 2563
    :goto_30
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v1

    .line 2567
    return-object v1

    .line 2568
    nop

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
