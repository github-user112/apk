.class public Lp9/y1;
.super Lg9/z;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


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

.method public static j(Lg9/d;)Lp9/h0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg9/d;->d()Lm9/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lp9/h0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lp9/h0;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lp9/d;->b:Lp9/d;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final a(Lg9/j;)Lm9/f;
    .locals 6

    .line 1
    new-instance v0, Lp9/j0;

    .line 2
    .line 3
    invoke-static {p1}, Lp9/y1;->j(Lg9/d;)Lp9/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lg9/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p1, Lg9/d;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p1, Lg9/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct/range {v0 .. v5}, Lp9/j0;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Lv9/t;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lm9/c;
    .locals 0

    .line 1
    invoke-static {p1}, Lp9/c;->a(Ljava/lang/Class;)Lp9/d0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final c(Ljava/lang/Class;)Lm9/e;
    .locals 3

    .line 1
    sget-object v0, Lp9/c;->a:Lu0/j;

    .line 2
    .line 3
    const-string v0, "jClass"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lp9/c;->b:Lu0/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lu0/j;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lf9/k;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v2, p1

    .line 39
    :cond_1
    :goto_0
    check-cast v2, Lm9/e;

    .line 40
    .line 41
    return-object v2
.end method

.method public final d(Ld1/j;)Lm9/i;
    .locals 4

    .line 1
    new-instance v0, Lp9/l0;

    .line 2
    .line 3
    invoke-static {p1}, Lp9/y1;->j(Lg9/d;)Lp9/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lg9/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p1, Lg9/d;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lg9/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p1}, Lp9/l0;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final e(Lg9/o;)Lm9/k;
    .locals 4

    .line 1
    new-instance v0, Lp9/n0;

    .line 2
    .line 3
    invoke-static {p1}, Lp9/y1;->j(Lg9/d;)Lp9/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lg9/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p1, Lg9/d;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lg9/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p1}, Lp9/n0;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final f(Lc1/q0;)Lm9/r;
    .locals 4

    .line 1
    new-instance v0, Lp9/b1;

    .line 2
    .line 3
    invoke-static {p1}, Lp9/y1;->j(Lg9/d;)Lp9/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lg9/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p1, Lg9/d;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lg9/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p1}, Lp9/b1;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final g(Lg9/r;)Lm9/t;
    .locals 4

    .line 1
    new-instance v0, Lp9/e1;

    .line 2
    .line 3
    invoke-static {p1}, Lp9/y1;->j(Lg9/d;)Lp9/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lg9/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p1, Lg9/d;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lg9/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p1}, Lp9/e1;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final h(Lg9/i;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lkotlin/Metadata;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lkotlin/Metadata;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    array-length v3, v2

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    :cond_1
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v3, Lta/g;->a:Lva/g;

    .line 33
    .line 34
    const-string v3, "strings"

    .line 35
    .line 36
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 40
    .line 41
    invoke-static {v2}, Lta/a;->a([Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Lta/g;->a:Lva/g;

    .line 49
    .line 50
    invoke-static {v3, v1}, Lta/g;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lta/f;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    sget-object v1, Lta/g;->a:Lva/g;

    .line 55
    .line 56
    sget-object v2, Lpa/a0;->w:Lpa/a;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v4, Lva/e;

    .line 62
    .line 63
    invoke-direct {v4, v3}, Lva/e;-><init>(Ljava/io/InputStream;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v4, v1}, Lva/v;->a(Lva/e;Lva/g;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lva/a;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    :try_start_0
    invoke-virtual {v4, v2}, Lva/e;->a(I)V
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lva/b;->b(Lva/a;)V

    .line 77
    .line 78
    .line 79
    move-object v5, v1

    .line 80
    check-cast v5, Lpa/a0;

    .line 81
    .line 82
    new-instance v8, Lra/e;

    .line 83
    .line 84
    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    and-int/lit8 v0, v0, 0x8

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    :cond_3
    invoke-direct {v8, v1, v2}, Lra/e;-><init>([IZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    new-instance v7, Lra/g;

    .line 105
    .line 106
    iget-object v0, v5, Lpa/a0;->p:Lpa/y0;

    .line 107
    .line 108
    const-string v1, "getTypeTable(...)"

    .line 109
    .line 110
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v7, v0}, Lra/g;-><init>(Lpa/y0;)V

    .line 114
    .line 115
    .line 116
    sget-object v9, Lo9/a;->i:Lo9/a;

    .line 117
    .line 118
    invoke-static/range {v4 .. v9}, Lp9/c2;->f(Ljava/lang/Class;Lva/k;Lra/f;Lra/g;Lra/a;Lf9/n;)Lv9/b;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Ly9/l0;

    .line 123
    .line 124
    new-instance v1, Lp9/j0;

    .line 125
    .line 126
    sget-object v2, Lp9/d;->b:Lp9/d;

    .line 127
    .line 128
    invoke-direct {v1, v2, v0}, Lp9/j0;-><init>(Lp9/h0;Lv9/t;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    if-eqz v1, :cond_4

    .line 132
    .line 133
    invoke-static {v1}, Lp9/c2;->b(Ljava/lang/Object;)Lp9/j0;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    sget-object p1, Lp9/z1;->a:Lwa/g;

    .line 140
    .line 141
    invoke-virtual {v0}, Lp9/j0;->r()Lv9/t;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-static {v1, p1}, Lp9/z1;->a(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Lv9/b;->S()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v2, "getValueParameters(...)"

    .line 158
    .line 159
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-object v5, Lp9/b;->i:Lp9/b;

    .line 163
    .line 164
    const/16 v6, 0x30

    .line 165
    .line 166
    const-string v2, ", "

    .line 167
    .line 168
    const-string v3, "("

    .line 169
    .line 170
    const-string v4, ")"

    .line 171
    .line 172
    invoke-static/range {v0 .. v6}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 173
    .line 174
    .line 175
    const-string v0, " -> "

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Lv9/b;->p()Llb/w;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p1}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    return-object p1

    .line 199
    :cond_4
    invoke-super {p0, p1}, Lg9/z;->h(Lg9/i;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    return-object p1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    move-object p1, v0

    .line 206
    iput-object v1, p1, Lva/q;->a:Lva/a;

    .line 207
    .line 208
    throw p1
.end method

.method public final i(Lg9/n;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lp9/y1;->h(Lg9/i;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
