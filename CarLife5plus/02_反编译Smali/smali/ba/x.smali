.class public abstract Lba/x;
.super Lba/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lla/b;
.implements Lla/c;


# virtual methods
.method public final a(Lua/c;)Lba/e;
    .locals 2

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v0, p1}, Li2/c;->n([Ljava/lang/annotation/Annotation;Lua/c;)Lba/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public abstract b()Ljava/lang/reflect/Member;
.end method

.method public final c()Lua/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lua/g;->a:Lua/e;

    .line 17
    .line 18
    return-object v0
.end method

.method public final d([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lba/b;->a:Lba/b;

    .line 8
    .line 9
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "member"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v3, Lba/b;->b:Landroid/support/v4/media/session/t;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v3, Lba/b;->b:Landroid/support/v4/media/session/t;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    const-string v5, "getParameters"

    .line 33
    .line 34
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-static {v3}, Lba/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v6, "java.lang.reflect.Parameter"

    .line 43
    .line 44
    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v6, Landroid/support/v4/media/session/t;

    .line 49
    .line 50
    const-string v7, "getName"

    .line 51
    .line 52
    invoke-virtual {v3, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v7, 0x3

    .line 57
    invoke-direct {v6, v7, v5, v3}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    new-instance v6, Landroid/support/v4/media/session/t;

    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    invoke-direct {v6, v3, v4, v4}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    sput-object v6, Lba/b;->b:Landroid/support/v4/media/session/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    move-object v3, v6

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :cond_0
    :goto_1
    monitor-exit v1

    .line 74
    goto :goto_3

    .line 75
    :goto_2
    monitor-exit v1

    .line 76
    throw p1

    .line 77
    :cond_1
    :goto_3
    iget-object v1, v3, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Ljava/lang/reflect/Method;

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    :goto_4
    move-object v2, v4

    .line 85
    goto :goto_6

    .line 86
    :cond_2
    iget-object v3, v3, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Ljava/lang/reflect/Method;

    .line 89
    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_3
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "null cannot be cast to non-null type kotlin.Array<*>"

    .line 98
    .line 99
    invoke-static {v1, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    check-cast v1, [Ljava/lang/Object;

    .line 103
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    array-length v6, v1

    .line 107
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .line 109
    .line 110
    array-length v6, v1

    .line 111
    const/4 v7, 0x0

    .line 112
    :goto_5
    if-ge v7, v6, :cond_4

    .line 113
    .line 114
    aget-object v8, v1, v7

    .line 115
    .line 116
    invoke-virtual {v3, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const-string v9, "null cannot be cast to non-null type kotlin.String"

    .line 121
    .line 122
    invoke-static {v8, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    check-cast v8, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    array-length v3, p1

    .line 140
    sub-int/2addr v1, v3

    .line 141
    goto :goto_7

    .line 142
    :cond_5
    const/4 v1, 0x0

    .line 143
    :goto_7
    array-length v3, p1

    .line 144
    const/4 v6, 0x0

    .line 145
    :goto_8
    if-ge v6, v3, :cond_d

    .line 146
    .line 147
    aget-object v7, p1, v6

    .line 148
    .line 149
    const-string v8, "type"

    .line 150
    .line 151
    invoke-static {v7, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    instance-of v8, v7, Ljava/lang/Class;

    .line 155
    .line 156
    if-eqz v8, :cond_6

    .line 157
    .line 158
    move-object v9, v7

    .line 159
    check-cast v9, Ljava/lang/Class;

    .line 160
    .line 161
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-eqz v10, :cond_6

    .line 166
    .line 167
    new-instance v7, Lba/a0;

    .line 168
    .line 169
    invoke-direct {v7, v9}, Lba/a0;-><init>(Ljava/lang/Class;)V

    .line 170
    .line 171
    .line 172
    goto :goto_b

    .line 173
    :cond_6
    instance-of v9, v7, Ljava/lang/reflect/GenericArrayType;

    .line 174
    .line 175
    if-nez v9, :cond_9

    .line 176
    .line 177
    if-eqz v8, :cond_7

    .line 178
    .line 179
    move-object v8, v7

    .line 180
    check-cast v8, Ljava/lang/Class;

    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-eqz v8, :cond_7

    .line 187
    .line 188
    goto :goto_a

    .line 189
    :cond_7
    instance-of v8, v7, Ljava/lang/reflect/WildcardType;

    .line 190
    .line 191
    if-eqz v8, :cond_8

    .line 192
    .line 193
    new-instance v8, Lba/f0;

    .line 194
    .line 195
    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 196
    .line 197
    invoke-direct {v8, v7}, Lba/f0;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 198
    .line 199
    .line 200
    :goto_9
    move-object v7, v8

    .line 201
    goto :goto_b

    .line 202
    :cond_8
    new-instance v8, Lba/r;

    .line 203
    .line 204
    invoke-direct {v8, v7}, Lba/r;-><init>(Ljava/lang/reflect/Type;)V

    .line 205
    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_9
    :goto_a
    new-instance v8, Lba/i;

    .line 209
    .line 210
    invoke-direct {v8, v7}, Lba/i;-><init>(Ljava/lang/reflect/Type;)V

    .line 211
    .line 212
    .line 213
    goto :goto_9

    .line 214
    :goto_b
    if-eqz v2, :cond_b

    .line 215
    .line 216
    add-int v8, v6, v1

    .line 217
    .line 218
    invoke-static {v8, v2}, Ls8/p;->f0(ILjava/util/List;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    check-cast v8, Ljava/lang/String;

    .line 223
    .line 224
    if-eqz v8, :cond_a

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string p3, "No parameter with index "

    .line 232
    .line 233
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const/16 p3, 0x2b

    .line 240
    .line 241
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p3, " (name="

    .line 248
    .line 249
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lba/x;->c()Lua/e;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string p3, " type="

    .line 260
    .line 261
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string p3, ") in "

    .line 268
    .line 269
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p1

    .line 287
    :cond_b
    move-object v8, v4

    .line 288
    :goto_c
    if-eqz p3, :cond_c

    .line 289
    .line 290
    array-length v9, p1

    .line 291
    const/4 v10, 0x1

    .line 292
    sub-int/2addr v9, v10

    .line 293
    if-ne v6, v9, :cond_c

    .line 294
    .line 295
    goto :goto_d

    .line 296
    :cond_c
    const/4 v10, 0x0

    .line 297
    :goto_d
    new-instance v9, Lba/e0;

    .line 298
    .line 299
    aget-object v11, p2, v6

    .line 300
    .line 301
    invoke-direct {v9, v7, v11, v8, v10}, Lba/e0;-><init>(Lba/c0;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    add-int/lit8 v6, v6, 0x1

    .line 308
    .line 309
    goto/16 :goto_8

    .line 310
    .line 311
    :cond_d
    return-object v0
.end method

.method public final e()Ln/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v0, Lv9/b1;->d:Lv9/b1;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget-object v0, Lv9/y0;->d:Lv9/y0;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lz9/c;->d:Lz9/c;

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    sget-object v0, Lz9/b;->d:Lz9/b;

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_3
    sget-object v0, Lz9/a;->d:Lz9/a;

    .line 46
    .line 47
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lba/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast p1, Lba/x;

    .line 10
    .line 11
    invoke-virtual {p1}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final getAnnotations()Ljava/util/Collection;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Li2/c;->s([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 24
    .line 25
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ": "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lba/x;->b()Ljava/lang/reflect/Member;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
