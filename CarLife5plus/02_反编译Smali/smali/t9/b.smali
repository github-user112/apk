.class public final Lt9/b;
.super Llb/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic c:Lt9/c;


# direct methods
.method public constructor <init>(Lt9/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt9/b;->c:Lt9/c;

    .line 2
    .line 3
    iget-object p1, p1, Lt9/c;->e:Lkb/l;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Llb/b;-><init>(Lkb/o;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 10

    .line 1
    iget-object v0, p0, Lt9/b;->c:Lt9/c;

    .line 2
    .line 3
    iget v1, v0, Lt9/c;->h:I

    .line 4
    .line 5
    iget-object v2, v0, Lt9/c;->g:Lt9/k;

    .line 6
    .line 7
    sget-object v3, Lt9/g;->c:Lt9/g;

    .line 8
    .line 9
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    sget-object v1, Lt9/c;->l:Lua/b;

    .line 16
    .line 17
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v4, Lt9/h;->c:Lt9/h;

    .line 23
    .line 24
    invoke-static {v2, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x2

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    new-instance v2, Lua/b;

    .line 34
    .line 35
    sget-object v4, Ls9/p;->k:Lua/c;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Lt9/k;->a(I)Lua/e;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v2, v4, v1}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 42
    .line 43
    .line 44
    new-array v1, v7, [Lua/b;

    .line 45
    .line 46
    sget-object v3, Lt9/c;->m:Lua/b;

    .line 47
    .line 48
    aput-object v3, v1, v6

    .line 49
    .line 50
    aput-object v2, v1, v5

    .line 51
    .line 52
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object v3, Lt9/j;->c:Lt9/j;

    .line 58
    .line 59
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    sget-object v1, Lt9/c;->l:Lua/b;

    .line 66
    .line 67
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object v4, Lt9/i;->c:Lt9/i;

    .line 73
    .line 74
    invoke-static {v2, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    new-instance v2, Lua/b;

    .line 81
    .line 82
    sget-object v4, Ls9/p;->f:Lua/c;

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Lt9/k;->a(I)Lua/e;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v2, v4, v1}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 89
    .line 90
    .line 91
    new-array v1, v7, [Lua/b;

    .line 92
    .line 93
    sget-object v3, Lt9/c;->m:Lua/b;

    .line 94
    .line 95
    aput-object v3, v1, v6

    .line 96
    .line 97
    aput-object v2, v1, v5

    .line 98
    .line 99
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_0
    iget-object v2, v0, Lt9/c;->f:Lv9/d0;

    .line 104
    .line 105
    check-cast v2, Ly9/c0;

    .line 106
    .line 107
    invoke-virtual {v2}, Ly9/c0;->C0()Lv9/y;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    .line 112
    .line 113
    const/16 v4, 0xa

    .line 114
    .line 115
    invoke-static {v1, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lua/b;

    .line 137
    .line 138
    invoke-static {v2, v5}, Lv9/v;->d(Lv9/y;Lua/b;)Lv9/e;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-eqz v6, :cond_4

    .line 143
    .line 144
    iget-object v5, v0, Lt9/c;->k:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v6}, Lv9/h;->t()Llb/k0;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-interface {v7}, Llb/k0;->m()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-static {v7, v5}, Ls8/p;->y0(ILjava/util/List;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-instance v7, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-static {v5, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-eqz v8, :cond_3

    .line 180
    .line 181
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    check-cast v8, Lv9/q0;

    .line 186
    .line 187
    new-instance v9, Llb/f0;

    .line 188
    .line 189
    invoke-interface {v8}, Lv9/h;->n()Llb/a0;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-direct {v9, v8}, Llb/f0;-><init>(Llb/w;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_3
    sget-object v5, Llb/h0;->b:Lu0/j;

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    sget-object v5, Llb/h0;->c:Llb/h0;

    .line 206
    .line 207
    invoke-static {v5, v6, v7}, Llb/c;->s(Llb/h0;Lv9/e;Ljava/util/List;)Llb/a0;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v2, "Built-in class "

    .line 220
    .line 221
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v2, " not found"

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_5
    invoke-static {v3}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    return-object v0

    .line 249
    :cond_6
    sget v0, Lvb/a;->a:I

    .line 250
    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 252
    .line 253
    const-string v1, "should not be called"

    .line 254
    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0
.end method

.method public final d()Lv9/n0;
    .locals 1

    .line 1
    sget-object v0, Lv9/n0;->c:Lv9/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lv9/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/b;->c:Lt9/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lv9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/b;->c:Lt9/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/b;->c:Lt9/c;

    .line 2
    .line 3
    iget-object v0, v0, Lt9/c;->k:Ljava/util/List;

    .line 4
    .line 5
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/b;->c:Lt9/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt9/c;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
