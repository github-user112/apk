.class public final Lta/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lra/f;


# static fields
.field public static final d:Ljava/util/List;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    .line 1
    const/16 v0, 0x6b

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x6f

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x74

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x6c

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x69

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/16 v5, 0x6e

    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x6

    .line 38
    new-array v6, v6, [Ljava/lang/Character;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    aput-object v0, v6, v7

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v1, v6, v0

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    aput-object v2, v6, v0

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    aput-object v3, v6, v0

    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    aput-object v4, v6, v0

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    aput-object v5, v6, v0

    .line 57
    .line 58
    invoke-static {v6}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/4 v11, 0x0

    .line 63
    const/16 v12, 0x3e

    .line 64
    .line 65
    const-string v8, ""

    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    invoke-static/range {v7 .. v12}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "/Any"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v1, "/Nothing"

    .line 80
    .line 81
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v1, "/Unit"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v1, "/Throwable"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const-string v1, "/Number"

    .line 98
    .line 99
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-string v1, "/Byte"

    .line 104
    .line 105
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-string v1, "/Double"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const-string v1, "/Float"

    .line 116
    .line 117
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    const-string v1, "/Int"

    .line 122
    .line 123
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    const-string v1, "/Long"

    .line 128
    .line 129
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    const-string v1, "/Short"

    .line 134
    .line 135
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    const-string v1, "/Boolean"

    .line 140
    .line 141
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    const-string v1, "/Char"

    .line 146
    .line 147
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    const-string v1, "/CharSequence"

    .line 152
    .line 153
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    const-string v1, "/String"

    .line 158
    .line 159
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    const-string v1, "/Comparable"

    .line 164
    .line 165
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v17

    .line 169
    const-string v1, "/Enum"

    .line 170
    .line 171
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v18

    .line 175
    const-string v1, "/Array"

    .line 176
    .line 177
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v19

    .line 181
    const-string v1, "/ByteArray"

    .line 182
    .line 183
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v20

    .line 187
    const-string v1, "/DoubleArray"

    .line 188
    .line 189
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v21

    .line 193
    const-string v1, "/FloatArray"

    .line 194
    .line 195
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v22

    .line 199
    const-string v1, "/IntArray"

    .line 200
    .line 201
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v23

    .line 205
    const-string v1, "/LongArray"

    .line 206
    .line 207
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v24

    .line 211
    const-string v1, "/ShortArray"

    .line 212
    .line 213
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v25

    .line 217
    const-string v1, "/BooleanArray"

    .line 218
    .line 219
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v26

    .line 223
    const-string v1, "/CharArray"

    .line 224
    .line 225
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v27

    .line 229
    const-string v1, "/Cloneable"

    .line 230
    .line 231
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v28

    .line 235
    const-string v1, "/Annotation"

    .line 236
    .line 237
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v29

    .line 241
    const-string v1, "/collections/Iterable"

    .line 242
    .line 243
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v30

    .line 247
    const-string v1, "/collections/MutableIterable"

    .line 248
    .line 249
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v31

    .line 253
    const-string v1, "/collections/Collection"

    .line 254
    .line 255
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v32

    .line 259
    const-string v1, "/collections/MutableCollection"

    .line 260
    .line 261
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v33

    .line 265
    const-string v1, "/collections/List"

    .line 266
    .line 267
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v34

    .line 271
    const-string v1, "/collections/MutableList"

    .line 272
    .line 273
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v35

    .line 277
    const-string v1, "/collections/Set"

    .line 278
    .line 279
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v36

    .line 283
    const-string v1, "/collections/MutableSet"

    .line 284
    .line 285
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v37

    .line 289
    const-string v1, "/collections/Map"

    .line 290
    .line 291
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v38

    .line 295
    const-string v1, "/collections/MutableMap"

    .line 296
    .line 297
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v39

    .line 301
    const-string v1, "/collections/Map.Entry"

    .line 302
    .line 303
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v40

    .line 307
    const-string v1, "/collections/MutableMap.MutableEntry"

    .line 308
    .line 309
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v41

    .line 313
    const-string v1, "/collections/Iterator"

    .line 314
    .line 315
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v42

    .line 319
    const-string v1, "/collections/MutableIterator"

    .line 320
    .line 321
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v43

    .line 325
    const-string v1, "/collections/ListIterator"

    .line 326
    .line 327
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v44

    .line 331
    const-string v1, "/collections/MutableListIterator"

    .line 332
    .line 333
    invoke-static {v0, v1}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v45

    .line 337
    filled-new-array/range {v2 .. v45}, [Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    sput-object v0, Lta/f;->d:Ljava/util/List;

    .line 346
    .line 347
    invoke-static {v0}, Ls8/p;->F0(Ljava/util/List;)Ls8/n;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    const/16 v1, 0xa

    .line 352
    .line 353
    invoke-static {v0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    invoke-static {v1}, Ls8/c0;->H(I)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    const/16 v2, 0x10

    .line 362
    .line 363
    if-ge v1, v2, :cond_0

    .line 364
    .line 365
    const/16 v1, 0x10

    .line 366
    .line 367
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 368
    .line 369
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ls8/n;->iterator()Ljava/util/Iterator;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    :goto_0
    move-object v1, v0

    .line 377
    check-cast v1, Ls8/a0;

    .line 378
    .line 379
    iget-object v3, v1, Ls8/a0;->b:Ljava/util/Iterator;

    .line 380
    .line 381
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_1

    .line 386
    .line 387
    invoke-virtual {v1}, Ls8/a0;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Ls8/z;

    .line 392
    .line 393
    iget-object v3, v1, Ls8/z;->b:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v3, Ljava/lang/String;

    .line 396
    .line 397
    iget v1, v1, Ls8/z;->a:I

    .line 398
    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsa/j;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "strings"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lsa/j;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    iget-object p1, p1, Lsa/j;->b:Ljava/util/List;

    .line 22
    .line 23
    const-string v1, "getRecordList(...)"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lsa/i;

    .line 55
    .line 56
    iget v3, v2, Lsa/i;->c:I

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_1
    if-ge v4, v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lta/f;->a:[Ljava/lang/String;

    .line 74
    .line 75
    iput-object v0, p0, Lta/f;->b:Ljava/util/Set;

    .line 76
    .line 77
    iput-object v1, p0, Lta/f;->c:Ljava/util/ArrayList;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lta/f;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final f(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lta/f;->b:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lta/f;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsa/i;

    .line 8
    .line 9
    iget v1, v0, Lsa/i;->b:I

    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x4

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x4

    .line 15
    if-ne v2, v4, :cond_2

    .line 16
    .line 17
    iget-object p1, v0, Lsa/i;->e:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v1, p1, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    check-cast p1, Lva/d;

    .line 27
    .line 28
    invoke-virtual {p1}, Lva/d;->t()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lva/d;->n()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iput-object v1, v0, Lsa/i;->e:Ljava/lang/Object;

    .line 39
    .line 40
    :cond_1
    move-object p1, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    and-int/2addr v1, v3

    .line 43
    if-ne v1, v3, :cond_3

    .line 44
    .line 45
    sget-object v1, Lta/f;->d:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget v4, v0, Lsa/i;->d:I

    .line 52
    .line 53
    if-ltz v4, :cond_3

    .line 54
    .line 55
    if-ge v4, v2, :cond_3

    .line 56
    .line 57
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lta/f;->a:[Ljava/lang/String;

    .line 65
    .line 66
    aget-object p1, v1, p1

    .line 67
    .line 68
    :goto_0
    iget-object v1, v0, Lsa/i;->g:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const-string v2, "substring(...)"

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x1

    .line 78
    if-lt v1, v3, :cond_4

    .line 79
    .line 80
    iget-object v1, v0, Lsa/i;->g:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-ltz v7, :cond_4

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-gt v7, v8, :cond_4

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-gt v7, v8, :cond_4

    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object v1, v0, Lsa/i;->i:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-lt v1, v3, :cond_5

    .line 145
    .line 146
    iget-object v1, v0, Lsa/i;->i:Ljava/util/List;

    .line 147
    .line 148
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/lang/Integer;

    .line 156
    .line 157
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    int-to-char v4, v4

    .line 171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    int-to-char v1, v1

    .line 176
    invoke-static {p1, v4, v1}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :cond_5
    iget-object v0, v0, Lsa/i;->f:Lsa/h;

    .line 181
    .line 182
    if-nez v0, :cond_6

    .line 183
    .line 184
    sget-object v0, Lsa/h;->b:Lsa/h;

    .line 185
    .line 186
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_a

    .line 191
    .line 192
    const/16 v1, 0x2e

    .line 193
    .line 194
    const/16 v4, 0x24

    .line 195
    .line 196
    if-eq v0, v5, :cond_9

    .line 197
    .line 198
    if-ne v0, v3, :cond_8

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-lt v0, v3, :cond_7

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    sub-int/2addr v0, v5

    .line 211
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_7
    invoke-static {p1, v4, v1}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    goto :goto_1

    .line 223
    :cond_8
    new-instance p1, Lac/p;

    .line 224
    .line 225
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :cond_9
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-static {p1, v4, v1}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    :cond_a
    :goto_1
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return-object p1
.end method
