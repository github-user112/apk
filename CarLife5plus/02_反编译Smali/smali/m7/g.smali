.class public abstract Lm7/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr8/o;

.field public static final b:Ljava/util/UUID;

.field public static final c:Lr8/o;

.field public static d:Lm7/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm7/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lm7/g;->a:Lr8/o;

    .line 12
    .line 13
    const-string v0, "c62857aa-6ca1-4ac4-8842-3ca71aef6765"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lm7/g;->b:Ljava/util/UUID;

    .line 20
    .line 21
    new-instance v0, Lm7/e;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lm7/g;->c:Lr8/o;

    .line 32
    .line 33
    return-void
.end method

.method public static a()V
    .locals 21

    .line 1
    sget-object v0, Lm7/z;->n:Ldc/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm7/z;

    .line 8
    .line 9
    iget-boolean v1, v0, Lm7/z;->h:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lm7/z;->b:Lm7/a0;

    .line 16
    .line 17
    sget-object v2, Lm7/a0;->f:Lm7/a0;

    .line 18
    .line 19
    sget-object v3, Lm7/g;->c:Lr8/o;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    sget-object v5, Lm7/g;->a:Lr8/o;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v7, "ConnectBLE"

    .line 26
    .line 27
    const-string v8, "\u84dd\u7259\u5e7f\u64ad\u6743\u9650\u672a\u6388\u6743"

    .line 28
    .line 29
    const-string v9, "android.permission.BLUETOOTH_ADVERTISE"

    .line 30
    .line 31
    const/16 v10, 0x1f

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    if-eq v1, v2, :cond_b

    .line 35
    .line 36
    iget v0, v0, Lm7/z;->c:I

    .line 37
    .line 38
    const/16 v1, 0x9

    .line 39
    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    if-lt v0, v10, :cond_2

    .line 47
    .line 48
    invoke-virtual {v5}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v0, v9}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 61
    .line 62
    invoke-static {v11, v8}, Ll8/c;->g(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {v3}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move-object v0, v6

    .line 80
    :goto_0
    if-eqz v0, :cond_a

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ne v0, v4, :cond_a

    .line 87
    .line 88
    invoke-virtual {v5}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "android.hardware.bluetooth_le"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 107
    .line 108
    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301BLE"

    .line 109
    .line 110
    invoke-static {v11, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    invoke-virtual {v3}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move-object v0, v6

    .line 128
    :goto_1
    if-eqz v0, :cond_6

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_2

    .line 135
    :cond_6
    move-object v0, v6

    .line 136
    :goto_2
    if-eqz v0, :cond_9

    .line 137
    .line 138
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 139
    .line 140
    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 141
    .line 142
    .line 143
    const/4 v1, 0x2

    .line 144
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/4 v2, 0x3

    .line 149
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, v11}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v2, Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 162
    .line 163
    invoke-direct {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    new-instance v5, Landroid/os/ParcelUuid;

    .line 171
    .line 172
    sget-object v8, Lm7/g;->b:Ljava/util/UUID;

    .line 173
    .line 174
    invoke-direct {v5, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    new-instance v5, Lm7/f;

    .line 186
    .line 187
    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    .line 188
    .line 189
    .line 190
    sput-object v5, Lm7/g;->d:Lm7/f;

    .line 191
    .line 192
    :try_start_0
    invoke-virtual {v3}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Landroid/bluetooth/BluetoothManager;

    .line 197
    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    goto :goto_3

    .line 205
    :cond_7
    move-object v3, v6

    .line 206
    :goto_3
    if-eqz v3, :cond_8

    .line 207
    .line 208
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    :cond_8
    if-eqz v6, :cond_11

    .line 213
    .line 214
    sget-object v3, Lm7/g;->d:Lm7/f;

    .line 215
    .line 216
    invoke-virtual {v6, v0, v2, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    sget-object v2, Ll8/c;->a:Lfc/c;

    .line 222
    .line 223
    const-string v2, "BLE\u5e7f\u64ad\u542f\u52a8\u5f02\u5e38"

    .line 224
    .line 225
    invoke-static {v11, v2}, Ll8/c;->g(ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 229
    .line 230
    new-array v1, v1, [Ljava/lang/Object;

    .line 231
    .line 232
    aput-object v2, v1, v11

    .line 233
    .line 234
    aput-object v0, v1, v4

    .line 235
    .line 236
    invoke-virtual {v3, v7, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_9
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 241
    .line 242
    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301BLE\u5e7f\u64ad"

    .line 243
    .line 244
    invoke-static {v11, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_a
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 249
    .line 250
    const-string v0, "\u84dd\u7259\u672a\u5f00\u542f\u6216\u4e0d\u53ef\u7528"

    .line 251
    .line 252
    invoke-static {v11, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_b
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 257
    .line 258
    if-lt v0, v10, :cond_c

    .line 259
    .line 260
    invoke-virtual {v5}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Landroid/content/Context;

    .line 265
    .line 266
    invoke-static {v0, v9}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_c

    .line 271
    .line 272
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 273
    .line 274
    invoke-static {v11, v8}, Ll8/c;->g(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_c
    sget-object v0, Lm7/g;->d:Lm7/f;

    .line 279
    .line 280
    if-eqz v0, :cond_11

    .line 281
    .line 282
    invoke-virtual {v3}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 287
    .line 288
    if-eqz v1, :cond_d

    .line 289
    .line 290
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    goto :goto_5

    .line 295
    :cond_d
    move-object v1, v6

    .line 296
    :goto_5
    if-eqz v1, :cond_e

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    goto :goto_6

    .line 303
    :cond_e
    move-object v1, v6

    .line 304
    :goto_6
    if-eqz v1, :cond_f

    .line 305
    .line 306
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 307
    .line 308
    .line 309
    :cond_f
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    const-string v2, "\u3010\u65e0\u611f\u8fde\u63a5\u3011\u5e7f\u64ad\u5df2\u505c\u6b62: "

    .line 316
    .line 317
    invoke-static {v0, v2}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    new-array v2, v4, [Ljava/lang/Object;

    .line 322
    .line 323
    aput-object v0, v2, v11

    .line 324
    .line 325
    invoke-virtual {v1, v7, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 329
    .line 330
    :cond_10
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    move-object v7, v1

    .line 335
    check-cast v7, Lm7/z;

    .line 336
    .line 337
    const-string v2, "$this$update"

    .line 338
    .line 339
    invoke-static {v7, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const/16 v19, 0x0

    .line 343
    .line 344
    const/16 v20, 0x7ff

    .line 345
    .line 346
    const/4 v8, 0x0

    .line 347
    const/4 v9, 0x0

    .line 348
    const/4 v10, 0x0

    .line 349
    const/4 v11, 0x0

    .line 350
    const/4 v12, 0x0

    .line 351
    const/4 v13, 0x0

    .line 352
    const/4 v14, 0x0

    .line 353
    const/4 v15, 0x0

    .line 354
    const/16 v16, 0x0

    .line 355
    .line 356
    const/16 v17, 0x0

    .line 357
    .line 358
    const/16 v18, 0x0

    .line 359
    .line 360
    invoke-static/range {v7 .. v20}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_10

    .line 369
    .line 370
    sput-object v6, Lm7/g;->d:Lm7/f;

    .line 371
    .line 372
    :cond_11
    :goto_7
    return-void
.end method
