.class public final Lb2/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lb2/e;


# instance fields
.field public final b:Ly1/p;

.field public final c:La2/c;

.field public final d:Landroid/graphics/RenderNode;

.field public e:J

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Matrix;

.field public h:Z

.field public i:F

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:J

.field public o:J

.field public p:F

.field public q:F

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Ly1/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ly1/p;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, La2/c;

    .line 7
    .line 8
    invoke-direct {v1}, La2/c;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lb2/g;->b:Ly1/p;

    .line 15
    .line 16
    iput-object v1, p0, Lb2/g;->c:La2/c;

    .line 17
    .line 18
    invoke-static {}, Landroid/support/v4/media/session/q;->a()Landroid/graphics/RenderNode;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    iput-wide v1, p0, Lb2/g;->e:J

    .line 27
    .line 28
    invoke-static {v0}, Landroid/support/v4/media/session/q;->x(Landroid/graphics/RenderNode;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lb2/g;->P(Landroid/graphics/RenderNode;I)V

    .line 33
    .line 34
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    iput v0, p0, Lb2/g;->i:F

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    iput v2, p0, Lb2/g;->j:I

    .line 41
    .line 42
    iput v0, p0, Lb2/g;->k:F

    .line 43
    .line 44
    iput v0, p0, Lb2/g;->l:F

    .line 45
    .line 46
    sget-wide v2, Ly1/q;->b:J

    .line 47
    .line 48
    iput-wide v2, p0, Lb2/g;->n:J

    .line 49
    .line 50
    iput-wide v2, p0, Lb2/g;->o:J

    .line 51
    .line 52
    const/high16 v0, 0x41000000    # 8.0f

    .line 53
    .line 54
    iput v0, p0, Lb2/g;->q:F

    .line 55
    .line 56
    iput v1, p0, Lb2/g;->u:I

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final A()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final B()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb2/g;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final C(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lb2/g;->n:J

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {p1, p2}, Ly1/h0;->C(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->f(Landroid/graphics/RenderNode;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final D()F
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->q:F

    .line 2
    .line 3
    return v0
.end method

.method public final E()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb2/g;->r:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lb2/g;->O()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final G()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb2/g;->u:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lb2/g;->Q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final I(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lb2/g;->o:J

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {p1, p2}, Ly1/h0;->C(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->o(Landroid/graphics/RenderNode;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final J()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lb2/g;->g:Landroid/graphics/Matrix;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lb2/g;->g:Landroid/graphics/Matrix;

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/support/v4/media/session/q;->h(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final synthetic K()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final L()F
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public final M()F
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public final N()I
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final O()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb2/g;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, p0, Lb2/g;->h:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lb2/g;->h:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_1
    iget-boolean v0, p0, Lb2/g;->s:Z

    .line 22
    .line 23
    if-eq v3, v0, :cond_2

    .line 24
    .line 25
    iput-boolean v3, p0, Lb2/g;->s:Z

    .line 26
    .line 27
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 28
    .line 29
    invoke-static {v0, v3}, Landroid/support/v4/media/session/q;->q(Landroid/graphics/RenderNode;Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-boolean v0, p0, Lb2/g;->t:Z

    .line 33
    .line 34
    if-eq v1, v0, :cond_3

    .line 35
    .line 36
    iput-boolean v1, p0, Lb2/g;->t:Z

    .line 37
    .line 38
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/support/v4/media/session/q;->k(Landroid/graphics/RenderNode;Z)V

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public final P(Landroid/graphics/RenderNode;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lb2/g;->f:Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/support/v4/media/session/q;->j(Landroid/graphics/RenderNode;Landroid/graphics/Paint;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/support/v4/media/session/q;->m(Landroid/graphics/RenderNode;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    if-ne p2, v0, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lb2/g;->f:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroid/support/v4/media/session/q;->p(Landroid/graphics/RenderNode;Landroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/support/v4/media/session/q;->r(Landroid/graphics/RenderNode;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p2, p0, Lb2/g;->f:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-static {p1, p2}, Landroid/support/v4/media/session/q;->p(Landroid/graphics/RenderNode;Landroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/support/v4/media/session/q;->m(Landroid/graphics/RenderNode;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget v0, p0, Lb2/g;->u:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Lb2/g;->j:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lb2/g;->P(Landroid/graphics/RenderNode;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lb2/g;->P(Landroid/graphics/RenderNode;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final a()F
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public final b(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb2/g;->p:F

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->C(Landroid/graphics/RenderNode;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb2/g;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->f:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lb2/g;->f:Landroid/graphics/Paint;

    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Ly1/h0;->x(I)Landroid/graphics/BlendMode;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Ly1/a;->f(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lb2/g;->Q()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/q;->d(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb2/g;->l:F

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->e(Landroid/graphics/RenderNode;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/q;->l(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/q;->t(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb2/g;->i:F

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->n(Landroid/graphics/RenderNode;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/q;->D(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/q;->B(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb2/g;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lb2/g;->f:Landroid/graphics/Paint;

    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lb2/g;->Q()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final l(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb2/g;->k:F

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->s(Landroid/graphics/RenderNode;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/q;->z(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb2/g;->q:F

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->A(Landroid/graphics/RenderNode;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o()F
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->k:F

    .line 2
    .line 3
    return v0
.end method

.method public final p(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb2/g;->m:F

    .line 2
    .line 3
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->u(Landroid/graphics/RenderNode;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(Landroid/graphics/Outline;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {p2, p1}, Landroid/support/v4/media/session/q;->i(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lb2/g;->h:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lb2/g;->O()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final r()I
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public final s()Ly1/k;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final t(IIJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    shr-long v1, p3, v1

    .line 6
    .line 7
    long-to-int v2, v1

    .line 8
    add-int/2addr v2, p1

    .line 9
    const-wide v3, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v3, p3

    .line 15
    long-to-int v1, v3

    .line 16
    add-int/2addr v1, p2

    .line 17
    invoke-static {v0, p1, p2, v2, v1}, Landroid/support/v4/media/session/q;->g(Landroid/graphics/RenderNode;IIII)V

    .line 18
    .line 19
    .line 20
    invoke-static {p3, p4}, La/a;->S(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iput-wide p1, p0, Lb2/g;->e:J

    .line 25
    .line 26
    return-void
.end method

.method public final u()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final v(Ly1/o;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lx/p1;->d(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final w()F
    .locals 1

    .line 1
    iget v0, p0, Lb2/g;->p:F

    .line 2
    .line 3
    return v0
.end method

.method public final x(J)V
    .locals 5

    .line 1
    const-wide v0, 0x7fffffff7fffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr v0, p1

    .line 7
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/support/v4/media/session/q;->v(Landroid/graphics/RenderNode;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 23
    .line 24
    const/16 v1, 0x20

    .line 25
    .line 26
    shr-long v1, p1, v1

    .line 27
    .line 28
    long-to-int v2, v1

    .line 29
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Landroid/support/v4/media/session/q;->w(Landroid/graphics/RenderNode;F)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 37
    .line 38
    const-wide v1, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr p1, v1

    .line 44
    long-to-int p2, p1

    .line 45
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->y(Landroid/graphics/RenderNode;F)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final y()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb2/g;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final z(Ln3/c;Ln3/m;Lb2/c;Lb2/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb2/g;->c:La2/c;

    .line 2
    .line 3
    iget-object v1, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v1}, Lx/p1;->c(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lb2/g;->b:Ly1/p;

    .line 10
    .line 11
    iget-object v3, v2, Ly1/p;->a:Ly1/b;

    .line 12
    .line 13
    iget-object v4, v3, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 14
    .line 15
    iput-object v1, v3, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 16
    .line 17
    iget-object v1, v0, La2/c;->b:La2/b;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, La2/b;->a0(Ln3/c;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, La2/b;->b0(Ln3/m;)V

    .line 23
    .line 24
    .line 25
    iput-object p3, v1, La2/b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iget-wide p1, p0, Lb2/g;->e:J

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, La2/b;->c0(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, La2/b;->Z(Ly1/o;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, v0}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, v2, Ly1/p;->a:Ly1/b;

    .line 39
    .line 40
    iput-object v4, p1, Ly1/b;->a:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    iget-object p1, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 43
    .line 44
    invoke-static {p1}, Lx/p1;->e(Landroid/graphics/RenderNode;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    iget-object p2, p0, Lb2/g;->d:Landroid/graphics/RenderNode;

    .line 50
    .line 51
    invoke-static {p2}, Lx/p1;->e(Landroid/graphics/RenderNode;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
