.class public final Lc8/i0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public synthetic e:Ljava/util/List;

.field public synthetic f:Lm7/z;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    check-cast p2, Lm7/z;

    .line 4
    .line 5
    check-cast p3, Lw8/c;

    .line 6
    .line 7
    new-instance v0, Lc8/i0;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, v1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lc8/i0;->e:Ljava/util/List;

    .line 14
    .line 15
    iput-object p2, v0, Lc8/i0;->f:Lm7/z;

    .line 16
    .line 17
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lc8/i0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lc8/i0;->e:Ljava/util/List;

    .line 5
    .line 6
    iget-object v0, p0, Lc8/i0;->f:Lm7/z;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lz7/b2;

    .line 28
    .line 29
    iget-object v2, v2, Lz7/b2;->c:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v2, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lz7/a2;

    .line 55
    .line 56
    iget-object v2, v2, Lz7/a2;->d:Lz7/q1;

    .line 57
    .line 58
    instance-of v3, v2, Lz7/z;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    check-cast v2, Lz7/z;

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    :goto_2
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/16 v1, 0xa

    .line 73
    .line 74
    invoke-static {p1, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ls8/c0;->H(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v2, 0x10

    .line 83
    .line 84
    if-ge v1, v2, :cond_4

    .line 85
    .line 86
    const/16 v1, 0x10

    .line 87
    .line 88
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object v3, v1

    .line 108
    check-cast v3, Lz7/z;

    .line 109
    .line 110
    iget v3, v3, Lz7/z;->b:I

    .line 111
    .line 112
    new-instance v4, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    iget-object p1, v0, Lm7/z;->b:Lm7/a0;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    const/4 v0, 0x1

    .line 130
    if-eq p1, v0, :cond_7

    .line 131
    .line 132
    const/4 v0, 0x2

    .line 133
    if-eq p1, v0, :cond_7

    .line 134
    .line 135
    const/4 v0, 0x3

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    const/4 v0, 0x0

    .line 138
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1
.end method
