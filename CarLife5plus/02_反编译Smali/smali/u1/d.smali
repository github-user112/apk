.class public final Lu1/d;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/d2;
.implements Lq2/w;


# instance fields
.field public o:Lu1/d;

.field public p:Lu1/d;

.field public q:J


# virtual methods
.method public final A0(Lkb/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu1/d;->o:Lu1/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu1/d;->p:Lu1/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lu1/d;->A0(Lkb/a;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Lu1/d;->A0(Lkb/a;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final B0(Lkb/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu1/d;->p:Lu1/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu1/d;->o:Lu1/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lu1/d;->B0(Lkb/a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Lu1/d;->B0(Lkb/a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final C0(Lkb/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu1/d;->p:Lu1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lu1/d;->C0(Lkb/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lu1/d;->o:Lu1/d;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lu1/d;->C0(Lkb/a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lu1/d;->o:Lu1/d;

    .line 17
    .line 18
    return-void
.end method

.method public final D0(Lkb/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu1/d;->o:Lu1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lp9/x1;->x(Lkb/a;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v0, v1, v2}, Lp9/p1;->g(Lu1/d;J)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lr1/o;->a:Lr1/o;

    .line 19
    .line 20
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v1, Lg9/x;

    .line 27
    .line 28
    invoke-direct {v1}, Lg9/x;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lq3/e;

    .line 32
    .line 33
    invoke-direct {v2, v1, p0, p1}, Lq3/e;-><init>(Lg9/x;Lu1/d;Lkb/a;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v2}, Lq2/f;->A(Lq2/d2;Lf9/k;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lq2/d2;

    .line 42
    .line 43
    :goto_0
    check-cast v1, Lu1/d;

    .line 44
    .line 45
    :goto_1
    if-eqz v1, :cond_2

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lu1/d;->B0(Lkb/a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lu1/d;->D0(Lkb/a;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lu1/d;->p:Lu1/d;

    .line 56
    .line 57
    if-eqz v0, :cond_8

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lu1/d;->C0(Lkb/a;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    if-nez v1, :cond_4

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Lu1/d;->p:Lu1/d;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v2, p1}, Lu1/d;->B0(Lkb/a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Lu1/d;->D0(Lkb/a;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {v0, p1}, Lu1/d;->C0(Lkb/a;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-static {v1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_6

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lu1/d;->B0(Lkb/a;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lu1/d;->D0(Lkb/a;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    if-eqz v0, :cond_8

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lu1/d;->C0(Lkb/a;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    if-eqz v1, :cond_7

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lu1/d;->D0(Lkb/a;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    iget-object v0, p0, Lu1/d;->p:Lu1/d;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    :try_start_0
    invoke-virtual {v0, p1}, Lu1/d;->D0(Lkb/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    throw p1

    .line 117
    :cond_8
    :goto_2
    iput-object v1, p0, Lu1/d;->o:Lu1/d;

    .line 118
    .line 119
    return-void
.end method

.method public final E0(Lkb/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu1/d;->p:Lu1/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu1/d;->o:Lu1/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lu1/d;->E0(Lkb/a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Lu1/d;->E0(Lkb/a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic U(Lo2/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lu1/c;->a:Lu1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lu1/d;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public final s0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu1/d;->p:Lu1/d;

    .line 3
    .line 4
    iput-object v0, p0, Lu1/d;->o:Lu1/d;

    .line 5
    .line 6
    return-void
.end method
