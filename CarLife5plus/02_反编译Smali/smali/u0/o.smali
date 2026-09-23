.class public final Lu0/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lu0/j;

.field public c:Lf9/k;

.field public d:Lf9/k;

.field public e:Ll0/s0;

.field public f:Lw0/r1;

.field public g:Lr2/q2;

.field public h:Lg3/w;

.field public i:Lg3/k;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/lang/Object;

.field public l:Landroid/graphics/Rect;

.field public final m:Lu0/l;


# direct methods
.method public constructor <init>(Landroid/view/View;Lu0/a;Lu0/j;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu0/o;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lu0/o;->b:Lu0/j;

    .line 7
    .line 8
    new-instance p1, Ls7/d;

    .line 9
    .line 10
    const/16 v0, 0xb

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ls7/d;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lu0/o;->c:Lf9/k;

    .line 16
    .line 17
    new-instance p1, Ls7/d;

    .line 18
    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ls7/d;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lu0/o;->d:Lf9/k;

    .line 25
    .line 26
    new-instance p1, Lg3/w;

    .line 27
    .line 28
    sget-wide v0, Lb3/n0;->b:J

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-direct {p1, v3, v0, v1, v2}, Lg3/w;-><init>(Ljava/lang/String;JI)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lu0/o;->h:Lg3/w;

    .line 37
    .line 38
    sget-object p1, Lg3/k;->g:Lg3/k;

    .line 39
    .line 40
    iput-object p1, p0, Lu0/o;->i:Lg3/k;

    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lu0/o;->j:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance p1, La5/e;

    .line 50
    .line 51
    const/16 v0, 0x1c

    .line 52
    .line 53
    invoke-direct {p1, v0, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lr8/i;->b:Lr8/i;

    .line 57
    .line 58
    invoke-static {v0, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lu0/o;->k:Ljava/lang/Object;

    .line 63
    .line 64
    new-instance p1, Lu0/l;

    .line 65
    .line 66
    invoke-direct {p1, p2, p3}, Lu0/l;-><init>(Lu0/a;Lu0/j;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lu0/o;->m:Lu0/l;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/inputmethod/EditorInfo;)Lu0/p;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lu0/o;->h:Lg3/w;

    .line 6
    .line 7
    iget-object v3, v2, Lg3/w;->a:Lb3/g;

    .line 8
    .line 9
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v4, v2, Lg3/w;->b:J

    .line 12
    .line 13
    iget-object v2, v0, Lu0/o;->i:Lg3/k;

    .line 14
    .line 15
    iget v6, v2, Lg3/k;->e:I

    .line 16
    .line 17
    iget v7, v2, Lg3/k;->d:I

    .line 18
    .line 19
    iget-boolean v8, v2, Lg3/k;->a:Z

    .line 20
    .line 21
    const/4 v9, 0x4

    .line 22
    const/4 v10, 0x5

    .line 23
    const/4 v12, 0x7

    .line 24
    const/4 v13, 0x6

    .line 25
    const/4 v14, 0x3

    .line 26
    const/4 v15, 0x2

    .line 27
    const/4 v11, 0x1

    .line 28
    if-ne v6, v11, :cond_1

    .line 29
    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    :goto_0
    const/4 v6, 0x6

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-nez v6, :cond_2

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-ne v6, v15, :cond_3

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    if-ne v6, v13, :cond_4

    .line 45
    .line 46
    const/4 v6, 0x5

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-ne v6, v10, :cond_5

    .line 49
    .line 50
    const/4 v6, 0x7

    .line 51
    goto :goto_1

    .line 52
    :cond_5
    if-ne v6, v14, :cond_6

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    goto :goto_1

    .line 56
    :cond_6
    if-ne v6, v9, :cond_7

    .line 57
    .line 58
    const/4 v6, 0x4

    .line 59
    goto :goto_1

    .line 60
    :cond_7
    if-ne v6, v12, :cond_1d

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 64
    .line 65
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v12, 0x18

    .line 68
    .line 69
    if-lt v6, v12, :cond_a

    .line 70
    .line 71
    iget-object v6, v2, Lg3/k;->f:Li3/b;

    .line 72
    .line 73
    sget-object v12, Li3/b;->c:Li3/b;

    .line 74
    .line 75
    invoke-static {v6, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-eqz v12, :cond_8

    .line 80
    .line 81
    invoke-static {v1}, Lr2/g0;->f(Landroid/view/inputmethod/EditorInfo;)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    .line 86
    .line 87
    const/16 v13, 0xa

    .line 88
    .line 89
    invoke-static {v6, v13}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    iget-object v6, v6, Li3/b;->a:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-eqz v13, :cond_9

    .line 107
    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    check-cast v13, Li3/a;

    .line 113
    .line 114
    iget-object v13, v13, Li3/a;->a:Ljava/util/Locale;

    .line 115
    .line 116
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_9
    const/4 v13, 0x0

    .line 121
    new-array v6, v13, [Ljava/util/Locale;

    .line 122
    .line 123
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, [Ljava/util/Locale;

    .line 128
    .line 129
    array-length v12, v6

    .line 130
    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, [Ljava/util/Locale;

    .line 135
    .line 136
    invoke-static {v6}, Lr2/g0;->c([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-static {v1, v6}, Lr2/g0;->g(Landroid/view/inputmethod/EditorInfo;Landroid/os/LocaleList;)V

    .line 141
    .line 142
    .line 143
    :cond_a
    :goto_3
    const/16 v6, 0x8

    .line 144
    .line 145
    if-ne v7, v11, :cond_b

    .line 146
    .line 147
    :goto_4
    const/4 v12, 0x1

    .line 148
    goto :goto_5

    .line 149
    :cond_b
    if-ne v7, v15, :cond_c

    .line 150
    .line 151
    iget v12, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 152
    .line 153
    const/high16 v13, -0x80000000

    .line 154
    .line 155
    or-int/2addr v12, v13

    .line 156
    iput v12, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_c
    if-ne v7, v14, :cond_d

    .line 160
    .line 161
    const/4 v12, 0x2

    .line 162
    goto :goto_5

    .line 163
    :cond_d
    if-ne v7, v9, :cond_e

    .line 164
    .line 165
    const/4 v12, 0x3

    .line 166
    goto :goto_5

    .line 167
    :cond_e
    if-ne v7, v10, :cond_f

    .line 168
    .line 169
    const/16 v12, 0x11

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_f
    const/4 v12, 0x6

    .line 173
    if-ne v7, v12, :cond_10

    .line 174
    .line 175
    const/16 v12, 0x21

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_10
    const/4 v12, 0x7

    .line 179
    if-ne v7, v12, :cond_11

    .line 180
    .line 181
    const/16 v12, 0x81

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_11
    if-ne v7, v6, :cond_12

    .line 185
    .line 186
    const/16 v12, 0x12

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_12
    const/16 v12, 0x9

    .line 190
    .line 191
    if-ne v7, v12, :cond_1c

    .line 192
    .line 193
    const/16 v12, 0x2002

    .line 194
    .line 195
    :goto_5
    iput v12, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 196
    .line 197
    if-nez v8, :cond_13

    .line 198
    .line 199
    and-int/lit8 v8, v12, 0x1

    .line 200
    .line 201
    if-ne v8, v11, :cond_13

    .line 202
    .line 203
    const/high16 v8, 0x20000

    .line 204
    .line 205
    or-int/2addr v8, v12

    .line 206
    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 207
    .line 208
    iget v8, v2, Lg3/k;->e:I

    .line 209
    .line 210
    if-ne v8, v11, :cond_13

    .line 211
    .line 212
    iget v8, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 213
    .line 214
    const/high16 v12, 0x40000000    # 2.0f

    .line 215
    .line 216
    or-int/2addr v8, v12

    .line 217
    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 218
    .line 219
    :cond_13
    iget v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 220
    .line 221
    and-int/lit8 v12, v8, 0x1

    .line 222
    .line 223
    if-ne v12, v11, :cond_17

    .line 224
    .line 225
    iget v12, v2, Lg3/k;->b:I

    .line 226
    .line 227
    if-ne v12, v11, :cond_14

    .line 228
    .line 229
    or-int/lit16 v8, v8, 0x1000

    .line 230
    .line 231
    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_14
    if-ne v12, v15, :cond_15

    .line 235
    .line 236
    or-int/lit16 v8, v8, 0x2000

    .line 237
    .line 238
    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_15
    if-ne v12, v14, :cond_16

    .line 242
    .line 243
    or-int/lit16 v8, v8, 0x4000

    .line 244
    .line 245
    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 246
    .line 247
    :cond_16
    :goto_6
    iget-boolean v2, v2, Lg3/k;->c:Z

    .line 248
    .line 249
    if-eqz v2, :cond_17

    .line 250
    .line 251
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 252
    .line 253
    const v8, 0x8000

    .line 254
    .line 255
    .line 256
    or-int/2addr v2, v8

    .line 257
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 258
    .line 259
    :cond_17
    sget v2, Lb3/n0;->c:I

    .line 260
    .line 261
    const/16 v2, 0x20

    .line 262
    .line 263
    shr-long v12, v4, v2

    .line 264
    .line 265
    long-to-int v2, v12

    .line 266
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 267
    .line 268
    const-wide v12, 0xffffffffL

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    and-long/2addr v4, v12

    .line 274
    long-to-int v2, v4

    .line 275
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 276
    .line 277
    invoke-static {v1, v3}, Lg4/d;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 281
    .line 282
    const/high16 v3, 0x2000000

    .line 283
    .line 284
    or-int/2addr v2, v3

    .line 285
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 286
    .line 287
    sget-boolean v2, Lt0/b;->a:Z

    .line 288
    .line 289
    if-eqz v2, :cond_18

    .line 290
    .line 291
    const/4 v12, 0x7

    .line 292
    if-ne v7, v12, :cond_19

    .line 293
    .line 294
    :cond_18
    :goto_7
    const/4 v13, 0x0

    .line 295
    goto :goto_8

    .line 296
    :cond_19
    if-ne v7, v6, :cond_1a

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_1a
    invoke-static {v1, v11}, Lg4/d;->b(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lc3/a;->n()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-static {}, Lc3/a;->A()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-static {}, Lc3/a;->x()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-static {}, Lc3/a;->z()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-static {}, Lc3/a;->B()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    invoke-static {}, Lc3/a;->C()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-static {}, Lc3/a;->D()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    const/4 v12, 0x7

    .line 331
    new-array v12, v12, [Ljava/lang/Class;

    .line 332
    .line 333
    const/16 v16, 0x0

    .line 334
    .line 335
    aput-object v2, v12, v16

    .line 336
    .line 337
    aput-object v3, v12, v11

    .line 338
    .line 339
    aput-object v4, v12, v15

    .line 340
    .line 341
    aput-object v5, v12, v14

    .line 342
    .line 343
    aput-object v6, v12, v9

    .line 344
    .line 345
    aput-object v7, v12, v10

    .line 346
    .line 347
    const/16 v17, 0x6

    .line 348
    .line 349
    aput-object v8, v12, v17

    .line 350
    .line 351
    invoke-static {v12}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v1, v2}, Lc3/a;->r(Landroid/view/inputmethod/EditorInfo;Ljava/util/List;)V

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lc3/a;->n()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-static {}, Lc3/a;->A()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {}, Lc3/a;->x()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-static {}, Lc3/a;->z()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    new-array v6, v9, [Ljava/lang/Class;

    .line 375
    .line 376
    const/4 v13, 0x0

    .line 377
    aput-object v2, v6, v13

    .line 378
    .line 379
    aput-object v3, v6, v11

    .line 380
    .line 381
    aput-object v4, v6, v15

    .line 382
    .line 383
    aput-object v5, v6, v14

    .line 384
    .line 385
    invoke-static {v6}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-static {v1, v2}, Lc3/a;->s(Landroid/view/inputmethod/EditorInfo;Ljava/util/Set;)V

    .line 390
    .line 391
    .line 392
    goto :goto_9

    .line 393
    :goto_8
    invoke-static {v1, v13}, Lg4/d;->b(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 394
    .line 395
    .line 396
    :goto_9
    sget-object v2, Lu0/n;->a:Lu0/m;

    .line 397
    .line 398
    invoke-static {}, Ll4/j;->d()Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-nez v2, :cond_1b

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_1b
    invoke-static {}, Ll4/j;->a()Ll4/j;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v2, v1}, Ll4/j;->i(Landroid/view/inputmethod/EditorInfo;)V

    .line 410
    .line 411
    .line 412
    :goto_a
    iget-object v4, v0, Lu0/o;->h:Lg3/w;

    .line 413
    .line 414
    iget-object v1, v0, Lu0/o;->i:Lg3/k;

    .line 415
    .line 416
    iget-boolean v6, v1, Lg3/k;->c:Z

    .line 417
    .line 418
    new-instance v5, Lkb/a;

    .line 419
    .line 420
    const/16 v1, 0x16

    .line 421
    .line 422
    invoke-direct {v5, v1, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    iget-object v7, v0, Lu0/o;->e:Ll0/s0;

    .line 426
    .line 427
    iget-object v8, v0, Lu0/o;->f:Lw0/r1;

    .line 428
    .line 429
    iget-object v9, v0, Lu0/o;->g:Lr2/q2;

    .line 430
    .line 431
    new-instance v3, Lu0/p;

    .line 432
    .line 433
    invoke-direct/range {v3 .. v9}, Lu0/p;-><init>(Lg3/w;Lkb/a;ZLl0/s0;Lw0/r1;Lr2/q2;)V

    .line 434
    .line 435
    .line 436
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 437
    .line 438
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    iget-object v2, v0, Lu0/o;->j:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    return-object v3

    .line 447
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 448
    .line 449
    const-string v2, "Invalid Keyboard Type"

    .line 450
    .line 451
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v1

    .line 455
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 456
    .line 457
    const-string v2, "invalid ImeAction"

    .line 458
    .line 459
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v1
.end method
