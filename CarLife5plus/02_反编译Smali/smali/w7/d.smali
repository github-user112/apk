.class public final Lw7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lt7/e;


# instance fields
.field public final a:Lt7/h;

.field public final b:Lt7/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lt7/h;->a:Lt7/h;

    .line 5
    .line 6
    iput-object v0, p0, Lw7/d;->a:Lt7/h;

    .line 7
    .line 8
    sget-object v0, Lt7/f;->e:Lt7/f;

    .line 9
    .line 10
    iput-object v0, p0, Lw7/d;->b:Lt7/f;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(ILf1/s;)V
    .locals 8

    .line 1
    const v0, 0x335c59e6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_1
    :goto_0
    const v0, 0x6e3c21fe

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 35
    .line 36
    if-ne v0, v2, :cond_6

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :try_start_0
    const-class v2, Lt7/e;

    .line 40
    .line 41
    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "load(...)"

    .line 46
    .line 47
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lw7/b;

    .line 55
    .line 56
    invoke-direct {v3, v0}, Lw7/b;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lwb/h;

    .line 60
    .line 61
    invoke-direct {v4, v2, v0, v3}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Lw7/b;->b:Lw7/b;

    .line 65
    .line 66
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v5, Lwb/b;

    .line 72
    .line 73
    invoke-interface {v4}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-direct {v5, v4, v2}, Lwb/b;-><init>(Ljava/util/Iterator;Lf9/k;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {v5}, Ls8/b;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {v5}, Ls8/b;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    move-object v4, v2

    .line 91
    check-cast v4, Lt7/e;

    .line 92
    .line 93
    invoke-interface {v4}, Lt7/e;->g()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v4}, Lt7/e;->e()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    new-instance v7, Lr8/j;

    .line 106
    .line 107
    invoke-direct {v7, v6, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-nez v4, :cond_2

    .line 115
    .line 116
    new-instance v4, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_0
    move-exception v2

    .line 126
    goto :goto_4

    .line 127
    :cond_2
    :goto_2
    check-cast v4, Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-static {v3}, Ls8/b0;->N(Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    new-instance v3, Lw7/c;

    .line 138
    .line 139
    invoke-direct {v3, v1}, Lw7/c;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v3}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 147
    .line 148
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_4

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lr8/j;

    .line 166
    .line 167
    iget-object v5, v4, Lr8/j;->a:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v5, Lr8/j;

    .line 170
    .line 171
    iget-object v4, v4, Lr8/j;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v4, Ljava/util/List;

    .line 174
    .line 175
    iget-object v5, v5, Lr8/j;->a:Ljava/lang/Object;

    .line 176
    .line 177
    new-instance v6, Lw7/c;

    .line 178
    .line 179
    invoke-direct {v6, v0}, Lw7/c;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v4, v6}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :goto_4
    invoke-static {v2}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    :cond_4
    invoke-static {v3}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    if-nez v2, :cond_5

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_5
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const-string v4, "\u6a21\u5757\u52a0\u8f7d\u5931\u8d25: "

    .line 208
    .line 209
    invoke-static {v4, v2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    new-array v0, v0, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v2, v0, v1

    .line 216
    .line 217
    const-string v2, "OptionLoader"

    .line 218
    .line 219
    invoke-virtual {v3, v2, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    sget-object v3, Ls8/x;->a:Ls8/x;

    .line 223
    .line 224
    :goto_5
    check-cast v3, Ljava/util/Map;

    .line 225
    .line 226
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p2, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    check-cast v0, Lf1/b1;

    .line 234
    .line 235
    invoke-virtual {p2, v1}, Lf1/s;->p(Z)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Ljava/util/Map;

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
    if-eqz v2, :cond_7

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
    new-instance v4, La8/j;

    .line 277
    .line 278
    const/16 v5, 0x19

    .line 279
    .line 280
    invoke-direct {v4, v5, v2}, La8/j;-><init>(ILjava/util/List;)V

    .line 281
    .line 282
    .line 283
    const v2, 0x1221d9aa

    .line 284
    .line 285
    .line 286
    invoke-static {v2, v4, p2}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    const/16 v4, 0x30

    .line 291
    .line 292
    invoke-static {v3, v2, p2, v4, v1}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_7
    :goto_7
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    if-eqz p2, :cond_8

    .line 301
    .line 302
    new-instance v0, Lw7/a;

    .line 303
    .line 304
    invoke-direct {v0, p1, v1, p0}, Lw7/a;-><init>(IILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 308
    .line 309
    :cond_8
    return-void
.end method

.method public final c(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->e(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()Lt7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lw7/d;->a:Lt7/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
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
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lt7/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lw7/d;->b:Lt7/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->h(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
