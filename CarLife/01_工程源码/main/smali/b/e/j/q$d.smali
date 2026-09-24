.class public Lb/e/j/q$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/j/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Lb/e/j/a0;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-static {v0, v1}, Lb/e/j/a0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lb/e/j/a0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v1, v0}, Lb/e/j/a0$k;->l(Lb/e/j/a0;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 4
    iget-object v1, v0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v1, p0}, Lb/e/j/a0$k;->d(Landroid/view/View;)V

    return-object v0
.end method
