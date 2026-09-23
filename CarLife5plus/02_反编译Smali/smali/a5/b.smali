.class public final La5/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La5/b;->a:I

    iput-object p2, p0, La5/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La5/g;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La5/b;->a:I

    const-string v0, "owner"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V
    .locals 5

    .line 1
    iget v0, p0, La5/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 7
    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, La5/b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lp4/k;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    iget-object p1, p0, La5/b;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lp4/n;

    .line 21
    .line 22
    iget-object p2, p1, Lc/o;->e:Landroidx/lifecycle/r0;

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lc/i;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p2, Lc/i;->a:Landroidx/lifecycle/r0;

    .line 35
    .line 36
    iput-object p2, p1, Lc/o;->e:Landroidx/lifecycle/r0;

    .line 37
    .line 38
    :cond_1
    iget-object p2, p1, Lc/o;->e:Landroidx/lifecycle/r0;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    new-instance p2, Landroidx/lifecycle/r0;

    .line 43
    .line 44
    invoke-direct {p2}, Landroidx/lifecycle/r0;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p1, Lc/o;->e:Landroidx/lifecycle/r0;

    .line 48
    .line 49
    :cond_2
    iget-object p1, p1, Lu3/h;->a:Landroidx/lifecycle/v;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    sget-object v0, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 56
    .line 57
    if-ne p2, v0, :cond_3

    .line 58
    .line 59
    invoke-interface {p1}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, La5/b;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Landroidx/lifecycle/k0;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/lifecycle/k0;->b()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "Next event must be ON_CREATE, it was "

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2

    .line 98
    :pswitch_2
    new-instance p1, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, La5/b;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, [Landroidx/lifecycle/i;

    .line 106
    .line 107
    array-length p2, p1

    .line 108
    const/4 v0, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    if-gtz p2, :cond_5

    .line 111
    .line 112
    array-length p2, p1

    .line 113
    if-gtz p2, :cond_4

    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    aget-object p1, p1, v1

    .line 117
    .line 118
    throw v0

    .line 119
    :cond_5
    aget-object p1, p1, v1

    .line 120
    .line 121
    throw v0

    .line 122
    :pswitch_3
    iget-object v0, p0, La5/b;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, La5/g;

    .line 125
    .line 126
    sget-object v1, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 127
    .line 128
    if-ne p2, v1, :cond_d

    .line 129
    .line 130
    invoke-interface {p1}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, p0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, La5/g;->d()Landroid/support/v4/media/session/t;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string p2, "androidx.savedstate.Restarter"

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/t;->L0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-nez p1, :cond_6

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_6
    const-string p2, "classes_to_restore"

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_c

    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :cond_7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_b

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Ljava/lang/String;

    .line 174
    .line 175
    const-string v1, "Class "

    .line 176
    .line 177
    :try_start_0
    const-class v2, La5/b;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const/4 v3, 0x0

    .line 184
    invoke-static {p2, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const-class v3, La5/c;

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 199
    .line 200
    .line 201
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    const/4 v2, 0x1

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 204
    .line 205
    .line 206
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    check-cast v1, La5/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    .line 215
    instance-of p2, v0, Landroidx/lifecycle/s0;

    .line 216
    .line 217
    if-eqz p2, :cond_a

    .line 218
    .line 219
    move-object p2, v0

    .line 220
    check-cast p2, Landroidx/lifecycle/s0;

    .line 221
    .line 222
    invoke-interface {p2}, Landroidx/lifecycle/s0;->b()Landroidx/lifecycle/r0;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-interface {v0}, La5/g;->d()Landroid/support/v4/media/session/t;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    iget-object p2, p2, Landroidx/lifecycle/r0;->a:Ljava/util/LinkedHashMap;

    .line 234
    .line 235
    new-instance v2, Ljava/util/HashSet;

    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Ljava/util/Collection;

    .line 242
    .line 243
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_9

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Ljava/lang/String;

    .line 261
    .line 262
    const-string v4, "key"

    .line 263
    .line 264
    invoke-static {v3, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Landroidx/lifecycle/o0;

    .line 272
    .line 273
    if-nez v3, :cond_8

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_8
    invoke-interface {v0}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-static {v3, v1, v4}, Landroidx/lifecycle/i0;->a(Landroidx/lifecycle/o0;Landroid/support/v4/media/session/t;Landroidx/lifecycle/v;)V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_9
    new-instance v2, Ljava/util/HashSet;

    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    check-cast p2, Ljava/util/Collection;

    .line 291
    .line 292
    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    if-nez p2, :cond_7

    .line 300
    .line 301
    invoke-virtual {v1}, Landroid/support/v4/media/session/t;->i1()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string p2, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: "

    .line 309
    .line 310
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p2

    .line 330
    :catch_0
    move-exception p1

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    .line 332
    .line 333
    const-string v1, "Failed to instantiate "

    .line 334
    .line 335
    invoke-static {v1, p2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :catch_1
    move-exception p1

    .line 344
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 345
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v1, " must have default constructor in order to be automatically recreated"

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    throw p2

    .line 371
    :catch_2
    move-exception p1

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    .line 373
    .line 374
    const-string v2, " wasn\'t found"

    .line 375
    .line 376
    invoke-static {v1, p2, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :cond_b
    :goto_2
    return-void

    .line 385
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 386
    .line 387
    const-string p2, "SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 388
    .line 389
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw p1

    .line 393
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    .line 394
    .line 395
    const-string p2, "Next event must be ON_CREATE"

    .line 396
    .line 397
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    throw p1

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
