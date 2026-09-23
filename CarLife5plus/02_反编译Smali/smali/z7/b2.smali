.class public final Lz7/b2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final Companion:Lz7/x1;

.field public static final f:[Lr8/h;

.field public static final g:Ljava/util/List;

.field public static final h:Ldc/l0;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lz7/x1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/b2;->Companion:Lz7/x1;

    .line 7
    .line 8
    new-instance v0, Lu7/i;

    .line 9
    .line 10
    const/16 v1, 0xc

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lu7/i;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lr8/i;->a:Lr8/i;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Lu7/i;

    .line 22
    .line 23
    const/16 v3, 0xd

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lu7/i;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x5

    .line 33
    new-array v3, v2, [Lr8/h;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    aput-object v5, v3, v4

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    aput-object v5, v3, v6

    .line 41
    .line 42
    const/4 v7, 0x2

    .line 43
    aput-object v0, v3, v7

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    aput-object v1, v3, v0

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    aput-object v5, v3, v1

    .line 50
    .line 51
    sput-object v3, Lz7/b2;->f:[Lr8/h;

    .line 52
    .line 53
    new-instance v8, Lz7/b2;

    .line 54
    .line 55
    new-instance v3, Lz7/a2;

    .line 56
    .line 57
    new-instance v5, Lz7/l0;

    .line 58
    .line 59
    const/16 v9, 0x57

    .line 60
    .line 61
    invoke-direct {v5, v9, v4, v6}, Lz7/l0;-><init>(IIZ)V

    .line 62
    .line 63
    .line 64
    const-string v14, "KeyBoard"

    .line 65
    .line 66
    const-string v15, "\u7269\u7406\u6309\u952e\u76d1\u542c"

    .line 67
    .line 68
    const-string v9, "\u5355\u51fb87 \u963b\u6b62\u5176\u4ed6\u4e8b\u4ef6"

    .line 69
    .line 70
    invoke-direct {v3, v14, v15, v9, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    new-instance v3, Lz7/a2;

    .line 78
    .line 79
    new-instance v5, Lz7/u0;

    .line 80
    .line 81
    const/16 v9, 0x10

    .line 82
    .line 83
    invoke-direct {v5, v9}, Lz7/u0;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const-string v9, "Message"

    .line 87
    .line 88
    const-string v10, "\u4e0b\u4e00\u9996"

    .line 89
    .line 90
    const-string v12, "\u53d1\u9001\u6309\u952e\u6d88\u606f16"

    .line 91
    .line 92
    invoke-direct {v3, v9, v10, v12, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    const/4 v13, 0x1

    .line 100
    move-object v3, v9

    .line 101
    const/4 v9, 0x0

    .line 102
    const-string v10, "\u4e0b\u4e00\u9996"

    .line 103
    .line 104
    invoke-direct/range {v8 .. v13}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 105
    .line 106
    .line 107
    new-instance v16, Lz7/b2;

    .line 108
    .line 109
    new-instance v5, Lz7/a2;

    .line 110
    .line 111
    new-instance v9, Lz7/l0;

    .line 112
    .line 113
    const/16 v10, 0x58

    .line 114
    .line 115
    invoke-direct {v9, v10, v4, v6}, Lz7/l0;-><init>(IIZ)V

    .line 116
    .line 117
    .line 118
    const-string v10, "\u5355\u51fb88 \u963b\u6b62\u5176\u4ed6\u4e8b\u4ef6"

    .line 119
    .line 120
    invoke-direct {v5, v14, v15, v10, v9}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v5}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v19

    .line 127
    new-instance v5, Lz7/a2;

    .line 128
    .line 129
    new-instance v9, Lz7/u0;

    .line 130
    .line 131
    const/16 v10, 0xf

    .line 132
    .line 133
    invoke-direct {v9, v10}, Lz7/u0;-><init>(I)V

    .line 134
    .line 135
    .line 136
    const-string v10, "\u4e0a\u4e00\u9996"

    .line 137
    .line 138
    const-string v11, "\u53d1\u9001\u6309\u952e\u6d88\u606f15"

    .line 139
    .line 140
    invoke-direct {v5, v3, v10, v11, v9}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v5}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v20

    .line 147
    const/16 v21, 0x1

    .line 148
    .line 149
    const/16 v17, 0x1

    .line 150
    .line 151
    const-string v18, "\u4e0a\u4e00\u9996"

    .line 152
    .line 153
    invoke-direct/range {v16 .. v21}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 154
    .line 155
    .line 156
    new-instance v9, Lz7/b2;

    .line 157
    .line 158
    new-instance v3, Lz7/a2;

    .line 159
    .line 160
    new-instance v5, Lz7/g1;

    .line 161
    .line 162
    invoke-direct {v5, v4}, Lz7/g1;-><init>(I)V

    .line 163
    .line 164
    .line 165
    const-string v15, "SunCycle"

    .line 166
    .line 167
    const-string v10, "\u7cfb\u7edf\u4e3b\u9898"

    .line 168
    .line 169
    const-string v11, "\u7cfb\u7edf\u5207\u6362\u5230\u767d\u5929\u6a21\u5f0f"

    .line 170
    .line 171
    invoke-direct {v3, v15, v10, v11, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    new-instance v3, Lz7/a2;

    .line 179
    .line 180
    new-instance v5, Lz7/j1;

    .line 181
    .line 182
    invoke-direct {v5, v4}, Lz7/j1;-><init>(I)V

    .line 183
    .line 184
    .line 185
    const-string v11, "Theme"

    .line 186
    .line 187
    const-string v13, "\u4e92\u8054\u4e3b\u9898"

    .line 188
    .line 189
    const-string v14, "\u4e92\u8054\u5207\u6362\u5230\u767d\u5929\u6a21\u5f0f"

    .line 190
    .line 191
    invoke-direct {v3, v11, v13, v14, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    const/4 v14, 0x1

    .line 199
    move-object v5, v10

    .line 200
    const/4 v10, 0x2

    .line 201
    move-object/from16 v17, v11

    .line 202
    .line 203
    const-string v11, "\u767d\u5929\u6a21\u5f0f"

    .line 204
    .line 205
    move-object v1, v13

    .line 206
    move-object v13, v3

    .line 207
    move-object/from16 v3, v17

    .line 208
    .line 209
    const/16 v17, 0x4

    .line 210
    .line 211
    invoke-direct/range {v9 .. v14}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 212
    .line 213
    .line 214
    new-instance v18, Lz7/b2;

    .line 215
    .line 216
    new-instance v10, Lz7/a2;

    .line 217
    .line 218
    new-instance v11, Lz7/g1;

    .line 219
    .line 220
    invoke-direct {v11, v6}, Lz7/g1;-><init>(I)V

    .line 221
    .line 222
    .line 223
    const-string v12, "\u7cfb\u7edf\u5207\u6362\u5230\u591c\u95f4\u6a21\u5f0f"

    .line 224
    .line 225
    invoke-direct {v10, v15, v5, v12, v11}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v10}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v21

    .line 232
    new-instance v5, Lz7/a2;

    .line 233
    .line 234
    new-instance v10, Lz7/j1;

    .line 235
    .line 236
    invoke-direct {v10, v6}, Lz7/j1;-><init>(I)V

    .line 237
    .line 238
    .line 239
    const-string v11, "\u4e92\u8054\u5207\u6362\u5230\u591c\u95f4\u6a21\u5f0f"

    .line 240
    .line 241
    invoke-direct {v5, v3, v1, v11, v10}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v5}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v22

    .line 248
    const/16 v23, 0x1

    .line 249
    .line 250
    const/16 v19, 0x3

    .line 251
    .line 252
    const-string v20, "\u591c\u95f4\u6a21\u5f0f"

    .line 253
    .line 254
    invoke-direct/range {v18 .. v23}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 255
    .line 256
    .line 257
    new-instance v10, Lz7/b2;

    .line 258
    .line 259
    new-instance v1, Lz7/a2;

    .line 260
    .line 261
    new-instance v3, Lz7/z;

    .line 262
    .line 263
    invoke-direct {v3, v7}, Lz7/z;-><init>(I)V

    .line 264
    .line 265
    .line 266
    const-string v5, "ConnectState"

    .line 267
    .line 268
    const-string v11, "CarLife\u5df2\u8fde\u63a5"

    .line 269
    .line 270
    invoke-direct {v1, v5, v11, v11, v3}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    new-instance v1, Lz7/a2;

    .line 278
    .line 279
    new-instance v3, Lz7/f0;

    .line 280
    .line 281
    const-wide/16 v11, 0x5

    .line 282
    .line 283
    invoke-direct {v3, v11, v12}, Lz7/f0;-><init>(J)V

    .line 284
    .line 285
    .line 286
    const-string v11, "Delay"

    .line 287
    .line 288
    const-string v12, "\u5ef6\u8fdf\u6267\u884c"

    .line 289
    .line 290
    const-string v14, "\u5ef6\u8fdf5\u79d2"

    .line 291
    .line 292
    invoke-direct {v1, v11, v12, v14, v3}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 293
    .line 294
    .line 295
    new-instance v3, Lz7/a2;

    .line 296
    .line 297
    new-instance v11, Lz7/m;

    .line 298
    .line 299
    invoke-direct {v11, v4}, Lz7/m;-><init>(I)V

    .line 300
    .line 301
    .line 302
    const-string v12, "AppSwitch"

    .line 303
    .line 304
    const-string v14, "\u524d\u53f0\u542f\u52a8"

    .line 305
    .line 306
    invoke-direct {v3, v12, v14, v14, v11}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 307
    .line 308
    .line 309
    new-array v11, v7, [Lz7/a2;

    .line 310
    .line 311
    aput-object v1, v11, v4

    .line 312
    .line 313
    aput-object v3, v11, v6

    .line 314
    .line 315
    invoke-static {v11}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    const/4 v15, 0x1

    .line 320
    const/4 v11, 0x4

    .line 321
    move-object v1, v12

    .line 322
    const-string v12, "\u8fde\u63a5\u540e\u6253\u5f00\u4e92\u8054"

    .line 323
    .line 324
    invoke-direct/range {v10 .. v15}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 325
    .line 326
    .line 327
    new-instance v19, Lz7/b2;

    .line 328
    .line 329
    new-instance v3, Lz7/a2;

    .line 330
    .line 331
    new-instance v11, Lz7/z;

    .line 332
    .line 333
    invoke-direct {v11, v0}, Lz7/z;-><init>(I)V

    .line 334
    .line 335
    .line 336
    const-string v12, "CarLife\u8fde\u63a5\u65ad\u5f00"

    .line 337
    .line 338
    invoke-direct {v3, v5, v12, v12, v11}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v22

    .line 345
    new-instance v3, Lz7/a2;

    .line 346
    .line 347
    new-instance v5, Lz7/m;

    .line 348
    .line 349
    invoke-direct {v5, v0}, Lz7/m;-><init>(I)V

    .line 350
    .line 351
    .line 352
    const-string v11, "\u8fd4\u56de\u684c\u9762"

    .line 353
    .line 354
    invoke-direct {v3, v1, v11, v11, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v23

    .line 361
    const/16 v24, 0x1

    .line 362
    .line 363
    const/16 v20, 0x5

    .line 364
    .line 365
    const-string v21, "\u65ad\u5f00\u540e\u8fd4\u56de\u684c\u9762"

    .line 366
    .line 367
    invoke-direct/range {v19 .. v24}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 368
    .line 369
    .line 370
    new-instance v20, Lz7/b2;

    .line 371
    .line 372
    new-instance v3, Lz7/a2;

    .line 373
    .line 374
    new-instance v5, Lz7/j;

    .line 375
    .line 376
    invoke-direct {v5, v4}, Lz7/j;-><init>(I)V

    .line 377
    .line 378
    .line 379
    const-string v11, "AppState"

    .line 380
    .line 381
    const-string v12, "\u5e94\u7528\u542f\u52a8"

    .line 382
    .line 383
    const-string v13, "\u5f53\u5e94\u7528\u542f\u52a8\u65f6"

    .line 384
    .line 385
    invoke-direct {v3, v11, v12, v13, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 386
    .line 387
    .line 388
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v23

    .line 392
    new-instance v3, Lz7/a2;

    .line 393
    .line 394
    new-instance v5, Lz7/m;

    .line 395
    .line 396
    invoke-direct {v5, v7}, Lz7/m;-><init>(I)V

    .line 397
    .line 398
    .line 399
    const-string v11, "\u670d\u52a1\u542f\u52a8"

    .line 400
    .line 401
    invoke-direct {v3, v1, v11, v11, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v24

    .line 408
    const/16 v25, 0x1

    .line 409
    .line 410
    const/16 v21, 0x6

    .line 411
    .line 412
    const-string v22, "\u8fde\u63a5\u670d\u52a1\u81ea\u542f"

    .line 413
    .line 414
    invoke-direct/range {v20 .. v25}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 415
    .line 416
    .line 417
    new-instance v21, Lz7/b2;

    .line 418
    .line 419
    new-instance v3, Lz7/a2;

    .line 420
    .line 421
    new-instance v5, Lz7/s;

    .line 422
    .line 423
    invoke-direct {v5}, Lz7/s;-><init>()V

    .line 424
    .line 425
    .line 426
    const-string v11, "Boot"

    .line 427
    .line 428
    const-string v12, "\u7cfb\u7edf\u542f\u52a8"

    .line 429
    .line 430
    const-string v13, "\u5f53\u7cfb\u7edf\u542f\u52a8\u65f6"

    .line 431
    .line 432
    invoke-direct {v3, v11, v12, v13, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v24

    .line 439
    new-instance v3, Lz7/a2;

    .line 440
    .line 441
    new-instance v5, Lz7/m;

    .line 442
    .line 443
    invoke-direct {v5, v6}, Lz7/m;-><init>(I)V

    .line 444
    .line 445
    .line 446
    const-string v11, "\u9759\u9ed8\u542f\u52a8"

    .line 447
    .line 448
    invoke-direct {v3, v1, v11, v11, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 449
    .line 450
    .line 451
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 452
    .line 453
    .line 454
    move-result-object v25

    .line 455
    const/16 v26, 0x1

    .line 456
    .line 457
    const/16 v22, 0x7

    .line 458
    .line 459
    const-string v23, "\u5f00\u673a\u81ea\u542f"

    .line 460
    .line 461
    invoke-direct/range {v21 .. v26}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 462
    .line 463
    .line 464
    const/16 v1, 0x8

    .line 465
    .line 466
    new-array v1, v1, [Lz7/b2;

    .line 467
    .line 468
    aput-object v8, v1, v4

    .line 469
    .line 470
    aput-object v16, v1, v6

    .line 471
    .line 472
    aput-object v9, v1, v7

    .line 473
    .line 474
    aput-object v18, v1, v0

    .line 475
    .line 476
    aput-object v10, v1, v17

    .line 477
    .line 478
    aput-object v19, v1, v2

    .line 479
    .line 480
    const/4 v0, 0x6

    .line 481
    aput-object v20, v1, v0

    .line 482
    .line 483
    const/4 v0, 0x7

    .line 484
    aput-object v21, v1, v0

    .line 485
    .line 486
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sput-object v0, Lz7/b2;->g:Ljava/util/List;

    .line 491
    .line 492
    invoke-static {}, Lz7/x1;->a()Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-eqz v2, :cond_1

    .line 510
    .line 511
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    move-object v3, v2

    .line 516
    check-cast v3, Lz7/b2;

    .line 517
    .line 518
    iget-boolean v3, v3, Lz7/b2;->e:Z

    .line 519
    .line 520
    if-eqz v3, :cond_0

    .line 521
    .line 522
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    goto :goto_0

    .line 526
    :cond_1
    invoke-static {v1}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    sput-object v0, Lz7/b2;->h:Ldc/l0;

    .line 531
    .line 532
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 2

    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0xf

    if-ne v1, v0, :cond_1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lz7/b2;->a:I

    iput-object p3, p0, Lz7/b2;->b:Ljava/lang/String;

    iput-object p4, p0, Lz7/b2;->c:Ljava/util/List;

    iput-object p5, p0, Lz7/b2;->d:Ljava/util/List;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz7/b2;->e:Z

    return-void

    :cond_0
    iput-boolean p6, p0, Lz7/b2;->e:Z

    return-void

    :cond_1
    sget-object p2, Lz7/w1;->a:Lz7/w1;

    invoke-virtual {p2}, Lz7/w1;->d()Llc/e;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lnc/m0;->e(IILlc/e;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lz7/b2;->a:I

    .line 4
    iput-object p2, p0, Lz7/b2;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lz7/b2;->c:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lz7/b2;->d:Ljava/util/List;

    .line 7
    iput-boolean p5, p0, Lz7/b2;->e:Z

    return-void
.end method

.method public static a(Lz7/b2;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)Lz7/b2;
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    iget p1, p0, Lz7/b2;->a:I

    .line 3
    .line 4
    and-int/lit8 v1, p5, 0x2

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lz7/b2;->b:Ljava/lang/String;

    .line 9
    .line 10
    :cond_0
    and-int/lit8 v1, p5, 0x4

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lz7/b2;->c:Ljava/util/List;

    .line 15
    .line 16
    :cond_1
    and-int/lit8 v1, p5, 0x8

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object p3, p0, Lz7/b2;->d:Ljava/util/List;

    .line 21
    .line 22
    :cond_2
    and-int/lit8 p5, p5, 0x10

    .line 23
    .line 24
    if-eqz p5, :cond_3

    .line 25
    .line 26
    iget-boolean p4, p0, Lz7/b2;->e:Z

    .line 27
    .line 28
    :cond_3
    move p5, p4

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string p0, "label"

    .line 33
    .line 34
    invoke-static {v0, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p0, "trigger"

    .line 38
    .line 39
    invoke-static {p2, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p0, "action"

    .line 43
    .line 44
    invoke-static {p3, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Lz7/b2;

    .line 48
    .line 49
    move-object p4, p3

    .line 50
    move-object p3, p2

    .line 51
    move-object p2, v0

    .line 52
    invoke-direct/range {p0 .. p5}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lz7/b2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lz7/b2;

    .line 12
    .line 13
    iget v1, p0, Lz7/b2;->a:I

    .line 14
    .line 15
    iget v3, p1, Lz7/b2;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lz7/b2;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lz7/b2;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lz7/b2;->c:Ljava/util/List;

    .line 32
    .line 33
    iget-object v3, p1, Lz7/b2;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lz7/b2;->d:Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, p1, Lz7/b2;->d:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean v1, p0, Lz7/b2;->e:Z

    .line 54
    .line 55
    iget-boolean p1, p1, Lz7/b2;->e:Z

    .line 56
    .line 57
    if-eq v1, p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lz7/b2;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v2, p0, Lz7/b2;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lp9/v;->k(Ljava/lang/String;II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Lz7/b2;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v0

    .line 20
    mul-int/lit8 v2, v2, 0x1f

    .line 21
    .line 22
    iget-object v0, p0, Lz7/b2;->d:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, v2

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-boolean v1, p0, Lz7/b2;->e:Z

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/16 v1, 0x4cf

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v1, 0x4d5

    .line 39
    .line 40
    :goto_0
    add-int/2addr v0, v1

    .line 41
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TaskerOption(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lz7/b2;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", label="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lz7/b2;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", trigger="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lz7/b2;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", action="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lz7/b2;->d:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", enabled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lz7/b2;->e:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ")"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
