.class public abstract Ljb/q;
.super Leb/p;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic f:[Lm9/u;


# instance fields
.field public final b:Lhb/k;

.field public final c:Ljb/p;

.field public final d:Lkb/j;

.field public final e:Lkb/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Ljb/q;

    .line 4
    .line 5
    const-string v2, "classNames"

    .line 6
    .line 7
    const-string v3, "getClassNames$deserialization()Ljava/util/Set;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "classifierNamesLazy"

    .line 20
    .line 21
    const-string v5, "getClassifierNamesLazy()Ljava/util/Set;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lm9/u;

    .line 29
    .line 30
    aput-object v0, v2, v4

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    sput-object v2, Ljb/q;->f:[Lm9/u;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Lhb/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf9/a;)V
    .locals 1

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "functionList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "propertyList"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "typeAliasList"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ljb/q;->b:Lhb/k;

    .line 25
    .line 26
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 27
    .line 28
    iget-object v0, p1, Lhb/i;->c:Lhb/j;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljb/p;

    .line 34
    .line 35
    invoke-direct {v0, p0, p2, p3, p4}, Ljb/p;-><init>(Ljb/q;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ljb/q;->c:Ljb/p;

    .line 39
    .line 40
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 41
    .line 42
    new-instance p2, Leb/j;

    .line 43
    .line 44
    const/4 p3, 0x1

    .line 45
    invoke-direct {p2, p5, p3}, Leb/j;-><init>(Lf9/a;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p3, Lkb/j;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 54
    .line 55
    .line 56
    iput-object p3, p0, Ljb/q;->d:Lkb/j;

    .line 57
    .line 58
    new-instance p2, La8/g0;

    .line 59
    .line 60
    const/16 p3, 0xb

    .line 61
    .line 62
    invoke-direct {p2, p3, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance p3, Lkb/i;

    .line 69
    .line 70
    invoke-direct {p3, p1, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 71
    .line 72
    .line 73
    iput-object p3, p0, Ljb/q;->e:Lkb/i;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public a(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 3

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Ljb/q;->c:Ljb/p;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "name"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p2, Ljb/p;->g:Lkb/j;

    .line 17
    .line 18
    sget-object v1, Ljb/p;->j:[Lm9/u;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget-object v1, v1, v2

    .line 22
    .line 23
    invoke-static {v0, v1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p2, Ljb/p;->d:Lkb/f;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/util/Collection;

    .line 45
    .line 46
    :goto_0
    return-object p1
.end method

.method public final b()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb/q;->c:Ljb/p;

    .line 2
    .line 3
    iget-object v0, v0, Ljb/p;->g:Lkb/j;

    .line 4
    .line 5
    sget-object v1, Ljb/p;->j:[Lm9/u;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    invoke-static {v0, v1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Set;

    .line 15
    .line 16
    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 3

    .line 1
    sget-object v0, Ljb/q;->f:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    iget-object v2, p0, Ljb/q;->e:Lkb/i;

    .line 9
    .line 10
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "p"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lkb/i;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Set;

    .line 23
    .line 24
    return-object v0
.end method

.method public e(Lua/e;Lda/b;)Lv9/h;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "location"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljb/q;->q(Lua/e;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Ljb/q;->b:Lhb/k;

    .line 18
    .line 19
    iget-object p2, p2, Lhb/k;->a:Lhb/i;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljb/q;->l(Lua/e;)Lua/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Lhb/i;->b(Lua/b;)Lv9/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    iget-object p2, p0, Ljb/q;->c:Ljb/p;

    .line 31
    .line 32
    iget-object v0, p2, Ljb/p;->c:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p2, p2, Ljb/p;->f:Lf1/e;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lv9/p0;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    return-object p1
.end method

.method public f(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 3

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Ljb/q;->c:Ljb/p;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "name"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p2, Ljb/p;->h:Lkb/j;

    .line 17
    .line 18
    sget-object v1, Ljb/p;->j:[Lm9/u;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    aget-object v1, v1, v2

    .line 22
    .line 23
    invoke-static {v0, v1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p2, Ljb/p;->e:Lkb/f;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/util/Collection;

    .line 45
    .line 46
    :goto_0
    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb/q;->c:Ljb/p;

    .line 2
    .line 3
    iget-object v0, v0, Ljb/p;->h:Lkb/j;

    .line 4
    .line 5
    sget-object v1, Ljb/p;->j:[Lm9/u;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    invoke-static {v0, v1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Set;

    .line 15
    .line 16
    return-object v0
.end method

.method public abstract h(Lf9/k;Ljava/util/ArrayList;)V
.end method

.method public final i(Leb/f;Lf9/k;)Ljava/util/List;
    .locals 13

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget v2, Leb/f;->f:I

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Leb/f;->a(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p2, v0}, Ljb/q;->h(Lf9/k;Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Ljb/q;->c:Ljb/p;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v3, v2, Ljb/p;->g:Lkb/j;

    .line 29
    .line 30
    iget-object v4, v2, Ljb/p;->h:Lkb/j;

    .line 31
    .line 32
    sget v5, Leb/f;->j:I

    .line 33
    .line 34
    invoke-virtual {p1, v5}, Leb/f;->a(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    sget-object v6, Ls8/w;->a:Ls8/w;

    .line 39
    .line 40
    const-string v7, "name"

    .line 41
    .line 42
    sget-object v8, Lxa/g;->b:Lxa/g;

    .line 43
    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    sget-object v5, Ljb/p;->j:[Lm9/u;

    .line 47
    .line 48
    const/4 v9, 0x1

    .line 49
    aget-object v5, v5, v9

    .line 50
    .line 51
    invoke-static {v4, v5}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/util/Set;

    .line 56
    .line 57
    check-cast v5, Ljava/util/Collection;

    .line 58
    .line 59
    new-instance v10, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-eqz v11, :cond_3

    .line 73
    .line 74
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    check-cast v11, Lua/e;

    .line 79
    .line 80
    invoke-interface {p2, v11}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    check-cast v12, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_1

    .line 91
    .line 92
    invoke-static {v11, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v12, Ljb/p;->j:[Lm9/u;

    .line 96
    .line 97
    aget-object v12, v12, v9

    .line 98
    .line 99
    invoke-static {v4, v12}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Ljava/util/Set;

    .line 104
    .line 105
    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-nez v12, :cond_2

    .line 110
    .line 111
    move-object v11, v6

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v12, v2, Ljb/p;->e:Lkb/f;

    .line 114
    .line 115
    invoke-virtual {v12, v11}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    check-cast v11, Ljava/util/Collection;

    .line 120
    .line 121
    :goto_1
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-static {v10, v8}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    sget v4, Leb/f;->i:I

    .line 132
    .line 133
    invoke-virtual {p1, v4}, Leb/f;->a(I)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    sget-object v4, Ljb/p;->j:[Lm9/u;

    .line 140
    .line 141
    aget-object v4, v4, v1

    .line 142
    .line 143
    invoke-static {v3, v4}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ljava/util/Set;

    .line 148
    .line 149
    check-cast v4, Ljava/util/Collection;

    .line 150
    .line 151
    new-instance v5, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_7

    .line 165
    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    check-cast v9, Lua/e;

    .line 171
    .line 172
    invoke-interface {p2, v9}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    check-cast v10, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-eqz v10, :cond_5

    .line 183
    .line 184
    invoke-static {v9, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v10, Ljb/p;->j:[Lm9/u;

    .line 188
    .line 189
    aget-object v10, v10, v1

    .line 190
    .line 191
    invoke-static {v3, v10}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    check-cast v10, Ljava/util/Set;

    .line 196
    .line 197
    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-nez v10, :cond_6

    .line 202
    .line 203
    move-object v9, v6

    .line 204
    goto :goto_3

    .line 205
    :cond_6
    iget-object v10, v2, Ljb/p;->d:Lkb/f;

    .line 206
    .line 207
    invoke-virtual {v10, v9}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    check-cast v9, Ljava/util/Collection;

    .line 212
    .line 213
    :goto_3
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    invoke-static {v5, v8}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    .line 222
    .line 223
    :cond_8
    sget v1, Leb/f;->l:I

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Leb/f;->a(I)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_a

    .line 230
    .line 231
    invoke-virtual {p0}, Ljb/q;->m()Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_a

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Lua/e;

    .line 250
    .line 251
    invoke-interface {p2, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    check-cast v4, Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_9

    .line 262
    .line 263
    iget-object v4, p0, Ljb/q;->b:Lhb/k;

    .line 264
    .line 265
    iget-object v4, v4, Lhb/k;->a:Lhb/i;

    .line 266
    .line 267
    invoke-virtual {p0, v3}, Ljb/q;->l(Lua/e;)Lua/b;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v4, v3}, Lhb/i;->b(Lua/b;)Lv9/e;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-static {v0, v3}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_a
    sget v1, Leb/f;->g:I

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Leb/f;->a(I)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_c

    .line 286
    .line 287
    iget-object p1, v2, Ljb/p;->c:Ljava/util/LinkedHashMap;

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_c

    .line 302
    .line 303
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Lua/e;

    .line 308
    .line 309
    invoke-interface {p2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Ljava/lang/Boolean;

    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_b

    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-static {v1, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v3, v2, Ljb/p;->f:Lf1/e;

    .line 328
    .line 329
    invoke-virtual {v3, v1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Lv9/p0;

    .line 334
    .line 335
    invoke-static {v0, v1}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_c
    invoke-static {v0}, Lub/k;->d(Ljava/util/ArrayList;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    return-object p1
.end method

.method public j(Ljava/util/ArrayList;Lua/e;)V
    .locals 0

    .line 1
    const-string p1, "name"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Ljava/util/ArrayList;Lua/e;)V
    .locals 0

    .line 1
    const-string p1, "name"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract l(Lua/e;)Lua/b;
.end method

.method public final m()Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Ljb/q;->f:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Ljb/q;->d:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Set;

    .line 13
    .line 14
    return-object v0
.end method

.method public abstract n()Ljava/util/Set;
.end method

.method public abstract o()Ljava/util/Set;
.end method

.method public abstract p()Ljava/util/Set;
.end method

.method public q(Lua/e;)Z
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljb/q;->m()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public r(Ljb/t;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
