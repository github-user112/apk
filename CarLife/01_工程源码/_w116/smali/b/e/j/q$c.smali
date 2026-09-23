.class public Lb/e/j/q$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/j/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Lb/e/j/a0;Landroid/graphics/Rect;)Lb/e/j/a0;
    .locals 1

    invoke-virtual {p1}, Lb/e/j/a0;->g()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1, p0}, Lb/e/j/a0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lb/e/j/a0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method

.method public static c(Landroid/view/View;)Lb/e/j/a0;
    .locals 7

    .line 1
    sget-boolean v0, Lb/e/j/a0$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    sget-object v2, Lb/e/j/a0$a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lb/e/j/a0$a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v3, Lb/e/j/a0$a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_1

    new-instance v3, Lb/e/j/a0$d;

    invoke-direct {v3}, Lb/e/j/a0$d;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2

    new-instance v3, Lb/e/j/a0$c;

    invoke-direct {v3}, Lb/e/j/a0$c;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v4, 0x14

    if-lt v3, v4, :cond_3

    new-instance v3, Lb/e/j/a0$b;

    invoke-direct {v3}, Lb/e/j/a0$b;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v3, Lb/e/j/a0$e;

    invoke-direct {v3}, Lb/e/j/a0$e;-><init>()V

    .line 3
    :goto_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5, v6, v2}, Lb/e/d/b;->a(IIII)Lb/e/d/b;

    move-result-object v2

    .line 4
    invoke-virtual {v3, v2}, Lb/e/j/a0$e;->c(Lb/e/d/b;)V

    .line 5
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v4, v5, v0}, Lb/e/d/b;->a(IIII)Lb/e/d/b;

    move-result-object v0

    .line 6
    invoke-virtual {v3, v0}, Lb/e/j/a0$e;->d(Lb/e/d/b;)V

    .line 7
    invoke-virtual {v3}, Lb/e/j/a0$e;->b()Lb/e/j/a0;

    move-result-object v0

    .line 8
    iget-object v2, v0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v2, v0}, Lb/e/j/a0$k;->l(Lb/e/j/a0;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 10
    iget-object v2, v0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v2, p0}, Lb/e/j/a0$k;->d(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Failed to get insets from AttachInfo. "

    .line 11
    invoke-static {v0}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static d(Landroid/view/View;Lb/e/j/l;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const v0, 0x7f0900fa

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f090102

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_1
    new-instance v0, Lb/e/j/q$c$a;

    invoke-direct {v0, p0, p1}, Lb/e/j/q$c$a;-><init>(Landroid/view/View;Lb/e/j/l;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
