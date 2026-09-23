.class public final Lpc/r;
.super Lm9/e0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Loc/h;


# instance fields
.field public final i:Loc/b;

.field public final j:Lpc/v;

.field public final k:Lha/e;

.field public final l:Ln6/a;

.field public m:I

.field public n:Lfc/s;

.field public final o:Lma/r;

.field public final p:Lpc/i;


# direct methods
.method public constructor <init>(Loc/b;Lpc/v;Lha/e;Llc/e;Lfc/s;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lpc/r;->i:Loc/b;

    .line 10
    .line 11
    iput-object p2, p0, Lpc/r;->j:Lpc/v;

    .line 12
    .line 13
    iput-object p3, p0, Lpc/r;->k:Lha/e;

    .line 14
    .line 15
    iget-object p2, p1, Loc/b;->b:Ln6/a;

    .line 16
    .line 17
    iput-object p2, p0, Lpc/r;->l:Ln6/a;

    .line 18
    .line 19
    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lpc/r;->m:I

    .line 21
    .line 22
    iput-object p5, p0, Lpc/r;->n:Lfc/s;

    .line 23
    .line 24
    iget-object p1, p1, Loc/b;->a:Lma/r;

    .line 25
    .line 26
    iput-object p1, p0, Lpc/r;->o:Lma/r;

    .line 27
    .line 28
    iget-boolean p1, p1, Lma/r;->b:Z

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lpc/i;

    .line 35
    .line 36
    invoke-direct {p1, p4}, Lpc/i;-><init>(Llc/e;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-object p1, p0, Lpc/r;->p:Lpc/i;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final A()D
    .locals 9

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v1, p0, Lpc/r;->i:Loc/b;

    .line 13
    .line 14
    iget-object v1, v1, Loc/b;->a:Lma/r;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmpg-double v1, v5, v7

    .line 29
    .line 30
    if-gtz v1, :cond_0

    .line 31
    .line 32
    return-wide v3

    .line 33
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lpc/j;->o(Lha/e;Ljava/lang/Number;)V

    .line 38
    .line 39
    .line 40
    throw v2

    .line 41
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v4, "Failed to parse type \'double\' for input \'"

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x27

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x6

    .line 62
    invoke-static {v0, v1, v3, v2, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    throw v2
.end method

.method public final V(Lkc/a;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lpc/r;->i:Loc/b;

    .line 2
    .line 3
    iget-object v1, p0, Lpc/r;->k:Lha/e;

    .line 4
    .line 5
    iget-object v2, v1, Lha/e;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Le7/l;

    .line 8
    .line 9
    const-string v3, "Expected "

    .line 10
    .line 11
    const-string v4, "deserializer"

    .line 12
    .line 13
    invoke-static {p1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_0
    instance-of v5, p1, Lkc/d;

    .line 18
    .line 19
    if-eqz v5, :cond_5

    .line 20
    .line 21
    iget-object v5, v0, Loc/b;->a:Lma/r;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-object v5, p1

    .line 27
    check-cast v5, Lkc/d;

    .line 28
    .line 29
    invoke-virtual {v5}, Lkc/d;->d()Llc/e;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5, v0}, Lpc/j;->h(Llc/e;Loc/b;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lpc/r;->o:Lma/r;

    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v5}, Lha/e;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v7, 0x0

    .line 47
    if-nez v6, :cond_4

    .line 48
    .line 49
    instance-of v1, p1, Lkc/d;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, v0, Loc/b;->a:Lma/r;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Lkc/d;

    .line 60
    .line 61
    invoke-virtual {v1}, Lkc/d;->d()Llc/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1, v0}, Lpc/j;->h(Llc/e;Loc/b;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lpc/r;->n()Loc/j;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object v6, p1

    .line 74
    check-cast v6, Lkc/d;

    .line 75
    .line 76
    invoke-virtual {v6}, Lkc/d;->d()Llc/e;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-interface {v6}, Llc/e;->h()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    instance-of v8, v5, Loc/u;

    .line 85
    .line 86
    const/4 v9, -0x1

    .line 87
    if-eqz v8, :cond_2

    .line 88
    .line 89
    check-cast v5, Loc/u;

    .line 90
    .line 91
    invoke-virtual {v5, v1}, Loc/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Loc/j;

    .line 96
    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    invoke-static {v3}, Loc/k;->a(Loc/j;)Loc/y;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    instance-of v6, v3, Loc/r;

    .line 104
    .line 105
    if-eqz v6, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v3}, Loc/y;->b()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7
    :try_end_0
    .catch Lkc/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p1

    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_1
    :goto_0
    :try_start_1
    check-cast p1, Lkc/d;

    .line 117
    .line 118
    invoke-static {p1, p0, v7}, Li9/a;->v(Lkc/d;Lmc/a;Ljava/lang/String;)Lkc/a;

    .line 119
    .line 120
    .line 121
    move-result-object p1
    :try_end_1
    .catch Lkc/e; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :try_start_2
    invoke-static {v0, v1, v5, p1}, Lpc/j;->m(Loc/b;Ljava/lang/String;Loc/u;Lkc/a;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :catch_1
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Loc/u;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {p1, v0, v9}, Lpc/j;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lpc/h;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    throw p1

    .line 144
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-class v0, Loc/u;

    .line 150
    .line 151
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0}, Lm9/c;->k()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, ", but had "

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0}, Lm9/c;->k()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, " as the serialized body of "

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v0, " at element: "

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Le7/l;->e()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {p1, v0, v9}, Lpc/j;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lpc/h;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    throw p1

    .line 217
    :cond_3
    invoke-interface {p1, p0}, Lkc/a;->a(Lmc/b;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1
    :try_end_2
    .catch Lkc/b; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    return-object p1

    .line 222
    :cond_4
    :try_start_3
    check-cast p1, Lkc/d;

    .line 223
    .line 224
    invoke-static {p1, p0, v6}, Li9/a;->v(Lkc/d;Lmc/a;Ljava/lang/String;)Lkc/a;

    .line 225
    .line 226
    .line 227
    move-result-object p1
    :try_end_3
    .catch Lkc/e; {:try_start_3 .. :try_end_3} :catch_2

    .line 228
    :try_start_4
    new-instance v0, Lfc/s;

    .line 229
    .line 230
    invoke-direct {v0}, Lfc/s;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object v5, v0, Lfc/s;->b:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v0, p0, Lpc/r;->n:Lfc/s;

    .line 236
    .line 237
    invoke-interface {p1, p0}, Lkc/a;->a(Lmc/b;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    return-object p1

    .line 242
    :catch_2
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    const/16 v3, 0xa

    .line 251
    .line 252
    invoke-static {v3, v0}, Lxb/i;->c0(CLjava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v5, "."

    .line 257
    .line 258
    invoke-static {v0, v5}, Lxb/i;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    const-string v5, ""

    .line 270
    .line 271
    invoke-static {p1, v3, v5}, Lxb/i;->Z(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const/4 v3, 0x2

    .line 276
    invoke-static {v1, v0, v4, p1, v3}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    throw v7

    .line 280
    :cond_5
    invoke-interface {p1, p0}, Lkc/a;->a(Lmc/b;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1
    :try_end_4
    .catch Lkc/b; {:try_start_4 .. :try_end_4} :catch_0

    .line 284
    return-object p1

    .line 285
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    const-string v1, "at path"

    .line 293
    .line 294
    invoke-static {v0, v1, v4}, Lxb/i;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_6

    .line 299
    .line 300
    throw p1

    .line 301
    :cond_6
    new-instance v0, Lkc/b;

    .line 302
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v3, " at path: "

    .line 316
    .line 317
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Le7/l;->e()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    iget-object v2, p1, Lkc/b;->a:Ljava/util/List;

    .line 332
    .line 333
    invoke-direct {v0, v2, v1, p1}, Lkc/b;-><init>(Ljava/util/List;Ljava/lang/String;Lkc/b;)V

    .line 334
    .line 335
    .line 336
    throw v0
.end method

.method public final d()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->t()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lha/e;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "EOF"

    .line 16
    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    if-eq v1, v3, :cond_7

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v8, 0x22

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    if-ne v3, v8, :cond_0

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Lha/e;->s(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-ge v1, v10, :cond_6

    .line 45
    .line 46
    const/4 v10, -0x1

    .line 47
    if-eq v1, v10, :cond_6

    .line 48
    .line 49
    add-int/lit8 v10, v1, 0x1

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    or-int/lit8 v1, v1, 0x20

    .line 56
    .line 57
    const/16 v11, 0x66

    .line 58
    .line 59
    if-eq v1, v11, :cond_2

    .line 60
    .line 61
    const/16 v11, 0x74

    .line 62
    .line 63
    if-ne v1, v11, :cond_1

    .line 64
    .line 65
    const-string v1, "rue"

    .line 66
    .line 67
    invoke-virtual {v0, v10, v1}, Lha/e;->d(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Expected valid boolean literal prefix, but had \'"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v2, 0x27

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1, v7, v6, v5}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    throw v6

    .line 99
    :cond_2
    const-string v1, "alse"

    .line 100
    .line 101
    invoke-virtual {v0, v10, v1}, Lha/e;->d(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    :goto_1
    if-eqz v3, :cond_5

    .line 106
    .line 107
    iget v3, v0, Lha/e;->b:I

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eq v3, v10, :cond_4

    .line 114
    .line 115
    iget v3, v0, Lha/e;->b:I

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-ne v2, v8, :cond_3

    .line 122
    .line 123
    iget v2, v0, Lha/e;->b:I

    .line 124
    .line 125
    add-int/2addr v2, v9

    .line 126
    iput v2, v0, Lha/e;->b:I

    .line 127
    .line 128
    return v1

    .line 129
    :cond_3
    const-string v1, "Expected closing quotation mark"

    .line 130
    .line 131
    invoke-static {v0, v1, v7, v6, v5}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    throw v6

    .line 135
    :cond_4
    invoke-static {v0, v4, v7, v6, v5}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    throw v6

    .line 139
    :cond_5
    return v1

    .line 140
    :cond_6
    invoke-static {v0, v4, v7, v6, v5}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    throw v6

    .line 144
    :cond_7
    invoke-static {v0, v4, v7, v6, v5}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    throw v6
.end method

.method public final f(Llc/e;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lpc/r;->i:Loc/b;

    .line 6
    .line 7
    iget-object v3, v2, Loc/b;->a:Lma/r;

    .line 8
    .line 9
    iget-object v4, v0, Lpc/r;->k:Lha/e;

    .line 10
    .line 11
    iget-object v5, v4, Lha/e;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v5, Le7/l;

    .line 14
    .line 15
    iget-object v6, v4, Lha/e;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v6, Ljava/lang/String;

    .line 18
    .line 19
    const-string v7, "descriptor"

    .line 20
    .line 21
    invoke-static {v1, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v7, v0, Lpc/r;->j:Lpc/v;

    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    const-string v9, "object"

    .line 31
    .line 32
    const/4 v10, 0x6

    .line 33
    const/16 v11, 0x3a

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x1

    .line 37
    const/4 v14, -0x1

    .line 38
    const/4 v15, 0x0

    .line 39
    if-eqz v8, :cond_e

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    if-eq v8, v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v4}, Lha/e;->u()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v4}, Lha/e;->c()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget v2, v0, Lpc/r;->m:I

    .line 55
    .line 56
    if-eq v2, v14, :cond_1

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "Expected end of the array or comma"

    .line 62
    .line 63
    invoke-static {v4, v1, v12, v15, v10}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    throw v15

    .line 67
    :cond_1
    :goto_0
    add-int/lit8 v14, v2, 0x1

    .line 68
    .line 69
    iput v14, v0, Lpc/r;->m:I

    .line 70
    .line 71
    goto/16 :goto_11

    .line 72
    .line 73
    :cond_2
    if-nez v1, :cond_3

    .line 74
    .line 75
    goto/16 :goto_11

    .line 76
    .line 77
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v1, "array"

    .line 81
    .line 82
    invoke-static {v4, v1}, Lpc/j;->j(Lha/e;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v15

    .line 86
    :cond_4
    iget v1, v0, Lpc/r;->m:I

    .line 87
    .line 88
    rem-int/lit8 v2, v1, 0x2

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 v2, 0x0

    .line 95
    :goto_1
    if-eqz v2, :cond_6

    .line 96
    .line 97
    if-eq v1, v14, :cond_7

    .line 98
    .line 99
    invoke-virtual {v4}, Lha/e;->u()Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    invoke-virtual {v4, v11}, Lha/e;->h(C)V

    .line 105
    .line 106
    .line 107
    :cond_7
    :goto_2
    invoke-virtual {v4}, Lha/e;->c()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_c

    .line 112
    .line 113
    if-eqz v2, :cond_b

    .line 114
    .line 115
    iget v1, v0, Lpc/r;->m:I

    .line 116
    .line 117
    const/4 v2, 0x4

    .line 118
    if-ne v1, v14, :cond_9

    .line 119
    .line 120
    iget v1, v4, Lha/e;->b:I

    .line 121
    .line 122
    if-nez v12, :cond_8

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    const-string v3, "Unexpected leading comma"

    .line 126
    .line 127
    invoke-static {v4, v3, v1, v15, v2}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    throw v15

    .line 131
    :cond_9
    iget v1, v4, Lha/e;->b:I

    .line 132
    .line 133
    if-eqz v12, :cond_a

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_a
    const-string v3, "Expected comma after the key-value pair"

    .line 137
    .line 138
    invoke-static {v4, v3, v1, v15, v2}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    throw v15

    .line 142
    :cond_b
    :goto_3
    iget v1, v0, Lpc/r;->m:I

    .line 143
    .line 144
    add-int/lit8 v14, v1, 0x1

    .line 145
    .line 146
    iput v14, v0, Lpc/r;->m:I

    .line 147
    .line 148
    goto/16 :goto_11

    .line 149
    .line 150
    :cond_c
    if-nez v12, :cond_d

    .line 151
    .line 152
    goto/16 :goto_11

    .line 153
    .line 154
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {v4, v9}, Lpc/j;->j(Lha/e;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v15

    .line 161
    :cond_e
    invoke-virtual {v4}, Lha/e;->u()Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    :goto_4
    invoke-virtual {v4}, Lha/e;->c()Z

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    const/16 v17, 0x1

    .line 170
    .line 171
    const-wide/16 v18, 0x1

    .line 172
    .line 173
    iget-object v10, v0, Lpc/r;->p:Lpc/i;

    .line 174
    .line 175
    if-eqz v16, :cond_27

    .line 176
    .line 177
    iget-object v8, v0, Lpc/r;->o:Lma/r;

    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Lha/e;->e()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v4, v11}, Lha/e;->h(C)V

    .line 187
    .line 188
    .line 189
    const-string v11, "<this>"

    .line 190
    .line 191
    invoke-static {v1, v11}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v11, "json"

    .line 195
    .line 196
    invoke-static {v2, v11}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string v11, "name"

    .line 200
    .line 201
    invoke-static {v8, v11}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v11, v2, Loc/b;->a:Lma/r;

    .line 205
    .line 206
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v2}, Lpc/j;->l(Llc/e;Loc/b;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v1, v8}, Llc/e;->j(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    const/16 v21, -0x1

    .line 217
    .line 218
    const/4 v14, -0x3

    .line 219
    if-eq v12, v14, :cond_f

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_f
    iget-boolean v11, v11, Lma/r;->c:Z

    .line 223
    .line 224
    if-nez v11, :cond_10

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_10
    iget-object v11, v2, Loc/b;->c:Lkb/a;

    .line 228
    .line 229
    new-instance v12, La8/n0;

    .line 230
    .line 231
    const/16 v14, 0xb

    .line 232
    .line 233
    invoke-direct {v12, v14, v1, v2}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    sget-object v14, Lpc/j;->a:Lpc/k;

    .line 240
    .line 241
    invoke-virtual {v11, v1, v14}, Lkb/a;->R(Llc/e;Lpc/k;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v22

    .line 245
    if-eqz v22, :cond_11

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_11
    invoke-virtual {v12}, La8/n0;->invoke()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    iget-object v11, v11, Lkb/a;->b:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v11, Ljava/util/concurrent/ConcurrentHashMap;

    .line 255
    .line 256
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v22

    .line 260
    if-nez v22, :cond_12

    .line 261
    .line 262
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    .line 263
    .line 264
    const/4 v13, 0x2

    .line 265
    invoke-direct {v15, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v11, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-object/from16 v22, v15

    .line 272
    .line 273
    :cond_12
    move-object/from16 v11, v22

    .line 274
    .line 275
    check-cast v11, Ljava/util/Map;

    .line 276
    .line 277
    invoke-interface {v11, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-object/from16 v22, v12

    .line 281
    .line 282
    :goto_5
    move-object/from16 v11, v22

    .line 283
    .line 284
    check-cast v11, Ljava/util/Map;

    .line 285
    .line 286
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    check-cast v11, Ljava/lang/Integer;

    .line 291
    .line 292
    if-eqz v11, :cond_13

    .line 293
    .line 294
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    goto :goto_6

    .line 299
    :cond_13
    const/4 v12, -0x3

    .line 300
    :goto_6
    const/4 v11, -0x3

    .line 301
    if-eq v12, v11, :cond_16

    .line 302
    .line 303
    if-eqz v10, :cond_14

    .line 304
    .line 305
    iget-object v1, v10, Lpc/i;->a:Lnc/s;

    .line 306
    .line 307
    const/16 v2, 0x40

    .line 308
    .line 309
    if-ge v12, v2, :cond_15

    .line 310
    .line 311
    iget-wide v2, v1, Lnc/s;->c:J

    .line 312
    .line 313
    shl-long v8, v18, v12

    .line 314
    .line 315
    or-long/2addr v2, v8

    .line 316
    iput-wide v2, v1, Lnc/s;->c:J

    .line 317
    .line 318
    :cond_14
    :goto_7
    move v14, v12

    .line 319
    goto/16 :goto_11

    .line 320
    .line 321
    :cond_15
    ushr-int/lit8 v2, v12, 0x6

    .line 322
    .line 323
    add-int/lit8 v2, v2, -0x1

    .line 324
    .line 325
    and-int/lit8 v3, v12, 0x3f

    .line 326
    .line 327
    iget-object v1, v1, Lnc/s;->d:[J

    .line 328
    .line 329
    aget-wide v8, v1, v2

    .line 330
    .line 331
    shl-long v3, v18, v3

    .line 332
    .line 333
    or-long/2addr v3, v8

    .line 334
    aput-wide v3, v1, v2

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_16
    invoke-static {v1, v2}, Lpc/j;->i(Llc/e;Loc/b;)Z

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    if-nez v10, :cond_17

    .line 342
    .line 343
    iget-object v10, v0, Lpc/r;->n:Lfc/s;

    .line 344
    .line 345
    if-eqz v10, :cond_18

    .line 346
    .line 347
    iget-object v11, v10, Lfc/s;->b:Ljava/lang/String;

    .line 348
    .line 349
    invoke-static {v11, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    if-eqz v11, :cond_18

    .line 354
    .line 355
    const/4 v11, 0x0

    .line 356
    iput-object v11, v10, Lfc/s;->b:Ljava/lang/String;

    .line 357
    .line 358
    :cond_17
    const/4 v11, -0x1

    .line 359
    goto :goto_8

    .line 360
    :cond_18
    iget v1, v5, Le7/l;->b:I

    .line 361
    .line 362
    iget-object v2, v5, Le7/l;->d:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v2, [I

    .line 365
    .line 366
    aget v3, v2, v1

    .line 367
    .line 368
    const/4 v7, -0x2

    .line 369
    if-ne v3, v7, :cond_19

    .line 370
    .line 371
    aput v21, v2, v1

    .line 372
    .line 373
    add-int/lit8 v1, v1, -0x1

    .line 374
    .line 375
    iput v1, v5, Le7/l;->b:I

    .line 376
    .line 377
    :cond_19
    iget v1, v5, Le7/l;->b:I

    .line 378
    .line 379
    const/4 v11, -0x1

    .line 380
    if-eq v1, v11, :cond_1a

    .line 381
    .line 382
    add-int/2addr v1, v11

    .line 383
    iput v1, v5, Le7/l;->b:I

    .line 384
    .line 385
    :cond_1a
    iget v1, v4, Lha/e;->b:I

    .line 386
    .line 387
    const/4 v2, 0x0

    .line 388
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    const/4 v3, 0x6

    .line 397
    invoke-static {v2, v3, v1, v8}, Lxb/i;->S(IILjava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    new-instance v2, Lpc/h;

    .line 402
    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v4, "Encountered an unknown key \'"

    .line 406
    .line 407
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v4, "\' at offset "

    .line 414
    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v4, " at path: "

    .line 422
    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v5}, Le7/l;->e()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v4, "\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys.\nJSON input: "

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-static {v6, v1}, Lpc/j;->k(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    const/4 v3, 0x0

    .line 450
    invoke-direct {v2, v3, v1}, Lpc/h;-><init>(ILjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v2

    .line 454
    :goto_8
    new-instance v12, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4}, Lha/e;->q()B

    .line 460
    .line 461
    .line 462
    move-result v8

    .line 463
    const/16 v13, 0x8

    .line 464
    .line 465
    const/4 v10, 0x6

    .line 466
    if-eq v8, v13, :cond_1b

    .line 467
    .line 468
    if-eq v8, v10, :cond_1b

    .line 469
    .line 470
    invoke-virtual {v4}, Lha/e;->k()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    const/4 v10, 0x0

    .line 474
    const/4 v14, 0x1

    .line 475
    const/4 v15, 0x6

    .line 476
    goto/16 :goto_e

    .line 477
    .line 478
    :cond_1b
    :goto_9
    invoke-virtual {v4}, Lha/e;->q()B

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    const/4 v14, 0x1

    .line 483
    if-ne v8, v14, :cond_1c

    .line 484
    .line 485
    invoke-virtual {v4}, Lha/e;->e()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    :goto_a
    const/16 v17, 0x1

    .line 489
    .line 490
    goto :goto_9

    .line 491
    :cond_1c
    if-eq v8, v13, :cond_1d

    .line 492
    .line 493
    if-ne v8, v10, :cond_1e

    .line 494
    .line 495
    :cond_1d
    const/4 v10, 0x0

    .line 496
    const/4 v15, 0x6

    .line 497
    goto/16 :goto_c

    .line 498
    .line 499
    :cond_1e
    const/16 v10, 0x9

    .line 500
    .line 501
    const-string v15, "List is empty."

    .line 502
    .line 503
    if-ne v8, v10, :cond_21

    .line 504
    .line 505
    invoke-static {v12}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    check-cast v8, Ljava/lang/Number;

    .line 510
    .line 511
    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    if-ne v8, v13, :cond_20

    .line 516
    .line 517
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 518
    .line 519
    .line 520
    move-result v8

    .line 521
    if-nez v8, :cond_1f

    .line 522
    .line 523
    invoke-static {v12}, Lp9/x1;->u(Ljava/util/List;)I

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    :goto_b
    const/4 v10, 0x0

    .line 531
    const/4 v15, 0x6

    .line 532
    goto :goto_d

    .line 533
    :cond_1f
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 534
    .line 535
    invoke-direct {v1, v15}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw v1

    .line 539
    :cond_20
    iget v1, v4, Lha/e;->b:I

    .line 540
    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    const-string v3, "found ] instead of } at path: "

    .line 544
    .line 545
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-static {v2, v6, v1}, Lpc/j;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lpc/h;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    throw v1

    .line 560
    :cond_21
    const/4 v10, 0x7

    .line 561
    if-ne v8, v10, :cond_24

    .line 562
    .line 563
    invoke-static {v12}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    check-cast v8, Ljava/lang/Number;

    .line 568
    .line 569
    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    .line 570
    .line 571
    .line 572
    move-result v8

    .line 573
    const/4 v10, 0x6

    .line 574
    if-ne v8, v10, :cond_23

    .line 575
    .line 576
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 577
    .line 578
    .line 579
    move-result v8

    .line 580
    if-nez v8, :cond_22

    .line 581
    .line 582
    invoke-static {v12}, Lp9/x1;->u(Ljava/util/List;)I

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    goto :goto_b

    .line 590
    :cond_22
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 591
    .line 592
    invoke-direct {v1, v15}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v1

    .line 596
    :cond_23
    iget v1, v4, Lha/e;->b:I

    .line 597
    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    const-string v3, "found } instead of ] at path: "

    .line 601
    .line 602
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-static {v2, v6, v1}, Lpc/j;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lpc/h;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    throw v1

    .line 617
    :cond_24
    const/16 v10, 0xa

    .line 618
    .line 619
    if-eq v8, v10, :cond_25

    .line 620
    .line 621
    goto :goto_b

    .line 622
    :cond_25
    const-string v1, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 623
    .line 624
    const/4 v10, 0x0

    .line 625
    const/4 v11, 0x0

    .line 626
    const/4 v15, 0x6

    .line 627
    invoke-static {v4, v1, v10, v11, v15}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 628
    .line 629
    .line 630
    throw v11

    .line 631
    :goto_c
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 632
    .line 633
    .line 634
    move-result-object v8

    .line 635
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    :goto_d
    invoke-virtual {v4}, Lha/e;->f()B

    .line 639
    .line 640
    .line 641
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 642
    .line 643
    .line 644
    move-result v8

    .line 645
    if-nez v8, :cond_26

    .line 646
    .line 647
    :goto_e
    invoke-virtual {v4}, Lha/e;->u()Z

    .line 648
    .line 649
    .line 650
    move-result v8

    .line 651
    const/4 v10, 0x6

    .line 652
    const/16 v11, 0x3a

    .line 653
    .line 654
    const/4 v12, 0x0

    .line 655
    const/4 v13, 0x1

    .line 656
    const/4 v14, -0x1

    .line 657
    const/4 v15, 0x0

    .line 658
    goto/16 :goto_4

    .line 659
    .line 660
    :cond_26
    const/4 v10, 0x6

    .line 661
    goto/16 :goto_a

    .line 662
    .line 663
    :cond_27
    const/4 v11, -0x1

    .line 664
    const/16 v20, 0x0

    .line 665
    .line 666
    if-nez v8, :cond_2e

    .line 667
    .line 668
    if-eqz v10, :cond_2c

    .line 669
    .line 670
    iget-object v1, v10, Lpc/i;->a:Lnc/s;

    .line 671
    .line 672
    iget-object v2, v1, Lnc/s;->b:Lmb/s;

    .line 673
    .line 674
    iget-object v3, v1, Lnc/s;->a:Llc/e;

    .line 675
    .line 676
    invoke-interface {v3}, Llc/e;->k()I

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    :cond_28
    iget-wide v8, v1, Lnc/s;->c:J

    .line 681
    .line 682
    const-wide/16 v12, -0x1

    .line 683
    .line 684
    cmp-long v6, v8, v12

    .line 685
    .line 686
    if-eqz v6, :cond_29

    .line 687
    .line 688
    not-long v8, v8

    .line 689
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    iget-wide v8, v1, Lnc/s;->c:J

    .line 694
    .line 695
    shl-long v12, v18, v6

    .line 696
    .line 697
    or-long/2addr v8, v12

    .line 698
    iput-wide v8, v1, Lnc/s;->c:J

    .line 699
    .line 700
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v8

    .line 704
    invoke-virtual {v2, v3, v8}, Lmb/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 708
    .line 709
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 710
    .line 711
    .line 712
    move-result v8

    .line 713
    if-eqz v8, :cond_28

    .line 714
    .line 715
    move v14, v6

    .line 716
    goto :goto_11

    .line 717
    :cond_29
    const/16 v6, 0x40

    .line 718
    .line 719
    if-le v4, v6, :cond_2c

    .line 720
    .line 721
    iget-object v1, v1, Lnc/s;->d:[J

    .line 722
    .line 723
    array-length v4, v1

    .line 724
    const/4 v6, 0x0

    .line 725
    :goto_f
    if-ge v6, v4, :cond_2c

    .line 726
    .line 727
    add-int/lit8 v8, v6, 0x1

    .line 728
    .line 729
    mul-int/lit8 v9, v8, 0x40

    .line 730
    .line 731
    aget-wide v14, v1, v6

    .line 732
    .line 733
    :goto_10
    cmp-long v10, v14, v12

    .line 734
    .line 735
    if-eqz v10, :cond_2b

    .line 736
    .line 737
    not-long v11, v14

    .line 738
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 739
    .line 740
    .line 741
    move-result v10

    .line 742
    shl-long v11, v18, v10

    .line 743
    .line 744
    or-long/2addr v14, v11

    .line 745
    add-int/2addr v10, v9

    .line 746
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v11

    .line 750
    invoke-virtual {v2, v3, v11}, Lmb/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 754
    .line 755
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 756
    .line 757
    .line 758
    move-result v11

    .line 759
    if-eqz v11, :cond_2a

    .line 760
    .line 761
    aput-wide v14, v1, v6

    .line 762
    .line 763
    move v14, v10

    .line 764
    goto :goto_11

    .line 765
    :cond_2a
    const/4 v11, -0x1

    .line 766
    const-wide/16 v12, -0x1

    .line 767
    .line 768
    goto :goto_10

    .line 769
    :cond_2b
    aput-wide v14, v1, v6

    .line 770
    .line 771
    move v6, v8

    .line 772
    const/4 v11, -0x1

    .line 773
    const-wide/16 v12, -0x1

    .line 774
    .line 775
    goto :goto_f

    .line 776
    :cond_2c
    const/4 v14, -0x1

    .line 777
    :goto_11
    sget-object v1, Lpc/v;->e:Lpc/v;

    .line 778
    .line 779
    if-eq v7, v1, :cond_2d

    .line 780
    .line 781
    iget-object v1, v5, Le7/l;->d:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v1, [I

    .line 784
    .line 785
    iget v2, v5, Le7/l;->b:I

    .line 786
    .line 787
    aput v14, v1, v2

    .line 788
    .line 789
    :cond_2d
    return v14

    .line 790
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    invoke-static {v4, v9}, Lpc/j;->j(Lha/e;Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    const/16 v23, 0x0

    .line 797
    .line 798
    throw v23
.end method

.method public final g()C
    .locals 5

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Expected single char, but got \'"

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x27

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x6

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v0, v1, v4, v3, v2}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    throw v3
.end method

.method public final i(Llc/e;)V
    .locals 5

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Llc/e;->k()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    iget-object v2, p0, Lpc/r;->i:Loc/b;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1, v2}, Lpc/j;->i(Llc/e;Loc/b;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lpc/r;->f(Llc/e;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lpc/r;->k:Lha/e;

    .line 28
    .line 29
    invoke-virtual {p1}, Lha/e;->u()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lpc/r;->j:Lpc/v;

    .line 36
    .line 37
    iget-char v0, v0, Lpc/v;->b:C

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lha/e;->h(C)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lha/e;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Le7/l;

    .line 45
    .line 46
    iget v0, p1, Le7/l;->b:I

    .line 47
    .line 48
    iget-object v2, p1, Le7/l;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, [I

    .line 51
    .line 52
    aget v3, v2, v0

    .line 53
    .line 54
    const/4 v4, -0x2

    .line 55
    if-ne v3, v4, :cond_2

    .line 56
    .line 57
    aput v1, v2, v0

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    iput v0, p1, Le7/l;->b:I

    .line 61
    .line 62
    :cond_2
    iget v0, p1, Le7/l;->b:I

    .line 63
    .line 64
    if-eq v0, v1, :cond_3

    .line 65
    .line 66
    add-int/2addr v0, v1

    .line 67
    iput v0, p1, Le7/l;->b:I

    .line 68
    .line 69
    :cond_3
    return-void

    .line 70
    :cond_4
    iget-object v0, v2, Loc/b;->a:Lma/r;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v0, ""

    .line 76
    .line 77
    invoke-static {p1, v0}, Lpc/j;->j(Lha/e;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    throw p1
.end method

.method public final k(Llc/e;)Lmc/b;
    .locals 2

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lpc/t;->a(Llc/e;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lpc/g;

    .line 13
    .line 14
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 15
    .line 16
    iget-object v1, p0, Lpc/r;->i:Loc/b;

    .line 17
    .line 18
    invoke-direct {p1, v0, v1}, Lpc/g;-><init>(Lha/e;Loc/b;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    return-object p0
.end method

.method public final l(Llc/e;)Lmc/a;
    .locals 7

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lpc/r;->i:Loc/b;

    .line 7
    .line 8
    invoke-static {p1, v2}, Lpc/j;->n(Llc/e;Loc/b;)Lpc/v;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget-object v4, p0, Lpc/r;->k:Lha/e;

    .line 13
    .line 14
    iget-object v0, v4, Lha/e;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Le7/l;

    .line 17
    .line 18
    iget v1, v0, Le7/l;->b:I

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    add-int/2addr v1, v5

    .line 22
    iput v1, v0, Le7/l;->b:I

    .line 23
    .line 24
    iget-object v6, v0, Le7/l;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, [Ljava/lang/Object;

    .line 27
    .line 28
    array-length v6, v6

    .line 29
    if-ne v1, v6, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Le7/l;->h()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, v0, Le7/l;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p1, v0, v1

    .line 39
    .line 40
    iget-char v0, v3, Lpc/v;->a:C

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Lha/e;->h(C)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lha/e;->q()B

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x4

    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eq v0, v5, :cond_2

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    if-eq v0, v1, :cond_2

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    if-eq v0, v1, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lpc/r;->j:Lpc/v;

    .line 65
    .line 66
    if-ne v0, v3, :cond_1

    .line 67
    .line 68
    iget-object v0, v2, Loc/b;->a:Lma/r;

    .line 69
    .line 70
    iget-boolean v0, v0, Lma/r;->b:Z

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_1
    new-instance v1, Lpc/r;

    .line 76
    .line 77
    iget-object v6, p0, Lpc/r;->n:Lfc/s;

    .line 78
    .line 79
    move-object v5, p1

    .line 80
    invoke-direct/range {v1 .. v6}, Lpc/r;-><init>(Loc/b;Lpc/v;Lha/e;Llc/e;Lfc/s;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_2
    move-object v5, p1

    .line 85
    new-instance v1, Lpc/r;

    .line 86
    .line 87
    iget-object v6, p0, Lpc/r;->n:Lfc/s;

    .line 88
    .line 89
    invoke-direct/range {v1 .. v6}, Lpc/r;-><init>(Loc/b;Lpc/v;Lha/e;Llc/e;Lfc/s;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_3
    const/4 p1, 0x0

    .line 94
    const/4 v0, 0x6

    .line 95
    const-string v1, "Unexpected leading comma"

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-static {v4, v1, p1, v2, v0}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    throw v2
.end method

.method public final n()Loc/j;
    .locals 3

    .line 1
    new-instance v0, Lj/g;

    .line 2
    .line 3
    iget-object v1, p0, Lpc/r;->i:Loc/b;

    .line 4
    .line 5
    iget-object v1, v1, Loc/b;->a:Lma/r;

    .line 6
    .line 7
    iget-object v2, p0, Lpc/r;->k:Lha/e;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lj/g;-><init>(Lma/r;Lha/e;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lj/g;->f()Loc/j;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final o()I
    .locals 7

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    long-to-int v3, v1

    .line 8
    int-to-long v4, v3

    .line 9
    cmp-long v6, v1, v4

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "Failed to parse int for input \'"

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x27

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x6

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static {v0, v1, v2, v4, v3}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    throw v4
.end method

.method public final p()Ln6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/r;->l:Ln6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q(Llc/e;ILkc/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    iget-object v0, v0, Lha/e;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le7/l;

    .line 6
    .line 7
    const-string v1, "descriptor"

    .line 8
    .line 9
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "deserializer"

    .line 13
    .line 14
    invoke-static {p3, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lpc/r;->j:Lpc/v;

    .line 18
    .line 19
    sget-object v2, Lpc/v;->e:Lpc/v;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    and-int/lit8 v1, p2, 0x1

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    const/4 v2, -0x2

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v4, v0, Le7/l;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, [I

    .line 37
    .line 38
    iget v5, v0, Le7/l;->b:I

    .line 39
    .line 40
    aget v4, v4, v5

    .line 41
    .line 42
    if-ne v4, v2, :cond_1

    .line 43
    .line 44
    iget-object v4, v0, Le7/l;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, [Ljava/lang/Object;

    .line 47
    .line 48
    sget-object v6, Lpc/k;->a:Lpc/k;

    .line 49
    .line 50
    aput-object v6, v4, v5

    .line 51
    .line 52
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lm9/e0;->q(Llc/e;ILkc/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget-object p2, v0, Le7/l;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, [I

    .line 61
    .line 62
    iget p3, v0, Le7/l;->b:I

    .line 63
    .line 64
    aget p2, p2, p3

    .line 65
    .line 66
    if-eq p2, v2, :cond_2

    .line 67
    .line 68
    add-int/2addr p3, v3

    .line 69
    iput p3, v0, Le7/l;->b:I

    .line 70
    .line 71
    iget-object p2, v0, Le7/l;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p2, [Ljava/lang/Object;

    .line 74
    .line 75
    array-length p2, p2

    .line 76
    if-ne p3, p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0}, Le7/l;->h()V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p2, v0, Le7/l;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p2, [Ljava/lang/Object;

    .line 84
    .line 85
    iget p3, v0, Le7/l;->b:I

    .line 86
    .line 87
    aput-object p1, p2, p3

    .line 88
    .line 89
    iget-object p2, v0, Le7/l;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p2, [I

    .line 92
    .line 93
    aput v2, p2, p3

    .line 94
    .line 95
    :cond_3
    return-object p1
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/r;->o:Lma/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lha/e;->j()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final s()J
    .locals 2

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final u()Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lpc/r;->p:Lpc/i;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-boolean v1, v1, Lpc/i;->b:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-nez v1, :cond_6

    .line 11
    .line 12
    iget-object v1, p0, Lpc/r;->k:Lha/e;

    .line 13
    .line 14
    invoke-virtual {v1}, Lha/e;->t()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lha/e;->s(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, v1, Lha/e;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sub-int/2addr v4, v2

    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x4

    .line 34
    if-lt v4, v7, :cond_5

    .line 35
    .line 36
    const/4 v8, -0x1

    .line 37
    if-ne v2, v8, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const/4 v8, 0x0

    .line 41
    :goto_1
    if-ge v8, v7, :cond_3

    .line 42
    .line 43
    const-string v9, "null"

    .line 44
    .line 45
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    add-int v10, v2, v8

    .line 50
    .line 51
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eq v9, v10, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    if-le v4, v7, :cond_4

    .line 62
    .line 63
    add-int/lit8 v4, v2, 0x4

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Lpc/j;->g(C)B

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/4 v6, 0x1

    .line 77
    add-int/2addr v2, v7

    .line 78
    iput v2, v1, Lha/e;->b:I

    .line 79
    .line 80
    :cond_5
    :goto_2
    if-nez v6, :cond_6

    .line 81
    .line 82
    return v5

    .line 83
    :cond_6
    return v0
.end method

.method public final w()B
    .locals 7

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    long-to-int v3, v1

    .line 8
    int-to-byte v3, v3

    .line 9
    int-to-long v4, v3

    .line 10
    cmp-long v6, v1, v4

    .line 11
    .line 12
    if-nez v6, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Failed to parse byte for input \'"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x27

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x6

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {v0, v1, v2, v4, v3}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v4
.end method

.method public final y()S
    .locals 7

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    long-to-int v3, v1

    .line 8
    int-to-short v3, v3

    .line 9
    int-to-long v4, v3

    .line 10
    cmp-long v6, v1, v4

    .line 11
    .line 12
    if-nez v6, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Failed to parse short for input \'"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x27

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x6

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {v0, v1, v2, v4, v3}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v4
.end method

.method public final z()F
    .locals 5

    .line 1
    iget-object v0, p0, Lpc/r;->k:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v3, p0, Lpc/r;->i:Loc/b;

    .line 13
    .line 14
    iget-object v3, v3, Loc/b;->a:Lma/r;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 24
    .line 25
    .line 26
    cmpg-float v3, v3, v4

    .line 27
    .line 28
    if-gtz v3, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lpc/j;->o(Lha/e;Ljava/lang/Number;)V

    .line 36
    .line 37
    .line 38
    throw v2

    .line 39
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "Failed to parse type \'float\' for input \'"

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x27

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x6

    .line 60
    invoke-static {v0, v1, v3, v2, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    throw v2
.end method
