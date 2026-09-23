.class public abstract Le2/d0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Lf9/k;


# virtual methods
.method public abstract a(La2/g;)V
.end method

.method public b()Lf9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/d0;->a:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le2/d0;->b()Lf9/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public d(Lb2/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/d0;->a:Lf9/k;

    .line 2
    .line 3
    return-void
.end method
