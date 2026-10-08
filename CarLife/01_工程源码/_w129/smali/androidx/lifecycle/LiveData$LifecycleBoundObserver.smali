.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$a;
.source ""

# interfaces
.implements Lb/j/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.a;",
        "Lb/j/e;"
    }
.end annotation


# instance fields
.field public final e:Lb/j/g;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# virtual methods
.method public d(Lb/j/g;Lb/j/d$a;)V
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/j/g;

    invoke-interface {p1}, Lb/j/g;->b()Lb/j/d;

    move-result-object p1

    check-cast p1, Lb/j/h;

    .line 1
    iget-object p1, p1, Lb/j/h;->b:Lb/j/d$b;

    .line 2
    sget-object p2, Lb/j/d$b;->b:Lb/j/d$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$a;->a:Lb/j/m;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->f(Lb/j/m;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->j()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$a;->h(Z)V

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/j/g;

    invoke-interface {p2}, Lb/j/g;->b()Lb/j/d;

    move-result-object p2

    check-cast p2, Lb/j/h;

    .line 3
    iget-object p2, p2, Lb/j/h;->b:Lb/j/d$b;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/j/g;

    invoke-interface {v0}, Lb/j/g;->b()Lb/j/d;

    move-result-object v0

    check-cast v0, Lb/j/h;

    const-string v1, "removeObserver"

    .line 1
    invoke-virtual {v0, v1}, Lb/j/h;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lb/j/h;->a:Lb/c/a/b/a;

    invoke-virtual {v0, p0}, Lb/c/a/b/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/j/g;

    invoke-interface {v0}, Lb/j/g;->b()Lb/j/d;

    move-result-object v0

    check-cast v0, Lb/j/h;

    .line 1
    iget-object v0, v0, Lb/j/h;->b:Lb/j/d$b;

    .line 2
    sget-object v1, Lb/j/d$b;->e:Lb/j/d$b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
