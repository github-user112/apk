.class public final Li0/c;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public o:Li0/b;


# virtual methods
.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Li0/c;->o:Li0/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Li0/b;->a:Lh1/e;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lh1/e;->k(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Li0/b;->a:Lh1/e;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iput-object v0, p0, Li0/c;->o:Li0/b;

    .line 18
    .line 19
    return-void
.end method

.method public final s0()V
    .locals 1

    .line 1
    iget-object v0, p0, Li0/c;->o:Li0/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Li0/b;->a:Lh1/e;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lh1/e;->k(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
