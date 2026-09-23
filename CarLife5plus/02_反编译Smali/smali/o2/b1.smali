.class public final Lo2/b1;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;
.implements Lq2/d2;


# instance fields
.field public o:Lo2/q;

.field public final p:Lc1/a1;


# direct methods
.method public constructor <init>(Lo2/q;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo2/b1;->o:Lo2/q;

    .line 5
    .line 6
    new-instance v0, Lc1/a1;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-direct {v0, v1, p0, p1}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lo2/b1;->p:Lc1/a1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 6

    .line 1
    invoke-interface {p2, p3, p4}, Lo2/l0;->u(J)Lo2/v0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget v1, p2, Lo2/v0;->a:I

    .line 6
    .line 7
    iget v2, p2, Lo2/v0;->b:I

    .line 8
    .line 9
    new-instance v5, Lo2/y0;

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    invoke-direct {v5, p2, p3}, Lo2/y0;-><init>(Lo2/v0;I)V

    .line 13
    .line 14
    .line 15
    sget-object v3, Ls8/x;->a:Ls8/x;

    .line 16
    .line 17
    iget-object v4, p0, Lo2/b1;->p:Lc1/a1;

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    invoke-interface/range {v0 .. v5}, Lo2/o0;->K(IILjava/util/Map;Lf9/k;Lf9/k;)Lo2/n0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
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

.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "androidx.compose.ui.layout.WindowInsetsRulers"

    .line 2
    .line 3
    return-object v0
.end method
