.class public Ld/q/c/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/q/c/a$a;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/q/c/a$b;)V
    .locals 4

    iget v0, p1, Ld/q/c/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$k;

    iget v3, p1, Ld/q/c/a$b;->b:I

    iget p1, p1, Ld/q/c/a$b;->d:I

    invoke-virtual {v2, v0, v3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$k;->P(Landroidx/recyclerview/widget/RecyclerView;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$k;

    iget v2, p1, Ld/q/c/a$b;->b:I

    iget v3, p1, Ld/q/c/a$b;->d:I

    iget-object p1, p1, Ld/q/c/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->S(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$k;

    iget v2, p1, Ld/q/c/a$b;->b:I

    iget p1, p1, Ld/q/c/a$b;->d:I

    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->Q(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$k;

    iget v2, p1, Ld/q/c/a$b;->b:I

    iget p1, p1, Ld/q/c/a$b;->d:I

    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->N(Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_0
    return-void
.end method

.method public b(I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 7

    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v1}, Ld/q/c/b;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v5, v2}, Ld/q/c/b;->e(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v4, v6}, Ld/q/c/b;->h(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    return-object v3

    .line 2
    :cond_4
    iget-object p1, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Ld/q/c/b;->h(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    return-object v4
.end method

.method public c(IILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v1}, Ld/q/c/b;->f()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v5, v2}, Ld/q/c/b;->e(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v7, p1, :cond_1

    if-ge v7, p2, :cond_1

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    invoke-virtual {v6, p3}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$l;

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$l;->c:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 2
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$x;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v2, p1, :cond_3

    if-ge v2, p2, :cond_3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$q;->f(I)V

    goto :goto_2

    .line 3
    :cond_5
    iget-object p1, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v4, p1, Landroidx/recyclerview/widget/RecyclerView;->k0:Z

    return-void
.end method

.method public d(II)V
    .locals 8

    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v1}, Ld/q/c/b;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v5, v3}, Ld/q/c/b;->e(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-ge v6, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$x;->n(IZ)V

    throw v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 2
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    const/4 v5, 0x1

    if-ge v2, v3, :cond_5

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$x;

    if-eqz v6, :cond_4

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-ge v7, p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6, p2, v5}, Landroidx/recyclerview/widget/RecyclerView$x;->n(IZ)V

    throw v4

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4
    iget-object p1, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v5, p1, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    return-void
.end method

.method public e(II)V
    .locals 12

    iget-object v0, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v1}, Ld/q/c/b;->f()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge p1, p2, :cond_0

    move v4, p1

    move v5, p2

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    move v5, p1

    move v4, p2

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    if-ge v8, v1, :cond_4

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v10, v8}, Ld/q/c/b;->e(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v10

    if-eqz v10, :cond_3

    iget v11, v10, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v11, v4, :cond_3

    if-le v11, v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v11, p1, :cond_2

    sub-int/2addr p2, p1

    invoke-virtual {v10, p2, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->n(IZ)V

    throw v9

    :cond_2
    invoke-virtual {v10, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->n(IZ)V

    throw v9

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    if-ge p1, p2, :cond_5

    move v4, p1

    move v5, p2

    goto :goto_3

    :cond_5
    move v5, p1

    move v4, p2

    const/4 v2, 0x1

    .line 2
    :goto_3
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_9

    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$x;

    if-eqz v10, :cond_8

    iget v11, v10, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v11, v4, :cond_8

    if-le v11, v5, :cond_6

    goto :goto_5

    :cond_6
    if-ne v11, p1, :cond_7

    sub-int/2addr p2, p1

    invoke-virtual {v10, p2, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->n(IZ)V

    throw v9

    :cond_7
    invoke-virtual {v10, v2, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->n(IZ)V

    throw v9

    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4
    iget-object p1, p0, Ld/q/c/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v3, p1, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    return-void
.end method
