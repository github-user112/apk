.class public final Lv1/b;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/l1;
.implements Lv1/a;
.implements Lq2/o;


# instance fields
.field public final o:Lv1/c;

.field public p:Z

.field public q:Lf9/k;


# direct methods
.method public constructor <init>(Lv1/c;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv1/b;->o:Lv1/c;

    .line 5
    .line 6
    iput-object p2, p0, Lv1/b;->q:Lf9/k;

    .line 7
    .line 8
    iput-object p0, p1, Lv1/c;->a:Lv1/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lv1/b;->p:Z

    .line 3
    .line 4
    iget-object v0, p0, Lv1/b;->o:Lv1/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lv1/c;->b:Lv/a1;

    .line 8
    .line 9
    invoke-static {p0}, Lq2/f;->l(Lq2/o;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final F()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1/b;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final Y()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1/b;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final a()Ln3/c;
    .locals 1

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {p0, v0}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v0, v0, Lo2/v0;->c:J

    .line 8
    .line 9
    invoke-static {v0, v1}, La/a;->S(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lq2/h0;->y:Ln3/m;

    .line 6
    .line 7
    return-object v0
.end method

.method public final r0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1/b;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final s0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final t0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1/b;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final u0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1/b;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final v(Lq2/j0;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lv1/b;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lv1/b;->o:Lv1/c;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, v1, Lv1/c;->b:Lv/a1;

    .line 9
    .line 10
    new-instance v0, Lk2/d;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-direct {v0, v2, p0, v1}, Lk2/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lq2/f;->r(Lr1/o;Lf9/a;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lv1/c;->b:Lv/a1;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lv1/b;->p:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, "DrawResult not defined, did you forget to call onDraw?"

    .line 28
    .line 29
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    iget-object v0, v1, Lv1/c;->b:Lv/a1;

    .line 35
    .line 36
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lf9/k;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void
.end method
