.class public Lb/b/c/m$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lb/b/g/a$a;

.field public final synthetic b:Lb/b/c/m;


# direct methods
.method public constructor <init>(Lb/b/c/m;Lb/b/g/a$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/c/m$d;->a:Lb/b/g/a$a;

    return-void
.end method


# virtual methods
.method public a(Lb/b/g/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object v0, v0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    invoke-static {v0}, Lb/e/j/q;->l(Landroid/view/View;)V

    iget-object v0, p0, Lb/b/c/m$d;->a:Lb/b/g/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/g/a$a;->a(Lb/b/g/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/b/g/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lb/b/c/m$d;->a:Lb/b/g/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/g/a$a;->b(Lb/b/g/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Lb/b/g/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lb/b/c/m$d;->a:Lb/b/g/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/g/a$a;->c(Lb/b/g/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Lb/b/g/a;)V
    .locals 2

    iget-object v0, p0, Lb/b/c/m$d;->a:Lb/b/g/a$a;

    invoke-interface {v0, p1}, Lb/b/g/a$a;->d(Lb/b/g/a;)V

    iget-object p1, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object v0, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object v0, v0, Lb/b/c/m;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object v0, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/b/c/m;->I()V

    iget-object p1, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object v0, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lb/e/j/q;->a(Landroid/view/View;)Lb/e/j/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/e/j/w;->a(F)Lb/e/j/w;

    iput-object v0, p1, Lb/b/c/m;->y:Lb/e/j/w;

    iget-object p1, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->y:Lb/e/j/w;

    new-instance v0, Lb/b/c/m$d$a;

    invoke-direct {v0, p0}, Lb/b/c/m$d$a;-><init>(Lb/b/c/m$d;)V

    .line 1
    iget-object v1, p1, Lb/e/j/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Lb/e/j/w;->e(Landroid/view/View;Lb/e/j/x;)V

    .line 2
    :cond_1
    iget-object p1, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object v0, p1, Lb/b/c/m;->n:Lb/b/c/k;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lb/b/c/m;->u:Lb/b/g/a;

    invoke-interface {v0, p1}, Lb/b/c/k;->p0(Lb/b/g/a;)V

    :cond_2
    iget-object p1, p0, Lb/b/c/m$d;->b:Lb/b/c/m;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/c/m;->u:Lb/b/g/a;

    iget-object p1, p1, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/e/j/q;->l(Landroid/view/View;)V

    return-void
.end method
