.class public final Lja/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(Lv9/q0;Lja/a;Landroid/support/v4/media/session/t;Llb/w;)Llb/n0;
    .locals 6

    .line 1
    const-string v0, "typeAttr"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeParameterUpperBoundEraser"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p1, Lja/a;->c:Z

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0x3d

    .line 18
    .line 19
    sget-object v1, Lja/b;->a:Lja/b;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v0, p1

    .line 24
    invoke-static/range {v0 .. v5}, Lja/a;->a(Lja/a;Lja/b;ZLjava/util/Set;Llb/a0;I)Lja/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    iget-object p2, p1, Lja/a;->b:Lja/b;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    sget-object v0, Llb/y0;->c:Llb/y0;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq p2, v1, :cond_2

    .line 40
    .line 41
    const/4 p0, 0x2

    .line 42
    if-ne p2, p0, :cond_1

    .line 43
    .line 44
    new-instance p0, Llb/f0;

    .line 45
    .line 46
    invoke-direct {p0, p3, v0}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance p0, Lac/p;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-interface {p0}, Lv9/q0;->J()Llb/y0;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-boolean p2, p2, Llb/y0;->b:Z

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    new-instance p1, Llb/f0;

    .line 65
    .line 66
    invoke-static {p0}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ls9/i;->o()Llb/a0;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p1, p0, v0}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_3
    invoke-virtual {p3}, Llb/w;->D0()Llb/k0;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p2}, Llb/k0;->m()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string v0, "getParameters(...)"

    .line 87
    .line 88
    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_4

    .line 96
    .line 97
    new-instance p0, Llb/f0;

    .line 98
    .line 99
    sget-object p1, Llb/y0;->e:Llb/y0;

    .line 100
    .line 101
    invoke-direct {p0, p3, p1}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_4
    invoke-static {p0, p1}, Llb/v0;->k(Lv9/q0;Lja/a;)Llb/n0;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method
