.class public final Ld0/w;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;


# instance fields
.field public o:Ld0/u;

.field public p:F


# virtual methods
.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 4

    .line 1
    invoke-static {p3, p4}, Ln3/a;->d(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Ld0/w;->o:Ld0/u;

    .line 8
    .line 9
    sget-object v1, Ld0/u;->a:Ld0/u;

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iget v1, p0, Ld0/w;->p:F

    .line 19
    .line 20
    mul-float v0, v0, v1

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v0, v1, :cond_0

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_0
    if-le v0, v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v2, v0

    .line 41
    :goto_0
    move v0, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_1
    invoke-static {p3, p4}, Ln3/a;->c(J)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iget-object v1, p0, Ld0/w;->o:Ld0/u;

    .line 58
    .line 59
    sget-object v3, Ld0/u;->b:Ld0/u;

    .line 60
    .line 61
    if-eq v1, v3, :cond_5

    .line 62
    .line 63
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-float v1, v1

    .line 68
    iget v3, p0, Ld0/w;->p:F

    .line 69
    .line 70
    mul-float v1, v1, v3

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-ge v1, v3, :cond_3

    .line 85
    .line 86
    move v1, v3

    .line 87
    :cond_3
    if-le v1, p3, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move p3, v1

    .line 91
    :goto_2
    move p4, p3

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    move p4, p3

    .line 102
    move p3, v1

    .line 103
    :goto_3
    invoke-static {v2, v0, p3, p4}, Ln3/b;->a(IIII)J

    .line 104
    .line 105
    .line 106
    move-result-wide p3

    .line 107
    invoke-interface {p2, p3, p4}, Lo2/l0;->u(J)Lo2/v0;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    iget p3, p2, Lo2/v0;->a:I

    .line 112
    .line 113
    iget p4, p2, Lo2/v0;->b:I

    .line 114
    .line 115
    new-instance v0, Ld0/i;

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    invoke-direct {v0, p2, v1}, Ld0/i;-><init>(Lo2/v0;I)V

    .line 119
    .line 120
    .line 121
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 122
    .line 123
    invoke-interface {p1, p3, p4, p2, v0}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
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
