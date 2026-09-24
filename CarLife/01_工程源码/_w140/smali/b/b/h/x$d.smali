.class public Lb/b/h/x$d;
.super Lb/b/h/m0;
.source ""

# interfaces
.implements Lb/b/h/x$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public E:Ljava/lang/CharSequence;

.field public F:Landroid/widget/ListAdapter;

.field public final G:Landroid/graphics/Rect;

.field public H:I

.field public final synthetic I:Lb/b/h/x;


# direct methods
.method public constructor <init>(Lb/b/h/x;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    iput-object p1, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Lb/b/h/m0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lb/b/h/x$d;->G:Landroid/graphics/Rect;

    .line 3
    iput-object p1, p0, Lb/b/h/m0;->t:Landroid/view/View;

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Lb/b/h/m0;->s(Z)V

    .line 5
    iput v0, p0, Lb/b/h/m0;->r:I

    .line 6
    new-instance p2, Lb/b/h/x$d$a;

    invoke-direct {p2, p0, p1}, Lb/b/h/x$d$a;-><init>(Lb/b/h/x$d;Lb/b/h/x;)V

    .line 7
    iput-object p2, p0, Lb/b/h/m0;->u:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 5

    invoke-virtual {p0}, Lb/b/h/m0;->b()Z

    move-result v0

    invoke-virtual {p0}, Lb/b/h/x$d;->t()V

    .line 1
    iget-object v1, p0, Lb/b/h/m0;->D:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2
    invoke-virtual {p0}, Lb/b/h/m0;->f()V

    .line 3
    iget-object v1, p0, Lb/b/h/m0;->g:Lb/b/h/h0;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    :cond_0
    iget-object p1, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 5
    iget-object p2, p0, Lb/b/h/m0;->g:Lb/b/h/h0;

    invoke-virtual {p0}, Lb/b/h/m0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lb/b/h/h0;->setListSelectionHidden(Z)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p2}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lb/b/h/x$d$b;

    invoke-direct {p2, p0}, Lb/b/h/x$d$b;-><init>(Lb/b/h/x$d;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Lb/b/h/x$d$c;

    invoke-direct {p1, p0, p2}, Lb/b/h/x$d$c;-><init>(Lb/b/h/x$d;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    iget-object p2, p0, Lb/b/h/m0;->D:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_3
    return-void
.end method

.method public j()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lb/b/h/x$d;->E:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public l(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/x$d;->E:Ljava/lang/CharSequence;

    return-void
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lb/b/h/m0;->o(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lb/b/h/x$d;->F:Landroid/widget/ListAdapter;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lb/b/h/x$d;->H:I

    return-void
.end method

.method public t()V
    .locals 8

    invoke-virtual {p0}, Lb/b/h/m0;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    iget-object v1, v1, Lb/b/h/x;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-static {v0}, Lb/b/h/f1;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    iget-object v0, v0, Lb/b/h/x;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    iget-object v0, v0, Lb/b/h/x;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    iget-object v0, v0, Lb/b/h/x;->j:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v0, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    iget-object v4, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    iget v5, v4, Lb/b/h/x;->i:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lb/b/h/x$d;->F:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lb/b/h/m0;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lb/b/h/x;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v5, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    iget-object v6, v6, Lb/b/h/x;->j:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    :goto_2
    invoke-virtual {p0, v4}, Lb/b/h/m0;->r(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v5}, Lb/b/h/m0;->r(I)V

    :goto_3
    iget-object v4, p0, Lb/b/h/x$d;->I:Lb/b/h/x;

    invoke-static {v4}, Lb/b/h/f1;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 1
    iget v0, p0, Lb/b/h/m0;->i:I

    sub-int/2addr v3, v0

    .line 2
    iget v0, p0, Lb/b/h/x$d;->H:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_4

    :cond_5
    iget v2, p0, Lb/b/h/x$d;->H:I

    add-int/2addr v0, v2

    add-int v3, v0, v1

    .line 3
    :goto_4
    iput v3, p0, Lb/b/h/m0;->j:I

    return-void
.end method
