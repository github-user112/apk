.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$a;
.source ""

# interfaces
.implements Ld/l/f;


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
        "Ld/l/f;"
    }
.end annotation


# instance fields
.field public final e:Ld/l/h;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# virtual methods
.method public d(Ld/l/h;Ld/l/e$a;)V
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ld/l/h;

    invoke-interface {p1}, Ld/l/h;->getLifecycle()Ld/l/e;

    move-result-object p1

    check-cast p1, Ld/l/i;

    .line 1
    iget-object p1, p1, Ld/l/i;->b:Ld/l/e$b;

    .line 2
    sget-object p2, Ld/l/e$b;->a:Ld/l/e$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$a;->a:Ld/l/n;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->f(Ld/l/n;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->i()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$a;->h(Z)V

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ld/l/h;

    invoke-interface {p2}, Ld/l/h;->getLifecycle()Ld/l/e;

    move-result-object p2

    check-cast p2, Ld/l/i;

    .line 3
    iget-object p2, p2, Ld/l/i;->b:Ld/l/e$b;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ld/l/h;

    invoke-interface {v0}, Ld/l/h;->getLifecycle()Ld/l/e;

    move-result-object v0

    check-cast v0, Ld/l/i;

    .line 1
    iget-object v0, v0, Ld/l/i;->b:Ld/l/e$b;

    .line 2
    sget-object v1, Ld/l/e$b;->d:Ld/l/e$b;

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
