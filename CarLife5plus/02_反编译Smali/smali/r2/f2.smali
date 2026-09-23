.class public final Lr2/f2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lr2/k1;


# instance fields
.field public final a:Landroid/graphics/RenderNode;

.field public b:Ld7/q;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lk2/n;->e()Landroid/graphics/RenderNode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lr2/f2;->c:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->r(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final B(Ly1/p;Ly1/e0;Lb2/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lx/p1;->c(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Ly1/p;->a:Ly1/b;

    .line 8
    .line 9
    iget-object v2, v1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 10
    .line 11
    iput-object v0, v1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ly1/b;->f()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ly1/b;->h(Ly1/e0;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3, v1}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Ly1/b;->n()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p1, Ly1/p;->a:Ly1/b;

    .line 30
    .line 31
    iput-object v2, p1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 32
    .line 33
    iget-object p1, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 34
    .line 35
    invoke-static {p1}, Lx/p1;->e(Landroid/graphics/RenderNode;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->y(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->b(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final E()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr2/f2;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final F(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->f(Landroid/graphics/RenderNode;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final G()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->v(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->A(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final I(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->k(Landroid/graphics/RenderNode;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final J(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->o(Landroid/graphics/RenderNode;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final K(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->h(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final L()F
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->u(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final M(Landroid/graphics/RenderNode;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lr2/f2;->b:Ld7/q;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p2, Ld7/q;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p2, Landroid/graphics/Paint;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-static {p1, p2}, Landroid/support/v4/media/session/q;->j(Landroid/graphics/RenderNode;Landroid/graphics/Paint;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/support/v4/media/session/q;->m(Landroid/graphics/RenderNode;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    if-ne p2, v0, :cond_2

    .line 23
    .line 24
    invoke-static {p1}, Lk2/n;->h(Landroid/graphics/RenderNode;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/support/v4/media/session/q;->r(Landroid/graphics/RenderNode;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-static {p1}, Lk2/n;->h(Landroid/graphics/RenderNode;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/support/v4/media/session/q;->m(Landroid/graphics/RenderNode;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget v0, p0, Lr2/f2;->c:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Lr2/f2;->M(Landroid/graphics/RenderNode;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, v1}, Lr2/f2;->M(Landroid/graphics/RenderNode;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->C(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iput p1, p0, Lr2/f2;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lr2/f2;->b:Ld7/q;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lr2/f2;->b:Ld7/q;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Ld7/q;->j(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lr2/f2;->N()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

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
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->e(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

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
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/q;->t(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->C(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->B(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final h(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->n(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

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
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

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
    iget-object v0, p0, Lr2/f2;->b:Ld7/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lr2/f2;->b:Ld7/q;

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ld7/q;->l(Ly1/k;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lr2/f2;->N()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final l(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->s(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

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
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->A(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lk2/n;->x(Landroid/graphics/RenderNode;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->z(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final q()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 8
    .line 9
    invoke-static {v0}, Lc3/c;->t(Landroid/graphics/RenderNode;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final r(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lx/p1;->d(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/n;->D(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final t(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->w(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->q(Landroid/graphics/RenderNode;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v(IIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lk2/n;->s(Landroid/graphics/RenderNode;IIII)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final w(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->y(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final x(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->u(Landroid/graphics/RenderNode;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lk2/n;->i(Landroid/graphics/RenderNode;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final z(Landroid/graphics/Outline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/f2;->a:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/q;->i(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
