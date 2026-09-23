.class public final Lc1/i2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:I

.field public b:Lf9/a;

.field public final c:Ll9/a;

.field public final d:Lf1/g1;

.field public e:Lf9/k;

.field public final f:[F

.field public final g:Lf1/h1;

.field public h:Z

.field public final i:Lf1/g1;

.field public final j:Lf1/g1;

.field public final k:Lf1/k1;

.field public final l:Lb1/a;

.field public final m:Lf1/g1;

.field public final n:Lf1/g1;

.field public final o:Lc1/h2;

.field public final p:Lx/z0;


# direct methods
.method public constructor <init>(FILf9/a;Ll9/a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lc1/i2;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lc1/i2;->b:Lf9/a;

    .line 7
    .line 8
    iput-object p4, p0, Lc1/i2;->c:Ll9/a;

    .line 9
    .line 10
    new-instance p3, Lf1/g1;

    .line 11
    .line 12
    invoke-direct {p3, p1}, Lf1/g1;-><init>(F)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lc1/i2;->d:Lf1/g1;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    new-array p2, p3, [F

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 p4, p2, 0x2

    .line 24
    .line 25
    new-array v0, p4, [F

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, p4, :cond_1

    .line 29
    .line 30
    int-to-float v2, v1

    .line 31
    add-int/lit8 v3, p2, 0x1

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    div-float/2addr v2, v3

    .line 35
    aput v2, v0, v1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object p2, v0

    .line 41
    :goto_1
    iput-object p2, p0, Lc1/i2;->f:[F

    .line 42
    .line 43
    new-instance p2, Lf1/h1;

    .line 44
    .line 45
    invoke-direct {p2, p3}, Lf1/h1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lc1/i2;->g:Lf1/h1;

    .line 49
    .line 50
    new-instance p2, Lf1/g1;

    .line 51
    .line 52
    const/4 p3, 0x0

    .line 53
    invoke-direct {p2, p3}, Lf1/g1;-><init>(F)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lc1/i2;->i:Lf1/g1;

    .line 57
    .line 58
    new-instance p2, Lf1/g1;

    .line 59
    .line 60
    invoke-direct {p2, p3}, Lf1/g1;-><init>(F)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lc1/i2;->j:Lf1/g1;

    .line 64
    .line 65
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-static {p2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iput-object p2, p0, Lc1/i2;->k:Lf1/k1;

    .line 72
    .line 73
    new-instance p2, Lb1/a;

    .line 74
    .line 75
    const/4 p4, 0x3

    .line 76
    invoke-direct {p2, p4, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lc1/i2;->l:Lb1/a;

    .line 80
    .line 81
    iget-object p2, p0, Lc1/i2;->c:Ll9/a;

    .line 82
    .line 83
    iget p4, p2, Ll9/a;->a:F

    .line 84
    .line 85
    iget p2, p2, Ll9/a;->b:F

    .line 86
    .line 87
    sub-float/2addr p2, p4

    .line 88
    cmpg-float v0, p2, p3

    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    sub-float/2addr p1, p4

    .line 95
    div-float/2addr p1, p2

    .line 96
    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-static {p1, p3, p2}, Li9/a;->m(FFF)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-static {p3, p3, p1}, Lm9/e0;->p0(FFF)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    new-instance p2, Lf1/g1;

    .line 107
    .line 108
    invoke-direct {p2, p1}, Lf1/g1;-><init>(F)V

    .line 109
    .line 110
    .line 111
    iput-object p2, p0, Lc1/i2;->m:Lf1/g1;

    .line 112
    .line 113
    new-instance p1, Lf1/g1;

    .line 114
    .line 115
    invoke-direct {p1, p3}, Lf1/g1;-><init>(F)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lc1/i2;->n:Lf1/g1;

    .line 119
    .line 120
    new-instance p1, Lc1/h2;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lc1/h2;-><init>(Lc1/i2;)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lc1/i2;->o:Lc1/h2;

    .line 126
    .line 127
    new-instance p1, Lx/z0;

    .line 128
    .line 129
    invoke-direct {p1}, Lx/z0;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object p1, p0, Lc1/i2;->p:Lx/z0;

    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc1/i2;->g:Lf1/h1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget-object v1, p0, Lc1/i2;->j:Lf1/g1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x2

    .line 15
    int-to-float v3, v3

    .line 16
    div-float/2addr v2, v3

    .line 17
    sub-float/2addr v0, v2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    div-float/2addr v1, v3

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v3, p0, Lc1/i2;->m:Lf1/g1;

    .line 33
    .line 34
    invoke-virtual {v3}, Lf1/g1;->f()F

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    add-float/2addr v4, p1

    .line 39
    iget-object p1, p0, Lc1/i2;->n:Lf1/g1;

    .line 40
    .line 41
    invoke-virtual {p1}, Lf1/g1;->f()F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    add-float/2addr v5, v4

    .line 46
    invoke-virtual {v3, v5}, Lf1/g1;->g(F)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lf1/g1;->g(F)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lf1/g1;->f()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v3, p0, Lc1/i2;->f:[F

    .line 57
    .line 58
    invoke-static {p1, v3, v1, v0}, Lc1/g2;->e(F[FFF)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v3, p0, Lc1/i2;->c:Ll9/a;

    .line 63
    .line 64
    iget v4, v3, Ll9/a;->a:F

    .line 65
    .line 66
    iget v3, v3, Ll9/a;->b:F

    .line 67
    .line 68
    sub-float/2addr v0, v1

    .line 69
    cmpg-float v5, v0, v2

    .line 70
    .line 71
    if-nez v5, :cond_0

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    sub-float/2addr p1, v1

    .line 76
    div-float/2addr p1, v0

    .line 77
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    .line 79
    invoke-static {p1, v2, v0}, Li9/a;->m(FFF)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {v4, v3, p1}, Lm9/e0;->p0(FFF)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget-object v0, p0, Lc1/i2;->d:Lf1/g1;

    .line 88
    .line 89
    invoke-virtual {v0}, Lf1/g1;->f()F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    cmpg-float v0, p1, v0

    .line 94
    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lc1/i2;->e:Lf9/k;

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    invoke-virtual {p0, p1}, Lc1/i2;->c(F)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final b()F
    .locals 5

    .line 1
    iget-object v0, p0, Lc1/i2;->c:Ll9/a;

    .line 2
    .line 3
    iget v1, v0, Ll9/a;->a:F

    .line 4
    .line 5
    iget v2, v0, Ll9/a;->b:F

    .line 6
    .line 7
    iget-object v3, p0, Lc1/i2;->d:Lf1/g1;

    .line 8
    .line 9
    invoke-virtual {v3}, Lf1/g1;->f()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget v0, v0, Ll9/a;->a:F

    .line 14
    .line 15
    invoke-static {v3, v0, v2}, Li9/a;->m(FFF)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-float/2addr v2, v1

    .line 20
    const/4 v3, 0x0

    .line 21
    cmpg-float v4, v2, v3

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sub-float/2addr v0, v1

    .line 28
    div-float/2addr v0, v2

    .line 29
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v0, v3, v1}, Li9/a;->m(FFF)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public final c(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc1/i2;->c:Ll9/a;

    .line 2
    .line 3
    iget v1, v0, Ll9/a;->a:F

    .line 4
    .line 5
    iget v2, v0, Ll9/a;->b:F

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, Li9/a;->m(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v1, p0, Lc1/i2;->f:[F

    .line 12
    .line 13
    iget v0, v0, Ll9/a;->a:F

    .line 14
    .line 15
    invoke-static {p1, v1, v0, v2}, Lc1/g2;->e(F[FFF)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lc1/i2;->d:Lf1/g1;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lf1/g1;->g(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
