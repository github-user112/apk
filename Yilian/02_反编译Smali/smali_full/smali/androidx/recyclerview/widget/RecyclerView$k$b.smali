.class public Landroidx/recyclerview/widget/RecyclerView$k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/q/c/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$k;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$k;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k$b;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k$b;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 1
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$k;->p:I

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->t()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$k$b;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k$b;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->o(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k$b;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->w()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$k$b;->a:Landroidx/recyclerview/widget/RecyclerView$k;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
