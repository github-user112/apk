.class public Ld/d/a/a;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final c:Ld/d/a/f;


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/d/a/c;

    invoke-direct {v0}, Ld/d/a/c;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/d/a/b;

    invoke-direct {v0}, Ld/d/a/b;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ld/d/a/d;

    invoke-direct {v0}, Ld/d/a/d;-><init>()V

    :goto_0
    sput-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    invoke-interface {v0}, Ld/d/a/f;->e()V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ld/d/a/f;->b(Ld/d/a/e;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ld/d/a/f;->d(Ld/d/a/e;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ld/d/a/f;->a(Ld/d/a/e;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->b:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ld/d/a/f;->f(Ld/d/a/e;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->a:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 6

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    instance-of v0, v0, Ld/d/a/c;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Ld/d/a/a;->c:Ld/d/a/f;

    invoke-interface {v4, v1}, Ld/d/a/f;->h(Ld/d/a/e;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Ld/d/a/a;->c:Ld/d/a/f;

    invoke-interface {v2, v1}, Ld/d/a/f;->g(Ld/d/a/e;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ld/d/a/f;->l(Ld/d/a/e;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ld/d/a/f;->l(Ld/d/a/e;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ld/d/a/f;->j(Ld/d/a/e;F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ld/d/a/f;->m(Ld/d/a/e;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->b:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Ld/d/a/a;->b:Z

    sget-object p1, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld/d/a/f;->k(Ld/d/a/e;)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    sget-object v0, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ld/d/a/f;->c(Ld/d/a/e;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Ld/d/a/a;->a:Z

    sget-object p1, Ld/d/a/a;->c:Ld/d/a/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld/d/a/f;->i(Ld/d/a/e;)V

    :cond_0
    return-void
.end method
