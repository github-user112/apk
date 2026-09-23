.class public final Ljb/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic j:[Lm9/u;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Lkb/f;

.field public final e:Lkb/f;

.field public final f:Lf1/e;

.field public final g:Lkb/j;

.field public final h:Lkb/j;

.field public final synthetic i:Ljb/q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Ljb/p;

    .line 4
    .line 5
    const-string v2, "functionNames"

    .line 6
    .line 7
    const-string v3, "getFunctionNames()Ljava/util/Set;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "variableNames"

    .line 20
    .line 21
    const-string v5, "getVariableNames()Ljava/util/Set;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lm9/u;

    .line 29
    .line 30
    aput-object v0, v2, v4

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    sput-object v2, Ljb/p;->j:[Lm9/u;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljb/q;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "functionList"

    .line 5
    .line 6
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "propertyList"

    .line 10
    .line 11
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "typeAliasList"

    .line 15
    .line 16
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 20
    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Lva/a;

    .line 42
    .line 43
    iget-object v3, p1, Ljb/q;->b:Lhb/k;

    .line 44
    .line 45
    iget-object v3, v3, Lhb/k;->b:Lra/f;

    .line 46
    .line 47
    check-cast v2, Lpa/a0;

    .line 48
    .line 49
    iget v2, v2, Lpa/a0;->f:I

    .line 50
    .line 51
    invoke-static {v3, v2}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v0}, Ljb/p;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Ljb/p;->a:Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 82
    .line 83
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v1, v0

    .line 103
    check-cast v1, Lva/a;

    .line 104
    .line 105
    iget-object v2, p1, Ljb/q;->b:Lhb/k;

    .line 106
    .line 107
    iget-object v2, v2, Lhb/k;->b:Lra/f;

    .line 108
    .line 109
    check-cast v1, Lpa/i0;

    .line 110
    .line 111
    iget v1, v1, Lpa/i0;->f:I

    .line 112
    .line 113
    invoke-static {v2, v1}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-static {p2}, Ljb/p;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Ljb/p;->b:Ljava/util/LinkedHashMap;

    .line 142
    .line 143
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 144
    .line 145
    iget-object p1, p1, Ljb/q;->b:Lhb/k;

    .line 146
    .line 147
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 148
    .line 149
    iget-object p1, p1, Lhb/i;->c:Lhb/j;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 155
    .line 156
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result p4

    .line 169
    if-eqz p4, :cond_5

    .line 170
    .line 171
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    move-object v0, p4

    .line 176
    check-cast v0, Lva/a;

    .line 177
    .line 178
    iget-object v1, p1, Ljb/q;->b:Lhb/k;

    .line 179
    .line 180
    iget-object v1, v1, Lhb/k;->b:Lra/f;

    .line 181
    .line 182
    check-cast v0, Lpa/u0;

    .line 183
    .line 184
    iget v0, v0, Lpa/u0;->e:I

    .line 185
    .line 186
    invoke-static {v1, v0}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-nez v1, :cond_4

    .line 195
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    invoke-static {p2}, Ljb/p;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Ljb/p;->c:Ljava/util/LinkedHashMap;

    .line 215
    .line 216
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 217
    .line 218
    iget-object p1, p1, Ljb/q;->b:Lhb/k;

    .line 219
    .line 220
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 221
    .line 222
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 223
    .line 224
    new-instance p2, Ljb/m;

    .line 225
    .line 226
    const/4 p3, 0x0

    .line 227
    invoke-direct {p2, p0, p3}, Ljb/m;-><init>(Ljb/p;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Lkb/l;->b(Lf9/k;)Lkb/f;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iput-object p1, p0, Ljb/p;->d:Lkb/f;

    .line 235
    .line 236
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 237
    .line 238
    iget-object p1, p1, Ljb/q;->b:Lhb/k;

    .line 239
    .line 240
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 241
    .line 242
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 243
    .line 244
    new-instance p2, Ljb/m;

    .line 245
    .line 246
    const/4 p3, 0x1

    .line 247
    invoke-direct {p2, p0, p3}, Ljb/m;-><init>(Ljb/p;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p2}, Lkb/l;->b(Lf9/k;)Lkb/f;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iput-object p1, p0, Ljb/p;->e:Lkb/f;

    .line 255
    .line 256
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 257
    .line 258
    iget-object p1, p1, Ljb/q;->b:Lhb/k;

    .line 259
    .line 260
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 261
    .line 262
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 263
    .line 264
    new-instance p2, Ljb/m;

    .line 265
    .line 266
    const/4 p3, 0x2

    .line 267
    invoke-direct {p2, p0, p3}, Ljb/m;-><init>(Ljb/p;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p2}, Lkb/l;->c(Lf9/k;)Lf1/e;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iput-object p1, p0, Ljb/p;->f:Lf1/e;

    .line 275
    .line 276
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 277
    .line 278
    iget-object p2, p1, Ljb/q;->b:Lhb/k;

    .line 279
    .line 280
    iget-object p2, p2, Lhb/k;->a:Lhb/i;

    .line 281
    .line 282
    iget-object p2, p2, Lhb/i;->a:Lkb/l;

    .line 283
    .line 284
    new-instance p3, Ljb/n;

    .line 285
    .line 286
    const/4 p4, 0x0

    .line 287
    invoke-direct {p3, p0, p1, p4}, Ljb/n;-><init>(Ljb/p;Ljb/q;I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    new-instance p1, Lkb/j;

    .line 294
    .line 295
    invoke-direct {p1, p2, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 296
    .line 297
    .line 298
    iput-object p1, p0, Ljb/p;->g:Lkb/j;

    .line 299
    .line 300
    iget-object p1, p0, Ljb/p;->i:Ljb/q;

    .line 301
    .line 302
    iget-object p2, p1, Ljb/q;->b:Lhb/k;

    .line 303
    .line 304
    iget-object p2, p2, Lhb/k;->a:Lhb/i;

    .line 305
    .line 306
    iget-object p2, p2, Lhb/i;->a:Lkb/l;

    .line 307
    .line 308
    new-instance p3, Ljb/n;

    .line 309
    .line 310
    const/4 p4, 0x1

    .line 311
    invoke-direct {p3, p0, p1, p4}, Ljb/n;-><init>(Ljb/p;Ljb/q;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    new-instance p1, Lkb/j;

    .line 318
    .line 319
    invoke-direct {p1, p2, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 320
    .line 321
    .line 322
    iput-object p1, p0, Ljb/p;->h:Lkb/j;

    .line 323
    .line 324
    return-void
.end method

.method public static a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ls8/c0;->H(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Iterable;

    .line 50
    .line 51
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/16 v5, 0xa

    .line 54
    .line 55
    invoke-static {v1, v5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lva/a;

    .line 77
    .line 78
    invoke-virtual {v5}, Lva/a;->a()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-static {v6}, Ld3/e;->h(I)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    add-int/2addr v7, v6

    .line 87
    const/16 v8, 0x1000

    .line 88
    .line 89
    if-le v7, v8, :cond_0

    .line 90
    .line 91
    const/16 v7, 0x1000

    .line 92
    .line 93
    :cond_0
    invoke-static {v3, v7}, Ld3/e;->s(Ljava/io/OutputStream;I)Ld3/e;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v7, v6}, Ld3/e;->J(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v7}, Lva/a;->d(Ld3/e;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ld3/e;->k()V

    .line 104
    .line 105
    .line 106
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    return-object v0
.end method
