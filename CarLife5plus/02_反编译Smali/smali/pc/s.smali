.class public final Lpc/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ld6/h;

.field public final b:Loc/b;

.field public final c:Lpc/v;

.field public final d:[Lpc/s;

.field public final e:Ln6/a;

.field public final f:Lma/r;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld6/h;Loc/b;Lpc/v;[Lpc/s;)V
    .locals 1

    .line 1
    const-string v0, "composer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "json"

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
    iput-object p1, p0, Lpc/s;->a:Ld6/h;

    .line 15
    .line 16
    iput-object p2, p0, Lpc/s;->b:Loc/b;

    .line 17
    .line 18
    iput-object p3, p0, Lpc/s;->c:Lpc/v;

    .line 19
    .line 20
    iput-object p4, p0, Lpc/s;->d:[Lpc/s;

    .line 21
    .line 22
    iget-object p1, p2, Loc/b;->b:Ln6/a;

    .line 23
    .line 24
    iput-object p1, p0, Lpc/s;->e:Ln6/a;

    .line 25
    .line 26
    iget-object p1, p2, Loc/b;->a:Lma/r;

    .line 27
    .line 28
    iput-object p1, p0, Lpc/s;->f:Lma/r;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    aget-object p2, p4, p1

    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    if-eq p2, p0, :cond_1

    .line 41
    .line 42
    :cond_0
    aput-object p0, p4, p1

    .line 43
    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Llc/e;)Lpc/s;
    .locals 5

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpc/s;->b:Loc/b;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lpc/j;->n(Llc/e;Loc/b;)Lpc/v;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-char v2, v1, Lpc/v;->a:C

    .line 13
    .line 14
    iget-object v3, p0, Lpc/s;->a:Ld6/h;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ld6/h;->d(C)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v3, Ld6/h;->b:Z

    .line 21
    .line 22
    iget-object v2, p0, Lpc/s;->h:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v4, p0, Lpc/s;->i:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Llc/e;->h()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    :cond_0
    invoke-virtual {v3}, Ld6/h;->a()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lpc/s;->r(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 p1, 0x3a

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ld6/h;->d(C)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v4}, Lpc/s;->r(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lpc/s;->h:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p1, p0, Lpc/s;->i:Ljava/lang/String;

    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lpc/s;->c:Lpc/v;

    .line 54
    .line 55
    if-ne p1, v1, :cond_2

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_2
    iget-object p1, p0, Lpc/s;->d:[Lpc/s;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aget-object v2, p1, v2

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_3
    new-instance v2, Lpc/s;

    .line 72
    .line 73
    invoke-direct {v2, v3, v0, v1, p1}, Lpc/s;-><init>(Ld6/h;Loc/b;Lpc/v;[Lpc/s;)V

    .line 74
    .line 75
    .line 76
    return-object v2
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lpc/s;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lpc/s;->a:Ld6/h;

    .line 14
    .line 15
    iget-object v0, v0, Ld6/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lj/g;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lj/g;->k(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final c(Llc/e;IZ)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lpc/s;->h(Llc/e;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3}, Lpc/s;->b(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d(B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lpc/s;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lpc/s;->a:Ld6/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ld6/h;->c(B)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lpc/s;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(D)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Lpc/s;->a:Ld6/h;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lpc/s;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v1, Ld6/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lj/g;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Lj/g;->k(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lpc/s;->f:Lma/r;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmpg-double v0, v2, v4

    .line 41
    .line 42
    if-gtz v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, v1, Ld6/h;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Lj/g;

    .line 52
    .line 53
    invoke-virtual {p2}, Lj/g;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lpc/j;->b(Ljava/lang/Number;Ljava/lang/String;)Lpc/h;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    throw p1
.end method

.method public final g(Llc/e;ID)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lpc/s;->h(Llc/e;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Lpc/s;->f(D)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final h(Llc/e;I)V
    .locals 7

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpc/s;->c:Lpc/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x2c

    .line 13
    .line 14
    iget-object v2, p0, Lpc/s;->a:Ld6/h;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_7

    .line 18
    .line 19
    const/16 v4, 0x3a

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x2

    .line 23
    if-eq v0, v6, :cond_4

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    if-eq v0, v6, :cond_1

    .line 27
    .line 28
    iget-boolean v0, v2, Ld6/h;->b:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ld6/h;->d(C)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v2}, Ld6/h;->a()V

    .line 36
    .line 37
    .line 38
    const-string v0, "json"

    .line 39
    .line 40
    iget-object v1, p0, Lpc/s;->b:Loc/b;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Lpc/j;->l(Llc/e;Loc/b;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2}, Llc/e;->l(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lpc/s;->r(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Ld6/h;->d(C)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ld6/h;->j()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    if-nez p2, :cond_2

    .line 63
    .line 64
    iput-boolean v3, p0, Lpc/s;->g:Z

    .line 65
    .line 66
    :cond_2
    if-ne p2, v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ld6/h;->d(C)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ld6/h;->j()V

    .line 72
    .line 73
    .line 74
    iput-boolean v5, p0, Lpc/s;->g:Z

    .line 75
    .line 76
    :cond_3
    return-void

    .line 77
    :cond_4
    iget-boolean p1, v2, Ld6/h;->b:Z

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    rem-int/2addr p2, v6

    .line 82
    if-nez p2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ld6/h;->d(C)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ld6/h;->a()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {v2, v4}, Ld6/h;->d(C)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ld6/h;->j()V

    .line 95
    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    :goto_0
    iput-boolean v3, p0, Lpc/s;->g:Z

    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    iput-boolean v3, p0, Lpc/s;->g:Z

    .line 102
    .line 103
    invoke-virtual {v2}, Ld6/h;->a()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    iget-boolean p1, v2, Ld6/h;->b:Z

    .line 108
    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Ld6/h;->d(C)V

    .line 112
    .line 113
    .line 114
    :cond_8
    invoke-virtual {v2}, Ld6/h;->a()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final i(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Lpc/s;->a:Ld6/h;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lpc/s;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v1, Ld6/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lj/g;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Lj/g;->k(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lpc/s;->f:Lma/r;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 36
    .line 37
    .line 38
    cmpg-float v0, v0, v2

    .line 39
    .line 40
    if-gtz v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, v1, Ld6/h;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lj/g;

    .line 50
    .line 51
    invoke-virtual {v0}, Lj/g;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Lpc/j;->b(Ljava/lang/Number;Ljava/lang/String;)Lpc/h;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1
.end method

.method public final j(Llc/e;)Lpc/s;
    .locals 5

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lpc/t;->a(Llc/e;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object v2, p0, Lpc/s;->c:Lpc/v;

    .line 12
    .line 13
    iget-object v3, p0, Lpc/s;->b:Loc/b;

    .line 14
    .line 15
    iget-object v4, p0, Lpc/s;->a:Ld6/h;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    instance-of p1, v4, Lpc/f;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, v4, Ld6/h;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lj/g;

    .line 27
    .line 28
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 29
    .line 30
    new-instance v4, Lpc/f;

    .line 31
    .line 32
    invoke-direct {v4, p1, v0}, Lpc/f;-><init>(Lj/g;Z)V

    .line 33
    .line 34
    .line 35
    :goto_0
    new-instance p1, Lpc/s;

    .line 36
    .line 37
    invoke-direct {p1, v4, v3, v2, v1}, Lpc/s;-><init>(Ld6/h;Loc/b;Lpc/v;[Lpc/s;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    invoke-interface {p1}, Llc/e;->g()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    sget-object v0, Loc/k;->a:Lnc/x;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    instance-of p1, v4, Lpc/e;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object p1, v4, Ld6/h;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lj/g;

    .line 63
    .line 64
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 65
    .line 66
    new-instance v4, Lpc/e;

    .line 67
    .line 68
    invoke-direct {v4, p1, v0}, Lpc/e;-><init>(Lj/g;Z)V

    .line 69
    .line 70
    .line 71
    :goto_1
    new-instance p1, Lpc/s;

    .line 72
    .line 73
    invoke-direct {p1, v4, v3, v2, v1}, Lpc/s;-><init>(Ld6/h;Loc/b;Lpc/v;[Lpc/s;)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_3
    iget-object v0, p0, Lpc/s;->h:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-interface {p1}, Llc/e;->h()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lpc/s;->i:Ljava/lang/String;

    .line 86
    .line 87
    :cond_4
    return-object p0
.end method

.method public final k(Lnc/q0;I)Lpc/s;
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lpc/s;->h(Llc/e;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lnc/f0;->n(I)Llc/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lpc/s;->j(Llc/e;)Lpc/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lpc/s;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lpc/s;->a:Ld6/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ld6/h;->e(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final m(IILlc/e;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3, p1}, Lpc/s;->h(Llc/e;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lpc/s;->l(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lpc/s;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lpc/s;->a:Ld6/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ld6/h;->f(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final o(Llc/e;ILkc/a;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lpc/s;->h(Llc/e;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3, p4}, Lpc/s;->p(Lkc/a;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final p(Lkc/a;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "serializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpc/s;->b:Loc/b;

    .line 7
    .line 8
    iget-object v1, v0, Loc/b;->a:Lma/r;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Lma/r;->f:Ljava/lang/Enum;

    .line 14
    .line 15
    check-cast v1, Loc/a;

    .line 16
    .line 17
    instance-of v2, p1, Lkc/d;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    sget-object v3, Loc/a;->a:Loc/a;

    .line 22
    .line 23
    if-eq v1, v3, :cond_4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-ne v1, v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance p1, Lac/p;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    invoke-interface {p1}, Lkc/a;->d()Llc/e;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Llc/e;->f()La/a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v3, Llc/i;->d:Llc/i;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    sget-object v3, Llc/i;->g:Llc/i;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    :cond_3
    :goto_0
    invoke-interface {p1}, Lkc/a;->d()Llc/e;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1, v0}, Lpc/j;->h(Llc/e;Loc/b;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 79
    :goto_2
    if-eqz v2, :cond_c

    .line 80
    .line 81
    move-object v1, p1

    .line 82
    check-cast v1, Lkc/d;

    .line 83
    .line 84
    if-eqz p2, :cond_b

    .line 85
    .line 86
    invoke-static {v1, p0, p2}, Li9/a;->w(Lkc/d;Lpc/s;Ljava/lang/Object;)Lkc/a;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v0, :cond_a

    .line 91
    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    invoke-interface {v1}, Lkc/a;->d()Llc/e;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v2}, Lnc/m0;->d(Llc/e;)Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_9

    .line 108
    .line 109
    :goto_3
    invoke-interface {v1}, Lkc/a;->d()Llc/e;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Llc/e;->f()La/a;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v2, "kind"

    .line 118
    .line 119
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    instance-of v2, p1, Llc/h;

    .line 123
    .line 124
    if-nez v2, :cond_8

    .line 125
    .line 126
    instance-of v2, p1, Llc/d;

    .line 127
    .line 128
    if-nez v2, :cond_7

    .line 129
    .line 130
    instance-of p1, p1, Llc/b;

    .line 131
    .line 132
    if-nez p1, :cond_6

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string p2, "Actual serializer for polymorphic cannot be polymorphic itself"

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string p2, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    .line 146
    .line 147
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string p2, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    .line 154
    .line 155
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_9
    check-cast p1, Lkc/d;

    .line 160
    .line 161
    invoke-virtual {p1}, Lkc/d;->d()Llc/e;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-interface {p1}, Llc/e;->h()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-interface {v1}, Lkc/a;->d()Llc/e;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-interface {p2}, Llc/e;->h()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "Sealed class \'"

    .line 182
    .line 183
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p2, "\' cannot be serialized as base class \'"

    .line 190
    .line 191
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, "\' because it has property name that conflicts with JSON class discriminator \'"

    .line 198
    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p1, "\'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism"

    .line 206
    .line 207
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v1

    .line 222
    :cond_a
    :goto_4
    move-object p1, v1

    .line 223
    goto :goto_5

    .line 224
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string p2, "Value for serializer "

    .line 227
    .line 228
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lkc/d;->d()Llc/e;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p2, " should always be non-null. Please report issue to the kotlinx.serialization tracker."

    .line 239
    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p2

    .line 257
    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    .line 258
    .line 259
    invoke-interface {p1}, Lkc/a;->d()Llc/e;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-interface {v1}, Llc/e;->h()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iput-object v0, p0, Lpc/s;->h:Ljava/lang/String;

    .line 268
    .line 269
    iput-object v1, p0, Lpc/s;->i:Ljava/lang/String;

    .line 270
    .line 271
    :cond_d
    invoke-interface {p1, p0, p2}, Lkc/a;->b(Lpc/s;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method public final q(S)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/s;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lpc/s;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lpc/s;->a:Ld6/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ld6/h;->h(S)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpc/s;->a:Ld6/h;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ld6/h;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s(Llc/e;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lpc/s;->h(Llc/e;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Lpc/s;->r(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final t(Llc/e;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lpc/s;->a:Ld6/h;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Ld6/h;->b:Z

    .line 13
    .line 14
    iget-object v0, p0, Lpc/s;->c:Lpc/v;

    .line 15
    .line 16
    iget-char v0, v0, Lpc/v;->b:C

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ld6/h;->d(C)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final u(Llc/e;)Z
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lpc/s;->f:Lma/r;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1
.end method
