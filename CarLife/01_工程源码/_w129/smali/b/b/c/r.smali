.class public Lb/b/c/r;
.super Lb/e/j/y;
.source ""


# instance fields
.field public final synthetic a:Lb/b/c/m;


# direct methods
.method public constructor <init>(Lb/b/c/m;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    invoke-direct {p0}, Lb/e/j/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->y:Lb/e/j/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/e/j/w;->d(Lb/e/j/x;)Lb/e/j/w;

    iget-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    iput-object v0, p1, Lb/b/c/m;->y:Lb/e/j/w;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/c/r;->a:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lb/e/j/q;->l(Landroid/view/View;)V

    :cond_0
    return-void
.end method
