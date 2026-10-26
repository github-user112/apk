.class public abstract Landroidx/recyclerview/widget/RecyclerView$k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$k$c;
    }
.end annotation


# instance fields
.field public a:Ld/q/c/b;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Ld/q/c/w$b;

.field public final d:Ld/q/c/w$b;

.field public e:Ld/q/c/w;

.field public f:Ld/q/c/w;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$k$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$k$a;-><init>(Landroidx/recyclerview/widget/RecyclerView$k;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->c:Ld/q/c/w$b;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$k$b;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$k$b;-><init>(Landroidx/recyclerview/widget/RecyclerView$k;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->d:Ld/q/c/w$b;

    new-instance v0, Ld/q/c/w;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->c:Ld/q/c/w$b;

    invoke-direct {v0, v1}, Ld/q/c/w;-><init>(Ld/q/c/w$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->e:Ld/q/c/w;

    new-instance v0, Ld/q/c/w;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->d:Ld/q/c/w$b;

    invoke-direct {v0, v1}, Ld/q/c/w;-><init>(Ld/q/c/w$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->f:Ld/q/c/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->g:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->h:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->j:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->k:Z

    return-void
.end method

.method public static e(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static y(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$k$c;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$k$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$k$c;-><init>()V

    sget-object v1, Ld/q/b;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, Ld/q/b;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    sget p1, Ld/q/b;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    sget p1, Ld/q/b;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$k$c;->c:Z

    sget p1, Ld/q/b;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$k$c;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->i:Z

    return v0
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public H(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$q;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->G()V

    return-void
.end method

.method public I(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->J(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public J(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public K(Landroid/view/View;Ld/g/m/a0/d;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Ld/q/c/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Ld/q/c/b;->h(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$k;->L(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Ld/g/m/a0/d;)V

    :cond_0
    return-void
.end method

.method public L(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Ld/g/m/a0/d;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$k;->x(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$k;->x(Landroid/view/View;)I

    move-result p2

    move v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ld/g/m/a0/d$c;->a(IIIIZZ)Ld/g/m/a0/d$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Ld/g/m/a0/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public M()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public O(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public P(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public Q(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public R()V
    .locals 0

    return-void
.end method

.method public S(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->R()V

    return-void
.end method

.method public T(II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->j(II)V

    return-void
.end method

.method public U(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->z()Z

    move-result p1

    return p1
.end method

.method public V(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->U(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    return p1
.end method

.method public W(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public X()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Y(I)V
    .locals 0

    return-void
.end method

.method public Z(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x1000

    const/4 v3, 0x1

    if-eq p1, v2, :cond_3

    const/16 v2, 0x2000

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->p:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->w()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->t()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->u()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->v()I

    move-result v2

    sub-int/2addr p1, v2

    neg-int p1, p1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->p:I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->w()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->t()I

    move-result v0

    sub-int/2addr p1, v0

    move v0, p1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->u()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->v()I

    move-result v2

    sub-int/2addr p1, v2

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_6

    if-nez p1, :cond_6

    return v1

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->O(II)V

    return v3
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b0(Landroidx/recyclerview/widget/RecyclerView$q;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$k;->o(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->d0(ILandroidx/recyclerview/widget/RecyclerView$q;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c0(Landroidx/recyclerview/widget/RecyclerView$q;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 2
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$x;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 3
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x;->q(Z)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->L:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$h;->e(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$x;->q(Z)V

    .line 4
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$q;

    iput-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$x;->c()V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$q;->h(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$q;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$l;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d0(ILandroidx/recyclerview/widget/RecyclerView$q;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->o(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->e0(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$q;->g(Landroid/view/View;)V

    return-void
.end method

.method public e0(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->o(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Ld/q/c/b;

    .line 1
    invoke-virtual {v0, p1}, Ld/q/c/b;->d(I)I

    move-result p1

    iget-object v1, v0, Ld/q/c/b;->a:Ld/q/c/b$b;

    check-cast v1, Ld/q/c/s;

    invoke-virtual {v1, p1}, Ld/q/c/s;->a(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ld/q/c/b;->b:Ld/q/c/b$a;

    invoke-virtual {v2, p1}, Ld/q/c/b$a;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ld/q/c/b;->i(Landroid/view/View;)Z

    :cond_1
    iget-object v0, v0, Ld/q/c/b;->a:Ld/q/c/b$b;

    check-cast v0, Ld/q/c/s;

    invoke-virtual {v0, p1}, Ld/q/c/s;->c(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 7

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$k;->q(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object p2

    const/4 p3, 0x0

    aget v0, p2, p3

    const/4 v1, 0x1

    aget p2, p2, v1

    if-eqz p5, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->u()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->w()I

    move-result v3

    .line 2
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->v()I

    move-result v5

    sub-int/2addr v4, v5

    .line 4
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$k;->p:I

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->t()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 6
    invoke-static {p5, v6}, Landroidx/recyclerview/widget/RecyclerView;->v(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7
    iget p5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, v0

    if-ge p5, v4, :cond_0

    iget p5, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, v0

    if-le p5, v2, :cond_0

    iget p5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p2

    if-ge p5, v5, :cond_0

    iget p5, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p2

    if-gt p5, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x1

    :goto_1
    if-eqz p5, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    return p3

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 8
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->O(II)V

    :goto_3
    return v1
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g0()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Ld/q/c/b;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Ld/q/c/b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->p:I

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->m:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->n:I

    return-void
.end method

.method public i(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public i0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract l()Landroidx/recyclerview/widget/RecyclerView$l;
.end method

.method public m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$l;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public n(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$l;
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$l;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$l;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>(Landroidx/recyclerview/widget/RecyclerView$l;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$l;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public o(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Ld/q/c/b;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Ld/q/c/b;->d(I)I

    move-result p1

    iget-object v0, v0, Ld/q/c/b;->a:Ld/q/c/b$b;

    check-cast v0, Ld/q/c/s;

    invoke-virtual {v0, p1}, Ld/q/c/s;->a(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Ld/q/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/q/c/b;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->u()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->w()I

    move-result v2

    .line 1
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$k;->o:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->v()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$k;->p:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->t()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v6, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p2, v4

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->s()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    return-object v0
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    return p1
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ld/g/m/s;->o(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$l;->a()I

    move-result p1

    return p1
.end method

.method public z(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    return p1
.end method
