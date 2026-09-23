.class public abstract Lk2/h;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/d2;
.implements Lq2/v1;
.implements Lq2/k;


# instance fields
.field public o:Lq2/n;

.field public p:Lk2/a;

.field public q:Z


# direct methods
.method public constructor <init>(Lk2/a;Lq2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lk2/h;->o:Lq2/n;

    .line 5
    .line 6
    iput-object p1, p0, Lk2/h;->p:Lk2/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 3

    .line 1
    new-instance v0, Lg9/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lg9/x;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lk2/g;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Lg9/n;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v1}, Lq2/f;->z(Lq2/d2;Lf9/k;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lk2/h;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lk2/h;->p:Lk2/a;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lk2/h;->p:Lk2/a;

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, v0}, Lk2/h;->B0(Lk2/t;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public abstract B0(Lk2/t;)V
.end method

.method public final C0()V
    .locals 2

    .line 1
    new-instance v0, Lg9/t;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lg9/t;->a:Z

    .line 8
    .line 9
    new-instance v1, Lk2/f;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lk2/f;-><init>(Lg9/t;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lq2/f;->A(Lq2/d2;Lf9/k;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, v0, Lg9/t;->a:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lk2/h;->A0()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public abstract D0(I)Z
.end method

.method public final E0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lk2/h;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lk2/h;->q:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lg9/x;

    .line 13
    .line 14
    invoke-direct {v0}, Lg9/x;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lj2/h;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, v0, v2}, Lj2/h;-><init>(Lg9/x;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1}, Lq2/f;->z(Lq2/d2;Lf9/k;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lk2/h;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lk2/h;->A0()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lk2/h;->B0(Lk2/t;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

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
    invoke-virtual {p0}, Lk2/h;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k()J
    .locals 5

    .line 1
    iget-object v0, p0, Lk2/h;->o:Lq2/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lq2/h0;->x:Ln3/c;

    .line 10
    .line 11
    sget v2, Lq2/b2;->b:I

    .line 12
    .line 13
    iget v2, v0, Lq2/n;->a:F

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ln3/c;->b0(F)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, v0, Lq2/n;->b:F

    .line 20
    .line 21
    invoke-interface {v1, v3}, Ln3/c;->b0(F)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget v4, v0, Lq2/n;->c:F

    .line 26
    .line 27
    invoke-interface {v1, v4}, Ln3/c;->b0(F)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget v0, v0, Lq2/n;->d:F

    .line 32
    .line 33
    invoke-interface {v1, v0}, Ln3/c;->b0(F)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v2, v3, v4, v0}, Lq2/d;->c(IIII)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    :cond_0
    sget-wide v0, Lq2/b2;->a:J

    .line 43
    .line 44
    return-wide v0
.end method

.method public final l0(Lk2/o;Lk2/p;J)V
    .locals 1

    .line 1
    sget-object p3, Lk2/p;->b:Lk2/p;

    .line 2
    .line 3
    if-ne p2, p3, :cond_2

    .line 4
    .line 5
    iget-object p2, p1, Lk2/o;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 p4, 0x0

    .line 12
    :goto_0
    if-ge p4, p3, :cond_2

    .line 13
    .line 14
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lk2/w;

    .line 19
    .line 20
    iget v0, v0, Lk2/w;->i:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lk2/h;->D0(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget p1, p1, Lk2/o;->e:I

    .line 29
    .line 30
    const/4 p2, 0x4

    .line 31
    if-ne p1, p2, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lk2/h;->q:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lk2/h;->C0()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/4 p2, 0x5

    .line 41
    if-ne p1, p2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lk2/h;->E0()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method public final r0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk2/h;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final s0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk2/h;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final x()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk2/h;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
