.class public final Ly1/i0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ln3/c;


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:J

.field public g:J

.field public h:F

.field public i:F

.field public j:J

.field public k:Ly1/l0;

.field public l:Z

.field public m:J

.field public n:Ln3/c;

.field public o:Ln3/m;

.field public p:I

.field public q:Ly1/h0;


# virtual methods
.method public final D(F)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ly1/i0;->J(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1, p0}, La2/f;->p(FLn3/c;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final H(I)F
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Ly1/i0;->a()F

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    div-float/2addr p1, v0

    .line 7
    return p1
.end method

.method public final J(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/i0;->a()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-float/2addr p1, v0

    .line 6
    return p1
.end method

.method public final M()F
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/i0;->n:Ln3/c;

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
    invoke-virtual {p0}, Ly1/i0;->a()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-float v0, v0, p1

    .line 6
    .line 7
    return v0
.end method

.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/i0;->n:Ln3/c;

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

.method public final b(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/i0;->d:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Ly1/i0;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    iput v0, p0, Ly1/i0;->a:I

    .line 13
    .line 14
    iput p1, p0, Ly1/i0;->d:F

    .line 15
    .line 16
    return-void
.end method

.method public final synthetic b0(F)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, La2/f;->k(FLn3/c;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ly1/i0;->f:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Ly1/q;->c(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Ly1/i0;->a:I

    .line 10
    .line 11
    or-int/lit8 v0, v0, 0x40

    .line 12
    .line 13
    iput v0, p0, Ly1/i0;->a:I

    .line 14
    .line 15
    iput-wide p1, p0, Ly1/i0;->f:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final d(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly1/i0;->e:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Ly1/i0;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iput v0, p0, Ly1/i0;->a:I

    .line 13
    .line 14
    iput p1, p0, Ly1/i0;->e:F

    .line 15
    .line 16
    return-void
.end method

.method public final e(Ly1/l0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/i0;->k:Ly1/l0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Ly1/i0;->a:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x2000

    .line 12
    .line 13
    iput v0, p0, Ly1/i0;->a:I

    .line 14
    .line 15
    iput-object p1, p0, Ly1/i0;->k:Ly1/l0;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final synthetic e0(J)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->o(JLn3/c;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final f(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ly1/i0;->g:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Ly1/q;->c(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Ly1/i0;->a:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x80

    .line 12
    .line 13
    iput v0, p0, Ly1/i0;->a:I

    .line 14
    .line 15
    iput-wide p1, p0, Ly1/i0;->g:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final synthetic h0(J)F
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->n(JLn3/c;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic m(J)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->m(JLn3/c;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final synthetic q(J)F
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->l(JLn3/c;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
