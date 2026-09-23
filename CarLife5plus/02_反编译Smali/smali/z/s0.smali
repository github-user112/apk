.class public final Lz/s0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Lg9/t;

.field public f:Lg9/t;

.field public g:I

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lg9/u;

.field public final synthetic k:Lg9/x;

.field public final synthetic l:Lg9/x;

.field public final synthetic m:F

.field public final synthetic n:Lz/v0;

.field public final synthetic o:F

.field public final synthetic p:Lz/s1;


# direct methods
.method public constructor <init>(Lg9/u;Lg9/x;Lg9/x;FLz/v0;FLz/s1;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/s0;->j:Lg9/u;

    .line 2
    .line 3
    iput-object p2, p0, Lz/s0;->k:Lg9/x;

    .line 4
    .line 5
    iput-object p3, p0, Lz/s0;->l:Lg9/x;

    .line 6
    .line 7
    iput p4, p0, Lz/s0;->m:F

    .line 8
    .line 9
    iput-object p5, p0, Lz/s0;->n:Lz/v0;

    .line 10
    .line 11
    iput p6, p0, Lz/s0;->o:F

    .line 12
    .line 13
    iput-object p7, p0, Lz/s0;->p:Lz/s1;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Ly8/i;-><init>(ILw8/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lz/q1;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz/s0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz/s0;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lz/s0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 9

    .line 1
    new-instance v0, Lz/s0;

    .line 2
    .line 3
    iget v6, p0, Lz/s0;->o:F

    .line 4
    .line 5
    iget-object v7, p0, Lz/s0;->p:Lz/s1;

    .line 6
    .line 7
    iget-object v1, p0, Lz/s0;->j:Lg9/u;

    .line 8
    .line 9
    iget-object v2, p0, Lz/s0;->k:Lg9/x;

    .line 10
    .line 11
    iget-object v3, p0, Lz/s0;->l:Lg9/x;

    .line 12
    .line 13
    iget v4, p0, Lz/s0;->m:F

    .line 14
    .line 15
    iget-object v5, p0, Lz/s0;->n:Lz/v0;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lz/s0;-><init>(Lg9/u;Lg9/x;Lg9/x;FLz/v0;FLz/s1;Lw8/c;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lz/s0;->i:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v0, v7, Lz/s0;->h:I

    .line 4
    .line 5
    iget-object v1, v7, Lz/s0;->l:Lg9/x;

    .line 6
    .line 7
    iget-object v2, v7, Lz/s0;->j:Lg9/u;

    .line 8
    .line 9
    const/4 v15, 0x3

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    iget-object v5, v7, Lz/s0;->k:Lg9/x;

    .line 13
    .line 14
    sget-object v6, Lx8/a;->a:Lx8/a;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-eq v0, v4, :cond_2

    .line 19
    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    if-ne v0, v15, :cond_0

    .line 23
    .line 24
    iget-object v0, v7, Lz/s0;->f:Lg9/t;

    .line 25
    .line 26
    iget-object v8, v7, Lz/s0;->e:Lg9/t;

    .line 27
    .line 28
    iget-object v9, v7, Lz/s0;->i:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v9, Lz/q1;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object v13, v0

    .line 36
    move-object v4, v5

    .line 37
    move-object v3, v8

    .line 38
    const/4 v11, 0x2

    .line 39
    const/4 v14, 0x1

    .line 40
    move-object/from16 v0, p1

    .line 41
    .line 42
    move-object v8, v6

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    iget v0, v7, Lz/s0;->g:I

    .line 54
    .line 55
    iget-object v8, v7, Lz/s0;->e:Lg9/t;

    .line 56
    .line 57
    iget-object v9, v7, Lz/s0;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v9, Lz/q1;

    .line 60
    .line 61
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object/from16 v18, v1

    .line 65
    .line 66
    move-object/from16 v19, v2

    .line 67
    .line 68
    :goto_0
    move-object v13, v8

    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_2
    iget-object v0, v7, Lz/s0;->f:Lg9/t;

    .line 72
    .line 73
    iget-object v8, v7, Lz/s0;->e:Lg9/t;

    .line 74
    .line 75
    iget-object v9, v7, Lz/s0;->i:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v9, Lz/q1;

    .line 78
    .line 79
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object v13, v0

    .line 83
    move-object v4, v5

    .line 84
    move-object v12, v9

    .line 85
    const/4 v11, 0x2

    .line 86
    const/4 v14, 0x1

    .line 87
    move-object/from16 v0, p1

    .line 88
    .line 89
    move-object v9, v6

    .line 90
    goto/16 :goto_9

    .line 91
    .line 92
    :cond_3
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v7, Lz/s0;->i:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lz/q1;

    .line 98
    .line 99
    new-instance v8, Lg9/t;

    .line 100
    .line 101
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-boolean v4, v8, Lg9/t;->a:Z

    .line 105
    .line 106
    move-object v13, v8

    .line 107
    :goto_1
    iget-boolean v8, v13, Lg9/t;->a:Z

    .line 108
    .line 109
    sget-object v16, Lr8/z;->a:Lr8/z;

    .line 110
    .line 111
    if-eqz v8, :cond_c

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    iput-boolean v8, v13, Lg9/t;->a:Z

    .line 115
    .line 116
    iget v8, v2, Lg9/u;->a:F

    .line 117
    .line 118
    iget-object v9, v5, Lg9/x;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v9, Lv/k;

    .line 121
    .line 122
    iget-object v9, v9, Lv/k;->b:Lf1/k1;

    .line 123
    .line 124
    invoke-virtual {v9}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Ljava/lang/Number;

    .line 129
    .line 130
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    sub-float/2addr v8, v9

    .line 135
    iget-object v9, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v9, Lz/q0;

    .line 138
    .line 139
    iget-boolean v9, v9, Lz/q0;->c:Z

    .line 140
    .line 141
    iget-object v10, v7, Lz/s0;->n:Lz/v0;

    .line 142
    .line 143
    if-nez v9, :cond_4

    .line 144
    .line 145
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    iget v11, v7, Lz/s0;->m:F

    .line 150
    .line 151
    cmpg-float v9, v9, v11

    .line 152
    .line 153
    if-gez v9, :cond_5

    .line 154
    .line 155
    :cond_4
    move-object v12, v0

    .line 156
    move-object v4, v5

    .line 157
    move-object v9, v6

    .line 158
    const/4 v11, 0x2

    .line 159
    const/4 v14, 0x1

    .line 160
    goto/16 :goto_7

    .line 161
    .line 162
    :cond_5
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    mul-float v8, v8, v11

    .line 167
    .line 168
    invoke-virtual {v10, v0, v8}, Lz/v0;->c(Lz/q1;F)F

    .line 169
    .line 170
    .line 171
    iget-object v9, v5, Lg9/x;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v9, Lv/k;

    .line 174
    .line 175
    iget-object v10, v9, Lv/k;->b:Lf1/k1;

    .line 176
    .line 177
    invoke-virtual {v10}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    check-cast v10, Ljava/lang/Number;

    .line 182
    .line 183
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    add-float/2addr v10, v8

    .line 188
    invoke-static {v9, v10}, Lv/d;->g(Lv/k;F)Lv/k;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    iput-object v8, v5, Lg9/x;->b:Ljava/lang/Object;

    .line 193
    .line 194
    iget v9, v2, Lg9/u;->a:F

    .line 195
    .line 196
    iget-object v8, v8, Lv/k;->b:Lf1/k1;

    .line 197
    .line 198
    invoke-virtual {v8}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    check-cast v8, Ljava/lang/Number;

    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    sub-float/2addr v9, v8

    .line 209
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    iget v9, v7, Lz/s0;->o:F

    .line 214
    .line 215
    div-float/2addr v8, v9

    .line 216
    invoke-static {v8}, Li9/a;->N(F)I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    const/16 v9, 0x64

    .line 221
    .line 222
    if-le v8, v9, :cond_6

    .line 223
    .line 224
    const/16 v8, 0x64

    .line 225
    .line 226
    :cond_6
    iget-object v9, v5, Lg9/x;->b:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v9, Lv/k;

    .line 229
    .line 230
    iget v10, v2, Lg9/u;->a:F

    .line 231
    .line 232
    move v11, v8

    .line 233
    new-instance v8, Lk7/d;

    .line 234
    .line 235
    const/4 v14, 0x3

    .line 236
    move-object v12, v9

    .line 237
    iget-object v9, v7, Lz/s0;->n:Lz/v0;

    .line 238
    .line 239
    move-object/from16 v17, v12

    .line 240
    .line 241
    iget-object v12, v7, Lz/s0;->p:Lz/s1;

    .line 242
    .line 243
    move v4, v10

    .line 244
    move-object v10, v1

    .line 245
    move v1, v11

    .line 246
    move-object v11, v2

    .line 247
    move-object/from16 v2, v17

    .line 248
    .line 249
    invoke-direct/range {v8 .. v14}, Lk7/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v18, v13

    .line 253
    .line 254
    move-object v13, v8

    .line 255
    move-object/from16 v8, v18

    .line 256
    .line 257
    move-object/from16 v18, v10

    .line 258
    .line 259
    move-object/from16 v19, v11

    .line 260
    .line 261
    iput-object v0, v7, Lz/s0;->i:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v8, v7, Lz/s0;->e:Lg9/t;

    .line 264
    .line 265
    const/4 v10, 0x0

    .line 266
    iput-object v10, v7, Lz/s0;->f:Lg9/t;

    .line 267
    .line 268
    iput v1, v7, Lz/s0;->g:I

    .line 269
    .line 270
    iput v3, v7, Lz/s0;->h:I

    .line 271
    .line 272
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    new-instance v10, Lg9/u;

    .line 276
    .line 277
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v11, v2, Lv/k;->b:Lf1/k1;

    .line 281
    .line 282
    invoke-virtual {v11}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    check-cast v11, Ljava/lang/Number;

    .line 287
    .line 288
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    iput v11, v10, Lg9/u;->a:F

    .line 293
    .line 294
    new-instance v11, Ljava/lang/Float;

    .line 295
    .line 296
    invoke-direct {v11, v4}, Ljava/lang/Float;-><init>(F)V

    .line 297
    .line 298
    .line 299
    sget-object v4, Lv/u;->b:Lb3/i0;

    .line 300
    .line 301
    invoke-static {v1, v3, v4}, Lv/d;->k(IILv/t;)Lv/v0;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    move-object v12, v11

    .line 306
    move-object v11, v9

    .line 307
    new-instance v9, La8/h;

    .line 308
    .line 309
    const/16 v14, 0x8

    .line 310
    .line 311
    move-object/from16 v20, v12

    .line 312
    .line 313
    move-object v12, v0

    .line 314
    move-object/from16 v0, v20

    .line 315
    .line 316
    invoke-direct/range {v9 .. v14}, La8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 317
    .line 318
    .line 319
    invoke-static {v2, v0, v4, v9, v7}, Lv/d;->d(Lv/k;Ljava/lang/Float;Lv/v;Lf9/k;Ly8/i;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-ne v0, v6, :cond_7

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_7
    move-object/from16 v0, v16

    .line 327
    .line 328
    :goto_2
    if-ne v0, v6, :cond_8

    .line 329
    .line 330
    move-object v9, v6

    .line 331
    goto/16 :goto_8

    .line 332
    .line 333
    :cond_8
    move v0, v1

    .line 334
    move-object v9, v12

    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :goto_3
    iget-boolean v1, v13, Lg9/t;->a:Z

    .line 338
    .line 339
    if-nez v1, :cond_a

    .line 340
    .line 341
    const-wide/16 v1, 0x32

    .line 342
    .line 343
    int-to-long v10, v0

    .line 344
    sub-long/2addr v1, v10

    .line 345
    iput-object v9, v7, Lz/s0;->i:Ljava/lang/Object;

    .line 346
    .line 347
    iput-object v13, v7, Lz/s0;->e:Lg9/t;

    .line 348
    .line 349
    iput-object v13, v7, Lz/s0;->f:Lg9/t;

    .line 350
    .line 351
    iput v15, v7, Lz/s0;->h:I

    .line 352
    .line 353
    iget-object v0, v7, Lz/s0;->n:Lz/v0;

    .line 354
    .line 355
    const/4 v4, 0x2

    .line 356
    iget-object v3, v7, Lz/s0;->p:Lz/s1;

    .line 357
    .line 358
    move-object v4, v5

    .line 359
    move-object v8, v6

    .line 360
    const/4 v11, 0x2

    .line 361
    const/4 v14, 0x1

    .line 362
    move-wide v5, v1

    .line 363
    move-object/from16 v1, v18

    .line 364
    .line 365
    move-object/from16 v2, v19

    .line 366
    .line 367
    invoke-static/range {v0 .. v7}, Lz/v0;->b(Lz/v0;Lg9/x;Lg9/u;Lz/s1;Lg9/x;JLy8/c;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    if-ne v0, v8, :cond_9

    .line 372
    .line 373
    move-object v9, v8

    .line 374
    goto :goto_8

    .line 375
    :cond_9
    move-object v3, v13

    .line 376
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    iput-boolean v0, v13, Lg9/t;->a:Z

    .line 383
    .line 384
    move-object v13, v3

    .line 385
    move-object v5, v4

    .line 386
    move-object v6, v8

    .line 387
    move-object v0, v9

    .line 388
    :goto_5
    const/4 v3, 0x2

    .line 389
    :goto_6
    const/4 v4, 0x1

    .line 390
    goto/16 :goto_1

    .line 391
    .line 392
    :cond_a
    move-object v0, v9

    .line 393
    move-object/from16 v1, v18

    .line 394
    .line 395
    move-object/from16 v2, v19

    .line 396
    .line 397
    goto :goto_6

    .line 398
    :goto_7
    invoke-virtual {v10, v12, v8}, Lz/v0;->c(Lz/q1;F)F

    .line 399
    .line 400
    .line 401
    iput-object v12, v7, Lz/s0;->i:Ljava/lang/Object;

    .line 402
    .line 403
    iput-object v13, v7, Lz/s0;->e:Lg9/t;

    .line 404
    .line 405
    iput-object v13, v7, Lz/s0;->f:Lg9/t;

    .line 406
    .line 407
    iput v14, v7, Lz/s0;->h:I

    .line 408
    .line 409
    iget-object v0, v7, Lz/s0;->n:Lz/v0;

    .line 410
    .line 411
    iget-object v3, v7, Lz/s0;->p:Lz/s1;

    .line 412
    .line 413
    const-wide/16 v5, 0x32

    .line 414
    .line 415
    invoke-static/range {v0 .. v7}, Lz/v0;->b(Lz/v0;Lg9/x;Lg9/u;Lz/s1;Lg9/x;JLy8/c;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    if-ne v0, v9, :cond_b

    .line 420
    .line 421
    :goto_8
    return-object v9

    .line 422
    :cond_b
    move-object v8, v13

    .line 423
    :goto_9
    check-cast v0, Ljava/lang/Boolean;

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    iput-boolean v0, v13, Lg9/t;->a:Z

    .line 430
    .line 431
    move-object/from16 v7, p0

    .line 432
    .line 433
    move-object v5, v4

    .line 434
    move-object v13, v8

    .line 435
    move-object v6, v9

    .line 436
    move-object v0, v12

    .line 437
    goto :goto_5

    .line 438
    :cond_c
    return-object v16
.end method
