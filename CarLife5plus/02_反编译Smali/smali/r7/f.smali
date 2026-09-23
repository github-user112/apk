.class public final Lr7/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lt7/e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    const-class v2, Lr7/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "\u663e\u793a\u8bbe\u7f6e"

    .line 9
    .line 10
    iput-object v0, p0, Lr7/f;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lr7/f;->b:I

    .line 14
    .line 15
    :try_start_0
    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "load(...)"

    .line 20
    .line 21
    invoke-static {v0, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v3, Lr7/e;->b:Lr7/e;

    .line 29
    .line 30
    new-instance v4, Lwb/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v4, v0, v3}, Lwb/b;-><init>(Ljava/util/Iterator;Lf9/k;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    move-object v0, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move-object v0, v3

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_1
    invoke-static {v0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x1

    .line 97
    const-string v6, "CarLife_Vehicle"

    .line 98
    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v7, "\u6a21\u5757\u52a0\u8f7d\u5931\u8d25: "

    .line 109
    .line 110
    invoke-static {v7, v3}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    new-array v7, v5, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v3, v7, v4

    .line 117
    .line 118
    invoke-virtual {v0, v6, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    move-object v0, v1

    .line 122
    :goto_2
    check-cast v0, Ljava/util/List;

    .line 123
    .line 124
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_5

    .line 138
    .line 139
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    move-object v9, v8

    .line 144
    check-cast v9, Lr7/g;

    .line 145
    .line 146
    invoke-interface {v9}, Lr7/g;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    if-nez v10, :cond_4

    .line 155
    .line 156
    new-instance v10, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_4
    check-cast v10, Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_7

    .line 188
    .line 189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    check-cast v8, Ljava/util/Map$Entry;

    .line 194
    .line 195
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Ljava/util/List;

    .line 200
    .line 201
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-le v9, v5, :cond_6

    .line 206
    .line 207
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_7
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_8

    .line 232
    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    move-object v7, v0

    .line 250
    check-cast v7, Ljava/util/List;

    .line 251
    .line 252
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 253
    .line 254
    sget-object v8, Lg9/y;->a:Lg9/z;

    .line 255
    .line 256
    invoke-virtual {v8, v2}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-interface {v2}, Lm9/c;->k()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget-object v11, Lr7/e;->c:Lr7/e;

    .line 265
    .line 266
    const/16 v12, 0x1f

    .line 267
    .line 268
    const/4 v8, 0x0

    .line 269
    const/4 v9, 0x0

    .line 270
    const/4 v10, 0x0

    .line 271
    invoke-static/range {v7 .. v12}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v2, " \u4e2d name \u91cd\u590d\uff1a\'"

    .line 284
    .line 285
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v2, "\'\uff0c\u6a21\u5757\uff1a"

    .line 292
    .line 293
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    new-array v3, v5, [Ljava/lang/Object;

    .line 304
    .line 305
    aput-object v2, v3, v4

    .line 306
    .line 307
    invoke-virtual {v0, v6, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_8
    move-object v1, v0

    .line 312
    :goto_5
    iput-object v1, p0, Lr7/f;->c:Ljava/util/List;

    .line 313
    .line 314
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr7/f;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lr7/g;

    .line 18
    .line 19
    invoke-interface {v1}, Lr7/g;->a()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final b(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->f(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c(ILf1/s;)V
    .locals 3

    .line 1
    const v0, 0x4781b9ff    # 66419.99f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    :goto_0
    or-int/2addr v0, p1

    .line 18
    and-int/lit8 v0, v0, 0x3

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    :goto_1
    iget-object v0, p0, Lr7/f;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lr7/g;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-interface {v1, v2, p2}, Lr7/g;->c(ILf1/s;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_3
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    new-instance v0, Lr7/c;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {v0, p0, p1, v1}, Lr7/c;-><init>(Lr7/f;II)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public final d()Lt7/h;
    .locals 1

    .line 1
    sget-object v0, Lt7/h;->c:Lt7/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/f;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    const/16 v0, 0x3e7

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lr7/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lt7/f;
    .locals 1

    .line 1
    sget-object v0, Lt7/f;->e:Lt7/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(ILf1/s;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    const v2, 0x5b8339fc

    .line 8
    .line 9
    .line 10
    invoke-virtual {v13, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v13, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x2

    .line 23
    :goto_0
    or-int/2addr v2, v1

    .line 24
    and-int/lit8 v2, v2, 0x3

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v13}, Lf1/s;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v13}, Lf1/s;->Q()V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_2
    :goto_1
    const v2, 0x6e3c21fe

    .line 41
    .line 42
    .line 43
    invoke-virtual {v13, v2}, Lf1/s;->W(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 51
    .line 52
    if-ne v2, v9, :cond_3

    .line 53
    .line 54
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v13, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    move-object v10, v2

    .line 64
    check-cast v10, Lf1/b1;

    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    invoke-virtual {v13, v11}, Lf1/s;->p(Z)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lr7/b;->a:Ln1/c;

    .line 71
    .line 72
    sget-object v3, Lr7/b;->b:Ln1/c;

    .line 73
    .line 74
    const v12, 0x4c5de2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13, v12}, Lf1/s;->W(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-ne v4, v9, :cond_4

    .line 85
    .line 86
    new-instance v4, Lj8/h;

    .line 87
    .line 88
    const/16 v5, 0x1a

    .line 89
    .line 90
    invoke-direct {v4, v10, v5}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    move-object v5, v4

    .line 97
    check-cast v5, Lf9/a;

    .line 98
    .line 99
    invoke-virtual {v13, v11}, Lf1/s;->p(Z)V

    .line 100
    .line 101
    .line 102
    const/16 v7, 0xdb6

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    move-object v6, v13

    .line 107
    invoke-static/range {v2 .. v8}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v13, v12}, Lf1/s;->W(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13}, Lf1/s;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-ne v3, v9, :cond_5

    .line 128
    .line 129
    new-instance v3, Lj8/h;

    .line 130
    .line 131
    const/16 v4, 0x1b

    .line 132
    .line 133
    invoke-direct {v3, v10, v4}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    check-cast v3, Lf9/a;

    .line 140
    .line 141
    invoke-virtual {v13, v11}, Lf1/s;->p(Z)V

    .line 142
    .line 143
    .line 144
    sget-object v8, Lr7/b;->d:Ln1/c;

    .line 145
    .line 146
    new-instance v4, Lr7/d;

    .line 147
    .line 148
    const/4 v5, 0x1

    .line 149
    invoke-direct {v4, v0, v5}, Lr7/d;-><init>(Lr7/f;I)V

    .line 150
    .line 151
    .line 152
    const v5, 0x7b7405a5

    .line 153
    .line 154
    .line 155
    invoke-static {v5, v4, v13}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    const v14, 0x180030

    .line 160
    .line 161
    .line 162
    const/16 v15, 0x3bc

    .line 163
    .line 164
    const-wide/16 v4, 0x0

    .line 165
    .line 166
    const/4 v6, 0x0

    .line 167
    const/4 v7, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    const/4 v10, 0x0

    .line 170
    const/4 v11, 0x0

    .line 171
    invoke-static/range {v2 .. v15}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 172
    .line 173
    .line 174
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    if-eqz v2, :cond_6

    .line 179
    .line 180
    new-instance v3, Lr7/c;

    .line 181
    .line 182
    const/4 v4, 0x1

    .line 183
    invoke-direct {v3, v0, v1, v4}, Lr7/c;-><init>(Lr7/f;II)V

    .line 184
    .line 185
    .line 186
    iput-object v3, v2, Lf1/w1;->d:Lf9/n;

    .line 187
    .line 188
    :cond_6
    return-void
.end method
