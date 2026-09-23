.class public final Lh0/x;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/o0;


# instance fields
.field public final a:Lh0/t;

.field public final b:Lo2/i1;

.field public final c:Lh0/v;

.field public final d:Ls/w;


# direct methods
.method public constructor <init>(Lh0/t;Lo2/i1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/x;->a:Lh0/t;

    .line 5
    .line 6
    iput-object p2, p0, Lh0/x;->b:Lo2/i1;

    .line 7
    .line 8
    iget-object p1, p1, Lh0/t;->b:La8/f;

    .line 9
    .line 10
    invoke-virtual {p1}, La8/f;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lh0/v;

    .line 15
    .line 16
    iput-object p1, p0, Lh0/x;->c:Lh0/v;

    .line 17
    .line 18
    invoke-static {}, Ls/l;->a()Ls/w;

    .line 19
    .line 20
    .line 21
    new-instance p1, Ls/w;

    .line 22
    .line 23
    invoke-direct {p1}, Ls/w;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lh0/x;->d:Ls/w;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final D(F)J
    .locals 2

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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

.method public final K(IILjava/util/Map;Lf9/k;Lf9/k;)Lo2/n0;
    .locals 6

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-interface/range {v0 .. v5}, Lo2/o0;->K(IILjava/util/Map;Lf9/k;Lf9/k;)Lo2/n0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final M()F
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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

.method public final Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/r;->Q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final R(IILjava/util/Map;Lf9/k;)Lo2/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final S(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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

.method public final b0(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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

.method public final e0(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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

.method public final getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h0(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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
    iget-object v0, p0, Lh0/x;->b:Lo2/i1;

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
