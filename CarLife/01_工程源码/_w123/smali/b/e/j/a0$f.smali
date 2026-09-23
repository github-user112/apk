.class public Lb/e/j/a0$f;
.super Lb/e/j/a0$k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/j/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static c:Z

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Ljava/lang/reflect/Field;


# instance fields
.field public final i:Landroid/view/WindowInsets;

.field public j:Lb/e/d/b;

.field public k:Lb/e/j/a0;

.field public l:Lb/e/d/b;


# direct methods
.method public constructor <init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/e/j/a0$k;-><init>(Lb/e/j/a0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/e/j/a0$f;->j:Lb/e/d/b;

    iput-object p2, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    return-void
.end method

.method public static o()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lb/e/j/a0$f;->d:Ljava/lang/reflect/Method;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lb/e/j/a0$f;->e:Ljava/lang/Class;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lb/e/j/a0$f;->f:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lb/e/j/a0$f;->g:Ljava/lang/reflect/Field;

    sget-object v1, Lb/e/j/a0$f;->e:Ljava/lang/Class;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lb/e/j/a0$f;->h:Ljava/lang/reflect/Field;

    sget-object v1, Lb/e/j/a0$f;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lb/e/j/a0$f;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to get visible insets. (Reflection error). "

    invoke-static {v2}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, Lb/e/j/a0$f;->c:Z

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/e/j/a0$f;->n(Landroid/view/View;)Lb/e/d/b;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lb/e/d/b;->a:Lb/e/d/b;

    :cond_0
    invoke-virtual {p0, p1}, Lb/e/j/a0$f;->p(Lb/e/d/b;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lb/e/j/a0$k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lb/e/j/a0$f;

    iget-object v0, p0, Lb/e/j/a0$f;->l:Lb/e/d/b;

    iget-object p1, p1, Lb/e/j/a0$f;->l:Lb/e/d/b;

    invoke-static {v0, p1}, Lb/e/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Lb/e/d/b;
    .locals 4

    iget-object v0, p0, Lb/e/j/a0$f;->j:Lb/e/d/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lb/e/d/b;->a(IIII)Lb/e/d/b;

    move-result-object v0

    iput-object v0, p0, Lb/e/j/a0$f;->j:Lb/e/d/b;

    :cond_0
    iget-object v0, p0, Lb/e/j/a0$f;->j:Lb/e/d/b;

    return-object v0
.end method

.method public h(IIII)Lb/e/j/a0;
    .locals 3

    iget-object v0, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    invoke-static {v0}, Lb/e/j/a0;->h(Landroid/view/WindowInsets;)Lb/e/j/a0;

    move-result-object v0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v1, Lb/e/j/a0$d;

    invoke-direct {v1, v0}, Lb/e/j/a0$d;-><init>(Lb/e/j/a0;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    new-instance v1, Lb/e/j/a0$c;

    invoke-direct {v1, v0}, Lb/e/j/a0$c;-><init>(Lb/e/j/a0;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    new-instance v1, Lb/e/j/a0$b;

    invoke-direct {v1, v0}, Lb/e/j/a0$b;-><init>(Lb/e/j/a0;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lb/e/j/a0$e;

    invoke-direct {v1, v0}, Lb/e/j/a0$e;-><init>(Lb/e/j/a0;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lb/e/j/a0$f;->g()Lb/e/d/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/e/j/a0;->e(Lb/e/d/b;IIII)Lb/e/d/b;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Lb/e/j/a0$e;->d(Lb/e/d/b;)V

    .line 4
    invoke-virtual {p0}, Lb/e/j/a0$k;->f()Lb/e/d/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/e/j/a0;->e(Lb/e/d/b;IIII)Lb/e/d/b;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Lb/e/j/a0$e;->c(Lb/e/d/b;)V

    .line 6
    invoke-virtual {v1}, Lb/e/j/a0$e;->b()Lb/e/j/a0;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public k([Lb/e/d/b;)V
    .locals 0

    return-void
.end method

.method public l(Lb/e/j/a0;)V
    .locals 0

    iput-object p1, p0, Lb/e/j/a0$f;->k:Lb/e/j/a0;

    return-void
.end method

.method public final n(Landroid/view/View;)Lb/e/d/b;
    .locals 5

    const-string v0, "WindowInsetsCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_5

    sget-boolean v1, Lb/e/j/a0$f;->c:Z

    if-nez v1, :cond_0

    invoke-static {}, Lb/e/j/a0$f;->o()V

    :cond_0
    sget-object v1, Lb/e/j/a0$f;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v3, Lb/e/j/a0$f;->f:Ljava/lang/Class;

    if-eqz v3, :cond_4

    sget-object v3, Lb/e/j/a0$f;->g:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_2
    sget-object v1, Lb/e/j/a0$f;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lb/e/j/a0$f;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    .line 1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3, v4, p1}, Lb/e/d/b;->a(IIII)Lb/e/d/b;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p1

    const-string v1, "Failed to get visible insets. (Reflection error). "

    .line 2
    invoke-static {v1}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-object v2

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lb/e/d/b;)V
    .locals 0

    iput-object p1, p0, Lb/e/j/a0$f;->l:Lb/e/d/b;

    return-void
.end method
