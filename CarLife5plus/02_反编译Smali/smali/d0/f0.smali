.class public final Ld0/f0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;


# instance fields
.field public o:F

.field public p:F

.field public q:Z


# virtual methods
.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 2

    .line 1
    invoke-interface {p2, p3, p4}, Lo2/l0;->u(J)Lo2/v0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget p3, p2, Lo2/v0;->a:I

    .line 6
    .line 7
    iget p4, p2, Lo2/v0;->b:I

    .line 8
    .line 9
    new-instance v0, La8/v;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, v1, p0, p2}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 16
    .line 17
    invoke-interface {p1, p3, p4, p2, v0}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final synthetic c(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->e(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic d(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->d(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic e(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->b(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic f(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->c(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
