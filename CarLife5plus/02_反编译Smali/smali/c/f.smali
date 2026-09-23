.class public final synthetic Lc/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements La5/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc/f;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 7

    .line 1
    iget v0, p0, Lc/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc/f;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lb3/q;

    .line 9
    .line 10
    iget-object v1, v0, Lb3/q;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    const-string v2, "<this>"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sget-object v4, Ls8/x;->a:Ls8/x;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    if-eq v3, v5, :cond_0

    .line 29
    .line 30
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v1}, Ls8/c0;->J(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v3, v4

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ldc/w;

    .line 73
    .line 74
    check-cast v3, Ldc/l0;

    .line 75
    .line 76
    invoke-virtual {v3}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0, v3, v6}, Lb3/q;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v1, v0, Lb3/q;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    if-eq v2, v5, :cond_3

    .line 98
    .line 99
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    invoke-direct {v4, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static {v1}, Ls8/c0;->J(Ljava/util/Map;)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, La5/d;

    .line 140
    .line 141
    invoke-interface {v2}, La5/d;->a()Landroid/os/Bundle;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2, v3}, Lb3/q;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    iget-object v0, v0, Lb3/q;->b:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const/4 v2, 0x0

    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    new-array v0, v2, [Lr8/j;

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_7

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Ljava/util/Map$Entry;

    .line 191
    .line 192
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Ljava/lang/String;

    .line 197
    .line 198
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    new-instance v5, Lr8/j;

    .line 203
    .line 204
    invoke-direct {v5, v4, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    new-array v0, v2, [Lr8/j;

    .line 212
    .line 213
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, [Lr8/j;

    .line 218
    .line 219
    :goto_5
    array-length v1, v0

    .line 220
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, [Lr8/j;

    .line 225
    .line 226
    invoke-static {v0}, Li2/c;->i([Lr8/j;)Landroid/os/Bundle;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    return-object v0

    .line 231
    :pswitch_0
    iget-object v0, p0, Lc/f;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v0, Lo1/g;

    .line 234
    .line 235
    invoke-virtual {v0}, Lo1/g;->b()Ljava/util/Map;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Landroid/os/Bundle;

    .line 240
    .line 241
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_9

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Ljava/util/Map$Entry;

    .line 263
    .line 264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    check-cast v3, Ljava/lang/String;

    .line 269
    .line 270
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Ljava/util/List;

    .line 275
    .line 276
    instance-of v4, v2, Ljava/util/ArrayList;

    .line 277
    .line 278
    if-eqz v4, :cond_8

    .line 279
    .line 280
    check-cast v2, Ljava/util/ArrayList;

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    .line 287
    .line 288
    move-object v2, v4

    .line 289
    :goto_7
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_9
    return-object v1

    .line 294
    :pswitch_1
    iget-object v0, p0, Lc/f;->b:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v0, Lp4/x;

    .line 297
    .line 298
    invoke-virtual {v0}, Lp4/x;->O()Landroid/os/Bundle;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    return-object v0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lc/f;->b:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v0, Lj/j;

    .line 306
    .line 307
    :cond_a
    iget-object v1, v0, Lp4/n;->s:Lkb/a;

    .line 308
    .line 309
    iget-object v1, v1, Lkb/a;->b:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v1, Lp4/m;

    .line 312
    .line 313
    iget-object v1, v1, Lp4/m;->e:Lp4/x;

    .line 314
    .line 315
    invoke-static {v1}, Lp4/n;->k(Lp4/x;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_a

    .line 320
    .line 321
    iget-object v0, v0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 322
    .line 323
    sget-object v1, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Landroid/os/Bundle;

    .line 329
    .line 330
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 331
    .line 332
    .line 333
    return-object v0

    .line 334
    :pswitch_3
    iget-object v0, p0, Lc/f;->b:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Lp4/n;

    .line 337
    .line 338
    new-instance v1, Landroid/os/Bundle;

    .line 339
    .line 340
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 341
    .line 342
    .line 343
    iget-object v0, v0, Lc/o;->h:Lc/l;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    new-instance v2, Ljava/util/ArrayList;

    .line 349
    .line 350
    iget-object v3, v0, Lc/l;->b:Ljava/util/LinkedHashMap;

    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 357
    .line 358
    .line 359
    const-string v4, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 360
    .line 361
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    .line 363
    .line 364
    new-instance v2, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    check-cast v3, Ljava/util/Collection;

    .line 371
    .line 372
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    .line 374
    .line 375
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 376
    .line 377
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    .line 379
    .line 380
    new-instance v2, Ljava/util/ArrayList;

    .line 381
    .line 382
    iget-object v3, v0, Lc/l;->d:Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    .line 386
    .line 387
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 388
    .line 389
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 390
    .line 391
    .line 392
    new-instance v2, Landroid/os/Bundle;

    .line 393
    .line 394
    iget-object v0, v0, Lc/l;->g:Landroid/os/Bundle;

    .line 395
    .line 396
    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 397
    .line 398
    .line 399
    const-string v0, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 400
    .line 401
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 402
    .line 403
    .line 404
    return-object v1

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
