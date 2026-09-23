.class public Ld/q/c/u$a;
.super Ld/g/m/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/q/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:Ld/q/c/u;


# direct methods
.method public constructor <init>(Ld/q/c/u;)V
    .locals 0

    invoke-direct {p0}, Ld/g/m/a;-><init>()V

    iput-object p1, p0, Ld/q/c/u$a;->d:Ld/q/c/u;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ld/g/m/a0/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/g/m/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Ld/g/m/a0/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v0, p0, Ld/q/c/u$a;->d:Ld/q/c/u;

    invoke-virtual {v0}, Ld/q/c/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/q/c/u$a;->d:Ld/q/c/u;

    iget-object v0, v0, Ld/q/c/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/q/c/u$a;->d:Ld/q/c/u;

    iget-object v0, v0, Ld/q/c/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$k;->K(Landroid/view/View;Ld/g/m/a0/d;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ld/g/m/a;->c(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Ld/q/c/u$a;->d:Ld/q/c/u;

    invoke-virtual {p1}, Ld/q/c/u;->d()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ld/q/c/u$a;->d:Ld/q/c/u;

    iget-object p1, p1, Ld/q/c/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$k;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/q/c/u$a;->d:Ld/q/c/u;

    iget-object p1, p1, Ld/q/c/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$k;

    move-result-object p1

    .line 1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$k;->a0()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
