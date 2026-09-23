.class public final Lia/j;
.super Ly9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lga/c;


# instance fields
.field public final g:Lba/a;

.field public final h:Lba/p;

.field public final i:Lv9/e;

.field public final j:Lba/a;

.field public final k:Lr8/o;

.field public final l:Lv9/f;

.field public final m:Lv9/x;

.field public final n:Ln/a;

.field public final o:Z

.field public final p:Lia/h;

.field public final q:Lia/o;

.field public final r:Lv9/l0;

.field public final s:Leb/i;

.field public final t:Lia/d0;

.field public final u:Lha/c;

.field public final v:Lkb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "notifyAll"

    .line 2
    .line 3
    const-string v6, "toString"

    .line 4
    .line 5
    const-string v0, "equals"

    .line 6
    .line 7
    const-string v1, "hashCode"

    .line 8
    .line 9
    const-string v2, "getClass"

    .line 10
    .line 11
    const-string v3, "wait"

    .line 12
    .line 13
    const-string v4, "notify"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lba/a;Lv9/k;Lba/p;Lv9/e;)V
    .locals 9

    .line 1
    const-string v0, "outerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "containingDeclaration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "jClass"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lba/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lha/a;

    .line 19
    .line 20
    iget-object v1, v0, Lha/a;->a:Lkb/o;

    .line 21
    .line 22
    invoke-virtual {p3}, Lba/p;->e()Lua/e;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v0, v0, Lha/a;->j:Laa/e;

    .line 27
    .line 28
    invoke-virtual {v0, p3}, Laa/e;->a(Lla/c;)Laa/g;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v1, p2, v2, v0}, Ly9/j;-><init>(Lkb/o;Lv9/k;Lua/e;Lv9/m0;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lia/j;->g:Lba/a;

    .line 36
    .line 37
    iput-object p3, p0, Lia/j;->h:Lba/p;

    .line 38
    .line 39
    iput-object p4, p0, Lia/j;->i:Lv9/e;

    .line 40
    .line 41
    const/4 p2, 0x4

    .line 42
    invoke-static {p1, p0, p3, p2}, Lg5/a;->z(Lba/a;Lv9/g;Lba/p;I)Lba/a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lia/j;->j:Lba/a;

    .line 47
    .line 48
    iget-object p1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lha/a;

    .line 51
    .line 52
    iget-object p2, p1, Lha/a;->a:Lkb/o;

    .line 53
    .line 54
    iget-object v0, p1, Lha/a;->g:Lfa/h;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v0, Lia/g;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v0, p0, v2}, Lia/g;-><init>(Lia/j;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lia/j;->k:Lr8/o;

    .line 70
    .line 71
    iget-object v0, p3, Lba/p;->a:Ljava/lang/Class;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    sget-object v2, Lv9/f;->e:Lv9/f;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    sget-object v2, Lv9/f;->b:Lv9/f;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    sget-object v2, Lv9/f;->c:Lv9/f;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    sget-object v2, Lv9/f;->a:Lv9/f;

    .line 101
    .line 102
    :goto_0
    iput-object v2, p0, Lia/j;->l:Lv9/f;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    sget-object v3, Lv9/x;->b:Lv9/x;

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    const/4 v5, 0x1

    .line 112
    if-nez v2, :cond_8

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    invoke-virtual {p3}, Lba/p;->h()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {p3}, Lba/p;->h()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_4

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    const/4 v6, 0x0

    .line 149
    goto :goto_2

    .line 150
    :cond_5
    :goto_1
    const/4 v6, 0x1

    .line 151
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    sget-object v8, Lv9/x;->a:Lv9/n0;

    .line 160
    .line 161
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    if-eqz v2, :cond_6

    .line 165
    .line 166
    sget-object v3, Lv9/x;->c:Lv9/x;

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    if-eqz v6, :cond_7

    .line 170
    .line 171
    sget-object v3, Lv9/x;->e:Lv9/x;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    if-nez v7, :cond_8

    .line 175
    .line 176
    sget-object v3, Lv9/x;->d:Lv9/x;

    .line 177
    .line 178
    :cond_8
    :goto_3
    iput-object v3, p0, Lia/j;->m:Lv9/x;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_9

    .line 189
    .line 190
    sget-object v2, Lv9/b1;->d:Lv9/b1;

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_9
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_a

    .line 198
    .line 199
    sget-object v2, Lv9/y0;->d:Lv9/y0;

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_a
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_c

    .line 207
    .line 208
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    sget-object v2, Lz9/c;->d:Lz9/c;

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_b
    sget-object v2, Lz9/b;->d:Lz9/b;

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_c
    sget-object v2, Lz9/a;->d:Lz9/a;

    .line 221
    .line 222
    :goto_4
    iput-object v2, p0, Lia/j;->n:Ln/a;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-eqz v2, :cond_d

    .line 229
    .line 230
    new-instance v3, Lba/p;

    .line 231
    .line 232
    invoke-direct {v3, v2}, Lba/p;-><init>(Ljava/lang/Class;)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_d
    const/4 v3, 0x0

    .line 237
    :goto_5
    if-eqz v3, :cond_e

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-nez v0, :cond_e

    .line 248
    .line 249
    const/4 v0, 0x1

    .line 250
    goto :goto_6

    .line 251
    :cond_e
    const/4 v0, 0x0

    .line 252
    :goto_6
    iput-boolean v0, p0, Lia/j;->o:Z

    .line 253
    .line 254
    new-instance v0, Lia/h;

    .line 255
    .line 256
    invoke-direct {v0, p0}, Lia/h;-><init>(Lia/j;)V

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Lia/j;->p:Lia/h;

    .line 260
    .line 261
    new-instance v0, Lia/o;

    .line 262
    .line 263
    if-eqz p4, :cond_f

    .line 264
    .line 265
    const/4 v4, 0x1

    .line 266
    :cond_f
    const/4 v5, 0x0

    .line 267
    move-object v2, p0

    .line 268
    move-object v3, p3

    .line 269
    invoke-direct/range {v0 .. v5}, Lia/o;-><init>(Lba/a;Lv9/e;Lba/p;ZLia/o;)V

    .line 270
    .line 271
    .line 272
    iput-object v0, v2, Lia/j;->q:Lia/o;

    .line 273
    .line 274
    sget-object p3, Lv9/l0;->d:Lv9/n0;

    .line 275
    .line 276
    iget-object p1, p1, Lha/a;->u:Lmb/k;

    .line 277
    .line 278
    check-cast p1, Lmb/l;

    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance p1, Lba/j;

    .line 284
    .line 285
    const/16 p4, 0xa

    .line 286
    .line 287
    invoke-direct {p1, p4, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    const-string p3, "storageManager"

    .line 294
    .line 295
    invoke-static {p2, p3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance p3, Lv9/l0;

    .line 299
    .line 300
    invoke-direct {p3, p0, p2, p1}, Lv9/l0;-><init>(Ly9/b;Lkb/o;Lf9/k;)V

    .line 301
    .line 302
    .line 303
    iput-object p3, v2, Lia/j;->r:Lv9/l0;

    .line 304
    .line 305
    new-instance p1, Leb/i;

    .line 306
    .line 307
    invoke-direct {p1, v0}, Leb/i;-><init>(Leb/o;)V

    .line 308
    .line 309
    .line 310
    iput-object p1, v2, Lia/j;->s:Leb/i;

    .line 311
    .line 312
    new-instance p1, Lia/d0;

    .line 313
    .line 314
    invoke-direct {p1, v1, v3, p0}, Lia/d0;-><init>(Lba/a;Lba/p;Lia/j;)V

    .line 315
    .line 316
    .line 317
    iput-object p1, v2, Lia/j;->t:Lia/d0;

    .line 318
    .line 319
    invoke-static {v1, v3}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    iput-object p1, v2, Lia/j;->u:Lha/c;

    .line 324
    .line 325
    new-instance p1, Lia/g;

    .line 326
    .line 327
    const/4 p3, 0x1

    .line 328
    invoke-direct {p1, p0, p3}, Lia/g;-><init>(Lia/j;I)V

    .line 329
    .line 330
    .line 331
    check-cast p2, Lkb/l;

    .line 332
    .line 333
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    new-instance p3, Lkb/j;

    .line 337
    .line 338
    invoke-direct {p3, p2, p1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 339
    .line 340
    .line 341
    iput-object p3, v2, Lia/j;->v:Lkb/j;

    .line 342
    .line 343
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final B0()Lia/o;
    .locals 1

    .line 1
    invoke-super {p0}, Ly9/b;->s0()Leb/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lia/o;

    .line 6
    .line 7
    return-object v0
.end method

.method public final E(Lmb/f;)Leb/o;
    .locals 2

    .line 1
    iget-object p1, p0, Lia/j;->r:Lv9/l0;

    .line 2
    .line 3
    iget-object v0, p1, Lv9/l0;->a:Ly9/b;

    .line 4
    .line 5
    invoke-static {v0}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lv9/l0;->c:Lkb/j;

    .line 9
    .line 10
    sget-object v0, Lv9/l0;->e:[Lm9/u;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    invoke-static {p1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Leb/o;

    .line 20
    .line 21
    check-cast p1, Lia/o;

    .line 22
    .line 23
    return-object p1
.end method

.method public final F()Ljava/util/Collection;
    .locals 11

    .line 1
    iget-object v0, p0, Lia/j;->m:Lv9/x;

    .line 2
    .line 3
    sget-object v1, Lv9/x;->c:Lv9/x;

    .line 4
    .line 5
    if-ne v0, v1, :cond_7

    .line 6
    .line 7
    sget-object v0, Llb/t0;->b:Llb/t0;

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v2, v4, v1}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lia/j;->h:Lba/p;

    .line 17
    .line 18
    iget-object v1, v1, Lba/p;->a:Ljava/lang/Class;

    .line 19
    .line 20
    const-string v3, "clazz"

    .line 21
    .line 22
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lg5/a;->b:Lba/a;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    const-class v3, Ljava/lang/Class;

    .line 30
    .line 31
    :try_start_0
    new-instance v5, Lba/a;

    .line 32
    .line 33
    const-string v6, "isSealed"

    .line 34
    .line 35
    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const-string v7, "getPermittedSubclasses"

    .line 40
    .line 41
    invoke-virtual {v3, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "isRecord"

    .line 46
    .line 47
    invoke-virtual {v3, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const-string v9, "getRecordComponents"

    .line 52
    .line 53
    invoke-virtual {v3, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const/4 v10, 0x0

    .line 58
    invoke-direct/range {v5 .. v10}, Lba/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    move-object v3, v5

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    new-instance v3, Lba/a;

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    move-object v5, v4

    .line 67
    move-object v6, v4

    .line 68
    move-object v7, v4

    .line 69
    invoke-direct/range {v3 .. v8}, Lba/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    sput-object v3, Lg5/a;->b:Lba/a;

    .line 73
    .line 74
    :cond_0
    iget-object v3, v3, Lba/a;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Ljava/lang/reflect/Method;

    .line 77
    .line 78
    if-nez v3, :cond_1

    .line 79
    .line 80
    move-object v1, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v3, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>"

    .line 87
    .line 88
    invoke-static {v1, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    check-cast v1, [Ljava/lang/Class;

    .line 92
    .line 93
    :goto_1
    if-eqz v1, :cond_3

    .line 94
    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .line 96
    .line 97
    array-length v5, v1

    .line 98
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    array-length v5, v1

    .line 102
    :goto_2
    if-ge v2, v5, :cond_2

    .line 103
    .line 104
    aget-object v6, v1, v2

    .line 105
    .line 106
    new-instance v7, Lba/r;

    .line 107
    .line 108
    invoke-direct {v7, v6}, Lba/r;-><init>(Ljava/lang/reflect/Type;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    invoke-static {v3}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    sget-object v1, Lwb/f;->a:Lwb/f;

    .line 123
    .line 124
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lba/r;

    .line 144
    .line 145
    iget-object v5, p0, Lia/j;->j:Lba/a;

    .line 146
    .line 147
    iget-object v5, v5, Lba/a;->e:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v5, La2/b;

    .line 150
    .line 151
    invoke-virtual {v5, v3, v0}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3}, Llb/w;->D0()Llb/k0;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-interface {v3}, Llb/k0;->k()Lv9/h;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    instance-of v5, v3, Lv9/e;

    .line 164
    .line 165
    if-eqz v5, :cond_5

    .line 166
    .line 167
    check-cast v3, Lv9/e;

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_5
    move-object v3, v4

    .line 171
    :goto_5
    if-eqz v3, :cond_4

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    new-instance v0, Lia/i;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v0}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :cond_7
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 188
    .line 189
    return-object v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lia/j;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final N()Ly9/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final O()Leb/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->t:Lia/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lea/o;
    .locals 3

    .line 1
    sget-object v0, Lv9/o;->a:Lea/o;

    .line 2
    .line 3
    iget-object v1, p0, Lia/j;->n:Ln/a;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lia/j;->h:Lba/p;

    .line 12
    .line 13
    iget-object v0, v0, Lba/p;->a:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v2, Lba/p;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lba/p;-><init>(Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-nez v2, :cond_1

    .line 29
    .line 30
    sget-object v0, Lea/p;->a:Lea/o;

    .line 31
    .line 32
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    invoke-static {v1}, Lg5/a;->Z(Ln/a;)Lea/o;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public final f()Lv9/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->l:Lv9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->u:Lha/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lv9/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->m:Lv9/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final m0()Leb/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->s:Leb/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o0()Lv9/r0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->v:Lkb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final s0()Leb/o;
    .locals 1

    .line 1
    invoke-super {p0}, Ly9/b;->s0()Leb/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lia/o;

    .line 6
    .line 7
    return-object v0
.end method

.method public final t()Llb/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->p:Lia/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Lazy Java class "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final w()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/j;->q:Lia/o;

    .line 2
    .line 3
    iget-object v0, v0, Lia/o;->q:Lkb/j;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    return-object v0
.end method

.method public final z0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
