.class public Le/c/a/b/t/d;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityManager;

.field public final b:Ld/g/m/a0/b;

.field public c:Le/c/a/b/t/c;

.field public d:Le/c/a/b/t/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Le/c/a/b/i;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Le/c/a/b/i;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Le/c/a/b/i;->SnackbarLayout_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld/g/m/s;->Q(Landroid/view/View;F)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Le/c/a/b/t/d;->a:Landroid/view/accessibility/AccessibilityManager;

    new-instance p1, Le/c/a/b/t/d$a;

    invoke-direct {p1, p0}, Le/c/a/b/t/d$a;-><init>(Le/c/a/b/t/d;)V

    iput-object p1, p0, Le/c/a/b/t/d;->b:Ld/g/m/a0/b;

    iget-object p2, p0, Le/c/a/b/t/d;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/g/m/a0/c;

    invoke-direct {v0, p1}, Ld/g/m/a0/c;-><init>(Ld/g/m/a0/b;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 2
    :cond_1
    iget-object p1, p0, Le/c/a/b/t/d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Le/c/a/b/t/d;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method public static synthetic a(Le/c/a/b/t/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Le/c/a/b/t/d;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Le/c/a/b/t/d;->d:Le/c/a/b/t/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Le/c/a/b/t/b;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Ld/g/m/s;->K(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Le/c/a/b/t/d;->d:Le/c/a/b/t/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Le/c/a/b/t/b;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Le/c/a/b/t/d;->a:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Le/c/a/b/t/d;->b:Ld/g/m/a0/b;

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ld/g/m/a0/c;

    invoke-direct {v2, v1}, Ld/g/m/a0/c;-><init>(Ld/g/m/a0/b;)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Le/c/a/b/t/d;->c:Le/c/a/b/t/c;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Le/c/a/b/t/c;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setOnAttachStateChangeListener(Le/c/a/b/t/b;)V
    .locals 0

    iput-object p1, p0, Le/c/a/b/t/d;->d:Le/c/a/b/t/b;

    return-void
.end method

.method public setOnLayoutChangeListener(Le/c/a/b/t/c;)V
    .locals 0

    iput-object p1, p0, Le/c/a/b/t/d;->c:Le/c/a/b/t/c;

    return-void
.end method
