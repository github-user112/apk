.class public Lb/b/c/x$a;
.super Lb/e/j/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/c/x;


# direct methods
.method public constructor <init>(Lb/b/c/x;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/x$a;->a:Lb/b/c/x;

    invoke-direct {p0}, Lb/e/j/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lb/b/c/x$a;->a:Lb/b/c/x;

    iget-boolean v0, p1, Lb/b/c/x;->r:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/c/x;->i:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lb/b/c/x$a;->a:Lb/b/c/x;

    iget-object p1, p1, Lb/b/c/x;->f:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lb/b/c/x$a;->a:Lb/b/c/x;

    iget-object p1, p1, Lb/b/c/x;->f:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Lb/b/c/x$a;->a:Lb/b/c/x;

    iget-object p1, p1, Lb/b/c/x;->f:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Lb/b/c/x$a;->a:Lb/b/c/x;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/c/x;->v:Lb/b/g/g;

    .line 1
    iget-object v1, p1, Lb/b/c/x;->m:Lb/b/g/a$a;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lb/b/c/x;->l:Lb/b/g/a;

    invoke-interface {v1, v2}, Lb/b/g/a$a;->d(Lb/b/g/a;)V

    iput-object v0, p1, Lb/b/c/x;->l:Lb/b/g/a;

    iput-object v0, p1, Lb/b/c/x;->m:Lb/b/g/a$a;

    .line 2
    :cond_1
    iget-object p1, p0, Lb/b/c/x$a;->a:Lb/b/c/x;

    iget-object p1, p1, Lb/b/c/x;->e:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lb/e/j/q;->l(Landroid/view/View;)V

    :cond_2
    return-void
.end method
