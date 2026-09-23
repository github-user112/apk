.class public final Le2/k0;
.super Ld2/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final e:Lf1/k1;

.field public final f:Lf1/k1;

.field public final g:Le2/f0;

.field public final h:Lf1/h1;

.field public i:F

.field public j:Ly1/k;

.field public k:I


# direct methods
.method public constructor <init>(Le2/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ld2/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx1/e;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lx1/e;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Le2/k0;->e:Lf1/k1;

    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Le2/k0;->f:Lf1/k1;

    .line 24
    .line 25
    new-instance v0, Le2/f0;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Le2/f0;-><init>(Le2/c;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lb1/a;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {p1, v1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v0, Le2/f0;->f:Lg9/n;

    .line 37
    .line 38
    iput-object v0, p0, Le2/k0;->g:Le2/f0;

    .line 39
    .line 40
    new-instance p1, Lf1/h1;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-direct {p1, v0}, Lf1/h1;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Le2/k0;->h:Lf1/h1;

    .line 47
    .line 48
    const/high16 p1, 0x3f800000    # 1.0f

    .line 49
    .line 50
    iput p1, p0, Le2/k0;->i:F

    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    iput p1, p0, Le2/k0;->k:I

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .line 1
    iput p1, p0, Le2/k0;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public final b(Ly1/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/k0;->j:Ly1/k;

    .line 2
    .line 3
    return-void
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object v0, p0, Le2/k0;->e:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx1/e;

    .line 8
    .line 9
    iget-wide v0, v0, Lx1/e;->a:J

    .line 10
    .line 11
    return-wide v0
.end method

.method public final e(Lq2/j0;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v1, p0, Le2/k0;->j:Ly1/k;

    .line 4
    .line 5
    iget-object v2, p0, Le2/k0;->g:Le2/f0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v2, Le2/f0;->g:Lf1/k1;

    .line 10
    .line 11
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ly1/k;

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Le2/k0;->f:Lf1/k1;

    .line 18
    .line 19
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget-object v4, Ln3/m;->b:Ln3/m;

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, La2/c;->c0()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iget-object v0, v0, La2/c;->b:La2/b;

    .line 44
    .line 45
    invoke-virtual {v0}, La2/b;->J()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {v7}, Ly1/o;->f()V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object v7, v0, La2/b;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, La2/d;

    .line 59
    .line 60
    const/high16 v8, -0x40800000    # -1.0f

    .line 61
    .line 62
    const/high16 v9, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-virtual {v7, v8, v9, v3, v4}, La2/d;->v(FFJ)V

    .line 65
    .line 66
    .line 67
    iget v3, p0, Le2/k0;->i:F

    .line 68
    .line 69
    invoke-virtual {v2, p1, v3, v1}, Le2/f0;->e(La2/g;FLy1/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v5, v6}, Lp9/v;->w(La2/b;J)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    invoke-static {v0, v5, v6}, Lp9/v;->w(La2/b;J)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_1
    iget v0, p0, Le2/k0;->i:F

    .line 82
    .line 83
    invoke-virtual {v2, p1, v0, v1}, Le2/f0;->e(La2/g;FLy1/k;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object p1, p0, Le2/k0;->h:Lf1/h1;

    .line 87
    .line 88
    invoke-virtual {p1}, Lf1/h1;->f()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Le2/k0;->k:I

    .line 93
    .line 94
    return-void
.end method
