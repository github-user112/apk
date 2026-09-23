.class public final Ly9/m0;
.super Leb/p;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Lv9/y;

.field public final c:Lua/c;


# direct methods
.method public constructor <init>(Lv9/y;Lua/c;)V
    .locals 1

    .line 1
    const-string v0, "moduleDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ly9/m0;->b:Lv9/y;

    .line 15
    .line 16
    iput-object p2, p0, Ly9/m0;->c:Lua/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final c(Leb/f;Lf9/k;)Ljava/util/Collection;
    .locals 8

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Leb/f;->h:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Leb/f;->a(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Ly9/m0;->c:Lua/c;

    .line 16
    .line 17
    iget-object v1, v0, Lua/c;->a:Lua/d;

    .line 18
    .line 19
    invoke-virtual {v1}, Lua/d;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Leb/f;->a:Ljava/util/List;

    .line 26
    .line 27
    sget-object v1, Leb/c;->a:Leb/c;

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    :goto_0
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    iget-object p1, p0, Ly9/m0;->b:Lv9/y;

    .line 39
    .line 40
    invoke-interface {p1, v0, p2}, Lv9/y;->l(Lua/c;Lf9/k;)Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lua/c;

    .line 68
    .line 69
    iget-object v3, v3, Lua/c;->a:Lua/d;

    .line 70
    .line 71
    invoke-virtual {v3}, Lua/d;->f()Lua/e;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {p2, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    iget-boolean v4, v3, Lua/e;->b:Z

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {v0, v3}, Lua/c;->a(Lua/e;)Lua/c;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-interface {p1, v3}, Lv9/y;->y0(Lua/c;)Lv9/h0;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ly9/x;

    .line 102
    .line 103
    iget-object v4, v3, Ly9/x;->f:Lkb/j;

    .line 104
    .line 105
    sget-object v6, Ly9/x;->h:[Lm9/u;

    .line 106
    .line 107
    const/4 v7, 0x1

    .line 108
    aget-object v6, v6, v7

    .line 109
    .line 110
    invoke-static {v4, v6}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move-object v5, v3

    .line 124
    :goto_2
    invoke-static {v2, v5}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    return-object v2
.end method

.method public final d()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "subpackages of "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ly9/m0;->c:Lua/c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " from "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ly9/m0;->b:Lv9/y;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
