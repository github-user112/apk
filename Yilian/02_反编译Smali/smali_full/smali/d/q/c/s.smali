.class public Ld/q/c/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/q/c/b$b;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 1
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->C()V

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
