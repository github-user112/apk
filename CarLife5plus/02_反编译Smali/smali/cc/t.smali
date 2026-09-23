.class public final Lcc/t;
.super Lac/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcc/u;
.implements Lcc/l;


# instance fields
.field public final d:Lcc/h;


# direct methods
.method public constructor <init>(Lw8/h;Lcc/h;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lac/a;-><init>(Lw8/h;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcc/t;->d:Lcc/h;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final E(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcc/h;->f(Ljava/lang/Throwable;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lac/c1;->D(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    sget-object v0, Lac/c1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lac/o;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    instance-of v1, v0, Lac/b1;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lac/b1;

    .line 16
    .line 17
    invoke-virtual {v0}, Lac/b1;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    new-instance p1, Lac/w0;

    .line 27
    .line 28
    invoke-virtual {p0}, Lac/a;->G()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p1, v0, v1, p0}, Lac/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lac/c1;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lcc/t;->E(Ljava/util/concurrent/CancellationException;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public final g0(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcc/h;->f(Ljava/lang/Throwable;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lac/a;->c:Lw8/h;

    .line 13
    .line 14
    invoke-static {p1, p2}, Lac/z;->n(Ljava/lang/Throwable;Lw8/h;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final h()Landroid/support/v4/media/session/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcc/h;->h()Landroid/support/v4/media/session/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lr8/z;

    .line 2
    .line 3
    iget-object p1, p0, Lcc/t;->d:Lcc/h;

    .line 4
    .line 5
    invoke-static {p1}, Li9/a;->h(Lcc/h;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final iterator()Lcc/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcc/c;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcc/c;-><init>(Lcc/h;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcc/h;->j()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final s(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcc/x;->s(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final t(Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcc/h;->t(Lw8/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final w(Lec/p;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lcc/h;->C(Lcc/h;Ly8/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/t;->d:Lcc/h;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
