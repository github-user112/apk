.class public abstract Landroidx/recyclerview/widget/RecyclerView$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$h$c;,
        Landroidx/recyclerview/widget/RecyclerView$h$a;,
        Landroidx/recyclerview/widget/RecyclerView$h$b;
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$h$b;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$h$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->a:Landroidx/recyclerview/widget/RecyclerView$h$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->c:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->d:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->e:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->f:J

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$x;)I
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->i:I

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_2

    .line 1
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->t(Landroidx/recyclerview/widget/RecyclerView$x;)I

    move-result p0

    :goto_0
    if-eq v1, v3, :cond_2

    if-eq p0, v3, :cond_2

    if-eq v1, p0, :cond_2

    or-int/lit16 v0, v0, 0x800

    :cond_2
    return v0
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView$x;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object p2, p0

    check-cast p2, Ld/q/c/v;

    .line 1
    iget-boolean p2, p2, Ld/q/c/v;->g:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->a:Landroidx/recyclerview/widget/RecyclerView$h$b;

    if-eqz v0, :cond_6

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$x;->q(Z)V

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$x;->h:Landroidx/recyclerview/widget/RecyclerView$x;

    if-nez v3, :cond_0

    iput-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x;

    :cond_0
    iput-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->h:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 2
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->i:I

    and-int/lit8 v1, v1, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$i;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    .line 5
    iget-object v6, v5, Ld/q/c/b;->a:Ld/q/c/b$b;

    check-cast v6, Ld/q/c/s;

    .line 6
    iget-object v6, v6, Ld/q/c/s;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 7
    invoke-virtual {v5, v4}, Ld/q/c/b;->i(Landroid/view/View;)Z

    goto :goto_1

    :cond_2
    iget-object v7, v5, Ld/q/c/b;->b:Ld/q/c/b$a;

    invoke-virtual {v7, v6}, Ld/q/c/b$a;->d(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v5, Ld/q/c/b;->b:Ld/q/c/b$a;

    invoke-virtual {v7, v6}, Ld/q/c/b$a;->e(I)Z

    invoke-virtual {v5, v4}, Ld/q/c/b;->i(Landroid/view/View;)Z

    iget-object v5, v5, Ld/q/c/b;->a:Ld/q/c/b$b;

    check-cast v5, Ld/q/c/s;

    invoke-virtual {v5, v6}, Ld/q/c/s;->c(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 8
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v4

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$q;->k(Landroidx/recyclerview/widget/RecyclerView$x;)V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$q;->h(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :cond_4
    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->R(Z)V

    if-nez v2, :cond_6

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$i;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_2

    :cond_5
    throw v1

    :cond_6
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$h;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$h$a;

    invoke-interface {v2}, Landroidx/recyclerview/widget/RecyclerView$h$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract e(Landroidx/recyclerview/widget/RecyclerView$x;)V
.end method

.method public abstract f()V
.end method

.method public abstract g()Z
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$x;)Landroidx/recyclerview/widget/RecyclerView$h$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$h$c;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$h$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$h$c;-><init>()V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$h$c;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$h$c;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-object v0
.end method
