.class public Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/j/e;


# instance fields
.field public final synthetic a:Lb/j/d;

.field public final synthetic b:Lb/m/a;


# virtual methods
.method public d(Lb/j/g;Lb/j/d$a;)V
    .locals 0

    sget-object p1, Lb/j/d$a;->ON_START:Lb/j/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Lb/j/d;

    check-cast p1, Lb/j/h;

    const-string p2, "removeObserver"

    .line 1
    invoke-virtual {p1, p2}, Lb/j/h;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lb/j/h;->a:Lb/c/a/b/a;

    invoke-virtual {p1, p0}, Lb/c/a/b/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Lb/m/a;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Lb/m/a;->c(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
