.class public abstract Lm6/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    const-string v1, "ro.build.display.id"

    .line 2
    .line 3
    const-string v0, "ro.build.version.incremental"

    .line 4
    .line 5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sput-object v2, Lm6/a;->a:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "ro.miui.region"

    .line 12
    .line 13
    const-string v3, "ro.vendor.miui.region"

    .line 14
    .line 15
    const-string v4, "ro.miui.build.region"

    .line 16
    .line 17
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "ro.mi.os.version.name"

    .line 22
    .line 23
    const-string v4, "ro.mi.os.version.code"

    .line 24
    .line 25
    const-string v5, "ro.mi.os.version.incremental"

    .line 26
    .line 27
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sput-object v2, Lm6/a;->b:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "ro.miui.ui.version.name"

    .line 34
    .line 35
    const-string v6, "ro.miui.ui.version.code"

    .line 36
    .line 37
    filled-new-array {v4, v6}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sput-object v2, Lm6/a;->c:[Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "ro.build.version.opporom"

    .line 44
    .line 45
    const-string v6, "ro.build.version.oplusrom.display"

    .line 46
    .line 47
    filled-new-array {v2, v6}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v6, "ro.vivo.os.build.display.id"

    .line 52
    .line 53
    filled-new-array {v6}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string v8, "ro.vivo.rom.version"

    .line 58
    .line 59
    const-string v9, "ro.vivo.rom"

    .line 60
    .line 61
    const-string v10, "ro.vivo.os.version"

    .line 62
    .line 63
    filled-new-array {v10, v8, v9, v6}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-string v9, "msc.config.magic.version"

    .line 68
    .line 69
    const-string v10, "ro.build.version.magic"

    .line 70
    .line 71
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const-string v14, "persist.sys.hiview.base_version"

    .line 76
    .line 77
    const-string v15, "ro.comp.hl.product_base_version"

    .line 78
    .line 79
    const-string v10, "hw_sc.build.platform.version"

    .line 80
    .line 81
    const-string v11, "ro.huawei.build.display.id"

    .line 82
    .line 83
    const-string v12, "hwouc.hwpatch.version"

    .line 84
    .line 85
    const-string v13, "persist.mygote.build.id"

    .line 86
    .line 87
    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    const-string v11, "ro.flyme.version.id"

    .line 92
    .line 93
    filled-new-array {v11, v1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    sput-object v12, Lm6/a;->d:[Ljava/lang/String;

    .line 98
    .line 99
    const-string v12, "ro.flyme.published"

    .line 100
    .line 101
    filled-new-array {v12, v11}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    sput-object v11, Lm6/a;->e:[Ljava/lang/String;

    .line 106
    .line 107
    const-string v11, "ro.vendor.mifavor.mfvkeyguard.type"

    .line 108
    .line 109
    const-string v12, "ro.vendor.mifavor.voicetotext"

    .line 110
    .line 111
    const-string v13, "ro.build.MiFavor_version"

    .line 112
    .line 113
    const-string v14, "ro.vendor.mifavor.custom"

    .line 114
    .line 115
    filled-new-array {v13, v14, v11, v12}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    sput-object v11, Lm6/a;->f:[Ljava/lang/String;

    .line 120
    .line 121
    const-string v11, "ro.smartisan.sa"

    .line 122
    .line 123
    const-string v12, "ro.smartisan.version"

    .line 124
    .line 125
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    sput-object v11, Lm6/a;->g:[Ljava/lang/String;

    .line 130
    .line 131
    const-string v20, "ro.config.leui_ringtone_slot2"

    .line 132
    .line 133
    const-string v21, "ro.leui_oem_unlock_enable"

    .line 134
    .line 135
    const-string v14, "ro.letv.release.version"

    .line 136
    .line 137
    const-string v15, "ro.letv.release.version_date"

    .line 138
    .line 139
    const-string v16, "ro.product.letv_model"

    .line 140
    .line 141
    const-string v17, "ro.product.letv_name"

    .line 142
    .line 143
    const-string v18, "sys.letv.fmodelaid"

    .line 144
    .line 145
    const-string v19, "persist.sys.leui.bootreason"

    .line 146
    .line 147
    filled-new-array/range {v14 .. v21}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    sput-object v11, Lm6/a;->h:[Ljava/lang/String;

    .line 152
    .line 153
    const-string v11, "persist.radio.zui.feature"

    .line 154
    .line 155
    const-string v14, "ro.config.zuisdk.enabled"

    .line 156
    .line 157
    const-string v15, "ro.letv.release.version"

    .line 158
    .line 159
    move-object/from16 v16, v0

    .line 160
    .line 161
    const-string v0, "ro.zui.version.status"

    .line 162
    .line 163
    move-object/from16 v17, v1

    .line 164
    .line 165
    const-string v1, "ro.zui.hardware.displayid"

    .line 166
    .line 167
    filled-new-array {v15, v0, v1, v11, v14}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    sput-object v0, Lm6/a;->i:[Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v3}, Li2/c;->H([Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    .line 179
    const-string v0, "HyperOS"

    .line 180
    .line 181
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v5}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    invoke-static {v4}, Li2/c;->H([Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_1

    .line 195
    .line 196
    const-string v0, "MIUI"

    .line 197
    .line 198
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static/range {v16 .. v16}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 205
    .line 206
    :cond_1
    :goto_0
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 207
    .line 208
    if-nez v0, :cond_3

    .line 209
    .line 210
    const-string v0, "ro.build.version.realmeui"

    .line 211
    .line 212
    invoke-static {v0}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_2

    .line 221
    .line 222
    const-string v1, "RealmeUI"

    .line 223
    .line 224
    sput-object v1, Lm6/a;->j:Ljava/lang/String;

    .line 225
    .line 226
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_2
    invoke-static {v2}, Li2/c;->B([Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_3

    .line 238
    .line 239
    const-string v1, "ColorOS"

    .line 240
    .line 241
    sput-object v1, Lm6/a;->j:Ljava/lang/String;

    .line 242
    .line 243
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 244
    .line 245
    :cond_3
    :goto_1
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 246
    .line 247
    if-nez v0, :cond_5

    .line 248
    .line 249
    invoke-static {v6}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-nez v1, :cond_5

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v2, "origin"

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_4

    .line 270
    .line 271
    const-string v0, "OriginOS"

    .line 272
    .line 273
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v7}, Li2/c;->B([Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v1, "funtouch"

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_5

    .line 293
    .line 294
    const-string v0, "FuntouchOS"

    .line 295
    .line 296
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v8}, Li2/c;->B([Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 303
    .line 304
    :cond_5
    :goto_2
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 305
    .line 306
    if-nez v0, :cond_6

    .line 307
    .line 308
    invoke-static {v9}, Li2/c;->B([Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_6

    .line 317
    .line 318
    const-string v1, "MagicOS"

    .line 319
    .line 320
    sput-object v1, Lm6/a;->j:Ljava/lang/String;

    .line 321
    .line 322
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 323
    .line 324
    :cond_6
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 325
    .line 326
    const/4 v1, 0x0

    .line 327
    if-nez v0, :cond_7

    .line 328
    .line 329
    :try_start_0
    const-string v0, "com.huawei.system.BuildEx"

    .line 330
    .line 331
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    const-string v2, "getOsBrand"

    .line 336
    .line 337
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v2, "Harmony"

    .line 346
    .line 347
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_7

    .line 356
    .line 357
    const-string v0, "HarmonyOS"

    .line 358
    .line 359
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {v10}, Li2/c;->B([Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    sput-object v0, Lm6/a;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :catchall_0
    move-exception v0

    .line 369
    goto :goto_3

    .line 370
    :catch_0
    nop

    .line 371
    goto :goto_4

    .line 372
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    .line 374
    .line 375
    :cond_7
    :goto_4
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 376
    .line 377
    if-nez v0, :cond_8

    .line 378
    .line 379
    const-string v0, "ro.build.version.emui"

    .line 380
    .line 381
    invoke-static {v0}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-nez v2, :cond_8

    .line 390
    .line 391
    const-string v2, "EMUI"

    .line 392
    .line 393
    sput-object v2, Lm6/a;->j:Ljava/lang/String;

    .line 394
    .line 395
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 396
    .line 397
    :cond_8
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 398
    .line 399
    const-string v2, "OneUI"

    .line 400
    .line 401
    if-nez v0, :cond_9

    .line 402
    .line 403
    const-string v0, "ro.build.version.oneui"

    .line 404
    .line 405
    invoke-static {v0}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_9

    .line 414
    .line 415
    sput-object v2, Lm6/a;->j:Ljava/lang/String;

    .line 416
    .line 417
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    invoke-static {v3}, Lm6/a;->a(I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    sput-object v3, Lm6/a;->k:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    .line 427
    goto :goto_5

    .line 428
    :catch_1
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 429
    .line 430
    :cond_9
    :goto_5
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 431
    .line 432
    if-nez v0, :cond_a

    .line 433
    .line 434
    const-string v0, "extlib.oneui.Version"

    .line 435
    .line 436
    invoke-static {v0}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-nez v3, :cond_a

    .line 445
    .line 446
    sput-object v2, Lm6/a;->j:Ljava/lang/String;

    .line 447
    .line 448
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 449
    .line 450
    :cond_a
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 451
    .line 452
    if-nez v0, :cond_c

    .line 453
    .line 454
    :try_start_2
    const-class v0, Landroid/os/Build$VERSION;

    .line 455
    .line 456
    const-string v3, "SEM_PLATFORM_INT"

    .line 457
    .line 458
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const/4 v3, 0x1

    .line 463
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    sput-object v2, Lm6/a;->j:Ljava/lang/String;

    .line 471
    .line 472
    const v1, 0x15f90

    .line 473
    .line 474
    .line 475
    if-lt v0, v1, :cond_b

    .line 476
    .line 477
    sub-int/2addr v0, v1

    .line 478
    invoke-static {v0}, Lm6/a;->a(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 483
    .line 484
    goto :goto_6

    .line 485
    :catch_2
    nop

    .line 486
    goto :goto_6

    .line 487
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    sput-object v0, Lm6/a;->k:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 492
    .line 493
    :cond_c
    :goto_6
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 494
    .line 495
    if-nez v0, :cond_e

    .line 496
    .line 497
    const-string v0, "ro.oxygen.version"

    .line 498
    .line 499
    invoke-static {v0}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-nez v1, :cond_d

    .line 508
    .line 509
    const-string v1, "OxygenOS"

    .line 510
    .line 511
    sput-object v1, Lm6/a;->j:Ljava/lang/String;

    .line 512
    .line 513
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 514
    .line 515
    goto :goto_7

    .line 516
    :cond_d
    const-string v0, "ro.rom.version"

    .line 517
    .line 518
    invoke-static {v0}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-nez v1, :cond_e

    .line 527
    .line 528
    const-string v1, "H2OS"

    .line 529
    .line 530
    sput-object v1, Lm6/a;->j:Ljava/lang/String;

    .line 531
    .line 532
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 533
    .line 534
    :cond_e
    :goto_7
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 535
    .line 536
    if-nez v0, :cond_f

    .line 537
    .line 538
    sget-object v0, Lm6/a;->e:[Ljava/lang/String;

    .line 539
    .line 540
    invoke-static {v0}, Li2/c;->H([Ljava/lang/String;)Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-eqz v0, :cond_f

    .line 545
    .line 546
    const-string v0, "Flyme"

    .line 547
    .line 548
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 549
    .line 550
    sget-object v0, Lm6/a;->d:[Ljava/lang/String;

    .line 551
    .line 552
    invoke-static {v0}, Li2/c;->B([Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 557
    .line 558
    :cond_f
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 559
    .line 560
    if-nez v0, :cond_11

    .line 561
    .line 562
    sget-object v0, Lm6/a;->f:[Ljava/lang/String;

    .line 563
    .line 564
    invoke-static {v0}, Li2/c;->H([Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_11

    .line 569
    .line 570
    invoke-static/range {v17 .. v17}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-nez v1, :cond_10

    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    const-string v1, "myos"

    .line 585
    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-eqz v0, :cond_10

    .line 591
    .line 592
    const-string v0, "MyOS"

    .line 593
    .line 594
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 595
    .line 596
    invoke-static/range {v17 .. v17}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 601
    .line 602
    goto :goto_8

    .line 603
    :cond_10
    const-string v0, "MifavorUI"

    .line 604
    .line 605
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 606
    .line 607
    invoke-static {v13}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 612
    .line 613
    :cond_11
    :goto_8
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 614
    .line 615
    if-nez v0, :cond_12

    .line 616
    .line 617
    sget-object v0, Lm6/a;->g:[Ljava/lang/String;

    .line 618
    .line 619
    invoke-static {v0}, Li2/c;->H([Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_12

    .line 624
    .line 625
    const-string v0, "SmartisanOS"

    .line 626
    .line 627
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 628
    .line 629
    invoke-static {v12}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 634
    .line 635
    :cond_12
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 636
    .line 637
    if-nez v0, :cond_13

    .line 638
    .line 639
    sget-object v0, Lm6/a;->h:[Ljava/lang/String;

    .line 640
    .line 641
    invoke-static {v0}, Li2/c;->H([Ljava/lang/String;)Z

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    if-eqz v0, :cond_13

    .line 646
    .line 647
    const-string v0, "EUI"

    .line 648
    .line 649
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 650
    .line 651
    invoke-static {v15}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 656
    .line 657
    :cond_13
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 658
    .line 659
    if-nez v0, :cond_14

    .line 660
    .line 661
    sget-object v0, Lm6/a;->i:[Ljava/lang/String;

    .line 662
    .line 663
    invoke-static {v0}, Li2/c;->H([Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    if-eqz v0, :cond_14

    .line 668
    .line 669
    const-string v0, "ZUI"

    .line 670
    .line 671
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 672
    .line 673
    invoke-static {v15}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 678
    .line 679
    :cond_14
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 680
    .line 681
    if-nez v0, :cond_15

    .line 682
    .line 683
    const-string v0, "ro.build.uiversion"

    .line 684
    .line 685
    invoke-static {v0}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-nez v1, :cond_15

    .line 694
    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    const-string v2, "360ui"

    .line 700
    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-eqz v1, :cond_15

    .line 706
    .line 707
    const-string v1, "360UI"

    .line 708
    .line 709
    sput-object v1, Lm6/a;->j:Ljava/lang/String;

    .line 710
    .line 711
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 712
    .line 713
    :cond_15
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 714
    .line 715
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    if-eqz v0, :cond_16

    .line 720
    .line 721
    const-string v0, ""

    .line 722
    .line 723
    sput-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 724
    .line 725
    :cond_16
    sget-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 726
    .line 727
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_17

    .line 732
    .line 733
    sget-object v0, Lm6/a;->a:[Ljava/lang/String;

    .line 734
    .line 735
    invoke-static {v0}, Li2/c;->B([Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    sput-object v0, Lm6/a;->k:Ljava/lang/String;

    .line 740
    .line 741
    :cond_17
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    .line 1
    div-int/lit16 v0, p0, 0x2710

    .line 2
    .line 3
    rem-int/lit16 v1, p0, 0x2710

    .line 4
    .line 5
    rem-int/lit8 p0, p0, 0x64

    .line 6
    .line 7
    const-string v2, "."

    .line 8
    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    div-int/lit8 v1, v1, 0x64

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    div-int/lit8 v1, v1, 0x64

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget-object v1, Lm6/a;->k:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v1, v0

    .line 9
    :goto_0
    const-string v2, "(\\d+(?:\\.\\d+)+)"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    return-object v0

    .line 34
    :cond_2
    const-string v2, "(\\d+)"

    .line 35
    .line 36
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_3
    return-object v0
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "HyperOS"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static d()Z
    .locals 6

    .line 1
    invoke-static {}, Lm6/a;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    new-array v2, v0, [Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v0, :cond_1

    .line 14
    .line 15
    sget-object v4, Lm6/a;->b:[Ljava/lang/String;

    .line 16
    .line 17
    aget-object v4, v4, v3

    .line 18
    .line 19
    invoke-static {v4}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    aput-object v4, v2, v3

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 29
    :goto_1
    if-ge v3, v0, :cond_3

    .line 30
    .line 31
    aget-object v4, v2, v3

    .line 32
    .line 33
    const-string v5, "cn"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_2
    return v1
.end method

.method public static e()Z
    .locals 2

    .line 1
    sget-object v0, Lm6/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "MIUI"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static f()Z
    .locals 6

    .line 1
    invoke-static {}, Lm6/a;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    new-array v2, v0, [Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v0, :cond_1

    .line 14
    .line 15
    sget-object v4, Lm6/a;->c:[Ljava/lang/String;

    .line 16
    .line 17
    aget-object v4, v4, v3

    .line 18
    .line 19
    invoke-static {v4}, Li2/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    aput-object v4, v2, v3

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 29
    :goto_1
    if-ge v3, v0, :cond_3

    .line 30
    .line 31
    aget-object v4, v2, v3

    .line 32
    .line 33
    const-string v5, "cn"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_2
    return v1
.end method

.method public static g()Z
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 5
    .line 6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "get"

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    new-array v5, v4, [Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    aput-object v0, v5, v6

    .line 17
    .line 18
    aput-object v0, v5, v1

    .line 19
    .line 20
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-array v5, v4, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v7, "ro.miui.cts"

    .line 27
    .line 28
    aput-object v7, v5, v6

    .line 29
    .line 30
    const-string v7, ""

    .line 31
    .line 32
    aput-object v7, v5, v1

    .line 33
    .line 34
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v5, "getBoolean"

    .line 43
    .line 44
    new-array v7, v4, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v0, v7, v6

    .line 47
    .line 48
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    aput-object v0, v7, v1

    .line 51
    .line 52
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v5, "1"

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    xor-int/2addr v3, v1

    .line 63
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    new-array v4, v4, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v5, "persist.sys.miui_optimization"

    .line 70
    .line 71
    aput-object v5, v4, v6

    .line 72
    .line 73
    aput-object v3, v4, v1

    .line 74
    .line 75
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return v0

    .line 88
    :catch_0
    return v1
.end method
