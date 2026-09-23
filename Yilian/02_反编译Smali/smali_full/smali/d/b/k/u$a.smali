.class public Ld/b/k/u$a;
.super Ld/g/m/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/u;


# direct methods
.method public constructor <init>(Ld/b/k/u;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/u$a;->a:Ld/b/k/u;

    invoke-direct {p0}, Ld/g/m/x;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Ld/b/k/u$a;->a:Ld/b/k/u;

    iget-boolean v0, p1, Ld/b/k/u;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/b/k/u;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Ld/b/k/u$a;->a:Ld/b/k/u;

    iget-object p1, p1, Ld/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Ld/b/k/u$a;->a:Ld/b/k/u;

    iget-object p1, p1, Ld/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Ld/b/k/u$a;->a:Ld/b/k/u;

    iget-object p1, p1, Ld/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Ld/b/k/u$a;->a:Ld/b/k/u;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/k/u;->u:Ld/b/p/g;

    .line 1
    iget-object v1, p1, Ld/b/k/u;->k:Ld/b/p/a$a;

    if-eqz v1, :cond_1

    iget-object v2, p1, Ld/b/k/u;->j:Ld/b/p/a;

    invoke-interface {v1, v2}, Ld/b/p/a$a;->b(Ld/b/p/a;)V

    iput-object v0, p1, Ld/b/k/u;->j:Ld/b/p/a;

    iput-object v0, p1, Ld/b/k/u;->k:Ld/b/p/a$a;

    .line 2
    :cond_1
    iget-object p1, p0, Ld/b/k/u$a;->a:Ld/b/k/u;

    iget-object p1, p1, Ld/b/k/u;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ld/g/m/s;->K(Landroid/view/View;)V

    :cond_2
    return-void
.end method
