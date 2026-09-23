.class public final Lw1/c;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw1/e;


# instance fields
.field public o:Lf9/k;

.field public p:Lw1/r;


# virtual methods
.method public final p(Lw1/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/c;->p:Lw1/r;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lw1/c;->p:Lw1/r;

    .line 10
    .line 11
    iget-object v0, p0, Lw1/c;->o:Lf9/k;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
