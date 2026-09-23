.class public final Lx/t0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/p;
.implements Lq2/o;
.implements Lq2/y1;
.implements Lq2/l1;


# instance fields
.field public o:Lf9/k;

.field public p:Lf9/k;

.field public q:Lx/f1;

.field public r:Landroid/view/View;

.field public s:Ln3/c;

.field public t:Lx/e1;

.field public final u:Lf1/k1;

.field public v:Lf1/f0;

.field public w:J

.field public x:Ln3/l;

.field public y:Lcc/h;


# direct methods
.method public constructor <init>(Lf9/k;Lf9/k;Lx/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx/t0;->o:Lf9/k;

    .line 5
    .line 6
    iput-object p2, p0, Lx/t0;->p:Lf9/k;

    .line 7
    .line 8
    iput-object p3, p0, Lx/t0;->q:Lx/f1;

    .line 9
    .line 10
    sget-object p1, Lf1/w0;->c:Lf1/w0;

    .line 11
    .line 12
    new-instance p2, Lf1/k1;

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-direct {p2, p3, p1}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lx/t0;->u:Lf1/k1;

    .line 19
    .line 20
    const-wide p1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide p1, p0, Lx/t0;->w:J

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final A0()J
    .locals 2

    .line 1
    iget-object v0, p0, Lx/t0;->v:Lf1/f0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lx/s0;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p0, v1}, Lx/s0;-><init>(Lx/t0;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lx/t0;->v:Lf1/f0;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lx/t0;->v:Lf1/f0;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lx1/b;

    .line 26
    .line 27
    iget-wide v0, v0, Lx1/b;->a:J

    .line 28
    .line 29
    return-wide v0

    .line 30
    :cond_1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    return-wide v0
.end method

.method public final B0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lx/g1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lx/g1;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lx/t0;->r:Landroid/view/View;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lq2/f;->x(Lq2/l;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    iput-object v0, p0, Lx/t0;->r:Landroid/view/View;

    .line 19
    .line 20
    iget-object v1, p0, Lx/t0;->s:Ln3/c;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Lq2/h0;->x:Ln3/c;

    .line 29
    .line 30
    :cond_2
    iput-object v1, p0, Lx/t0;->s:Ln3/c;

    .line 31
    .line 32
    iget-object v2, p0, Lx/t0;->q:Lx/f1;

    .line 33
    .line 34
    invoke-interface {v2, v0, v1}, Lx/f1;->a(Landroid/view/View;Ln3/c;)Lx/e1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 39
    .line 40
    invoke-virtual {p0}, Lx/t0;->D0()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final C0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lx/t0;->s:Ln3/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 10
    .line 11
    iput-object v0, p0, Lx/t0;->s:Ln3/c;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lx/t0;->o:Lf9/k;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lx1/b;

    .line 20
    .line 21
    iget-wide v0, v0, Lx1/b;->a:J

    .line 22
    .line 23
    const-wide v2, 0x7fffffff7fffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long v4, v0, v2

    .line 29
    .line 30
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long v8, v4, v6

    .line 36
    .line 37
    if-eqz v8, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lx/t0;->A0()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    and-long/2addr v2, v4

    .line 44
    cmp-long v4, v2, v6

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lx/t0;->A0()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {v2, v3, v0, v1}, Lx1/b;->h(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Lx/t0;->w:J

    .line 57
    .line 58
    iget-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Lx/t0;->B0()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-wide v1, p0, Lx/t0;->w:J

    .line 70
    .line 71
    invoke-interface {v0, v1, v2, v6, v7}, Lx/e1;->a(JJ)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0}, Lx/t0;->D0()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    iput-wide v6, p0, Lx/t0;->w:J

    .line 79
    .line 80
    iget-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    check-cast v0, Lx/g1;

    .line 85
    .line 86
    invoke-virtual {v0}, Lx/g1;->b()V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method public final D0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lx/t0;->s:Ln3/c;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    check-cast v0, Lx/g1;

    .line 12
    .line 13
    invoke-virtual {v0}, Lx/g1;->c()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v4, p0, Lx/t0;->x:Ln3/l;

    .line 18
    .line 19
    invoke-static {v4}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget-wide v4, v4, Ln3/l;->a:J

    .line 27
    .line 28
    cmp-long v6, v2, v4

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    :goto_1
    iget-object v2, p0, Lx/t0;->p:Lf9/k;

    .line 33
    .line 34
    invoke-virtual {v0}, Lx/g1;->c()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4}, La/a;->S(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-interface {v1, v3, v4}, Ln3/c;->m(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    new-instance v1, Ln3/h;

    .line 47
    .line 48
    invoke-direct {v1, v3, v4}, Ln3/h;-><init>(J)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lx/g1;->c()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    new-instance v2, Ln3/l;

    .line 59
    .line 60
    invoke-direct {v2, v0, v1}, Ln3/l;-><init>(J)V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lx/t0;->x:Ln3/l;

    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public final synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final V(Lq2/h1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx/t0;->u:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Y()V
    .locals 2

    .line 1
    new-instance v0, Lx/s0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lx/s0;-><init>(Lx/t0;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lq2/f;->r(Lr1/o;Lf9/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final Z(Ly2/j;)V
    .locals 3

    .line 1
    sget-object v0, Lx/u0;->a:Ly2/u;

    .line 2
    .line 3
    new-instance v1, Lx/s0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lx/s0;-><init>(Lx/t0;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final synthetic j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx/t0;->Y()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v0, v2}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lx/t0;->y:Lcc/h;

    .line 12
    .line 13
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lb8/g;

    .line 18
    .line 19
    const/16 v3, 0x18

    .line 20
    .line 21
    invoke-direct {v1, p0, v2, v3}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v0, v2, v1, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final s0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lx/g1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lx/g1;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lx/t0;->t:Lx/e1;

    .line 12
    .line 13
    return-void
.end method

.method public final v(Lq2/j0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lq2/j0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lx/t0;->y:Lcc/h;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
