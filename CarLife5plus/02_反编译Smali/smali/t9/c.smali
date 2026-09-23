.class public final Lt9/c;
.super Ly9/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final l:Lua/b;

.field public static final m:Lua/b;


# instance fields
.field public final e:Lkb/l;

.field public final f:Lv9/d0;

.field public final g:Lt9/k;

.field public final h:I

.field public final i:Lt9/b;

.field public final j:Lt9/e;

.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lua/b;

    .line 2
    .line 3
    sget-object v1, Ls9/p;->k:Lua/c;

    .line 4
    .line 5
    const-string v2, "Function"

    .line 6
    .line 7
    invoke-static {v2}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lt9/c;->l:Lua/b;

    .line 15
    .line 16
    new-instance v0, Lua/b;

    .line 17
    .line 18
    sget-object v1, Ls9/p;->i:Lua/c;

    .line 19
    .line 20
    const-string v2, "KFunction"

    .line 21
    .line 22
    invoke-static {v2}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lt9/c;->m:Lua/b;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lkb/l;Lib/c;Lt9/k;I)V
    .locals 3

    .line 1
    const-string v0, "containingDeclaration"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p4}, Lt9/k;->a(I)Lua/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, p1, v0}, Ly9/b;-><init>(Lkb/o;Lua/e;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lt9/c;->e:Lkb/l;

    .line 14
    .line 15
    iput-object p2, p0, Lt9/c;->f:Lv9/d0;

    .line 16
    .line 17
    iput-object p3, p0, Lt9/c;->g:Lt9/k;

    .line 18
    .line 19
    iput p4, p0, Lt9/c;->h:I

    .line 20
    .line 21
    new-instance p2, Lt9/b;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lt9/b;-><init>(Lt9/c;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lt9/c;->i:Lt9/b;

    .line 27
    .line 28
    new-instance p2, Lt9/e;

    .line 29
    .line 30
    invoke-direct {p2, p1, p0}, Leb/h;-><init>(Lkb/l;Ly9/b;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lt9/c;->j:Lt9/e;

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance p2, Ll9/d;

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    invoke-direct {p2, p3, p4, p3}, Ll9/b;-><init>(III)V

    .line 44
    .line 45
    .line 46
    new-instance p3, Ljava/util/ArrayList;

    .line 47
    .line 48
    const/16 p4, 0xa

    .line 49
    .line 50
    invoke-static {p2, p4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :goto_0
    move-object p4, p2

    .line 62
    check-cast p4, Ll9/c;

    .line 63
    .line 64
    iget-boolean v0, p4, Ll9/c;->c:Z

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {p4}, Ll9/c;->nextInt()I

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "P"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    invoke-static {p4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lt9/c;->e:Lkb/l;

    .line 95
    .line 96
    sget-object v2, Llb/y0;->d:Llb/y0;

    .line 97
    .line 98
    invoke-static {p0, v2, p4, v0, v1}, Ly9/p0;->F0(Ly9/b;Llb/y0;Lua/e;ILkb/o;)Ly9/p0;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    sget-object p4, Lr8/z;->a:Lr8/z;

    .line 106
    .line 107
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const-string p2, "R"

    .line 112
    .line 113
    invoke-static {p2}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    iget-object p4, p0, Lt9/c;->e:Lkb/l;

    .line 122
    .line 123
    sget-object v0, Llb/y0;->e:Llb/y0;

    .line 124
    .line 125
    invoke-static {p0, v0, p2, p3, p4}, Ly9/p0;->F0(Ly9/b;Llb/y0;Lua/e;ILkb/o;)Ly9/p0;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lt9/c;->k:Ljava/util/List;

    .line 137
    .line 138
    iget-object p1, p0, Lt9/c;->g:Lt9/k;

    .line 139
    .line 140
    sget-object p2, Lt9/d;->a:Ln6/a;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const-string p2, "functionTypeKind"

    .line 146
    .line 147
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object p2, Lt9/g;->c:Lt9/g;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    sget-object p2, Lt9/j;->c:Lt9/j;

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-eqz p2, :cond_2

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    sget-object p2, Lt9/h;->c:Lt9/h;

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_3

    .line 175
    .line 176
    :goto_1
    return-void

    .line 177
    :cond_3
    sget-object p2, Lt9/i;->c:Lt9/i;

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final E(Lmb/f;)Leb/o;
    .locals 0

    .line 1
    iget-object p1, p0, Lt9/c;->j:Lt9/e;

    .line 2
    .line 3
    return-object p1
.end method

.method public final bridge synthetic F()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final bridge synthetic N()Ly9/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final bridge synthetic O()Leb/o;
    .locals 1

    .line 1
    sget-object v0, Leb/n;->b:Leb/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lea/o;
    .locals 2

    .line 1
    sget-object v0, Lv9/o;->e:Lea/o;

    .line 2
    .line 3
    const-string v1, "PUBLIC"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final f()Lv9/f;
    .locals 1

    .line 1
    sget-object v0, Lv9/f;->b:Lv9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    sget-object v0, Lw9/g;->a:Lw9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lv9/m0;
    .locals 1

    .line 1
    sget-object v0, Lv9/m0;->e0:Lv9/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lv9/x;
    .locals 1

    .line 1
    sget-object v0, Lv9/x;->e:Lv9/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final k()Lv9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/c;->f:Lv9/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o0()Lv9/r0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/c;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final t()Llb/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/c;->i:Lt9/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly9/b;->getName()Lua/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "asString(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final bridge synthetic w()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
