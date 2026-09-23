.class public final Ljb/m;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljb/p;


# direct methods
.method public synthetic constructor <init>(Ljb/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljb/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljb/m;->b:Ljb/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Ljb/m;->a:I

    .line 2
    .line 3
    check-cast p1, Lua/e;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "it"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ljb/m;->b:Ljb/p;

    .line 14
    .line 15
    iget-object v1, v0, Ljb/p;->i:Ljb/q;

    .line 16
    .line 17
    iget-object v1, v1, Ljb/q;->b:Lhb/k;

    .line 18
    .line 19
    iget-object v0, v0, Ljb/p;->c:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [B

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v1, Lhb/k;->a:Lhb/i;

    .line 36
    .line 37
    iget-object p1, p1, Lhb/i;->p:Lva/g;

    .line 38
    .line 39
    sget-object v2, Lpa/u0;->q:Lpa/a;

    .line 40
    .line 41
    invoke-virtual {v2, v0, p1}, Lva/b;->c(Ljava/io/ByteArrayInputStream;Lva/g;)Lva/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    move-object v8, p1

    .line 46
    check-cast v8, Lpa/u0;

    .line 47
    .line 48
    if-nez v8, :cond_1

    .line 49
    .line 50
    :goto_0
    const/4 p1, 0x0

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_1
    iget-object p1, v1, Lhb/k;->i:Lhb/t;

    .line 54
    .line 55
    iget-object v0, p1, Lhb/t;->a:Lhb/k;

    .line 56
    .line 57
    iget-object v1, v0, Lhb/k;->b:Lra/f;

    .line 58
    .line 59
    iget-object v10, v0, Lhb/k;->d:Lra/g;

    .line 60
    .line 61
    iget-object v2, v8, Lpa/u0;->k:Ljava/util/List;

    .line 62
    .line 63
    const-string v3, "getAnnotationList(...)"

    .line 64
    .line 65
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Ljava/util/ArrayList;

    .line 69
    .line 70
    const/16 v4, 0xa

    .line 71
    .line 72
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lpa/h;

    .line 94
    .line 95
    iget-object v5, p1, Lhb/t;->b:Lu0/j;

    .line 96
    .line 97
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v4, v1}, Lu0/j;->j(Lpa/h;Lra/f;)Lw9/c;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    sget-object p1, Lw9/g;->a:Lw9/f;

    .line 115
    .line 116
    :goto_2
    move-object v5, p1

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    new-instance p1, Lw9/i;

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-direct {p1, v2, v3}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :goto_3
    sget-object p1, Lra/d;->d:Lra/c;

    .line 126
    .line 127
    iget v2, v8, Lpa/u0;->d:I

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Lra/c;->i(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lpa/g1;

    .line 134
    .line 135
    invoke-static {p1}, Lm9/e0;->X(Lpa/g1;)Lea/o;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    new-instance v2, Ljb/u;

    .line 140
    .line 141
    iget-object p1, v0, Lhb/k;->a:Lhb/i;

    .line 142
    .line 143
    iget-object v3, p1, Lhb/i;->a:Lkb/l;

    .line 144
    .line 145
    iget-object v4, v0, Lhb/k;->c:Lv9/k;

    .line 146
    .line 147
    iget p1, v8, Lpa/u0;->e:I

    .line 148
    .line 149
    invoke-static {v1, p1}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    iget-object v9, v0, Lhb/k;->b:Lra/f;

    .line 154
    .line 155
    iget-object v11, v0, Lhb/k;->e:Lra/h;

    .line 156
    .line 157
    iget-object v12, v0, Lhb/k;->g:Ljb/k;

    .line 158
    .line 159
    invoke-direct/range {v2 .. v12}, Ljb/u;-><init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Lea/o;Lpa/u0;Lra/f;Lra/g;Lra/h;Ljb/k;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, v8, Lpa/u0;->f:Ljava/util/List;

    .line 163
    .line 164
    const-string v1, "getTypeParameterList(...)"

    .line 165
    .line 166
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v2, p1}, Lhb/k;->b(Lhb/k;Ly9/n;Ljava/util/List;)Lhb/k;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Lhb/k;->h:Lp/h3;

    .line 174
    .line 175
    invoke-virtual {p1}, Lp/h3;->g()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget v1, v8, Lpa/u0;->c:I

    .line 180
    .line 181
    and-int/lit8 v3, v1, 0x4

    .line 182
    .line 183
    const/4 v4, 0x4

    .line 184
    if-ne v3, v4, :cond_4

    .line 185
    .line 186
    iget-object v1, v8, Lpa/u0;->g:Lpa/s0;

    .line 187
    .line 188
    const-string v3, "getUnderlyingType(...)"

    .line 189
    .line 190
    invoke-static {v1, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_4
    const/16 v3, 0x8

    .line 195
    .line 196
    and-int/2addr v1, v3

    .line 197
    if-ne v1, v3, :cond_7

    .line 198
    .line 199
    iget v1, v8, Lpa/u0;->h:I

    .line 200
    .line 201
    invoke-virtual {v10, v1}, Lra/g;->a(I)Lpa/s0;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    :goto_4
    const/4 v3, 0x0

    .line 206
    invoke-virtual {p1, v1, v3}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget v4, v8, Lpa/u0;->c:I

    .line 211
    .line 212
    and-int/lit8 v5, v4, 0x10

    .line 213
    .line 214
    const/16 v6, 0x10

    .line 215
    .line 216
    if-ne v5, v6, :cond_5

    .line 217
    .line 218
    iget-object v4, v8, Lpa/u0;->i:Lpa/s0;

    .line 219
    .line 220
    const-string v5, "getExpandedType(...)"

    .line 221
    .line 222
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_5
    const/16 v5, 0x20

    .line 227
    .line 228
    and-int/2addr v4, v5

    .line 229
    if-ne v4, v5, :cond_6

    .line 230
    .line 231
    iget v4, v8, Lpa/u0;->j:I

    .line 232
    .line 233
    invoke-virtual {v10, v4}, Lra/g;->a(I)Lpa/s0;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    :goto_5
    invoke-virtual {p1, v4, v3}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {v2, v0, v1, p1}, Ljb/u;->F0(Ljava/util/List;Llb/a0;Llb/a0;)V

    .line 242
    .line 243
    .line 244
    move-object p1, v2

    .line 245
    :goto_6
    return-object p1

    .line 246
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    const-string v0, "No expandedType in ProtoBuf.TypeAlias"

    .line 249
    .line 250
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 255
    .line 256
    const-string v0, "No underlyingType in ProtoBuf.TypeAlias"

    .line 257
    .line 258
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :pswitch_0
    const-string v0, "it"

    .line 263
    .line 264
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Ljb/m;->b:Ljb/p;

    .line 268
    .line 269
    iget-object v1, v0, Ljb/p;->b:Ljava/util/LinkedHashMap;

    .line 270
    .line 271
    sget-object v2, Lpa/i0;->w:Lpa/a;

    .line 272
    .line 273
    const-string v3, "PARSER"

    .line 274
    .line 275
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v0, Ljb/p;->i:Ljb/q;

    .line 279
    .line 280
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, [B

    .line 285
    .line 286
    if-eqz v1, :cond_8

    .line 287
    .line 288
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 289
    .line 290
    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 291
    .line 292
    .line 293
    new-instance v1, Ljb/o;

    .line 294
    .line 295
    const/4 v4, 0x0

    .line 296
    invoke-direct {v1, v2, v3, v0, v4}, Ljb/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    invoke-static {v1}, Lwb/l;->L(Lf9/a;)Lwb/j;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-static {v1}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    goto :goto_7

    .line 308
    :cond_8
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 309
    .line 310
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .line 318
    .line 319
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_9

    .line 328
    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    check-cast v3, Lpa/i0;

    .line 334
    .line 335
    iget-object v4, v0, Ljb/q;->b:Lhb/k;

    .line 336
    .line 337
    iget-object v4, v4, Lhb/k;->i:Lhb/t;

    .line 338
    .line 339
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v3}, Lhb/t;->f(Lpa/i0;)Ljb/s;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_9
    invoke-virtual {v0, v2, p1}, Ljb/q;->k(Ljava/util/ArrayList;Lua/e;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v2}, Lub/k;->d(Ljava/util/ArrayList;)Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    return-object p1

    .line 358
    :pswitch_1
    const-string v0, "it"

    .line 359
    .line 360
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Ljb/m;->b:Ljb/p;

    .line 364
    .line 365
    iget-object v1, v0, Ljb/p;->a:Ljava/util/LinkedHashMap;

    .line 366
    .line 367
    sget-object v2, Lpa/a0;->w:Lpa/a;

    .line 368
    .line 369
    const-string v3, "PARSER"

    .line 370
    .line 371
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v0, v0, Ljb/p;->i:Ljb/q;

    .line 375
    .line 376
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, [B

    .line 381
    .line 382
    if-eqz v1, :cond_a

    .line 383
    .line 384
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 385
    .line 386
    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 387
    .line 388
    .line 389
    new-instance v1, Ljb/o;

    .line 390
    .line 391
    const/4 v4, 0x0

    .line 392
    invoke-direct {v1, v2, v3, v0, v4}, Ljb/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 393
    .line 394
    .line 395
    invoke-static {v1}, Lwb/l;->L(Lf9/a;)Lwb/j;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v1}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    goto :goto_9

    .line 404
    :cond_a
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 405
    .line 406
    :goto_9
    new-instance v2, Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    :cond_b
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    if-eqz v3, :cond_d

    .line 424
    .line 425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Lpa/a0;

    .line 430
    .line 431
    iget-object v4, v0, Ljb/q;->b:Lhb/k;

    .line 432
    .line 433
    iget-object v4, v4, Lhb/k;->i:Lhb/t;

    .line 434
    .line 435
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4, v3}, Lhb/t;->e(Lpa/a0;)Ljb/t;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {v0, v3}, Ljb/q;->r(Ljb/t;)Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_c

    .line 447
    .line 448
    goto :goto_b

    .line 449
    :cond_c
    const/4 v3, 0x0

    .line 450
    :goto_b
    if-eqz v3, :cond_b

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_d
    invoke-virtual {v0, v2, p1}, Ljb/q;->j(Ljava/util/ArrayList;Lua/e;)V

    .line 457
    .line 458
    .line 459
    invoke-static {v2}, Lub/k;->d(Ljava/util/ArrayList;)Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    return-object p1

    .line 464
    nop

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
