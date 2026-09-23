.class public final Le4/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Le4/b;


# direct methods
.method public constructor <init>(Le4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le4/a;->a:Le4/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    iget-object v0, v0, Le4/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le4/b;->a(Landroid/view/View;)La2/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, La2/d;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Le4/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lf4/e;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lf4/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const-class v5, Ljava/lang/Boolean;

    .line 16
    .line 17
    const/16 v6, 0x1c

    .line 18
    .line 19
    if-lt v3, v6, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Le4/f0;->c(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v3, 0x7f0800ac

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v3, v4

    .line 45
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x1

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    :goto_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    if-lt v9, v6, :cond_3

    .line 63
    .line 64
    invoke-static {v1, v3}, Landroid/support/v4/media/session/o;->w(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v2, v8, v3}, Lf4/e;->f(IZ)V

    .line 69
    .line 70
    .line 71
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    if-lt v3, v6, :cond_4

    .line 74
    .line 75
    invoke-static {v0}, Le4/f0;->b(Landroid/view/View;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const v3, 0x7f0800a6

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move-object v3, v4

    .line 99
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    .line 100
    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 v8, 0x0

    .line 111
    :goto_4
    if-lt v9, v6, :cond_7

    .line 112
    .line 113
    invoke-static {v1, v8}, Landroid/support/v4/media/session/o;->D(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    const/4 v3, 0x2

    .line 118
    invoke-virtual {v2, v3, v8}, Lf4/e;->f(IZ)V

    .line 119
    .line 120
    .line 121
    :goto_5
    const-class v3, Ljava/lang/CharSequence;

    .line 122
    .line 123
    if-lt v9, v6, :cond_8

    .line 124
    .line 125
    invoke-static {v0}, Le4/f0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    goto :goto_6

    .line 130
    :cond_8
    const v5, 0x7f0800a7

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_9

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    move-object v5, v4

    .line 145
    :goto_6
    check-cast v5, Ljava/lang/CharSequence;

    .line 146
    .line 147
    if-lt v9, v6, :cond_a

    .line 148
    .line 149
    invoke-static {v1, v5}, Landroid/support/v4/media/session/o;->v(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_a
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 158
    .line 159
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    :goto_7
    const/16 v5, 0x1e

    .line 163
    .line 164
    if-lt v9, v5, :cond_b

    .line 165
    .line 166
    invoke-static {v0}, Le4/h0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    goto :goto_8

    .line 171
    :cond_b
    const v6, 0x7f0800ad

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_c

    .line 183
    .line 184
    move-object v3, v6

    .line 185
    goto :goto_8

    .line 186
    :cond_c
    move-object v3, v4

    .line 187
    :goto_8
    check-cast v3, Ljava/lang/CharSequence;

    .line 188
    .line 189
    if-lt v9, v5, :cond_d

    .line 190
    .line 191
    invoke-static {v1, v3}, Le4/h;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    :goto_9
    move-object/from16 v3, p0

    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_d
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 202
    .line 203
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    goto :goto_9

    .line 207
    :goto_a
    iget-object v5, v3, Le4/a;->a:Le4/b;

    .line 208
    .line 209
    invoke-virtual {v5, v0, v2}, Le4/b;->c(Landroid/view/View;Lf4/e;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const/16 v6, 0x1a

    .line 217
    .line 218
    if-ge v9, v6, :cond_15

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 225
    .line 226
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 234
    .line 235
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 243
    .line 244
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    const-string v11, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 252
    .line 253
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const v6, 0x7f0800a5

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    check-cast v12, Landroid/util/SparseArray;

    .line 264
    .line 265
    if-eqz v12, :cond_10

    .line 266
    .line 267
    new-instance v13, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .line 271
    .line 272
    const/4 v14, 0x0

    .line 273
    :goto_b
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 274
    .line 275
    .line 276
    move-result v15

    .line 277
    if-ge v14, v15, :cond_f

    .line 278
    .line 279
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 284
    .line 285
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v15

    .line 289
    if-nez v15, :cond_e

    .line 290
    .line 291
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    :cond_e
    add-int/lit8 v14, v14, 0x1

    .line 299
    .line 300
    goto :goto_b

    .line 301
    :cond_f
    const/4 v14, 0x0

    .line 302
    :goto_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    if-ge v14, v15, :cond_10

    .line 307
    .line 308
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v15

    .line 312
    check-cast v15, Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 319
    .line 320
    .line 321
    add-int/lit8 v14, v14, 0x1

    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_10
    instance-of v12, v5, Landroid/text/Spanned;

    .line 325
    .line 326
    if-eqz v12, :cond_11

    .line 327
    .line 328
    move-object v4, v5

    .line 329
    check-cast v4, Landroid/text/Spanned;

    .line 330
    .line 331
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 332
    .line 333
    .line 334
    move-result v12

    .line 335
    const-class v13, Landroid/text/style/ClickableSpan;

    .line 336
    .line 337
    invoke-interface {v4, v7, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 342
    .line 343
    :cond_11
    if-eqz v4, :cond_15

    .line 344
    .line 345
    array-length v12, v4

    .line 346
    if-lez v12, :cond_15

    .line 347
    .line 348
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 353
    .line 354
    const v13, 0x7f080006

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Landroid/util/SparseArray;

    .line 365
    .line 366
    if-nez v1, :cond_12

    .line 367
    .line 368
    new-instance v1, Landroid/util/SparseArray;

    .line 369
    .line 370
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_12
    const/4 v6, 0x0

    .line 377
    :goto_d
    array-length v12, v4

    .line 378
    if-ge v6, v12, :cond_15

    .line 379
    .line 380
    aget-object v12, v4, v6

    .line 381
    .line 382
    const/4 v13, 0x0

    .line 383
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 384
    .line 385
    .line 386
    move-result v14

    .line 387
    if-ge v13, v14, :cond_14

    .line 388
    .line 389
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    check-cast v14, Ljava/lang/ref/WeakReference;

    .line 394
    .line 395
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v14

    .line 399
    check-cast v14, Landroid/text/style/ClickableSpan;

    .line 400
    .line 401
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    if-eqz v14, :cond_13

    .line 406
    .line 407
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    goto :goto_f

    .line 412
    :cond_13
    add-int/lit8 v13, v13, 0x1

    .line 413
    .line 414
    goto :goto_e

    .line 415
    :cond_14
    sget v12, Lf4/e;->d:I

    .line 416
    .line 417
    add-int/lit8 v13, v12, 0x1

    .line 418
    .line 419
    sput v13, Lf4/e;->d:I

    .line 420
    .line 421
    :goto_f
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 422
    .line 423
    aget-object v14, v4, v6

    .line 424
    .line 425
    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    aget-object v13, v4, v6

    .line 432
    .line 433
    move-object v14, v5

    .line 434
    check-cast v14, Landroid/text/Spanned;

    .line 435
    .line 436
    invoke-virtual {v2, v8}, Lf4/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 437
    .line 438
    .line 439
    move-result-object v15

    .line 440
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 441
    .line 442
    .line 443
    move-result v16

    .line 444
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v9}, Lf4/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 456
    .line 457
    .line 458
    move-result v15

    .line 459
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v15

    .line 463
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v10}, Lf4/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 471
    .line 472
    .line 473
    move-result v13

    .line 474
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v13

    .line 478
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v11}, Lf4/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v12

    .line 489
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    add-int/lit8 v6, v6, 0x1

    .line 493
    .line 494
    const/4 v7, 0x0

    .line 495
    goto :goto_d

    .line 496
    :cond_15
    const v1, 0x7f0800a4

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    check-cast v0, Ljava/util/List;

    .line 504
    .line 505
    if-nez v0, :cond_16

    .line 506
    .line 507
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 508
    .line 509
    :cond_16
    const/4 v7, 0x0

    .line 510
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    if-ge v7, v1, :cond_17

    .line 515
    .line 516
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    check-cast v1, Lf4/c;

    .line 521
    .line 522
    invoke-virtual {v2, v1}, Lf4/e;->a(Lf4/c;)V

    .line 523
    .line 524
    .line 525
    add-int/lit8 v7, v7, 0x1

    .line 526
    .line 527
    goto :goto_10

    .line 528
    :cond_17
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    iget-object v0, v0, Le4/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    iget-object v0, v0, Le4/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Le4/b;->d(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    iget-object v0, v0, Le4/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/b;

    .line 2
    .line 3
    iget-object v0, v0, Le4/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
