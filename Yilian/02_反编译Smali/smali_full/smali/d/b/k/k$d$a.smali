.class public Ld/b/k/k$d$a;
.super Ld/g/m/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/k/k$d;->b(Ld/b/p/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/k$d;


# direct methods
.method public constructor <init>(Ld/b/k/k$d;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/k$d$a;->a:Ld/b/k/k$d;

    invoke-direct {p0}, Ld/g/m/x;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/k$d$a;->a:Ld/b/k/k$d;

    iget-object p1, p1, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/b/k/k$d$a;->a:Ld/b/k/k$d;

    iget-object p1, p1, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object v0, p1, Ld/b/k/k;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/b/k/k$d$a;->a:Ld/b/k/k$d;

    iget-object p1, p1, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld/g/m/s;->K(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Ld/b/k/k$d$a;->a:Ld/b/k/k$d;

    iget-object p1, p1, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Ld/b/k/k$d$a;->a:Ld/b/k/k$d;

    iget-object p1, p1, Ld/b/k/k$d;->b:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->r:Ld/g/m/v;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/g/m/v;->d(Ld/g/m/w;)Ld/g/m/v;

    iget-object p1, p0, Ld/b/k/k$d$a;->a:Ld/b/k/k$d;

    iget-object p1, p1, Ld/b/k/k$d;->b:Ld/b/k/k;

    iput-object v0, p1, Ld/b/k/k;->r:Ld/g/m/v;

    return-void
.end method
