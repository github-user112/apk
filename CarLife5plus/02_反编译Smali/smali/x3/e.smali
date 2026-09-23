.class public abstract Lx3/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lp9/q;

.field public static final b:Ls/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "TypefaceCompat static init"

    .line 2
    .line 3
    invoke-static {v0}, La/a;->m(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lx3/j;

    .line 13
    .line 14
    invoke-direct {v0}, Lp9/q;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lx3/e;->a:Lp9/q;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x1c

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Lx3/i;

    .line 25
    .line 26
    invoke-direct {v0}, Lx3/h;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lx3/e;->a:Lp9/q;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x1a

    .line 33
    .line 34
    if-lt v0, v1, :cond_2

    .line 35
    .line 36
    new-instance v0, Lx3/h;

    .line 37
    .line 38
    invoke-direct {v0}, Lx3/h;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lx3/e;->a:Lp9/q;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/16 v1, 0x18

    .line 45
    .line 46
    if-lt v0, v1, :cond_4

    .line 47
    .line 48
    sget-object v0, Lx3/g;->e:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    const-string v1, "TypefaceCompatApi24Impl"

    .line 53
    .line 54
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_3
    if-eqz v0, :cond_4

    .line 60
    .line 61
    new-instance v0, Lx3/g;

    .line 62
    .line 63
    invoke-direct {v0}, Lp9/q;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lx3/e;->a:Lp9/q;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    new-instance v0, Lx3/f;

    .line 70
    .line 71
    invoke-direct {v0}, Lp9/q;-><init>()V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lx3/e;->a:Lp9/q;

    .line 75
    .line 76
    :goto_0
    new-instance v0, Ls/s;

    .line 77
    .line 78
    const/16 v1, 0x10

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ls/s;-><init>(I)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lx3/e;->b:Ls/s;

    .line 84
    .line 85
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;Lw3/d;Landroid/content/res/Resources;ILjava/lang/String;IILd3/e;Z)Landroid/graphics/Typeface;
    .locals 16

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v4, p6

    .line 6
    .line 7
    move-object/from16 v1, p7

    .line 8
    .line 9
    instance-of v3, v0, Lw3/g;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, -0x3

    .line 13
    if-eqz v3, :cond_10

    .line 14
    .line 15
    check-cast v0, Lw3/g;

    .line 16
    .line 17
    iget-object v3, v0, Lw3/g;->e:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-eqz v9, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v3, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 35
    .line 36
    invoke-static {v9, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3, v9}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-nez v9, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    move-object v3, v7

    .line 50
    :goto_1
    if-eqz v3, :cond_3

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    new-instance v0, Landroid/os/Handler;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lc/n;

    .line 64
    .line 65
    invoke-direct {v2, v5, v1, v3}, Lc/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object v3

    .line 72
    :cond_3
    const/4 v9, 0x1

    .line 73
    if-eqz p8, :cond_5

    .line 74
    .line 75
    iget v3, v0, Lw3/g;->d:I

    .line 76
    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    :goto_2
    const/4 v3, 0x1

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    const/4 v3, 0x0

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    if-nez v1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_3
    const/4 v5, -0x1

    .line 87
    if-eqz p8, :cond_6

    .line 88
    .line 89
    iget v10, v0, Lw3/g;->c:I

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    const/4 v10, -0x1

    .line 93
    :goto_4
    new-instance v11, Landroid/os/Handler;

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    .line 101
    .line 102
    new-instance v12, Lv/a1;

    .line 103
    .line 104
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v1, v12, Lv/a1;->a:Ljava/lang/Object;

    .line 108
    .line 109
    iget-object v1, v0, Lw3/g;->b:Lb4/g;

    .line 110
    .line 111
    const/4 v13, 0x2

    .line 112
    if-eqz v1, :cond_8

    .line 113
    .line 114
    iget-object v0, v0, Lw3/g;->a:Lb4/g;

    .line 115
    .line 116
    new-array v14, v13, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v0, v14, v8

    .line 119
    .line 120
    aput-object v1, v14, v9

    .line 121
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    :goto_5
    if-ge v1, v13, :cond_7

    .line 129
    .line 130
    aget-object v15, v14, v1

    .line 131
    .line 132
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_6

    .line 146
    :cond_8
    iget-object v0, v0, Lw3/g;->a:Lb4/g;

    .line 147
    .line 148
    new-array v1, v9, [Ljava/lang/Object;

    .line 149
    .line 150
    aput-object v0, v1, v8

    .line 151
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .line 156
    .line 157
    aget-object v1, v1, v8

    .line 158
    .line 159
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :goto_6
    new-instance v14, Landroid/support/v4/media/session/t;

    .line 170
    .line 171
    new-instance v1, Lb4/p;

    .line 172
    .line 173
    invoke-direct {v1, v11}, Lb4/p;-><init>(Landroid/os/Handler;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v14, v13, v12, v1}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    if-eqz v3, :cond_c

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-gt v3, v9, :cond_b

    .line 186
    .line 187
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    move-object v3, v0

    .line 192
    check-cast v3, Lb4/g;

    .line 193
    .line 194
    sget-object v0, Lb4/k;->a:Ls/s;

    .line 195
    .line 196
    new-array v0, v9, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object v3, v0, v8

    .line 199
    .line 200
    new-instance v11, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .line 204
    .line 205
    aget-object v0, v0, v8

    .line 206
    .line 207
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v4, v0}, Lb4/k;->a(ILjava/util/List;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sget-object v11, Lb4/k;->a:Ls/s;

    .line 222
    .line 223
    invoke-virtual {v11, v0}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    check-cast v11, Landroid/graphics/Typeface;

    .line 228
    .line 229
    if-eqz v11, :cond_9

    .line 230
    .line 231
    new-instance v0, Lb4/a;

    .line 232
    .line 233
    invoke-direct {v0, v8, v12, v11}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v0}, Lb4/p;->execute(Ljava/lang/Runnable;)V

    .line 237
    .line 238
    .line 239
    move-object v7, v11

    .line 240
    goto/16 :goto_a

    .line 241
    .line 242
    :cond_9
    if-ne v10, v5, :cond_a

    .line 243
    .line 244
    new-array v1, v9, [Ljava/lang/Object;

    .line 245
    .line 246
    aput-object v3, v1, v8

    .line 247
    .line 248
    new-instance v3, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .line 252
    .line 253
    aget-object v1, v1, v8

    .line 254
    .line 255
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-static {v0, v2, v1, v4}, Lb4/k;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lb4/j;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v14, v0}, Landroid/support/v4/media/session/t;->g1(Lb4/j;)V

    .line 270
    .line 271
    .line 272
    iget-object v7, v0, Lb4/j;->a:Landroid/graphics/Typeface;

    .line 273
    .line 274
    goto/16 :goto_a

    .line 275
    .line 276
    :cond_a
    move-object v1, v0

    .line 277
    new-instance v0, Lb4/h;

    .line 278
    .line 279
    const/4 v5, 0x0

    .line 280
    invoke-direct/range {v0 .. v5}, Lb4/h;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 281
    .line 282
    .line 283
    :try_start_0
    sget-object v1, Lb4/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 284
    .line 285
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 286
    .line 287
    .line 288
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 289
    int-to-long v1, v10

    .line 290
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 291
    .line 292
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 296
    :try_start_2
    check-cast v0, Lb4/j;

    .line 297
    .line 298
    invoke-virtual {v14, v0}, Landroid/support/v4/media/session/t;->g1(Lb4/j;)V

    .line 299
    .line 300
    .line 301
    iget-object v7, v0, Lb4/j;->a:Landroid/graphics/Typeface;

    .line 302
    .line 303
    goto/16 :goto_a

    .line 304
    .line 305
    :catch_0
    move-exception v0

    .line 306
    goto :goto_7

    .line 307
    :catch_1
    move-exception v0

    .line 308
    goto :goto_8

    .line 309
    :catch_2
    new-instance v0, Ljava/lang/InterruptedException;

    .line 310
    .line 311
    const-string v1, "timeout"

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :goto_7
    throw v0

    .line 318
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 319
    .line 320
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 324
    :catch_3
    iget-object v0, v14, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Lb4/p;

    .line 327
    .line 328
    iget-object v1, v14, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v1, Lv/a1;

    .line 331
    .line 332
    new-instance v2, Lb4/b;

    .line 333
    .line 334
    invoke-direct {v2, v1, v6}, Lb4/b;-><init>(Lv/a1;I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v2}, Lb4/p;->execute(Ljava/lang/Runnable;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_a

    .line 341
    .line 342
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 343
    .line 344
    const-string v1, "Fallbacks with blocking fetches are not supported for performance reasons"

    .line 345
    .line 346
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0

    .line 350
    :cond_c
    invoke-static {v4, v0}, Lb4/k;->a(ILjava/util/List;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    sget-object v3, Lb4/k;->a:Ls/s;

    .line 355
    .line 356
    invoke-virtual {v3, v2}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    check-cast v3, Landroid/graphics/Typeface;

    .line 361
    .line 362
    if-eqz v3, :cond_d

    .line 363
    .line 364
    new-instance v0, Lb4/a;

    .line 365
    .line 366
    invoke-direct {v0, v8, v12, v3}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v0}, Lb4/p;->execute(Ljava/lang/Runnable;)V

    .line 370
    .line 371
    .line 372
    move-object v7, v3

    .line 373
    goto :goto_a

    .line 374
    :cond_d
    new-instance v1, Lb4/i;

    .line 375
    .line 376
    invoke-direct {v1, v8, v14}, Lb4/i;-><init>(ILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    sget-object v3, Lb4/k;->c:Ljava/lang/Object;

    .line 380
    .line 381
    monitor-enter v3

    .line 382
    :try_start_3
    sget-object v5, Lb4/k;->d:Ls/q0;

    .line 383
    .line 384
    invoke-virtual {v5, v2}, Ls/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    check-cast v6, Ljava/util/ArrayList;

    .line 389
    .line 390
    if-eqz v6, :cond_e

    .line 391
    .line 392
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    monitor-exit v3

    .line 396
    goto :goto_a

    .line 397
    :catchall_0
    move-exception v0

    .line 398
    goto :goto_b

    .line 399
    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v2, v6}, Ls/q0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    move-object v3, v0

    .line 412
    new-instance v0, Lb4/h;

    .line 413
    .line 414
    const/4 v5, 0x1

    .line 415
    move-object v1, v2

    .line 416
    move-object/from16 v2, p0

    .line 417
    .line 418
    invoke-direct/range {v0 .. v5}, Lb4/h;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 419
    .line 420
    .line 421
    sget-object v2, Lb4/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 422
    .line 423
    new-instance v3, Lb4/i;

    .line 424
    .line 425
    invoke-direct {v3, v9, v1}, Lb4/i;-><init>(ILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    if-nez v1, :cond_f

    .line 433
    .line 434
    new-instance v1, Landroid/os/Handler;

    .line 435
    .line 436
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 441
    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_f
    new-instance v1, Landroid/os/Handler;

    .line 445
    .line 446
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 447
    .line 448
    .line 449
    :goto_9
    new-instance v5, Lb4/q;

    .line 450
    .line 451
    invoke-direct {v5}, Lb4/q;-><init>()V

    .line 452
    .line 453
    .line 454
    iput-object v0, v5, Lb4/q;->b:Ljava/lang/Object;

    .line 455
    .line 456
    iput-object v3, v5, Lb4/q;->c:Ljava/lang/Object;

    .line 457
    .line 458
    iput-object v1, v5, Lb4/q;->d:Ljava/lang/Object;

    .line 459
    .line 460
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 461
    .line 462
    .line 463
    :goto_a
    move-object v0, v7

    .line 464
    move-object/from16 v7, p2

    .line 465
    .line 466
    goto :goto_c

    .line 467
    :goto_b
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 468
    throw v0

    .line 469
    :cond_10
    sget-object v3, Lx3/e;->a:Lp9/q;

    .line 470
    .line 471
    check-cast v0, Lw3/e;

    .line 472
    .line 473
    move-object/from16 v7, p2

    .line 474
    .line 475
    invoke-virtual {v3, v2, v0, v7, v4}, Lp9/q;->p(Landroid/content/Context;Lw3/e;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-eqz v1, :cond_12

    .line 480
    .line 481
    if-eqz v0, :cond_11

    .line 482
    .line 483
    new-instance v2, Landroid/os/Handler;

    .line 484
    .line 485
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 490
    .line 491
    .line 492
    new-instance v3, Lc/n;

    .line 493
    .line 494
    invoke-direct {v3, v5, v1, v0}, Lc/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    .line 499
    .line 500
    goto :goto_c

    .line 501
    :cond_11
    invoke-virtual {v1, v6}, Ld3/e;->a(I)V

    .line 502
    .line 503
    .line 504
    :cond_12
    :goto_c
    if-eqz v0, :cond_13

    .line 505
    .line 506
    sget-object v1, Lx3/e;->b:Ls/s;

    .line 507
    .line 508
    invoke-static/range {p2 .. p6}, Lx3/e;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v1, v2, v0}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    :cond_13
    return-object v0
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
