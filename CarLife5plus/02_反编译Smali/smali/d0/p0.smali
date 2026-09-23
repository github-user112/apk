.class public final Ld0/p0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;


# instance fields
.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Z


# virtual methods
.method public final A0(Lo2/o0;)J
    .locals 6

    .line 1
    iget v0, p0, Ld0/p0;->q:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Ld0/p0;->q:F

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ln3/c;->b0(F)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gez v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const v0, 0x7fffffff

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget v3, p0, Ld0/p0;->r:F

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    iget v3, p0, Ld0/p0;->r:F

    .line 35
    .line 36
    invoke-interface {p1, v3}, Ln3/c;->b0(F)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-gez v3, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const v3, 0x7fffffff

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    iget v4, p0, Ld0/p0;->o:F

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_6

    .line 54
    .line 55
    iget v4, p0, Ld0/p0;->o:F

    .line 56
    .line 57
    invoke-interface {p1, v4}, Ln3/c;->b0(F)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-gez v4, :cond_4

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    :cond_4
    if-le v4, v0, :cond_5

    .line 65
    .line 66
    move v4, v0

    .line 67
    :cond_5
    if-eq v4, v1, :cond_6

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_6
    const/4 v4, 0x0

    .line 71
    :goto_2
    iget v5, p0, Ld0/p0;->p:F

    .line 72
    .line 73
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_9

    .line 78
    .line 79
    iget v5, p0, Ld0/p0;->p:F

    .line 80
    .line 81
    invoke-interface {p1, v5}, Ln3/c;->b0(F)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-gez p1, :cond_7

    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    :cond_7
    if-le p1, v3, :cond_8

    .line 89
    .line 90
    move p1, v3

    .line 91
    :cond_8
    if-eq p1, v1, :cond_9

    .line 92
    .line 93
    move v2, p1

    .line 94
    :cond_9
    invoke-static {v4, v0, v2, v3}, Ln3/b;->a(IIII)J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    return-wide v0
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Ld0/p0;->A0(Lo2/o0;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Ld0/p0;->s:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {p3, p4, v0, v1}, Ln3/b;->e(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p3

    .line 13
    goto :goto_4

    .line 14
    :cond_0
    iget v2, p0, Ld0/p0;->o:F

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {v0, v1}, Ln3/a;->j(J)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v0, v1}, Ln3/a;->h(J)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-le v2, v3, :cond_2

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_2
    :goto_0
    iget v3, p0, Ld0/p0;->q:F

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    invoke-static {v0, v1}, Ln3/a;->h(J)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v0, v1}, Ln3/a;->j(J)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ge v3, v4, :cond_4

    .line 60
    .line 61
    move v3, v4

    .line 62
    :cond_4
    :goto_1
    iget v4, p0, Ld0/p0;->p:F

    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_5

    .line 69
    .line 70
    invoke-static {v0, v1}, Ln3/a;->i(J)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-static {v0, v1}, Ln3/a;->g(J)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-le v4, v5, :cond_6

    .line 84
    .line 85
    move v4, v5

    .line 86
    :cond_6
    :goto_2
    iget v5, p0, Ld0/p0;->r:F

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_7

    .line 93
    .line 94
    invoke-static {v0, v1}, Ln3/a;->g(J)I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    goto :goto_3

    .line 99
    :cond_7
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-static {v0, v1}, Ln3/a;->i(J)I

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    if-ge p3, p4, :cond_8

    .line 108
    .line 109
    move p3, p4

    .line 110
    :cond_8
    :goto_3
    invoke-static {v2, v3, v4, p3}, Ln3/b;->a(IIII)J

    .line 111
    .line 112
    .line 113
    move-result-wide p3

    .line 114
    :goto_4
    invoke-interface {p2, p3, p4}, Lo2/l0;->u(J)Lo2/v0;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget p3, p2, Lo2/v0;->a:I

    .line 119
    .line 120
    iget p4, p2, Lo2/v0;->b:I

    .line 121
    .line 122
    new-instance v0, Ld0/i;

    .line 123
    .line 124
    const/4 v1, 0x3

    .line 125
    invoke-direct {v0, p2, v1}, Ld0/i;-><init>(Lo2/v0;I)V

    .line 126
    .line 127
    .line 128
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 129
    .line 130
    invoke-interface {p1, p3, p4, p2, v0}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1
.end method

.method public final c(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ld0/p0;->A0(Lo2/o0;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ln3/a;->f(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ln3/a;->h(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-boolean p1, p0, Ld0/p0;->s:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Ln3/b;->f(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lo2/l0;->l(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1, v0, v1}, Ln3/b;->g(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final d(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ld0/p0;->A0(Lo2/o0;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ln3/a;->e(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ln3/a;->g(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-boolean p1, p0, Ld0/p0;->s:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Ln3/b;->g(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lo2/l0;->I(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1, v0, v1}, Ln3/b;->f(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final e(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ld0/p0;->A0(Lo2/o0;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ln3/a;->e(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ln3/a;->g(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-boolean p1, p0, Ld0/p0;->s:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Ln3/b;->g(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lo2/l0;->c(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1, v0, v1}, Ln3/b;->f(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final f(Lq2/p0;Lo2/l0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ld0/p0;->A0(Lo2/o0;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ln3/a;->f(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ln3/a;->h(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-boolean p1, p0, Ld0/p0;->s:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Ln3/b;->f(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lo2/l0;->r(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1, v0, v1}, Ln3/b;->g(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method
