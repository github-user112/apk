.class public final Lz/j0;
.super Lz/f0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public A:Lz/w0;

.field public B:Z

.field public C:Lf9/o;

.field public D:Lf9/o;

.field public E:Z

.field public z:Lc1/i2;


# virtual methods
.method public final H0(Lz/e0;Lz/e0;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lz/j0;->z:Lc1/i2;

    .line 2
    .line 3
    new-instance v1, Lb1/f;

    .line 4
    .line 5
    const/16 v2, 0x11

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, p1, p0, v3, v2}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lb0/g;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {p1, v0, v1, v3, v2}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 25
    .line 26
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 27
    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, p2

    .line 32
    :goto_0
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    return-object p2
.end method

.method public final I0(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lz/j0;->C:Lf9/o;

    .line 6
    .line 7
    sget-object v1, Lz/h0;->a:Lz/g0;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lz/i0;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v2, p0

    .line 25
    move-wide v3, p1

    .line 26
    invoke-direct/range {v1 .. v6}, Lz/i0;-><init>(Lz/j0;JLw8/c;I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-static {v0, v5, v1, p1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final J0(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lz/j0;->D:Lf9/o;

    .line 6
    .line 7
    sget-object v1, Lz/h0;->b:Lz/g0;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lz/i0;

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v2, p0

    .line 25
    move-wide v3, p1

    .line 26
    invoke-direct/range {v1 .. v6}, Lz/i0;-><init>(Lz/j0;JLw8/c;I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-static {v0, v5, v1, p1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final K0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz/j0;->B:Z

    .line 2
    .line 3
    return v0
.end method
