.class public final Lx/k0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/v1;


# instance fields
.field public o:Lb0/k;

.field public p:Lb0/h;


# direct methods
.method public static final A0(Lx/k0;Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lx/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lx/h0;

    .line 7
    .line 8
    iget v1, v0, Lx/h0;->g:I

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
    iput v1, v0, Lx/h0;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lx/h0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lx/h0;-><init>(Lx/k0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lx/h0;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lx/h0;->g:I

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
    iget-object v0, v0, Lx/h0;->d:Lb0/h;

    .line 35
    .line 36
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

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
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lx/k0;->p:Lb0/h;

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    new-instance p1, Lb0/h;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lx/k0;->o:Lb0/k;

    .line 61
    .line 62
    iput-object p1, v0, Lx/h0;->d:Lb0/h;

    .line 63
    .line 64
    iput v2, v0, Lx/h0;->g:I

    .line 65
    .line 66
    invoke-virtual {v1, p1, v0}, Lb0/k;->a(Lb0/j;Lw8/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 71
    .line 72
    if-ne v0, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    move-object v0, p1

    .line 76
    :goto_1
    iput-object v0, p0, Lx/k0;->p:Lb0/h;

    .line 77
    .line 78
    :cond_4
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 79
    .line 80
    return-object p0
.end method

.method public static final B0(Lx/k0;Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lx/i0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lx/i0;

    .line 7
    .line 8
    iget v1, v0, Lx/i0;->f:I

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
    iput v1, v0, Lx/i0;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lx/i0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lx/i0;-><init>(Lx/k0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lx/i0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lx/i0;->f:I

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
    iget-object p1, p0, Lx/k0;->p:Lb0/h;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    new-instance v1, Lb0/i;

    .line 54
    .line 55
    invoke-direct {v1, p1}, Lb0/i;-><init>(Lb0/h;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lx/k0;->o:Lb0/k;

    .line 59
    .line 60
    iput v2, v0, Lx/i0;->f:I

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Lb0/k;->a(Lb0/j;Lw8/c;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 67
    .line 68
    if-ne p1, v0, :cond_3

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lx/k0;->p:Lb0/h;

    .line 73
    .line 74
    :cond_4
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 75
    .line 76
    return-object p0
.end method


# virtual methods
.method public final C0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx/k0;->p:Lb0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lb0/i;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lb0/i;-><init>(Lb0/h;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lx/k0;->o:Lb0/k;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lb0/k;->b(Lb0/j;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lx/k0;->p:Lb0/h;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final synthetic G()V
    .locals 0

    .line 1
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
    invoke-virtual {p0}, Lx/k0;->x()V

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

.method public final l0(Lk2/o;Lk2/p;J)V
    .locals 1

    .line 1
    sget-object p3, Lk2/p;->b:Lk2/p;

    .line 2
    .line 3
    if-ne p2, p3, :cond_1

    .line 4
    .line 5
    iget p1, p1, Lk2/o;->e:I

    .line 6
    .line 7
    const/4 p2, 0x4

    .line 8
    const/4 p3, 0x3

    .line 9
    const/4 p4, 0x0

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lx/j0;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, p0, p4, v0}, Lx/j0;-><init>(Lx/k0;Lw8/c;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p4, p2, p3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 p2, 0x5

    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lx/j0;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-direct {p2, p0, p4, v0}, Lx/j0;-><init>(Lx/k0;Lw8/c;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p4, p2, p3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final r0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx/k0;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final s0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx/k0;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final x()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx/k0;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
