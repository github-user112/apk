.class public final Lia/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lga/g;


# static fields
.field public static final synthetic h:[Lm9/u;


# instance fields
.field public final a:Lba/a;

.field public final b:Lba/e;

.field public final c:Lkb/i;

.field public final d:Lkb/j;

.field public final e:Laa/g;

.field public final f:Lkb/j;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lia/f;

    .line 4
    .line 5
    const-string v2, "fqName"

    .line 6
    .line 7
    const-string v3, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

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
    const-string v3, "type"

    .line 20
    .line 21
    const-string v5, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v5, "allValueArguments"

    .line 28
    .line 29
    const-string v6, "getAllValueArguments()Ljava/util/Map;"

    .line 30
    .line 31
    invoke-static {v1, v5, v6, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x3

    .line 36
    new-array v2, v2, [Lm9/u;

    .line 37
    .line 38
    aput-object v0, v2, v4

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object v3, v2, v0

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    sput-object v2, Lia/f;->h:[Lm9/u;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Lba/a;Lba/e;Z)V
    .locals 4

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "javaAnnotation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lia/f;->a:Lba/a;

    .line 15
    .line 16
    iput-object p2, p0, Lia/f;->b:Lba/e;

    .line 17
    .line 18
    iget-object p1, p1, Lba/a;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lha/a;

    .line 21
    .line 22
    iget-object v0, p1, Lha/a;->a:Lkb/o;

    .line 23
    .line 24
    new-instance v1, Lia/e;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, Lia/e;-><init>(Lia/f;I)V

    .line 28
    .line 29
    .line 30
    move-object v2, v0

    .line 31
    check-cast v2, Lkb/l;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v3, Lkb/i;

    .line 37
    .line 38
    invoke-direct {v3, v2, v1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lia/f;->c:Lkb/i;

    .line 42
    .line 43
    new-instance v1, Lia/e;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v1, p0, v2}, Lia/e;-><init>(Lia/f;I)V

    .line 47
    .line 48
    .line 49
    move-object v2, v0

    .line 50
    check-cast v2, Lkb/l;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v3, Lkb/j;

    .line 56
    .line 57
    invoke-direct {v3, v2, v1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 58
    .line 59
    .line 60
    iput-object v3, p0, Lia/f;->d:Lkb/j;

    .line 61
    .line 62
    iget-object p1, p1, Lha/a;->j:Laa/e;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Laa/e;->a(Lla/c;)Laa/g;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lia/f;->e:Laa/g;

    .line 69
    .line 70
    new-instance p1, Lia/e;

    .line 71
    .line 72
    const/4 p2, 0x2

    .line 73
    invoke-direct {p1, p0, p2}, Lia/e;-><init>(Lia/f;I)V

    .line 74
    .line 75
    .line 76
    check-cast v0, Lkb/l;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance p2, Lkb/j;

    .line 82
    .line 83
    invoke-direct {p2, v0, p1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lia/f;->f:Lkb/j;

    .line 87
    .line 88
    iput-boolean p3, p0, Lia/f;->g:Z

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final a()Lua/c;
    .locals 3

    .line 1
    sget-object v0, Lia/f;->h:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    iget-object v2, p0, Lia/f;->c:Lkb/i;

    .line 9
    .line 10
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "p"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lkb/i;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lua/c;

    .line 23
    .line 24
    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 2

    .line 1
    sget-object v0, Lia/f;->h:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lia/f;->f:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    return-object v0
.end method

.method public final c(Lla/a;)Lza/g;
    .locals 6

    .line 1
    instance-of v0, p1, Lba/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lba/w;

    .line 7
    .line 8
    iget-object p1, p1, Lba/w;->b:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1, v1}, Lza/h;->b(Ljava/lang/Object;Ly9/a0;)Lza/g;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    instance-of v0, p1, Lba/u;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    check-cast p1, Lba/u;

    .line 20
    .line 21
    iget-object p1, p1, Lba/u;->b:Ljava/lang/Enum;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Lza/i;

    .line 54
    .line 55
    invoke-direct {v1, v0, p1}, Lza/i;-><init>(Lua/b;Lua/e;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_2
    instance-of v0, p1, Lba/h;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Lia/f;->a:Lba/a;

    .line 63
    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    check-cast p1, Lba/h;

    .line 67
    .line 68
    move-object v0, p1

    .line 69
    check-cast v0, Lba/f;

    .line 70
    .line 71
    iget-object v0, v0, Lba/f;->a:Lua/e;

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    sget-object v0, Lea/y;->b:Lua/e;

    .line 76
    .line 77
    :cond_3
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lba/h;->a()Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v4, Lia/f;->h:[Lm9/u;

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    aget-object v4, v4, v5

    .line 88
    .line 89
    iget-object v5, p0, Lia/f;->d:Lkb/j;

    .line 90
    .line 91
    invoke-static {v5, v4}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Llb/a0;

    .line 96
    .line 97
    invoke-static {v4}, Llb/c;->j(Llb/w;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :cond_4
    invoke-static {p0}, Lbb/e;->d(Lw9/b;)Lv9/e;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v4}, Lc7/a;->s(Lua/e;Lv9/e;)Ly9/r0;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    check-cast v0, Ly9/s0;

    .line 119
    .line 120
    invoke-virtual {v0}, Ly9/s0;->getType()Llb/w;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    :cond_5
    iget-object v0, v3, Lba/a;->b:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lha/a;

    .line 129
    .line 130
    iget-object v0, v0, Lha/a;->o:Lv9/y;

    .line 131
    .line 132
    invoke-interface {v0}, Lv9/y;->j()Ls9/i;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v3, Lnb/k;->D:Lnb/k;

    .line 137
    .line 138
    new-array v2, v2, [Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v3, v2}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v2}, Ls9/i;->h(Llb/x0;)Llb/a0;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 149
    .line 150
    const/16 v3, 0xa

    .line 151
    .line 152
    invoke-static {p1, v3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_8

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Lla/a;

    .line 174
    .line 175
    invoke-virtual {p0, v3}, Lia/f;->c(Lla/a;)Lza/g;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-nez v3, :cond_7

    .line 180
    .line 181
    new-instance v3, Lza/u;

    .line 182
    .line 183
    invoke-direct {v3, v1}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    new-instance p1, Lza/x;

    .line 191
    .line 192
    invoke-direct {p1, v2, v0}, Lza/x;-><init>(Ljava/util/List;Llb/w;)V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_9
    instance-of v0, p1, Lba/g;

    .line 197
    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    check-cast p1, Lba/g;

    .line 201
    .line 202
    new-instance v0, Lba/e;

    .line 203
    .line 204
    iget-object p1, p1, Lba/g;->b:Ljava/lang/annotation/Annotation;

    .line 205
    .line 206
    invoke-direct {v0, p1}, Lba/e;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Lza/a;

    .line 210
    .line 211
    new-instance v1, Lia/f;

    .line 212
    .line 213
    invoke-direct {v1, v3, v0, v2}, Lia/f;-><init>(Lba/a;Lba/e;Z)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p1, v1}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    return-object p1

    .line 220
    :cond_a
    instance-of v0, p1, Lba/q;

    .line 221
    .line 222
    if-eqz v0, :cond_13

    .line 223
    .line 224
    check-cast p1, Lba/q;

    .line 225
    .line 226
    iget-object p1, p1, Lba/q;->b:Ljava/lang/Class;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    new-instance v0, Lba/a0;

    .line 235
    .line 236
    invoke-direct {v0, p1}, Lba/a0;-><init>(Ljava/lang/Class;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_b
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 241
    .line 242
    if-nez v0, :cond_e

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_c

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_c
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    .line 252
    .line 253
    if-eqz v0, :cond_d

    .line 254
    .line 255
    new-instance v0, Lba/f0;

    .line 256
    .line 257
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 258
    .line 259
    invoke-direct {v0, p1}, Lba/f0;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_d
    new-instance v0, Lba/r;

    .line 264
    .line 265
    invoke-direct {v0, p1}, Lba/r;-><init>(Ljava/lang/reflect/Type;)V

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_e
    :goto_2
    new-instance v0, Lba/i;

    .line 270
    .line 271
    invoke-direct {v0, p1}, Lba/i;-><init>(Ljava/lang/reflect/Type;)V

    .line 272
    .line 273
    .line 274
    :goto_3
    iget-object p1, v3, Lba/a;->e:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p1, La2/b;

    .line 277
    .line 278
    sget-object v3, Llb/t0;->b:Llb/t0;

    .line 279
    .line 280
    const/4 v4, 0x7

    .line 281
    invoke-static {v3, v2, v1, v4}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {p1, v0, v3}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {p1}, Llb/c;->j(Llb/w;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_f

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_f
    move-object v0, p1

    .line 297
    const/4 v3, 0x0

    .line 298
    :goto_4
    invoke-static {v0}, Ls9/i;->z(Llb/w;)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_10

    .line 303
    .line 304
    invoke-virtual {v0}, Llb/w;->B0()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v0}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Llb/n0;

    .line 313
    .line 314
    invoke-virtual {v0}, Llb/n0;->b()Llb/w;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v4, "getType(...)"

    .line 319
    .line 320
    invoke-static {v0, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    add-int/lit8 v3, v3, 0x1

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_10
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    instance-of v4, v0, Lv9/e;

    .line 335
    .line 336
    if-eqz v4, :cond_12

    .line 337
    .line 338
    invoke-static {v0}, Lbb/e;->f(Lv9/h;)Lua/b;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-nez v0, :cond_11

    .line 343
    .line 344
    new-instance v0, Lza/s;

    .line 345
    .line 346
    new-instance v1, Lza/p;

    .line 347
    .line 348
    invoke-direct {v1, p1}, Lza/p;-><init>(Llb/w;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {v0, v1}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    return-object v0

    .line 355
    :cond_11
    new-instance p1, Lza/s;

    .line 356
    .line 357
    invoke-direct {p1, v0, v3}, Lza/s;-><init>(Lua/b;I)V

    .line 358
    .line 359
    .line 360
    return-object p1

    .line 361
    :cond_12
    instance-of p1, v0, Lv9/q0;

    .line 362
    .line 363
    if-eqz p1, :cond_13

    .line 364
    .line 365
    new-instance p1, Lza/s;

    .line 366
    .line 367
    sget-object v0, Ls9/o;->a:Lua/d;

    .line 368
    .line 369
    invoke-virtual {v0}, Lua/d;->g()Lua/c;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    new-instance v1, Lua/b;

    .line 374
    .line 375
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 380
    .line 381
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-direct {v1, v3, v0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 386
    .line 387
    .line 388
    invoke-direct {p1, v1, v2}, Lza/s;-><init>(Lua/b;I)V

    .line 389
    .line 390
    .line 391
    return-object p1

    .line 392
    :cond_13
    :goto_5
    return-object v1
.end method

.method public final getSource()Lv9/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/f;->e:Laa/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Llb/w;
    .locals 2

    .line 1
    sget-object v0, Lia/f;->h:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lia/f;->d:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llb/a0;

    .line 13
    .line 14
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lwa/g;->c:Lwa/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Lwa/g;->v(Lw9/b;Lw9/d;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
