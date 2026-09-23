.class public final Lf1/u0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/c2;
.implements Lac/u;


# instance fields
.field public final a:Lw8/h;

.field public final b:Lf9/n;

.field public final c:Lfc/c;

.field public d:Lac/j1;


# direct methods
.method public constructor <init>(Lw8/h;Lf9/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/u0;->a:Lw8/h;

    .line 5
    .line 6
    iput-object p2, p0, Lf1/u0;->b:Lf9/n;

    .line 7
    .line 8
    sget-object p2, Lq1/b;->b:Ln6/a;

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    move-object p2, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p2, Lw8/i;->a:Lw8/i;

    .line 19
    .line 20
    :goto_0
    invoke-interface {p1, p2}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lf1/u0;->c:Lfc/c;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/u0;->d:Lac/j1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lf1/k0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lf1/k0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lac/c1;->E(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lf1/u0;->d:Lac/j1;

    .line 16
    .line 17
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/u0;->d:Lac/j1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lf1/k0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lf1/k0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lac/c1;->E(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lf1/u0;->d:Lac/j1;

    .line 16
    .line 17
    return-void
.end method

.method public final g(Lw8/g;)Lw8/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->F(Lw8/f;Lw8/g;)Lw8/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()Lw8/g;
    .locals 1

    .line 1
    sget-object v0, Lac/t;->a:Lac/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/u0;->d:Lac/j1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 7
    .line 8
    const-string v3, "Old job was still running!"

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lf1/u0;->b:Lf9/n;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    iget-object v3, p0, Lf1/u0;->c:Lfc/c;

    .line 23
    .line 24
    invoke-static {v3, v1, v0, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lf1/u0;->d:Lac/j1;

    .line 29
    .line 30
    return-void
.end method

.method public final k(Ljava/lang/Throwable;Lw8/h;)V
    .locals 3

    .line 1
    sget-object v0, Lq1/b;->b:Ln6/a;

    .line 2
    .line 3
    invoke-interface {p2, v0}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lq1/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, La8/n0;

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    invoke-direct {v1, v2, v0, p0}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1}, Lp4/e;->F(Ljava/lang/Throwable;Lf9/a;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lf1/u0;->a:Lw8/h;

    .line 22
    .line 23
    sget-object v1, Lac/t;->a:Lac/t;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lac/u;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, p1, p2}, Lac/u;->k(Ljava/lang/Throwable;Lw8/h;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    throw p1
.end method

.method public final m(Lw8/g;)Lw8/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->p(Lw8/f;Lw8/g;)Lw8/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lf9/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final z(Lw8/h;)Lw8/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
