.class public final Ld/q/c/p;
.super Ld/q/c/r;
.source ""


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld/q/c/r;-><init>(Landroidx/recyclerview/widget/RecyclerView$k;Ld/q/c/p;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object v1, p0, Ld/q/c/r;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object v1, p0, Ld/q/c/r;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Ld/q/c/r;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 1
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->v()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Ld/q/c/r;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->u()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Ld/q/c/r;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 1
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->u()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Ld/q/c/r;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->v()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method
