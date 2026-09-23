.class public final Lza/s;
.super Lza/g;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public constructor <init>(Lua/b;I)V
    .locals 1

    .line 1
    new-instance v0, Lza/f;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lza/f;-><init>(Lua/b;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lza/q;

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lza/q;-><init>(Lza/f;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lv9/y;)Llb/w;
    .locals 7

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Llb/h0;->b:Lu0/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Llb/h0;->c:Llb/h0;

    .line 12
    .line 13
    invoke-interface {p1}, Lv9/y;->j()Ls9/i;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Ls9/o;->Q:Lua/d;

    .line 21
    .line 22
    invoke-virtual {v2}, Lua/d;->g()Lua/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ls9/i;->j(Lua/c;)Lv9/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Llb/f0;

    .line 31
    .line 32
    iget-object v3, p0, Lza/g;->a:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v4, v3

    .line 35
    check-cast v4, Lza/r;

    .line 36
    .line 37
    instance-of v5, v4, Lza/p;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    check-cast v3, Lza/p;

    .line 42
    .line 43
    iget-object p1, v3, Lza/p;->a:Llb/w;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    instance-of v4, v4, Lza/q;

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    check-cast v3, Lza/q;

    .line 51
    .line 52
    iget-object v3, v3, Lza/q;->a:Lza/f;

    .line 53
    .line 54
    iget-object v4, v3, Lza/f;->a:Lua/b;

    .line 55
    .line 56
    iget v3, v3, Lza/f;->b:I

    .line 57
    .line 58
    invoke-static {p1, v4}, Lv9/v;->d(Lv9/y;Lua/b;)Lv9/e;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    invoke-virtual {v4}, Lua/b;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    filled-new-array {p1, v3}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v3, Lnb/k;->d:Lnb/k;

    .line 77
    .line 78
    invoke-static {v3, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-interface {v5}, Lv9/e;->n()Llb/a0;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "getDefaultType(...)"

    .line 88
    .line 89
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Lp4/o;->Z(Llb/w;)Llb/x0;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const/4 v5, 0x0

    .line 97
    :goto_0
    if-ge v5, v3, :cond_2

    .line 98
    .line 99
    invoke-interface {p1}, Lv9/y;->j()Ls9/i;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6, v4}, Ls9/i;->h(Llb/x0;)Llb/a0;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    move-object p1, v4

    .line 111
    :goto_1
    invoke-direct {v2, p1}, Llb/f0;-><init>(Llb/w;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v0, v1, p1}, Llb/c;->s(Llb/h0;Lv9/e;Ljava/util/List;)Llb/a0;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_3
    new-instance p1, Lac/p;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 126
    .line 127
    .line 128
    throw p1
.end method
