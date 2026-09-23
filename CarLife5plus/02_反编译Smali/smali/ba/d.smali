.class public abstract Lba/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {v0, v6}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    invoke-virtual {v0, v8}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/16 v8, 0x8

    .line 52
    .line 53
    new-array v9, v8, [Lm9/c;

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    aput-object v1, v9, v10

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    aput-object v2, v9, v1

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    aput-object v3, v9, v2

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    aput-object v4, v9, v3

    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    aput-object v5, v9, v4

    .line 69
    .line 70
    const/4 v5, 0x5

    .line 71
    aput-object v6, v9, v5

    .line 72
    .line 73
    const/4 v6, 0x6

    .line 74
    aput-object v7, v9, v6

    .line 75
    .line 76
    const/4 v7, 0x7

    .line 77
    aput-object v0, v9, v7

    .line 78
    .line 79
    invoke-static {v9}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lba/d;->a:Ljava/util/List;

    .line 84
    .line 85
    new-instance v9, Ljava/util/ArrayList;

    .line 86
    .line 87
    const/16 v11, 0xa

    .line 88
    .line 89
    invoke-static {v0, v11}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-eqz v12, :cond_0

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    check-cast v12, Lm9/c;

    .line 111
    .line 112
    invoke-static {v12}, Lc7/a;->w(Lm9/c;)Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    invoke-static {v12}, Lc7/a;->x(Lm9/c;)Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    new-instance v14, Lr8/j;

    .line 121
    .line 122
    invoke-direct {v14, v13, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v9}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lba/d;->b:Ljava/util/Map;

    .line 134
    .line 135
    sget-object v0, Lba/d;->a:Ljava/util/List;

    .line 136
    .line 137
    new-instance v9, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-static {v0, v11}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    if-eqz v12, :cond_1

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    check-cast v12, Lm9/c;

    .line 161
    .line 162
    invoke-static {v12}, Lc7/a;->x(Lm9/c;)Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    invoke-static {v12}, Lc7/a;->w(Lm9/c;)Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    new-instance v14, Lr8/j;

    .line 171
    .line 172
    invoke-direct {v14, v13, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    invoke-static {v9}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lba/d;->c:Ljava/util/Map;

    .line 184
    .line 185
    const/16 v0, 0x17

    .line 186
    .line 187
    new-array v0, v0, [Ljava/lang/Class;

    .line 188
    .line 189
    const-class v9, Lf9/a;

    .line 190
    .line 191
    aput-object v9, v0, v10

    .line 192
    .line 193
    const-class v9, Lf9/k;

    .line 194
    .line 195
    aput-object v9, v0, v1

    .line 196
    .line 197
    const-class v1, Lf9/n;

    .line 198
    .line 199
    aput-object v1, v0, v2

    .line 200
    .line 201
    const-class v1, Lf9/o;

    .line 202
    .line 203
    aput-object v1, v0, v3

    .line 204
    .line 205
    const-class v1, Lf9/p;

    .line 206
    .line 207
    aput-object v1, v0, v4

    .line 208
    .line 209
    const-class v1, Lf9/q;

    .line 210
    .line 211
    aput-object v1, v0, v5

    .line 212
    .line 213
    const-class v1, Lf9/r;

    .line 214
    .line 215
    aput-object v1, v0, v6

    .line 216
    .line 217
    const-class v1, Lf9/s;

    .line 218
    .line 219
    aput-object v1, v0, v7

    .line 220
    .line 221
    const-class v1, Lf9/t;

    .line 222
    .line 223
    aput-object v1, v0, v8

    .line 224
    .line 225
    const-class v1, Lf9/u;

    .line 226
    .line 227
    const/16 v2, 0x9

    .line 228
    .line 229
    aput-object v1, v0, v2

    .line 230
    .line 231
    const-class v1, Lf9/b;

    .line 232
    .line 233
    aput-object v1, v0, v11

    .line 234
    .line 235
    const-class v1, Lf9/c;

    .line 236
    .line 237
    const/16 v2, 0xb

    .line 238
    .line 239
    aput-object v1, v0, v2

    .line 240
    .line 241
    const/16 v1, 0xc

    .line 242
    .line 243
    const-class v2, Lp9/e;

    .line 244
    .line 245
    aput-object v2, v0, v1

    .line 246
    .line 247
    const-class v1, Lf9/d;

    .line 248
    .line 249
    const/16 v3, 0xd

    .line 250
    .line 251
    aput-object v1, v0, v3

    .line 252
    .line 253
    const-class v1, Lf9/e;

    .line 254
    .line 255
    const/16 v3, 0xe

    .line 256
    .line 257
    aput-object v1, v0, v3

    .line 258
    .line 259
    const-class v1, Lf9/f;

    .line 260
    .line 261
    const/16 v3, 0xf

    .line 262
    .line 263
    aput-object v1, v0, v3

    .line 264
    .line 265
    const-class v1, Lf9/g;

    .line 266
    .line 267
    const/16 v3, 0x10

    .line 268
    .line 269
    aput-object v1, v0, v3

    .line 270
    .line 271
    const-class v1, Lf9/h;

    .line 272
    .line 273
    const/16 v3, 0x11

    .line 274
    .line 275
    aput-object v1, v0, v3

    .line 276
    .line 277
    const-class v1, Lf9/i;

    .line 278
    .line 279
    const/16 v3, 0x12

    .line 280
    .line 281
    aput-object v1, v0, v3

    .line 282
    .line 283
    const-class v1, Lf9/j;

    .line 284
    .line 285
    const/16 v3, 0x13

    .line 286
    .line 287
    aput-object v1, v0, v3

    .line 288
    .line 289
    const-class v1, Lf9/l;

    .line 290
    .line 291
    const/16 v3, 0x14

    .line 292
    .line 293
    aput-object v1, v0, v3

    .line 294
    .line 295
    const-class v1, Lf9/m;

    .line 296
    .line 297
    const/16 v3, 0x15

    .line 298
    .line 299
    aput-object v1, v0, v3

    .line 300
    .line 301
    const/16 v1, 0x16

    .line 302
    .line 303
    aput-object v2, v0, v1

    .line 304
    .line 305
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-static {v0, v11}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .line 317
    .line 318
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_3

    .line 327
    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    add-int/lit8 v3, v10, 0x1

    .line 333
    .line 334
    if-ltz v10, :cond_2

    .line 335
    .line 336
    check-cast v2, Ljava/lang/Class;

    .line 337
    .line 338
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    new-instance v5, Lr8/j;

    .line 343
    .line 344
    invoke-direct {v5, v2, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move v10, v3

    .line 351
    goto :goto_2

    .line 352
    :cond_2
    invoke-static {}, Lp9/x1;->L()V

    .line 353
    .line 354
    .line 355
    const/4 v0, 0x0

    .line 356
    throw v0

    .line 357
    :cond_3
    invoke-static {v1}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    sput-object v0, Lba/d;->d:Ljava/util/Map;

    .line 362
    .line 363
    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lua/b;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Lua/b;->d(Lua/e;)Lua/b;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_1
    new-instance v0, Lua/c;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p0, Lua/b;

    .line 74
    .line 75
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 80
    .line 81
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p0, v1, v0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 86
    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_2
    :goto_0
    new-instance v0, Lua/c;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v0, p0}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance p0, Lua/b;

    .line 99
    .line 100
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 105
    .line 106
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lp9/x1;->O(Lua/e;)Lua/c;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-direct {p0, v1, v0, v2}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "Can\'t compute ClassId for array type: "

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "Can\'t compute ClassId for primitive type: "

    .line 144
    .line 145
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0
.end method

.method public static final b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sparse-switch v1, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string v1, "short"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string p0, "S"

    .line 33
    .line 34
    return-object p0

    .line 35
    :sswitch_1
    const-string v1, "float"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string p0, "F"

    .line 44
    .line 45
    return-object p0

    .line 46
    :sswitch_2
    const-string v1, "boolean"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string p0, "Z"

    .line 55
    .line 56
    return-object p0

    .line 57
    :sswitch_3
    const-string v1, "void"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    const-string p0, "V"

    .line 66
    .line 67
    return-object p0

    .line 68
    :sswitch_4
    const-string v1, "long"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    const-string p0, "J"

    .line 77
    .line 78
    return-object p0

    .line 79
    :sswitch_5
    const-string v1, "char"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    const-string p0, "C"

    .line 88
    .line 89
    return-object p0

    .line 90
    :sswitch_6
    const-string v1, "byte"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    const-string p0, "B"

    .line 99
    .line 100
    return-object p0

    .line 101
    :sswitch_7
    const-string v1, "int"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    .line 109
    const-string p0, "I"

    .line 110
    .line 111
    return-object p0

    .line 112
    :sswitch_8
    const-string v1, "double"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    .line 120
    const-string p0, "D"

    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v2, "Unsupported primitive type: "

    .line 128
    .line 129
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/16 v1, 0x2f

    .line 148
    .line 149
    const/16 v2, 0x2e

    .line 150
    .line 151
    if-eqz v0, :cond_2

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0, v2, v1}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, "L"

    .line 165
    .line 166
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {p0, v2, v1}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const/16 p0, 0x3b

    .line 181
    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    nop

    .line 191
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final c(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    move-object v0, p0

    .line 14
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "getActualTypeArguments(...)"

    .line 27
    .line 28
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Ls8/l;->j0([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    sget-object v0, Lba/c;->b:Lba/c;

    .line 37
    .line 38
    invoke-static {p0, v0}, Lwb/l;->M(Ljava/lang/Object;Lf9/k;)Lwb/j;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v0, Lba/c;->c:Lba/c;

    .line 43
    .line 44
    new-instance v1, Lwb/i;

    .line 45
    .line 46
    sget-object v2, Lwb/n;->i:Lwb/n;

    .line 47
    .line 48
    invoke-direct {v1, p0, v0, v2}, Lwb/i;-><init>(Lwb/j;Lf9/k;Lf9/k;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static final d(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "getSystemClassLoader(...)"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object p0
.end method
