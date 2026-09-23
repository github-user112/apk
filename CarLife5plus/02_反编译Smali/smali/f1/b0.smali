.class public final Lf1/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/c2;


# instance fields
.field public final a:Lac/w;


# direct methods
.method public constructor <init>(Lac/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/b0;->a:Lac/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b0;->a:Lac/w;

    .line 2
    .line 3
    instance-of v1, v0, Lf1/f2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lf1/f2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lf1/f2;->a()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lf1/k0;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2}, Lf1/k0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lac/z;->d(Lac/w;Ljava/util/concurrent/CancellationException;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b0;->a:Lac/w;

    .line 2
    .line 3
    instance-of v1, v0, Lf1/f2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lf1/f2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lf1/f2;->a()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lf1/k0;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2}, Lf1/k0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lac/z;->d(Lac/w;Ljava/util/concurrent/CancellationException;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method
