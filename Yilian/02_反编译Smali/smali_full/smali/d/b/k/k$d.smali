.class public Ld/b/k/k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/p/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ld/b/p/a$a;

.field public final synthetic b:Ld/b/k/k;


# direct methods
.method public constructor <init>(Ld/b/k/k;Ld/b/p/a$a;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/b/k/k$d;->a:Ld/b/p/a$a;

    return-void
.end method


# virtual methods
.method public a(Ld/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/k$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/p/a$a;->a(Ld/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Ld/b/p/a;)V
    .locals 2

    iget-object v0, p0, Ld/b/k/k$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1}, Ld/b/p/a$a;->b(Ld/b/p/a;)V

    iget-object p1, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object v0, p1, Ld/b/k/k;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object v0, v0, Ld/b/k/k;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object v0, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ld/b/k/k;->y()V

    iget-object p1, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object v0, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ld/g/m/s;->a(Landroid/view/View;)Ld/g/m/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/g/m/v;->a(F)Ld/g/m/v;

    iput-object v0, p1, Ld/b/k/k;->r:Ld/g/m/v;

    iget-object p1, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->r:Ld/g/m/v;

    new-instance v0, Ld/b/k/k$d$a;

    invoke-direct {v0, p0}, Ld/b/k/k$d$a;-><init>(Ld/b/k/k$d;)V

    .line 1
    iget-object v1, p1, Ld/g/m/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Ld/g/m/v;->e(Landroid/view/View;Ld/g/m/w;)V

    .line 2
    :cond_1
    iget-object p1, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object v0, p1, Ld/b/k/k;->g:Ld/b/k/i;

    if-eqz v0, :cond_2

    iget-object p1, p1, Ld/b/k/k;->n:Ld/b/p/a;

    invoke-interface {v0, p1}, Ld/b/k/i;->d(Ld/b/p/a;)V

    :cond_2
    iget-object p1, p0, Ld/b/k/k$d;->b:Ld/b/k/k;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/k/k;->n:Ld/b/p/a;

    return-void
.end method

.method public c(Ld/b/p/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/k$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/p/a$a;->c(Ld/b/p/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Ld/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/k$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/p/a$a;->d(Ld/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
