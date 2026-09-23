.class public final Lxa/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lmb/c;


# static fields
.field public static final a:Lxa/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxa/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxa/b;->a:Lxa/b;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(I)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p0, v2, :cond_0

    .line 7
    .line 8
    const-string p0, "a"

    .line 9
    .line 10
    aput-object p0, v0, v1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "b"

    .line 14
    .line 15
    aput-object p0, v0, v1

    .line 16
    .line 17
    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1"

    .line 18
    .line 19
    aput-object p0, v0, v2

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    const-string v1, "equals"

    .line 23
    .line 24
    aput-object v1, v0, p0

    .line 25
    .line 26
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 27
    .line 28
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public static e(Lv9/b;)Lv9/m0;
    .locals 3

    .line 1
    :goto_0
    instance-of v0, p0, Lv9/c;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lv9/c;

    .line 7
    .line 8
    invoke-interface {v0}, Lv9/c;->f()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Lv9/c;->m()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "getOverriddenDescriptors(...)"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p0, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-static {p0}, Ls8/p;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lv9/c;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_2
    :goto_1
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method


# virtual methods
.method public a(Llb/k0;Llb/k0;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    invoke-static {p1}, Lxa/b;->b(I)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Lxa/b;->b(I)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public c(Lv9/k;Lv9/k;Z)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lv9/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p2, Lv9/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lv9/e;

    .line 10
    .line 11
    check-cast p2, Lv9/e;

    .line 12
    .line 13
    invoke-interface {p1}, Lv9/h;->t()Llb/k0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p2}, Lv9/h;->t()Llb/k0;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    instance-of v0, p1, Lv9/q0;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    instance-of v0, p2, Lv9/q0;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast p1, Lv9/q0;

    .line 35
    .line 36
    check-cast p2, Lv9/q0;

    .line 37
    .line 38
    sget-object v0, Lxa/a;->a:Lxa/a;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p3, v0}, Lxa/b;->d(Lv9/q0;Lv9/q0;ZLf9/n;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_1
    instance-of v0, p1, Lv9/b;

    .line 46
    .line 47
    if-eqz v0, :cond_c

    .line 48
    .line 49
    instance-of v0, p2, Lv9/b;

    .line 50
    .line 51
    if-eqz v0, :cond_c

    .line 52
    .line 53
    check-cast p1, Lv9/b;

    .line 54
    .line 55
    check-cast p2, Lv9/b;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x1

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_2
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p2}, Lv9/k;->getName()Lua/e;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v2, 0x0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_3
    instance-of v0, p1, Lv9/w;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    instance-of v0, p2, Lv9/w;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    move-object v0, p1

    .line 92
    check-cast v0, Lv9/w;

    .line 93
    .line 94
    invoke-interface {v0}, Lv9/w;->H()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    move-object v3, p2

    .line 99
    check-cast v3, Lv9/w;

    .line 100
    .line 101
    invoke-interface {v3}, Lv9/w;->H()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eq v0, v3, :cond_4

    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_4
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {p2}, Lv9/k;->k()Lv9/k;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v0, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    if-nez p3, :cond_5

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    invoke-static {p1}, Lxa/b;->e(Lv9/b;)Lv9/m0;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {p2}, Lxa/b;->e(Lv9/b;)Lv9/m0;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v0, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    invoke-static {p1}, Lxa/d;->o(Lv9/k;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_b

    .line 146
    .line 147
    invoke-static {p2}, Lxa/d;->o(Lv9/k;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {p2}, Lv9/k;->k()Lv9/k;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    instance-of v4, v0, Lv9/c;

    .line 163
    .line 164
    if-nez v4, :cond_9

    .line 165
    .line 166
    instance-of v4, v3, Lv9/c;

    .line 167
    .line 168
    if-eqz v4, :cond_8

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_8
    invoke-virtual {p0, v0, v3, p3}, Lxa/b;->c(Lv9/k;Lv9/k;Z)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    goto :goto_1

    .line 176
    :cond_9
    :goto_0
    const/4 v0, 0x0

    .line 177
    :goto_1
    if-nez v0, :cond_a

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_a
    new-instance v0, Lk2/i;

    .line 181
    .line 182
    invoke-direct {v0, p1, p2, p3}, Lk2/i;-><init>(Lv9/b;Lv9/b;Z)V

    .line 183
    .line 184
    .line 185
    new-instance p3, Lxa/j;

    .line 186
    .line 187
    invoke-direct {p3, v0}, Lxa/j;-><init>(Lmb/c;)V

    .line 188
    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p3, p1, p2, v0, v1}, Lxa/j;->m(Lv9/b;Lv9/b;Lv9/e;Z)Lxa/i;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Lxa/i;->b()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-ne v3, v1, :cond_b

    .line 200
    .line 201
    invoke-virtual {p3, p2, p1, v0, v1}, Lxa/j;->m(Lv9/b;Lv9/b;Lv9/e;Z)Lxa/i;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lxa/i;->b()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-ne p1, v1, :cond_b

    .line 210
    .line 211
    :goto_2
    return v1

    .line 212
    :cond_b
    :goto_3
    return v2

    .line 213
    :cond_c
    instance-of p3, p1, Lv9/d0;

    .line 214
    .line 215
    if-eqz p3, :cond_d

    .line 216
    .line 217
    instance-of p3, p2, Lv9/d0;

    .line 218
    .line 219
    if-eqz p3, :cond_d

    .line 220
    .line 221
    check-cast p1, Lv9/d0;

    .line 222
    .line 223
    check-cast p1, Ly9/c0;

    .line 224
    .line 225
    iget-object p1, p1, Ly9/c0;->e:Lua/c;

    .line 226
    .line 227
    check-cast p2, Lv9/d0;

    .line 228
    .line 229
    check-cast p2, Ly9/c0;

    .line 230
    .line 231
    iget-object p2, p2, Ly9/c0;->e:Lua/c;

    .line 232
    .line 233
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    return p1

    .line 238
    :cond_d
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    return p1
.end method

.method public d(Lv9/q0;Lv9/q0;ZLf9/n;)Z
    .locals 3

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p2}, Lv9/k;->k()Lv9/k;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p2}, Lv9/k;->k()Lv9/k;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    instance-of v2, v0, Lv9/c;

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    instance-of v2, v1, Lv9/c;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v0, v1, p3}, Lxa/b;->c(Lv9/k;Lv9/k;Z)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    invoke-interface {p4, v0, v1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    :goto_1
    if-nez p3, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    invoke-interface {p1}, Lv9/q0;->getIndex()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-interface {p2}, Lv9/q0;->getIndex()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-ne p1, p2, :cond_5

    .line 77
    .line 78
    :goto_2
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_5
    :goto_3
    const/4 p1, 0x0

    .line 81
    return p1
.end method
