.class public final Lq9/u;
.super Lq9/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq9/f;


# instance fields
.field public final g:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "boundReceiverComponents"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getGenericParameterTypes(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    array-length v1, p2

    .line 21
    const-string v2, " is less than zero."

    .line 22
    .line 23
    const-string v3, "Requested element count "

    .line 24
    .line 25
    if-ltz v1, :cond_6

    .line 26
    .line 27
    array-length v4, v0

    .line 28
    sub-int/2addr v4, v1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-gez v4, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :cond_0
    if-ltz v4, :cond_5

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    array-length v2, v0

    .line 41
    if-lt v4, v2, :cond_2

    .line 42
    .line 43
    invoke-static {v0}, Ls8/l;->j0([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v3, 0x1

    .line 49
    if-ne v4, v3, :cond_3

    .line 50
    .line 51
    sub-int/2addr v2, v3

    .line 52
    aget-object v0, v0, v2

    .line 53
    .line 54
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    sub-int v4, v2, v4

    .line 65
    .line 66
    :goto_0
    if-ge v4, v2, :cond_4

    .line 67
    .line 68
    aget-object v5, v0, v4

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move-object v0, v3

    .line 77
    :goto_1
    new-array v2, v1, [Ljava/lang/reflect/Type;

    .line 78
    .line 79
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [Ljava/lang/reflect/Type;

    .line 84
    .line 85
    invoke-direct {p0, p1, v1, v0}, Lq9/q;-><init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Lq9/u;->g:[Ljava/lang/Object;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-static {v3, v2, v4}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p2

    .line 105
    :cond_6
    invoke-static {v3, v2, v1}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p2
.end method


# virtual methods
.method public final t([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lp9/q;->l(Lq9/g;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Le2/g;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Le2/g;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lq9/u;->g:[Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Le2/g;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Le2/g;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Le2/g;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, p1}, Lq9/q;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method
