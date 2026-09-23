.class public abstract Ld0/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ls/h0;

.field public static final b:Ls/h0;

.field public static final c:Ld0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ld0/m;->c(Z)Ls/h0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Ld0/m;->a:Ls/h0;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ld0/m;->c(Z)Ls/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Ld0/m;->b:Ls/h0;

    .line 14
    .line 15
    sget-object v0, Ld0/l;->b:Ld0/l;

    .line 16
    .line 17
    sput-object v0, Ld0/m;->c:Ld0/l;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Lr1/p;Lf1/s;I)V
    .locals 6

    .line 1
    const v0, -0xc96ce69

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    :goto_0
    or-int/2addr v0, p2

    .line 18
    and-int/lit8 v2, v0, 0x3

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v2, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    and-int/2addr v0, v3

    .line 27
    invoke-virtual {p1, v0, v1}, Lf1/s;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    iget-wide v0, p1, Lf1/s;->T:J

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    ushr-long v4, v0, v2

    .line 38
    .line 39
    xor-long/2addr v0, v4

    .line 40
    long-to-int v1, v0

    .line 41
    invoke-static {p1, p0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v4, Lq2/j;->d0:Lq2/i;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-object v4, Lq2/i;->b:Lq2/a0;

    .line 55
    .line 56
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 57
    .line 58
    .line 59
    iget-boolean v5, p1, Lf1/s;->S:Z

    .line 60
    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v4}, Lf1/s;->k(Lf9/a;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 68
    .line 69
    .line 70
    :goto_2
    sget-object v4, Lq2/i;->e:Lq2/h;

    .line 71
    .line 72
    sget-object v5, Ld0/m;->c:Ld0/l;

    .line 73
    .line 74
    invoke-static {p1, v4, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 78
    .line 79
    invoke-static {p1, v4, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 83
    .line 84
    invoke-static {p1, v2, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 88
    .line 89
    iget-boolean v2, p1, Lf1/s;->S:Z

    .line 90
    .line 91
    if-nez v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v2, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    :cond_3
    invoke-static {v1, p1, v1, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-virtual {p1, v3}, Lf1/s;->p(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-virtual {p1}, Lf1/s;->r()Lf1/w1;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    new-instance v0, La8/d;

    .line 124
    .line 125
    const/4 v1, 0x2

    .line 126
    invoke-direct {v0, p2, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p1, Lf1/w1;->d:Lf9/n;

    .line 130
    .line 131
    :cond_6
    return-void
.end method

.method public static final b(Lo2/u0;Lo2/v0;Lo2/l0;Ln3/m;IILr1/h;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Lo2/l0;->x()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Ld0/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Ld0/k;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget-object p2, p2, Ld0/k;->o:Lr1/d;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object v0, p2

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :goto_1
    move-object v0, p6

    .line 23
    :goto_2
    iget p2, p1, Lo2/v0;->a:I

    .line 24
    .line 25
    iget p6, p1, Lo2/v0;->b:I

    .line 26
    .line 27
    int-to-long v1, p2

    .line 28
    const/16 p2, 0x20

    .line 29
    .line 30
    shl-long/2addr v1, p2

    .line 31
    int-to-long v3, p6

    .line 32
    const-wide v5, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v3, v5

    .line 38
    or-long/2addr v1, v3

    .line 39
    int-to-long v3, p4

    .line 40
    shl-long/2addr v3, p2

    .line 41
    int-to-long p4, p5

    .line 42
    and-long/2addr p4, v5

    .line 43
    or-long/2addr v3, p4

    .line 44
    move-object v5, p3

    .line 45
    invoke-interface/range {v0 .. v5}, Lr1/d;->a(JJLn3/m;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    invoke-static {p0, p1, p2, p3}, Lo2/u0;->h(Lo2/u0;Lo2/v0;J)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final c(Z)Ls/h0;
    .locals 3

    .line 1
    new-instance v0, Ls/h0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ls/h0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lr1/c;->a:Lr1/h;

    .line 9
    .line 10
    new-instance v2, Ld0/p;

    .line 11
    .line 12
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lr1/c;->b:Lr1/h;

    .line 19
    .line 20
    new-instance v2, Ld0/p;

    .line 21
    .line 22
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lr1/c;->c:Lr1/h;

    .line 29
    .line 30
    new-instance v2, Ld0/p;

    .line 31
    .line 32
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lr1/c;->d:Lr1/h;

    .line 39
    .line 40
    new-instance v2, Ld0/p;

    .line 41
    .line 42
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lr1/c;->e:Lr1/h;

    .line 49
    .line 50
    new-instance v2, Ld0/p;

    .line 51
    .line 52
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lr1/c;->f:Lr1/h;

    .line 59
    .line 60
    new-instance v2, Ld0/p;

    .line 61
    .line 62
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lr1/c;->g:Lr1/h;

    .line 69
    .line 70
    new-instance v2, Ld0/p;

    .line 71
    .line 72
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lr1/c;->h:Lr1/h;

    .line 79
    .line 80
    new-instance v2, Ld0/p;

    .line 81
    .line 82
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lr1/c;->i:Lr1/h;

    .line 89
    .line 90
    new-instance v2, Ld0/p;

    .line 91
    .line 92
    invoke-direct {v2, v1, p0}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public static final d(Lr1/h;Z)Lo2/m0;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Ld0/m;->a:Ls/h0;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Ld0/m;->b:Ls/h0;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lo2/m0;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ld0/p;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Ld0/p;-><init>(Lr1/h;Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object v0
.end method
