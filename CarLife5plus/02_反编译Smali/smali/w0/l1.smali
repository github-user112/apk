.class public final Lw0/l1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ll0/z0;


# instance fields
.field public final synthetic a:Lw0/r1;


# direct methods
.method public constructor <init>(Lw0/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/l1;->a:Lw0/r1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object p2, p0, Lw0/l1;->a:Lw0/r1;

    .line 3
    .line 4
    invoke-virtual {p2, p1}, Lw0/r1;->k(Z)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Lw0/o0;->a(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p2, Lw0/r1;->d:Ll0/s0;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ll0/s0;->d()Ll0/q1;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1, v0, v1}, Ll0/q1;->e(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p2, Lw0/r1;->n:J

    .line 28
    .line 29
    new-instance p1, Lx1/b;

    .line 30
    .line 31
    invoke-direct {p1, v0, v1}, Lx1/b;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p2, Lw0/r1;->r:Lf1/k1;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    iput-wide v0, p2, Lw0/r1;->p:J

    .line 42
    .line 43
    sget-object p1, Ll0/h0;->a:Ll0/h0;

    .line 44
    .line 45
    iget-object v0, p2, Lw0/r1;->q:Lf1/k1;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p2, p1}, Lw0/r1;->s(Z)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw0/l1;->a:Lw0/r1;

    .line 2
    .line 3
    iget-object v1, v0, Lw0/r1;->q:Lf1/k1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lw0/r1;->r:Lf1/k1;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw0/l1;->a:Lw0/r1;

    .line 2
    .line 3
    iget-object v1, v0, Lw0/r1;->q:Lf1/k1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lw0/r1;->r:Lf1/k1;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lw0/l1;->a:Lw0/r1;

    .line 2
    .line 3
    iget-wide v1, v0, Lw0/r1;->p:J

    .line 4
    .line 5
    invoke-static {v1, v2, p1, p2}, Lx1/b;->h(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, v0, Lw0/r1;->p:J

    .line 10
    .line 11
    iget-object p1, v0, Lw0/r1;->d:Ll0/s0;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Ll0/s0;->d()Ll0/q1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-wide v1, v0, Lw0/r1;->n:J

    .line 22
    .line 23
    iget-wide v3, v0, Lw0/r1;->p:J

    .line 24
    .line 25
    invoke-static {v1, v2, v3, v4}, Lx1/b;->h(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    new-instance p2, Lx1/b;

    .line 30
    .line 31
    invoke-direct {p2, v1, v2}, Lx1/b;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lw0/r1;->r:Lf1/k1;

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, v0, Lw0/r1;->b:Lg3/q;

    .line 40
    .line 41
    invoke-virtual {v0}, Lw0/r1;->i()Lx1/b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-wide v1, v1, Lx1/b;->a:J

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {p1, v1, v2, v3}, Ll0/q1;->b(JZ)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-interface {p2, p1}, Lg3/q;->a(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1, p1}, Lb3/d0;->b(II)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-wide v1, v1, Lg3/w;->b:J

    .line 68
    .line 69
    invoke-static {p1, p2, v1, v2}, Lb3/n0;->b(JJ)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, v1, Ll0/s0;->q:Lf1/k1;

    .line 81
    .line 82
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, v0, Lw0/r1;->j:Lg2/a;

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    const/16 v2, 0x9

    .line 100
    .line 101
    invoke-interface {v1, v2}, Lg2/a;->a(I)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    iget-object v1, v0, Lw0/r1;->c:Lf9/k;

    .line 105
    .line 106
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v2, v2, Lg3/w;->a:Lb3/g;

    .line 111
    .line 112
    invoke-static {v2, p1, p2}, Lw0/r1;->e(Lb3/g;J)Lg3/w;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    new-instance v1, Lb3/n0;

    .line 120
    .line 121
    invoke-direct {v1, p1, p2}, Lb3/n0;-><init>(J)V

    .line 122
    .line 123
    .line 124
    iput-object v1, v0, Lw0/r1;->v:Lb3/n0;

    .line 125
    .line 126
    :cond_3
    :goto_1
    return-void
.end method

.method public final onCancel()V
    .locals 0

    .line 1
    return-void
.end method
