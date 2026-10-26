.class public final Landroidx/recyclerview/widget/RecyclerView$q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "q"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/RecyclerView$p;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->e:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$x;)V

    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->f(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->p(II)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/g/m/s;->L(Landroid/view/View;Ld/g/m/a;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v0, :cond_2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->f:Ld/q/c/x;

    invoke-virtual {p2, p1}, Ld/q/c/x;->b(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 2
    :cond_2
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$q;->d()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p2

    .line 3
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->a(I)Landroidx/recyclerview/widget/RecyclerView$p$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$p$a;->a:Ljava/util/ArrayList;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$p;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$p$a;

    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$p$a;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p2, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->o()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$q;->e()V

    return-void
.end method

.method public c(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 1
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    if-nez v1, :cond_0

    return p1

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Ld/q/c/a;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Ld/q/c/a;->f(II)I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Landroidx/recyclerview/widget/RecyclerView$p;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->g:Landroidx/recyclerview/widget/RecyclerView$p;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->g:Landroidx/recyclerview/widget/RecyclerView$p;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->g:Landroidx/recyclerview/widget/RecyclerView$p;

    return-object v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$q;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Ld/q/c/m$b;

    .line 1
    iget-object v2, v0, Ld/q/c/m$b;->c:[I

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Ld/q/c/m$b;->d:I

    :cond_2
    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$q;->a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$q;->k(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->c()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$q;->h(Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->j()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->i:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Ld/q/c/x;

    invoke-virtual {v0, p1}, Ld/q/c/x;->b(Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void

    .line 3
    :cond_1
    throw v1

    .line 4
    :cond_2
    throw v1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAttached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->L:Landroidx/recyclerview/widget/RecyclerView$h;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$h;->b(Landroidx/recyclerview/widget/RecyclerView$x;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    .line 3
    :cond_3
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$q;

    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_6
    :goto_3
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$q;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(IZJ)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 10

    if-ltz p1, :cond_25

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()I

    move-result v0

    if-ge p1, v0, :cond_25

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 1
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->t()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v7

    if-ne v7, p1, :cond_1

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3
    :cond_2
    throw v3

    :cond_3
    :goto_1
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move-object v6, v3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v6, :cond_19

    .line 4
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_8

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$x;->t()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v8

    if-ne v8, p1, :cond_7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    move-object v6, v7

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    if-nez p2, :cond_f

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    .line 5
    iget-object v5, v1, Ld/q/c/b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_b

    iget-object v7, v1, Ld/q/c/b;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, v1, Ld/q/c/b;->a:Ld/q/c/b$b;

    check-cast v8, Ld/q/c/s;

    if-eqz v8, :cond_a

    .line 6
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v9

    if-ne v9, p1, :cond_9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 8
    :cond_a
    throw v3

    :cond_b
    move-object v7, v3

    :goto_6
    if-eqz v7, :cond_f

    .line 9
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v1

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    .line 10
    iget-object v6, v5, Ld/q/c/b;->a:Ld/q/c/b$b;

    check-cast v6, Ld/q/c/s;

    .line 11
    iget-object v6, v6, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_e

    .line 12
    iget-object v8, v5, Ld/q/c/b;->b:Ld/q/c/b$a;

    invoke-virtual {v8, v6}, Ld/q/c/b$a;->d(I)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v5, Ld/q/c/b;->b:Ld/q/c/b$a;

    invoke-virtual {v8, v6}, Ld/q/c/b$a;->a(I)V

    invoke-virtual {v5, v7}, Ld/q/c/b;->i(Landroid/view/View;)Z

    .line 13
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v5, v7}, Ld/q/c/b;->g(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v6, v5}, Ld/q/c/b;->a(I)V

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$q;->i(Landroid/view/View;)V

    const/16 v5, 0x2020

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    move-object v6, v1

    goto :goto_8

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "trying to unhide a view that was not hidden"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "view is not a child, cannot hide "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_f
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_11

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v7

    if-ne v7, p1, :cond_10

    if-nez p2, :cond_12

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_11
    move-object v6, v3

    :cond_12
    :goto_8
    if-eqz v6, :cond_19

    .line 16
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 17
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    if-nez v1, :cond_16

    if-nez p2, :cond_15

    const/4 p2, 0x4

    .line 18
    invoke-virtual {v6, p2}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->j()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p2, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->s()V

    goto :goto_9

    :cond_13
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->t()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->c()V

    :cond_14
    :goto_9
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$q;->h(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :cond_15
    move-object v6, v3

    goto :goto_a

    :cond_16
    const/4 v0, 0x1

    goto :goto_a

    .line 19
    :cond_17
    iget p1, v6, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-ltz p1, :cond_18

    throw v3

    :cond_18
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_a
    if-nez v6, :cond_1b

    .line 20
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->d:Ld/q/c/a;

    .line 21
    invoke-virtual {p2, p1, v4}, Ld/q/c/a;->f(II)I

    move-result p2

    if-ltz p2, :cond_1a

    .line 22
    throw v3

    :cond_1a
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistency detected. Invalid item position "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(offset:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "state:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p4}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1b
    if-eqz v0, :cond_1c

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 23
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    if-nez p2, :cond_1c

    const/16 p2, 0x2000

    .line 24
    invoke-virtual {v6, p2}, Landroidx/recyclerview/widget/RecyclerView$x;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v6, v4, p2}, Landroidx/recyclerview/widget/RecyclerView$x;->p(II)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$u;->j:Z

    if-eqz p2, :cond_1c

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView$h;->a(Landroidx/recyclerview/widget/RecyclerView$x;)I

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->L:Landroidx/recyclerview/widget/RecyclerView$h;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->e()Ljava/util/List;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$h;->h(Landroidx/recyclerview/widget/RecyclerView$x;)Landroidx/recyclerview/widget/RecyclerView$h$c;

    move-result-object p2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6, p2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$h$c;)V

    :cond_1c
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 25
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    if-eqz p2, :cond_1d

    .line 26
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->g()Z

    move-result p2

    if-eqz p2, :cond_1d

    iput p1, v6, Landroidx/recyclerview/widget/RecyclerView$x;->f:I

    goto :goto_c

    :cond_1d
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->g()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->m()Z

    move-result p2

    if-nez p2, :cond_1e

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result p2

    if-eqz p2, :cond_21

    :cond_1e
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->d:Ld/q/c/a;

    .line 27
    invoke-virtual {p2, p1, v4}, Ld/q/c/a;->f(II)I

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, v6, Landroidx/recyclerview/widget/RecyclerView$x;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v5, p3, v0

    if-eqz v5, :cond_24

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->g:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 29
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$p;->a(I)Landroidx/recyclerview/widget/RecyclerView$p$a;

    move-result-object v0

    iget-wide v0, v0, Landroidx/recyclerview/widget/RecyclerView$p$a;->d:J

    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-eqz v5, :cond_20

    add-long/2addr p1, v0

    cmp-long v0, p1, p3

    if-gez v0, :cond_1f

    goto :goto_b

    :cond_1f
    const/4 v2, 0x0

    :cond_20
    :goto_b
    if-nez v2, :cond_24

    .line 30
    :cond_21
    :goto_c
    iget-object p1, v6, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_22

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_d

    :cond_22
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_23

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :goto_d
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object p2, v6, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_23
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    :goto_e
    iput-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$l;->a:Landroidx/recyclerview/widget/RecyclerView$x;

    iput-boolean v4, p1, Landroidx/recyclerview/widget/RecyclerView$l;->d:Z

    return-object v6

    .line 31
    :cond_24
    throw v3

    .line 32
    :cond_25
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid item position "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Item count:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p3}, Le/a/c/a/a;->H(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :goto_f
    throw p2

    :goto_10
    goto :goto_f
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$q;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->c()V

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$k;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$k;->l:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$q;->f:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$q;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
