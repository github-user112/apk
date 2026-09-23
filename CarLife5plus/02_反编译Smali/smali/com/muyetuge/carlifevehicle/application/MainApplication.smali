.class public final Lcom/muyetuge/carlifevehicle/application/MainApplication;
.super Landroid/app/Application;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/muyetuge/carlifevehicle/application/MainApplication;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "i2/c",
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
.field public static a:Lcom/muyetuge/carlifevehicle/application/MainApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 18

    .line 1
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 7
    .line 8
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Ll8/d;->a:Lr8/o;

    .line 13
    .line 14
    const/16 v2, 0x4000

    .line 15
    .line 16
    const-string v3, "USB_MTU"

    .line 17
    .line 18
    invoke-static {v2, v3}, Ll8/d;->b(ILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v4, Lr8/j;

    .line 27
    .line 28
    invoke-direct {v4, v3, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x12c

    .line 32
    .line 33
    const-string v3, "I_FRAME_INTERVAL"

    .line 34
    .line 35
    invoke-static {v2, v3}, Ll8/d;->b(ILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v5, Lr8/j;

    .line 44
    .line 45
    invoke-direct {v5, v3, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    const-string v3, "CONNECT_TYPE"

    .line 50
    .line 51
    invoke-static {v2, v3}, Ll8/d;->b(ILjava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    new-instance v7, Lr8/j;

    .line 60
    .line 61
    invoke-direct {v7, v3, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    const-string v8, "VOICE_WAKEUP"

    .line 66
    .line 67
    invoke-static {v6, v8}, Ll8/d;->b(ILjava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    new-instance v10, Lr8/j;

    .line 76
    .line 77
    invoke-direct {v10, v8, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string v8, "VOICE_MIC"

    .line 81
    .line 82
    invoke-static {v6, v8}, Ll8/d;->b(ILjava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    new-instance v11, Lr8/j;

    .line 91
    .line 92
    invoke-direct {v11, v8, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    const-string v9, "AUDIO_TRANSMISSION_MODE"

    .line 97
    .line 98
    invoke-static {v8, v9}, Ll8/d;->b(ILjava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    new-instance v13, Lr8/j;

    .line 107
    .line 108
    invoke-direct {v13, v9, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const-string v9, "BLUETOOTH_AUTO_PAIR"

    .line 112
    .line 113
    invoke-static {v6, v9}, Ll8/d;->b(ILjava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    new-instance v14, Lr8/j;

    .line 122
    .line 123
    invoke-direct {v14, v9, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    const-string v9, "AAC_SUPPORT"

    .line 127
    .line 128
    invoke-static {v8, v9}, Ll8/d;->b(ILjava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    new-instance v15, Lr8/j;

    .line 137
    .line 138
    invoke-direct {v15, v9, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const-string v9, "MUSIC_HUD"

    .line 142
    .line 143
    invoke-static {v6, v9}, Ll8/d;->b(ILjava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    const/16 v16, 0x5

    .line 152
    .line 153
    new-instance v2, Lr8/j;

    .line 154
    .line 155
    invoke-direct {v2, v9, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const/16 v9, 0x9

    .line 159
    .line 160
    new-array v9, v9, [Lr8/j;

    .line 161
    .line 162
    aput-object v4, v9, v8

    .line 163
    .line 164
    aput-object v5, v9, v6

    .line 165
    .line 166
    const/4 v4, 0x2

    .line 167
    aput-object v7, v9, v4

    .line 168
    .line 169
    const/4 v5, 0x3

    .line 170
    aput-object v10, v9, v5

    .line 171
    .line 172
    const/4 v7, 0x4

    .line 173
    aput-object v11, v9, v7

    .line 174
    .line 175
    aput-object v13, v9, v16

    .line 176
    .line 177
    const/4 v10, 0x6

    .line 178
    aput-object v14, v9, v10

    .line 179
    .line 180
    const/4 v11, 0x7

    .line 181
    aput-object v15, v9, v11

    .line 182
    .line 183
    const/16 v11, 0x8

    .line 184
    .line 185
    aput-object v2, v9, v11

    .line 186
    .line 187
    invoke-static {v9}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v9, "TEST_LOGS_SAVE"

    .line 192
    .line 193
    invoke-static {v9, v6}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-eqz v9, :cond_0

    .line 198
    .line 199
    const/4 v10, 0x3

    .line 200
    :cond_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    new-instance v10, Lr8/j;

    .line 205
    .line 206
    const-string v11, "CONFIG_LOG_LEVEL"

    .line 207
    .line 208
    invoke-direct {v10, v11, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    new-instance v11, Lr8/j;

    .line 216
    .line 217
    const-string v12, "CONFIG_WIRLESS_FREQUENCY"

    .line 218
    .line 219
    invoke-direct {v11, v12, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    new-instance v12, Lr8/j;

    .line 227
    .line 228
    const-string v13, "CONFIG_WIRLESS_TYPE"

    .line 229
    .line 230
    invoke-direct {v12, v13, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    new-instance v13, Lr8/j;

    .line 238
    .line 239
    const-string v14, "VEHICLE_PROTOCOL_VERSION"

    .line 240
    .line 241
    invoke-direct {v13, v14, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    new-array v7, v7, [Lr8/j;

    .line 245
    .line 246
    aput-object v10, v7, v8

    .line 247
    .line 248
    aput-object v11, v7, v6

    .line 249
    .line 250
    aput-object v12, v7, v4

    .line 251
    .line 252
    aput-object v13, v7, v5

    .line 253
    .line 254
    invoke-static {v7}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    const-string v9, "20352101"

    .line 259
    .line 260
    const-string v10, "12345678"

    .line 261
    .line 262
    invoke-static {v0, v9, v10, v2, v7}, Lcom/baidu/carlife/sdk/receiver/CarLife;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v2, "CONFIG_WIFI_DIRECT_NAME"

    .line 270
    .line 271
    const-string v7, ""

    .line 272
    .line 273
    invoke-static {v2, v7}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    const/4 v11, 0x0

    .line 282
    if-lez v10, :cond_1

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_1
    move-object v9, v11

    .line 286
    :goto_0
    if-eqz v9, :cond_2

    .line 287
    .line 288
    invoke-interface {v0, v2, v9}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConfig(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    :cond_2
    const-string v2, "CONFIG_TARGET_BLUETOOTH_NAME"

    .line 292
    .line 293
    invoke-static {v2, v7}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    if-lez v9, :cond_3

    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_3
    move-object v7, v11

    .line 305
    :goto_1
    if-eqz v7, :cond_4

    .line 306
    .line 307
    invoke-interface {v0, v2, v7}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConfig(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_4
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 311
    .line 312
    sget-object v2, Ll8/a;->b:Lr8/o;

    .line 313
    .line 314
    invoke-virtual {v2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 319
    .line 320
    if-eqz v2, :cond_5

    .line 321
    .line 322
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 323
    .line 324
    if-nez v2, :cond_6

    .line 325
    .line 326
    :cond_5
    const-string v2, "\u672a\u77e5\u7248\u672c"

    .line 327
    .line 328
    :cond_6
    const-string v7, "\u3010\u521d\u59cb\u914d\u7f6e\u3011\u521d\u59cb\u5316: v"

    .line 329
    .line 330
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    new-array v7, v6, [Ljava/lang/Object;

    .line 335
    .line 336
    aput-object v2, v7, v8

    .line 337
    .line 338
    const-string v2, "CarLife_Vehicle"

    .line 339
    .line 340
    invoke-virtual {v0, v2, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    const-string v0, "context"

    .line 348
    .line 349
    invoke-static {v7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v8, v3}, Ll8/d;->b(ILjava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eq v0, v4, :cond_7

    .line 357
    .line 358
    goto/16 :goto_6

    .line 359
    .line 360
    :cond_7
    const-string v0, "usb"

    .line 361
    .line 362
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const-string v3, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    .line 367
    .line 368
    invoke-static {v0, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    move-object v3, v0

    .line 372
    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 373
    .line 374
    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_c

    .line 391
    .line 392
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 397
    .line 398
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 399
    .line 400
    .line 401
    move-result v10

    .line 402
    const/16 v12, 0x18d1

    .line 403
    .line 404
    if-ne v10, v12, :cond_8

    .line 405
    .line 406
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    const/16 v12, 0x2d00

    .line 411
    .line 412
    if-gt v12, v10, :cond_8

    .line 413
    .line 414
    const/16 v12, 0x2d06

    .line 415
    .line 416
    if-ge v10, v12, :cond_8

    .line 417
    .line 418
    sget-object v10, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 419
    .line 420
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 421
    .line 422
    .line 423
    move-result v12

    .line 424
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    const-string v14, "\u3010USB\u91cd\u7f6e\u3011\u68c0\u6d4b\u5230\u76ee\u6807USB\u8bbe\u5907: VID="

    .line 429
    .line 430
    const-string v15, ", PID="

    .line 431
    .line 432
    invoke-static {v12, v13, v14, v15}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    new-array v13, v6, [Ljava/lang/Object;

    .line 437
    .line 438
    aput-object v12, v13, v8

    .line 439
    .line 440
    invoke-virtual {v10, v2, v13}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    .line 444
    .line 445
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v13

    .line 449
    new-instance v14, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v13, ".USB_PERMISSION"

    .line 458
    .line 459
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v13

    .line 466
    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const/high16 v13, 0x4000000

    .line 470
    .line 471
    invoke-static {v7, v8, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 472
    .line 473
    .line 474
    move-result-object v12

    .line 475
    invoke-virtual {v3, v0, v12}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 479
    .line 480
    .line 481
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 482
    if-nez v12, :cond_9

    .line 483
    .line 484
    :try_start_1
    new-array v0, v6, [Ljava/lang/Object;

    .line 485
    .line 486
    const-string v13, "\u3010USB\u91cd\u7f6e\u3011\u65e0\u6cd5\u5efa\u7acb\u8bbe\u5907\u8fde\u63a5"

    .line 487
    .line 488
    aput-object v13, v0, v8

    .line 489
    .line 490
    invoke-virtual {v10, v2, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    goto :goto_2

    .line 494
    :catchall_0
    move-exception v0

    .line 495
    move-object v11, v12

    .line 496
    goto :goto_5

    .line 497
    :catch_0
    move-exception v0

    .line 498
    goto :goto_4

    .line 499
    :cond_9
    invoke-virtual {v0, v8}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    const-string v13, "getInterface(...)"

    .line 504
    .line 505
    invoke-static {v0, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v12, v0, v6}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 509
    .line 510
    .line 511
    move-result v13

    .line 512
    if-nez v13, :cond_a

    .line 513
    .line 514
    new-array v0, v6, [Ljava/lang/Object;

    .line 515
    .line 516
    const-string v13, "\u3010USB\u91cd\u7f6e\u3011\u65e0\u6cd5\u58f0\u660e\u63a5\u53e3\uff0c\u8df3\u8fc7\u91ca\u653e"

    .line 517
    .line 518
    aput-object v13, v0, v8

    .line 519
    .line 520
    invoke-virtual {v10, v2, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    .line 522
    .line 523
    :goto_3
    invoke-virtual {v12}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_2

    .line 527
    .line 528
    :cond_a
    :try_start_2
    const-class v13, Landroid/hardware/usb/UsbDeviceConnection;

    .line 529
    .line 530
    const-string v14, "resetDevice"

    .line 531
    .line 532
    invoke-virtual {v13, v14, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 533
    .line 534
    .line 535
    move-result-object v13

    .line 536
    invoke-virtual {v13, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v13

    .line 540
    new-instance v14, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string v15, "\u3010USB\u91cd\u7f6e\u3011resetDevice\u8c03\u7528\u6210\u529f\uff0c\u7ed3\u679c: "

    .line 546
    .line 547
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v13

    .line 557
    new-array v14, v6, [Ljava/lang/Object;

    .line 558
    .line 559
    aput-object v13, v14, v8

    .line 560
    .line 561
    invoke-virtual {v10, v2, v14}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v12, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    .line 566
    .line 567
    goto :goto_3

    .line 568
    :catchall_1
    move-exception v0

    .line 569
    goto :goto_5

    .line 570
    :catch_1
    move-exception v0

    .line 571
    move-object v12, v11

    .line 572
    :goto_4
    :try_start_3
    sget-object v10, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    new-instance v13, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .line 582
    .line 583
    const-string v14, "\u3010USB\u91cd\u7f6e\u3011\u5173\u95ed\u8fde\u63a5\u65f6\u51fa\u9519: "

    .line 584
    .line 585
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    new-array v13, v6, [Ljava/lang/Object;

    .line 596
    .line 597
    aput-object v0, v13, v8

    .line 598
    .line 599
    invoke-virtual {v10, v2, v13}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    .line 601
    .line 602
    if-eqz v12, :cond_8

    .line 603
    .line 604
    goto :goto_3

    .line 605
    :goto_5
    if-eqz v11, :cond_b

    .line 606
    .line 607
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 608
    .line 609
    .line 610
    :cond_b
    throw v0

    .line 611
    :cond_c
    :goto_6
    sget-object v0, Lb8/o;->a:Lfc/c;

    .line 612
    .line 613
    const-class v3, Lz7/v1;

    .line 614
    .line 615
    :try_start_4
    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    const-string v7, "load(...)"

    .line 620
    .line 621
    invoke-static {v0, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-static {v0}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    new-instance v7, Lb8/i;

    .line 629
    .line 630
    invoke-direct {v7, v4}, Lb8/i;-><init>(I)V

    .line 631
    .line 632
    .line 633
    new-instance v9, Lwb/h;

    .line 634
    .line 635
    invoke-direct {v9, v0, v6, v7}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 636
    .line 637
    .line 638
    sget-object v0, Lb8/i;->b:Lb8/i;

    .line 639
    .line 640
    new-instance v7, Lwb/b;

    .line 641
    .line 642
    invoke-interface {v9}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    invoke-direct {v7, v9, v0}, Lwb/b;-><init>(Ljava/util/Iterator;Lf9/k;)V

    .line 647
    .line 648
    .line 649
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    if-nez v0, :cond_d

    .line 654
    .line 655
    move-object v0, v1

    .line 656
    goto :goto_8

    .line 657
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 662
    .line 663
    .line 664
    move-result v9

    .line 665
    if-nez v9, :cond_e

    .line 666
    .line 667
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    goto :goto_8

    .line 672
    :cond_e
    new-instance v9, Ljava/util/ArrayList;

    .line 673
    .line 674
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-eqz v0, :cond_f

    .line 685
    .line 686
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 691
    .line 692
    .line 693
    goto :goto_7

    .line 694
    :cond_f
    move-object v0, v9

    .line 695
    goto :goto_8

    .line 696
    :catchall_2
    move-exception v0

    .line 697
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    :goto_8
    invoke-static {v0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 702
    .line 703
    .line 704
    move-result-object v7

    .line 705
    if-nez v7, :cond_10

    .line 706
    .line 707
    goto :goto_9

    .line 708
    :cond_10
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 709
    .line 710
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v7

    .line 714
    const-string v9, "\u6a21\u5757\u52a0\u8f7d\u5931\u8d25: "

    .line 715
    .line 716
    invoke-static {v9, v7}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v7

    .line 720
    new-array v9, v6, [Ljava/lang/Object;

    .line 721
    .line 722
    aput-object v7, v9, v8

    .line 723
    .line 724
    const-string v7, "OptionLoader"

    .line 725
    .line 726
    invoke-virtual {v0, v7, v9}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    move-object v0, v1

    .line 730
    :goto_9
    check-cast v0, Ljava/util/List;

    .line 731
    .line 732
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 733
    .line 734
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 735
    .line 736
    .line 737
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v9

    .line 741
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v10

    .line 745
    if-eqz v10, :cond_12

    .line 746
    .line 747
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v10

    .line 751
    move-object v12, v10

    .line 752
    check-cast v12, Lz7/v1;

    .line 753
    .line 754
    invoke-interface {v12}, Lz7/v1;->getName()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v12

    .line 758
    invoke-virtual {v7, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v13

    .line 762
    if-nez v13, :cond_11

    .line 763
    .line 764
    new-instance v13, Ljava/util/ArrayList;

    .line 765
    .line 766
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .line 768
    .line 769
    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    :cond_11
    check-cast v13, Ljava/util/List;

    .line 773
    .line 774
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    goto :goto_a

    .line 778
    :cond_12
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 779
    .line 780
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 788
    .line 789
    .line 790
    move-result-object v7

    .line 791
    :cond_13
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 792
    .line 793
    .line 794
    move-result v10

    .line 795
    if-eqz v10, :cond_14

    .line 796
    .line 797
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v10

    .line 801
    check-cast v10, Ljava/util/Map$Entry;

    .line 802
    .line 803
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v12

    .line 807
    check-cast v12, Ljava/util/List;

    .line 808
    .line 809
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 810
    .line 811
    .line 812
    move-result v12

    .line 813
    if-le v12, v6, :cond_13

    .line 814
    .line 815
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v12

    .line 819
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v10

    .line 823
    invoke-interface {v9, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    goto :goto_b

    .line 827
    :cond_14
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 828
    .line 829
    .line 830
    move-result-object v7

    .line 831
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 832
    .line 833
    .line 834
    move-result-object v7

    .line 835
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 836
    .line 837
    .line 838
    move-result v9

    .line 839
    if-eqz v9, :cond_15

    .line 840
    .line 841
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    check-cast v0, Ljava/util/Map$Entry;

    .line 846
    .line 847
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v7

    .line 851
    check-cast v7, Ljava/lang/String;

    .line 852
    .line 853
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    move-object v12, v0

    .line 858
    check-cast v12, Ljava/util/List;

    .line 859
    .line 860
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 861
    .line 862
    sget-object v9, Lg9/y;->a:Lg9/z;

    .line 863
    .line 864
    invoke-virtual {v9, v3}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 865
    .line 866
    .line 867
    move-result-object v3

    .line 868
    invoke-interface {v3}, Lm9/c;->k()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    sget-object v16, Lb8/i;->c:Lb8/i;

    .line 873
    .line 874
    const/16 v17, 0x1f

    .line 875
    .line 876
    const/4 v13, 0x0

    .line 877
    const/4 v14, 0x0

    .line 878
    const/4 v15, 0x0

    .line 879
    invoke-static/range {v12 .. v17}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v9

    .line 883
    new-instance v10, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    const-string v3, " \u4e2d name \u91cd\u590d\uff1a\'"

    .line 892
    .line 893
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    const-string v3, "\'\uff0c\u6a21\u5757\uff1a"

    .line 900
    .line 901
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    new-array v6, v6, [Ljava/lang/Object;

    .line 912
    .line 913
    aput-object v3, v6, v8

    .line 914
    .line 915
    invoke-virtual {v0, v2, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    goto :goto_c

    .line 919
    :cond_15
    move-object v1, v0

    .line 920
    :goto_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 925
    .line 926
    .line 927
    move-result v1

    .line 928
    if-eqz v1, :cond_16

    .line 929
    .line 930
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    check-cast v1, Lz7/v1;

    .line 935
    .line 936
    invoke-interface {v1}, Lz7/v1;->a()V

    .line 937
    .line 938
    .line 939
    goto :goto_d

    .line 940
    :cond_16
    sget-object v0, Lb8/o;->a:Lfc/c;

    .line 941
    .line 942
    new-instance v1, Lb8/n;

    .line 943
    .line 944
    invoke-direct {v1, v4, v11}, Ly8/i;-><init>(ILw8/c;)V

    .line 945
    .line 946
    .line 947
    invoke-static {v0, v11, v1, v5}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 948
    .line 949
    .line 950
    sget v0, Lcom/muyetuge/carlifevehicle/service/BaseService;->a:I

    .line 951
    .line 952
    new-instance v0, Landroid/content/Intent;

    .line 953
    .line 954
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    const-class v2, Lcom/muyetuge/carlifevehicle/service/BaseService;

    .line 959
    .line 960
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 961
    .line 962
    .line 963
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 968
    .line 969
    const/16 v3, 0x1a

    .line 970
    .line 971
    if-lt v2, v3, :cond_17

    .line 972
    .line 973
    invoke-static {v1, v0}, Le4/k;->n(Landroid/content/Context;Landroid/content/Intent;)V

    .line 974
    .line 975
    .line 976
    goto :goto_e

    .line 977
    :cond_17
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 978
    .line 979
    .line 980
    :goto_e
    sget-object v0, Lcom/muyetuge/carlifevehicle/service/AccessService;->e:Ldc/l0;

    .line 981
    .line 982
    invoke-static {}, Li8/a;->a()V

    .line 983
    .line 984
    .line 985
    return-void
.end method
