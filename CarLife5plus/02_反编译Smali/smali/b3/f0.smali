.class public final synthetic Lb3/f0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb3/f0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lb3/f0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :pswitch_0
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "wifi"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_1
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "window"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v0, Landroid/view/WindowManager;

    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_2
    sget-object v0, Ll8/g;->a:Lr8/o;

    .line 65
    .line 66
    invoke-static {}, Ll8/g;->c()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 71
    .line 72
    invoke-static {}, Ll8/g;->c()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, "x"

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :pswitch_3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 100
    .line 101
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, " "

    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :try_start_0
    sget-object v2, Ll8/g;->a:Lr8/o;

    .line 124
    .line 125
    invoke-static {}, Ll8/g;->a()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-nez v2, :cond_2

    .line 130
    .line 131
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .line 133
    const/16 v3, 0x19

    .line 134
    .line 135
    if-lt v2, v3, :cond_0

    .line 136
    .line 137
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "device_name"

    .line 146
    .line 147
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    if-nez v1, :cond_1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    move-object v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    move-object v0, v2

    .line 157
    :catch_0
    :goto_0
    return-object v0

    .line 158
    :pswitch_4
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 159
    .line 160
    const-string v0, ""

    .line 161
    .line 162
    const-string v2, "UUID"

    .line 163
    .line 164
    invoke-static {v2, v0}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-lez v3, :cond_3

    .line 173
    .line 174
    move-object v1, v0

    .line 175
    :cond_3
    if-nez v1, :cond_4

    .line 176
    .line 177
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "toString(...)"

    .line 186
    .line 187
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const/16 v1, 0x8

    .line 191
    .line 192
    invoke-static {v1, v0}, Lxb/i;->e0(ILjava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v2, v1}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    return-object v1

    .line 200
    :pswitch_5
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    return-object v0

    .line 213
    :pswitch_6
    :try_start_1
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v1, "display"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    .line 224
    .line 225
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_5

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 237
    .line 238
    .line 239
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    goto :goto_1

    .line 241
    :catch_1
    :cond_5
    const/high16 v0, 0x41f00000    # 30.0f

    .line 242
    .line 243
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    return-object v0

    .line 248
    :pswitch_7
    sget-object v0, Ll8/g;->a:Lr8/o;

    .line 249
    .line 250
    invoke-static {}, Ll8/g;->c()Landroid/util/DisplayMetrics;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 255
    .line 256
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    return-object v0

    .line 261
    :pswitch_8
    sget-object v0, Ll8/g;->a:Lr8/o;

    .line 262
    .line 263
    invoke-static {}, Ll8/g;->c()Landroid/util/DisplayMetrics;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 268
    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0

    .line 274
    :pswitch_9
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    const-string v1, "CarLifePrefs"

    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    return-object v0

    .line 285
    :pswitch_a
    :try_start_2
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    const-string v4, "getPackageName(...)"

    .line 302
    .line 303
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 307
    .line 308
    .line 309
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    goto :goto_2

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :goto_2
    instance-of v2, v0, Lr8/l;

    .line 317
    .line 318
    if-eqz v2, :cond_6

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_6
    move-object v1, v0

    .line 322
    :goto_3
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 323
    .line 324
    return-object v1

    .line 325
    :pswitch_b
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 326
    .line 327
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    return-object v0

    .line 332
    :pswitch_c
    sget-object v0, Ll0/n;->a:Lf1/w2;

    .line 333
    .line 334
    return-object v1

    .line 335
    :pswitch_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 336
    .line 337
    return-object v0

    .line 338
    :pswitch_e
    sget-object v0, Lcom/muyetuge/carlifevehicle/service/AccessService;->e:Ldc/l0;

    .line 339
    .line 340
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 341
    .line 342
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    return-object v0

    .line 347
    :pswitch_f
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 348
    .line 349
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    return-object v0

    .line 354
    :pswitch_10
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 355
    .line 356
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    return-object v0

    .line 361
    :pswitch_11
    sget-object v0, Li7/d;->a:Lr8/o;

    .line 362
    .line 363
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Landroid/content/Context;

    .line 368
    .line 369
    const-string v1, "audio"

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    .line 376
    .line 377
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    check-cast v0, Landroid/media/AudioManager;

    .line 381
    .line 382
    return-object v0

    .line 383
    :pswitch_12
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 384
    .line 385
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    return-object v0

    .line 390
    :pswitch_13
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 391
    .line 392
    return-object v0

    .line 393
    :pswitch_14
    new-instance v0, Lg0/u;

    .line 394
    .line 395
    invoke-direct {v0, v2, v2}, Lg0/u;-><init>(II)V

    .line 396
    .line 397
    .line 398
    return-object v0

    .line 399
    :pswitch_15
    sget-object v0, Lcom/muyetuge/carlifevehicle/activity/EmptyActivity;->y:Lr8/o;

    .line 400
    .line 401
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 402
    .line 403
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    return-object v0

    .line 408
    :pswitch_16
    const-string v0, "Unexpected call to default provider"

    .line 409
    .line 410
    invoke-static {v0}, Lf1/t;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 411
    .line 412
    .line 413
    new-instance v0, Lac/p;

    .line 414
    .line 415
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 416
    .line 417
    .line 418
    throw v0

    .line 419
    :pswitch_17
    new-instance v0, Lf0/u;

    .line 420
    .line 421
    invoke-direct {v0, v2, v2}, Lf0/u;-><init>(II)V

    .line 422
    .line 423
    .line 424
    return-object v0

    .line 425
    :pswitch_18
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;->disconnect()V

    .line 430
    .line 431
    .line 432
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 433
    .line 434
    return-object v0

    .line 435
    :pswitch_19
    new-instance v0, Ld0/x;

    .line 436
    .line 437
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 438
    .line 439
    .line 440
    return-object v0

    .line 441
    :pswitch_1a
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    const-string v1, "sensor"

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    const-string v1, "null cannot be cast to non-null type android.hardware.SensorManager"

    .line 452
    .line 453
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    check-cast v0, Landroid/hardware/SensorManager;

    .line 457
    .line 458
    return-object v0

    .line 459
    :pswitch_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 460
    .line 461
    const-string v1, "CompositionLocal LocalSavedStateRegistryOwner not present"

    .line 462
    .line 463
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v0

    .line 467
    :pswitch_1c
    sget-object v0, Lb3/g0;->d:Lm3/o;

    .line 468
    .line 469
    return-object v0

    .line 470
    nop

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
