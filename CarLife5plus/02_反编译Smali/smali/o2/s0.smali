.class public final Lo2/s0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/w;


# instance fields
.field public o:Lf9/k;

.field public p:J


# virtual methods
.method public final synthetic U(Lo2/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lo2/s0;->p:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Ln3/l;->a(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lo2/s0;->o:Lf9/k;

    .line 10
    .line 11
    new-instance v1, Ln3/l;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Ln3/l;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-wide p1, p0, Lo2/s0;->p:J

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
