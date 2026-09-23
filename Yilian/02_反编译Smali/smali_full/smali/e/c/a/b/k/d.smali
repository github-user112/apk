.class public Le/c/a/b/k/d;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Le/c/a/b/k/e;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/c/a/b/k/d;->b:I

    iput v0, p0, Le/c/a/b/k/d;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Le/c/a/b/k/d;->b:I

    iput p1, p0, Le/c/a/b/k/d;->c:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Le/c/a/b/k/d;->a:Le/c/a/b/k/e;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/b/k/e;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    return-void
.end method

.method public C(I)Z
    .locals 3

    iget-object v0, p0, Le/c/a/b/k/d;->a:Le/c/a/b/k/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget v2, v0, Le/c/a/b/k/e;->d:I

    if-eq v2, p1, :cond_0

    iput p1, v0, Le/c/a/b/k/e;->d:I

    invoke-virtual {v0}, Le/c/a/b/k/e;->a()V

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2
    :cond_1
    iput p1, p0, Le/c/a/b/k/d;->b:I

    return v1
.end method

.method public j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Le/c/a/b/k/d;->B(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Le/c/a/b/k/d;->a:Le/c/a/b/k/e;

    if-nez p1, :cond_0

    new-instance p1, Le/c/a/b/k/e;

    invoke-direct {p1, p2}, Le/c/a/b/k/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/c/a/b/k/d;->a:Le/c/a/b/k/e;

    :cond_0
    iget-object p1, p0, Le/c/a/b/k/d;->a:Le/c/a/b/k/e;

    .line 1
    iget-object p2, p1, Le/c/a/b/k/e;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p1, Le/c/a/b/k/e;->b:I

    iget-object p2, p1, Le/c/a/b/k/e;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Le/c/a/b/k/e;->c:I

    invoke-virtual {p1}, Le/c/a/b/k/e;->a()V

    .line 2
    iget p1, p0, Le/c/a/b/k/d;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p3, p0, Le/c/a/b/k/d;->a:Le/c/a/b/k/e;

    .line 3
    iget v0, p3, Le/c/a/b/k/e;->d:I

    if-eq v0, p1, :cond_1

    iput p1, p3, Le/c/a/b/k/e;->d:I

    invoke-virtual {p3}, Le/c/a/b/k/e;->a()V

    .line 4
    :cond_1
    iput p2, p0, Le/c/a/b/k/d;->b:I

    :cond_2
    iget p1, p0, Le/c/a/b/k/d;->c:I

    if-eqz p1, :cond_4

    iget-object p3, p0, Le/c/a/b/k/d;->a:Le/c/a/b/k/e;

    .line 5
    iget v0, p3, Le/c/a/b/k/e;->e:I

    if-eq v0, p1, :cond_3

    iput p1, p3, Le/c/a/b/k/e;->e:I

    invoke-virtual {p3}, Le/c/a/b/k/e;->a()V

    .line 6
    :cond_3
    iput p2, p0, Le/c/a/b/k/d;->c:I

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
