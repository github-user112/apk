.class public final Lr0/f;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/k;
.implements Ls0/e;


# instance fields
.field public q:Lkb/a;

.field public r:Ly8/i;

.field public s:Lf9/k;

.field public t:Lf9/k;

.field public u:Lac/j1;

.field public final v:Lf1/f0;

.field public w:Lx1/c;


# direct methods
.method public constructor <init>(Lkb/a;Lf9/k;Lf9/k;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr0/f;->q:Lkb/a;

    .line 5
    .line 6
    check-cast p2, Ly8/i;

    .line 7
    .line 8
    iput-object p2, p0, Lr0/f;->r:Ly8/i;

    .line 9
    .line 10
    iput-object p3, p0, Lr0/f;->s:Lf9/k;

    .line 11
    .line 12
    iput-object p4, p0, Lr0/f;->t:Lf9/k;

    .line 13
    .line 14
    new-instance p1, La5/e;

    .line 15
    .line 16
    const/16 p2, 0x18

    .line 17
    .line 18
    invoke-direct {p1, p2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lr0/f;->v:Lf1/f0;

    .line 26
    .line 27
    sget-object p1, Lx1/c;->e:Lx1/c;

    .line 28
    .line 29
    iput-object p1, p0, Lr0/f;->w:Lx1/c;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final A(Lo2/w;)Lx1/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lr0/f;->w:Lx1/c;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lr0/f;->t:Lf9/k;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lx1/c;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lr0/f;->w:Lx1/c;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    iput-object p1, p0, Lr0/f;->w:Lx1/c;

    .line 22
    .line 23
    return-object p1
.end method

.method public final C(Lo2/w;)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lr0/f;->A(Lo2/w;)Lx1/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lx1/c;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final I()Lo0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/f;->v:Lf1/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo0/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/f;->q:Lkb/a;

    .line 2
    .line 3
    iput-object p0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/f;->q:Lkb/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method
