.class public Ld/b/q/y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static j:Ld/b/q/y0;

.field public static k:Ld/b/q/y0;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/CharSequence;

.field public final c:I

.field public final d:Ljava/lang/Runnable;

.field public final e:Ljava/lang/Runnable;

.field public f:I

.field public g:I

.field public h:Ld/b/q/z0;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/b/q/y0$a;

    invoke-direct {v0, p0}, Ld/b/q/y0$a;-><init>(Ld/b/q/y0;)V

    iput-object v0, p0, Ld/b/q/y0;->d:Ljava/lang/Runnable;

    new-instance v0, Ld/b/q/y0$b;

    invoke-direct {v0, p0}, Ld/b/q/y0$b;-><init>(Ld/b/q/y0;)V

    iput-object v0, p0, Ld/b/q/y0;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    iput-object p2, p0, Ld/b/q/y0;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Ld/g/m/u;->c(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Ld/b/q/y0;->c:I

    invoke-virtual {p0}, Ld/b/q/y0;->a()V

    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static c(Ld/b/q/y0;)V
    .locals 3

    sget-object v0, Ld/b/q/y0;->j:Ld/b/q/y0;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Ld/b/q/y0;->a:Landroid/view/View;

    iget-object v0, v0, Ld/b/q/y0;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    :cond_0
    sput-object p0, Ld/b/q/y0;->j:Ld/b/q/y0;

    if-eqz p0, :cond_1

    .line 3
    iget-object v0, p0, Ld/b/q/y0;->a:Landroid/view/View;

    iget-object p0, p0, Ld/b/q/y0;->d:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Ld/b/q/y0;->f:I

    iput v0, p0, Ld/b/q/y0;->g:I

    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Ld/b/q/y0;->k:Ld/b/q/y0;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    sput-object v1, Ld/b/q/y0;->k:Ld/b/q/y0;

    iget-object v0, p0, Ld/b/q/y0;->h:Ld/b/q/z0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b/q/z0;->a()V

    iput-object v1, p0, Ld/b/q/y0;->h:Ld/b/q/z0;

    invoke-virtual {p0}, Ld/b/q/y0;->a()V

    iget-object v0, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v0, Ld/b/q/y0;->j:Ld/b/q/y0;

    if-ne v0, p0, :cond_2

    invoke-static {v1}, Ld/b/q/y0;->c(Ld/b/q/y0;)V

    :cond_2
    iget-object v0, p0, Ld/b/q/y0;->a:Landroid/view/View;

    iget-object v1, p0, Ld/b/q/y0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Z)V
    .locals 14

    iget-object v0, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-static {v0}, Ld/g/m/s;->z(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ld/b/q/y0;->c(Ld/b/q/y0;)V

    sget-object v0, Ld/b/q/y0;->k:Ld/b/q/y0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/b/q/y0;->b()V

    :cond_1
    sput-object p0, Ld/b/q/y0;->k:Ld/b/q/y0;

    iput-boolean p1, p0, Ld/b/q/y0;->i:Z

    new-instance p1, Ld/b/q/z0;

    iget-object v0, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ld/b/q/z0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ld/b/q/y0;->h:Ld/b/q/z0;

    iget-object v0, p0, Ld/b/q/y0;->a:Landroid/view/View;

    iget v1, p0, Ld/b/q/y0;->f:I

    iget v2, p0, Ld/b/q/y0;->g:I

    iget-boolean v3, p0, Ld/b/q/y0;->i:Z

    iget-object v4, p0, Ld/b/q/y0;->b:Ljava/lang/CharSequence;

    .line 1
    iget-object v5, p1, Ld/b/q/z0;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 2
    invoke-virtual {p1}, Ld/b/q/z0;->a()V

    :cond_3
    iget-object v5, p1, Ld/b/q/z0;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Ld/b/q/z0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v5, p1, Ld/b/q/z0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Ld/b/d;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v9

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lt v8, v5, :cond_5

    iget-object v5, p1, Ld/b/q/z0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Ld/b/d;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int v8, v2, v5

    sub-int/2addr v2, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v2, 0x0

    :goto_2
    const/16 v5, 0x31

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v5, p1, Ld/b/q/z0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v3, :cond_6

    sget v10, Ld/b/d;->tooltip_y_offset_touch:I

    goto :goto_3

    :cond_6
    sget v10, Ld/b/d;->tooltip_y_offset_non_touch:I

    :goto_3
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_7

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v11, v9, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    :goto_4
    instance-of v11, v9, Landroid/content/ContextWrapper;

    if-eqz v11, :cond_9

    instance-of v11, v9, Landroid/app/Activity;

    if-eqz v11, :cond_8

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    goto :goto_5

    :cond_8
    check-cast v9, Landroid/content/ContextWrapper;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    goto :goto_4

    :cond_9
    :goto_5
    if-nez v10, :cond_a

    const-string v0, "TooltipPopup"

    const-string v1, "Cannot find app view"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_a
    iget-object v9, p1, Ld/b/q/z0;->e:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v9, p1, Ld/b/q/z0;->e:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->left:I

    if-gez v11, :cond_c

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_c

    iget-object v9, p1, Ld/b/q/z0;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v11, "status_bar_height"

    const-string v12, "dimen"

    const-string v13, "android"

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget-object v12, p1, Ld/b/q/z0;->e:Landroid/graphics/Rect;

    iget v13, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v12, v6, v11, v13, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c
    iget-object v9, p1, Ld/b/q/z0;->g:[I

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v9, p1, Ld/b/q/z0;->f:[I

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p1, Ld/b/q/z0;->f:[I

    aget v9, v0, v6

    iget-object v11, p1, Ld/b/q/z0;->g:[I

    aget v12, v11, v6

    sub-int/2addr v9, v12

    aput v9, v0, v6

    aget v9, v0, v7

    aget v11, v11, v7

    sub-int/2addr v9, v11

    aput v9, v0, v7

    aget v0, v0, v6

    add-int/2addr v0, v1

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p1, Ld/b/q/z0;->b:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p1, Ld/b/q/z0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p1, Ld/b/q/z0;->f:[I

    aget v6, v1, v7

    add-int/2addr v6, v2

    sub-int/2addr v6, v5

    sub-int/2addr v6, v0

    aget v1, v1, v7

    add-int/2addr v1, v8

    add-int/2addr v1, v5

    if-eqz v3, :cond_d

    if-ltz v6, :cond_e

    goto :goto_7

    :cond_d
    add-int/2addr v0, v1

    iget-object v2, p1, Ld/b/q/z0;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v0, v2, :cond_f

    :cond_e
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    :cond_f
    :goto_7
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6
    :goto_8
    iget-object v0, p1, Ld/b/q/z0;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p1, Ld/b/q/z0;->b:Landroid/view/View;

    iget-object p1, p1, Ld/b/q/z0;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean p1, p0, Ld/b/q/y0;->i:Z

    if-eqz p1, :cond_10

    const-wide/16 v0, 0x9c4

    goto :goto_a

    :cond_10
    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_11

    const-wide/16 v0, 0xbb8

    goto :goto_9

    :cond_11
    const-wide/16 v0, 0x3a98

    .line 9
    :goto_9
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    :goto_a
    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    iget-object v2, p0, Ld/b/q/y0;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    iget-object v2, p0, Ld/b/q/y0;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Ld/b/q/y0;->h:Ld/b/q/z0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Ld/b/q/y0;->i:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ld/b/q/y0;->a()V

    invoke-virtual {p0}, Ld/b/q/y0;->b()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ld/b/q/y0;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ld/b/q/y0;->h:Ld/b/q/z0;

    if-nez p1, :cond_5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget v1, p0, Ld/b/q/y0;->f:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Ld/b/q/y0;->c:I

    if-gt v1, v2, :cond_4

    iget v1, p0, Ld/b/q/y0;->g:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Ld/b/q/y0;->c:I

    if-gt v1, v2, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    iput p1, p0, Ld/b/q/y0;->f:I

    iput p2, p0, Ld/b/q/y0;->g:I

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_5

    .line 2
    invoke-static {p0}, Ld/b/q/y0;->c(Ld/b/q/y0;)V

    :cond_5
    :goto_1
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/b/q/y0;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ld/b/q/y0;->g:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ld/b/q/y0;->d(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ld/b/q/y0;->b()V

    return-void
.end method
