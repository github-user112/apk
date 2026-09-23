.class public final Ln5/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm5/k;


# virtual methods
.method public final a(Lm5/b;Ljava/util/Map;)Lm5/m;
    .locals 11

    .line 1
    new-instance v1, Lp5/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm5/b;->a()Ls5/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v1, p1}, Lp5/a;-><init>(Ls5/b;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v1, p1}, Lp5/a;->a(Z)Ln5/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v3, v0, Ln5/a;->b:[Lm5/o;
    :try_end_0
    .catch Lm5/i; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lm5/f; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    .line 18
    :try_start_1
    new-instance v4, Lo5/a;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v0}, Lo5/a;->a(Ln5/a;)Ls5/d;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catch Lm5/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lm5/f; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    move-object v4, v2

    .line 28
    move-object v2, v0

    .line 29
    move-object v0, v3

    .line 30
    move-object v3, v4

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :catch_2
    move-exception v0

    .line 37
    move-object v3, v2

    .line 38
    goto :goto_0

    .line 39
    :catch_3
    move-exception v0

    .line 40
    move-object v3, v2

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    move-object v4, v0

    .line 43
    move-object v0, v3

    .line 44
    move-object v3, v2

    .line 45
    goto :goto_2

    .line 46
    :goto_1
    move-object v4, v3

    .line 47
    move-object v3, v0

    .line 48
    move-object v0, v4

    .line 49
    move-object v4, v2

    .line 50
    :goto_2
    if-nez v2, :cond_2

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    :try_start_2
    invoke-virtual {v1, v0}, Lp5/a;->a(Z)Ln5/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, v0, Ln5/a;->b:[Lm5/o;

    .line 58
    .line 59
    new-instance v2, Lo5/a;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lo5/a;->a(Ln5/a;)Ls5/d;

    .line 65
    .line 66
    .line 67
    move-result-object v2
    :try_end_2
    .catch Lm5/i; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lm5/f; {:try_start_2 .. :try_end_2} :catch_4

    .line 68
    move-object v8, v1

    .line 69
    goto :goto_5

    .line 70
    :catch_4
    move-exception v0

    .line 71
    :goto_3
    move-object p1, v0

    .line 72
    goto :goto_4

    .line 73
    :catch_5
    move-exception v0

    .line 74
    goto :goto_3

    .line 75
    :goto_4
    if-nez v3, :cond_1

    .line 76
    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    throw v4

    .line 80
    :cond_0
    throw p1

    .line 81
    :cond_1
    throw v3

    .line 82
    :cond_2
    move-object v8, v0

    .line 83
    :goto_5
    if-eqz p2, :cond_3

    .line 84
    .line 85
    sget-object v0, Lm5/d;->j:Lm5/d;

    .line 86
    .line 87
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lm5/p;

    .line 92
    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    array-length v0, v8

    .line 96
    :goto_6
    if-ge p1, v0, :cond_3

    .line 97
    .line 98
    aget-object v1, v8, p1

    .line 99
    .line 100
    invoke-interface {p2, v1}, Lm5/p;->a(Lm5/o;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 p1, p1, 0x1

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_3
    new-instance v5, Lm5/m;

    .line 107
    .line 108
    iget-object v6, v2, Ls5/d;->b:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v7, v2, Ls5/d;->a:[B

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    sget-object v9, Lm5/a;->a:Lm5/a;

    .line 117
    .line 118
    invoke-direct/range {v5 .. v10}, Lm5/m;-><init>(Ljava/lang/String;[B[Lm5/o;Lm5/a;I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, v2, Ls5/d;->c:Ljava/util/List;

    .line 122
    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    sget-object p2, Lm5/n;->b:Lm5/n;

    .line 126
    .line 127
    invoke-virtual {v5, p2, p1}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object p1, v2, Ls5/d;->d:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    sget-object p2, Lm5/n;->c:Lm5/n;

    .line 135
    .line 136
    invoke-virtual {v5, p2, p1}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    return-object v5
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
