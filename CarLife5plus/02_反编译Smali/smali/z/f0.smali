.class public abstract Lz/f0;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/v1;


# instance fields
.field public q:Lz/w0;

.field public r:Lf9/k;

.field public s:Z

.field public t:Lb0/k;

.field public u:Lcc/h;

.field public v:Lb0/b;

.field public w:Z

.field public x:J

.field public y:Lk2/n0;


# direct methods
.method public constructor <init>(Lf9/k;ZLb0/k;Lz/w0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lz/f0;->q:Lz/w0;

    .line 5
    .line 6
    iput-object p1, p0, Lz/f0;->r:Lf9/k;

    .line 7
    .line 8
    iput-boolean p2, p0, Lz/f0;->s:Z

    .line 9
    .line 10
    iput-object p3, p0, Lz/f0;->t:Lb0/k;

    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    iput-wide p1, p0, Lz/f0;->x:J

    .line 15
    .line 16
    return-void
.end method

.method public static final D0(Lz/f0;Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lz/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lz/b0;

    .line 7
    .line 8
    iget v1, v0, Lz/b0;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/b0;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/b0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lz/b0;-><init>(Lz/f0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lz/b0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/b0;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lz/f0;->v:Lb0/b;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Lz/f0;->t:Lb0/k;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    new-instance v3, Lb0/a;

    .line 58
    .line 59
    invoke-direct {v3, p1}, Lb0/a;-><init>(Lb0/b;)V

    .line 60
    .line 61
    .line 62
    iput v2, v0, Lz/b0;->f:I

    .line 63
    .line 64
    invoke-virtual {v1, v3, v0}, Lb0/k;->a(Lb0/j;Lw8/c;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 69
    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lz/f0;->v:Lb0/b;

    .line 75
    .line 76
    :cond_4
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Lz/f0;->J0(J)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 82
    .line 83
    return-object p0
.end method

.method public static final E0(Lz/f0;Lz/m;Ly8/c;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lz/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lz/c0;

    .line 7
    .line 8
    iget v1, v0, Lz/c0;->h:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/c0;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/c0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lz/c0;-><init>(Lz/f0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lz/c0;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/c0;->h:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lz/c0;->e:Lb0/b;

    .line 40
    .line 41
    iget-object v0, v0, Lz/c0;->d:Lz/m;

    .line 42
    .line 43
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    iget-object p1, v0, Lz/c0;->d:Lz/m;

    .line 56
    .line 57
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lz/f0;->v:Lb0/b;

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lz/f0;->t:Lb0/k;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    new-instance v5, Lb0/a;

    .line 73
    .line 74
    invoke-direct {v5, p2}, Lb0/a;-><init>(Lb0/b;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lz/c0;->d:Lz/m;

    .line 78
    .line 79
    iput v3, v0, Lz/c0;->h:I

    .line 80
    .line 81
    invoke-virtual {v1, v5, v0}, Lb0/k;->a(Lb0/j;Lw8/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-ne p2, v4, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    new-instance p2, Lb0/b;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lz/f0;->t:Lb0/k;

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    iput-object p1, v0, Lz/c0;->d:Lz/m;

    .line 98
    .line 99
    iput-object p2, v0, Lz/c0;->e:Lb0/b;

    .line 100
    .line 101
    iput v2, v0, Lz/c0;->h:I

    .line 102
    .line 103
    invoke-virtual {v1, p2, v0}, Lb0/k;->a(Lb0/j;Lw8/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-ne v0, v4, :cond_5

    .line 108
    .line 109
    :goto_2
    return-object v4

    .line 110
    :cond_5
    move-object v0, p1

    .line 111
    move-object p1, p2

    .line 112
    :goto_3
    move-object p2, p1

    .line 113
    move-object p1, v0

    .line 114
    :cond_6
    iput-object p2, p0, Lz/f0;->v:Lb0/b;

    .line 115
    .line 116
    iget-wide p1, p1, Lz/m;->a:J

    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Lz/f0;->I0(J)V

    .line 119
    .line 120
    .line 121
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 122
    .line 123
    return-object p0
.end method

.method public static final F0(Lz/f0;Lz/n;Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lz/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lz/d0;

    .line 7
    .line 8
    iget v1, v0, Lz/d0;->g:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/d0;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/d0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lz/d0;-><init>(Lz/f0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lz/d0;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/d0;->g:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p1, v0, Lz/d0;->d:Lz/n;

    .line 35
    .line 36
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lz/f0;->v:Lb0/b;

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lz/f0;->t:Lb0/k;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    new-instance v3, Lb0/c;

    .line 60
    .line 61
    invoke-direct {v3, p2}, Lb0/c;-><init>(Lb0/b;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, v0, Lz/d0;->d:Lz/n;

    .line 65
    .line 66
    iput v2, v0, Lz/d0;->g:I

    .line 67
    .line 68
    invoke-virtual {v1, v3, v0}, Lb0/k;->a(Lb0/j;Lw8/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 73
    .line 74
    if-ne p2, v0, :cond_3

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 78
    iput-object p2, p0, Lz/f0;->v:Lb0/b;

    .line 79
    .line 80
    :cond_4
    iget-wide p1, p1, Lz/n;->a:J

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lz/f0;->J0(J)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 86
    .line 87
    return-object p0
.end method


# virtual methods
.method public final synthetic G()V
    .locals 0

    .line 1
    return-void
.end method

.method public final G0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz/f0;->v:Lb0/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lz/f0;->t:Lb0/k;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lb0/a;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lb0/a;-><init>(Lb0/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lb0/k;->b(Lb0/j;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lz/f0;->v:Lb0/b;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public abstract H0(Lz/e0;Lz/e0;)Ljava/lang/Object;
.end method

.method public abstract I0(J)V
.end method

.method public abstract J0(J)V
.end method

.method public abstract K0()Z
.end method

.method public final L0(Lf9/k;ZLb0/k;Lz/w0;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lz/f0;->r:Lf9/k;

    .line 2
    .line 3
    iget-boolean p1, p0, Lz/f0;->s:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, p2, :cond_2

    .line 7
    .line 8
    iput-boolean p2, p0, Lz/f0;->s:Z

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lz/f0;->G0()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lz/f0;->y:Lk2/n0;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lq2/m;->B0(Lq2/l;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lz/f0;->y:Lk2/n0;

    .line 24
    .line 25
    :cond_1
    const/4 p5, 0x1

    .line 26
    :cond_2
    iget-object p1, p0, Lz/f0;->t:Lb0/k;

    .line 27
    .line 28
    invoke-static {p1, p3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lz/f0;->G0()V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Lz/f0;->t:Lb0/k;

    .line 38
    .line 39
    :cond_3
    iget-object p1, p0, Lz/f0;->q:Lz/w0;

    .line 40
    .line 41
    if-eq p1, p4, :cond_4

    .line 42
    .line 43
    iput-object p4, p0, Lz/f0;->q:Lz/w0;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v0, p5

    .line 47
    :goto_0
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, Lz/f0;->y:Lk2/n0;

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    invoke-virtual {p1}, Lk2/n0;->C0()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void
.end method

.method public final synthetic d0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final g0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz/f0;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k()J
    .locals 2

    .line 1
    sget-wide v0, Lq2/b2;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l0(Lk2/o;Lk2/p;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lz/f0;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lz/f0;->y:Lk2/n0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lo7/g;

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-direct {v0, v1, p0}, Lo7/g;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lk2/i0;->a(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lk2/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lz/f0;->y:Lk2/n0;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lz/f0;->y:Lk2/n0;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3, p4}, Lk2/n0;->l0(Lk2/o;Lk2/p;J)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public r0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz/f0;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final s0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lz/f0;->w:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lz/f0;->G0()V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lz/f0;->x:J

    .line 10
    .line 11
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz/f0;->y:Lk2/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lk2/n0;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
