.class public final Lp9/u;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lp9/d0;


# direct methods
.method public synthetic constructor <init>(Lp9/d0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp9/u;->a:I

    iput-object p1, p0, Lp9/u;->b:Lp9/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp9/d0;Lp9/z;)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, Lp9/u;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp9/u;->b:Lp9/d0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lp9/u;->a:I

    .line 2
    .line 3
    sget-object v1, Lp9/f0;->a:Lp9/f0;

    .line 4
    .line 5
    sget-object v2, Lp9/f0;->b:Lp9/f0;

    .line 6
    .line 7
    const-string v3, "getStaticScope(...)"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, p0, Lp9/u;->b:Lp9/d0;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5}, Lp9/d0;->e()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Iterable;

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lv9/j;

    .line 47
    .line 48
    new-instance v3, Lp9/j0;

    .line 49
    .line 50
    invoke-direct {v3, v5, v2}, Lp9/j0;-><init>(Lp9/h0;Lv9/t;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-object v1

    .line 58
    :pswitch_0
    iget-object v0, v5, Lp9/d0;->b:Ljava/lang/Class;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v5}, Lp9/d0;->t()Lua/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-boolean v1, v0, Lua/b;->c:Z

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v0}, Lua/b;->a()Lua/c;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 81
    .line 82
    iget-object v4, v0, Lua/d;->a:Ljava/lang/String;

    .line 83
    .line 84
    :goto_1
    return-object v4

    .line 85
    :pswitch_1
    iget-object v0, v5, Lp9/d0;->b:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v5}, Lp9/d0;->t()Lua/b;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-boolean v2, v1, Lua/b;->c:Z

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const/16 v3, 0x24

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v1, v0}, Lxb/i;->a0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v1, v0}, Lxb/i;->a0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    goto :goto_2

    .line 168
    :cond_5
    invoke-static {v1, v3, v1}, Lxb/i;->Z(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    goto :goto_2

    .line 173
    :cond_6
    invoke-virtual {v1}, Lua/b;->f()Lua/e;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    const-string v0, "asString(...)"

    .line 182
    .line 183
    invoke-static {v4, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_2
    return-object v4

    .line 187
    :pswitch_2
    invoke-virtual {v5}, Lp9/d0;->u()Lv9/e;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0}, Lv9/e;->O()Leb/o;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v0, v2}, Lp9/h0;->h(Leb/o;Lp9/f0;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0

    .line 203
    :pswitch_3
    invoke-virtual {v5}, Lp9/d0;->u()Lv9/e;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-interface {v0}, Lv9/e;->n()Llb/a0;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Llb/w;->R()Leb/o;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v5, v0, v2}, Lp9/h0;->h(Leb/o;Lp9/f0;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    :pswitch_4
    invoke-virtual {v5}, Lp9/d0;->u()Lv9/e;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v0}, Lv9/e;->O()Leb/o;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v0, v1}, Lp9/h0;->h(Leb/o;Lp9/f0;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    return-object v0

    .line 236
    :pswitch_5
    invoke-virtual {v5}, Lp9/d0;->u()Lv9/e;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-interface {v0}, Lv9/e;->n()Llb/a0;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Llb/w;->R()Leb/o;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v5, v0, v1}, Lp9/h0;->h(Leb/o;Lp9/f0;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    return-object v0

    .line 253
    :pswitch_6
    sget v0, Lp9/d0;->d:I

    .line 254
    .line 255
    invoke-virtual {v5}, Lp9/d0;->t()Lua/b;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget-object v1, v5, Lp9/d0;->b:Ljava/lang/Class;

    .line 260
    .line 261
    iget-object v2, v5, Lp9/d0;->c:Ljava/lang/Object;

    .line 262
    .line 263
    invoke-interface {v2}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lp9/z;

    .line 268
    .line 269
    iget-object v2, v2, Lp9/e0;->a:Lp9/v1;

    .line 270
    .line 271
    sget-object v3, Lp9/e0;->b:[Lm9/u;

    .line 272
    .line 273
    const/4 v5, 0x0

    .line 274
    aget-object v3, v3, v5

    .line 275
    .line 276
    invoke-virtual {v2}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    const-string v3, "getValue(...)"

    .line 281
    .line 282
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    check-cast v2, Laa/f;

    .line 286
    .line 287
    iget-object v3, v2, Laa/f;->a:Lhb/i;

    .line 288
    .line 289
    iget-object v5, v3, Lhb/i;->b:Lv9/y;

    .line 290
    .line 291
    iget-boolean v6, v0, Lua/b;->c:Z

    .line 292
    .line 293
    if-eqz v6, :cond_7

    .line 294
    .line 295
    const-class v6, Lkotlin/Metadata;

    .line 296
    .line 297
    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-eqz v6, :cond_7

    .line 302
    .line 303
    invoke-virtual {v3, v0}, Lhb/i;->b(Lua/b;)Lv9/e;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    goto :goto_3

    .line 308
    :cond_7
    invoke-static {v5, v0}, Lv9/v;->d(Lv9/y;Lua/b;)Lv9/e;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    :goto_3
    if-nez v3, :cond_b

    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/Class;->isSynthetic()Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_8

    .line 319
    .line 320
    invoke-static {v0, v2}, Lp9/d0;->s(Lua/b;Laa/f;)Ly9/k;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    goto :goto_5

    .line 325
    :cond_8
    invoke-static {v1}, Li9/a;->s(Ljava/lang/Class;)Laa/c;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    if-eqz v3, :cond_9

    .line 330
    .line 331
    iget-object v3, v3, Laa/c;->b:Loa/b;

    .line 332
    .line 333
    iget-object v4, v3, Loa/b;->a:Loa/a;

    .line 334
    .line 335
    :cond_9
    if-nez v4, :cond_a

    .line 336
    .line 337
    const/4 v3, -0x1

    .line 338
    goto :goto_4

    .line 339
    :cond_a
    sget-object v3, Lp9/a0;->a:[I

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    aget v3, v3, v5

    .line 346
    .line 347
    :goto_4
    const/4 v5, 0x2

    .line 348
    const/16 v6, 0x29

    .line 349
    .line 350
    const-string v7, " (kind = "

    .line 351
    .line 352
    packed-switch v3, :pswitch_data_1

    .line 353
    .line 354
    .line 355
    :pswitch_7
    new-instance v0, Lac/p;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :pswitch_8
    new-instance v0, Lac/y;

    .line 362
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v3, "Unknown class: "

    .line 366
    .line 367
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-direct {v0, v5, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v0

    .line 390
    :pswitch_9
    invoke-static {v0, v2}, Lp9/d0;->s(Lua/b;Laa/f;)Ly9/k;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    goto :goto_5

    .line 395
    :pswitch_a
    new-instance v0, Lac/y;

    .line 396
    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    const-string v3, "Unresolved class: "

    .line 400
    .line 401
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-direct {v0, v5, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v0

    .line 424
    :cond_b
    :goto_5
    return-object v3

    .line 425
    :pswitch_b
    new-instance v0, Lp9/z;

    .line 426
    .line 427
    invoke-direct {v0, v5}, Lp9/z;-><init>(Lp9/d0;)V

    .line 428
    .line 429
    .line 430
    return-object v0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
