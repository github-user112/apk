.class public abstract Lu7/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu7/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lu7/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lu7/j;->a:Lr8/o;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 5
    .line 6
    const-string p0, "\u65e0\u6cd5\u83b7\u53d6 Activity \u4e0a\u4e0b\u6587"

    .line 7
    .line 8
    invoke-static {v0, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static {p0, p2}, Lc7/a;->K(Landroid/content/Context;Ljava/util/List;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    invoke-static {p0, p1, p2}, Lu7/j;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lu7/j;->a:Lr8/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, p0}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "label"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 14
    .line 15
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6 Activity \u4e0a\u4e0b\u6587"

    .line 16
    .line 17
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ge v4, v5, :cond_2

    .line 39
    .line 40
    move-object/from16 v5, p2

    .line 41
    .line 42
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Ly6/a;

    .line 47
    .line 48
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    new-instance v10, Lu0/j;

    .line 58
    .line 59
    const/16 v4, 0x19

    .line 60
    .line 61
    invoke-direct {v10, v4, v1, v0}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v5, Ln6/a;

    .line 65
    .line 66
    invoke-direct {v5, v2}, Ln6/a;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v9, Lib/d;

    .line 70
    .line 71
    const/16 v0, 0x1d

    .line 72
    .line 73
    invoke-direct {v9, v0}, Lib/d;-><init>(I)V

    .line 74
    .line 75
    .line 76
    new-instance v13, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lm9/e0;->b0(Landroid/content/Context;)Landroid/app/Activity;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    sget-object v0, Li9/a;->a:Ljava/lang/Boolean;

    .line 86
    .line 87
    const/4 v3, 0x2

    .line 88
    const/4 v4, 0x1

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 96
    .line 97
    and-int/2addr v0, v3

    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    const/4 v0, 0x0

    .line 103
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Li9/a;->a:Ljava/lang/Boolean;

    .line 108
    .line 109
    :cond_4
    sget-object v0, Li9/a;->a:Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_15

    .line 116
    .line 117
    if-eqz v6, :cond_14

    .line 118
    .line 119
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_13

    .line 124
    .line 125
    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_12

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 136
    .line 137
    const-class v7, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 148
    .line 149
    const/16 v12, 0x1c

    .line 150
    .line 151
    if-lt v11, v12, :cond_5

    .line 152
    .line 153
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    if-lt v11, v12, :cond_5

    .line 156
    .line 157
    const/16 v12, 0x1e

    .line 158
    .line 159
    if-ge v11, v12, :cond_5

    .line 160
    .line 161
    const-class v11, Ljava/lang/Class;

    .line 162
    .line 163
    const-string v12, "getDeclaredMethod"

    .line 164
    .line 165
    new-array v14, v3, [Ljava/lang/Class;

    .line 166
    .line 167
    aput-object v7, v14, v2

    .line 168
    .line 169
    const-class v15, [Ljava/lang/Class;

    .line 170
    .line 171
    aput-object v15, v14, v4

    .line 172
    .line 173
    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    invoke-virtual {v11, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 178
    .line 179
    .line 180
    const-class v12, Landroid/content/res/AssetManager;

    .line 181
    .line 182
    new-array v14, v4, [Ljava/lang/Class;

    .line 183
    .line 184
    aput-object v7, v14, v2

    .line 185
    .line 186
    new-array v3, v3, [Ljava/lang/Object;

    .line 187
    .line 188
    const-string v15, "findCookieForPath"

    .line 189
    .line 190
    aput-object v15, v3, v2

    .line 191
    .line 192
    aput-object v14, v3, v4

    .line 193
    .line 194
    invoke-virtual {v11, v12, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Ljava/lang/reflect/Method;

    .line 199
    .line 200
    if-eqz v3, :cond_5

    .line 201
    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    new-array v12, v4, [Ljava/lang/Object;

    .line 210
    .line 211
    aput-object v0, v12, v2

    .line 212
    .line 213
    invoke-virtual {v3, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Ljava/lang/Integer;

    .line 218
    .line 219
    if-eqz v3, :cond_5

    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    goto :goto_7

    .line 226
    :catch_0
    move-exception v0

    .line 227
    goto :goto_3

    .line 228
    :catch_1
    move-exception v0

    .line 229
    goto :goto_4

    .line 230
    :catch_2
    move-exception v0

    .line 231
    goto :goto_5

    .line 232
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    const-string v11, "addAssetPath"

    .line 237
    .line 238
    new-array v12, v4, [Ljava/lang/Class;

    .line 239
    .line 240
    aput-object v7, v12, v2

    .line 241
    .line 242
    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    new-array v7, v4, [Ljava/lang/Object;

    .line 247
    .line 248
    aput-object v0, v7, v2

    .line 249
    .line 250
    invoke-virtual {v3, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Ljava/lang/Integer;

    .line 255
    .line 256
    if-eqz v0, :cond_6

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_7

    .line 263
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 272
    .line 273
    .line 274
    :cond_6
    :goto_6
    const/4 v0, 0x0

    .line 275
    :goto_7
    const/4 v3, 0x0

    .line 276
    if-nez v0, :cond_7

    .line 277
    .line 278
    :goto_8
    move-object v14, v3

    .line 279
    goto :goto_b

    .line 280
    :cond_7
    :try_start_1
    invoke-static {v1, v0}, Lp4/o;->R(Landroid/app/Activity;I)Lu6/a;

    .line 281
    .line 282
    .line 283
    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5

    .line 284
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v8, v7, Lu6/a;->a:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v0, v8}, Lm9/e0;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    .line 294
    if-nez v0, :cond_8

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :catch_3
    move-exception v0

    .line 298
    goto :goto_a

    .line 299
    :catch_4
    move-exception v0

    .line 300
    goto :goto_a

    .line 301
    :catch_5
    move-exception v0

    .line 302
    :goto_9
    move-object v7, v3

    .line 303
    goto :goto_a

    .line 304
    :catch_6
    move-exception v0

    .line 305
    goto :goto_9

    .line 306
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    .line 308
    .line 309
    :cond_8
    move-object v14, v7

    .line 310
    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_11

    .line 315
    .line 316
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_15

    .line 325
    .line 326
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    move-object v11, v0

    .line 331
    check-cast v11, Ly6/a;

    .line 332
    .line 333
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v15, "CREATOR"

    .line 346
    .line 347
    invoke-virtual {v0, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 348
    .line 349
    .line 350
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_7

    .line 351
    goto :goto_d

    .line 352
    :catch_7
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 354
    .line 355
    .line 356
    move-object v0, v3

    .line 357
    :goto_d
    if-eqz v0, :cond_10

    .line 358
    .line 359
    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 363
    instance-of v3, v15, Landroid/os/Parcelable$Creator;

    .line 364
    .line 365
    if-eqz v3, :cond_f

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    .line 372
    .line 373
    if-eqz v3, :cond_e

    .line 374
    .line 375
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 376
    .line 377
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    array-length v3, v0

    .line 382
    if-ne v3, v4, :cond_d

    .line 383
    .line 384
    aget-object v0, v0, v2

    .line 385
    .line 386
    instance-of v3, v0, Ljava/lang/Class;

    .line 387
    .line 388
    if-eqz v3, :cond_c

    .line 389
    .line 390
    check-cast v0, Ljava/lang/Class;

    .line 391
    .line 392
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_c

    .line 397
    .line 398
    check-cast v15, Landroid/os/Parcelable$Creator;

    .line 399
    .line 400
    invoke-interface {v15, v2}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-eqz v0, :cond_b

    .line 405
    .line 406
    invoke-virtual {v11, v6}, Ly6/a;->j(Landroid/app/Activity;)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 415
    .line 416
    if-lt v3, v0, :cond_a

    .line 417
    .line 418
    if-eqz v14, :cond_9

    .line 419
    .line 420
    iget-object v15, v14, Lu6/a;->c:Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {v11}, Ly6/a;->n()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-static {v0, v15}, Ly6/a;->f(Ljava/lang/String;Ljava/util/List;)Lv6/c;

    .line 427
    .line 428
    .line 429
    move-result-object v16

    .line 430
    move-object v12, v6

    .line 431
    invoke-virtual/range {v11 .. v16}, Ly6/a;->d(Landroid/app/Activity;Ljava/util/ArrayList;Lu6/a;Ljava/util/List;Lv6/c;)V

    .line 432
    .line 433
    .line 434
    :cond_9
    invoke-virtual {v11, v6, v13}, Ly6/a;->e(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 435
    .line 436
    .line 437
    const/4 v3, 0x0

    .line 438
    goto :goto_c

    .line 439
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 440
    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    const-string v3, "Request \""

    .line 444
    .line 445
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v11}, Ly6/a;->n()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v3, "\" permission, The targetSdkVersion SDK must be "

    .line 456
    .line 457
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string v0, " or more, if you do not want to upgrade targetSdkVersion, please apply with the old permission"

    .line 464
    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v1

    .line 476
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 477
    .line 478
    const-string v1, "The newArray method of the CREATOR field in this "

    .line 479
    .line 480
    const-string v2, " returns an empty value. This method cannot return an empty value"

    .line 481
    .line 482
    invoke-static {v1, v12, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v0

    .line 490
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 491
    .line 492
    const-string v1, "The generic type defined in the CREATOR field of this "

    .line 493
    .line 494
    const-string v2, " is incorrect"

    .line 495
    .line 496
    invoke-static {v1, v12, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 505
    .line 506
    const-string v1, "The number of generics defined in the CREATOR field of this "

    .line 507
    .line 508
    const-string v2, " can only be one"

    .line 509
    .line 510
    invoke-static {v1, v12, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    throw v0

    .line 518
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 519
    .line 520
    const-string v1, "The generic type defined for the CREATOR field in this "

    .line 521
    .line 522
    const-string v2, " is empty"

    .line 523
    .line 524
    invoke-static {v1, v12, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    throw v0

    .line 532
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 533
    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v2, "The CREATOR field in this "

    .line 537
    .line 538
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v2, " is not of type "

    .line 545
    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-class v2, Landroid/os/Parcelable$Creator;

    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v0

    .line 566
    :catch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 567
    .line 568
    const-string v1, "The CREATOR field in the "

    .line 569
    .line 570
    const-string v2, " has an access exception. Please modify CREATOR field with \"public static final\""

    .line 571
    .line 572
    invoke-static {v1, v12, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 581
    .line 582
    const-string v1, "This permission class does not define the CREATOR field"

    .line 583
    .line 584
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v0

    .line 588
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 589
    .line 590
    const-string v1, "The requested permission cannot be empty"

    .line 591
    .line 592
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 597
    .line 598
    const-string v1, "The activity has been destroyed, please manually determine the status of the activity"

    .line 599
    .line 600
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    throw v0

    .line 604
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 605
    .line 606
    const-string v1, "The activity has been finishing, please manually determine the status of the activity"

    .line 607
    .line 608
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    throw v0

    .line 612
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    const-string v1, "The instance of the context must be an activity object"

    .line 615
    .line 616
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    throw v0

    .line 620
    :cond_15
    invoke-static {v6}, Lm9/e0;->o0(Landroid/app/Activity;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-eqz v0, :cond_16

    .line 625
    .line 626
    goto/16 :goto_12

    .line 627
    .line 628
    :cond_16
    const-class v3, Lc7/a;

    .line 629
    .line 630
    monitor-enter v3

    .line 631
    const/4 v0, -0x1

    .line 632
    :cond_17
    :goto_e
    add-int/2addr v0, v4

    .line 633
    :try_start_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 634
    .line 635
    .line 636
    move-result v7

    .line 637
    if-ge v0, v7, :cond_1b

    .line 638
    .line 639
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v7

    .line 643
    check-cast v7, Ly6/a;

    .line 644
    .line 645
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 646
    .line 647
    invoke-virtual {v7}, Ly6/a;->h()I

    .line 648
    .line 649
    .line 650
    move-result v11

    .line 651
    if-lt v8, v11, :cond_18

    .line 652
    .line 653
    goto :goto_e

    .line 654
    :cond_18
    invoke-virtual {v7}, Ly6/a;->k()Ljava/util/List;

    .line 655
    .line 656
    .line 657
    move-result-object v7

    .line 658
    if-eqz v7, :cond_17

    .line 659
    .line 660
    check-cast v7, Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 663
    .line 664
    .line 665
    move-result v8

    .line 666
    if-eqz v8, :cond_19

    .line 667
    .line 668
    goto :goto_e

    .line 669
    :cond_19
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 670
    .line 671
    .line 672
    move-result-object v7

    .line 673
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    if-eqz v8, :cond_17

    .line 678
    .line 679
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    check-cast v8, Ly6/a;

    .line 684
    .line 685
    invoke-static {v13, v8}, Lm9/e0;->T(Ljava/util/ArrayList;Ly6/a;)Z

    .line 686
    .line 687
    .line 688
    move-result v11

    .line 689
    if-eqz v11, :cond_1a

    .line 690
    .line 691
    goto :goto_f

    .line 692
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 693
    .line 694
    invoke-virtual {v13, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 695
    .line 696
    .line 697
    goto :goto_f

    .line 698
    :catchall_0
    move-exception v0

    .line 699
    goto :goto_13

    .line 700
    :cond_1b
    monitor-exit v3

    .line 701
    invoke-static {v1, v13}, Lc7/a;->K(Landroid/content/Context;Ljava/util/List;)Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_1c

    .line 706
    .line 707
    new-instance v0, Ljava/util/ArrayList;

    .line 708
    .line 709
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-static {v13, v0, v10}, Ln6/a;->o(Ljava/util/ArrayList;Ljava/util/ArrayList;Lu0/j;)V

    .line 713
    .line 714
    .line 715
    goto :goto_12

    .line 716
    :cond_1c
    instance-of v0, v6, Lp4/n;

    .line 717
    .line 718
    if-eqz v0, :cond_1d

    .line 719
    .line 720
    move-object v0, v6

    .line 721
    check-cast v0, Lp4/n;

    .line 722
    .line 723
    new-instance v1, Lq6/a;

    .line 724
    .line 725
    iget-object v2, v0, Lp4/n;->s:Lkb/a;

    .line 726
    .line 727
    iget-object v2, v2, Lkb/a;->b:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v2, Lp4/m;

    .line 730
    .line 731
    iget-object v2, v2, Lp4/m;->e:Lp4/x;

    .line 732
    .line 733
    invoke-direct {v1, v0, v2, v4}, Lq6/a;-><init>(Landroid/app/Activity;Ljava/lang/Object;I)V

    .line 734
    .line 735
    .line 736
    :goto_10
    move-object v8, v1

    .line 737
    move-object v7, v13

    .line 738
    goto :goto_11

    .line 739
    :cond_1d
    new-instance v1, Lq6/a;

    .line 740
    .line 741
    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-direct {v1, v6, v0, v2}, Lq6/a;-><init>(Landroid/app/Activity;Ljava/lang/Object;I)V

    .line 746
    .line 747
    .line 748
    goto :goto_10

    .line 749
    :goto_11
    invoke-virtual/range {v5 .. v10}, Ln6/a;->p(Landroid/app/Activity;Ljava/util/ArrayList;Ld6/f;Lib/d;Lu0/j;)V

    .line 750
    .line 751
    .line 752
    :goto_12
    return-void

    .line 753
    :goto_13
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 754
    throw v0
.end method
