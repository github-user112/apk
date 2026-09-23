.class public Lb/b/c/m$e;
.super Lb/b/g/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic c:Lb/b/c/m;


# direct methods
.method public constructor <init>(Lb/b/c/m;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    invoke-direct {p0, p2}, Lb/b/g/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 10

    new-instance v0, Lb/b/g/e$a;

    iget-object v1, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    iget-object v1, v1, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lb/b/g/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lb/b/c/m;->u:Lb/b/g/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/b/g/a;->c()V

    :cond_0
    new-instance v1, Lb/b/c/m$d;

    invoke-direct {v1, p1, v0}, Lb/b/c/m$d;-><init>(Lb/b/c/m;Lb/b/g/a$a;)V

    .line 2
    invoke-virtual {p1}, Lb/b/c/m;->P()V

    iget-object v2, p1, Lb/b/c/m;->o:Lb/b/c/a;

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 3
    check-cast v2, Lb/b/c/x;

    .line 4
    iget-object v7, v2, Lb/b/c/x;->k:Lb/b/c/x$d;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lb/b/c/x$d;->c()V

    :cond_1
    iget-object v7, v2, Lb/b/c/x;->e:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v7, v2, Lb/b/c/x;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance v7, Lb/b/c/x$d;

    iget-object v8, v2, Lb/b/c/x;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v2, v8, v1}, Lb/b/c/x$d;-><init>(Lb/b/c/x;Landroid/content/Context;Lb/b/g/a$a;)V

    .line 5
    iget-object v8, v7, Lb/b/c/x$d;->e:Lb/b/g/i/g;

    invoke-virtual {v8}, Lb/b/g/i/g;->z()V

    :try_start_0
    iget-object v8, v7, Lb/b/c/x$d;->f:Lb/b/g/a$a;

    iget-object v9, v7, Lb/b/c/x$d;->e:Lb/b/g/i/g;

    invoke-interface {v8, v7, v9}, Lb/b/g/a$a;->c(Lb/b/g/a;Landroid/view/Menu;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v7, Lb/b/c/x$d;->e:Lb/b/g/i/g;

    invoke-virtual {v9}, Lb/b/g/i/g;->y()V

    if-eqz v8, :cond_2

    .line 6
    iput-object v7, v2, Lb/b/c/x;->k:Lb/b/c/x$d;

    invoke-virtual {v7}, Lb/b/c/x$d;->i()V

    iget-object v8, v2, Lb/b/c/x;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lb/b/g/a;)V

    invoke-virtual {v2, v4}, Lb/b/c/x;->d(Z)V

    iget-object v2, v2, Lb/b/c/x;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    move-object v7, v6

    .line 7
    :goto_0
    iput-object v7, p1, Lb/b/c/m;->u:Lb/b/g/a;

    if-eqz v7, :cond_3

    iget-object v2, p1, Lb/b/c/m;->n:Lb/b/c/k;

    if-eqz v2, :cond_3

    invoke-interface {v2, v7}, Lb/b/c/k;->R(Lb/b/g/a;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, v7, Lb/b/c/x$d;->e:Lb/b/g/i/g;

    invoke-virtual {v0}, Lb/b/g/i/g;->y()V

    throw p1

    .line 9
    :cond_3
    :goto_1
    iget-object v2, p1, Lb/b/c/m;->u:Lb/b/g/a;

    if-nez v2, :cond_12

    .line 10
    invoke-virtual {p1}, Lb/b/c/m;->I()V

    iget-object v2, p1, Lb/b/c/m;->u:Lb/b/g/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lb/b/g/a;->c()V

    :cond_4
    iget-object v2, p1, Lb/b/c/m;->n:Lb/b/c/k;

    if-eqz v2, :cond_5

    iget-boolean v7, p1, Lb/b/c/m;->R:Z

    if-nez v7, :cond_5

    :try_start_1
    invoke-interface {v2, v1}, Lb/b/c/k;->D0(Lb/b/g/a$a;)Lb/b/g/a;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :cond_5
    move-object v2, v6

    :goto_2
    if-eqz v2, :cond_6

    iput-object v2, p1, Lb/b/c/m;->u:Lb/b/g/a;

    goto/16 :goto_8

    :cond_6
    iget-object v2, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v2, :cond_b

    iget-boolean v2, p1, Lb/b/c/m;->I:Z

    if-eqz v2, :cond_8

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v7, p1, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040009

    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7

    iget-object v8, p1, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v7, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v7, Lb/b/g/c;

    iget-object v9, p1, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-direct {v7, v9, v5}, Lb/b/g/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Lb/b/g/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_3

    :cond_7
    iget-object v7, p1, Lb/b/c/m;->k:Landroid/content/Context;

    :goto_3
    new-instance v8, Landroidx/appcompat/widget/ActionBarContextView;

    .line 11
    invoke-direct {v8, v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput-object v8, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v8, Landroid/widget/PopupWindow;

    const v9, 0x7f040018

    invoke-direct {v8, v7, v6, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lb/e/b/g;->h0(Landroid/widget/PopupWindow;I)V

    iget-object v8, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    iget-object v9, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v8, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f040003

    invoke-virtual {v8, v9, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget-object v7, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v2, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v2, Lb/b/c/q;

    invoke-direct {v2, p1}, Lb/b/c/q;-><init>(Lb/b/c/m;)V

    iput-object v2, p1, Lb/b/c/m;->x:Ljava/lang/Runnable;

    goto :goto_5

    :cond_8
    iget-object v2, p1, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    const v7, 0x7f090039

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_b

    .line 13
    invoke-virtual {p1}, Lb/b/c/m;->P()V

    iget-object v7, p1, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v7, :cond_9

    .line 14
    invoke-virtual {v7}, Lb/b/c/a;->b()Landroid/content/Context;

    move-result-object v7

    goto :goto_4

    :cond_9
    move-object v7, v6

    :goto_4
    if-nez v7, :cond_a

    iget-object v7, p1, Lb/b/c/m;->k:Landroid/content/Context;

    .line 15
    :cond_a
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_b
    :goto_5
    iget-object v2, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lb/b/c/m;->I()V

    iget-object v2, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance v2, Lb/b/g/d;

    iget-object v7, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v9, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    invoke-direct {v2, v7, v8, v1, v4}, Lb/b/g/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lb/b/g/a$a;Z)V

    .line 16
    iget-object v4, v2, Lb/b/g/d;->i:Lb/b/g/i/g;

    .line 17
    invoke-virtual {v1, v2, v4}, Lb/b/c/m$d;->c(Lb/b/g/a;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Lb/b/g/d;->i()V

    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lb/b/g/a;)V

    iput-object v2, p1, Lb/b/c/m;->u:Lb/b/g/a;

    invoke-virtual {p1}, Lb/b/c/m;->V()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_d

    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v1}, Lb/e/j/q;->a(Landroid/view/View;)Lb/e/j/w;

    move-result-object v1

    invoke-virtual {v1, v2}, Lb/e/j/w;->a(F)Lb/e/j/w;

    iput-object v1, p1, Lb/b/c/m;->y:Lb/e/j/w;

    new-instance v2, Lb/b/c/r;

    invoke-direct {v2, p1}, Lb/b/c/r;-><init>(Lb/b/c/m;)V

    .line 18
    iget-object v3, v1, Lb/e/j/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_e

    invoke-virtual {v1, v3, v2}, Lb/e/j/w;->e(Landroid/view/View;Lb/e/j/x;)V

    goto :goto_7

    .line 19
    :cond_d
    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lb/e/j/q;->l(Landroid/view/View;)V

    :cond_e
    :goto_7
    iget-object v1, p1, Lb/b/c/m;->w:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_10

    iget-object v1, p1, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lb/b/c/m;->x:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_f
    iput-object v6, p1, Lb/b/c/m;->u:Lb/b/g/a;

    :cond_10
    :goto_8
    iget-object v1, p1, Lb/b/c/m;->u:Lb/b/g/a;

    if-eqz v1, :cond_11

    iget-object v2, p1, Lb/b/c/m;->n:Lb/b/c/k;

    if-eqz v2, :cond_11

    invoke-interface {v2, v1}, Lb/b/c/k;->R(Lb/b/g/a;)V

    :cond_11
    iget-object v1, p1, Lb/b/c/m;->u:Lb/b/g/a;

    .line 20
    iput-object v1, p1, Lb/b/c/m;->u:Lb/b/g/a;

    :cond_12
    iget-object p1, p1, Lb/b/c/m;->u:Lb/b/g/a;

    if-eqz p1, :cond_13

    .line 21
    invoke-virtual {v0, p1}, Lb/b/g/e$a;->e(Lb/b/g/a;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_13
    return-object v6
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    invoke-virtual {v0, p1}, Lb/b/c/m;->G(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3
    invoke-virtual {v0}, Lb/b/c/m;->P()V

    iget-object v4, v0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v4, :cond_3

    .line 4
    check-cast v4, Lb/b/c/x;

    .line 5
    iget-object v4, v4, Lb/b/c/x;->k:Lb/b/c/x$d;

    if-nez v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v4, v4, Lb/b/c/x$d;->e:Lb/b/g/i/g;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4, v5}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-virtual {v4, v3, p1, v2}, Lb/b/g/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    iget-object v3, v0, Lb/b/c/m;->M:Lb/b/c/m$j;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v1}, Lb/b/c/m;->T(Lb/b/c/m$j;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, v0, Lb/b/c/m;->M:Lb/b/c/m$j;

    if-eqz p1, :cond_5

    iput-boolean v1, p1, Lb/b/c/m$j;->l:Z

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lb/b/c/m;->M:Lb/b/c/m$j;

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lb/b/c/m;->U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v1}, Lb/b/c/m;->T(Lb/b/c/m$j;ILandroid/view/KeyEvent;I)Z

    move-result p1

    iput-boolean v2, v3, Lb/b/c/m$j;->k:Z

    if-eqz p1, :cond_6

    :cond_5
    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_5
    return v1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Lb/b/g/i/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lb/b/c/m;->P()V

    iget-object p1, p2, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lb/b/c/a;->a(Z)V

    :cond_0
    return v1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lb/b/c/m;->P()V

    iget-object p1, p2, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lb/b/c/a;->a(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2, p1}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object p1

    iget-boolean v1, p1, Lb/b/c/m$j;->m:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1, v0}, Lb/b/c/m;->E(Lb/b/c/m$j;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Lb/b/g/i/g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lb/b/g/i/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v0, Lb/b/g/i/g;->y:Z

    .line 2
    :cond_2
    iget-object v2, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 3
    iput-boolean v1, v0, Lb/b/g/i/g;->y:Z

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-object v0, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object p2, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, v0, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1}, Lb/b/c/m$e;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lb/b/c/m$e;->c:Lb/b/c/m;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lb/b/c/m$e;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
