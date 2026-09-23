.class public final Lz/z0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ln3/c;


# instance fields
.field public final synthetic a:Ln3/c;

.field public b:Z

.field public c:Z

.field public final d:Ljc/c;


# direct methods
.method public constructor <init>(Ln3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/z0;->a:Ln3/c;

    .line 5
    .line 6
    new-instance p1, Ljc/c;

    .line 7
    .line 8
    invoke-direct {p1}, Ljc/c;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lz/z0;->d:Ljc/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final D(F)J
    .locals 2

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->D(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final H(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->H(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final J(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->J(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final M()F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ln3/c;->M()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final S(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ln3/c;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz/z0;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lz/z0;->d:Ljc/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljc/c;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final b0(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->b0(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz/z0;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lz/z0;->d:Ljc/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljc/c;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final d(Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lz/x0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lz/x0;

    .line 7
    .line 8
    iget v1, v0, Lz/x0;->f:I

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
    iput v1, v0, Lz/x0;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/x0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lz/x0;-><init>(Lz/z0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lz/x0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/x0;->f:I

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
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput v2, v0, Lz/x0;->f:I

    .line 50
    .line 51
    iget-object p1, p0, Lz/z0;->d:Ljc/c;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 58
    .line 59
    if-ne p1, v0, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lz/z0;->b:Z

    .line 64
    .line 65
    iput-boolean p1, p0, Lz/z0;->c:Z

    .line 66
    .line 67
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 68
    .line 69
    return-object p1
.end method

.method public final e(Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lz/y0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lz/y0;

    .line 7
    .line 8
    iget v1, v0, Lz/y0;->f:I

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
    iput v1, v0, Lz/y0;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/y0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lz/y0;-><init>(Lz/z0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lz/y0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/y0;->f:I

    .line 28
    .line 29
    iget-object v2, p0, Lz/z0;->d:Ljc/c;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-boolean p1, p0, Lz/z0;->b:Z

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    iget-boolean p1, p0, Lz/z0;->c:Z

    .line 56
    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    iput v3, v0, Lz/y0;->f:I

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 66
    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 71
    invoke-virtual {v2, p1}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    iget-boolean p1, p0, Lz/z0;->b:Z

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method

.method public final e0(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->e0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final h0(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->h0(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final m(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->m(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final q(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/z0;->a:Ln3/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->q(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
