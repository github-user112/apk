.class public abstract Ls9/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Ls9/s;->values()[Ls9/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    .line 16
    aget-object v5, v0, v4

    .line 17
    .line 18
    iget-object v5, v5, Ls9/s;->b:Lua/e;

    .line 19
    .line 20
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v1}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Ls9/t;->a:Ljava/util/Set;

    .line 31
    .line 32
    invoke-static {}, Ls9/r;->values()[Ls9/r;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    array-length v2, v0

    .line 39
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    array-length v2, v0

    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_1
    if-ge v4, v2, :cond_1

    .line 45
    .line 46
    aget-object v5, v0, v4

    .line 47
    .line 48
    iget-object v5, v5, Ls9/r;->a:Lua/e;

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v1}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Ls9/t;->b:Ljava/util/HashMap;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v0, Ls9/t;->c:Ljava/util/HashMap;

    .line 72
    .line 73
    sget-object v0, Ls9/r;->b:Ls9/r;

    .line 74
    .line 75
    const-string v1, "ubyteArrayOf"

    .line 76
    .line 77
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v2, Lr8/j;

    .line 82
    .line 83
    invoke-direct {v2, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Ls9/r;->c:Ls9/r;

    .line 87
    .line 88
    const-string v1, "ushortArrayOf"

    .line 89
    .line 90
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v4, Lr8/j;

    .line 95
    .line 96
    invoke-direct {v4, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Ls9/r;->d:Ls9/r;

    .line 100
    .line 101
    const-string v1, "uintArrayOf"

    .line 102
    .line 103
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v5, Lr8/j;

    .line 108
    .line 109
    invoke-direct {v5, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Ls9/r;->e:Ls9/r;

    .line 113
    .line 114
    const-string v1, "ulongArrayOf"

    .line 115
    .line 116
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v6, Lr8/j;

    .line 121
    .line 122
    invoke-direct {v6, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x4

    .line 126
    new-array v1, v0, [Lr8/j;

    .line 127
    .line 128
    aput-object v2, v1, v3

    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    aput-object v4, v1, v2

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    aput-object v5, v1, v2

    .line 135
    .line 136
    const/4 v2, 0x3

    .line 137
    aput-object v6, v1, v2

    .line 138
    .line 139
    new-instance v2, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-static {v0}, Ls8/c0;->H(I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v1}, Ls8/b0;->M(Ljava/util/HashMap;[Lr8/j;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Ls9/s;->values()[Ls9/s;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 158
    .line 159
    .line 160
    array-length v2, v0

    .line 161
    const/4 v4, 0x0

    .line 162
    :goto_2
    if-ge v4, v2, :cond_2

    .line 163
    .line 164
    aget-object v5, v0, v4

    .line 165
    .line 166
    iget-object v5, v5, Ls9/s;->c:Lua/b;

    .line 167
    .line 168
    invoke-virtual {v5}, Lua/b;->f()Lua/e;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_2
    sput-object v1, Ls9/t;->d:Ljava/util/LinkedHashSet;

    .line 179
    .line 180
    invoke-static {}, Ls9/s;->values()[Ls9/s;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    array-length v1, v0

    .line 185
    :goto_3
    if-ge v3, v1, :cond_3

    .line 186
    .line 187
    aget-object v2, v0, v3

    .line 188
    .line 189
    sget-object v4, Ls9/t;->b:Ljava/util/HashMap;

    .line 190
    .line 191
    iget-object v5, v2, Ls9/s;->c:Lua/b;

    .line 192
    .line 193
    iget-object v6, v2, Ls9/s;->a:Lua/b;

    .line 194
    .line 195
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    sget-object v4, Ls9/t;->c:Ljava/util/HashMap;

    .line 199
    .line 200
    iget-object v2, v2, Ls9/s;->c:Lua/b;

    .line 201
    .line 202
    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_3
    return-void
.end method

.method public static final a(Llb/w;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Llb/v0;->l(Llb/w;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Llb/k0;->k()Lv9/h;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v1, v0, Lv9/d0;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    check-cast v0, Lv9/d0;

    .line 28
    .line 29
    check-cast v0, Ly9/c0;

    .line 30
    .line 31
    iget-object v0, v0, Ly9/c0;->e:Lua/c;

    .line 32
    .line 33
    sget-object v1, Ls9/p;->k:Lua/c;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    sget-object v0, Ls9/t;->a:Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method
