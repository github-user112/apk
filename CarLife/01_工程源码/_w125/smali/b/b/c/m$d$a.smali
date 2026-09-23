.class public Lb/b/c/m$d$a;
.super Lb/e/j/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/c/m$d;->d(Lb/b/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/c/m$d;


# direct methods
.method public constructor <init>(Lb/b/c/m$d;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/m$d$a;->a:Lb/b/c/m$d;

    invoke-direct {p0}, Lb/e/j/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/c/m$d$a;->a:Lb/b/c/m$d;

    iget-object p1, p1, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lb/b/c/m$d$a;->a:Lb/b/c/m$d;

    iget-object p1, p1, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object v0, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/c/m$d$a;->a:Lb/b/c/m$d;

    iget-object p1, p1, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lb/e/j/q;->l(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/b/c/m$d$a;->a:Lb/b/c/m$d;

    iget-object p1, p1, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    iget-object p1, p0, Lb/b/c/m$d$a;->a:Lb/b/c/m$d;

    iget-object p1, p1, Lb/b/c/m$d;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->y:Lb/e/j/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/e/j/w;->d(Lb/e/j/x;)Lb/e/j/w;

    iget-object p1, p0, Lb/b/c/m$d$a;->a:Lb/b/c/m$d;

    iget-object p1, p1, Lb/b/c/m$d;->b:Lb/b/c/m;

    iput-object v0, p1, Lb/b/c/m;->y:Lb/e/j/w;

    iget-object p1, p1, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/e/j/q;->l(Landroid/view/View;)V

    return-void
.end method
