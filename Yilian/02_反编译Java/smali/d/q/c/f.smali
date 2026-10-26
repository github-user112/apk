.class public Ld/q/c/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$x;

.field public final synthetic b:Landroid/view/ViewPropertyAnimator;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ld/q/c/k;


# direct methods
.method public constructor <init>(Ld/q/c/k;Landroidx/recyclerview/widget/RecyclerView$x;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld/q/c/f;->d:Ld/q/c/k;

    iput-object p2, p0, Ld/q/c/f;->a:Landroidx/recyclerview/widget/RecyclerView$x;

    iput-object p3, p0, Ld/q/c/f;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Ld/q/c/f;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/q/c/f;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Ld/q/c/f;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/q/c/f;->d:Ld/q/c/k;

    iget-object v0, p0, Ld/q/c/f;->a:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->c(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 2
    iget-object p1, p0, Ld/q/c/f;->d:Ld/q/c/k;

    iget-object p1, p1, Ld/q/c/k;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Ld/q/c/f;->a:Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ld/q/c/f;->d:Ld/q/c/k;

    invoke-virtual {p1}, Ld/q/c/k;->j()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ld/q/c/f;->d:Ld/q/c/k;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
