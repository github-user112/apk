.class public final synthetic Lc/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc/n;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lc/n;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc/n;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v1, Lc/n;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, v1, Lc/n;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, Ld3/e;

    .line 14
    .line 15
    check-cast v3, Landroid/graphics/Typeface;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Ld3/e;->v(Landroid/graphics/Typeface;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast v4, Lt1/c;

    .line 22
    .line 23
    check-cast v3, Landroid/util/LongSparseArray;

    .line 24
    .line 25
    invoke-static {v4, v3}, Lp9/x1;->m(Lt1/c;Landroid/util/LongSparseArray;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast v4, Lj/o;

    .line 30
    .line 31
    check-cast v3, Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lj/o;->a()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    invoke-virtual {v4}, Lj/o;->a()V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :pswitch_2
    check-cast v4, La2/d;

    .line 49
    .line 50
    check-cast v3, Ld7/a;

    .line 51
    .line 52
    iget-object v5, v3, Ld7/a;->a:Lm5/m;

    .line 53
    .line 54
    iget-object v0, v4, La2/d;->b:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v4, v0

    .line 57
    check-cast v4, Ld7/j;

    .line 58
    .line 59
    iget-object v6, v4, Ld7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 60
    .line 61
    iget-boolean v0, v4, Ld7/j;->d:Z

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, v3, Ld7/a;->b:Ld7/w;

    .line 66
    .line 67
    iget-object v3, v0, Ld7/w;->a:Ld7/t;

    .line 68
    .line 69
    iget v7, v0, Ld7/w;->c:I

    .line 70
    .line 71
    new-instance v8, Landroid/graphics/Rect;

    .line 72
    .line 73
    iget v9, v3, Ld7/t;->b:I

    .line 74
    .line 75
    iget v10, v3, Ld7/t;->c:I

    .line 76
    .line 77
    invoke-direct {v8, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .line 79
    .line 80
    new-instance v11, Landroid/graphics/YuvImage;

    .line 81
    .line 82
    iget-object v12, v3, Ld7/t;->a:[B

    .line 83
    .line 84
    iget v13, v0, Ld7/w;->b:I

    .line 85
    .line 86
    iget v14, v3, Ld7/t;->b:I

    .line 87
    .line 88
    iget v15, v3, Ld7/t;->c:I

    .line 89
    .line 90
    const/16 v16, 0x0

    .line 91
    .line 92
    invoke-direct/range {v11 .. v16}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .line 99
    .line 100
    const/16 v3, 0x5a

    .line 101
    .line 102
    invoke-virtual {v11, v8, v3, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 110
    .line 111
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 112
    .line 113
    .line 114
    const/4 v8, 0x2

    .line 115
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    .line 117
    array-length v8, v0

    .line 118
    invoke-static {v0, v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    if-eqz v7, :cond_0

    .line 123
    .line 124
    new-instance v14, Landroid/graphics/Matrix;

    .line 125
    .line 126
    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 127
    .line 128
    .line 129
    int-to-float v0, v7

    .line 130
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    const/4 v15, 0x0

    .line 142
    const/4 v10, 0x0

    .line 143
    const/4 v11, 0x0

    .line 144
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    :cond_0
    :try_start_1
    const-string v0, "barcodeimage"

    .line 149
    .line 150
    const-string v3, ".jpg"

    .line 151
    .line 152
    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-static {v0, v3, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v3, Ljava/io/FileOutputStream;

    .line 161
    .line 162
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    .line 164
    .line 165
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 166
    .line 167
    const/16 v8, 0x64

    .line 168
    .line 169
    invoke-virtual {v9, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v7, "Unable to create temporary file and store bitmap! "

    .line 184
    .line 185
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v3, "j"

    .line 196
    .line 197
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_1
    const/4 v0, 0x0

    .line 201
    :goto_0
    new-instance v3, Landroid/content/Intent;

    .line 202
    .line 203
    const-string v7, "com.google.zxing.client.android.SCAN"

    .line 204
    .line 205
    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/high16 v7, 0x80000

    .line 209
    .line 210
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    const-string v7, "SCAN_RESULT"

    .line 214
    .line 215
    iget-object v8, v5, Lm5/m;->a:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    iget-object v7, v5, Lm5/m;->d:Lm5/a;

    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    const-string v8, "SCAN_RESULT_FORMAT"

    .line 227
    .line 228
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    iget-object v7, v5, Lm5/m;->b:[B

    .line 232
    .line 233
    if-eqz v7, :cond_2

    .line 234
    .line 235
    array-length v8, v7

    .line 236
    if-lez v8, :cond_2

    .line 237
    .line 238
    const-string v8, "SCAN_RESULT_BYTES"

    .line 239
    .line 240
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 241
    .line 242
    .line 243
    :cond_2
    iget-object v5, v5, Lm5/m;->e:Ljava/util/Map;

    .line 244
    .line 245
    if-eqz v5, :cond_6

    .line 246
    .line 247
    sget-object v7, Lm5/n;->g:Lm5/n;

    .line 248
    .line 249
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_3

    .line 254
    .line 255
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    const-string v8, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 264
    .line 265
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    :cond_3
    sget-object v7, Lm5/n;->a:Lm5/n;

    .line 269
    .line 270
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Ljava/lang/Number;

    .line 275
    .line 276
    if-eqz v7, :cond_4

    .line 277
    .line 278
    const-string v8, "SCAN_RESULT_ORIENTATION"

    .line 279
    .line 280
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    :cond_4
    sget-object v7, Lm5/n;->c:Lm5/n;

    .line 288
    .line 289
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    check-cast v7, Ljava/lang/String;

    .line 294
    .line 295
    if-eqz v7, :cond_5

    .line 296
    .line 297
    const-string v8, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 298
    .line 299
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    :cond_5
    sget-object v7, Lm5/n;->b:Lm5/n;

    .line 303
    .line 304
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    check-cast v5, Ljava/lang/Iterable;

    .line 309
    .line 310
    if-eqz v5, :cond_6

    .line 311
    .line 312
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_6

    .line 321
    .line 322
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    check-cast v7, [B

    .line 327
    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v9, "SCAN_RESULT_BYTE_SEGMENTS_"

    .line 331
    .line 332
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 343
    .line 344
    .line 345
    add-int/lit8 v2, v2, 0x1

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :cond_6
    if-eqz v0, :cond_7

    .line 349
    .line 350
    const-string v2, "SCAN_RESULT_IMAGE_PATH"

    .line 351
    .line 352
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    .line 354
    .line 355
    :cond_7
    const/4 v0, -0x1

    .line 356
    invoke-virtual {v6, v0, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4}, Ld7/j;->a()V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :pswitch_3
    check-cast v4, Lp4/n;

    .line 364
    .line 365
    check-cast v3, Lc/m0;

    .line 366
    .line 367
    sget v0, Lc/o;->r:I

    .line 368
    .line 369
    iget-object v0, v4, Lu3/h;->a:Landroidx/lifecycle/v;

    .line 370
    .line 371
    new-instance v5, Lc/h;

    .line 372
    .line 373
    invoke-direct {v5, v2, v3, v4}, Lc/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    nop

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
