.class public final La7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La7/d;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, La7/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lz6/h;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {v0, v1, v2, p1}, Lz6/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_0
    new-instance p1, Lz6/g;

    .line 31
    .line 32
    invoke-direct {p1, v3}, Ly6/a;-><init>(I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p1, Lz6/f;

    .line 37
    .line 38
    invoke-direct {p1, v3}, Ly6/a;-><init>(I)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_2
    new-instance p1, Lz6/e;

    .line 43
    .line 44
    invoke-direct {p1, v3}, Ly6/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_3
    new-instance p1, Lz6/d;

    .line 49
    .line 50
    invoke-direct {p1, v3}, Ly6/a;-><init>(I)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_4
    new-instance p1, Lz6/c;

    .line 55
    .line 56
    invoke-direct {p1, v3}, Ly6/a;-><init>(I)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_5
    new-instance p1, Lz6/b;

    .line 61
    .line 62
    invoke-direct {p1, v3}, Ly6/a;-><init>(I)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_6
    new-instance p1, Lz6/a;

    .line 67
    .line 68
    invoke-direct {p1, v3}, Ly6/a;-><init>(I)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_7
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>(Landroid/os/Parcel;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_8
    new-instance v0, Lp4/b0;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lp4/b0;-><init>(Landroid/os/Parcel;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_9
    new-instance v0, Lp4/y;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v2, v0, Lp4/y;->e:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v1, v0, Lp4/y;->f:Ljava/util/ArrayList;

    .line 97
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, v0, Lp4/y;->g:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v0, Lp4/y;->a:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lp4/y;->b:Ljava/util/ArrayList;

    .line 116
    .line 117
    sget-object v1, Lp4/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, [Lp4/b;

    .line 124
    .line 125
    iput-object v1, v0, Lp4/y;->c:[Lp4/b;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v0, Lp4/y;->d:I

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, v0, Lp4/y;->e:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iput-object v1, v0, Lp4/y;->f:Ljava/util/ArrayList;

    .line 144
    .line 145
    sget-object v1, Lp4/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v0, Lp4/y;->g:Ljava/util/ArrayList;

    .line 152
    .line 153
    sget-object v1, Lp4/w;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, v0, Lp4/y;->h:Ljava/util/ArrayList;

    .line 160
    .line 161
    return-object v0

    .line 162
    :pswitch_a
    new-instance v0, Lp4/w;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Lp4/w;->a:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    iput p1, v0, Lp4/w;->b:I

    .line 178
    .line 179
    return-object v0

    .line 180
    :pswitch_b
    new-instance v0, Lp4/c;

    .line 181
    .line 182
    invoke-direct {v0, p1}, Lp4/c;-><init>(Landroid/os/Parcel;)V

    .line 183
    .line 184
    .line 185
    return-object v0

    .line 186
    :pswitch_c
    new-instance v0, Lp4/b;

    .line 187
    .line 188
    invoke-direct {v0, p1}, Lp4/b;-><init>(Landroid/os/Parcel;)V

    .line 189
    .line 190
    .line 191
    return-object v0

    .line 192
    :pswitch_d
    new-instance v0, Lp/o0;

    .line 193
    .line 194
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_0

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_0
    const/4 v1, 0x0

    .line 205
    :goto_0
    iput-boolean v1, v0, Lp/o0;->a:Z

    .line 206
    .line 207
    return-object v0

    .line 208
    :pswitch_e
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 209
    .line 210
    invoke-direct {v0, p1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>(Landroid/os/Parcel;)V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :pswitch_f
    new-instance v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    .line 215
    .line 216
    invoke-direct {v0, p1}, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;-><init>(Landroid/os/Parcel;)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :pswitch_10
    new-instance v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 221
    .line 222
    invoke-direct {v0, p1}, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;-><init>(Landroid/os/Parcel;)V

    .line 223
    .line 224
    .line 225
    return-object v0

    .line 226
    :pswitch_11
    new-instance v0, Li4/i;

    .line 227
    .line 228
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    iput p1, v0, Li4/i;->a:I

    .line 236
    .line 237
    return-object v0

    .line 238
    :pswitch_12
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 239
    .line 240
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    :pswitch_13
    const-string v0, "inParcel"

    .line 245
    .line 246
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance v0, Lf/d;

    .line 250
    .line 251
    const-class v1, Landroid/content/IntentSender;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    check-cast v1, Landroid/content/IntentSender;

    .line 265
    .line 266
    const-class v2, Landroid/content/Intent;

    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Landroid/content/Intent;

    .line 277
    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    invoke-direct {v0, v1, v2, v3, p1}, Lf/d;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 287
    .line 288
    .line 289
    return-object v0

    .line 290
    :pswitch_14
    const-string v0, "parcel"

    .line 291
    .line 292
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Lf/a;

    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-nez v3, :cond_1

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_1
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 309
    .line 310
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    move-object v2, p1

    .line 315
    check-cast v2, Landroid/content/Intent;

    .line 316
    .line 317
    :goto_1
    invoke-direct {v0, v2, v1}, Lf/a;-><init>(Landroid/content/Intent;I)V

    .line 318
    .line 319
    .line 320
    return-object v0

    .line 321
    :pswitch_15
    new-instance v0, Lb/d;

    .line 322
    .line 323
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    sget v1, Lb/c;->c:I

    .line 331
    .line 332
    if-nez p1, :cond_2

    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_2
    sget-object v1, Lb/b;->a:Ljava/lang/String;

    .line 336
    .line 337
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    if-eqz v1, :cond_3

    .line 342
    .line 343
    instance-of v2, v1, Lb/b;

    .line 344
    .line 345
    if-eqz v2, :cond_3

    .line 346
    .line 347
    move-object v2, v1

    .line 348
    check-cast v2, Lb/b;

    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_3
    new-instance v2, Lb/a;

    .line 352
    .line 353
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 354
    .line 355
    .line 356
    iput-object p1, v2, Lb/a;->b:Landroid/os/IBinder;

    .line 357
    .line 358
    :goto_2
    iput-object v2, v0, Lb/d;->a:Lb/b;

    .line 359
    .line 360
    return-object v0

    .line 361
    :pswitch_16
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    .line 362
    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 372
    .line 373
    .line 374
    return-object v0

    .line 375
    :pswitch_17
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 376
    .line 377
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    .line 378
    .line 379
    .line 380
    return-object v0

    .line 381
    :pswitch_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 382
    .line 383
    sget-object v1, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 384
    .line 385
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    if-eqz p1, :cond_a

    .line 390
    .line 391
    check-cast p1, Landroid/media/MediaDescription;

    .line 392
    .line 393
    invoke-static {p1}, Landroid/support/v4/media/a;->g(Landroid/media/MediaDescription;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-static {p1}, Landroid/support/v4/media/a;->i(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-static {p1}, Landroid/support/v4/media/a;->h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    invoke-static {p1}, Landroid/support/v4/media/a;->c(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    invoke-static {p1}, Landroid/support/v4/media/a;->e(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    invoke-static {p1}, Landroid/support/v4/media/a;->f(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    invoke-static {p1}, Landroid/support/v4/media/a;->d(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    if-eqz v1, :cond_4

    .line 422
    .line 423
    invoke-static {v1}, Landroid/support/v4/media/session/t;->l1(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    :cond_4
    const-string v3, "android.support.v4.media.description.MEDIA_URI"

    .line 428
    .line 429
    if-eqz v1, :cond_5

    .line 430
    .line 431
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    check-cast v10, Landroid/net/Uri;

    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_5
    move-object v10, v2

    .line 439
    :goto_3
    if-eqz v10, :cond_7

    .line 440
    .line 441
    const-string v11, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 442
    .line 443
    invoke-virtual {v1, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 444
    .line 445
    .line 446
    move-result v12

    .line 447
    if-eqz v12, :cond_6

    .line 448
    .line 449
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    const/4 v13, 0x2

    .line 454
    if-ne v12, v13, :cond_6

    .line 455
    .line 456
    move-object v1, v2

    .line 457
    goto :goto_4

    .line 458
    :cond_6
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    :cond_7
    :goto_4
    if-eqz v10, :cond_8

    .line 465
    .line 466
    move-object v11, v10

    .line 467
    goto :goto_5

    .line 468
    :cond_8
    const/16 v3, 0x17

    .line 469
    .line 470
    if-lt v0, v3, :cond_9

    .line 471
    .line 472
    invoke-static {p1}, Landroid/support/v4/media/b;->a(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    :cond_9
    move-object v11, v2

    .line 477
    :goto_5
    new-instance v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 478
    .line 479
    move-object v10, v1

    .line 480
    invoke-direct/range {v3 .. v11}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 481
    .line 482
    .line 483
    iput-object p1, v3, Landroid/support/v4/media/MediaDescriptionCompat;->i:Landroid/media/MediaDescription;

    .line 484
    .line 485
    move-object v2, v3

    .line 486
    :cond_a
    return-object v2

    .line 487
    :pswitch_19
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 488
    .line 489
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 490
    .line 491
    .line 492
    return-object v0

    .line 493
    :pswitch_1a
    new-instance p1, La7/g;

    .line 494
    .line 495
    invoke-direct {p1, v1}, Ly6/a;-><init>(I)V

    .line 496
    .line 497
    .line 498
    return-object p1

    .line 499
    :pswitch_1b
    new-instance p1, La7/f;

    .line 500
    .line 501
    invoke-direct {p1, v1}, Ly6/a;-><init>(I)V

    .line 502
    .line 503
    .line 504
    return-object p1

    .line 505
    :pswitch_1c
    new-instance v0, La7/e;

    .line 506
    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-direct {v0, p1}, La7/e;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    return-object v0

    .line 515
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, La7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lz6/h;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lz6/g;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lz6/f;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lz6/e;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lz6/d;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lz6/c;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lz6/b;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lz6/a;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lp4/b0;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Lp4/y;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Lp4/w;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lp4/c;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lp4/b;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lp/o0;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Li4/i;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lf/d;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Lf/a;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Lb/d;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [La7/g;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [La7/f;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [La7/e;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
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
