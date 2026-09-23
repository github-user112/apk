.class public abstract Lv9/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lfc/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfc/s;

    .line 2
    .line 3
    const-string v1, "InvalidModuleNotifier"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lv9/v;->a:Lfc/s;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Llb/a0;Lv9/i;I)La2/b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-static {p1}, Lnb/l;->f(Lv9/k;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lv9/i;->q()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, p2

    .line 20
    invoke-interface {p1}, Lv9/i;->I()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lxa/d;->o(Lv9/k;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_1
    new-instance v1, La2/b;

    .line 41
    .line 42
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v1, p1, p0, v0}, La2/b;-><init>(Lv9/i;Ljava/util/List;La2/b;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v2, La2/b;

    .line 71
    .line 72
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    instance-of v4, v3, Lv9/i;

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    move-object v0, v3

    .line 81
    check-cast v0, Lv9/i;

    .line 82
    .line 83
    :cond_3
    invoke-static {p0, v0, v1}, Lv9/v;->a(Llb/a0;Lv9/i;I)La2/b;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {v2, p1, p2, p0}, La2/b;-><init>(Lv9/i;Ljava/util/List;La2/b;)V

    .line 88
    .line 89
    .line 90
    return-object v2

    .line 91
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final b(Lv9/g0;Lua/c;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lv9/g0;->a(Lua/c;Ljava/util/ArrayList;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final c(Lv9/i;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-interface {p0}, Lv9/i;->q()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getDeclaredTypeParameters(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lv9/i;->I()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v2, v2, Lv9/b;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    sget v2, Lbb/e;->a:I

    .line 26
    .line 27
    sget-object v2, Lbb/b;->b:Lbb/b;

    .line 28
    .line 29
    invoke-static {p0, v2}, Lwb/l;->M(Ljava/lang/Object;Lf9/k;)Lwb/j;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    instance-of v4, v3, Lwb/e;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    check-cast v3, Lwb/e;

    .line 39
    .line 40
    invoke-interface {v3}, Lwb/e;->a()Lwb/j;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v4, Lwb/d;

    .line 46
    .line 47
    invoke-direct {v4, v3, v5}, Lwb/d;-><init>(Lwb/j;I)V

    .line 48
    .line 49
    .line 50
    move-object v3, v4

    .line 51
    :goto_0
    new-instance v4, Ls8/o;

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    invoke-direct {v4, v6, v3}, Ls8/o;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v3, Lv9/q;->d:Lv9/q;

    .line 58
    .line 59
    new-instance v6, Lwb/h;

    .line 60
    .line 61
    invoke-direct {v6, v4, v5, v3}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 62
    .line 63
    .line 64
    sget-object v3, Lv9/q;->e:Lv9/q;

    .line 65
    .line 66
    new-instance v4, Lwb/i;

    .line 67
    .line 68
    sget-object v7, Lwb/n;->i:Lwb/n;

    .line 69
    .line 70
    invoke-direct {v4, v6, v3, v7}, Lwb/i;-><init>(Lwb/j;Lf9/k;Lf9/k;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {p0, v2}, Lwb/l;->M(Ljava/lang/Object;Lf9/k;)Lwb/j;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    instance-of v4, v2, Lwb/e;

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    check-cast v2, Lwb/e;

    .line 86
    .line 87
    invoke-interface {v2}, Lwb/e;->a()Lwb/j;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance v4, Lwb/d;

    .line 93
    .line 94
    invoke-direct {v4, v2, v5}, Lwb/d;-><init>(Lwb/j;I)V

    .line 95
    .line 96
    .line 97
    move-object v2, v4

    .line 98
    :goto_1
    invoke-interface {v2}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x0

    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    instance-of v6, v4, Lv9/e;

    .line 114
    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move-object v4, v5

    .line 119
    :goto_2
    check-cast v4, Lv9/e;

    .line 120
    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    invoke-interface {v4}, Lv9/h;->t()Llb/k0;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    invoke-interface {v2}, Llb/k0;->m()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    :cond_5
    if-nez v5, :cond_6

    .line 134
    .line 135
    sget-object v5, Ls8/w;->a:Ls8/w;

    .line 136
    .line 137
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_7

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_7

    .line 148
    .line 149
    invoke-interface {p0}, Lv9/i;->q()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_7
    invoke-static {v5, v3}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    .line 162
    .line 163
    const/16 v3, 0xa

    .line 164
    .line 165
    invoke-static {v1, v3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Lv9/q0;

    .line 187
    .line 188
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    new-instance v5, Lv9/d;

    .line 196
    .line 197
    invoke-direct {v5, v3, p0, v4}, Lv9/d;-><init>(Lv9/q0;Lv9/i;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_8
    invoke-static {v2, v0}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0
.end method

.method public static final d(Lv9/y;Lua/b;)Lv9/e;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "classId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lv9/v;->e(Lv9/y;Lua/b;)Lv9/h;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of p1, p0, Lv9/e;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Lv9/e;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static final e(Lv9/y;Lua/b;)Lv9/h;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "classId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lxa/k;->a:Lfc/s;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lv9/y;->v0(Lfc/s;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p1, Lua/b;->a:Lua/c;

    .line 20
    .line 21
    invoke-interface {p0, v0}, Lv9/y;->y0(Lua/c;)Lv9/h0;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p1, p1, Lua/b;->b:Lua/c;

    .line 26
    .line 27
    iget-object p1, p1, Lua/c;->a:Lua/d;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lua/d;->e(Lua/d;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p0, Ly9/x;

    .line 37
    .line 38
    iget-object p0, p0, Ly9/x;->g:Leb/k;

    .line 39
    .line 40
    invoke-static {p1}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lua/e;

    .line 45
    .line 46
    sget-object v1, Lda/b;->g:Lda/b;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Leb/k;->e(Lua/e;Lda/b;)Lv9/h;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 v0, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    const/4 v2, 0x1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lua/e;

    .line 80
    .line 81
    instance-of v3, p0, Lv9/e;

    .line 82
    .line 83
    if-nez v3, :cond_1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    check-cast p0, Lv9/e;

    .line 87
    .line 88
    invoke-interface {p0}, Lv9/e;->m0()Leb/o;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {p0, v2, v1}, Leb/q;->e(Lua/e;Lda/b;)Lv9/h;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    instance-of v2, p0, Lv9/e;

    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    check-cast p0, Lv9/e;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object p0, v0

    .line 104
    :goto_1
    if-eqz p0, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    :goto_2
    return-object v0

    .line 108
    :cond_4
    return-object p0

    .line 109
    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    .line 110
    .line 111
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public static final f(Lv9/y;Lua/b;Lba/a;)Lv9/e;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "classId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "notFoundClasses"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lv9/v;->d(Lv9/y;Lua/b;)Lv9/e;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lv9/r;->h:Lv9/r;

    .line 24
    .line 25
    invoke-static {p1, p0}, Lwb/l;->M(Ljava/lang/Object;Lf9/k;)Lwb/j;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object v0, Lv9/q;->b:Lv9/q;

    .line 30
    .line 31
    invoke-static {p0, v0}, Lwb/l;->N(Lwb/j;Lf9/k;)Lwb/p;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p1, p0}, Lba/a;->x(Lua/b;Ljava/util/List;)Lv9/e;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static final g(Lv9/k;)Lv9/h;
    .locals 1

    .line 1
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    instance-of p0, p0, Lv9/d0;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lv9/k;->k()Lv9/k;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    instance-of p0, p0, Lv9/d0;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Lv9/v;->g(Lv9/k;)Lv9/h;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    instance-of p0, v0, Lv9/h;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    check-cast v0, Lv9/h;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static final h(Lv9/g0;Lua/c;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Lv9/g0;->b(Lua/c;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final i(Lv9/g0;Lua/c;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Lv9/v;->b(Lv9/g0;Lua/c;Ljava/util/ArrayList;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final j(Lv9/y;Lua/c;)Lv9/e;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lua/c;->a:Lua/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {p1}, Lua/c;->b()Lua/c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p0, v1}, Lv9/y;->y0(Lua/c;)Lv9/h0;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ly9/x;

    .line 30
    .line 31
    iget-object v1, v1, Ly9/x;->g:Leb/k;

    .line 32
    .line 33
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sget-object v4, Lda/b;->a:Lda/b;

    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Leb/k;->e(Lua/e;Lda/b;)Lv9/h;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    instance-of v3, v1, Lv9/e;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    check-cast v1, Lv9/e;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v1, v2

    .line 51
    :goto_0
    if-eqz v1, :cond_2

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    invoke-virtual {p1}, Lua/c;->b()Lua/c;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Lv9/v;->j(Lv9/y;Lua/c;)Lv9/e;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    invoke-interface {p0}, Lv9/e;->m0()Leb/o;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p0, p1, v4}, Leb/q;->e(Lua/e;Lda/b;)Lv9/h;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object p0, v2

    .line 80
    :goto_1
    instance-of p1, p0, Lv9/e;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    check-cast p0, Lv9/e;

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_4
    :goto_2
    return-object v2
.end method
