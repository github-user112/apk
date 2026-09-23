.class public Ld/b/k/q;
.super Landroid/app/Dialog;
.source ""

# interfaces
.implements Ld/b/k/i;


# instance fields
.field public a:Ld/b/k/j;

.field public final b:Ld/g/m/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Ld/b/a;->dialogTheme:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v1, p2

    .line 2
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ld/b/k/q$a;

    invoke-direct {v1, p0}, Ld/b/k/q$a;-><init>(Ld/b/k/q;)V

    iput-object v1, p0, Ld/b/k/q;->b:Ld/g/m/d$a;

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v1

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v2, Ld/b/a;->dialogTheme:I

    invoke-virtual {p1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 4
    :cond_1
    move-object p1, v1

    check-cast p1, Ld/b/k/k;

    .line 5
    iput p2, p1, Ld/b/k/k;->O:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v1, p1}, Ld/b/k/j;->i(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()Ld/b/k/j;
    .locals 1

    iget-object v0, p0, Ld/b/k/q;->a:Ld/b/k/j;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Ld/b/k/j;->e(Landroid/app/Dialog;Ld/b/k/i;)Ld/b/k/j;

    move-result-object v0

    iput-object v0, p0, Ld/b/k/q;->a:Ld/b/k/j;

    :cond_0
    iget-object v0, p0, Ld/b/k/q;->a:Ld/b/k/j;

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/k/j;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Ld/b/p/a;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public d(Ld/b/p/a;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld/b/k/q;->b:Ld/g/m/d$a;

    invoke-static {v1, v0, p0, p1}, Ld/g/m/d;->a(Ld/g/m/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    .line 1
    invoke-virtual {v0}, Ld/b/k/k;->z()V

    iget-object v0, v0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/k/j;->h()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/k/j;->g()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/k/j;->i(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/k/j;->j()V

    return-void
.end method

.method public p(Ld/b/p/a$a;)Ld/b/p/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/k/j;->m(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/k/j;->n(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/k/j;->o(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/b/k/j;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ld/b/k/q;->a()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/k/j;->p(Ljava/lang/CharSequence;)V

    return-void
.end method
