.class public final Ld0/y0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;


# instance fields
.field public o:Ld0/u;

.field public p:Lf9/n;


# virtual methods
.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 8

    .line 1
    iget-object v0, p0, Ld0/y0;->o:Ld0/u;

    .line 2
    .line 3
    sget-object v1, Ld0/u;->a:Ld0/u;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    iget-object v1, p0, Ld0/y0;->o:Ld0/u;

    .line 15
    .line 16
    sget-object v3, Ld0/u;->b:Ld0/u;

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_1
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v0, v1, v2, v3}, Ln3/b;->a(IIII)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-interface {p2, v0, v1}, Lo2/l0;->u(J)Lo2/v0;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget p2, v5, Lo2/v0;->a:I

    .line 42
    .line 43
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {p2, v0, v1}, Li9/a;->n(III)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget p2, v5, Lo2/v0;->b:I

    .line 56
    .line 57
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    invoke-static {p2, v0, p3}, Li9/a;->n(III)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    new-instance v2, Ld0/x0;

    .line 70
    .line 71
    move-object v3, p0

    .line 72
    move-object v7, p1

    .line 73
    invoke-direct/range {v2 .. v7}, Ld0/x0;-><init>(Ld0/y0;ILo2/v0;ILo2/o0;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Ls8/x;->a:Ls8/x;

    .line 77
    .line 78
    invoke-interface {v7, v4, v6, p1, v2}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public final synthetic c(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->e(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic d(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->d(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic e(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->b(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic f(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->c(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
