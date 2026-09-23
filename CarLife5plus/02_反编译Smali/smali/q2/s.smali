.class public final Lq2/s;
.super Lq2/q0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public final I(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/q0;->o:Lq2/h1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/h0;->u()Lu0/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lu0/j;->u()Lo2/m0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lq2/h0;

    .line 16
    .line 17
    iget-object v2, v0, Lq2/h0;->E:Lq2/d1;

    .line 18
    .line 19
    iget-object v2, v2, Lq2/d1;->d:Lq2/h1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lq2/h0;->l()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v1, v2, v0, p1}, Lo2/m0;->j(Lo2/r;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final c(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/q0;->o:Lq2/h1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/h0;->u()Lu0/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lu0/j;->u()Lo2/m0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lq2/h0;

    .line 16
    .line 17
    iget-object v2, v0, Lq2/h0;->E:Lq2/d1;

    .line 18
    .line 19
    iget-object v2, v2, Lq2/d1;->d:Lq2/h1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lq2/h0;->l()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v1, v2, v0, p1}, Lo2/m0;->h(Lo2/r;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final d0(Lo2/m;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lq2/q0;->o:Lq2/h1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    iget-object v0, v0, Lq2/h0;->F:Lq2/l0;

    .line 6
    .line 7
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 8
    .line 9
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lq2/u0;->q:Lq2/i0;

    .line 13
    .line 14
    iget-object v2, v0, Lq2/u0;->f:Lq2/l0;

    .line 15
    .line 16
    iget-object v3, v2, Lq2/l0;->d:Lq2/d0;

    .line 17
    .line 18
    sget-object v4, Lq2/d0;->b:Lq2/d0;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    iput-boolean v5, v1, Lq2/i0;->d:Z

    .line 24
    .line 25
    iget-boolean v3, v1, Lq2/i0;->b:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iput-boolean v5, v2, Lq2/l0;->f:Z

    .line 30
    .line 31
    iput-boolean v5, v2, Lq2/l0;->g:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-boolean v5, v1, Lq2/i0;->e:Z

    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lq2/u0;->f()Lq2/t;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Lq2/t;->P:Lq2/s;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iput-boolean v5, v2, Lq2/p0;->k:Z

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v0}, Lq2/u0;->A()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lq2/u0;->f()Lq2/t;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lq2/t;->P:Lq2/s;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    iput-boolean v2, v0, Lq2/p0;->k:Z

    .line 59
    .line 60
    :cond_3
    iget-object v0, v1, Lq2/i0;->g:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Integer;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const/high16 v0, -0x80000000

    .line 76
    .line 77
    :goto_1
    iget-object v1, p0, Lq2/q0;->t:Ls/c0;

    .line 78
    .line 79
    invoke-virtual {v1, v0, p1}, Ls/c0;->h(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return v0
.end method

.method public final l(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/q0;->o:Lq2/h1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/h0;->u()Lu0/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lu0/j;->u()Lo2/m0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lq2/h0;

    .line 16
    .line 17
    iget-object v2, v0, Lq2/h0;->E:Lq2/d1;

    .line 18
    .line 19
    iget-object v2, v2, Lq2/d1;->d:Lq2/h1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lq2/h0;->l()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v1, v2, v0, p1}, Lo2/m0;->a(Lo2/r;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final r(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/q0;->o:Lq2/h1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/h0;->u()Lu0/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lu0/j;->u()Lo2/m0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lq2/h0;

    .line 16
    .line 17
    iget-object v2, v0, Lq2/h0;->E:Lq2/d1;

    .line 18
    .line 19
    iget-object v2, v2, Lq2/d1;->d:Lq2/h1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lq2/h0;->l()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v1, v2, v0, p1}, Lo2/m0;->f(Lo2/r;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final u(J)Lo2/v0;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lo2/v0;->Y(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq2/q0;->o:Lq2/h1;

    .line 5
    .line 6
    iget-object v1, v0, Lq2/h1;->o:Lq2/h0;

    .line 7
    .line 8
    invoke-virtual {v1}, Lq2/h0;->z()Lh1/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, v1, Lh1/e;->c:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    aget-object v4, v2, v3

    .line 20
    .line 21
    check-cast v4, Lq2/h0;

    .line 22
    .line 23
    iget-object v4, v4, Lq2/h0;->F:Lq2/l0;

    .line 24
    .line 25
    iget-object v4, v4, Lq2/l0;->q:Lq2/u0;

    .line 26
    .line 27
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v5, Lq2/f0;->c:Lq2/f0;

    .line 31
    .line 32
    iput-object v5, v4, Lq2/u0;->j:Lq2/f0;

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, v0, Lq2/h1;->o:Lq2/h0;

    .line 38
    .line 39
    iget-object v1, v0, Lq2/h0;->v:Lo2/m0;

    .line 40
    .line 41
    invoke-virtual {v0}, Lq2/h0;->l()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v1, p0, v0, p1, p2}, Lo2/m0;->c(Lo2/o0;Ljava/util/List;J)Lo2/n0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Lq2/q0;->v0(Lq2/q0;Lo2/n0;)V

    .line 50
    .line 51
    .line 52
    return-object p0
.end method

.method public final w0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/q0;->o:Lq2/h1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    iget-object v0, v0, Lq2/h0;->F:Lq2/l0;

    .line 6
    .line 7
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 8
    .line 9
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lq2/u0;->j0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
