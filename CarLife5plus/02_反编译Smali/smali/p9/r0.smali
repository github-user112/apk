.class public final Lp9/r0;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lp9/t0;


# direct methods
.method public synthetic constructor <init>(Lp9/t0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp9/r0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp9/r0;->b:Lp9/t0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lp9/r0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp9/r0;->b:Lp9/t0;

    .line 7
    .line 8
    iget-object v0, v0, Lp9/t0;->c:Lp9/v1;

    .line 9
    .line 10
    sget-object v1, Lp9/t0;->g:[Lm9/u;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    invoke-virtual {v0}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Laa/c;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Laa/c;->b:Loa/b;

    .line 24
    .line 25
    iget-object v1, v0, Loa/b;->c:[Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, v0, Loa/b;->e:[Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-static {v1, v2}, Lta/g;->h([Ljava/lang/String;[Ljava/lang/String;)Lr8/j;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, v1, Lr8/j;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Lta/f;

    .line 40
    .line 41
    iget-object v1, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lpa/e0;

    .line 44
    .line 45
    new-instance v3, Lr8/p;

    .line 46
    .line 47
    iget-object v0, v0, Loa/b;->b:Lra/e;

    .line 48
    .line 49
    invoke-direct {v3, v2, v1, v0}, Lr8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v3, 0x0

    .line 54
    :goto_0
    return-object v3

    .line 55
    :pswitch_0
    iget-object v0, p0, Lp9/r0;->b:Lp9/t0;

    .line 56
    .line 57
    iget-object v1, v0, Lp9/t0;->c:Lp9/v1;

    .line 58
    .line 59
    sget-object v2, Lp9/t0;->g:[Lm9/u;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    aget-object v2, v2, v3

    .line 63
    .line 64
    invoke-virtual {v1}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Laa/c;

    .line 69
    .line 70
    if-eqz v1, :cond_b

    .line 71
    .line 72
    iget-object v0, v0, Lp9/e0;->a:Lp9/v1;

    .line 73
    .line 74
    sget-object v2, Lp9/e0;->b:[Lm9/u;

    .line 75
    .line 76
    aget-object v2, v2, v3

    .line 77
    .line 78
    invoke-virtual {v0}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "getValue(...)"

    .line 83
    .line 84
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    check-cast v0, Laa/f;

    .line 88
    .line 89
    iget-object v0, v0, Laa/f;->b:La2/b;

    .line 90
    .line 91
    iget-object v2, v0, La2/b;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Lna/f;

    .line 94
    .line 95
    iget-object v3, v0, La2/b;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    .line 99
    iget-object v4, v1, Laa/c;->a:Ljava/lang/Class;

    .line 100
    .line 101
    invoke-static {v4}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-nez v6, :cond_a

    .line 110
    .line 111
    invoke-static {v4}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget-object v4, v4, Lua/b;->a:Lua/c;

    .line 116
    .line 117
    iget-object v6, v1, Laa/c;->b:Loa/b;

    .line 118
    .line 119
    iget-object v7, v6, Loa/b;->a:Loa/a;

    .line 120
    .line 121
    sget-object v8, Loa/a;->h:Loa/a;

    .line 122
    .line 123
    if-ne v7, v8, :cond_5

    .line 124
    .line 125
    iget-object v6, v6, Loa/b;->c:[Ljava/lang/String;

    .line 126
    .line 127
    const/4 v9, 0x0

    .line 128
    if-ne v7, v8, :cond_1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move-object v6, v9

    .line 132
    :goto_1
    if-eqz v6, :cond_2

    .line 133
    .line 134
    invoke-static {v6}, Ls8/l;->J([Ljava/lang/Object;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    :cond_2
    if-nez v9, :cond_3

    .line 139
    .line 140
    sget-object v9, Ls8/w;->a:Ls8/w;

    .line 141
    .line 142
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_6

    .line 156
    .line 157
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v8}, Lcb/b;->c(Ljava/lang/String;)Lcb/b;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    new-instance v9, Lua/c;

    .line 168
    .line 169
    iget-object v8, v8, Lcb/b;->a:Ljava/lang/String;

    .line 170
    .line 171
    const/16 v10, 0x2f

    .line 172
    .line 173
    const/16 v11, 0x2e

    .line 174
    .line 175
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-direct {v9, v8}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v8, Lua/b;

    .line 183
    .line 184
    invoke-virtual {v9}, Lua/c;->b()Lua/c;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    iget-object v9, v9, Lua/c;->a:Lua/d;

    .line 189
    .line 190
    invoke-virtual {v9}, Lua/d;->f()Lua/e;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-direct {v8, v10, v9}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 195
    .line 196
    .line 197
    iget-object v9, v0, La2/b;->c:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v9, Laa/b;

    .line 200
    .line 201
    invoke-virtual {v2}, Lna/f;->c()Lhb/i;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    iget-object v10, v10, Lhb/i;->c:Lhb/j;

    .line 206
    .line 207
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    sget-object v10, Lra/e;->g:Lra/e;

    .line 211
    .line 212
    invoke-static {v9, v8, v10}, Lg5/a;->F(Laa/b;Lua/b;Lra/e;)Laa/c;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    if-eqz v8, :cond_4

    .line 217
    .line 218
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    :cond_6
    new-instance v0, Lu9/l;

    .line 227
    .line 228
    invoke-virtual {v2}, Lna/f;->c()Lhb/i;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    iget-object v7, v7, Lhb/i;->b:Lv9/y;

    .line 233
    .line 234
    const/4 v8, 0x1

    .line 235
    invoke-direct {v0, v7, v4, v8}, Lu9/l;-><init>(Lv9/y;Lua/c;I)V

    .line 236
    .line 237
    .line 238
    new-instance v7, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    if-eqz v8, :cond_8

    .line 252
    .line 253
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    check-cast v8, Laa/c;

    .line 258
    .line 259
    invoke-virtual {v2, v0, v8}, Lna/f;->a(Lv9/d0;Laa/c;)Ljb/r;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    if-eqz v8, :cond_7

    .line 264
    .line 265
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_8
    invoke-static {v7}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v6, "package "

    .line 276
    .line 277
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v4, " ("

    .line 284
    .line 285
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const/16 v1, 0x29

    .line 292
    .line 293
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v1, v0}, Li2/c;->m(Ljava/lang/String;Ljava/util/List;)Leb/o;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v3, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    if-nez v1, :cond_9

    .line 309
    .line 310
    move-object v6, v0

    .line 311
    goto :goto_4

    .line 312
    :cond_9
    move-object v6, v1

    .line 313
    :cond_a
    :goto_4
    const-string v0, "getOrPut(...)"

    .line 314
    .line 315
    invoke-static {v6, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    check-cast v6, Leb/o;

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_b
    sget-object v6, Leb/n;->b:Leb/n;

    .line 322
    .line 323
    :goto_5
    return-object v6

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
