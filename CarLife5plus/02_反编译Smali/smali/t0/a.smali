.class public final Lt0/a;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/v1;
.implements Lw1/e;
.implements Lw1/p;


# instance fields
.field public q:Lf9/a;

.field public r:Z

.field public final s:Lk2/n0;


# direct methods
.method public constructor <init>(Lf9/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt0/a;->q:Lf9/a;

    .line 5
    .line 6
    new-instance p1, Lo7/g;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p1, v0, p0}, Lo7/g;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lk2/i0;->a(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lk2/n0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lt0/a;->s:Lk2/n0;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
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
    invoke-virtual {p0}, Lt0/a;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k()J
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/handwriting/a;->a:Lq2/n;

    .line 2
    .line 3
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lq2/h0;->x:Ln3/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget v2, Lq2/b2;->b:I

    .line 13
    .line 14
    iget v2, v0, Lq2/n;->a:F

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ln3/c;->b0(F)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, v0, Lq2/n;->b:F

    .line 21
    .line 22
    invoke-interface {v1, v3}, Ln3/c;->b0(F)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget v4, v0, Lq2/n;->c:F

    .line 27
    .line 28
    invoke-interface {v1, v4}, Ln3/c;->b0(F)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget v0, v0, Lq2/n;->d:F

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ln3/c;->b0(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v2, v3, v4, v0}, Lq2/d;->c(IIII)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public final l0(Lk2/o;Lk2/p;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/a;->s:Lk2/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lk2/n0;->l0(Lk2/o;Lk2/p;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p(Lw1/r;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lw1/r;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lt0/a;->r:Z

    .line 6
    .line 7
    return-void
.end method

.method public final r0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lt0/a;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/a;->s:Lk2/n0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk2/n0;->x()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
