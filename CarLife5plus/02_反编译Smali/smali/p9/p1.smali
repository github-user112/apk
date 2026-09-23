.class public abstract Lp9/p1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static b:Ljava/lang/reflect/Method;

.field public static c:Z

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Z


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lp9/p1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static A(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v0, "r"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p1, v0

    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    move-object v2, v0

    .line 57
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_2
    move-exception v0

    .line 62
    move-object p1, v0

    .line 63
    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    :goto_1
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_3
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 77
    :catch_0
    :cond_1
    return-object v1
.end method

.method public static final B(ILf1/s;)Ld2/b;
    .locals 54

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lr2/n0;->b:Lf1/w2;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/content/Context;

    .line 12
    .line 13
    sget-object v3, Lr2/n0;->c:Lf1/c0;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/content/res/Resources;

    .line 20
    .line 21
    sget-object v4, Lr2/n0;->e:Lf1/w2;

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lw2/d;

    .line 28
    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    iget-object v5, v4, Lw2/d;->a:Ls/w;

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ls/k;->b(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/util/TypedValue;

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    new-instance v5, Landroid/util/TypedValue;

    .line 42
    .line 43
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0, v5, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 47
    .line 48
    .line 49
    iget-object v7, v4, Lw2/d;->a:Ls/w;

    .line 50
    .line 51
    invoke-virtual {v7, v0}, Ls/w;->d(I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget-object v9, v7, Ls/k;->c:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object v10, v9, v8

    .line 58
    .line 59
    iget-object v7, v7, Ls/k;->b:[I

    .line 60
    .line 61
    aput v0, v7, v8

    .line 62
    .line 63
    aput-object v5, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_27

    .line 68
    .line 69
    :cond_0
    :goto_0
    monitor-exit v4

    .line 70
    iget-object v4, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    if-eqz v4, :cond_34

    .line 74
    .line 75
    const-string v9, ".xml"

    .line 76
    .line 77
    invoke-static {v4, v9}, Lxb/i;->K(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-ne v9, v6, :cond_34

    .line 82
    .line 83
    const v4, -0x699b5122

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget v4, v5, Landroid/util/TypedValue;->changingConfigurations:I

    .line 94
    .line 95
    sget-object v5, Lr2/n0;->d:Lf1/w2;

    .line 96
    .line 97
    invoke-virtual {v1, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Lw2/c;

    .line 102
    .line 103
    new-instance v9, Lw2/b;

    .line 104
    .line 105
    invoke-direct {v9, v2, v0}, Lw2/b;-><init>(Landroid/content/res/Resources$Theme;I)V

    .line 106
    .line 107
    .line 108
    iget-object v10, v5, Lw2/c;->a:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 115
    .line 116
    if-eqz v10, :cond_1

    .line 117
    .line 118
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    check-cast v10, Lw2/a;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    const/4 v10, 0x0

    .line 126
    :goto_1
    if-nez v10, :cond_33

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    :goto_2
    const/4 v11, 0x2

    .line 137
    if-eq v10, v11, :cond_2

    .line 138
    .line 139
    if-eq v10, v6, :cond_2

    .line 140
    .line 141
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    goto :goto_2

    .line 146
    :cond_2
    if-ne v10, v11, :cond_32

    .line 147
    .line 148
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    const-string v12, "vector"

    .line 153
    .line 154
    invoke-static {v10, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_31

    .line 159
    .line 160
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    new-instance v12, Lf2/a;

    .line 165
    .line 166
    invoke-direct {v12, v0}, Lf2/a;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 167
    .line 168
    .line 169
    sget-object v13, Lf2/b;->a:[I

    .line 170
    .line 171
    invoke-static {v3, v2, v10, v13}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    invoke-virtual {v12, v14}, Lf2/a;->b(I)V

    .line 180
    .line 181
    .line 182
    const-string v14, "autoMirrored"

    .line 183
    .line 184
    invoke-static {v0, v14}, Lw3/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    const/4 v15, 0x5

    .line 189
    if-nez v14, :cond_3

    .line 190
    .line 191
    const/16 v25, 0x0

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    invoke-virtual {v13, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    move/from16 v25, v14

    .line 199
    .line 200
    :goto_3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    invoke-virtual {v12, v14}, Lf2/a;->b(I)V

    .line 205
    .line 206
    .line 207
    const-string v14, "viewportWidth"

    .line 208
    .line 209
    const/4 v7, 0x7

    .line 210
    const/4 v8, 0x0

    .line 211
    invoke-virtual {v12, v13, v14, v7, v8}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 212
    .line 213
    .line 214
    move-result v20

    .line 215
    const-string v14, "viewportHeight"

    .line 216
    .line 217
    const/16 v7, 0x8

    .line 218
    .line 219
    invoke-virtual {v12, v13, v14, v7, v8}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 220
    .line 221
    .line 222
    move-result v21

    .line 223
    cmpg-float v14, v20, v8

    .line 224
    .line 225
    if-lez v14, :cond_30

    .line 226
    .line 227
    cmpg-float v14, v21, v8

    .line 228
    .line 229
    if-lez v14, :cond_2f

    .line 230
    .line 231
    const/4 v14, 0x3

    .line 232
    invoke-virtual {v13, v14, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 233
    .line 234
    .line 235
    move-result v16

    .line 236
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    invoke-virtual {v12, v7}, Lf2/a;->b(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v13, v11, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    invoke-virtual {v12, v8}, Lf2/a;->b(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-eqz v8, :cond_6

    .line 259
    .line 260
    new-instance v8, Landroid/util/TypedValue;

    .line 261
    .line 262
    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v13, v6, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 266
    .line 267
    .line 268
    iget v8, v8, Landroid/util/TypedValue;->type:I

    .line 269
    .line 270
    if-ne v8, v11, :cond_4

    .line 271
    .line 272
    sget-wide v17, Ly1/q;->m:J

    .line 273
    .line 274
    :goto_4
    move-wide/from16 v22, v17

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_4
    invoke-static {v13, v0, v2}, Lw3/b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    invoke-virtual {v12, v11}, Lf2/a;->b(I)V

    .line 286
    .line 287
    .line 288
    if-eqz v8, :cond_5

    .line 289
    .line 290
    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    invoke-static {v8}, Ly1/h0;->c(I)J

    .line 295
    .line 296
    .line 297
    move-result-wide v17

    .line 298
    goto :goto_4

    .line 299
    :cond_5
    sget-wide v17, Ly1/q;->m:J

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_6
    sget-wide v17, Ly1/q;->m:J

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :goto_5
    const/4 v8, 0x6

    .line 306
    const/4 v11, -0x1

    .line 307
    invoke-virtual {v13, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    invoke-virtual {v12, v8}, Lf2/a;->b(I)V

    .line 316
    .line 317
    .line 318
    const/16 v8, 0x9

    .line 319
    .line 320
    if-eq v6, v11, :cond_7

    .line 321
    .line 322
    if-eq v6, v14, :cond_9

    .line 323
    .line 324
    if-eq v6, v15, :cond_7

    .line 325
    .line 326
    if-eq v6, v8, :cond_8

    .line 327
    .line 328
    packed-switch v6, :pswitch_data_0

    .line 329
    .line 330
    .line 331
    :cond_7
    const/16 v24, 0x5

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :pswitch_0
    const/16 v24, 0xc

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :pswitch_1
    const/16 v6, 0xe

    .line 338
    .line 339
    const/16 v24, 0xe

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :pswitch_2
    const/16 v24, 0xd

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_8
    const/16 v24, 0x9

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_9
    const/16 v24, 0x3

    .line 349
    .line 350
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 355
    .line 356
    div-float v18, v16, v6

    .line 357
    .line 358
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 363
    .line 364
    div-float v19, v7, v6

    .line 365
    .line 366
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    .line 368
    .line 369
    new-instance v16, Le2/e;

    .line 370
    .line 371
    const/16 v17, 0x0

    .line 372
    .line 373
    const/16 v26, 0x1

    .line 374
    .line 375
    invoke-direct/range {v16 .. v26}, Le2/e;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v6, v16

    .line 379
    .line 380
    const/4 v7, 0x0

    .line 381
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    const/4 v8, 0x1

    .line 386
    if-eq v13, v8, :cond_a

    .line 387
    .line 388
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 389
    .line 390
    .line 391
    move-result v13

    .line 392
    if-ge v13, v8, :cond_b

    .line 393
    .line 394
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    if-ne v8, v14, :cond_b

    .line 399
    .line 400
    :cond_a
    move/from16 v20, v4

    .line 401
    .line 402
    goto/16 :goto_25

    .line 403
    .line 404
    :cond_b
    const-string v8, "group"

    .line 405
    .line 406
    sget-object v38, Ls8/w;->a:Ls8/w;

    .line 407
    .line 408
    const-string v13, ""

    .line 409
    .line 410
    iget-object v11, v12, Lf2/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 411
    .line 412
    iget-object v15, v12, Lf2/a;->c:La2/d;

    .line 413
    .line 414
    move-object/from16 v19, v0

    .line 415
    .line 416
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    move/from16 v20, v4

    .line 421
    .line 422
    const/4 v4, 0x2

    .line 423
    if-eq v0, v4, :cond_10

    .line 424
    .line 425
    if-eq v0, v14, :cond_d

    .line 426
    .line 427
    :cond_c
    move/from16 v22, v7

    .line 428
    .line 429
    :goto_8
    const/4 v8, -0x1

    .line 430
    const/16 v11, 0xd

    .line 431
    .line 432
    const/4 v13, 0x1

    .line 433
    const/16 v27, 0x2

    .line 434
    .line 435
    goto/16 :goto_23

    .line 436
    .line 437
    :cond_d
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-eqz v0, :cond_c

    .line 446
    .line 447
    add-int/lit8 v7, v7, 0x1

    .line 448
    .line 449
    const/4 v0, 0x0

    .line 450
    :goto_9
    if-ge v0, v7, :cond_f

    .line 451
    .line 452
    iget-object v4, v6, Le2/e;->i:Ljava/util/ArrayList;

    .line 453
    .line 454
    iget-boolean v8, v6, Le2/e;->k:Z

    .line 455
    .line 456
    if-eqz v8, :cond_e

    .line 457
    .line 458
    const-string v8, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 459
    .line 460
    invoke-static {v8}, Ln2/a;->b(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    const/16 v28, 0x1

    .line 468
    .line 469
    add-int/lit8 v8, v8, -0x1

    .line 470
    .line 471
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    check-cast v8, Le2/d;

    .line 476
    .line 477
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 478
    .line 479
    .line 480
    move-result v11

    .line 481
    add-int/lit8 v11, v11, -0x1

    .line 482
    .line 483
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    check-cast v4, Le2/d;

    .line 488
    .line 489
    iget-object v4, v4, Le2/d;->j:Ljava/util/ArrayList;

    .line 490
    .line 491
    new-instance v29, Le2/h0;

    .line 492
    .line 493
    iget-object v11, v8, Le2/d;->a:Ljava/lang/String;

    .line 494
    .line 495
    iget v13, v8, Le2/d;->b:F

    .line 496
    .line 497
    iget v15, v8, Le2/d;->c:F

    .line 498
    .line 499
    iget v14, v8, Le2/d;->d:F

    .line 500
    .line 501
    move/from16 v22, v0

    .line 502
    .line 503
    iget v0, v8, Le2/d;->e:F

    .line 504
    .line 505
    move/from16 v34, v0

    .line 506
    .line 507
    iget v0, v8, Le2/d;->f:F

    .line 508
    .line 509
    move/from16 v35, v0

    .line 510
    .line 511
    iget v0, v8, Le2/d;->g:F

    .line 512
    .line 513
    move/from16 v36, v0

    .line 514
    .line 515
    iget v0, v8, Le2/d;->h:F

    .line 516
    .line 517
    move/from16 v37, v0

    .line 518
    .line 519
    iget-object v0, v8, Le2/d;->i:Ljava/util/List;

    .line 520
    .line 521
    iget-object v8, v8, Le2/d;->j:Ljava/util/ArrayList;

    .line 522
    .line 523
    move-object/from16 v38, v0

    .line 524
    .line 525
    move-object/from16 v39, v8

    .line 526
    .line 527
    move-object/from16 v30, v11

    .line 528
    .line 529
    move/from16 v31, v13

    .line 530
    .line 531
    move/from16 v33, v14

    .line 532
    .line 533
    move/from16 v32, v15

    .line 534
    .line 535
    invoke-direct/range {v29 .. v39}, Le2/h0;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 536
    .line 537
    .line 538
    move-object/from16 v0, v29

    .line 539
    .line 540
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    add-int/lit8 v0, v22, 0x1

    .line 544
    .line 545
    const/4 v14, 0x3

    .line 546
    goto :goto_9

    .line 547
    :cond_f
    const/4 v7, 0x0

    .line 548
    :goto_a
    const/4 v8, -0x1

    .line 549
    const/16 v11, 0xd

    .line 550
    .line 551
    :goto_b
    const/4 v13, 0x1

    .line 552
    const/16 v27, 0x2

    .line 553
    .line 554
    goto/16 :goto_24

    .line 555
    .line 556
    :cond_10
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    if-eqz v0, :cond_c

    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    const v14, -0x624e8b7e

    .line 567
    .line 568
    .line 569
    if-eq v4, v14, :cond_2a

    .line 570
    .line 571
    const v14, 0x346425

    .line 572
    .line 573
    .line 574
    move/from16 v22, v7

    .line 575
    .line 576
    const/high16 v7, 0x3f800000    # 1.0f

    .line 577
    .line 578
    if-eq v4, v14, :cond_15

    .line 579
    .line 580
    const v11, 0x5e0f67f

    .line 581
    .line 582
    .line 583
    if-eq v4, v11, :cond_11

    .line 584
    .line 585
    :goto_c
    goto/16 :goto_8

    .line 586
    .line 587
    :cond_11
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-nez v0, :cond_12

    .line 592
    .line 593
    :goto_d
    goto :goto_c

    .line 594
    :cond_12
    sget-object v0, Lf2/b;->b:[I

    .line 595
    .line 596
    invoke-static {v3, v2, v10, v0}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    invoke-virtual {v12, v4}, Lf2/a;->b(I)V

    .line 605
    .line 606
    .line 607
    const-string v4, "rotation"

    .line 608
    .line 609
    const/4 v8, 0x5

    .line 610
    const/4 v11, 0x0

    .line 611
    invoke-virtual {v12, v0, v4, v8, v11}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 612
    .line 613
    .line 614
    move-result v31

    .line 615
    const/4 v8, 0x1

    .line 616
    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 617
    .line 618
    .line 619
    move-result v32

    .line 620
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    invoke-virtual {v12, v4}, Lf2/a;->b(I)V

    .line 625
    .line 626
    .line 627
    const/4 v4, 0x2

    .line 628
    invoke-virtual {v0, v4, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 629
    .line 630
    .line 631
    move-result v33

    .line 632
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    invoke-virtual {v12, v4}, Lf2/a;->b(I)V

    .line 637
    .line 638
    .line 639
    const-string v4, "scaleX"

    .line 640
    .line 641
    const/4 v8, 0x3

    .line 642
    invoke-virtual {v12, v0, v4, v8, v7}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 643
    .line 644
    .line 645
    move-result v34

    .line 646
    const-string v4, "scaleY"

    .line 647
    .line 648
    const/4 v8, 0x4

    .line 649
    invoke-virtual {v12, v0, v4, v8, v7}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 650
    .line 651
    .line 652
    move-result v35

    .line 653
    const-string v4, "translateX"

    .line 654
    .line 655
    const/4 v7, 0x6

    .line 656
    invoke-virtual {v12, v0, v4, v7, v11}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 657
    .line 658
    .line 659
    move-result v36

    .line 660
    const-string v4, "translateY"

    .line 661
    .line 662
    const/4 v7, 0x7

    .line 663
    invoke-virtual {v12, v0, v4, v7, v11}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 664
    .line 665
    .line 666
    move-result v37

    .line 667
    const/4 v4, 0x0

    .line 668
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    invoke-virtual {v12, v4}, Lf2/a;->b(I)V

    .line 677
    .line 678
    .line 679
    if-nez v7, :cond_13

    .line 680
    .line 681
    move-object/from16 v30, v13

    .line 682
    .line 683
    goto :goto_e

    .line 684
    :cond_13
    move-object/from16 v30, v7

    .line 685
    .line 686
    :goto_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 687
    .line 688
    .line 689
    sget v0, Le2/i0;->a:I

    .line 690
    .line 691
    iget-boolean v0, v6, Le2/e;->k:Z

    .line 692
    .line 693
    if-eqz v0, :cond_14

    .line 694
    .line 695
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 696
    .line 697
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    :cond_14
    new-instance v29, Le2/d;

    .line 701
    .line 702
    const/16 v39, 0x200

    .line 703
    .line 704
    invoke-direct/range {v29 .. v39}, Le2/d;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    .line 705
    .line 706
    .line 707
    move-object/from16 v0, v29

    .line 708
    .line 709
    iget-object v4, v6, Le2/e;->i:Ljava/util/ArrayList;

    .line 710
    .line 711
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move/from16 v7, v22

    .line 715
    .line 716
    goto/16 :goto_a

    .line 717
    .line 718
    :cond_15
    const-string v4, "path"

    .line 719
    .line 720
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    if-nez v0, :cond_16

    .line 725
    .line 726
    goto/16 :goto_d

    .line 727
    .line 728
    :cond_16
    sget-object v0, Lf2/b;->c:[I

    .line 729
    .line 730
    invoke-static {v3, v2, v10, v0}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    invoke-virtual {v12, v4}, Lf2/a;->b(I)V

    .line 739
    .line 740
    .line 741
    const-string v4, "pathData"

    .line 742
    .line 743
    const-string v8, "http://schemas.android.com/apk/res/android"

    .line 744
    .line 745
    invoke-interface {v11, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    if-eqz v4, :cond_29

    .line 750
    .line 751
    const/4 v4, 0x0

    .line 752
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v8

    .line 756
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 757
    .line 758
    .line 759
    move-result v4

    .line 760
    invoke-virtual {v12, v4}, Lf2/a;->b(I)V

    .line 761
    .line 762
    .line 763
    if-nez v8, :cond_17

    .line 764
    .line 765
    move-object/from16 v40, v13

    .line 766
    .line 767
    :goto_f
    const/4 v4, 0x2

    .line 768
    goto :goto_10

    .line 769
    :cond_17
    move-object/from16 v40, v8

    .line 770
    .line 771
    goto :goto_f

    .line 772
    :goto_10
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v8

    .line 776
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 777
    .line 778
    .line 779
    move-result v4

    .line 780
    invoke-virtual {v12, v4}, Lf2/a;->b(I)V

    .line 781
    .line 782
    .line 783
    if-nez v8, :cond_18

    .line 784
    .line 785
    sget v4, Le2/i0;->a:I

    .line 786
    .line 787
    :goto_11
    move-object/from16 v41, v38

    .line 788
    .line 789
    goto :goto_12

    .line 790
    :cond_18
    invoke-static {v15, v8}, La2/d;->p(La2/d;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 791
    .line 792
    .line 793
    move-result-object v38

    .line 794
    goto :goto_11

    .line 795
    :goto_12
    const-string v4, "fillColor"

    .line 796
    .line 797
    iget-object v8, v12, Lf2/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 798
    .line 799
    const/4 v11, 0x1

    .line 800
    invoke-static {v0, v8, v2, v4, v11}, Lw3/b;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Le7/l;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 805
    .line 806
    .line 807
    move-result v8

    .line 808
    invoke-virtual {v12, v8}, Lf2/a;->b(I)V

    .line 809
    .line 810
    .line 811
    const-string v8, "fillAlpha"

    .line 812
    .line 813
    const/16 v11, 0xc

    .line 814
    .line 815
    invoke-virtual {v12, v0, v8, v11, v7}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 816
    .line 817
    .line 818
    move-result v44

    .line 819
    const-string v8, "strokeLineCap"

    .line 820
    .line 821
    iget-object v13, v12, Lf2/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 822
    .line 823
    invoke-static {v13, v8}, Lw3/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 824
    .line 825
    .line 826
    move-result v8

    .line 827
    if-nez v8, :cond_19

    .line 828
    .line 829
    const/4 v8, -0x1

    .line 830
    const/16 v14, 0x8

    .line 831
    .line 832
    goto :goto_13

    .line 833
    :cond_19
    const/4 v8, -0x1

    .line 834
    const/16 v14, 0x8

    .line 835
    .line 836
    invoke-virtual {v0, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 837
    .line 838
    .line 839
    move-result v13

    .line 840
    move v8, v13

    .line 841
    :goto_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 842
    .line 843
    .line 844
    move-result v13

    .line 845
    invoke-virtual {v12, v13}, Lf2/a;->b(I)V

    .line 846
    .line 847
    .line 848
    if-eqz v8, :cond_1c

    .line 849
    .line 850
    const/4 v13, 0x1

    .line 851
    if-eq v8, v13, :cond_1b

    .line 852
    .line 853
    const/4 v13, 0x2

    .line 854
    if-eq v8, v13, :cond_1a

    .line 855
    .line 856
    :goto_14
    const/16 v48, 0x0

    .line 857
    .line 858
    goto :goto_15

    .line 859
    :cond_1a
    const/16 v48, 0x2

    .line 860
    .line 861
    goto :goto_15

    .line 862
    :cond_1b
    const/4 v13, 0x2

    .line 863
    const/16 v48, 0x1

    .line 864
    .line 865
    goto :goto_15

    .line 866
    :cond_1c
    const/4 v13, 0x2

    .line 867
    goto :goto_14

    .line 868
    :goto_15
    const-string v8, "strokeLineJoin"

    .line 869
    .line 870
    iget-object v15, v12, Lf2/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 871
    .line 872
    invoke-static {v15, v8}, Lw3/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 873
    .line 874
    .line 875
    move-result v8

    .line 876
    if-nez v8, :cond_1d

    .line 877
    .line 878
    const/4 v8, -0x1

    .line 879
    const/4 v15, -0x1

    .line 880
    goto :goto_16

    .line 881
    :cond_1d
    const/16 v8, 0x9

    .line 882
    .line 883
    const/4 v15, -0x1

    .line 884
    invoke-virtual {v0, v8, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 885
    .line 886
    .line 887
    move-result v16

    .line 888
    move/from16 v8, v16

    .line 889
    .line 890
    :goto_16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 891
    .line 892
    .line 893
    move-result v11

    .line 894
    invoke-virtual {v12, v11}, Lf2/a;->b(I)V

    .line 895
    .line 896
    .line 897
    if-eqz v8, :cond_1f

    .line 898
    .line 899
    const/4 v11, 0x1

    .line 900
    if-eq v8, v11, :cond_1e

    .line 901
    .line 902
    const/16 v49, 0x2

    .line 903
    .line 904
    goto :goto_17

    .line 905
    :cond_1e
    const/16 v49, 0x1

    .line 906
    .line 907
    goto :goto_17

    .line 908
    :cond_1f
    const/16 v49, 0x0

    .line 909
    .line 910
    :goto_17
    const-string v8, "strokeMiterLimit"

    .line 911
    .line 912
    const/16 v11, 0xa

    .line 913
    .line 914
    invoke-virtual {v12, v0, v8, v11, v7}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 915
    .line 916
    .line 917
    move-result v50

    .line 918
    const-string v8, "strokeColor"

    .line 919
    .line 920
    iget-object v11, v12, Lf2/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 921
    .line 922
    const/4 v13, 0x3

    .line 923
    invoke-static {v0, v11, v2, v8, v13}, Lw3/b;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Le7/l;

    .line 924
    .line 925
    .line 926
    move-result-object v8

    .line 927
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 928
    .line 929
    .line 930
    move-result v11

    .line 931
    invoke-virtual {v12, v11}, Lf2/a;->b(I)V

    .line 932
    .line 933
    .line 934
    const-string v11, "strokeAlpha"

    .line 935
    .line 936
    const/16 v13, 0xb

    .line 937
    .line 938
    invoke-virtual {v12, v0, v11, v13, v7}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 939
    .line 940
    .line 941
    move-result v46

    .line 942
    const-string v11, "strokeWidth"

    .line 943
    .line 944
    const/4 v13, 0x4

    .line 945
    invoke-virtual {v12, v0, v11, v13, v7}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 946
    .line 947
    .line 948
    move-result v47

    .line 949
    const-string v11, "trimPathEnd"

    .line 950
    .line 951
    const/4 v13, 0x6

    .line 952
    invoke-virtual {v12, v0, v11, v13, v7}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 953
    .line 954
    .line 955
    move-result v52

    .line 956
    const-string v7, "trimPathOffset"

    .line 957
    .line 958
    const/4 v11, 0x7

    .line 959
    const/4 v13, 0x0

    .line 960
    invoke-virtual {v12, v0, v7, v11, v13}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 961
    .line 962
    .line 963
    move-result v53

    .line 964
    const-string v7, "trimPathStart"

    .line 965
    .line 966
    const/4 v11, 0x5

    .line 967
    invoke-virtual {v12, v0, v7, v11, v13}, Lf2/a;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 968
    .line 969
    .line 970
    move-result v51

    .line 971
    const-string v7, "fillType"

    .line 972
    .line 973
    iget-object v11, v12, Lf2/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 974
    .line 975
    invoke-static {v11, v7}, Lw3/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 976
    .line 977
    .line 978
    move-result v7

    .line 979
    if-nez v7, :cond_20

    .line 980
    .line 981
    const/16 v11, 0xd

    .line 982
    .line 983
    const/16 v16, 0x0

    .line 984
    .line 985
    goto :goto_18

    .line 986
    :cond_20
    const/4 v7, 0x0

    .line 987
    const/16 v11, 0xd

    .line 988
    .line 989
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 990
    .line 991
    .line 992
    move-result v16

    .line 993
    :goto_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 994
    .line 995
    .line 996
    move-result v7

    .line 997
    invoke-virtual {v12, v7}, Lf2/a;->b(I)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1001
    .line 1002
    .line 1003
    iget-object v0, v4, Le7/l;->c:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v0, Landroid/graphics/Shader;

    .line 1006
    .line 1007
    if-eqz v0, :cond_21

    .line 1008
    .line 1009
    goto :goto_19

    .line 1010
    :cond_21
    iget v7, v4, Le7/l;->b:I

    .line 1011
    .line 1012
    if-eqz v7, :cond_23

    .line 1013
    .line 1014
    :goto_19
    if-eqz v0, :cond_22

    .line 1015
    .line 1016
    new-instance v4, Ly1/n;

    .line 1017
    .line 1018
    invoke-direct {v4, v0}, Ly1/n;-><init>(Landroid/graphics/Shader;)V

    .line 1019
    .line 1020
    .line 1021
    move-object/from16 v43, v4

    .line 1022
    .line 1023
    goto :goto_1a

    .line 1024
    :cond_22
    new-instance v0, Ly1/n0;

    .line 1025
    .line 1026
    iget v4, v4, Le7/l;->b:I

    .line 1027
    .line 1028
    invoke-static {v4}, Ly1/h0;->c(I)J

    .line 1029
    .line 1030
    .line 1031
    move-result-wide v13

    .line 1032
    invoke-direct {v0, v13, v14}, Ly1/n0;-><init>(J)V

    .line 1033
    .line 1034
    .line 1035
    move-object/from16 v43, v0

    .line 1036
    .line 1037
    goto :goto_1a

    .line 1038
    :cond_23
    const/16 v43, 0x0

    .line 1039
    .line 1040
    :goto_1a
    iget-object v0, v8, Le7/l;->c:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v0, Landroid/graphics/Shader;

    .line 1043
    .line 1044
    if-eqz v0, :cond_24

    .line 1045
    .line 1046
    goto :goto_1b

    .line 1047
    :cond_24
    iget v4, v8, Le7/l;->b:I

    .line 1048
    .line 1049
    if-eqz v4, :cond_26

    .line 1050
    .line 1051
    :goto_1b
    if-eqz v0, :cond_25

    .line 1052
    .line 1053
    new-instance v4, Ly1/n;

    .line 1054
    .line 1055
    invoke-direct {v4, v0}, Ly1/n;-><init>(Landroid/graphics/Shader;)V

    .line 1056
    .line 1057
    .line 1058
    :goto_1c
    move-object/from16 v45, v4

    .line 1059
    .line 1060
    goto :goto_1d

    .line 1061
    :cond_25
    new-instance v4, Ly1/n0;

    .line 1062
    .line 1063
    iget v0, v8, Le7/l;->b:I

    .line 1064
    .line 1065
    invoke-static {v0}, Ly1/h0;->c(I)J

    .line 1066
    .line 1067
    .line 1068
    move-result-wide v7

    .line 1069
    invoke-direct {v4, v7, v8}, Ly1/n0;-><init>(J)V

    .line 1070
    .line 1071
    .line 1072
    goto :goto_1c

    .line 1073
    :cond_26
    const/16 v45, 0x0

    .line 1074
    .line 1075
    :goto_1d
    if-nez v16, :cond_27

    .line 1076
    .line 1077
    const/16 v42, 0x0

    .line 1078
    .line 1079
    goto :goto_1e

    .line 1080
    :cond_27
    const/16 v42, 0x1

    .line 1081
    .line 1082
    :goto_1e
    iget-boolean v0, v6, Le2/e;->k:Z

    .line 1083
    .line 1084
    if-eqz v0, :cond_28

    .line 1085
    .line 1086
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 1087
    .line 1088
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    :cond_28
    iget-object v0, v6, Le2/e;->i:Ljava/util/ArrayList;

    .line 1092
    .line 1093
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1094
    .line 1095
    .line 1096
    move-result v4

    .line 1097
    const/16 v28, 0x1

    .line 1098
    .line 1099
    add-int/lit8 v4, v4, -0x1

    .line 1100
    .line 1101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    check-cast v0, Le2/d;

    .line 1106
    .line 1107
    iget-object v0, v0, Le2/d;->j:Ljava/util/ArrayList;

    .line 1108
    .line 1109
    new-instance v39, Le2/l0;

    .line 1110
    .line 1111
    invoke-direct/range {v39 .. v53}, Le2/l0;-><init>(Ljava/lang/String;Ljava/util/List;ILy1/m;FLy1/m;FFIIFFFF)V

    .line 1112
    .line 1113
    .line 1114
    move-object/from16 v4, v39

    .line 1115
    .line 1116
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move/from16 v7, v22

    .line 1120
    .line 1121
    const/4 v8, -0x1

    .line 1122
    goto/16 :goto_b

    .line 1123
    .line 1124
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1125
    .line 1126
    const-string v1, "No path data available"

    .line 1127
    .line 1128
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    throw v0

    .line 1132
    :cond_2a
    move/from16 v22, v7

    .line 1133
    .line 1134
    move-object v4, v13

    .line 1135
    const/4 v8, -0x1

    .line 1136
    const/16 v11, 0xd

    .line 1137
    .line 1138
    const/16 v27, 0x2

    .line 1139
    .line 1140
    const-string v7, "clip-path"

    .line 1141
    .line 1142
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1143
    .line 1144
    .line 1145
    move-result v0

    .line 1146
    if-nez v0, :cond_2b

    .line 1147
    .line 1148
    const/4 v13, 0x1

    .line 1149
    goto :goto_23

    .line 1150
    :cond_2b
    sget-object v0, Lf2/b;->d:[I

    .line 1151
    .line 1152
    invoke-static {v3, v2, v10, v0}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1157
    .line 1158
    .line 1159
    move-result v7

    .line 1160
    invoke-virtual {v12, v7}, Lf2/a;->b(I)V

    .line 1161
    .line 1162
    .line 1163
    const/4 v7, 0x0

    .line 1164
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v13

    .line 1168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1169
    .line 1170
    .line 1171
    move-result v7

    .line 1172
    invoke-virtual {v12, v7}, Lf2/a;->b(I)V

    .line 1173
    .line 1174
    .line 1175
    if-nez v13, :cond_2c

    .line 1176
    .line 1177
    move-object/from16 v40, v4

    .line 1178
    .line 1179
    :goto_1f
    const/4 v13, 0x1

    .line 1180
    goto :goto_20

    .line 1181
    :cond_2c
    move-object/from16 v40, v13

    .line 1182
    .line 1183
    goto :goto_1f

    .line 1184
    :goto_20
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v4

    .line 1188
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1189
    .line 1190
    .line 1191
    move-result v7

    .line 1192
    invoke-virtual {v12, v7}, Lf2/a;->b(I)V

    .line 1193
    .line 1194
    .line 1195
    if-nez v4, :cond_2d

    .line 1196
    .line 1197
    sget v4, Le2/i0;->a:I

    .line 1198
    .line 1199
    :goto_21
    move-object/from16 v48, v38

    .line 1200
    .line 1201
    goto :goto_22

    .line 1202
    :cond_2d
    invoke-static {v15, v4}, La2/d;->p(La2/d;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v38

    .line 1206
    goto :goto_21

    .line 1207
    :goto_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1208
    .line 1209
    .line 1210
    iget-boolean v0, v6, Le2/e;->k:Z

    .line 1211
    .line 1212
    if-eqz v0, :cond_2e

    .line 1213
    .line 1214
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 1215
    .line 1216
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    :cond_2e
    new-instance v39, Le2/d;

    .line 1220
    .line 1221
    const/16 v49, 0x200

    .line 1222
    .line 1223
    const/16 v41, 0x0

    .line 1224
    .line 1225
    const/16 v42, 0x0

    .line 1226
    .line 1227
    const/16 v43, 0x0

    .line 1228
    .line 1229
    const/high16 v44, 0x3f800000    # 1.0f

    .line 1230
    .line 1231
    const/high16 v45, 0x3f800000    # 1.0f

    .line 1232
    .line 1233
    const/16 v46, 0x0

    .line 1234
    .line 1235
    const/16 v47, 0x0

    .line 1236
    .line 1237
    invoke-direct/range {v39 .. v49}, Le2/d;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    .line 1238
    .line 1239
    .line 1240
    move-object/from16 v0, v39

    .line 1241
    .line 1242
    iget-object v4, v6, Le2/e;->i:Ljava/util/ArrayList;

    .line 1243
    .line 1244
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    add-int/lit8 v7, v22, 0x1

    .line 1248
    .line 1249
    goto :goto_24

    .line 1250
    :goto_23
    move/from16 v7, v22

    .line 1251
    .line 1252
    :goto_24
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1253
    .line 1254
    .line 1255
    move-object/from16 v0, v19

    .line 1256
    .line 1257
    move/from16 v4, v20

    .line 1258
    .line 1259
    const/16 v8, 0x9

    .line 1260
    .line 1261
    const/4 v11, -0x1

    .line 1262
    const/4 v14, 0x3

    .line 1263
    const/4 v15, 0x5

    .line 1264
    goto/16 :goto_7

    .line 1265
    .line 1266
    :goto_25
    iget v0, v12, Lf2/a;->b:I

    .line 1267
    .line 1268
    or-int v0, v20, v0

    .line 1269
    .line 1270
    new-instance v10, Lw2/a;

    .line 1271
    .line 1272
    invoke-virtual {v6}, Le2/e;->b()Le2/f;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v2

    .line 1276
    invoke-direct {v10, v2, v0}, Lw2/a;-><init>(Le2/f;I)V

    .line 1277
    .line 1278
    .line 1279
    iget-object v0, v5, Lw2/c;->a:Ljava/util/HashMap;

    .line 1280
    .line 1281
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 1282
    .line 1283
    invoke-direct {v2, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    goto :goto_26

    .line 1290
    :cond_2f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1291
    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v2

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    .line 1305
    .line 1306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v1

    .line 1313
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    throw v0

    .line 1317
    :cond_30
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1318
    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    .line 1332
    .line 1333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1341
    .line 1342
    .line 1343
    throw v0

    .line 1344
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1345
    .line 1346
    const-string v1, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP"

    .line 1347
    .line 1348
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    throw v0

    .line 1352
    :cond_32
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1353
    .line 1354
    const-string v1, "No start tag found"

    .line 1355
    .line 1356
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    throw v0

    .line 1360
    :cond_33
    :goto_26
    iget-object v0, v10, Lw2/a;->a:Le2/f;

    .line 1361
    .line 1362
    invoke-static {v0, v1}, Le2/b;->c(Le2/f;Lf1/s;)Le2/k0;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    const/4 v4, 0x0

    .line 1367
    invoke-virtual {v1, v4}, Lf1/s;->p(Z)V

    .line 1368
    .line 1369
    .line 1370
    return-object v0

    .line 1371
    :cond_34
    const v5, -0x6998f1f8

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v1, v5}, Lf1/s;->W(I)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2

    .line 1381
    invoke-virtual {v1, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v5

    .line 1385
    invoke-virtual {v1, v0}, Lf1/s;->d(I)Z

    .line 1386
    .line 1387
    .line 1388
    move-result v6

    .line 1389
    or-int/2addr v5, v6

    .line 1390
    invoke-virtual {v1, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v2

    .line 1394
    or-int/2addr v2, v5

    .line 1395
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v5

    .line 1399
    if-nez v2, :cond_35

    .line 1400
    .line 1401
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 1402
    .line 1403
    if-ne v5, v2, :cond_36

    .line 1404
    .line 1405
    :cond_35
    const/4 v2, 0x0

    .line 1406
    :try_start_1
    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    .line 1411
    .line 1412
    invoke-static {v0, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1416
    .line 1417
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v0

    .line 1421
    new-instance v5, Ly1/f;

    .line 1422
    .line 1423
    invoke-direct {v5, v0}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1427
    .line 1428
    .line 1429
    :cond_36
    check-cast v5, Ly1/f;

    .line 1430
    .line 1431
    new-instance v0, Ld2/a;

    .line 1432
    .line 1433
    iget-object v2, v5, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 1434
    .line 1435
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1436
    .line 1437
    .line 1438
    move-result v2

    .line 1439
    iget-object v3, v5, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 1440
    .line 1441
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1442
    .line 1443
    .line 1444
    move-result v3

    .line 1445
    int-to-long v6, v2

    .line 1446
    const/16 v2, 0x20

    .line 1447
    .line 1448
    shl-long/2addr v6, v2

    .line 1449
    int-to-long v2, v3

    .line 1450
    const-wide v8, 0xffffffffL

    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    and-long/2addr v2, v8

    .line 1456
    or-long/2addr v2, v6

    .line 1457
    invoke-direct {v0, v5, v2, v3}, Ld2/a;-><init>(Ly1/f;J)V

    .line 1458
    .line 1459
    .line 1460
    const/4 v4, 0x0

    .line 1461
    invoke-virtual {v1, v4}, Lf1/s;->p(Z)V

    .line 1462
    .line 1463
    .line 1464
    return-object v0

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    new-instance v1, Lac/p;

    .line 1467
    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    const-string v3, "Error attempting to load resource: "

    .line 1471
    .line 1472
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v2

    .line 1482
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1483
    .line 1484
    .line 1485
    throw v1

    .line 1486
    :goto_27
    monitor-exit v4

    .line 1487
    throw v0

    .line 1488
    nop

    .line 1489
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final C(Lf1/s;)Lx/n1;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lf1/s;->d(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p0}, Lf1/s;->K()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 15
    .line 16
    if-ne v3, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    new-instance v3, Lu7/i;

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-direct {v3, v2}, Lu7/i;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    check-cast v3, Lf9/a;

    .line 29
    .line 30
    sget-object v2, Lx/n1;->i:Lu0/j;

    .line 31
    .line 32
    invoke-static {v1, v2, v3, p0, v0}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lx/n1;

    .line 37
    .line 38
    return-object p0
.end method

.method public static D(Lr1/p;Lx/n1;Z)Lr1/p;
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lz/w0;->a:Lz/w0;

    .line 4
    .line 5
    :goto_0
    move-object v3, v0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lz/w0;->b:Lz/w0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :goto_1
    iget-object v6, p1, Lx/n1;->c:Lb0/k;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/a;->i(Lr1/p;Lz/m1;Lz/w0;ZLz/h;Lb0/k;ZLx/h;)Lr1/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Landroidx/compose/foundation/ScrollingLayoutElement;

    .line 23
    .line 24
    invoke-direct {p1, v2, p2}, Landroidx/compose/foundation/ScrollingLayoutElement;-><init>(Lx/n1;Z)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, p1}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static E(Landroid/graphics/drawable/Drawable;I)Z
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Li4/b;->p(Landroid/graphics/drawable/Drawable;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    sget-boolean v0, Lp9/p1;->c:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "DrawableCompat"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    const-string v4, "setLayoutDirection"

    .line 23
    .line 24
    new-array v5, v3, [Ljava/lang/Class;

    .line 25
    .line 26
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    aput-object v6, v5, v1

    .line 29
    .line 30
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lp9/p1;->b:Ljava/lang/reflect/Method;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    .line 42
    .line 43
    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    sput-boolean v3, Lp9/p1;->c:Z

    .line 47
    .line 48
    :cond_1
    sget-object v0, Lp9/p1;->b:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-array v4, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object p1, v4, v1

    .line 59
    .line 60
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    .line 62
    .line 63
    return v3

    .line 64
    :catch_1
    move-exception p0

    .line 65
    const-string p1, "Failed to invoke setLayoutDirection(int) via reflection"

    .line 66
    .line 67
    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    sput-object p0, Lp9/p1;->b:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    :cond_2
    return v1
.end method

.method public static F(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x41

    .line 27
    .line 28
    if-gt v4, v3, :cond_0

    .line 29
    .line 30
    const/16 v4, 0x5b

    .line 31
    .line 32
    if-ge v3, v4, :cond_0

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "toString(...)"

    .line 49
    .line 50
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method

.method public static H(Lua/c;)Lua/b;
    .locals 2

    .line 1
    const-string v0, "topLevelFqName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lua/b;

    .line 7
    .line 8
    invoke-virtual {p0}, Lua/c;->b()Lua/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object p0, p0, Lua/c;->a:Lua/d;

    .line 13
    .line 14
    invoke-virtual {p0}, Lua/d;->f()Lua/e;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, v1, p0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static I(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Ly3/a;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ly3/c;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ly3/c;->c()Ly3/d;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Ly3/c;->d:Ly3/d;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ly3/c;->h(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ly3/c;->a()V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Ls1/e;
    .locals 1

    .line 1
    new-instance v0, Ls1/e;

    .line 2
    .line 3
    invoke-static {p0}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ls1/e;-><init>(Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final b(Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 14

    .line 1
    move-object/from16 v7, p2

    .line 2
    .line 3
    move/from16 v8, p3

    .line 4
    .line 5
    const v0, 0x2f1e7ec1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, v8, 0x6

    .line 12
    .line 13
    const/4 v9, 0x4

    .line 14
    const/4 v2, 0x2

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v7, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, v8

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v8

    .line 29
    :goto_1
    and-int/lit8 v4, v8, 0x30

    .line 30
    .line 31
    if-nez v4, :cond_3

    .line 32
    .line 33
    invoke-virtual {v7, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    const/16 v4, 0x20

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v4, 0x10

    .line 43
    .line 44
    :goto_2
    or-int/2addr v0, v4

    .line 45
    :cond_3
    and-int/lit8 v4, v0, 0x13

    .line 46
    .line 47
    const/16 v5, 0x12

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v10, 0x1

    .line 51
    if-eq v4, v5, :cond_4

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/4 v4, 0x0

    .line 56
    :goto_3
    and-int/2addr v0, v10

    .line 57
    invoke-virtual {v7, v0, v4}, Lf1/s;->N(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 68
    .line 69
    if-ne v0, v4, :cond_5

    .line 70
    .line 71
    sget-object v0, Lf1/w0;->c:Lf1/w0;

    .line 72
    .line 73
    new-instance v5, Lf1/k1;

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    invoke-direct {v5, v11, v0}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object v0, v5

    .line 83
    :cond_5
    check-cast v0, Lf1/b1;

    .line 84
    .line 85
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-ne v5, v4, :cond_6

    .line 90
    .line 91
    new-instance v5, Lj8/h;

    .line 92
    .line 93
    const/16 v4, 0x19

    .line 94
    .line 95
    invoke-direct {v5, v0, v4}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    check-cast v5, Lf9/a;

    .line 102
    .line 103
    sget-object v4, Lq0/k;->a:Lr3/z;

    .line 104
    .line 105
    sget-object v4, Lq0/i;->b:Ln1/c;

    .line 106
    .line 107
    const/4 v11, 0x6

    .line 108
    invoke-static {v4, v7, v11}, Lp9/q;->k(Ln1/c;Lf1/s;I)Ls0/c;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v5, v7, v2}, Lp9/q;->H(Lf9/a;Lf1/s;I)Lq0/f;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    sget-object v12, Ls0/g;->b:Lf1/c0;

    .line 117
    .line 118
    invoke-virtual {v12, v11}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    sget-object v12, Ls0/g;->a:Lf1/c0;

    .line 123
    .line 124
    invoke-virtual {v12, v4}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    new-array v13, v2, [Lf1/u1;

    .line 129
    .line 130
    aput-object v11, v13, v6

    .line 131
    .line 132
    aput-object v12, v13, v10

    .line 133
    .line 134
    move-object v2, v0

    .line 135
    new-instance v0, La8/r0;

    .line 136
    .line 137
    const/4 v6, 0x5

    .line 138
    move-object v1, p0

    .line 139
    move-object v3, p1

    .line 140
    invoke-direct/range {v0 .. v6}, La8/r0;-><init>(Ljava/lang/Object;Lf1/b1;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    const v2, 0x3fd00381

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v0, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const/16 v2, 0x38

    .line 151
    .line 152
    invoke-static {v13, v0, v7, v2}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_7
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 157
    .line 158
    .line 159
    :goto_4
    invoke-virtual {v7}, Lf1/s;->r()Lf1/w1;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    new-instance v2, Lq0/g;

    .line 166
    .line 167
    invoke-direct {v2, p0, p1, v8, v9}, Lq0/g;-><init>(Lr1/p;Ln1/c;II)V

    .line 168
    .line 169
    .line 170
    iput-object v2, v0, Lf1/w1;->d:Lf9/n;

    .line 171
    .line 172
    :cond_8
    return-void
.end method

.method public static final c(Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 9

    .line 1
    const v0, 0x94b3c0e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p3

    .line 23
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 24
    .line 25
    const/16 v2, 0x20

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 42
    .line 43
    const/16 v3, 0x12

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x1

    .line 47
    if-eq v1, v3, :cond_4

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    const/4 v1, 0x0

    .line 52
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 53
    .line 54
    invoke-virtual {p2, v3, v1}, Lf1/s;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_d

    .line 59
    .line 60
    sget-object v1, Ls0/g;->a:Lf1/c0;

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    const/4 v1, 0x0

    .line 71
    :goto_4
    sget-object v3, Ls0/g;->b:Lf1/c0;

    .line 72
    .line 73
    invoke-virtual {p2, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_6

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    goto :goto_5

    .line 81
    :cond_6
    const/4 v3, 0x0

    .line 82
    :goto_5
    if-eqz v1, :cond_a

    .line 83
    .line 84
    if-eqz v3, :cond_a

    .line 85
    .line 86
    const v1, -0x75d90252

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 90
    .line 91
    .line 92
    sget-object v1, Lr1/c;->a:Lr1/h;

    .line 93
    .line 94
    invoke-static {v1, v5}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-wide v6, p2, Lf1/s;->T:J

    .line 99
    .line 100
    ushr-long v2, v6, v2

    .line 101
    .line 102
    xor-long/2addr v2, v6

    .line 103
    long-to-int v3, v2

    .line 104
    invoke-virtual {p2}, Lf1/s;->l()Lf1/q1;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {p2, p0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    sget-object v7, Lq2/j;->d0:Lq2/i;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    sget-object v7, Lq2/i;->b:Lq2/a0;

    .line 118
    .line 119
    invoke-virtual {p2}, Lf1/s;->a0()V

    .line 120
    .line 121
    .line 122
    iget-boolean v8, p2, Lf1/s;->S:Z

    .line 123
    .line 124
    if-eqz v8, :cond_7

    .line 125
    .line 126
    invoke-virtual {p2, v7}, Lf1/s;->k(Lf9/a;)V

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_7
    invoke-virtual {p2}, Lf1/s;->k0()V

    .line 131
    .line 132
    .line 133
    :goto_6
    sget-object v7, Lq2/i;->e:Lq2/h;

    .line 134
    .line 135
    invoke-static {p2, v7, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 139
    .line 140
    invoke-static {p2, v1, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    sget-object v1, Lq2/i;->f:Lq2/h;

    .line 144
    .line 145
    iget-boolean v2, p2, Lf1/s;->S:Z

    .line 146
    .line 147
    if-nez v2, :cond_8

    .line 148
    .line 149
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static {v2, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_9

    .line 162
    .line 163
    :cond_8
    invoke-static {v3, p2, v3, v1}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 164
    .line 165
    .line 166
    :cond_9
    sget-object v1, Lq2/i;->c:Lq2/h;

    .line 167
    .line 168
    invoke-static {p2, v1, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    shr-int/lit8 v0, v0, 0x3

    .line 172
    .line 173
    and-int/lit8 v0, v0, 0xe

    .line 174
    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, p2, v0}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v4}, Lf1/s;->p(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    if-eqz v1, :cond_b

    .line 190
    .line 191
    const v1, -0x75d61b4a

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 195
    .line 196
    .line 197
    and-int/lit8 v0, v0, 0x7e

    .line 198
    .line 199
    invoke-static {p0, p1, p2, v0}, Lp9/q;->f(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v4}, Lf1/s;->p(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_b
    if-eqz v3, :cond_c

    .line 207
    .line 208
    const v1, -0x75d3ce4a

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 212
    .line 213
    .line 214
    and-int/lit8 v0, v0, 0x7e

    .line 215
    .line 216
    invoke-static {p0, p1, p2, v0}, Lq0/k;->d(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v4}, Lf1/s;->p(Z)V

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_c
    const v1, -0x75d1d0d9

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 227
    .line 228
    .line 229
    and-int/lit8 v0, v0, 0x7e

    .line 230
    .line 231
    invoke-static {p0, p1, p2, v0}, Lp9/p1;->b(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v4}, Lf1/s;->p(Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_d
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 239
    .line 240
    .line 241
    :goto_7
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    if-eqz p2, :cond_e

    .line 246
    .line 247
    new-instance v0, Lq0/g;

    .line 248
    .line 249
    const/4 v1, 0x3

    .line 250
    invoke-direct {v0, p0, p1, p3, v1}, Lq0/g;-><init>(Lr1/p;Ln1/c;II)V

    .line 251
    .line 252
    .line 253
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 254
    .line 255
    :cond_e
    return-void
.end method

.method public static final d(JJ)Lx1/c;
    .locals 8

    .line 1
    new-instance v0, Lx1/c;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    shr-long v2, p0, v1

    .line 6
    .line 7
    long-to-int v3, v2

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-wide v4, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr p0, v4

    .line 18
    long-to-int p1, p0

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    shr-long v6, p2, v1

    .line 28
    .line 29
    long-to-int v1, v6

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-float/2addr v1, v3

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    and-long/2addr p2, v4

    .line 40
    long-to-int p3, p2

    .line 41
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    add-float/2addr p2, p1

    .line 46
    invoke-direct {v0, v2, p0, v1, p2}, Lx1/c;-><init>(FFFF)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static final e([F)I
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    aget v0, p0, v2

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    cmpg-float v0, v0, v3

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    aget v0, p0, v1

    .line 19
    .line 20
    cmpg-float v0, v0, v4

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aget v0, p0, v0

    .line 26
    .line 27
    cmpg-float v0, v0, v4

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    aget v0, p0, v0

    .line 33
    .line 34
    cmpg-float v0, v0, v4

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x5

    .line 39
    aget v0, p0, v0

    .line 40
    .line 41
    cmpg-float v0, v0, v3

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x6

    .line 46
    aget v0, p0, v0

    .line 47
    .line 48
    cmpg-float v0, v0, v4

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    aget v0, p0, v0

    .line 55
    .line 56
    cmpg-float v0, v0, v4

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    const/16 v0, 0x9

    .line 61
    .line 62
    aget v0, p0, v0

    .line 63
    .line 64
    cmpg-float v0, v0, v4

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    const/16 v0, 0xa

    .line 69
    .line 70
    aget v0, p0, v0

    .line 71
    .line 72
    cmpg-float v0, v0, v3

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    :goto_0
    const/16 v5, 0xc

    .line 80
    .line 81
    aget v5, p0, v5

    .line 82
    .line 83
    cmpg-float v5, v5, v4

    .line 84
    .line 85
    if-nez v5, :cond_2

    .line 86
    .line 87
    const/16 v5, 0xd

    .line 88
    .line 89
    aget v5, p0, v5

    .line 90
    .line 91
    cmpg-float v5, v5, v4

    .line 92
    .line 93
    if-nez v5, :cond_2

    .line 94
    .line 95
    const/16 v5, 0xe

    .line 96
    .line 97
    aget v5, p0, v5

    .line 98
    .line 99
    cmpg-float v4, v5, v4

    .line 100
    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    const/16 v4, 0xf

    .line 104
    .line 105
    aget p0, p0, v4

    .line 106
    .line 107
    cmpg-float p0, p0, v3

    .line 108
    .line 109
    if-nez p0, :cond_2

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    :cond_2
    shl-int/lit8 p0, v0, 0x1

    .line 113
    .line 114
    or-int/2addr p0, v2

    .line 115
    return p0
.end method

.method public static final f(Lp9/j1;Z)Lq9/g;
    .locals 8

    .line 1
    sget-object v0, Lp9/h0;->a:Lg9/x;

    .line 2
    .line 3
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lp9/o1;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "input"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/regex/Pattern;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget-object p0, Lq9/a0;->a:Lq9/a0;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lp9/a2;->a:Lua/b;

    .line 35
    .line 36
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lp9/o1;->q()Lv9/k0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lp9/a2;->b(Lv9/k0;)Lp9/q;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    instance-of v1, v0, Lp9/o;

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v1, :cond_e

    .line 53
    .line 54
    check-cast v0, Lp9/o;

    .line 55
    .line 56
    iget-object v1, v0, Lp9/o;->f:Lra/f;

    .line 57
    .line 58
    iget-object v0, v0, Lp9/o;->e:Lsa/e;

    .line 59
    .line 60
    const/4 v4, 0x4

    .line 61
    const/4 v5, 0x0

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget v6, v0, Lsa/e;->b:I

    .line 65
    .line 66
    and-int/2addr v6, v4

    .line 67
    if-ne v6, v4, :cond_1

    .line 68
    .line 69
    iget-object v0, v0, Lsa/e;->e:Lsa/c;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object v0, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget v6, v0, Lsa/e;->b:I

    .line 75
    .line 76
    const/16 v7, 0x8

    .line 77
    .line 78
    and-int/2addr v6, v7

    .line 79
    if-ne v6, v7, :cond_1

    .line 80
    .line 81
    iget-object v0, v0, Lsa/e;->f:Lsa/c;

    .line 82
    .line 83
    :goto_0
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v5, v5, Lp9/o1;->c:Lp9/h0;

    .line 90
    .line 91
    iget v6, v0, Lsa/c;->c:I

    .line 92
    .line 93
    invoke-interface {v1, v6}, Lra/f;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget v0, v0, Lsa/c;->d:I

    .line 98
    .line 99
    invoke-interface {v1, v0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v5, v6, v0}, Lp9/h0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    :cond_3
    if-nez v5, :cond_8

    .line 108
    .line 109
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lp9/o1;->q()Lv9/k0;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lxa/f;->e(Lv9/t0;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lp9/o1;->q()Lv9/k0;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Lv9/w;->d()Lea/o;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sget-object v1, Lv9/o;->d:Lea/o;

    .line 136
    .line 137
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lp9/o1;->q()Lv9/k0;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Lp9/x1;->N(Lv9/k;)Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_5

    .line 160
    .line 161
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lp9/o1;->q()Lv9/k0;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {p1, v0}, Lp9/x1;->t(Ljava/lang/Class;Lv9/c;)Ljava/lang/reflect/Method;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    new-instance v0, Lq9/x;

    .line 180
    .line 181
    invoke-static {p0}, Lp9/p1;->t(Lp9/j1;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v0, p1, v1}, Lq9/x;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_3

    .line 189
    .line 190
    :cond_4
    new-instance v0, Lq9/y;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-direct {v0, p1, v1}, Lq9/z;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    :cond_5
    new-instance p1, Lac/y;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v1, "Underlying property of inline class "

    .line 210
    .line 211
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p0, " should have a field"

    .line 222
    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-direct {p1, v2, p0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p1

    .line 234
    :cond_6
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v0, v0, Lp9/o1;->g:Ljava/lang/Object;

    .line 239
    .line 240
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Ljava/lang/reflect/Field;

    .line 245
    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    invoke-static {p0, p1, v0}, Lp9/p1;->m(Lp9/j1;ZLjava/lang/reflect/Field;)Lq9/w;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_7
    new-instance p1, Lac/y;

    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v1, "No accessors or field is found for property "

    .line 259
    .line 260
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-direct {p1, v2, p0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p1

    .line 278
    :cond_8
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-nez p1, :cond_a

    .line 287
    .line 288
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_9

    .line 293
    .line 294
    new-instance p1, Lq9/r;

    .line 295
    .line 296
    invoke-static {p0}, Lp9/p1;->t(Lp9/j1;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-direct {p1, v5, v0}, Lq9/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :goto_1
    move-object v0, p1

    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :cond_9
    new-instance p1, Lq9/v;

    .line 307
    .line 308
    invoke-direct {p1, v5}, Lq9/v;-><init>(Ljava/lang/reflect/Method;)V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_a
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lp9/o1;->q()Lv9/k0;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-interface {p1}, Lw9/a;->getAnnotations()Lw9/h;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    sget-object v0, Lp9/c2;->a:Lua/c;

    .line 325
    .line 326
    invoke-interface {p1, v0}, Lw9/h;->g(Lua/c;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_c

    .line 331
    .line 332
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_b

    .line 337
    .line 338
    new-instance p1, Lq9/s;

    .line 339
    .line 340
    invoke-direct {p1, v5, v3, v4}, Lq9/q;-><init>(Ljava/lang/reflect/Method;ZI)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_b
    new-instance p1, Lq9/v;

    .line 345
    .line 346
    const/4 v0, 0x1

    .line 347
    invoke-direct {p1, v5, v0, v4, v0}, Lq9/v;-><init>(Ljava/lang/reflect/Method;ZII)V

    .line 348
    .line 349
    .line 350
    goto :goto_1

    .line 351
    :cond_c
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-eqz p1, :cond_d

    .line 356
    .line 357
    new-instance p1, Lq9/t;

    .line 358
    .line 359
    invoke-static {p0}, Lp9/p1;->t(Lp9/j1;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-direct {p1, v5, v3, v0}, Lq9/t;-><init>(Ljava/lang/reflect/Method;ZLjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    goto :goto_1

    .line 367
    :cond_d
    new-instance p1, Lq9/v;

    .line 368
    .line 369
    const/4 v0, 0x6

    .line 370
    invoke-direct {p1, v5, v3, v0, v2}, Lq9/v;-><init>(Ljava/lang/reflect/Method;ZII)V

    .line 371
    .line 372
    .line 373
    goto :goto_1

    .line 374
    :cond_e
    instance-of v1, v0, Lp9/m;

    .line 375
    .line 376
    if-eqz v1, :cond_f

    .line 377
    .line 378
    check-cast v0, Lp9/m;

    .line 379
    .line 380
    iget-object v0, v0, Lp9/m;->c:Ljava/lang/reflect/Field;

    .line 381
    .line 382
    invoke-static {p0, p1, v0}, Lp9/p1;->m(Lp9/j1;ZLjava/lang/reflect/Field;)Lq9/w;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    goto :goto_3

    .line 387
    :cond_f
    instance-of v1, v0, Lp9/n;

    .line 388
    .line 389
    if-eqz v1, :cond_13

    .line 390
    .line 391
    if-eqz p1, :cond_10

    .line 392
    .line 393
    check-cast v0, Lp9/n;

    .line 394
    .line 395
    iget-object p1, v0, Lp9/n;->c:Ljava/lang/reflect/Method;

    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_10
    check-cast v0, Lp9/n;

    .line 399
    .line 400
    iget-object p1, v0, Lp9/n;->d:Ljava/lang/reflect/Method;

    .line 401
    .line 402
    if-eqz p1, :cond_12

    .line 403
    .line 404
    :goto_2
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_11

    .line 409
    .line 410
    new-instance v0, Lq9/r;

    .line 411
    .line 412
    invoke-static {p0}, Lp9/p1;->t(Lp9/j1;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-direct {v0, p1, v1}, Lq9/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_11
    new-instance v0, Lq9/v;

    .line 421
    .line 422
    invoke-direct {v0, p1}, Lq9/v;-><init>(Ljava/lang/reflect/Method;)V

    .line 423
    .line 424
    .line 425
    :goto_3
    invoke-virtual {p0}, Lp9/j1;->p()Lv9/j0;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-static {v0, p0, v3}, Lp9/x1;->l(Lq9/g;Lv9/c;Z)Lq9/g;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    return-object p0

    .line 434
    :cond_12
    new-instance p0, Lac/y;

    .line 435
    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v1, "No source found for setter of Java method property: "

    .line 439
    .line 440
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-object v0, v0, Lp9/n;->c:Ljava/lang/reflect/Method;

    .line 444
    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-direct {p0, v2, p1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw p0

    .line 456
    :cond_13
    instance-of v1, v0, Lp9/p;

    .line 457
    .line 458
    if-eqz v1, :cond_18

    .line 459
    .line 460
    if-eqz p1, :cond_14

    .line 461
    .line 462
    check-cast v0, Lp9/p;

    .line 463
    .line 464
    iget-object p1, v0, Lp9/p;->c:Lp9/k;

    .line 465
    .line 466
    goto :goto_4

    .line 467
    :cond_14
    check-cast v0, Lp9/p;

    .line 468
    .line 469
    iget-object p1, v0, Lp9/p;->d:Lp9/k;

    .line 470
    .line 471
    if-eqz p1, :cond_17

    .line 472
    .line 473
    :goto_4
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    iget-object v0, v0, Lp9/o1;->c:Lp9/h0;

    .line 478
    .line 479
    iget-object p1, p1, Lp9/k;->b:Lta/e;

    .line 480
    .line 481
    iget-object v1, p1, Lta/e;->f:Ljava/lang/String;

    .line 482
    .line 483
    iget-object p1, p1, Lta/e;->g:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v0, v1, p1}, Lp9/h0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    if-eqz p1, :cond_16

    .line 490
    .line 491
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_15

    .line 503
    .line 504
    new-instance v0, Lq9/r;

    .line 505
    .line 506
    invoke-static {p0}, Lp9/p1;->t(Lp9/j1;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    invoke-direct {v0, p1, p0}, Lq9/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    return-object v0

    .line 514
    :cond_15
    new-instance p0, Lq9/v;

    .line 515
    .line 516
    invoke-direct {p0, p1}, Lq9/v;-><init>(Ljava/lang/reflect/Method;)V

    .line 517
    .line 518
    .line 519
    return-object p0

    .line 520
    :cond_16
    new-instance p1, Lac/y;

    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v1, "No accessor found for property "

    .line 525
    .line 526
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    invoke-direct {p1, v2, p0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw p1

    .line 544
    :cond_17
    new-instance p1, Lac/y;

    .line 545
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    const-string v1, "No setter found for property "

    .line 549
    .line 550
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 554
    .line 555
    .line 556
    move-result-object p0

    .line 557
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    invoke-direct {p1, v2, p0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 565
    .line 566
    .line 567
    throw p1

    .line 568
    :cond_18
    new-instance p0, Lac/p;

    .line 569
    .line 570
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 571
    .line 572
    .line 573
    throw p0
.end method

.method public static final g(Lu1/d;J)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lr1/o;->a:Lr1/o;

    .line 2
    .line 3
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 13
    .line 14
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 15
    .line 16
    iget-object v1, v0, Lq2/t;->O:Lq2/a2;

    .line 17
    .line 18
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lq2/h1;->F(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const/16 v2, 0x20

    .line 30
    .line 31
    shr-long v3, v0, v2

    .line 32
    .line 33
    long-to-int v4, v3

    .line 34
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const-wide v4, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v0, v4

    .line 44
    long-to-int v1, v0

    .line 45
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-wide v6, p0, Lu1/d;->q:J

    .line 50
    .line 51
    shr-long v8, v6, v2

    .line 52
    .line 53
    long-to-int p0, v8

    .line 54
    int-to-float p0, p0

    .line 55
    add-float/2addr p0, v3

    .line 56
    and-long/2addr v6, v4

    .line 57
    long-to-int v1, v6

    .line 58
    int-to-float v1, v1

    .line 59
    add-float/2addr v1, v0

    .line 60
    shr-long v6, p1, v2

    .line 61
    .line 62
    long-to-int v2, v6

    .line 63
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    cmpg-float v3, v3, v2

    .line 68
    .line 69
    if-gtz v3, :cond_2

    .line 70
    .line 71
    cmpg-float p0, v2, p0

    .line 72
    .line 73
    if-gtz p0, :cond_2

    .line 74
    .line 75
    and-long/2addr p1, v4

    .line 76
    long-to-int p0, p1

    .line 77
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    cmpg-float p1, v0, p0

    .line 82
    .line 83
    if-gtz p1, :cond_2

    .line 84
    .line 85
    cmpg-float p0, p0, v1

    .line 86
    .line 87
    if-gtz p0, :cond_2

    .line 88
    .line 89
    const/4 p0, 0x1

    .line 90
    return p0

    .line 91
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 92
    return p0
.end method

.method public static final h(IIIZ)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lt p1, p2, :cond_1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    sub-int/2addr p2, p1

    .line 8
    return p2

    .line 9
    :cond_1
    if-nez p3, :cond_2

    .line 10
    .line 11
    if-gt p1, p0, :cond_4

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_2
    sub-int v1, p2, p1

    .line 15
    .line 16
    if-le v1, p0, :cond_4

    .line 17
    .line 18
    :goto_0
    if-eqz p3, :cond_3

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_3
    sub-int/2addr p0, p1

    .line 22
    return p0

    .line 23
    :cond_4
    if-eqz p3, :cond_5

    .line 24
    .line 25
    if-gt p1, p0, :cond_7

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_5
    sub-int v1, p2, p1

    .line 29
    .line 30
    if-le v1, p0, :cond_7

    .line 31
    .line 32
    :goto_1
    if-nez p3, :cond_6

    .line 33
    .line 34
    :goto_2
    return p0

    .line 35
    :cond_6
    sub-int/2addr p0, p1

    .line 36
    return p0

    .line 37
    :cond_7
    if-nez p3, :cond_8

    .line 38
    .line 39
    return v0

    .line 40
    :cond_8
    sub-int/2addr p2, p1

    .line 41
    return p2
.end method

.method public static final i(Lr1/p;F)Lr1/p;
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const v1, 0x7effb

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0, p1, v2, v0, v1}, Landroidx/compose/ui/graphics/a;->b(Lr1/p;FFLy1/l0;I)Lr1/p;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x61

    .line 19
    .line 20
    if-gt v1, v0, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x7b

    .line 23
    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_1
    return-object p0
.end method

.method public static l(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static final m(Lp9/j1;ZLjava/lang/reflect/Field;)Lq9/w;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp9/o1;->q()Lv9/k0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lv9/k;->k()Lv9/k;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "getContainingDeclaration(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lxa/d;->l(Lv9/k;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v1}, Lv9/k;->k()Lv9/k;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lv9/f;->b:Lv9/f;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    sget-object v2, Lv9/f;->e:Lv9/f;

    .line 39
    .line 40
    invoke-static {v1, v2}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    :cond_1
    instance-of v1, v0, Ljb/s;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    check-cast v0, Ljb/s;

    .line 51
    .line 52
    iget-object v0, v0, Ljb/s;->A:Lpa/i0;

    .line 53
    .line 54
    invoke-static {v0}, Lta/g;->d(Lpa/i0;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    :cond_3
    :goto_1
    const-string v0, "field"

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    new-instance p1, Lq9/j;

    .line 82
    .line 83
    invoke-static {p0}, Lp9/p1;->t(Lp9/j1;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {p1, p2, p0}, Lq9/j;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_4
    new-instance p0, Lq9/l;

    .line 92
    .line 93
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, p2, v3, p1}, Lq9/l;-><init>(Ljava/lang/reflect/Field;ZI)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_5
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    new-instance p1, Lq9/n;

    .line 108
    .line 109
    invoke-static {p0}, Lp9/p1;->n(Lp9/j1;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {p0}, Lp9/p1;->t(Lp9/j1;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {p1, p2, v0, p0}, Lq9/n;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_6
    new-instance p1, Lq9/p;

    .line 122
    .line 123
    invoke-static {p0}, Lp9/p1;->n(Lp9/j1;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-direct {p1, p2, p0, v3, v0}, Lq9/p;-><init>(Ljava/lang/reflect/Field;ZZI)V

    .line 132
    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_7
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lp9/o1;->q()Lv9/k0;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Lw9/a;->getAnnotations()Lw9/h;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sget-object v1, Lp9/c2;->a:Lua/c;

    .line 148
    .line 149
    invoke-interface {v0, v1}, Lw9/h;->g(Lua/c;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    const/4 v1, 0x0

    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    if-eqz p1, :cond_9

    .line 157
    .line 158
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-eqz p0, :cond_8

    .line 163
    .line 164
    new-instance p0, Lq9/k;

    .line 165
    .line 166
    invoke-direct {p0, p2, v1}, Lq9/m;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_8
    new-instance p0, Lq9/l;

    .line 171
    .line 172
    const/4 p1, 0x1

    .line 173
    invoke-direct {p0, p2, v3, p1}, Lq9/l;-><init>(Ljava/lang/reflect/Field;ZI)V

    .line 174
    .line 175
    .line 176
    return-object p0

    .line 177
    :cond_9
    invoke-virtual {p0}, Lp9/j1;->n()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_a

    .line 182
    .line 183
    new-instance p1, Lq9/o;

    .line 184
    .line 185
    invoke-static {p0}, Lp9/p1;->n(Lp9/j1;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    invoke-direct {p1, p2, p0, v1}, Lq9/q;-><init>(Ljava/lang/reflect/Field;ZZ)V

    .line 190
    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_a
    new-instance p1, Lq9/p;

    .line 194
    .line 195
    invoke-static {p0}, Lp9/p1;->n(Lp9/j1;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    const/4 v0, 0x1

    .line 200
    invoke-direct {p1, p2, p0, v3, v0}, Lq9/p;-><init>(Ljava/lang/reflect/Field;ZZI)V

    .line 201
    .line 202
    .line 203
    return-object p1

    .line 204
    :cond_b
    if-eqz p1, :cond_c

    .line 205
    .line 206
    new-instance p0, Lq9/l;

    .line 207
    .line 208
    const/4 p1, 0x2

    .line 209
    invoke-direct {p0, p2, v1, p1}, Lq9/l;-><init>(Ljava/lang/reflect/Field;ZI)V

    .line 210
    .line 211
    .line 212
    return-object p0

    .line 213
    :cond_c
    new-instance p1, Lq9/p;

    .line 214
    .line 215
    invoke-static {p0}, Lp9/p1;->n(Lp9/j1;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    const/4 v0, 0x2

    .line 220
    invoke-direct {p1, p2, p0, v1, v0}, Lq9/p;-><init>(Ljava/lang/reflect/Field;ZZI)V

    .line 221
    .line 222
    .line 223
    return-object p1
.end method

.method public static final n(Lp9/j1;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lp9/o1;->q()Lv9/k0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lv9/s0;->getType()Llb/w;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Llb/v0;->e(Llb/w;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0
.end method

.method public static final o(II)V
    .locals 3

    .line 1
    if-gt p0, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "toIndex ("

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, ") is greater than size ("

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, ")."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static p(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {p0, p1}, Lp9/p1;->q(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {p1}, Lp9/p1;->l(Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_1
    move-exception p0

    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Lp9/p1;->l(Ljava/io/Closeable;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static q(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 8
    .line 9
    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    const/16 p0, 0x400

    .line 13
    .line 14
    :try_start_1
    new-array p0, p0, [B

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-eq v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    move-object v2, v3

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p0

    .line 31
    move-object v2, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v3}, Lp9/p1;->l(Ljava/io/Closeable;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_1
    move-exception p0

    .line 44
    :goto_1
    :try_start_2
    const-string p1, "TypefaceCompatUtil"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "Error copying resource contents to temp file: "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lp9/p1;->l(Ljava/io/Closeable;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :goto_2
    invoke-static {v2}, Lp9/p1;->l(Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static r(Ljava/lang/String;Z)Lua/b;
    .locals 7

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    const/16 v1, 0x60

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v1, v2, v0}, Lxb/i;->O(Ljava/lang/CharSequence;CII)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :cond_0
    const/4 v3, 0x4

    .line 22
    const-string v4, "/"

    .line 23
    .line 24
    invoke-static {v0, v3, p0, v4}, Lxb/i;->S(IILjava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v3, "`"

    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    invoke-static {p0, v3, v4}, Lxb/p;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "substring(...)"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x2f

    .line 49
    .line 50
    const/16 v6, 0x2e

    .line 51
    .line 52
    invoke-static {v1, v5, v6}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v3, v4}, Lxb/p;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    move-object v4, v1

    .line 70
    :goto_0
    new-instance v0, Lua/b;

    .line 71
    .line 72
    new-instance v1, Lua/c;

    .line 73
    .line 74
    invoke-direct {v1, v4}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lua/c;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1, v2, p1}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method public static final s(Lq9/g;)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lq9/g;->q()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final t(Lp9/j1;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/j1;->q()Lp9/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Lp9/o1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0}, Lp9/o1;->q()Lv9/k0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {v0, p0}, Lp9/x1;->h(Ljava/lang/Object;Lv9/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static u(I)I
    .locals 5

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "p9.p1"

    .line 9
    .line 10
    const-string v0, "No cameras!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    if-ltz p0, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-nez v3, :cond_3

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    :goto_1
    if-ge p0, v0, :cond_3

    .line 26
    .line 27
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    .line 28
    .line 29
    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 33
    .line 34
    .line 35
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    :goto_2
    if-ge p0, v0, :cond_4

    .line 44
    .line 45
    return p0

    .line 46
    :cond_4
    if-eqz v3, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    return v2
.end method

.method public static final v(Ls1/n;)[Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.autofill.AndroidContentType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ls1/e;

    .line 7
    .line 8
    iget-object p0, p0, Ls1/e;->b:Ljava/util/Set;

    .line 9
    .line 10
    check-cast p0, Ljava/util/Collection;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public static w(Landroid/graphics/drawable/Drawable;)I
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Li4/b;->f(Landroid/graphics/drawable/Drawable;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    sget-boolean v0, Lp9/p1;->e:Z

    .line 13
    .line 14
    const-string v1, "DrawableCompat"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    const-string v4, "getLayoutDirection"

    .line 23
    .line 24
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sput-object v3, Lp9/p1;->d:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v3

    .line 35
    const-string v4, "Failed to retrieve getLayoutDirection() method"

    .line 36
    .line 37
    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    sput-boolean v0, Lp9/p1;->e:Z

    .line 41
    .line 42
    :cond_1
    sget-object v0, Lp9/p1;->d:Ljava/lang/reflect/Method;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    return p0

    .line 57
    :catch_1
    move-exception p0

    .line 58
    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    .line 59
    .line 60
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    sput-object v2, Lp9/p1;->d:Ljava/lang/reflect/Method;

    .line 64
    .line 65
    :cond_2
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static x(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, ".font"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "-"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    const/16 v3, 0x64

    .line 44
    .line 45
    if-ge v2, v3, :cond_2

    .line 46
    .line 47
    new-instance v3, Ljava/io/File;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 68
    .line 69
    .line 70
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    return-object v3

    .line 74
    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-object v0
.end method

.method public static final y(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x41

    .line 6
    .line 7
    if-gt p1, p0, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x5b

    .line 10
    .line 11
    if-ge p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static z(Lf9/n;)Lwb/k;
    .locals 1

    .line 1
    new-instance v0, Lwb/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v0}, Lp9/x1;->k(Lf9/n;Lw8/c;Lw8/c;)Lw8/c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lwb/k;->c:Lw8/c;

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public abstract j()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lp9/p1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lp9/p1;->j()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
