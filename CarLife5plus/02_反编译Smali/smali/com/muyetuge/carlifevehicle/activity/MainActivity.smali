.class public final Lcom/muyetuge/carlifevehicle/activity/MainActivity;
.super Lj/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/muyetuge/carlifevehicle/activity/MainActivity;",
        "Lj/j;",
        "<init>",
        "()V",
        "a/a",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static y:Lcom/muyetuge/carlifevehicle/activity/MainActivity;

.field public static final z:Ldc/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->z:Ldc/l0;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "event"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lb8/b;->b:I

    .line 9
    .line 10
    sget-object v1, Lz7/b2;->Companion:Lz7/x1;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lz7/b2;->h:Ldc/l0;

    .line 16
    .line 17
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Iterable;

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lz7/b2;

    .line 43
    .line 44
    iget-object v3, v3, Lz7/b2;->c:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v3, v2}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    const/16 v3, 0xa

    .line 53
    .line 54
    invoke-static {v2, v3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lz7/a2;

    .line 76
    .line 77
    iget-object v3, v3, Lz7/a2;->d:Lz7/q1;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    instance-of v4, v3, Lz7/l0;

    .line 103
    .line 104
    if-eqz v4, :cond_2

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    new-instance v1, Lg9/t;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    const-string v7, "CarLife_Vehicle"

    .line 124
    .line 125
    const-wide/16 v8, 0x28a

    .line 126
    .line 127
    const/4 v10, 0x2

    .line 128
    const/4 v11, 0x1

    .line 129
    const/4 v12, 0x0

    .line 130
    if-eqz v5, :cond_10

    .line 131
    .line 132
    if-eq v5, v11, :cond_4

    .line 133
    .line 134
    goto/16 :goto_8

    .line 135
    .line 136
    :cond_4
    sget v5, Lb8/b;->b:I

    .line 137
    .line 138
    if-nez v5, :cond_5

    .line 139
    .line 140
    sput v11, Lb8/b;->b:I

    .line 141
    .line 142
    :cond_5
    sget-boolean v5, Lb8/b;->d:Z

    .line 143
    .line 144
    if-eqz v5, :cond_6

    .line 145
    .line 146
    sput v12, Lb8/b;->b:I

    .line 147
    .line 148
    :cond_6
    sget-wide v13, Lb8/b;->c:J

    .line 149
    .line 150
    sub-long v13, v3, v13

    .line 151
    .line 152
    cmp-long v15, v13, v8

    .line 153
    .line 154
    if-ltz v15, :cond_8

    .line 155
    .line 156
    if-nez v5, :cond_7

    .line 157
    .line 158
    invoke-static {v2, v1, v0, v10}, Lb8/b;->a(Ljava/util/ArrayList;Lg9/t;Landroid/view/KeyEvent;I)V

    .line 159
    .line 160
    .line 161
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 162
    .line 163
    new-array v5, v11, [Ljava/lang/Object;

    .line 164
    .line 165
    const-string v6, "\u3010\u952e\u76d8\u6309\u952e\u3011\u957f\u6309\u4e8b\u4ef6\u89e6\u53d1 (ACTION_UP)"

    .line 166
    .line 167
    aput-object v6, v5, v12

    .line 168
    .line 169
    invoke-virtual {v2, v7, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    sput-boolean v12, Lb8/b;->d:Z

    .line 173
    .line 174
    sput v12, Lb8/b;->b:I

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_8
    sget v7, Lb8/b;->b:I

    .line 178
    .line 179
    const-wide/16 v8, 0x1f4

    .line 180
    .line 181
    if-ne v7, v10, :cond_9

    .line 182
    .line 183
    sget-wide v15, Lb8/b;->a:J

    .line 184
    .line 185
    sub-long v15, v3, v15

    .line 186
    .line 187
    cmp-long v10, v15, v8

    .line 188
    .line 189
    if-gtz v10, :cond_9

    .line 190
    .line 191
    invoke-static {v2, v1, v0, v11}, Lb8/b;->a(Ljava/util/ArrayList;Lg9/t;Landroid/view/KeyEvent;I)V

    .line 192
    .line 193
    .line 194
    sput v12, Lb8/b;->b:I

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_9
    if-ne v7, v11, :cond_d

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_b

    .line 208
    .line 209
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    move-object v10, v7

    .line 214
    check-cast v10, Lz7/l0;

    .line 215
    .line 216
    iget v13, v10, Lz7/l0;->b:I

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 219
    .line 220
    .line 221
    move-result v14

    .line 222
    if-ne v13, v14, :cond_a

    .line 223
    .line 224
    iget v10, v10, Lz7/l0;->c:I

    .line 225
    .line 226
    if-nez v10, :cond_a

    .line 227
    .line 228
    move-object v6, v7

    .line 229
    goto :goto_3

    .line 230
    :cond_b
    const/4 v6, 0x0

    .line 231
    :goto_3
    check-cast v6, Lz7/l0;

    .line 232
    .line 233
    if-eqz v6, :cond_c

    .line 234
    .line 235
    iget-boolean v5, v6, Lz7/l0;->d:Z

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_c
    const/4 v5, 0x0

    .line 239
    :goto_4
    iput-boolean v5, v1, Lg9/t;->a:Z

    .line 240
    .line 241
    sget-object v5, Lb8/b;->e:Landroid/os/Handler;

    .line 242
    .line 243
    new-instance v6, Lb8/a;

    .line 244
    .line 245
    invoke-direct {v6, v0, v2, v1, v12}, Lb8/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_d
    cmp-long v6, v8, v13

    .line 253
    .line 254
    if-gtz v6, :cond_e

    .line 255
    .line 256
    const-wide/16 v6, 0x28b

    .line 257
    .line 258
    cmp-long v8, v13, v6

    .line 259
    .line 260
    if-gez v8, :cond_e

    .line 261
    .line 262
    if-nez v5, :cond_f

    .line 263
    .line 264
    invoke-static {v2, v1, v0, v12}, Lb8/b;->a(Ljava/util/ArrayList;Lg9/t;Landroid/view/KeyEvent;I)V

    .line 265
    .line 266
    .line 267
    sput v12, Lb8/b;->b:I

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_e
    sput-boolean v12, Lb8/b;->d:Z

    .line 271
    .line 272
    sput v12, Lb8/b;->b:I

    .line 273
    .line 274
    :cond_f
    :goto_5
    sput-wide v3, Lb8/b;->a:J

    .line 275
    .line 276
    sput-wide v3, Lb8/b;->c:J

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_10
    sget v5, Lb8/b;->b:I

    .line 280
    .line 281
    if-nez v5, :cond_14

    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-eqz v13, :cond_12

    .line 292
    .line 293
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v13

    .line 297
    move-object v14, v13

    .line 298
    check-cast v14, Lz7/l0;

    .line 299
    .line 300
    iget v15, v14, Lz7/l0;->b:I

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-ne v15, v6, :cond_11

    .line 307
    .line 308
    iget v6, v14, Lz7/l0;->c:I

    .line 309
    .line 310
    if-nez v6, :cond_11

    .line 311
    .line 312
    move-object v6, v13

    .line 313
    goto :goto_6

    .line 314
    :cond_12
    const/4 v6, 0x0

    .line 315
    :goto_6
    check-cast v6, Lz7/l0;

    .line 316
    .line 317
    if-eqz v6, :cond_13

    .line 318
    .line 319
    iget-boolean v5, v6, Lz7/l0;->d:Z

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_13
    const/4 v5, 0x0

    .line 323
    :goto_7
    iput-boolean v5, v1, Lg9/t;->a:Z

    .line 324
    .line 325
    const-wide/16 v5, 0x1

    .line 326
    .line 327
    sub-long v5, v3, v5

    .line 328
    .line 329
    sput-wide v5, Lb8/b;->c:J

    .line 330
    .line 331
    :cond_14
    sget-wide v5, Lb8/b;->c:J

    .line 332
    .line 333
    sub-long/2addr v3, v5

    .line 334
    cmp-long v5, v3, v8

    .line 335
    .line 336
    if-ltz v5, :cond_15

    .line 337
    .line 338
    sget-boolean v3, Lb8/b;->d:Z

    .line 339
    .line 340
    if-nez v3, :cond_15

    .line 341
    .line 342
    invoke-static {v2, v1, v0, v10}, Lb8/b;->a(Ljava/util/ArrayList;Lg9/t;Landroid/view/KeyEvent;I)V

    .line 343
    .line 344
    .line 345
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 346
    .line 347
    new-array v3, v11, [Ljava/lang/Object;

    .line 348
    .line 349
    const-string v4, "\u3010\u952e\u76d8\u6309\u952e\u3011\u957f\u6309\u4e8b\u4ef6\u89e6\u53d1 (ACTION_DOWN)"

    .line 350
    .line 351
    aput-object v4, v3, v12

    .line 352
    .line 353
    invoke-virtual {v2, v7, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    sput-boolean v11, Lb8/b;->d:Z

    .line 357
    .line 358
    sput v12, Lb8/b;->b:I

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_15
    sget v2, Lb8/b;->b:I

    .line 362
    .line 363
    add-int/2addr v2, v11

    .line 364
    sput v2, Lb8/b;->b:I

    .line 365
    .line 366
    :goto_8
    iget-boolean v1, v1, Lg9/t;->a:Z

    .line 367
    .line 368
    if-nez v1, :cond_17

    .line 369
    .line 370
    invoke-super/range {p0 .. p1}, Lj/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_16

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_16
    return v12

    .line 378
    :cond_17
    :goto_9
    return v11
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lp4/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lc/r;->a(Lj/j;)V

    .line 5
    .line 6
    .line 7
    sget-boolean p1, Lcom/muyetuge/carlifevehicle/service/MainService;->a:Z

    .line 8
    .line 9
    invoke-static {}, Lm9/e0;->E0()V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lf7/b;->b:Ln1/c;

    .line 13
    .line 14
    sget-object v0, Ld/a;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x1020002

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Lr2/h1;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    check-cast v0, Lr2/h1;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v0, v2

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lr2/a;->setParentCompositionContext(Lf1/v;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lr2/h1;->setContent(Lf9/n;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v0, Lr2/h1;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lr2/h1;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lr2/a;->setParentCompositionContext(Lf1/v;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lr2/h1;->setContent(Lf9/n;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Landroidx/lifecycle/i0;->e(Landroid/view/View;)Landroidx/lifecycle/t;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-static {p1, p0}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {p1}, Landroidx/lifecycle/i0;->f(Landroid/view/View;)Landroidx/lifecycle/s0;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    const v1, 0x7f0800c5

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {p1}, La/a;->r(Landroid/view/View;)La5/g;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    const v1, 0x7f0800c4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    sget-object p1, Ld/a;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    invoke-virtual {p0, v0, p1}, Lj/j;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lj/j;->onStart()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->y:Lcom/muyetuge/carlifevehicle/activity/MainActivity;

    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    sget-object v1, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->z:Ldc/l0;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v0}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v2, "\u3010\u4e3b\u8981\u6d3b\u52a8\u3011\u5e94\u7528\u524d\u53f0"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    const-string v2, "CarLife_Vehicle"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    invoke-super {p0}, Lj/j;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->y:Lcom/muyetuge/carlifevehicle/activity/MainActivity;

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    sget-object v2, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->z:Ldc/l0;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v2, "\u3010\u4e3b\u8981\u6d3b\u52a8\u3011\u5e94\u7528\u540e\u53f0"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    const-string v2, "CarLife_Vehicle"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx7/j;->m:Ldc/l0;

    .line 5
    .line 6
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lx7/j;

    .line 11
    .line 12
    iget-boolean v1, v1, Lx7/j;->i:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x80e

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lx7/j;

    .line 37
    .line 38
    invoke-static {p0, p1}, Lx7/k;->b(Landroid/app/Activity;Lx7/j;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
