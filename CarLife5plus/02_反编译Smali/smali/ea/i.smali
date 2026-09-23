.class public final Lea/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lxa/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public final b(Lv9/b;Lv9/b;Lv9/e;)I
    .locals 6

    .line 1
    const-string p3, "superDescriptor"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "subDescriptor"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of p3, p2, Lga/e;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eqz p3, :cond_8

    .line 15
    .line 16
    move-object p3, p2

    .line 17
    check-cast p3, Lga/e;

    .line 18
    .line 19
    invoke-virtual {p3}, Ly9/u;->getTypeParameters()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    invoke-static {p1, p2}, Lxa/j;->i(Lv9/b;Lv9/b;)Lxa/i;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lxa/i;->b()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p3}, Ly9/u;->S()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v3, "getValueParameters(...)"

    .line 53
    .line 54
    invoke-static {v1, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v3, Lea/d;->e:Lea/d;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lwb/l;->N(Lwb/j;Lf9/k;)Lwb/p;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v3, p3, Ly9/u;->g:Llb/w;

    .line 68
    .line 69
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Ls8/o;

    .line 73
    .line 74
    invoke-direct {v4, v0, v3}, Ls8/o;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    new-array v5, v3, [Lwb/j;

    .line 79
    .line 80
    aput-object v1, v5, v2

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    aput-object v4, v5, v1

    .line 84
    .line 85
    invoke-static {v5}, Ls8/l;->K([Ljava/lang/Object;)Lwb/j;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v4}, Lwb/l;->K(Lwb/j;)Lwb/i;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object p3, p3, Ly9/u;->i:Ly9/v;

    .line 94
    .line 95
    if-eqz p3, :cond_3

    .line 96
    .line 97
    invoke-virtual {p3}, Ly9/v;->getType()Llb/w;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 p3, 0x0

    .line 103
    :goto_1
    invoke-static {p3}, Lp9/x1;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-static {p3}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    new-array v3, v3, [Lwb/j;

    .line 112
    .line 113
    aput-object v4, v3, v2

    .line 114
    .line 115
    aput-object p3, v3, v1

    .line 116
    .line 117
    invoke-static {v3}, Ls8/l;->K([Ljava/lang/Object;)Lwb/j;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-static {p3}, Lwb/l;->K(Lwb/j;)Lwb/i;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    new-instance v3, Lwb/g;

    .line 126
    .line 127
    invoke-direct {v3, p3}, Lwb/g;-><init>(Lwb/i;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-virtual {v3}, Lwb/g;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_5

    .line 135
    .line 136
    invoke-virtual {v3}, Lwb/g;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    check-cast p3, Llb/w;

    .line 141
    .line 142
    invoke-virtual {p3}, Llb/w;->B0()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_4

    .line 151
    .line 152
    invoke-virtual {p3}, Llb/w;->G0()Llb/x0;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    instance-of p3, p3, Lja/h;

    .line 157
    .line 158
    if-nez p3, :cond_4

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    new-instance p3, Lja/f;

    .line 162
    .line 163
    invoke-direct {p3}, Lja/f;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v3, Llb/s0;

    .line 167
    .line 168
    invoke-direct {v3, p3}, Llb/s0;-><init>(Llb/q0;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, v3}, Lv9/o0;->e(Llb/s0;)Lv9/l;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lv9/b;

    .line 176
    .line 177
    if-nez p1, :cond_6

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    instance-of p3, p1, Ly9/l0;

    .line 181
    .line 182
    if-eqz p3, :cond_7

    .line 183
    .line 184
    move-object p3, p1

    .line 185
    check-cast p3, Ly9/l0;

    .line 186
    .line 187
    invoke-virtual {p3}, Ly9/u;->getTypeParameters()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-nez v3, :cond_7

    .line 196
    .line 197
    invoke-interface {p3}, Lv9/t;->r0()Lv9/s;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-interface {p1}, Lv9/s;->A()Lv9/s;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {p1}, Lv9/s;->build()Lv9/t;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_7
    sget-object p3, Lxa/j;->c:Lxa/j;

    .line 213
    .line 214
    invoke-virtual {p3, p1, p2, v2}, Lxa/j;->n(Lv9/b;Lv9/b;Z)Lxa/i;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lxa/i;->b()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    const-string p2, "getResult(...)"

    .line 223
    .line 224
    invoke-static {p1, p2}, La2/f;->O(ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    sget-object p2, Lea/h;->a:[I

    .line 228
    .line 229
    invoke-static {p1}, Le1/d;->b(I)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    aget p1, p2, p1

    .line 234
    .line 235
    if-ne p1, v1, :cond_8

    .line 236
    .line 237
    return v1

    .line 238
    :cond_8
    :goto_2
    return v0
.end method
