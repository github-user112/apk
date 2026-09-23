.class public final Lc8/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc8/s;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc8/s;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lc8/s;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    check-cast v9, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v11, v2

    .line 18
    check-cast v11, Lw0/w0;

    .line 19
    .line 20
    and-int/lit8 v2, v1, 0x3

    .line 21
    .line 22
    const/4 v12, 0x1

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    and-int/2addr v1, v12

    .line 31
    invoke-virtual {v9, v1, v2}, Lf1/s;->N(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_13

    .line 36
    .line 37
    iget-object v1, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ln1/c;

    .line 40
    .line 41
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v9, v2}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v11}, Lw0/w0;->h()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_12

    .line 53
    .line 54
    iget-object v1, v11, Lw0/w0;->i:Lf1/k1;

    .line 55
    .line 56
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_12

    .line 67
    .line 68
    invoke-virtual {v11}, Lw0/w0;->g()Lw0/z;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object v2, v1, Lw0/z;->a:Lw0/y;

    .line 77
    .line 78
    iget-object v1, v1, Lw0/z;->b:Lw0/y;

    .line 79
    .line 80
    invoke-static {v2, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_1
    if-nez v1, :cond_12

    .line 85
    .line 86
    const v1, -0x677cb21b

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11}, Lw0/w0;->g()Lw0/z;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    if-nez v14, :cond_2

    .line 97
    .line 98
    const v1, 0x77e70677

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 105
    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    goto/16 :goto_a

    .line 109
    .line 110
    :cond_2
    const v1, 0x77e70678

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 114
    .line 115
    .line 116
    const v1, -0x677ca73e

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 120
    .line 121
    .line 122
    new-array v1, v3, [Ljava/lang/Boolean;

    .line 123
    .line 124
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    .line 126
    aput-object v2, v1, v13

    .line 127
    .line 128
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    aput-object v2, v1, v12

    .line 131
    .line 132
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v2, 0x0

    .line 141
    :goto_2
    if-ge v2, v1, :cond_11

    .line 142
    .line 143
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {v9, v3}, Lf1/s;->g(Z)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 162
    .line 163
    if-nez v4, :cond_3

    .line 164
    .line 165
    if-ne v5, v6, :cond_4

    .line 166
    .line 167
    :cond_3
    new-instance v5, Lw0/n1;

    .line 168
    .line 169
    invoke-direct {v5, v3, v11}, Lw0/n1;-><init>(ZLw0/w0;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    check-cast v5, Ll0/z0;

    .line 176
    .line 177
    invoke-virtual {v9, v3}, Lf1/s;->g(Z)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    if-nez v4, :cond_5

    .line 186
    .line 187
    if-ne v7, v6, :cond_7

    .line 188
    .line 189
    :cond_5
    if-eqz v3, :cond_6

    .line 190
    .line 191
    new-instance v4, Lw0/f0;

    .line 192
    .line 193
    invoke-direct {v4, v11, v13}, Lw0/f0;-><init>(Lw0/w0;I)V

    .line 194
    .line 195
    .line 196
    :goto_3
    move-object v7, v4

    .line 197
    goto :goto_4

    .line 198
    :cond_6
    new-instance v4, Lw0/f0;

    .line 199
    .line 200
    invoke-direct {v4, v11, v12}, Lw0/f0;-><init>(Lw0/w0;I)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :goto_4
    invoke-virtual {v9, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    check-cast v7, Lf9/a;

    .line 208
    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    iget-object v4, v14, Lw0/z;->a:Lw0/y;

    .line 212
    .line 213
    iget-object v4, v4, Lw0/y;->a:Lm3/j;

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_8
    iget-object v4, v14, Lw0/z;->b:Lw0/y;

    .line 217
    .line 218
    iget-object v4, v4, Lw0/y;->a:Lm3/j;

    .line 219
    .line 220
    :goto_5
    if-eqz v3, :cond_c

    .line 221
    .line 222
    invoke-virtual {v11}, Lw0/w0;->g()Lw0/z;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    if-nez v10, :cond_a

    .line 227
    .line 228
    :cond_9
    :goto_6
    const/4 v8, 0x0

    .line 229
    goto :goto_7

    .line 230
    :cond_a
    iget-object v10, v10, Lw0/z;->a:Lw0/y;

    .line 231
    .line 232
    invoke-virtual {v11, v10}, Lw0/w0;->d(Lw0/y;)Lw0/p;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    if-nez v8, :cond_b

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_b
    iget v10, v10, Lw0/y;->b:I

    .line 240
    .line 241
    iget-object v8, v8, Lw0/p;->c:Lv0/g;

    .line 242
    .line 243
    invoke-virtual {v8}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    check-cast v8, Lb3/l0;

    .line 248
    .line 249
    if-eqz v8, :cond_9

    .line 250
    .line 251
    invoke-static {v8, v10}, Ll0/p0;->t(Lb3/l0;I)F

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    :goto_7
    move v10, v1

    .line 256
    goto :goto_9

    .line 257
    :cond_c
    invoke-virtual {v11}, Lw0/w0;->g()Lw0/z;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    if-nez v8, :cond_d

    .line 262
    .line 263
    :goto_8
    goto :goto_6

    .line 264
    :cond_d
    iget-object v8, v8, Lw0/z;->b:Lw0/y;

    .line 265
    .line 266
    invoke-virtual {v11, v8}, Lw0/w0;->d(Lw0/y;)Lw0/p;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    if-nez v10, :cond_e

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_e
    iget v8, v8, Lw0/y;->b:I

    .line 274
    .line 275
    iget-object v10, v10, Lw0/p;->c:Lv0/g;

    .line 276
    .line 277
    invoke-virtual {v10}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    check-cast v10, Lb3/l0;

    .line 282
    .line 283
    if-eqz v10, :cond_9

    .line 284
    .line 285
    invoke-static {v10, v8}, Ll0/p0;->t(Lb3/l0;I)F

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    goto :goto_7

    .line 290
    :goto_9
    new-instance v1, Lw0/i0;

    .line 291
    .line 292
    invoke-direct {v1, v7}, Lw0/i0;-><init>(Lf9/a;)V

    .line 293
    .line 294
    .line 295
    move v7, v2

    .line 296
    move v2, v3

    .line 297
    move-object v3, v4

    .line 298
    iget-boolean v4, v14, Lw0/z;->c:Z

    .line 299
    .line 300
    invoke-virtual {v9, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v16

    .line 304
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    if-nez v16, :cond_f

    .line 309
    .line 310
    if-ne v12, v6, :cond_10

    .line 311
    .line 312
    :cond_f
    new-instance v12, Lw0/g0;

    .line 313
    .line 314
    invoke-direct {v12, v5, v13}, Lw0/g0;-><init>(Ll0/z0;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_10
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 321
    .line 322
    move v6, v7

    .line 323
    move v7, v8

    .line 324
    new-instance v8, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 325
    .line 326
    const/4 v13, 0x0

    .line 327
    const/4 v0, 0x6

    .line 328
    invoke-direct {v8, v5, v13, v12, v0}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 329
    .line 330
    .line 331
    move v0, v10

    .line 332
    const/4 v10, 0x0

    .line 333
    move v13, v6

    .line 334
    const-wide/16 v5, 0x0

    .line 335
    .line 336
    invoke-static/range {v1 .. v10}, Lw0/y0;->d(Lw0/q;ZLm3/j;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;Lf1/s;I)V

    .line 337
    .line 338
    .line 339
    add-int/lit8 v2, v13, 0x1

    .line 340
    .line 341
    move v1, v0

    .line 342
    const/4 v12, 0x1

    .line 343
    const/4 v13, 0x0

    .line 344
    move-object/from16 v0, p0

    .line 345
    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    :cond_11
    const/4 v1, 0x0

    .line 349
    invoke-virtual {v9, v1}, Lf1/s;->p(Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9, v1}, Lf1/s;->p(Z)V

    .line 353
    .line 354
    .line 355
    :goto_a
    invoke-virtual {v9, v1}, Lf1/s;->p(Z)V

    .line 356
    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_12
    const/4 v1, 0x0

    .line 360
    const v0, 0x7805236b

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9, v0}, Lf1/s;->W(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9, v1}, Lf1/s;->p(Z)V

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_13
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 371
    .line 372
    .line 373
    :goto_b
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 374
    .line 375
    return-object v0
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    check-cast v8, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ly7/v;

    .line 18
    .line 19
    iget-object v3, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lf9/k;

    .line 22
    .line 23
    and-int/lit8 v1, v1, 0x3

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-ne v1, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v4, 0xa

    .line 42
    .line 43
    sget-object v5, Lm7/g0;->e:Lz8/b;

    .line 44
    .line 45
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lm7/g0;

    .line 67
    .line 68
    new-instance v9, Lj8/k0;

    .line 69
    .line 70
    iget-object v10, v5, Lm7/g0;->a:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v11, Lj8/m0;

    .line 73
    .line 74
    iget v5, v5, Lm7/g0;->b:I

    .line 75
    .line 76
    invoke-direct {v11, v5}, Lj8/m0;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    const/16 v15, 0x1c

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    invoke-direct/range {v9 .. v15}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const v4, -0x615d173a

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v4}, Lf1/s;->W(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    or-int/2addr v4, v5

    .line 106
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 113
    .line 114
    if-ne v5, v4, :cond_4

    .line 115
    .line 116
    :cond_3
    new-instance v5, Lc8/x;

    .line 117
    .line 118
    const/16 v4, 0xb

    .line 119
    .line 120
    invoke-direct {v5, v3, v2, v4}, Lc8/x;-><init>(Lf9/k;Lz7/v1;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    move-object v7, v5

    .line 127
    check-cast v7, Lf9/k;

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-virtual {v8, v2}, Lf1/s;->p(Z)V

    .line 131
    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    const/16 v10, 0x3e

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    const/4 v3, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x0

    .line 141
    invoke-static/range {v1 .. v10}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 142
    .line 143
    .line 144
    :goto_2
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 145
    .line 146
    return-object v1
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    check-cast v8, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ly7/a0;

    .line 18
    .line 19
    iget-object v3, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lf9/k;

    .line 22
    .line 23
    and-int/lit8 v1, v1, 0x3

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-ne v1, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v4, 0xa

    .line 42
    .line 43
    sget-object v5, Lz7/t1;->e:Lz8/b;

    .line 44
    .line 45
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lz7/t1;

    .line 67
    .line 68
    new-instance v9, Lj8/k0;

    .line 69
    .line 70
    iget-object v10, v5, Lz7/t1;->a:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v11, Lj8/m0;

    .line 73
    .line 74
    iget v5, v5, Lz7/t1;->b:I

    .line 75
    .line 76
    invoke-direct {v11, v5}, Lj8/m0;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    const/16 v15, 0x1c

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    invoke-direct/range {v9 .. v15}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const v4, -0x615d173a

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v4}, Lf1/s;->W(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    or-int/2addr v4, v5

    .line 106
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 113
    .line 114
    if-ne v5, v4, :cond_4

    .line 115
    .line 116
    :cond_3
    new-instance v5, Lc8/x;

    .line 117
    .line 118
    const/16 v4, 0xc

    .line 119
    .line 120
    invoke-direct {v5, v3, v2, v4}, Lc8/x;-><init>(Lf9/k;Lz7/v1;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    move-object v7, v5

    .line 127
    check-cast v7, Lf9/k;

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-virtual {v8, v2}, Lf1/s;->p(Z)V

    .line 131
    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    const/16 v10, 0x3e

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    const/4 v3, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x0

    .line 141
    invoke-static/range {v1 .. v10}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 142
    .line 143
    .line 144
    :goto_2
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 145
    .line 146
    return-object v1
.end method

.method private final i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    check-cast v8, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ly7/e0;

    .line 18
    .line 19
    iget-object v3, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lf9/k;

    .line 22
    .line 23
    and-int/lit8 v1, v1, 0x3

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-ne v1, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v4, 0xa

    .line 42
    .line 43
    sget-object v5, Lz7/g2;->e:Lz8/b;

    .line 44
    .line 45
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lz7/g2;

    .line 67
    .line 68
    new-instance v9, Lj8/k0;

    .line 69
    .line 70
    iget-object v10, v5, Lz7/g2;->a:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v11, Lj8/m0;

    .line 73
    .line 74
    iget v5, v5, Lz7/g2;->b:I

    .line 75
    .line 76
    invoke-direct {v11, v5}, Lj8/m0;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    const/16 v15, 0x1c

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    invoke-direct/range {v9 .. v15}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const v4, -0x615d173a

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v4}, Lf1/s;->W(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    or-int/2addr v4, v5

    .line 106
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 113
    .line 114
    if-ne v5, v4, :cond_4

    .line 115
    .line 116
    :cond_3
    new-instance v5, Lc8/x;

    .line 117
    .line 118
    const/16 v4, 0xd

    .line 119
    .line 120
    invoke-direct {v5, v3, v2, v4}, Lc8/x;-><init>(Lf9/k;Lz7/v1;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    move-object v7, v5

    .line 127
    check-cast v7, Lf9/k;

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-virtual {v8, v2}, Lf1/s;->p(Z)V

    .line 131
    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    const/16 v10, 0x3e

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    const/4 v3, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x0

    .line 141
    invoke-static/range {v1 .. v10}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 142
    .line 143
    .line 144
    :goto_2
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 145
    .line 146
    return-object v1
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/s;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Lf1/s;

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Ly7/f0;

    .line 23
    .line 24
    and-int/lit8 v2, v2, 0x3

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-ne v2, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const v2, -0x615d173a

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v4, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Lf1/b1;

    .line 53
    .line 54
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 61
    .line 62
    if-ne v5, v2, :cond_3

    .line 63
    .line 64
    :cond_2
    new-instance v5, Lu7/e;

    .line 65
    .line 66
    invoke-direct {v5, v3, v4}, Lu7/e;-><init>(Ly7/f0;Lf1/b1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    check-cast v5, Lf9/a;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x6

    .line 79
    const-string v3, "\u6d4b\u8bd5"

    .line 80
    .line 81
    invoke-static {v3, v5, v1, v2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_0
    invoke-direct/range {p0 .. p2}, Lc8/s;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    return-object v1

    .line 92
    :pswitch_1
    invoke-direct/range {p0 .. p2}, Lc8/s;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    return-object v1

    .line 97
    :pswitch_2
    invoke-direct/range {p0 .. p2}, Lc8/s;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    return-object v1

    .line 102
    :pswitch_3
    move-object/from16 v9, p1

    .line 103
    .line 104
    check-cast v9, Lf1/s;

    .line 105
    .line 106
    move-object/from16 v1, p2

    .line 107
    .line 108
    check-cast v1, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iget-object v2, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v2, Ly7/p;

    .line 117
    .line 118
    iget-object v3, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v3, Lf9/k;

    .line 121
    .line 122
    and-int/lit8 v1, v1, 0x3

    .line 123
    .line 124
    const/4 v4, 0x2

    .line 125
    if-ne v1, v4, :cond_5

    .line 126
    .line 127
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_5
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 139
    .line 140
    const/16 v4, 0xa

    .line 141
    .line 142
    sget-object v5, Ly7/o;->e:Lz8/b;

    .line 143
    .line 144
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_6

    .line 160
    .line 161
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ly7/o;

    .line 166
    .line 167
    new-instance v10, Lj8/k0;

    .line 168
    .line 169
    iget-object v11, v5, Ly7/o;->a:Ljava/lang/String;

    .line 170
    .line 171
    new-instance v12, Lj8/m0;

    .line 172
    .line 173
    iget v5, v5, Ly7/o;->b:I

    .line 174
    .line 175
    invoke-direct {v12, v5}, Lj8/m0;-><init>(I)V

    .line 176
    .line 177
    .line 178
    const/4 v15, 0x0

    .line 179
    const/16 v16, 0x1c

    .line 180
    .line 181
    const/4 v13, 0x0

    .line 182
    const/4 v14, 0x0

    .line 183
    invoke-direct/range {v10 .. v16}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    const v4, -0x615d173a

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v4}, Lf1/s;->W(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    invoke-virtual {v9, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    or-int/2addr v4, v5

    .line 205
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-nez v4, :cond_7

    .line 210
    .line 211
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 212
    .line 213
    if-ne v5, v4, :cond_8

    .line 214
    .line 215
    :cond_7
    new-instance v5, Lc8/x;

    .line 216
    .line 217
    const/16 v4, 0xa

    .line 218
    .line 219
    invoke-direct {v5, v3, v2, v4}, Lc8/x;-><init>(Lf9/k;Lz7/v1;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    move-object v8, v5

    .line 226
    check-cast v8, Lf9/k;

    .line 227
    .line 228
    const/4 v2, 0x0

    .line 229
    invoke-virtual {v9, v2}, Lf1/s;->p(Z)V

    .line 230
    .line 231
    .line 232
    const/4 v10, 0x0

    .line 233
    const/16 v11, 0x3e

    .line 234
    .line 235
    const/4 v3, 0x0

    .line 236
    const/4 v4, 0x0

    .line 237
    const/4 v5, 0x0

    .line 238
    const/4 v6, 0x0

    .line 239
    const/4 v7, 0x0

    .line 240
    move-object v2, v1

    .line 241
    invoke-static/range {v2 .. v11}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 242
    .line 243
    .line 244
    :goto_4
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 245
    .line 246
    return-object v1

    .line 247
    :pswitch_4
    iget-object v1, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v1, Lv9/b;

    .line 250
    .line 251
    iget-object v2, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v2, Lv9/b;

    .line 254
    .line 255
    move-object/from16 v3, p1

    .line 256
    .line 257
    check-cast v3, Lv9/k;

    .line 258
    .line 259
    move-object/from16 v4, p2

    .line 260
    .line 261
    check-cast v4, Lv9/k;

    .line 262
    .line 263
    invoke-static {v3, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_9

    .line 268
    .line 269
    invoke-static {v4, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_9

    .line 274
    .line 275
    const/4 v1, 0x1

    .line 276
    goto :goto_5

    .line 277
    :cond_9
    const/4 v1, 0x0

    .line 278
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    return-object v1

    .line 283
    :pswitch_5
    invoke-direct/range {p0 .. p2}, Lc8/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    return-object v1

    .line 288
    :pswitch_6
    move-object/from16 v1, p1

    .line 289
    .line 290
    check-cast v1, Lf1/s;

    .line 291
    .line 292
    move-object/from16 v2, p2

    .line 293
    .line 294
    check-cast v2, Ljava/lang/Number;

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    and-int/lit8 v2, v2, 0x3

    .line 301
    .line 302
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 303
    .line 304
    const/4 v4, 0x2

    .line 305
    if-ne v2, v4, :cond_b

    .line 306
    .line 307
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-nez v2, :cond_a

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 315
    .line 316
    .line 317
    move-object v15, v3

    .line 318
    goto/16 :goto_c

    .line 319
    .line 320
    :cond_b
    :goto_6
    sget-object v2, Ld0/h;->d:Ld0/d;

    .line 321
    .line 322
    sget-object v5, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 323
    .line 324
    iget-object v6, v0, Lc8/s;->b:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v6, Landroid/view/View;

    .line 327
    .line 328
    iget-object v7, v0, Lc8/s;->c:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v7, Lf1/b1;

    .line 331
    .line 332
    sget-object v8, Lr1/c;->j:Lr1/g;

    .line 333
    .line 334
    const/4 v9, 0x6

    .line 335
    invoke-static {v2, v8, v1, v9}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iget-wide v10, v1, Lf1/s;->T:J

    .line 340
    .line 341
    const/16 v23, 0x20

    .line 342
    .line 343
    ushr-long v12, v10, v23

    .line 344
    .line 345
    xor-long/2addr v10, v12

    .line 346
    long-to-int v8, v10

    .line 347
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    invoke-static {v1, v5}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    sget-object v11, Lq2/j;->d0:Lq2/i;

    .line 356
    .line 357
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 361
    .line 362
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 363
    .line 364
    .line 365
    iget-boolean v12, v1, Lf1/s;->S:Z

    .line 366
    .line 367
    if-eqz v12, :cond_c

    .line 368
    .line 369
    invoke-virtual {v1, v11}, Lf1/s;->k(Lf9/a;)V

    .line 370
    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_c
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 374
    .line 375
    .line 376
    :goto_7
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 377
    .line 378
    invoke-static {v1, v11, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 382
    .line 383
    invoke-static {v1, v2, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 387
    .line 388
    iget-boolean v10, v1, Lf1/s;->S:Z

    .line 389
    .line 390
    if-nez v10, :cond_d

    .line 391
    .line 392
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v11

    .line 400
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v10

    .line 404
    if-nez v10, :cond_e

    .line 405
    .line 406
    :cond_d
    invoke-static {v8, v1, v8, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 407
    .line 408
    .line 409
    :cond_e
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 410
    .line 411
    invoke-static {v1, v2, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    const v2, 0x50e3fdc5

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 418
    .line 419
    .line 420
    new-instance v2, Ljava/util/ArrayList;

    .line 421
    .line 422
    const/16 v5, 0xa

    .line 423
    .line 424
    sget-object v8, Lt7/f;->g:Lz8/b;

    .line 425
    .line 426
    invoke-static {v8, v5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v24

    .line 437
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    const/4 v10, 0x0

    .line 442
    if-eqz v5, :cond_16

    .line 443
    .line 444
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Lt7/f;

    .line 449
    .line 450
    const v11, 0x6e3c21fe

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v11}, Lf1/s;->W(I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 461
    .line 462
    if-ne v11, v12, :cond_f

    .line 463
    .line 464
    invoke-static {v1}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 465
    .line 466
    .line 467
    move-result-object v11

    .line 468
    :cond_f
    move-object v14, v11

    .line 469
    check-cast v14, Lb0/k;

    .line 470
    .line 471
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 472
    .line 473
    .line 474
    const v11, -0x6815fd56

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v11}, Lf1/s;->W(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v11

    .line 484
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 485
    .line 486
    .line 487
    move-result v13

    .line 488
    invoke-virtual {v1, v13}, Lf1/s;->d(I)Z

    .line 489
    .line 490
    .line 491
    move-result v13

    .line 492
    or-int/2addr v11, v13

    .line 493
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v13

    .line 497
    if-nez v11, :cond_10

    .line 498
    .line 499
    if-ne v13, v12, :cond_11

    .line 500
    .line 501
    :cond_10
    new-instance v13, Lc8/c1;

    .line 502
    .line 503
    const/4 v11, 0x6

    .line 504
    invoke-direct {v13, v6, v5, v7, v11}, Lc8/c1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/b1;I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    :cond_11
    move-object/from16 v17, v13

    .line 511
    .line 512
    check-cast v17, Lf9/a;

    .line 513
    .line 514
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 515
    .line 516
    .line 517
    const/16 v18, 0x1c

    .line 518
    .line 519
    sget-object v13, Lr1/m;->a:Lr1/m;

    .line 520
    .line 521
    const/4 v15, 0x0

    .line 522
    const/16 v16, 0x0

    .line 523
    .line 524
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 525
    .line 526
    .line 527
    move-result-object v11

    .line 528
    sget-object v12, Lr1/c;->a:Lr1/h;

    .line 529
    .line 530
    invoke-static {v12, v10}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 531
    .line 532
    .line 533
    move-result-object v12

    .line 534
    iget-wide v14, v1, Lf1/s;->T:J

    .line 535
    .line 536
    ushr-long v16, v14, v23

    .line 537
    .line 538
    xor-long v14, v14, v16

    .line 539
    .line 540
    long-to-int v15, v14

    .line 541
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 542
    .line 543
    .line 544
    move-result-object v14

    .line 545
    invoke-static {v1, v11}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 546
    .line 547
    .line 548
    move-result-object v11

    .line 549
    sget-object v16, Lq2/j;->d0:Lq2/i;

    .line 550
    .line 551
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 555
    .line 556
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 557
    .line 558
    .line 559
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 560
    .line 561
    if-eqz v9, :cond_12

    .line 562
    .line 563
    invoke-virtual {v1, v8}, Lf1/s;->k(Lf9/a;)V

    .line 564
    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_12
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 568
    .line 569
    .line 570
    :goto_9
    sget-object v8, Lq2/i;->e:Lq2/h;

    .line 571
    .line 572
    invoke-static {v1, v8, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    sget-object v8, Lq2/i;->d:Lq2/h;

    .line 576
    .line 577
    invoke-static {v1, v8, v14}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    sget-object v8, Lq2/i;->f:Lq2/h;

    .line 581
    .line 582
    iget-boolean v9, v1, Lf1/s;->S:Z

    .line 583
    .line 584
    if-nez v9, :cond_13

    .line 585
    .line 586
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v9

    .line 590
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v12

    .line 594
    invoke-static {v9, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v9

    .line 598
    if-nez v9, :cond_14

    .line 599
    .line 600
    :cond_13
    invoke-static {v15, v1, v15, v8}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 601
    .line 602
    .line 603
    :cond_14
    sget-object v8, Lq2/i;->c:Lq2/h;

    .line 604
    .line 605
    invoke-static {v1, v8, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    move-object v8, v2

    .line 609
    iget-object v2, v5, Lt7/f;->a:Ljava/lang/String;

    .line 610
    .line 611
    const/16 v9, 0x16

    .line 612
    .line 613
    invoke-static {v9, v1}, Lg5/a;->B(ILf1/s;)F

    .line 614
    .line 615
    .line 616
    move-result v9

    .line 617
    const-wide v11, 0x100000000L

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    invoke-static {v9, v11, v12}, Lc7/a;->M(FJ)J

    .line 623
    .line 624
    .line 625
    move-result-wide v11

    .line 626
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    check-cast v9, Lt7/f;

    .line 631
    .line 632
    if-ne v9, v5, :cond_15

    .line 633
    .line 634
    const v5, -0x426b638c

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 638
    .line 639
    .line 640
    sget-object v5, Lc1/y;->a:Lf1/w2;

    .line 641
    .line 642
    invoke-virtual {v1, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    check-cast v5, Lc1/w;

    .line 647
    .line 648
    iget-wide v14, v5, Lc1/w;->a:J

    .line 649
    .line 650
    :goto_a
    invoke-virtual {v1, v10}, Lf1/s;->p(Z)V

    .line 651
    .line 652
    .line 653
    goto :goto_b

    .line 654
    :cond_15
    const v5, -0x426b5ea7

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 658
    .line 659
    .line 660
    sget-object v5, Lc1/y;->a:Lf1/w2;

    .line 661
    .line 662
    invoke-virtual {v1, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    check-cast v5, Lc1/w;

    .line 667
    .line 668
    iget-wide v14, v5, Lc1/w;->o:J

    .line 669
    .line 670
    goto :goto_a

    .line 671
    :goto_b
    const/16 v5, 0x10

    .line 672
    .line 673
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 674
    .line 675
    .line 676
    move-result v9

    .line 677
    const/4 v10, 0x0

    .line 678
    invoke-static {v13, v9, v10, v4}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 679
    .line 680
    .line 681
    move-result-object v16

    .line 682
    const/4 v9, 0x6

    .line 683
    invoke-static {v9, v1}, Lg5/a;->B(ILf1/s;)F

    .line 684
    .line 685
    .line 686
    move-result v18

    .line 687
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 688
    .line 689
    .line 690
    move-result v20

    .line 691
    const/16 v21, 0x5

    .line 692
    .line 693
    const/16 v17, 0x0

    .line 694
    .line 695
    const/16 v19, 0x0

    .line 696
    .line 697
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    const/16 v21, 0x0

    .line 702
    .line 703
    const v22, 0x1fff0

    .line 704
    .line 705
    .line 706
    move-object v10, v8

    .line 707
    const/4 v8, 0x0

    .line 708
    move-object v13, v10

    .line 709
    const/16 v16, 0x6

    .line 710
    .line 711
    const-wide/16 v9, 0x0

    .line 712
    .line 713
    move-object/from16 v17, v7

    .line 714
    .line 715
    move-wide/from16 v32, v11

    .line 716
    .line 717
    move-object v12, v6

    .line 718
    move-wide/from16 v6, v32

    .line 719
    .line 720
    const/4 v11, 0x0

    .line 721
    move-object/from16 v18, v12

    .line 722
    .line 723
    move-object/from16 v19, v13

    .line 724
    .line 725
    const-wide/16 v12, 0x0

    .line 726
    .line 727
    move-wide/from16 v32, v14

    .line 728
    .line 729
    move-object v15, v3

    .line 730
    move-object v3, v5

    .line 731
    move-wide/from16 v4, v32

    .line 732
    .line 733
    const/16 v20, 0x2

    .line 734
    .line 735
    const/4 v14, 0x0

    .line 736
    move-object/from16 v25, v15

    .line 737
    .line 738
    const/4 v15, 0x0

    .line 739
    const/16 v26, 0x6

    .line 740
    .line 741
    const/16 v16, 0x0

    .line 742
    .line 743
    move-object/from16 v27, v17

    .line 744
    .line 745
    const/16 v17, 0x0

    .line 746
    .line 747
    move-object/from16 v28, v18

    .line 748
    .line 749
    const/16 v18, 0x0

    .line 750
    .line 751
    const/16 v29, 0x2

    .line 752
    .line 753
    const/16 v20, 0x0

    .line 754
    .line 755
    move-object/from16 v0, v19

    .line 756
    .line 757
    move-object/from16 v19, v1

    .line 758
    .line 759
    move-object v1, v0

    .line 760
    const/4 v0, 0x1

    .line 761
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 762
    .line 763
    .line 764
    move-object/from16 v2, v19

    .line 765
    .line 766
    invoke-virtual {v2, v0}, Lf1/s;->p(Z)V

    .line 767
    .line 768
    .line 769
    move-object/from16 v15, v25

    .line 770
    .line 771
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-object v0, v2

    .line 775
    move-object v2, v1

    .line 776
    move-object v1, v0

    .line 777
    move-object/from16 v0, p0

    .line 778
    .line 779
    move-object v3, v15

    .line 780
    move-object/from16 v7, v27

    .line 781
    .line 782
    move-object/from16 v6, v28

    .line 783
    .line 784
    const/4 v4, 0x2

    .line 785
    const/4 v9, 0x6

    .line 786
    goto/16 :goto_8

    .line 787
    .line 788
    :cond_16
    move-object v2, v1

    .line 789
    move-object v15, v3

    .line 790
    const/4 v0, 0x1

    .line 791
    invoke-virtual {v2, v10}, Lf1/s;->p(Z)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2, v0}, Lf1/s;->p(Z)V

    .line 795
    .line 796
    .line 797
    :goto_c
    return-object v15

    .line 798
    :pswitch_7
    move-object/from16 v0, p1

    .line 799
    .line 800
    check-cast v0, Lf1/s;

    .line 801
    .line 802
    move-object/from16 v1, p2

    .line 803
    .line 804
    check-cast v1, Ljava/lang/Number;

    .line 805
    .line 806
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    and-int/lit8 v2, v1, 0x3

    .line 811
    .line 812
    const/4 v3, 0x2

    .line 813
    const/4 v4, 0x0

    .line 814
    const/4 v5, 0x1

    .line 815
    if-eq v2, v3, :cond_17

    .line 816
    .line 817
    const/4 v2, 0x1

    .line 818
    goto :goto_d

    .line 819
    :cond_17
    const/4 v2, 0x0

    .line 820
    :goto_d
    and-int/2addr v1, v5

    .line 821
    invoke-virtual {v0, v1, v2}, Lf1/s;->N(IZ)Z

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    if-eqz v1, :cond_1a

    .line 826
    .line 827
    move-object/from16 v1, p0

    .line 828
    .line 829
    iget-object v2, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 830
    .line 831
    check-cast v2, Ls0/e;

    .line 832
    .line 833
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 838
    .line 839
    move-object v7, v3

    .line 840
    check-cast v7, Ls0/e;

    .line 841
    .line 842
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    if-nez v2, :cond_18

    .line 847
    .line 848
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 849
    .line 850
    if-ne v3, v2, :cond_19

    .line 851
    .line 852
    :cond_18
    new-instance v5, Lc/l0;

    .line 853
    .line 854
    const/4 v12, 0x0

    .line 855
    const/4 v13, 0x2

    .line 856
    const/4 v6, 0x0

    .line 857
    const-class v8, Ls0/e;

    .line 858
    .line 859
    const-string v9, "data"

    .line 860
    .line 861
    const-string v10, "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;"

    .line 862
    .line 863
    const/4 v11, 0x0

    .line 864
    invoke-direct/range {v5 .. v13}, Lc/l0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 865
    .line 866
    .line 867
    invoke-static {v5}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 872
    .line 873
    .line 874
    :cond_19
    check-cast v3, Lf1/v2;

    .line 875
    .line 876
    iget-object v2, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 877
    .line 878
    check-cast v2, Ls0/b;

    .line 879
    .line 880
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    check-cast v3, Lo0/c;

    .line 885
    .line 886
    invoke-static {v2, v3, v0, v4}, Lq0/k;->a(Ls0/b;Lo0/c;Lf1/s;I)V

    .line 887
    .line 888
    .line 889
    goto :goto_e

    .line 890
    :cond_1a
    move-object/from16 v1, p0

    .line 891
    .line 892
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 893
    .line 894
    .line 895
    :goto_e
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 896
    .line 897
    return-object v0

    .line 898
    :pswitch_8
    move-object v1, v0

    .line 899
    move-object/from16 v0, p1

    .line 900
    .line 901
    check-cast v0, Lf1/s;

    .line 902
    .line 903
    move-object/from16 v2, p2

    .line 904
    .line 905
    check-cast v2, Ljava/lang/Number;

    .line 906
    .line 907
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 908
    .line 909
    .line 910
    move-result v2

    .line 911
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v3, Landroid/content/Context;

    .line 914
    .line 915
    and-int/lit8 v2, v2, 0x3

    .line 916
    .line 917
    const/4 v4, 0x2

    .line 918
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 919
    .line 920
    if-ne v2, v4, :cond_1c

    .line 921
    .line 922
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    if-nez v2, :cond_1b

    .line 927
    .line 928
    goto :goto_f

    .line 929
    :cond_1b
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_10

    .line 933
    .line 934
    :cond_1c
    :goto_f
    const v2, 0x6e3c21fe

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0, v2}, Lf1/s;->W(I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v4

    .line 944
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 945
    .line 946
    if-ne v4, v6, :cond_1d

    .line 947
    .line 948
    const-string v4, "usb"

    .line 949
    .line 950
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v4

    .line 954
    const-string v7, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    .line 955
    .line 956
    invoke-static {v4, v7}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 960
    .line 961
    invoke-virtual {v0, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 962
    .line 963
    .line 964
    :cond_1d
    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 965
    .line 966
    const/4 v7, 0x0

    .line 967
    invoke-static {v0, v7, v2}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    if-ne v2, v6, :cond_1e

    .line 972
    .line 973
    new-instance v2, Lp1/p;

    .line 974
    .line 975
    invoke-direct {v2}, Lp1/p;-><init>()V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v0, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 979
    .line 980
    .line 981
    :cond_1e
    check-cast v2, Lp1/p;

    .line 982
    .line 983
    invoke-virtual {v0, v7}, Lf1/s;->p(Z)V

    .line 984
    .line 985
    .line 986
    const v8, -0x615d173a

    .line 987
    .line 988
    .line 989
    invoke-virtual {v0, v8}, Lf1/s;->W(I)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    move-result v8

    .line 996
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v9

    .line 1000
    const/4 v10, 0x0

    .line 1001
    if-nez v8, :cond_1f

    .line 1002
    .line 1003
    if-ne v9, v6, :cond_20

    .line 1004
    .line 1005
    :cond_1f
    new-instance v9, Lb8/m;

    .line 1006
    .line 1007
    const/16 v8, 0xa

    .line 1008
    .line 1009
    invoke-direct {v9, v2, v4, v10, v8}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1013
    .line 1014
    .line 1015
    :cond_20
    check-cast v9, Lf9/n;

    .line 1016
    .line 1017
    invoke-virtual {v0, v7}, Lf1/s;->p(Z)V

    .line 1018
    .line 1019
    .line 1020
    invoke-static {v0, v9, v5}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    const v8, -0x6815fd56

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0, v8}, Lf1/s;->W(I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v8

    .line 1033
    invoke-virtual {v0, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v9

    .line 1037
    or-int/2addr v8, v9

    .line 1038
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v9

    .line 1042
    if-nez v8, :cond_21

    .line 1043
    .line 1044
    if-ne v9, v6, :cond_22

    .line 1045
    .line 1046
    :cond_21
    new-instance v9, Ll0/u;

    .line 1047
    .line 1048
    const/16 v6, 0x8

    .line 1049
    .line 1050
    invoke-direct {v9, v3, v4, v2, v6}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v0, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    :cond_22
    check-cast v9, Lf9/k;

    .line 1057
    .line 1058
    invoke-virtual {v0, v7}, Lf1/s;->p(Z)V

    .line 1059
    .line 1060
    .line 1061
    invoke-static {v5, v9, v0}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v3, Lc8/s;

    .line 1065
    .line 1066
    iget-object v4, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v4, Lp1/p;

    .line 1069
    .line 1070
    const/16 v6, 0xc

    .line 1071
    .line 1072
    invoke-direct {v3, v6, v2, v4}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1073
    .line 1074
    .line 1075
    const v2, -0x2e703e9a

    .line 1076
    .line 1077
    .line 1078
    invoke-static {v2, v3, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    const/16 v3, 0x30

    .line 1083
    .line 1084
    const/4 v4, 0x1

    .line 1085
    invoke-static {v10, v2, v0, v3, v4}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 1086
    .line 1087
    .line 1088
    :goto_10
    return-object v5

    .line 1089
    :pswitch_9
    move-object v1, v0

    .line 1090
    move-object/from16 v15, p1

    .line 1091
    .line 1092
    check-cast v15, Lf1/s;

    .line 1093
    .line 1094
    move-object/from16 v0, p2

    .line 1095
    .line 1096
    check-cast v0, Ljava/lang/Number;

    .line 1097
    .line 1098
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1099
    .line 1100
    .line 1101
    move-result v0

    .line 1102
    and-int/lit8 v0, v0, 0x3

    .line 1103
    .line 1104
    const/4 v2, 0x2

    .line 1105
    if-ne v0, v2, :cond_24

    .line 1106
    .line 1107
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v0

    .line 1111
    if-nez v0, :cond_23

    .line 1112
    .line 1113
    goto :goto_11

    .line 1114
    :cond_23
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_15

    .line 1118
    .line 1119
    :cond_24
    :goto_11
    sget-object v11, Lm7/d;->d:Ln1/c;

    .line 1120
    .line 1121
    sget-object v12, Lm7/d;->e:Ln1/c;

    .line 1122
    .line 1123
    const/16 v16, 0x36

    .line 1124
    .line 1125
    const/16 v17, 0xc

    .line 1126
    .line 1127
    const/4 v13, 0x0

    .line 1128
    const/4 v14, 0x0

    .line 1129
    invoke-static/range {v11 .. v17}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 1130
    .line 1131
    .line 1132
    sget-object v0, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 1133
    .line 1134
    const/16 v3, 0x42

    .line 1135
    .line 1136
    int-to-float v3, v3

    .line 1137
    const/16 v4, 0x1f4

    .line 1138
    .line 1139
    int-to-float v4, v4

    .line 1140
    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/layout/c;->c(Lr1/p;FF)Lr1/p;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 1145
    .line 1146
    check-cast v3, Lp1/p;

    .line 1147
    .line 1148
    iget-object v4, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 1149
    .line 1150
    check-cast v4, Lp1/p;

    .line 1151
    .line 1152
    sget-object v5, Lr1/c;->a:Lr1/h;

    .line 1153
    .line 1154
    const/4 v6, 0x0

    .line 1155
    invoke-static {v5, v6}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v5

    .line 1159
    iget-wide v7, v15, Lf1/s;->T:J

    .line 1160
    .line 1161
    const/16 v9, 0x20

    .line 1162
    .line 1163
    ushr-long v10, v7, v9

    .line 1164
    .line 1165
    xor-long/2addr v7, v10

    .line 1166
    long-to-int v8, v7

    .line 1167
    invoke-virtual {v15}, Lf1/s;->l()Lf1/q1;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v7

    .line 1171
    invoke-static {v15, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    sget-object v10, Lq2/j;->d0:Lq2/i;

    .line 1176
    .line 1177
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    sget-object v10, Lq2/i;->b:Lq2/a0;

    .line 1181
    .line 1182
    invoke-virtual {v15}, Lf1/s;->a0()V

    .line 1183
    .line 1184
    .line 1185
    iget-boolean v11, v15, Lf1/s;->S:Z

    .line 1186
    .line 1187
    if-eqz v11, :cond_25

    .line 1188
    .line 1189
    invoke-virtual {v15, v10}, Lf1/s;->k(Lf9/a;)V

    .line 1190
    .line 1191
    .line 1192
    goto :goto_12

    .line 1193
    :cond_25
    invoke-virtual {v15}, Lf1/s;->k0()V

    .line 1194
    .line 1195
    .line 1196
    :goto_12
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 1197
    .line 1198
    invoke-static {v15, v11, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1199
    .line 1200
    .line 1201
    sget-object v5, Lq2/i;->d:Lq2/h;

    .line 1202
    .line 1203
    invoke-static {v15, v5, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1204
    .line 1205
    .line 1206
    sget-object v7, Lq2/i;->f:Lq2/h;

    .line 1207
    .line 1208
    iget-boolean v12, v15, Lf1/s;->S:Z

    .line 1209
    .line 1210
    if-nez v12, :cond_26

    .line 1211
    .line 1212
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v12

    .line 1216
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v13

    .line 1220
    invoke-static {v12, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v12

    .line 1224
    if-nez v12, :cond_27

    .line 1225
    .line 1226
    :cond_26
    invoke-static {v8, v15, v8, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1227
    .line 1228
    .line 1229
    :cond_27
    sget-object v8, Lq2/i;->c:Lq2/h;

    .line 1230
    .line 1231
    invoke-static {v15, v8, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1232
    .line 1233
    .line 1234
    const v0, 0x1c422d9e

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v15, v0}, Lf1/s;->W(I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v3}, Lp1/p;->isEmpty()Z

    .line 1241
    .line 1242
    .line 1243
    move-result v0

    .line 1244
    const/4 v12, 0x1

    .line 1245
    if-eqz v0, :cond_2b

    .line 1246
    .line 1247
    const/16 v0, 0xa

    .line 1248
    .line 1249
    int-to-float v0, v0

    .line 1250
    sget-object v13, Lr1/m;->a:Lr1/m;

    .line 1251
    .line 1252
    const/4 v14, 0x0

    .line 1253
    invoke-static {v13, v14, v0, v12}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    sget-object v13, Ld0/h;->a:Ld0/b;

    .line 1258
    .line 1259
    sget-object v14, Lr1/c;->j:Lr1/g;

    .line 1260
    .line 1261
    invoke-static {v13, v14, v15, v6}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v13

    .line 1265
    move-object/from16 p2, v3

    .line 1266
    .line 1267
    iget-wide v2, v15, Lf1/s;->T:J

    .line 1268
    .line 1269
    ushr-long v16, v2, v9

    .line 1270
    .line 1271
    xor-long v2, v2, v16

    .line 1272
    .line 1273
    long-to-int v3, v2

    .line 1274
    invoke-virtual {v15}, Lf1/s;->l()Lf1/q1;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v2

    .line 1278
    invoke-static {v15, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    invoke-virtual {v15}, Lf1/s;->a0()V

    .line 1283
    .line 1284
    .line 1285
    iget-boolean v9, v15, Lf1/s;->S:Z

    .line 1286
    .line 1287
    if-eqz v9, :cond_28

    .line 1288
    .line 1289
    invoke-virtual {v15, v10}, Lf1/s;->k(Lf9/a;)V

    .line 1290
    .line 1291
    .line 1292
    goto :goto_13

    .line 1293
    :cond_28
    invoke-virtual {v15}, Lf1/s;->k0()V

    .line 1294
    .line 1295
    .line 1296
    :goto_13
    invoke-static {v15, v11, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1297
    .line 1298
    .line 1299
    invoke-static {v15, v5, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1300
    .line 1301
    .line 1302
    iget-boolean v2, v15, Lf1/s;->S:Z

    .line 1303
    .line 1304
    if-nez v2, :cond_29

    .line 1305
    .line 1306
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v2

    .line 1310
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v5

    .line 1314
    invoke-static {v2, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v2

    .line 1318
    if-nez v2, :cond_2a

    .line 1319
    .line 1320
    :cond_29
    invoke-static {v3, v15, v3, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1321
    .line 1322
    .line 1323
    :cond_2a
    invoke-static {v15, v8, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1324
    .line 1325
    .line 1326
    const-string v0, "\u8bf7\u63d2\u5165USB\u8bbe\u5907"

    .line 1327
    .line 1328
    const/4 v2, 0x6

    .line 1329
    const/4 v3, 0x0

    .line 1330
    const/4 v5, 0x2

    .line 1331
    invoke-static {v0, v3, v15, v2, v5}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    .line 1335
    .line 1336
    .line 1337
    goto :goto_14

    .line 1338
    :cond_2b
    move-object/from16 p2, v3

    .line 1339
    .line 1340
    :goto_14
    const v0, -0x615d173a

    .line 1341
    .line 1342
    .line 1343
    invoke-static {v15, v6, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 1348
    .line 1349
    if-ne v0, v2, :cond_2c

    .line 1350
    .line 1351
    new-instance v0, La8/v;

    .line 1352
    .line 1353
    const/16 v2, 0xf

    .line 1354
    .line 1355
    move-object/from16 v3, p2

    .line 1356
    .line 1357
    invoke-direct {v0, v2, v3, v4}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v15, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1361
    .line 1362
    .line 1363
    :cond_2c
    move-object/from16 v17, v0

    .line 1364
    .line 1365
    check-cast v17, Lf9/k;

    .line 1366
    .line 1367
    invoke-virtual {v15, v6}, Lf1/s;->p(Z)V

    .line 1368
    .line 1369
    .line 1370
    const/high16 v11, 0x30000000

    .line 1371
    .line 1372
    const/4 v0, 0x1

    .line 1373
    const/16 v12, 0x1ff

    .line 1374
    .line 1375
    const/4 v13, 0x0

    .line 1376
    const/4 v14, 0x0

    .line 1377
    move-object/from16 v16, v15

    .line 1378
    .line 1379
    const/4 v15, 0x0

    .line 1380
    const/16 v18, 0x0

    .line 1381
    .line 1382
    const/16 v19, 0x0

    .line 1383
    .line 1384
    const/16 v20, 0x0

    .line 1385
    .line 1386
    const/16 v21, 0x0

    .line 1387
    .line 1388
    const/16 v22, 0x0

    .line 1389
    .line 1390
    invoke-static/range {v11 .. v22}, Lc7/a;->b(IILd0/g;Ld0/h0;Lf0/u;Lf1/s;Lf9/k;Lr1/f;Lr1/p;Lx/h;Lz/h;Z)V

    .line 1391
    .line 1392
    .line 1393
    move-object/from16 v15, v16

    .line 1394
    .line 1395
    invoke-virtual {v15, v0}, Lf1/s;->p(Z)V

    .line 1396
    .line 1397
    .line 1398
    :goto_15
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1399
    .line 1400
    return-object v0

    .line 1401
    :pswitch_a
    move-object v1, v0

    .line 1402
    move-object/from16 v0, p1

    .line 1403
    .line 1404
    check-cast v0, Lf1/s;

    .line 1405
    .line 1406
    move-object/from16 v2, p2

    .line 1407
    .line 1408
    check-cast v2, Ljava/lang/Number;

    .line 1409
    .line 1410
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    iget-object v3, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 1415
    .line 1416
    check-cast v3, Ljava/lang/String;

    .line 1417
    .line 1418
    and-int/lit8 v2, v2, 0x3

    .line 1419
    .line 1420
    const/4 v4, 0x2

    .line 1421
    if-ne v2, v4, :cond_2e

    .line 1422
    .line 1423
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 1424
    .line 1425
    .line 1426
    move-result v2

    .line 1427
    if-nez v2, :cond_2d

    .line 1428
    .line 1429
    goto :goto_16

    .line 1430
    :cond_2d
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 1431
    .line 1432
    .line 1433
    goto :goto_17

    .line 1434
    :cond_2e
    :goto_16
    iget-object v2, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 1435
    .line 1436
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 1437
    .line 1438
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v2

    .line 1442
    if-nez v2, :cond_2f

    .line 1443
    .line 1444
    move-object v2, v3

    .line 1445
    :cond_2f
    const/4 v5, 0x0

    .line 1446
    const/4 v6, 0x0

    .line 1447
    invoke-static {v2, v5, v0, v6, v4}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 1448
    .line 1449
    .line 1450
    invoke-static {v3, v0, v6}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 1451
    .line 1452
    .line 1453
    :goto_17
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1454
    .line 1455
    return-object v0

    .line 1456
    :pswitch_b
    move-object v1, v0

    .line 1457
    move-object/from16 v8, p1

    .line 1458
    .line 1459
    check-cast v8, Lf1/s;

    .line 1460
    .line 1461
    move-object/from16 v0, p2

    .line 1462
    .line 1463
    check-cast v0, Ljava/lang/Number;

    .line 1464
    .line 1465
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1466
    .line 1467
    .line 1468
    move-result v0

    .line 1469
    iget-object v2, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 1470
    .line 1471
    check-cast v2, Lf9/n;

    .line 1472
    .line 1473
    and-int/lit8 v0, v0, 0x3

    .line 1474
    .line 1475
    const/4 v3, 0x2

    .line 1476
    if-ne v0, v3, :cond_31

    .line 1477
    .line 1478
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 1479
    .line 1480
    .line 1481
    move-result v0

    .line 1482
    if-nez v0, :cond_30

    .line 1483
    .line 1484
    goto :goto_18

    .line 1485
    :cond_30
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 1486
    .line 1487
    .line 1488
    goto :goto_19

    .line 1489
    :cond_31
    :goto_18
    const v0, -0x615d173a

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v8, v0}, Lf1/s;->W(I)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1496
    .line 1497
    .line 1498
    move-result v0

    .line 1499
    iget-object v3, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 1500
    .line 1501
    check-cast v3, Lf1/b1;

    .line 1502
    .line 1503
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v4

    .line 1507
    if-nez v0, :cond_32

    .line 1508
    .line 1509
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 1510
    .line 1511
    if-ne v4, v0, :cond_33

    .line 1512
    .line 1513
    :cond_32
    new-instance v4, La8/n0;

    .line 1514
    .line 1515
    const/4 v0, 0x7

    .line 1516
    invoke-direct {v4, v0, v2, v3}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1517
    .line 1518
    .line 1519
    invoke-virtual {v8, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1520
    .line 1521
    .line 1522
    :cond_33
    move-object v7, v4

    .line 1523
    check-cast v7, Lf9/a;

    .line 1524
    .line 1525
    const/4 v0, 0x0

    .line 1526
    invoke-virtual {v8, v0}, Lf1/s;->p(Z)V

    .line 1527
    .line 1528
    .line 1529
    const/4 v9, 0x6

    .line 1530
    const/4 v10, 0x6

    .line 1531
    const-string v2, "\u4e0a\u4f20"

    .line 1532
    .line 1533
    const-wide/16 v3, 0x0

    .line 1534
    .line 1535
    const-wide/16 v5, 0x0

    .line 1536
    .line 1537
    invoke-static/range {v2 .. v10}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 1538
    .line 1539
    .line 1540
    :goto_19
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1541
    .line 1542
    return-object v0

    .line 1543
    :pswitch_c
    move-object v1, v0

    .line 1544
    move-object/from16 v0, p1

    .line 1545
    .line 1546
    check-cast v0, Lf1/s;

    .line 1547
    .line 1548
    move-object/from16 v2, p2

    .line 1549
    .line 1550
    check-cast v2, Ljava/lang/Number;

    .line 1551
    .line 1552
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1553
    .line 1554
    .line 1555
    move-result v2

    .line 1556
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 1557
    .line 1558
    move-object v5, v3

    .line 1559
    check-cast v5, Lf9/k;

    .line 1560
    .line 1561
    iget-object v3, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 1562
    .line 1563
    check-cast v3, Ljava/util/List;

    .line 1564
    .line 1565
    and-int/lit8 v2, v2, 0x3

    .line 1566
    .line 1567
    const/4 v4, 0x2

    .line 1568
    if-ne v2, v4, :cond_35

    .line 1569
    .line 1570
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 1571
    .line 1572
    .line 1573
    move-result v2

    .line 1574
    if-nez v2, :cond_34

    .line 1575
    .line 1576
    goto :goto_1a

    .line 1577
    :cond_34
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 1578
    .line 1579
    .line 1580
    goto/16 :goto_1d

    .line 1581
    .line 1582
    :cond_35
    :goto_1a
    const v2, 0x6e3c21fe

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v0, v2}, Lf1/s;->W(I)V

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v4

    .line 1592
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 1593
    .line 1594
    if-ne v4, v6, :cond_36

    .line 1595
    .line 1596
    invoke-static {v3}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v4

    .line 1600
    check-cast v4, Ljava/lang/String;

    .line 1601
    .line 1602
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1603
    .line 1604
    .line 1605
    move-result v4

    .line 1606
    new-instance v7, Lf1/h1;

    .line 1607
    .line 1608
    invoke-direct {v7, v4}, Lf1/h1;-><init>(I)V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v0, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1612
    .line 1613
    .line 1614
    move-object v4, v7

    .line 1615
    :cond_36
    check-cast v4, Lf1/h1;

    .line 1616
    .line 1617
    const/4 v10, 0x0

    .line 1618
    invoke-static {v0, v10, v2}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v2

    .line 1622
    if-ne v2, v6, :cond_37

    .line 1623
    .line 1624
    invoke-static {v3}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v2

    .line 1628
    check-cast v2, Ljava/lang/String;

    .line 1629
    .line 1630
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1631
    .line 1632
    .line 1633
    move-result v2

    .line 1634
    new-instance v3, Lf1/h1;

    .line 1635
    .line 1636
    invoke-direct {v3, v2}, Lf1/h1;-><init>(I)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1640
    .line 1641
    .line 1642
    move-object v2, v3

    .line 1643
    :cond_37
    move-object v7, v2

    .line 1644
    check-cast v7, Lf1/h1;

    .line 1645
    .line 1646
    invoke-virtual {v0, v10}, Lf1/s;->p(Z)V

    .line 1647
    .line 1648
    .line 1649
    invoke-virtual {v4}, Lf1/h1;->f()I

    .line 1650
    .line 1651
    .line 1652
    move-result v2

    .line 1653
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v2

    .line 1657
    invoke-virtual {v7}, Lf1/h1;->f()I

    .line 1658
    .line 1659
    .line 1660
    move-result v3

    .line 1661
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v3

    .line 1665
    const v8, -0x6815fd56

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v0, v8}, Lf1/s;->W(I)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v0, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v8

    .line 1675
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v9

    .line 1679
    move v11, v8

    .line 1680
    const/4 v8, 0x0

    .line 1681
    if-nez v11, :cond_38

    .line 1682
    .line 1683
    if-ne v9, v6, :cond_39

    .line 1684
    .line 1685
    :cond_38
    move-object v6, v4

    .line 1686
    goto :goto_1b

    .line 1687
    :cond_39
    move-object v6, v4

    .line 1688
    goto :goto_1c

    .line 1689
    :goto_1b
    new-instance v4, Lj8/n;

    .line 1690
    .line 1691
    const/4 v9, 0x1

    .line 1692
    invoke-direct/range {v4 .. v9}, Lj8/n;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lw8/c;I)V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v0, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1696
    .line 1697
    .line 1698
    move-object v9, v4

    .line 1699
    :goto_1c
    check-cast v9, Lf9/n;

    .line 1700
    .line 1701
    invoke-virtual {v0, v10}, Lf1/s;->p(Z)V

    .line 1702
    .line 1703
    .line 1704
    invoke-static {v2, v3, v9, v0}, Lf1/b;->g(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lf1/s;)V

    .line 1705
    .line 1706
    .line 1707
    new-instance v2, Lc8/s;

    .line 1708
    .line 1709
    const/16 v3, 0x8

    .line 1710
    .line 1711
    invoke-direct {v2, v3, v6, v7}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1712
    .line 1713
    .line 1714
    const v3, 0x501b83e6

    .line 1715
    .line 1716
    .line 1717
    invoke-static {v3, v2, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v2

    .line 1721
    const/16 v3, 0x30

    .line 1722
    .line 1723
    const/4 v4, 0x1

    .line 1724
    invoke-static {v8, v2, v0, v3, v4}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 1725
    .line 1726
    .line 1727
    :goto_1d
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1728
    .line 1729
    return-object v0

    .line 1730
    :pswitch_d
    move-object v1, v0

    .line 1731
    move-object/from16 v6, p1

    .line 1732
    .line 1733
    check-cast v6, Lf1/s;

    .line 1734
    .line 1735
    move-object/from16 v0, p2

    .line 1736
    .line 1737
    check-cast v0, Ljava/lang/Number;

    .line 1738
    .line 1739
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1740
    .line 1741
    .line 1742
    move-result v0

    .line 1743
    and-int/lit8 v0, v0, 0x3

    .line 1744
    .line 1745
    const/4 v2, 0x2

    .line 1746
    if-ne v0, v2, :cond_3b

    .line 1747
    .line 1748
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 1749
    .line 1750
    .line 1751
    move-result v0

    .line 1752
    if-nez v0, :cond_3a

    .line 1753
    .line 1754
    goto :goto_1e

    .line 1755
    :cond_3a
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 1756
    .line 1757
    .line 1758
    goto/16 :goto_27

    .line 1759
    .line 1760
    :cond_3b
    :goto_1e
    iget-object v0, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 1761
    .line 1762
    check-cast v0, Lf1/h1;

    .line 1763
    .line 1764
    iget-object v2, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 1765
    .line 1766
    move-object v8, v2

    .line 1767
    check-cast v8, Lf1/h1;

    .line 1768
    .line 1769
    sget-object v9, Ld0/h;->a:Ld0/b;

    .line 1770
    .line 1771
    sget-object v10, Lr1/c;->j:Lr1/g;

    .line 1772
    .line 1773
    const/4 v11, 0x0

    .line 1774
    invoke-static {v9, v10, v6, v11}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v2

    .line 1778
    iget-wide v3, v6, Lf1/s;->T:J

    .line 1779
    .line 1780
    const/16 v12, 0x20

    .line 1781
    .line 1782
    ushr-long v13, v3, v12

    .line 1783
    .line 1784
    xor-long/2addr v3, v13

    .line 1785
    long-to-int v4, v3

    .line 1786
    invoke-virtual {v6}, Lf1/s;->l()Lf1/q1;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v3

    .line 1790
    sget-object v13, Lr1/m;->a:Lr1/m;

    .line 1791
    .line 1792
    invoke-static {v6, v13}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v5

    .line 1796
    sget-object v7, Lq2/j;->d0:Lq2/i;

    .line 1797
    .line 1798
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1799
    .line 1800
    .line 1801
    sget-object v14, Lq2/i;->b:Lq2/a0;

    .line 1802
    .line 1803
    invoke-virtual {v6}, Lf1/s;->a0()V

    .line 1804
    .line 1805
    .line 1806
    iget-boolean v7, v6, Lf1/s;->S:Z

    .line 1807
    .line 1808
    if-eqz v7, :cond_3c

    .line 1809
    .line 1810
    invoke-virtual {v6, v14}, Lf1/s;->k(Lf9/a;)V

    .line 1811
    .line 1812
    .line 1813
    goto :goto_1f

    .line 1814
    :cond_3c
    invoke-virtual {v6}, Lf1/s;->k0()V

    .line 1815
    .line 1816
    .line 1817
    :goto_1f
    sget-object v15, Lq2/i;->e:Lq2/h;

    .line 1818
    .line 1819
    invoke-static {v6, v15, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1820
    .line 1821
    .line 1822
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 1823
    .line 1824
    invoke-static {v6, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1825
    .line 1826
    .line 1827
    sget-object v3, Lq2/i;->f:Lq2/h;

    .line 1828
    .line 1829
    iget-boolean v7, v6, Lf1/s;->S:Z

    .line 1830
    .line 1831
    if-nez v7, :cond_3d

    .line 1832
    .line 1833
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v7

    .line 1837
    const/16 p1, 0x20

    .line 1838
    .line 1839
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v12

    .line 1843
    invoke-static {v7, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1844
    .line 1845
    .line 1846
    move-result v7

    .line 1847
    if-nez v7, :cond_3e

    .line 1848
    .line 1849
    goto :goto_20

    .line 1850
    :cond_3d
    const/16 p1, 0x20

    .line 1851
    .line 1852
    :goto_20
    invoke-static {v4, v6, v4, v3}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1853
    .line 1854
    .line 1855
    :cond_3e
    sget-object v12, Lq2/i;->c:Lq2/h;

    .line 1856
    .line 1857
    invoke-static {v6, v12, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1858
    .line 1859
    .line 1860
    invoke-static {}, La2/f;->Q()Lr1/p;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v4

    .line 1864
    invoke-static {v9, v10, v6, v11}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v5

    .line 1868
    move-object/from16 v16, v12

    .line 1869
    .line 1870
    iget-wide v11, v6, Lf1/s;->T:J

    .line 1871
    .line 1872
    ushr-long v17, v11, p1

    .line 1873
    .line 1874
    xor-long v11, v11, v17

    .line 1875
    .line 1876
    long-to-int v7, v11

    .line 1877
    invoke-virtual {v6}, Lf1/s;->l()Lf1/q1;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v11

    .line 1881
    invoke-static {v6, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v4

    .line 1885
    invoke-virtual {v6}, Lf1/s;->a0()V

    .line 1886
    .line 1887
    .line 1888
    iget-boolean v12, v6, Lf1/s;->S:Z

    .line 1889
    .line 1890
    if-eqz v12, :cond_3f

    .line 1891
    .line 1892
    invoke-virtual {v6, v14}, Lf1/s;->k(Lf9/a;)V

    .line 1893
    .line 1894
    .line 1895
    goto :goto_21

    .line 1896
    :cond_3f
    invoke-virtual {v6}, Lf1/s;->k0()V

    .line 1897
    .line 1898
    .line 1899
    :goto_21
    invoke-static {v6, v15, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1900
    .line 1901
    .line 1902
    invoke-static {v6, v2, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1903
    .line 1904
    .line 1905
    iget-boolean v5, v6, Lf1/s;->S:Z

    .line 1906
    .line 1907
    if-nez v5, :cond_41

    .line 1908
    .line 1909
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v5

    .line 1913
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v11

    .line 1917
    invoke-static {v5, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1918
    .line 1919
    .line 1920
    move-result v5

    .line 1921
    if-nez v5, :cond_40

    .line 1922
    .line 1923
    goto :goto_23

    .line 1924
    :cond_40
    :goto_22
    move-object/from16 v11, v16

    .line 1925
    .line 1926
    goto :goto_24

    .line 1927
    :cond_41
    :goto_23
    invoke-static {v7, v6, v7, v3}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1928
    .line 1929
    .line 1930
    goto :goto_22

    .line 1931
    :goto_24
    invoke-static {v6, v11, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1932
    .line 1933
    .line 1934
    move-object v4, v3

    .line 1935
    new-instance v3, Ll9/d;

    .line 1936
    .line 1937
    const/16 v5, 0x17

    .line 1938
    .line 1939
    const/4 v12, 0x1

    .line 1940
    const/4 v7, 0x0

    .line 1941
    invoke-direct {v3, v7, v5, v12}, Ll9/b;-><init>(III)V

    .line 1942
    .line 1943
    .line 1944
    move-object v5, v4

    .line 1945
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 1946
    .line 1947
    .line 1948
    move-result v4

    .line 1949
    const v7, 0x4c5de2

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v6, v7}, Lf1/s;->W(I)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v7

    .line 1959
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 1960
    .line 1961
    if-ne v7, v12, :cond_42

    .line 1962
    .line 1963
    new-instance v7, Lc8/c0;

    .line 1964
    .line 1965
    move-object/from16 v18, v2

    .line 1966
    .line 1967
    const/4 v2, 0x4

    .line 1968
    invoke-direct {v7, v0, v2}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v6, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1972
    .line 1973
    .line 1974
    goto :goto_25

    .line 1975
    :cond_42
    move-object/from16 v18, v2

    .line 1976
    .line 1977
    :goto_25
    check-cast v7, Lf9/k;

    .line 1978
    .line 1979
    const/4 v0, 0x0

    .line 1980
    invoke-virtual {v6, v0}, Lf1/s;->p(Z)V

    .line 1981
    .line 1982
    .line 1983
    move-object v2, v5

    .line 1984
    move-object v5, v7

    .line 1985
    const/16 v7, 0xc06

    .line 1986
    .line 1987
    move-object/from16 v19, v2

    .line 1988
    .line 1989
    const-string v2, "\u5c0f\u65f6"

    .line 1990
    .line 1991
    move-object/from16 v30, v18

    .line 1992
    .line 1993
    move-object/from16 v31, v19

    .line 1994
    .line 1995
    invoke-static/range {v2 .. v7}, Lm9/e0;->C(Ljava/lang/String;Ll9/d;ILf9/k;Lf1/s;I)V

    .line 1996
    .line 1997
    .line 1998
    const/4 v2, 0x1

    .line 1999
    invoke-virtual {v6, v2}, Lf1/s;->p(Z)V

    .line 2000
    .line 2001
    .line 2002
    const/16 v2, 0xa

    .line 2003
    .line 2004
    invoke-static {v2, v6}, Lg5/a;->B(ILf1/s;)F

    .line 2005
    .line 2006
    .line 2007
    move-result v2

    .line 2008
    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v2

    .line 2012
    invoke-static {v6, v2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 2013
    .line 2014
    .line 2015
    invoke-static {}, La2/f;->Q()Lr1/p;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v2

    .line 2019
    invoke-static {v9, v10, v6, v0}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v3

    .line 2023
    iget-wide v4, v6, Lf1/s;->T:J

    .line 2024
    .line 2025
    ushr-long v9, v4, p1

    .line 2026
    .line 2027
    xor-long/2addr v4, v9

    .line 2028
    long-to-int v0, v4

    .line 2029
    invoke-virtual {v6}, Lf1/s;->l()Lf1/q1;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v4

    .line 2033
    invoke-static {v6, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v2

    .line 2037
    invoke-virtual {v6}, Lf1/s;->a0()V

    .line 2038
    .line 2039
    .line 2040
    iget-boolean v5, v6, Lf1/s;->S:Z

    .line 2041
    .line 2042
    if-eqz v5, :cond_43

    .line 2043
    .line 2044
    invoke-virtual {v6, v14}, Lf1/s;->k(Lf9/a;)V

    .line 2045
    .line 2046
    .line 2047
    goto :goto_26

    .line 2048
    :cond_43
    invoke-virtual {v6}, Lf1/s;->k0()V

    .line 2049
    .line 2050
    .line 2051
    :goto_26
    invoke-static {v6, v15, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 2052
    .line 2053
    .line 2054
    move-object/from16 v3, v30

    .line 2055
    .line 2056
    invoke-static {v6, v3, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 2057
    .line 2058
    .line 2059
    iget-boolean v3, v6, Lf1/s;->S:Z

    .line 2060
    .line 2061
    if-nez v3, :cond_44

    .line 2062
    .line 2063
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v3

    .line 2067
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v4

    .line 2071
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2072
    .line 2073
    .line 2074
    move-result v3

    .line 2075
    if-nez v3, :cond_45

    .line 2076
    .line 2077
    :cond_44
    move-object/from16 v4, v31

    .line 2078
    .line 2079
    invoke-static {v0, v6, v0, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 2080
    .line 2081
    .line 2082
    :cond_45
    invoke-static {v6, v11, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 2083
    .line 2084
    .line 2085
    new-instance v3, Ll9/d;

    .line 2086
    .line 2087
    const/16 v0, 0x3b

    .line 2088
    .line 2089
    const/4 v2, 0x1

    .line 2090
    const/4 v7, 0x0

    .line 2091
    invoke-direct {v3, v7, v0, v2}, Ll9/b;-><init>(III)V

    .line 2092
    .line 2093
    .line 2094
    invoke-virtual {v8}, Lf1/h1;->f()I

    .line 2095
    .line 2096
    .line 2097
    move-result v4

    .line 2098
    const v0, 0x4c5de2

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {v6, v0}, Lf1/s;->W(I)V

    .line 2102
    .line 2103
    .line 2104
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v0

    .line 2108
    if-ne v0, v12, :cond_46

    .line 2109
    .line 2110
    new-instance v0, Lc8/c0;

    .line 2111
    .line 2112
    const/4 v2, 0x5

    .line 2113
    invoke-direct {v0, v8, v2}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 2114
    .line 2115
    .line 2116
    invoke-virtual {v6, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2117
    .line 2118
    .line 2119
    :cond_46
    move-object v5, v0

    .line 2120
    check-cast v5, Lf9/k;

    .line 2121
    .line 2122
    const/4 v7, 0x0

    .line 2123
    invoke-virtual {v6, v7}, Lf1/s;->p(Z)V

    .line 2124
    .line 2125
    .line 2126
    const/16 v7, 0xc06

    .line 2127
    .line 2128
    const-string v2, "\u5206\u949f"

    .line 2129
    .line 2130
    invoke-static/range {v2 .. v7}, Lm9/e0;->C(Ljava/lang/String;Ll9/d;ILf9/k;Lf1/s;I)V

    .line 2131
    .line 2132
    .line 2133
    const/4 v2, 0x1

    .line 2134
    invoke-virtual {v6, v2}, Lf1/s;->p(Z)V

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual {v6, v2}, Lf1/s;->p(Z)V

    .line 2138
    .line 2139
    .line 2140
    :goto_27
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2141
    .line 2142
    return-object v0

    .line 2143
    :pswitch_e
    move-object v1, v0

    .line 2144
    move-object/from16 v0, p1

    .line 2145
    .line 2146
    check-cast v0, Lf1/s;

    .line 2147
    .line 2148
    move-object/from16 v2, p2

    .line 2149
    .line 2150
    check-cast v2, Ljava/lang/Number;

    .line 2151
    .line 2152
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2153
    .line 2154
    .line 2155
    move-result v2

    .line 2156
    and-int/lit8 v3, v2, 0x3

    .line 2157
    .line 2158
    const/4 v4, 0x2

    .line 2159
    const/4 v5, 0x0

    .line 2160
    const/4 v6, 0x1

    .line 2161
    if-eq v3, v4, :cond_47

    .line 2162
    .line 2163
    const/4 v3, 0x1

    .line 2164
    goto :goto_28

    .line 2165
    :cond_47
    const/4 v3, 0x0

    .line 2166
    :goto_28
    and-int/2addr v2, v6

    .line 2167
    invoke-virtual {v0, v2, v3}, Lf1/s;->N(IZ)Z

    .line 2168
    .line 2169
    .line 2170
    move-result v2

    .line 2171
    if-eqz v2, :cond_48

    .line 2172
    .line 2173
    iget-object v2, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2174
    .line 2175
    check-cast v2, Ln1/c;

    .line 2176
    .line 2177
    iget-object v3, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2178
    .line 2179
    check-cast v3, Lh0/o0;

    .line 2180
    .line 2181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2182
    .line 2183
    .line 2184
    move-result-object v4

    .line 2185
    invoke-virtual {v2, v3, v0, v4}, Ln1/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    .line 2187
    .line 2188
    goto :goto_29

    .line 2189
    :cond_48
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 2190
    .line 2191
    .line 2192
    :goto_29
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2193
    .line 2194
    return-object v0

    .line 2195
    :pswitch_f
    move-object v1, v0

    .line 2196
    move-object/from16 v6, p1

    .line 2197
    .line 2198
    check-cast v6, Lf1/s;

    .line 2199
    .line 2200
    move-object/from16 v0, p2

    .line 2201
    .line 2202
    check-cast v0, Ljava/lang/Number;

    .line 2203
    .line 2204
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2205
    .line 2206
    .line 2207
    move-result v0

    .line 2208
    iget-object v2, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2209
    .line 2210
    check-cast v2, Lh0/t;

    .line 2211
    .line 2212
    iget-object v3, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2213
    .line 2214
    move-object v8, v3

    .line 2215
    check-cast v8, Lh0/s;

    .line 2216
    .line 2217
    and-int/lit8 v3, v0, 0x3

    .line 2218
    .line 2219
    const/4 v4, 0x2

    .line 2220
    const/4 v5, 0x1

    .line 2221
    const/4 v9, 0x0

    .line 2222
    if-eq v3, v4, :cond_49

    .line 2223
    .line 2224
    const/4 v3, 0x1

    .line 2225
    goto :goto_2a

    .line 2226
    :cond_49
    const/4 v3, 0x0

    .line 2227
    :goto_2a
    and-int/2addr v0, v5

    .line 2228
    invoke-virtual {v6, v0, v3}, Lf1/s;->N(IZ)Z

    .line 2229
    .line 2230
    .line 2231
    move-result v0

    .line 2232
    if-eqz v0, :cond_4f

    .line 2233
    .line 2234
    iget-object v0, v2, Lh0/t;->b:La8/f;

    .line 2235
    .line 2236
    invoke-virtual {v0}, La8/f;->invoke()Ljava/lang/Object;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v0

    .line 2240
    check-cast v0, Lh0/v;

    .line 2241
    .line 2242
    iget v3, v8, Lh0/s;->c:I

    .line 2243
    .line 2244
    iget-object v10, v8, Lh0/s;->a:Ljava/lang/Object;

    .line 2245
    .line 2246
    invoke-interface {v0}, Lh0/v;->a()I

    .line 2247
    .line 2248
    .line 2249
    move-result v4

    .line 2250
    const/4 v5, -0x1

    .line 2251
    if-ge v3, v4, :cond_4b

    .line 2252
    .line 2253
    invoke-interface {v0, v3}, Lh0/v;->b(I)Ljava/lang/Object;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v4

    .line 2257
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2258
    .line 2259
    .line 2260
    move-result v4

    .line 2261
    if-nez v4, :cond_4a

    .line 2262
    .line 2263
    goto :goto_2c

    .line 2264
    :cond_4a
    :goto_2b
    move v4, v3

    .line 2265
    goto :goto_2d

    .line 2266
    :cond_4b
    :goto_2c
    invoke-interface {v0, v10}, Lh0/v;->d(Ljava/lang/Object;)I

    .line 2267
    .line 2268
    .line 2269
    move-result v3

    .line 2270
    if-eq v3, v5, :cond_4a

    .line 2271
    .line 2272
    iput v3, v8, Lh0/s;->c:I

    .line 2273
    .line 2274
    goto :goto_2b

    .line 2275
    :goto_2d
    if-eq v4, v5, :cond_4c

    .line 2276
    .line 2277
    const v3, -0x6339ef97

    .line 2278
    .line 2279
    .line 2280
    invoke-virtual {v6, v3}, Lf1/s;->W(I)V

    .line 2281
    .line 2282
    .line 2283
    iget-object v3, v2, Lh0/t;->a:Lo1/b;

    .line 2284
    .line 2285
    iget-object v5, v8, Lh0/s;->a:Ljava/lang/Object;

    .line 2286
    .line 2287
    const/4 v7, 0x0

    .line 2288
    move-object v2, v0

    .line 2289
    invoke-static/range {v2 .. v7}, Lh0/z;->d(Lh0/v;Ljava/lang/Object;ILjava/lang/Object;Lf1/s;I)V

    .line 2290
    .line 2291
    .line 2292
    invoke-virtual {v6, v9}, Lf1/s;->p(Z)V

    .line 2293
    .line 2294
    .line 2295
    goto :goto_2e

    .line 2296
    :cond_4c
    const v0, -0x633657e2

    .line 2297
    .line 2298
    .line 2299
    invoke-virtual {v6, v0}, Lf1/s;->W(I)V

    .line 2300
    .line 2301
    .line 2302
    invoke-virtual {v6, v9}, Lf1/s;->p(Z)V

    .line 2303
    .line 2304
    .line 2305
    :goto_2e
    invoke-virtual {v6, v8}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 2306
    .line 2307
    .line 2308
    move-result v0

    .line 2309
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v2

    .line 2313
    if-nez v0, :cond_4d

    .line 2314
    .line 2315
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 2316
    .line 2317
    if-ne v2, v0, :cond_4e

    .line 2318
    .line 2319
    :cond_4d
    new-instance v2, La8/q;

    .line 2320
    .line 2321
    const/16 v0, 0xd

    .line 2322
    .line 2323
    invoke-direct {v2, v0, v8}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 2324
    .line 2325
    .line 2326
    invoke-virtual {v6, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2327
    .line 2328
    .line 2329
    :cond_4e
    check-cast v2, Lf9/k;

    .line 2330
    .line 2331
    invoke-static {v10, v2, v6}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 2332
    .line 2333
    .line 2334
    goto :goto_2f

    .line 2335
    :cond_4f
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 2336
    .line 2337
    .line 2338
    :goto_2f
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2339
    .line 2340
    return-object v0

    .line 2341
    :pswitch_10
    move-object v1, v0

    .line 2342
    move-object/from16 v9, p1

    .line 2343
    .line 2344
    check-cast v9, Lf1/s;

    .line 2345
    .line 2346
    move-object/from16 v0, p2

    .line 2347
    .line 2348
    check-cast v0, Ljava/lang/Number;

    .line 2349
    .line 2350
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2351
    .line 2352
    .line 2353
    move-result v0

    .line 2354
    iget-object v2, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2355
    .line 2356
    check-cast v2, Lc8/i1;

    .line 2357
    .line 2358
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2359
    .line 2360
    check-cast v3, Lf9/k;

    .line 2361
    .line 2362
    and-int/lit8 v0, v0, 0x3

    .line 2363
    .line 2364
    const/4 v4, 0x2

    .line 2365
    if-ne v0, v4, :cond_51

    .line 2366
    .line 2367
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 2368
    .line 2369
    .line 2370
    move-result v0

    .line 2371
    if-nez v0, :cond_50

    .line 2372
    .line 2373
    goto :goto_30

    .line 2374
    :cond_50
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 2375
    .line 2376
    .line 2377
    goto :goto_32

    .line 2378
    :cond_51
    :goto_30
    new-instance v0, Ljava/util/ArrayList;

    .line 2379
    .line 2380
    const/16 v4, 0xa

    .line 2381
    .line 2382
    sget-object v5, Lz7/g2;->e:Lz8/b;

    .line 2383
    .line 2384
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 2385
    .line 2386
    .line 2387
    move-result v4

    .line 2388
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2389
    .line 2390
    .line 2391
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 2392
    .line 2393
    .line 2394
    move-result-object v4

    .line 2395
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2396
    .line 2397
    .line 2398
    move-result v5

    .line 2399
    if-eqz v5, :cond_52

    .line 2400
    .line 2401
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v5

    .line 2405
    check-cast v5, Lz7/g2;

    .line 2406
    .line 2407
    new-instance v10, Lj8/k0;

    .line 2408
    .line 2409
    iget-object v11, v5, Lz7/g2;->a:Ljava/lang/String;

    .line 2410
    .line 2411
    new-instance v12, Lj8/m0;

    .line 2412
    .line 2413
    iget v5, v5, Lz7/g2;->b:I

    .line 2414
    .line 2415
    invoke-direct {v12, v5}, Lj8/m0;-><init>(I)V

    .line 2416
    .line 2417
    .line 2418
    const/4 v15, 0x0

    .line 2419
    const/16 v16, 0x1c

    .line 2420
    .line 2421
    const/4 v13, 0x0

    .line 2422
    const/4 v14, 0x0

    .line 2423
    invoke-direct/range {v10 .. v16}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2424
    .line 2425
    .line 2426
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    .line 2428
    .line 2429
    goto :goto_31

    .line 2430
    :cond_52
    const v4, -0x615d173a

    .line 2431
    .line 2432
    .line 2433
    invoke-virtual {v9, v4}, Lf1/s;->W(I)V

    .line 2434
    .line 2435
    .line 2436
    invoke-virtual {v9, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2437
    .line 2438
    .line 2439
    move-result v4

    .line 2440
    invoke-virtual {v9, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 2441
    .line 2442
    .line 2443
    move-result v5

    .line 2444
    or-int/2addr v4, v5

    .line 2445
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 2446
    .line 2447
    .line 2448
    move-result-object v5

    .line 2449
    if-nez v4, :cond_53

    .line 2450
    .line 2451
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 2452
    .line 2453
    if-ne v5, v4, :cond_54

    .line 2454
    .line 2455
    :cond_53
    new-instance v5, Lc8/x;

    .line 2456
    .line 2457
    const/4 v4, 0x2

    .line 2458
    invoke-direct {v5, v3, v2, v4}, Lc8/x;-><init>(Lf9/k;Lz7/v1;I)V

    .line 2459
    .line 2460
    .line 2461
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2462
    .line 2463
    .line 2464
    :cond_54
    move-object v8, v5

    .line 2465
    check-cast v8, Lf9/k;

    .line 2466
    .line 2467
    const/4 v2, 0x0

    .line 2468
    invoke-virtual {v9, v2}, Lf1/s;->p(Z)V

    .line 2469
    .line 2470
    .line 2471
    const/4 v10, 0x0

    .line 2472
    const/16 v11, 0x3e

    .line 2473
    .line 2474
    const/4 v3, 0x0

    .line 2475
    const/4 v4, 0x0

    .line 2476
    const/4 v5, 0x0

    .line 2477
    const/4 v6, 0x0

    .line 2478
    const/4 v7, 0x0

    .line 2479
    move-object v2, v0

    .line 2480
    invoke-static/range {v2 .. v11}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 2481
    .line 2482
    .line 2483
    :goto_32
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2484
    .line 2485
    return-object v0

    .line 2486
    :pswitch_11
    move-object v1, v0

    .line 2487
    move-object/from16 v10, p1

    .line 2488
    .line 2489
    check-cast v10, Lf1/s;

    .line 2490
    .line 2491
    move-object/from16 v0, p2

    .line 2492
    .line 2493
    check-cast v0, Ljava/lang/Number;

    .line 2494
    .line 2495
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2496
    .line 2497
    .line 2498
    move-result v0

    .line 2499
    and-int/lit8 v0, v0, 0x3

    .line 2500
    .line 2501
    const/4 v2, 0x2

    .line 2502
    if-ne v0, v2, :cond_56

    .line 2503
    .line 2504
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 2505
    .line 2506
    .line 2507
    move-result v0

    .line 2508
    if-nez v0, :cond_55

    .line 2509
    .line 2510
    goto :goto_33

    .line 2511
    :cond_55
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 2512
    .line 2513
    .line 2514
    goto :goto_34

    .line 2515
    :cond_56
    :goto_33
    const v0, 0x4c5de2

    .line 2516
    .line 2517
    .line 2518
    invoke-virtual {v10, v0}, Lf1/s;->W(I)V

    .line 2519
    .line 2520
    .line 2521
    iget-object v0, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2522
    .line 2523
    check-cast v0, Lw1/o;

    .line 2524
    .line 2525
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v2

    .line 2529
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 2530
    .line 2531
    if-ne v2, v3, :cond_57

    .line 2532
    .line 2533
    new-instance v2, La5/e;

    .line 2534
    .line 2535
    const/4 v3, 0x2

    .line 2536
    invoke-direct {v2, v3, v0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 2537
    .line 2538
    .line 2539
    invoke-virtual {v10, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2540
    .line 2541
    .line 2542
    :cond_57
    check-cast v2, Lf9/a;

    .line 2543
    .line 2544
    const/4 v0, 0x0

    .line 2545
    invoke-virtual {v10, v0}, Lf1/s;->p(Z)V

    .line 2546
    .line 2547
    .line 2548
    const/4 v0, -0x8

    .line 2549
    int-to-float v0, v0

    .line 2550
    invoke-static {v0}, Landroidx/compose/foundation/layout/a;->f(F)Lr1/p;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v3

    .line 2554
    new-instance v0, Lc8/n0;

    .line 2555
    .line 2556
    iget-object v4, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2557
    .line 2558
    check-cast v4, Lf1/b1;

    .line 2559
    .line 2560
    const/4 v5, 0x0

    .line 2561
    invoke-direct {v0, v5, v4}, Lc8/n0;-><init>(ILjava/lang/Object;)V

    .line 2562
    .line 2563
    .line 2564
    const v4, 0x386bb624

    .line 2565
    .line 2566
    .line 2567
    invoke-static {v4, v0, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 2568
    .line 2569
    .line 2570
    move-result-object v9

    .line 2571
    const v11, 0x30000036

    .line 2572
    .line 2573
    .line 2574
    const/4 v4, 0x0

    .line 2575
    const/4 v5, 0x0

    .line 2576
    const/4 v6, 0x0

    .line 2577
    const/4 v7, 0x0

    .line 2578
    const/4 v8, 0x0

    .line 2579
    invoke-static/range {v2 .. v11}, Lc1/g1;->c(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;Lf1/s;I)V

    .line 2580
    .line 2581
    .line 2582
    :goto_34
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2583
    .line 2584
    return-object v0

    .line 2585
    :pswitch_12
    move-object v1, v0

    .line 2586
    move-object/from16 v9, p1

    .line 2587
    .line 2588
    check-cast v9, Lf1/s;

    .line 2589
    .line 2590
    move-object/from16 v0, p2

    .line 2591
    .line 2592
    check-cast v0, Ljava/lang/Number;

    .line 2593
    .line 2594
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2595
    .line 2596
    .line 2597
    move-result v0

    .line 2598
    iget-object v2, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2599
    .line 2600
    check-cast v2, Lc8/l0;

    .line 2601
    .line 2602
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2603
    .line 2604
    check-cast v3, Lf9/k;

    .line 2605
    .line 2606
    and-int/lit8 v0, v0, 0x3

    .line 2607
    .line 2608
    const/4 v4, 0x2

    .line 2609
    if-ne v0, v4, :cond_59

    .line 2610
    .line 2611
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 2612
    .line 2613
    .line 2614
    move-result v0

    .line 2615
    if-nez v0, :cond_58

    .line 2616
    .line 2617
    goto :goto_35

    .line 2618
    :cond_58
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 2619
    .line 2620
    .line 2621
    goto :goto_37

    .line 2622
    :cond_59
    :goto_35
    new-instance v0, Ljava/util/ArrayList;

    .line 2623
    .line 2624
    const/16 v4, 0xa

    .line 2625
    .line 2626
    sget-object v5, Lc8/h0;->e:Lz8/b;

    .line 2627
    .line 2628
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 2629
    .line 2630
    .line 2631
    move-result v4

    .line 2632
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2633
    .line 2634
    .line 2635
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v4

    .line 2639
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2640
    .line 2641
    .line 2642
    move-result v5

    .line 2643
    if-eqz v5, :cond_5a

    .line 2644
    .line 2645
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v5

    .line 2649
    check-cast v5, Lc8/h0;

    .line 2650
    .line 2651
    new-instance v10, Lj8/k0;

    .line 2652
    .line 2653
    iget-object v11, v5, Lc8/h0;->a:Ljava/lang/String;

    .line 2654
    .line 2655
    new-instance v12, Lj8/m0;

    .line 2656
    .line 2657
    iget v5, v5, Lc8/h0;->b:I

    .line 2658
    .line 2659
    invoke-direct {v12, v5}, Lj8/m0;-><init>(I)V

    .line 2660
    .line 2661
    .line 2662
    const/4 v15, 0x0

    .line 2663
    const/16 v16, 0x1c

    .line 2664
    .line 2665
    const/4 v13, 0x0

    .line 2666
    const/4 v14, 0x0

    .line 2667
    invoke-direct/range {v10 .. v16}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2668
    .line 2669
    .line 2670
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    .line 2672
    .line 2673
    goto :goto_36

    .line 2674
    :cond_5a
    const v4, -0x615d173a

    .line 2675
    .line 2676
    .line 2677
    invoke-virtual {v9, v4}, Lf1/s;->W(I)V

    .line 2678
    .line 2679
    .line 2680
    invoke-virtual {v9, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2681
    .line 2682
    .line 2683
    move-result v4

    .line 2684
    invoke-virtual {v9, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2685
    .line 2686
    .line 2687
    move-result v5

    .line 2688
    or-int/2addr v4, v5

    .line 2689
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 2690
    .line 2691
    .line 2692
    move-result-object v5

    .line 2693
    if-nez v4, :cond_5b

    .line 2694
    .line 2695
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 2696
    .line 2697
    if-ne v5, v4, :cond_5c

    .line 2698
    .line 2699
    :cond_5b
    new-instance v5, Lc8/x;

    .line 2700
    .line 2701
    const/4 v4, 0x1

    .line 2702
    invoke-direct {v5, v3, v2, v4}, Lc8/x;-><init>(Lf9/k;Lz7/v1;I)V

    .line 2703
    .line 2704
    .line 2705
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2706
    .line 2707
    .line 2708
    :cond_5c
    move-object v8, v5

    .line 2709
    check-cast v8, Lf9/k;

    .line 2710
    .line 2711
    const/4 v2, 0x0

    .line 2712
    invoke-virtual {v9, v2}, Lf1/s;->p(Z)V

    .line 2713
    .line 2714
    .line 2715
    const/4 v10, 0x0

    .line 2716
    const/16 v11, 0x3e

    .line 2717
    .line 2718
    const/4 v3, 0x0

    .line 2719
    const/4 v4, 0x0

    .line 2720
    const/4 v5, 0x0

    .line 2721
    const/4 v6, 0x0

    .line 2722
    const/4 v7, 0x0

    .line 2723
    move-object v2, v0

    .line 2724
    invoke-static/range {v2 .. v11}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 2725
    .line 2726
    .line 2727
    :goto_37
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2728
    .line 2729
    return-object v0

    .line 2730
    :pswitch_13
    move-object v1, v0

    .line 2731
    move-object/from16 v8, p1

    .line 2732
    .line 2733
    check-cast v8, Lf1/s;

    .line 2734
    .line 2735
    move-object/from16 v0, p2

    .line 2736
    .line 2737
    check-cast v0, Ljava/lang/Number;

    .line 2738
    .line 2739
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2740
    .line 2741
    .line 2742
    move-result v0

    .line 2743
    iget-object v2, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2744
    .line 2745
    check-cast v2, Lc8/a0;

    .line 2746
    .line 2747
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2748
    .line 2749
    check-cast v3, Lf9/k;

    .line 2750
    .line 2751
    and-int/lit8 v0, v0, 0x3

    .line 2752
    .line 2753
    const/4 v4, 0x2

    .line 2754
    if-ne v0, v4, :cond_5e

    .line 2755
    .line 2756
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 2757
    .line 2758
    .line 2759
    move-result v0

    .line 2760
    if-nez v0, :cond_5d

    .line 2761
    .line 2762
    goto :goto_38

    .line 2763
    :cond_5d
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 2764
    .line 2765
    .line 2766
    goto :goto_39

    .line 2767
    :cond_5e
    :goto_38
    const v0, -0x615d173a

    .line 2768
    .line 2769
    .line 2770
    invoke-virtual {v8, v0}, Lf1/s;->W(I)V

    .line 2771
    .line 2772
    .line 2773
    invoke-virtual {v8, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2774
    .line 2775
    .line 2776
    move-result v0

    .line 2777
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2778
    .line 2779
    .line 2780
    move-result v4

    .line 2781
    or-int/2addr v0, v4

    .line 2782
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 2783
    .line 2784
    .line 2785
    move-result-object v4

    .line 2786
    if-nez v0, :cond_5f

    .line 2787
    .line 2788
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 2789
    .line 2790
    if-ne v4, v0, :cond_60

    .line 2791
    .line 2792
    :cond_5f
    new-instance v4, La5/e;

    .line 2793
    .line 2794
    invoke-direct {v4, v3, v2}, La5/e;-><init>(Lf9/k;Lc8/a0;)V

    .line 2795
    .line 2796
    .line 2797
    invoke-virtual {v8, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2798
    .line 2799
    .line 2800
    :cond_60
    move-object v7, v4

    .line 2801
    check-cast v7, Lf9/a;

    .line 2802
    .line 2803
    const/4 v0, 0x0

    .line 2804
    invoke-virtual {v8, v0}, Lf1/s;->p(Z)V

    .line 2805
    .line 2806
    .line 2807
    const/4 v9, 0x6

    .line 2808
    const/4 v10, 0x6

    .line 2809
    const-string v2, "\u6dfb\u52a0"

    .line 2810
    .line 2811
    const-wide/16 v3, 0x0

    .line 2812
    .line 2813
    const-wide/16 v5, 0x0

    .line 2814
    .line 2815
    invoke-static/range {v2 .. v10}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 2816
    .line 2817
    .line 2818
    :goto_39
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2819
    .line 2820
    return-object v0

    .line 2821
    :pswitch_14
    move-object v1, v0

    .line 2822
    move-object/from16 v9, p1

    .line 2823
    .line 2824
    check-cast v9, Lf1/s;

    .line 2825
    .line 2826
    move-object/from16 v0, p2

    .line 2827
    .line 2828
    check-cast v0, Ljava/lang/Number;

    .line 2829
    .line 2830
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2831
    .line 2832
    .line 2833
    move-result v0

    .line 2834
    iget-object v2, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2835
    .line 2836
    check-cast v2, Lc8/z;

    .line 2837
    .line 2838
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2839
    .line 2840
    check-cast v3, Lf9/k;

    .line 2841
    .line 2842
    and-int/lit8 v0, v0, 0x3

    .line 2843
    .line 2844
    const/4 v4, 0x2

    .line 2845
    if-ne v0, v4, :cond_62

    .line 2846
    .line 2847
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 2848
    .line 2849
    .line 2850
    move-result v0

    .line 2851
    if-nez v0, :cond_61

    .line 2852
    .line 2853
    goto :goto_3a

    .line 2854
    :cond_61
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 2855
    .line 2856
    .line 2857
    goto :goto_3c

    .line 2858
    :cond_62
    :goto_3a
    new-instance v0, Ljava/util/ArrayList;

    .line 2859
    .line 2860
    const/16 v4, 0xa

    .line 2861
    .line 2862
    sget-object v5, Lc8/w;->h:Lz8/b;

    .line 2863
    .line 2864
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 2865
    .line 2866
    .line 2867
    move-result v4

    .line 2868
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2869
    .line 2870
    .line 2871
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 2872
    .line 2873
    .line 2874
    move-result-object v4

    .line 2875
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2876
    .line 2877
    .line 2878
    move-result v5

    .line 2879
    if-eqz v5, :cond_63

    .line 2880
    .line 2881
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2882
    .line 2883
    .line 2884
    move-result-object v5

    .line 2885
    check-cast v5, Lc8/w;

    .line 2886
    .line 2887
    new-instance v10, Lj8/k0;

    .line 2888
    .line 2889
    iget-object v11, v5, Lc8/w;->a:Ljava/lang/String;

    .line 2890
    .line 2891
    new-instance v12, Lj8/m0;

    .line 2892
    .line 2893
    iget v5, v5, Lc8/w;->b:I

    .line 2894
    .line 2895
    invoke-direct {v12, v5}, Lj8/m0;-><init>(I)V

    .line 2896
    .line 2897
    .line 2898
    const/4 v15, 0x0

    .line 2899
    const/16 v16, 0x1c

    .line 2900
    .line 2901
    const/4 v13, 0x0

    .line 2902
    const/4 v14, 0x0

    .line 2903
    invoke-direct/range {v10 .. v16}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 2904
    .line 2905
    .line 2906
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2907
    .line 2908
    .line 2909
    goto :goto_3b

    .line 2910
    :cond_63
    const v4, -0x615d173a

    .line 2911
    .line 2912
    .line 2913
    invoke-virtual {v9, v4}, Lf1/s;->W(I)V

    .line 2914
    .line 2915
    .line 2916
    invoke-virtual {v9, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2917
    .line 2918
    .line 2919
    move-result v4

    .line 2920
    invoke-virtual {v9, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2921
    .line 2922
    .line 2923
    move-result v5

    .line 2924
    or-int/2addr v4, v5

    .line 2925
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 2926
    .line 2927
    .line 2928
    move-result-object v5

    .line 2929
    if-nez v4, :cond_64

    .line 2930
    .line 2931
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 2932
    .line 2933
    if-ne v5, v4, :cond_65

    .line 2934
    .line 2935
    :cond_64
    new-instance v5, Lc8/x;

    .line 2936
    .line 2937
    const/4 v4, 0x0

    .line 2938
    invoke-direct {v5, v3, v2, v4}, Lc8/x;-><init>(Lf9/k;Lz7/v1;I)V

    .line 2939
    .line 2940
    .line 2941
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2942
    .line 2943
    .line 2944
    :cond_65
    move-object v8, v5

    .line 2945
    check-cast v8, Lf9/k;

    .line 2946
    .line 2947
    const/4 v2, 0x0

    .line 2948
    invoke-virtual {v9, v2}, Lf1/s;->p(Z)V

    .line 2949
    .line 2950
    .line 2951
    const/4 v10, 0x0

    .line 2952
    const/16 v11, 0x3e

    .line 2953
    .line 2954
    const/4 v3, 0x0

    .line 2955
    const/4 v4, 0x0

    .line 2956
    const/4 v5, 0x0

    .line 2957
    const/4 v6, 0x0

    .line 2958
    const/4 v7, 0x0

    .line 2959
    move-object v2, v0

    .line 2960
    invoke-static/range {v2 .. v11}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 2961
    .line 2962
    .line 2963
    :goto_3c
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2964
    .line 2965
    return-object v0

    .line 2966
    :pswitch_15
    move-object v1, v0

    .line 2967
    move-object/from16 v9, p1

    .line 2968
    .line 2969
    check-cast v9, Lf1/s;

    .line 2970
    .line 2971
    move-object/from16 v0, p2

    .line 2972
    .line 2973
    check-cast v0, Ljava/lang/Number;

    .line 2974
    .line 2975
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2976
    .line 2977
    .line 2978
    move-result v0

    .line 2979
    iget-object v2, v1, Lc8/s;->c:Ljava/lang/Object;

    .line 2980
    .line 2981
    check-cast v2, Lc8/v;

    .line 2982
    .line 2983
    iget-object v3, v1, Lc8/s;->b:Ljava/lang/Object;

    .line 2984
    .line 2985
    check-cast v3, Lf9/k;

    .line 2986
    .line 2987
    and-int/lit8 v0, v0, 0x3

    .line 2988
    .line 2989
    const/4 v4, 0x2

    .line 2990
    if-ne v0, v4, :cond_67

    .line 2991
    .line 2992
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 2993
    .line 2994
    .line 2995
    move-result v0

    .line 2996
    if-nez v0, :cond_66

    .line 2997
    .line 2998
    goto :goto_3d

    .line 2999
    :cond_66
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 3000
    .line 3001
    .line 3002
    goto :goto_3f

    .line 3003
    :cond_67
    :goto_3d
    new-instance v0, Ljava/util/ArrayList;

    .line 3004
    .line 3005
    const/16 v4, 0xa

    .line 3006
    .line 3007
    sget-object v5, Lc8/j;->f:Lz8/b;

    .line 3008
    .line 3009
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 3010
    .line 3011
    .line 3012
    move-result v4

    .line 3013
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3014
    .line 3015
    .line 3016
    invoke-virtual {v5}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 3017
    .line 3018
    .line 3019
    move-result-object v4

    .line 3020
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 3021
    .line 3022
    .line 3023
    move-result v5

    .line 3024
    if-eqz v5, :cond_68

    .line 3025
    .line 3026
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3027
    .line 3028
    .line 3029
    move-result-object v5

    .line 3030
    check-cast v5, Lc8/j;

    .line 3031
    .line 3032
    new-instance v10, Lj8/k0;

    .line 3033
    .line 3034
    iget-object v11, v5, Lc8/j;->a:Ljava/lang/String;

    .line 3035
    .line 3036
    new-instance v12, Lj8/m0;

    .line 3037
    .line 3038
    iget v6, v5, Lc8/j;->c:I

    .line 3039
    .line 3040
    invoke-direct {v12, v6}, Lj8/m0;-><init>(I)V

    .line 3041
    .line 3042
    .line 3043
    iget v5, v5, Lc8/j;->b:I

    .line 3044
    .line 3045
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 3046
    .line 3047
    .line 3048
    move-result-object v13

    .line 3049
    const/4 v15, 0x0

    .line 3050
    const/16 v16, 0x18

    .line 3051
    .line 3052
    const/4 v14, 0x0

    .line 3053
    invoke-direct/range {v10 .. v16}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 3054
    .line 3055
    .line 3056
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3057
    .line 3058
    .line 3059
    goto :goto_3e

    .line 3060
    :cond_68
    const v4, -0x615d173a

    .line 3061
    .line 3062
    .line 3063
    invoke-virtual {v9, v4}, Lf1/s;->W(I)V

    .line 3064
    .line 3065
    .line 3066
    invoke-virtual {v9, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 3067
    .line 3068
    .line 3069
    move-result v4

    .line 3070
    invoke-virtual {v9, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 3071
    .line 3072
    .line 3073
    move-result v5

    .line 3074
    or-int/2addr v4, v5

    .line 3075
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 3076
    .line 3077
    .line 3078
    move-result-object v5

    .line 3079
    if-nez v4, :cond_69

    .line 3080
    .line 3081
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 3082
    .line 3083
    if-ne v5, v4, :cond_6a

    .line 3084
    .line 3085
    :cond_69
    new-instance v5, La8/v;

    .line 3086
    .line 3087
    const/4 v4, 0x3

    .line 3088
    invoke-direct {v5, v4, v3, v2}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 3089
    .line 3090
    .line 3091
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 3092
    .line 3093
    .line 3094
    :cond_6a
    move-object v8, v5

    .line 3095
    check-cast v8, Lf9/k;

    .line 3096
    .line 3097
    const/4 v2, 0x0

    .line 3098
    invoke-virtual {v9, v2}, Lf1/s;->p(Z)V

    .line 3099
    .line 3100
    .line 3101
    const/4 v10, 0x0

    .line 3102
    const/16 v11, 0x3e

    .line 3103
    .line 3104
    const/4 v3, 0x0

    .line 3105
    const/4 v4, 0x0

    .line 3106
    const/4 v5, 0x0

    .line 3107
    const/4 v6, 0x0

    .line 3108
    const/4 v7, 0x0

    .line 3109
    move-object v2, v0

    .line 3110
    invoke-static/range {v2 .. v11}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 3111
    .line 3112
    .line 3113
    :goto_3f
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 3114
    .line 3115
    return-object v0

    .line 3116
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
