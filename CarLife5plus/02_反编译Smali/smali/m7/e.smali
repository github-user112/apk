.class public final synthetic Lm7/e;
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
    iput p1, p0, Lm7/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnc/o0;)V
    .locals 0

    .line 2
    const/16 p1, 0x8

    iput p1, p0, Lm7/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lm7/e;->a:I

    .line 2
    .line 3
    const-string v1, "FLOAT_APP_SWITCH"

    .line 4
    .line 5
    const-string v2, "\u6253\u5f00\u5e94\u7528\u8be6\u60c5\u5931\u8d25: "

    .line 6
    .line 7
    const/high16 v3, 0x10000000

    .line 8
    .line 9
    const-string v4, "$this$update"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    sget-object v8, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/muyetuge/carlifevehicle/service/AccessService;->e:Ldc/l0;

    .line 20
    .line 21
    const-string v0, "\u70b9\u51fb "

    .line 22
    .line 23
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v4, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 26
    .line 27
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/muyetuge/carlifevehicle/service/AccessService;->f:Lr8/o;

    .line 34
    .line 35
    invoke-virtual {v3}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 45
    .line 46
    invoke-static {}, Ll8/a;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " \u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1\u6743\u9650"

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v5, v0}, Ll8/c;->g(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v6, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-object v8

    .line 94
    :pswitch_0
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 95
    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    .line 107
    .line 108
    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :pswitch_1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 115
    .line 116
    invoke-static {}, Ll8/c;->e()V

    .line 117
    .line 118
    .line 119
    return-object v8

    .line 120
    :pswitch_2
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 121
    .line 122
    const-string v0, "package:"

    .line 123
    .line 124
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 125
    .line 126
    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 127
    .line 128
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_1
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v6, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    return-object v8

    .line 190
    :pswitch_3
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 191
    .line 192
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 193
    .line 194
    :cond_0
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    move-object v2, v1

    .line 199
    check-cast v2, Lt7/g;

    .line 200
    .line 201
    invoke-static {v2, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2, v6}, Lt7/g;->a(Lt7/g;Z)Lt7/g;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_0

    .line 213
    .line 214
    return-object v8

    .line 215
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    const-string v1, "CompositionLocal LocalLifecycleOwner not present"

    .line 218
    .line 219
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :pswitch_5
    sget-object v0, Ls0/g;->a:Lf1/c0;

    .line 224
    .line 225
    return-object v7

    .line 226
    :pswitch_6
    sget-object v0, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->y:Lcom/muyetuge/carlifevehicle/activity/MainActivity;

    .line 227
    .line 228
    invoke-static {}, La/a;->M()V

    .line 229
    .line 230
    .line 231
    return-object v8

    .line 232
    :pswitch_7
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 233
    .line 234
    invoke-static {}, Ll8/c;->e()V

    .line 235
    .line 236
    .line 237
    return-object v8

    .line 238
    :pswitch_8
    sget-object v0, Lq1/e;->a:Lf1/w2;

    .line 239
    .line 240
    return-object v7

    .line 241
    :pswitch_9
    sget-object v0, Lq1/c;->a:Lf1/w2;

    .line 242
    .line 243
    return-object v7

    .line 244
    :pswitch_a
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 245
    .line 246
    invoke-static {}, Ll8/c;->d()V

    .line 247
    .line 248
    .line 249
    invoke-static {v1}, Ll8/n;->b(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-object v8

    .line 253
    :pswitch_b
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 254
    .line 255
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 256
    .line 257
    :cond_1
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    move-object v2, v1

    .line 262
    check-cast v2, Lt7/g;

    .line 263
    .line 264
    invoke-static {v2, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v2, v5}, Lt7/g;->a(Lt7/g;Z)Lt7/g;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_1

    .line 276
    .line 277
    return-object v8

    .line 278
    :pswitch_c
    sget-object v0, Loc/f;->b:Loc/e;

    .line 279
    .line 280
    return-object v0

    .line 281
    :pswitch_d
    sget-object v0, Loc/w;->b:Loc/v;

    .line 282
    .line 283
    return-object v0

    .line 284
    :pswitch_e
    sget-object v0, Loc/p;->b:Lnc/s0;

    .line 285
    .line 286
    return-object v0

    .line 287
    :pswitch_f
    sget-object v0, Loc/s;->b:Llc/f;

    .line 288
    .line 289
    return-object v0

    .line 290
    :pswitch_10
    sget-object v0, Loc/z;->b:Llc/f;

    .line 291
    .line 292
    return-object v0

    .line 293
    :pswitch_11
    invoke-static {v1}, Ll8/n;->b(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-object v8

    .line 297
    :pswitch_12
    sget-object v0, Lo1/h;->a:Lf1/w2;

    .line 298
    .line 299
    return-object v7

    .line 300
    :pswitch_13
    new-instance v0, Lo1/d;

    .line 301
    .line 302
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-direct {v0, v1}, Lo1/d;-><init>(Ljava/util/Map;)V

    .line 308
    .line 309
    .line 310
    return-object v0

    .line 311
    :pswitch_14
    new-instance v0, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .line 315
    .line 316
    invoke-static {v0}, Lnc/m0;->b(Ljava/util/List;)[Llc/e;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    return-object v0

    .line 321
    :pswitch_15
    invoke-static {}, Lm7/f0;->b()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const-string v1, "wifip2p"

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    instance-of v1, v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 332
    .line 333
    if-eqz v1, :cond_2

    .line 334
    .line 335
    move-object v7, v0

    .line 336
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 337
    .line 338
    :cond_2
    return-object v7

    .line 339
    :pswitch_16
    invoke-static {}, Lm7/f0;->b()Landroid/content/Context;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    const-string v1, "wifi"

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    instance-of v1, v0, Landroid/net/wifi/WifiManager;

    .line 350
    .line 351
    if-eqz v1, :cond_3

    .line 352
    .line 353
    move-object v7, v0

    .line 354
    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 355
    .line 356
    :cond_3
    return-object v7

    .line 357
    :pswitch_17
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 358
    .line 359
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    return-object v0

    .line 364
    :pswitch_18
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 365
    .line 366
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 367
    .line 368
    :cond_4
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    move-object v2, v1

    .line 373
    check-cast v2, Lt7/g;

    .line 374
    .line 375
    invoke-static {v2, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v2, v5}, Lt7/g;->a(Lt7/g;Z)Lt7/g;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_4

    .line 387
    .line 388
    return-object v8

    .line 389
    :pswitch_19
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 390
    .line 391
    invoke-static {}, Ll8/c;->d()V

    .line 392
    .line 393
    .line 394
    return-object v8

    .line 395
    :pswitch_1a
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 396
    .line 397
    sget-object v0, Lt7/g;->c:Ldc/l0;

    .line 398
    .line 399
    :cond_5
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    move-object v2, v1

    .line 404
    check-cast v2, Lt7/g;

    .line 405
    .line 406
    invoke-static {v2, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-static {v2, v5}, Lt7/g;->a(Lt7/g;Z)Lt7/g;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_5

    .line 418
    .line 419
    return-object v8

    .line 420
    :pswitch_1b
    sget-object v0, Lm7/g;->a:Lr8/o;

    .line 421
    .line 422
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    check-cast v0, Landroid/content/Context;

    .line 427
    .line 428
    const-string v1, "bluetooth"

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    instance-of v1, v0, Landroid/bluetooth/BluetoothManager;

    .line 435
    .line 436
    if-eqz v1, :cond_6

    .line 437
    .line 438
    move-object v7, v0

    .line 439
    check-cast v7, Landroid/bluetooth/BluetoothManager;

    .line 440
    .line 441
    :cond_6
    return-object v7

    .line 442
    :pswitch_1c
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 443
    .line 444
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    return-object v0

    .line 449
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
