.class public final Lx/l1;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;
.implements Lq2/y1;


# instance fields
.field public o:Lx/n1;

.field public p:Z


# virtual methods
.method public final Z(Ly2/j;)V
    .locals 5

    .line 1
    sget-object v0, Ly2/t;->a:[Lm9/u;

    .line 2
    .line 3
    sget-object v0, Ly2/r;->m:Ly2/u;

    .line 4
    .line 5
    sget-object v1, Ly2/t;->a:[Lm9/u;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    aget-object v2, v1, v2

    .line 9
    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v2}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ly2/h;

    .line 16
    .line 17
    new-instance v2, Lx/k1;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, p0, v3}, Lx/k1;-><init>(Lx/l1;I)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lx/k1;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-direct {v3, p0, v4}, Lx/k1;-><init>(Lx/l1;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2, v3}, Ly2/h;-><init>(Lf9/a;Lf9/a;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Lx/l1;->p:Z

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    sget-object v2, Ly2/r;->u:Ly2/u;

    .line 37
    .line 38
    const/16 v3, 0xc

    .line 39
    .line 40
    aget-object v1, v1, v3

    .line 41
    .line 42
    invoke-virtual {v2, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    sget-object v2, Ly2/r;->t:Ly2/u;

    .line 47
    .line 48
    const/16 v3, 0xb

    .line 49
    .line 50
    aget-object v1, v1, v3

    .line 51
    .line 52
    invoke-virtual {v2, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lx/l1;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lz/w0;->a:Lz/w0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lz/w0;->b:Lz/w0;

    .line 9
    .line 10
    :goto_0
    invoke-static {p3, p4, v0}, Lp4/o;->z(JLz/w0;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lx/l1;->p:Z

    .line 14
    .line 15
    const v1, 0x7fffffff

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const v7, 0x7fffffff

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    move v7, v0

    .line 29
    :goto_1
    iget-boolean v0, p0, Lx/l1;->p:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    move v5, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const v5, 0x7fffffff

    .line 40
    .line 41
    .line 42
    :goto_2
    const/4 v6, 0x0

    .line 43
    const/4 v8, 0x5

    .line 44
    const/4 v4, 0x0

    .line 45
    move-wide v2, p3

    .line 46
    invoke-static/range {v2 .. v8}, Ln3/a;->a(JIIIII)J

    .line 47
    .line 48
    .line 49
    move-result-wide p3

    .line 50
    invoke-interface {p2, p3, p4}, Lo2/l0;->u(J)Lo2/v0;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget p3, p2, Lo2/v0;->a:I

    .line 55
    .line 56
    invoke-static {v2, v3}, Ln3/a;->h(J)I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    if-le p3, p4, :cond_3

    .line 61
    .line 62
    move p3, p4

    .line 63
    :cond_3
    iget p4, p2, Lo2/v0;->b:I

    .line 64
    .line 65
    invoke-static {v2, v3}, Ln3/a;->g(J)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-le p4, v0, :cond_4

    .line 70
    .line 71
    move p4, v0

    .line 72
    :cond_4
    iget v0, p2, Lo2/v0;->b:I

    .line 73
    .line 74
    sub-int/2addr v0, p4

    .line 75
    iget v1, p2, Lo2/v0;->a:I

    .line 76
    .line 77
    sub-int/2addr v1, p3

    .line 78
    iget-boolean v2, p0, Lx/l1;->p:Z

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    move v0, v1

    .line 84
    :goto_3
    iget-object v1, p0, Lx/l1;->o:Lx/n1;

    .line 85
    .line 86
    iget-object v2, v1, Lx/n1;->d:Lf1/h1;

    .line 87
    .line 88
    iget-object v1, v1, Lx/n1;->a:Lf1/h1;

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Lf1/h1;->g(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_6

    .line 98
    .line 99
    invoke-virtual {v2}, Lp1/f;->e()Lf9/k;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    const/4 v3, 0x0

    .line 105
    :goto_4
    invoke-static {v2}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    :try_start_0
    invoke-virtual {v1}, Lf1/h1;->f()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-le v5, v0, :cond_7

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lf1/h1;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    move-object p1, v0

    .line 121
    goto :goto_7

    .line 122
    :cond_7
    :goto_5
    invoke-static {v2, v4, v3}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lx/l1;->o:Lx/n1;

    .line 126
    .line 127
    iget-boolean v2, p0, Lx/l1;->p:Z

    .line 128
    .line 129
    if-eqz v2, :cond_8

    .line 130
    .line 131
    move v2, p4

    .line 132
    goto :goto_6

    .line 133
    :cond_8
    move v2, p3

    .line 134
    :goto_6
    iget-object v1, v1, Lx/n1;->b:Lf1/h1;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lf1/h1;->g(I)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Lf1/v1;

    .line 140
    .line 141
    const/4 v2, 0x2

    .line 142
    invoke-direct {v1, v0, v2, p0, p2}, Lf1/v1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 146
    .line 147
    invoke-interface {p1, p3, p4, p2, v1}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :goto_7
    invoke-static {v2, v4, v3}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 153
    .line 154
    .line 155
    throw p1
.end method

.method public final c(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lx/l1;->p:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const p3, 0x7fffffff

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p2, p3}, Lo2/l0;->l(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final d(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lx/l1;->p:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const p3, 0x7fffffff

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p2, p3}, Lo2/l0;->I(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final e(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lx/l1;->p:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const p3, 0x7fffffff

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p2, p3}, Lo2/l0;->c(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final f(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lx/l1;->p:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const p3, 0x7fffffff

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p2, p3}, Lo2/l0;->r(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final synthetic j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
