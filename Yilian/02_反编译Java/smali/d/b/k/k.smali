.class public Ld/b/k/k;
.super Ld/b/k/j;
.source ""

# interfaces
.implements Ld/b/p/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/k/k$f;,
        Ld/b/k/k$h;,
        Ld/b/k/k$g;,
        Ld/b/k/k$e;,
        Ld/b/k/k$i;,
        Ld/b/k/k$j;,
        Ld/b/k/k$c;,
        Ld/b/k/k$k;,
        Ld/b/k/k$d;
    }
.end annotation


# static fields
.field public static final a0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b0:Z

.field public static final c0:[I

.field public static d0:Z

.field public static final e0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public F:Z

.field public G:[Ld/b/k/k$j;

.field public H:Ld/b/k/k$j;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:Ld/b/k/k$g;

.field public S:Ld/b/k/k$g;

.field public T:Z

.field public U:I

.field public final V:Ljava/lang/Runnable;

.field public W:Z

.field public X:Landroid/graphics/Rect;

.field public Y:Landroid/graphics/Rect;

.field public Z:Landroidx/appcompat/app/AppCompatViewInflater;

.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public e:Landroid/view/Window;

.field public f:Ld/b/k/k$e;

.field public final g:Ld/b/k/i;

.field public h:Ld/b/k/a;

.field public i:Landroid/view/MenuInflater;

.field public j:Ljava/lang/CharSequence;

.field public k:Ld/b/q/a0;

.field public l:Ld/b/k/k$c;

.field public m:Ld/b/k/k$k;

.field public n:Ld/b/p/a;

.field public o:Landroidx/appcompat/widget/ActionBarContextView;

.field public p:Landroid/widget/PopupWindow;

.field public q:Ljava/lang/Runnable;

.field public r:Ld/g/m/v;

.field public s:Z

.field public t:Z

.field public u:Landroid/view/ViewGroup;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/view/View;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld/e/a;

    invoke-direct {v0}, Ld/e/a;-><init>()V

    sput-object v0, Ld/b/k/k;->a0:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ld/b/k/k;->b0:Z

    new-array v0, v3, [I

    const v4, 0x1010054

    aput v4, v0, v2

    sput-object v0, Ld/b/k/k;->c0:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    sput-boolean v2, Ld/b/k/k;->e0:Z

    sget-boolean v0, Ld/b/k/k;->b0:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Ld/b/k/k;->d0:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Ld/b/k/k$a;

    invoke-direct {v1, v0}, Ld/b/k/k$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v3, Ld/b/k/k;->d0:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ld/b/k/i;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ld/b/k/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/b/k/k;->r:Ld/g/m/v;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/b/k/k;->s:Z

    const/16 v1, -0x64

    iput v1, p0, Ld/b/k/k;->N:I

    new-instance v2, Ld/b/k/k$b;

    invoke-direct {v2, p0}, Ld/b/k/k$b;-><init>(Ld/b/k/k;)V

    iput-object v2, p0, Ld/b/k/k;->V:Ljava/lang/Runnable;

    iput-object p1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    iput-object p3, p0, Ld/b/k/k;->g:Ld/b/k/i;

    iput-object p4, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    iget p3, p0, Ld/b/k/k;->N:I

    if-ne p3, v1, :cond_2

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    instance-of p3, p1, Ld/b/k/h;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Ld/b/k/h;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object p1

    check-cast p1, Ld/b/k/k;

    .line 3
    iget p1, p1, Ld/b/k/k;->N:I

    .line 4
    iput p1, p0, Ld/b/k/k;->N:I

    :cond_2
    iget p1, p0, Ld/b/k/k;->N:I

    if-ne p1, v1, :cond_3

    sget-object p1, Ld/b/k/k;->a0:Ljava/util/Map;

    iget-object p3, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    check-cast p1, Ld/e/h;

    invoke-virtual {p1, p3}, Ld/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ld/b/k/k;->N:I

    sget-object p1, Ld/b/k/k;->a0:Ljava/util/Map;

    iget-object p3, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    check-cast p1, Ld/e/h;

    invoke-virtual {p1, p3}, Ld/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Ld/b/k/k;->s(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Ld/b/q/i;->e()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/k/k;->s(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B(Landroid/view/Menu;)Ld/b/k/k$j;
    .locals 5

    iget-object v0, p0, Ld/b/k/k;->G:[Ld/b/k/k$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final C()Ld/b/k/k$g;
    .locals 4

    iget-object v0, p0, Ld/b/k/k;->R:Ld/b/k/k$g;

    if-nez v0, :cond_1

    new-instance v0, Ld/b/k/k$h;

    iget-object v1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    .line 1
    sget-object v2, Ld/b/k/t;->d:Ld/b/k/t;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ld/b/k/t;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    invoke-direct {v2, v1, v3}, Ld/b/k/t;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v2, Ld/b/k/t;->d:Ld/b/k/t;

    :cond_0
    sget-object v1, Ld/b/k/t;->d:Ld/b/k/t;

    .line 2
    invoke-direct {v0, p0, v1}, Ld/b/k/k$h;-><init>(Ld/b/k/k;Ld/b/k/t;)V

    iput-object v0, p0, Ld/b/k/k;->R:Ld/b/k/k$g;

    :cond_1
    iget-object v0, p0, Ld/b/k/k;->R:Ld/b/k/k$g;

    return-object v0
.end method

.method public D(I)Ld/b/k/k$j;
    .locals 4

    iget-object v0, p0, Ld/b/k/k;->G:[Ld/b/k/k$j;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ld/b/k/k$j;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Ld/b/k/k;->G:[Ld/b/k/k$j;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Ld/b/k/k$j;

    invoke-direct {v1, p1}, Ld/b/k/k$j;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final E()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final F()V
    .locals 3

    invoke-virtual {p0}, Ld/b/k/k;->z()V

    iget-boolean v0, p0, Ld/b/k/k;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Ld/b/k/u;

    iget-object v1, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Ld/b/k/k;->A:Z

    invoke-direct {v0, v1, v2}, Ld/b/k/u;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v0, p0, Ld/b/k/k;->h:Ld/b/k/a;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Ld/b/k/u;

    iget-object v1, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Ld/b/k/u;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Ld/b/k/k;->W:Z

    invoke-virtual {v0, v1}, Ld/b/k/a;->g(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final G(I)V
    .locals 2

    iget v0, p0, Ld/b/k/k;->U:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ld/b/k/k;->U:I

    iget-boolean p1, p0, Ld/b/k/k;->T:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/b/k/k;->V:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Ld/g/m/s;->I(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Ld/b/k/k;->T:Z

    :cond_0
    return-void
.end method

.method public final H(Ld/b/k/k$j;Landroid/view/KeyEvent;)V
    .locals 12

    iget-boolean v0, p1, Ld/b/k/k$j;->m:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Ld/b/k/k;->M:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v0, p1, Ld/b/k/k$j;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ld/b/k/k;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Ld/b/k/k$j;->a:I

    iget-object v4, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Ld/b/k/k;->v(Ld/b/k/k$j;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Ld/b/k/k;->J(Ld/b/k/k$j;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Ld/b/k/k$j;->o:Z

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, Ld/b/k/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1c

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1c

    const/4 v5, -0x1

    goto/16 :goto_c

    :cond_7
    :goto_1
    iget-object p2, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-nez p2, :cond_c

    .line 1
    invoke-virtual {p0}, Ld/b/k/k;->F()V

    iget-object p2, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz p2, :cond_8

    .line 2
    invoke-virtual {p2}, Ld/b/k/a;->d()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    move-object p2, v4

    :goto_2
    if-nez p2, :cond_9

    iget-object p2, p0, Ld/b/k/k;->d:Landroid/content/Context;

    .line 3
    :cond_9
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v7, Ld/b/a;->actionBarPopupTheme:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_a

    invoke-virtual {v6, v7, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    sget v7, Ld/b/a;->panelMenuListTheme:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    sget v5, Ld/b/i;->Theme_AppCompat_CompactMenu:I

    :goto_3
    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v5, Ld/b/p/c;

    invoke-direct {v5, p2, v2}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5}, Ld/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v5, p1, Ld/b/k/k$j;->j:Landroid/content/Context;

    sget-object p2, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {v5, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v5, Ld/b/j;->AppCompatTheme_panelBackground:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Ld/b/k/k$j;->b:I

    sget v5, Ld/b/j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Ld/b/k/k$j;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance p2, Ld/b/k/k$i;

    iget-object v5, p1, Ld/b/k/k$j;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v5}, Ld/b/k/k$i;-><init>(Ld/b/k/k;Landroid/content/Context;)V

    iput-object p2, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Ld/b/k/k$j;->c:I

    goto :goto_4

    .line 5
    :cond_c
    iget-boolean v5, p1, Ld/b/k/k$j;->o:Z

    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_d
    :goto_4
    iget-object p2, p1, Ld/b/k/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    iput-object p2, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    goto :goto_6

    :cond_e
    iget-object p2, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-nez p2, :cond_f

    goto :goto_7

    :cond_f
    iget-object p2, p0, Ld/b/k/k;->m:Ld/b/k/k$k;

    if-nez p2, :cond_10

    new-instance p2, Ld/b/k/k$k;

    invoke-direct {p2, p0}, Ld/b/k/k$k;-><init>(Ld/b/k/k;)V

    iput-object p2, p0, Ld/b/k/k;->m:Ld/b/k/k$k;

    :cond_10
    iget-object p2, p0, Ld/b/k/k;->m:Ld/b/k/k$k;

    .line 7
    iget-object v5, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    iget-object v4, p1, Ld/b/k/k$j;->i:Ld/b/p/i/e;

    if-nez v4, :cond_12

    new-instance v4, Ld/b/p/i/e;

    iget-object v5, p1, Ld/b/k/k$j;->j:Landroid/content/Context;

    sget v6, Ld/b/g;->abc_list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Ld/b/p/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Ld/b/k/k$j;->i:Ld/b/p/i/e;

    .line 8
    iput-object p2, v4, Ld/b/p/i/e;->h:Ld/b/p/i/m$a;

    .line 9
    iget-object p2, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    .line 10
    iget-object v5, p2, Ld/b/p/i/g;->a:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Ld/b/p/i/g;->b(Ld/b/p/i/m;Landroid/content/Context;)V

    .line 11
    :cond_12
    iget-object p2, p1, Ld/b/k/k$j;->i:Ld/b/p/i/e;

    iget-object v4, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    .line 12
    iget-object v5, p2, Ld/b/p/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_14

    iget-object v5, p2, Ld/b/p/i/e;->b:Landroid/view/LayoutInflater;

    sget v6, Ld/b/g;->abc_expanded_menu_layout:I

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, Ld/b/p/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v4, p2, Ld/b/p/i/e;->i:Ld/b/p/i/e$a;

    if-nez v4, :cond_13

    new-instance v4, Ld/b/p/i/e$a;

    invoke-direct {v4, p2}, Ld/b/p/i/e$a;-><init>(Ld/b/p/i/e;)V

    iput-object v4, p2, Ld/b/p/i/e;->i:Ld/b/p/i/e$a;

    :cond_13
    iget-object v4, p2, Ld/b/p/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Ld/b/p/i/e;->i:Ld/b/p/i/e$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p2, Ld/b/p/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_14
    iget-object v4, p2, Ld/b/p/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 13
    :goto_5
    iput-object v4, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    if-eqz v4, :cond_15

    :goto_6
    const/4 p2, 0x1

    goto :goto_8

    :cond_15
    :goto_7
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_1d

    .line 14
    iget-object p2, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    if-nez p2, :cond_16

    goto :goto_a

    :cond_16
    iget-object p2, p1, Ld/b/k/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_17

    goto :goto_9

    :cond_17
    iget-object p2, p1, Ld/b/k/k$j;->i:Ld/b/p/i/e;

    invoke-virtual {p2}, Ld/b/p/i/e;->b()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Ld/b/p/i/e$a;

    invoke-virtual {p2}, Ld/b/p/i/e$a;->getCount()I

    move-result p2

    if-lez p2, :cond_18

    :goto_9
    const/4 p2, 0x1

    goto :goto_b

    :cond_18
    :goto_a
    const/4 p2, 0x0

    :goto_b
    if-nez p2, :cond_19

    goto :goto_d

    .line 15
    :cond_19
    iget-object p2, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_1a

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1a
    iget v4, p1, Ld/b/k/k$j;->b:I

    iget-object v5, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v4, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1b

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    iget-object v4, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    const/4 v5, -0x2

    :goto_c
    iput-boolean v2, p1, Ld/b/k/k$j;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Ld/b/k/k$j;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Ld/b/k/k$j;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Ld/b/k/k$j;->m:Z

    :cond_1d
    :goto_d
    return-void
.end method

.method public final I(Ld/b/k/k$j;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/b/k/k$j;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Ld/b/k/k;->J(Ld/b/k/k$j;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Ld/b/p/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Ld/b/k/k;->v(Ld/b/k/k$j;Z)V

    :cond_3
    return v1
.end method

.method public final J(Ld/b/k/k$j;Landroid/view/KeyEvent;)Z
    .locals 10

    iget-boolean v0, p0, Ld/b/k/k;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/b/k/k$j;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ld/b/k/k;->H:Ld/b/k/k$j;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ld/b/k/k;->v(Ld/b/k/k$j;Z)V

    :cond_2
    invoke-virtual {p0}, Ld/b/k/k;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Ld/b/k/k$j;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Ld/b/k/k$j;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Ld/b/k/k$j;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ld/b/q/a0;->c()V

    :cond_6
    iget-object v5, p1, Ld/b/k/k$j;->g:Landroid/view/View;

    if-nez v5, :cond_18

    iget-object v5, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v5, p1, Ld/b/k/k$j;->p:Z

    if-eqz v5, :cond_12

    :cond_7
    iget-object v5, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-nez v5, :cond_d

    .line 1
    iget-object v5, p0, Ld/b/k/k;->d:Landroid/content/Context;

    iget v7, p1, Ld/b/k/k$j;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_c

    :cond_8
    iget-object v4, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Ld/b/a;->actionBarTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Ld/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    sget v8, Ld/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    new-instance v4, Ld/b/p/c;

    invoke-direct {v4, v5, v1}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Ld/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    :cond_c
    new-instance v4, Ld/b/p/i/g;

    invoke-direct {v4, v5}, Ld/b/p/i/g;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p0, v4, Ld/b/p/i/g;->e:Ld/b/p/i/g$a;

    .line 3
    invoke-virtual {p1, v4}, Ld/b/k/k$j;->a(Ld/b/p/i/g;)V

    .line 4
    iget-object v4, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-nez v4, :cond_d

    return v1

    :cond_d
    if-eqz v3, :cond_f

    iget-object v4, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz v4, :cond_f

    iget-object v4, p0, Ld/b/k/k;->l:Ld/b/k/k$c;

    if-nez v4, :cond_e

    new-instance v4, Ld/b/k/k$c;

    invoke-direct {v4, p0}, Ld/b/k/k$c;-><init>(Ld/b/k/k;)V

    iput-object v4, p0, Ld/b/k/k;->l:Ld/b/k/k$c;

    :cond_e
    iget-object v4, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    iget-object v5, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    iget-object v7, p0, Ld/b/k/k;->l:Ld/b/k/k$c;

    invoke-interface {v4, v5, v7}, Ld/b/q/a0;->a(Landroid/view/Menu;Ld/b/p/i/m$a;)V

    :cond_f
    iget-object v4, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {v4}, Ld/b/p/i/g;->z()V

    iget v4, p1, Ld/b/k/k$j;->a:I

    iget-object v5, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p1, v6}, Ld/b/k/k$j;->a(Ld/b/p/i/g;)V

    if-eqz v3, :cond_10

    iget-object p1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz p1, :cond_10

    iget-object p2, p0, Ld/b/k/k;->l:Ld/b/k/k$c;

    invoke-interface {p1, v6, p2}, Ld/b/q/a0;->a(Landroid/view/Menu;Ld/b/p/i/m$a;)V

    :cond_10
    return v1

    :cond_11
    iput-boolean v1, p1, Ld/b/k/k$j;->p:Z

    :cond_12
    iget-object v4, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {v4}, Ld/b/p/i/g;->z()V

    iget-object v4, p1, Ld/b/k/k$j;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_13

    iget-object v5, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {v5, v4}, Ld/b/p/i/g;->v(Landroid/os/Bundle;)V

    iput-object v6, p1, Ld/b/k/k$j;->q:Landroid/os/Bundle;

    :cond_13
    iget-object v4, p1, Ld/b/k/k$j;->g:Landroid/view/View;

    iget-object v5, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_14

    iget-object p2, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz p2, :cond_14

    iget-object v0, p0, Ld/b/k/k;->l:Ld/b/k/k$c;

    invoke-interface {p2, v6, v0}, Ld/b/q/a0;->a(Landroid/view/Menu;Ld/b/p/i/m$a;)V

    :cond_14
    iget-object p1, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {p1}, Ld/b/p/i/g;->y()V

    return v1

    :cond_15
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_16
    const/4 p2, -0x1

    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_17

    const/4 p2, 0x1

    goto :goto_4

    :cond_17
    const/4 p2, 0x0

    :goto_4
    iput-boolean p2, p1, Ld/b/k/k$j;->n:Z

    iget-object v0, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {v0, p2}, Ld/b/p/i/g;->setQwertyMode(Z)V

    iget-object p2, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {p2}, Ld/b/p/i/g;->y()V

    :cond_18
    iput-boolean v2, p1, Ld/b/k/k$j;->k:Z

    iput-boolean v1, p1, Ld/b/k/k$j;->l:Z

    iput-object p1, p0, Ld/b/k/k;->H:Ld/b/k/k$j;

    return v2
.end method

.method public final K()Z
    .locals 1

    iget-boolean v0, p0, Ld/b/k/k;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/g/m/s;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final L()V
    .locals 2

    iget-boolean v0, p0, Ld/b/k/k;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M(I)I
    .locals 8

    iget-object v0, p0, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Ld/b/k/k;->X:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Ld/b/k/k;->X:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Ld/b/k/k;->Y:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, p0, Ld/b/k/k;->X:Landroid/graphics/Rect;

    iget-object v4, p0, Ld/b/k/k;->Y:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Ld/b/q/b1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Ld/b/k/k;->w:Landroid/view/View;

    if-nez v2, :cond_2

    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ld/b/k/k;->w:Landroid/view/View;

    iget-object v4, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Ld/b/c;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    iget-object v4, p0, Ld/b/k/k;->w:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Ld/b/k/k;->w:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Ld/b/k/k;->w:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iget-boolean v4, p0, Ld/b/k/k;->B:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    const/4 p1, 0x0

    :cond_6
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_4

    :cond_7
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_8

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_a

    iget-object v3, p0, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_5
    iget-object v0, p0, Ld/b/k/k;->w:Landroid/view/View;

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public a(Ld/b/p/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Ld/b/k/k;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ld/b/k/k;->M:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ld/b/p/i/g;->k()Ld/b/p/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/b/k/k;->B(Landroid/view/Menu;)Ld/b/k/k$j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Ld/b/k/k$j;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ld/b/p/i/g;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ld/b/q/a0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {p1}, Ld/b/q/a0;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Ld/b/k/k;->E()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {v2}, Ld/b/q/a0;->b()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {v0}, Ld/b/q/a0;->e()Z

    iget-boolean v0, p0, Ld/b/k/k;->M:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iget-object v0, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Ld/b/k/k;->M:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Ld/b/k/k;->T:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ld/b/k/k;->U:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Ld/b/k/k;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ld/b/k/k;->V:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iget-object v2, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Ld/b/k/k$j;->p:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Ld/b/k/k$j;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {p1}, Ld/b/q/a0;->f()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object p1

    iput-boolean v0, p1, Ld/b/k/k$j;->o:Z

    invoke-virtual {p0, p1, v1}, Ld/b/k/k;->v(Ld/b/k/k$j;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld/b/k/k;->H(Ld/b/k/k$j;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/k;->z()V

    iget-object v0, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/b/k/k;->f:Ld/b/k/k$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->a:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public f(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Ld/b/k/k;->Z:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    sget-object v2, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Ld/b/j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v2, p0, Ld/b/k/k;->Z:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    :goto_1
    iput-object v0, p0, Ld/b/k/k;->Z:Landroidx/appcompat/app/AppCompatViewInflater;

    :cond_2
    :goto_2
    sget-boolean v0, Ld/b/k/k;->b0:Z

    if-eqz v0, :cond_8

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_7

    :goto_3
    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_4

    goto :goto_5

    .line 1
    :cond_4
    iget-object v3, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_4
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    if-eq v0, v3, :cond_7

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_7

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Ld/g/m/s;->z(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_7
    :goto_5
    move v7, v1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    .line 2
    :goto_6
    iget-object v2, p0, Ld/b/k/k;->Z:Landroidx/appcompat/app/AppCompatViewInflater;

    sget-boolean v8, Ld/b/k/k;->b0:Z

    const/4 v9, 0x1

    invoke-static {}, Ld/b/q/a1;->a()Z

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Ld/b/k/r;->j0(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Ld/b/k/k;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/k/k;->F()V

    iget-object v0, p0, Ld/b/k/k;->h:Ld/b/k/a;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ld/b/k/k;->G(I)V

    return-void
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b/k/k;->J:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/b/k/k;->r(Z)Z

    invoke-virtual {p0}, Ld/b/k/k;->A()V

    iget-object v0, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Ld/b/k/r;->J(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-nez v0, :cond_0

    .line 3
    iput-boolean p1, p0, Ld/b/k/k;->W:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ld/b/k/a;->g(Z)V

    :cond_1
    :goto_1
    iput-boolean p1, p0, Ld/b/k/k;->K:Z

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/b/k/k;->L:Z

    .line 1
    sget-object v1, Ld/b/k/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ld/b/k/j;->k(Ld/b/k/j;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Ld/b/k/k;->F()V

    iget-object v1, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Ld/b/k/a;->h(Z)V

    :cond_0
    iget-object v0, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Ld/b/k/k;->R:Ld/b/k/k$g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/b/k/k$g;->a()V

    :cond_1
    iget-object v0, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ld/b/k/k$g;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public l(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ld/b/k/k;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Ld/b/k/k;->z:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, Ld/b/k/k;->z:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Ld/b/k/k;->L()V

    iput-boolean v4, p0, Ld/b/k/k;->A:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Ld/b/k/k;->L()V

    iput-boolean v4, p0, Ld/b/k/k;->z:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Ld/b/k/k;->L()V

    iput-boolean v4, p0, Ld/b/k/k;->B:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Ld/b/k/k;->L()V

    iput-boolean v4, p0, Ld/b/k/k;->y:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Ld/b/k/k;->L()V

    iput-boolean v4, p0, Ld/b/k/k;->x:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Ld/b/k/k;->L()V

    iput-boolean v4, p0, Ld/b/k/k;->D:Z

    return v4
.end method

.method public m(I)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/k;->z()V

    iget-object v0, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Ld/b/k/k;->f:Ld/b/k/k$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->a:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public n(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/k;->z()V

    iget-object v0, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Ld/b/k/k;->f:Ld/b/k/k$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->a:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/b/k/k;->z()V

    iget-object v0, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/b/k/k;->f:Ld/b/k/k$e;

    .line 1
    iget-object p1, p1, Ld/b/p/h;->a:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ld/b/k/k;->f(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Ld/b/k/k;->f(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Ld/b/k/k;->j:Ljava/lang/CharSequence;

    iget-object v0, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ld/b/q/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ld/b/k/a;->i(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/b/k/k;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/b/k/k;->r(Z)Z

    move-result v0

    return v0
.end method

.method public final r(Z)Z
    .locals 14

    iget-boolean v0, p0, Ld/b/k/k;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget v0, p0, Ld/b/k/k;->N:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x17

    const/4 v7, 0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_6

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_3

    .line 2
    iget-object v2, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    if-nez v2, :cond_2

    new-instance v2, Ld/b/k/k$f;

    iget-object v3, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Ld/b/k/k$f;-><init>(Ld/b/k/k;Landroid/content/Context;)V

    iput-object v2, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    :cond_2
    iget-object v2, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    goto :goto_1

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_5

    iget-object v2, p0, Ld/b/k/k;->d:Landroid/content/Context;

    const-class v8, Landroid/app/UiModeManager;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ld/b/k/k;->C()Ld/b/k/k$g;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ld/b/k/k$g;->c()I

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v0

    .line 4
    :cond_7
    :goto_2
    iget-object v2, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v3, v7, :cond_9

    if-eq v3, v5, :cond_8

    move v3, v2

    goto :goto_3

    :cond_8
    const/16 v3, 0x20

    goto :goto_3

    :cond_9
    const/16 v3, 0x10

    .line 5
    :goto_3
    iget-boolean v5, p0, Ld/b/k/k;->Q:Z

    const-string v8, "AppCompatDelegate"

    if-nez v5, :cond_c

    iget-object v5, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_c

    iget-object v5, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p0, Ld/b/k/k;->d:Landroid/content/Context;

    iget-object v11, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v9, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, p0, Ld/b/k/k;->P:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v5

    const-string v9, "Exception while getting ActivityInfo"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Ld/b/k/k;->P:Z

    :cond_c
    :goto_5
    iput-boolean v7, p0, Ld/b/k/k;->Q:Z

    iget-boolean v5, p0, Ld/b/k/k;->P:Z

    .line 6
    :goto_6
    sget-boolean v9, Ld/b/k/k;->e0:Z

    const/16 v10, 0x11

    if-nez v9, :cond_d

    if-eq v3, v2, :cond_e

    :cond_d
    if-nez v5, :cond_e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_e

    iget-boolean v2, p0, Ld/b/k/k;->J:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_e

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iget v9, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, -0x31

    or-int/2addr v9, v3

    iput v9, v2, Landroid/content/res/Configuration;->uiMode:I

    :try_start_1
    iget-object v9, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    check-cast v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v9, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_7

    :catch_1
    move-exception v2

    const-string v9, "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    const/4 v2, 0x0

    :goto_7
    iget-object v8, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-nez v2, :cond_10

    if-eq v8, v3, :cond_10

    if-eqz p1, :cond_10

    if-nez v5, :cond_10

    iget-boolean p1, p0, Ld/b/k/k;->J:Z

    if-eqz p1, :cond_10

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v10, :cond_f

    iget-boolean p1, p0, Ld/b/k/k;->K:Z

    if-eqz p1, :cond_10

    :cond_f
    iget-object p1, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v9, p1, Landroid/app/Activity;

    if-eqz v9, :cond_10

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Ld/g/e/a;->l(Landroid/app/Activity;)V

    const/4 v2, 0x1

    :cond_10
    if-nez v2, :cond_21

    if-eq v8, v3, :cond_21

    .line 7
    iget-object p1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int/2addr v3, v8

    iput v3, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-ge v8, v9, :cond_1d

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_11

    goto/16 :goto_10

    :cond_11
    const/16 v9, 0x18

    const-string v10, "mDrawableCache"

    const-string v11, "ResourcesFlusher"

    if-lt v8, v9, :cond_17

    .line 8
    sget-boolean v8, Ld/b/k/r;->h:Z

    if-nez v8, :cond_12

    :try_start_2
    const-class v8, Landroid/content/res/Resources;

    const-string v9, "mResourcesImpl"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Ld/b/k/r;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v8

    const-string v9, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v11, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    sput-boolean v7, Ld/b/k/r;->h:Z

    :cond_12
    sget-object v8, Ld/b/k/r;->g:Ljava/lang/reflect/Field;

    if-nez v8, :cond_13

    goto/16 :goto_10

    :cond_13
    :try_start_3
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception p1

    const-string v8, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v11, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v3

    :goto_9
    if-nez p1, :cond_14

    goto/16 :goto_10

    :cond_14
    sget-boolean v8, Ld/b/k/r;->b:Z

    if-nez v8, :cond_15

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Ld/b/k/r;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v8

    const-string v9, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v11, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    sput-boolean v7, Ld/b/k/r;->b:Z

    :cond_15
    sget-object v8, Ld/b/k/r;->a:Ljava/lang/reflect/Field;

    if-eqz v8, :cond_16

    :try_start_5
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception p1

    const-string v8, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v11, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_b
    if-eqz v3, :cond_1d

    invoke-static {v3}, Ld/b/k/r;->t(Ljava/lang/Object;)V

    goto :goto_10

    :cond_17
    const-string v9, "Could not retrieve Resources#mDrawableCache field"

    const-string v12, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v8, v6, :cond_1b

    .line 9
    sget-boolean v8, Ld/b/k/r;->b:Z

    if-nez v8, :cond_18

    :try_start_6
    const-class v8, Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Ld/b/k/r;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_c

    :catch_6
    move-exception v8

    invoke-static {v11, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    sput-boolean v7, Ld/b/k/r;->b:Z

    :cond_18
    sget-object v8, Ld/b/k/r;->a:Ljava/lang/reflect/Field;

    if-eqz v8, :cond_19

    :try_start_7
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_d

    :catch_7
    move-exception p1

    invoke-static {v11, v12, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_d
    if-nez v3, :cond_1a

    goto :goto_10

    :cond_1a
    invoke-static {v3}, Ld/b/k/r;->t(Ljava/lang/Object;)V

    goto :goto_10

    :cond_1b
    const/16 v13, 0x15

    if-lt v8, v13, :cond_1d

    .line 10
    sget-boolean v8, Ld/b/k/r;->b:Z

    if-nez v8, :cond_1c

    :try_start_8
    const-class v8, Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Ld/b/k/r;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    :catch_8
    move-exception v8

    invoke-static {v11, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    sput-boolean v7, Ld/b/k/r;->b:Z

    :cond_1c
    sget-object v8, Ld/b/k/r;->a:Ljava/lang/reflect/Field;

    if-eqz v8, :cond_1d

    :try_start_9
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_9

    move-object v3, p1

    goto :goto_f

    :catch_9
    move-exception p1

    invoke-static {v11, v12, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    if-eqz v3, :cond_1d

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 11
    :cond_1d
    :goto_10
    iget p1, p0, Ld/b/k/k;->O:I

    if-eqz p1, :cond_1e

    iget-object v3, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->setTheme(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v6, :cond_1e

    iget-object p1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v3, p0, Ld/b/k/k;->O:I

    invoke-virtual {p1, v3, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1e
    if-eqz v5, :cond_22

    iget-object p1, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_22

    check-cast p1, Landroid/app/Activity;

    instance-of v3, p1, Ld/l/h;

    if-eqz v3, :cond_20

    move-object v3, p1

    check-cast v3, Ld/l/h;

    invoke-interface {v3}, Ld/l/h;->getLifecycle()Ld/l/e;

    move-result-object v3

    check-cast v3, Ld/l/i;

    .line 12
    iget-object v3, v3, Ld/l/i;->b:Ld/l/e$b;

    .line 13
    sget-object v5, Ld/l/e$b;->d:Ld/l/e$b;

    .line 14
    invoke-virtual {v3, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    if-eqz v1, :cond_22

    goto :goto_11

    .line 15
    :cond_20
    iget-boolean v1, p0, Ld/b/k/k;->L:Z

    if-eqz v1, :cond_22

    :goto_11
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_12

    :cond_21
    move v7, v2

    :cond_22
    :goto_12
    if-eqz v7, :cond_23

    .line 16
    iget-object p1, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v1, p1, Ld/b/k/h;

    if-eqz v1, :cond_23

    check-cast p1, Ld/b/k/h;

    invoke-virtual {p1}, Ld/b/k/h;->t()V

    :cond_23
    if-nez v0, :cond_24

    .line 17
    invoke-virtual {p0}, Ld/b/k/k;->C()Ld/b/k/k$g;

    move-result-object p1

    invoke-virtual {p1}, Ld/b/k/k$g;->e()V

    goto :goto_13

    :cond_24
    iget-object p1, p0, Ld/b/k/k;->R:Ld/b/k/k$g;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ld/b/k/k$g;->a()V

    :cond_25
    :goto_13
    if-ne v0, v4, :cond_27

    .line 18
    iget-object p1, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    if-nez p1, :cond_26

    new-instance p1, Ld/b/k/k$f;

    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Ld/b/k/k$f;-><init>(Ld/b/k/k;Landroid/content/Context;)V

    iput-object p1, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    :cond_26
    iget-object p1, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    .line 19
    invoke-virtual {p1}, Ld/b/k/k$g;->e()V

    goto :goto_14

    :cond_27
    iget-object p1, p0, Ld/b/k/k;->S:Ld/b/k/k$g;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ld/b/k/k$g;->a()V

    :cond_28
    :goto_14
    return v7
.end method

.method public final s(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Ld/b/k/k$e;

    if-nez v2, :cond_1

    new-instance v1, Ld/b/k/k$e;

    invoke-direct {v1, p0, v0}, Ld/b/k/k$e;-><init>(Ld/b/k/k;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ld/b/k/k;->f:Ld/b/k/k$e;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Ld/b/k/k;->c0:[I

    invoke-static {v0, v1, v2}, Ld/b/q/v0;->n(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ld/b/q/v0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/b/q/v0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1
    :cond_0
    iget-object v0, v0, Ld/b/q/v0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2
    iput-object p1, p0, Ld/b/k/k;->e:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(ILd/b/k/k$j;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p2, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p2, p2, Ld/b/k/k$j;->m:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-boolean p2, p0, Ld/b/k/k;->M:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Ld/b/k/k;->f:Ld/b/k/k$e;

    .line 1
    iget-object p2, p2, Ld/b/p/h;->a:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public u(Ld/b/p/i/g;)V
    .locals 2

    iget-boolean v0, p0, Ld/b/k/k;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/k/k;->F:Z

    iget-object v0, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {v0}, Ld/b/q/a0;->l()V

    invoke-virtual {p0}, Ld/b/k/k;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ld/b/k/k;->M:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/b/k/k;->F:Z

    return-void
.end method

.method public v(Ld/b/k/k$j;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Ld/b/k/k$j;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/b/q/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {p0, p1}, Ld/b/k/k;->u(Ld/b/p/i/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Ld/b/k/k$j;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Ld/b/k/k$j;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Ld/b/k/k$j;->a:I

    invoke-virtual {p0, p2, p1, v1}, Ld/b/k/k;->t(ILd/b/k/k$j;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Ld/b/k/k$j;->k:Z

    iput-boolean p2, p1, Ld/b/k/k$j;->l:Z

    iput-boolean p2, p1, Ld/b/k/k$j;->m:Z

    iput-object v1, p1, Ld/b/k/k$j;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ld/b/k/k$j;->o:Z

    iget-object p2, p0, Ld/b/k/k;->H:Ld/b/k/k$j;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Ld/b/k/k;->H:Ld/b/k/k$j;

    :cond_2
    return-void
.end method

.method public w(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Ld/g/m/d$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Ld/b/k/q;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {v0, p1}, Ld/g/m/s;->e(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ld/b/k/k;->f:Ld/b/k/k$e;

    .line 3
    iget-object v0, v0, Ld/b/p/h;->a:Landroid/view/Window$Callback;

    .line 4
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, v4}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iget-boolean v1, v0, Ld/b/k/k$j;->m:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, v0, p1}, Ld/b/k/k;->J(Ld/b/k/k$j;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 6
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Ld/b/k/k;->I:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 7
    :cond_9
    iget-object v0, p0, Ld/b/k/k;->n:Ld/b/p/a;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p0, v4}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iget-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ld/b/q/a0;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {v1}, Ld/b/q/a0;->b()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Ld/b/k/k;->M:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Ld/b/k/k;->J(Ld/b/k/k$j;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {p1}, Ld/b/q/a0;->f()Z

    move-result p1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {p1}, Ld/b/q/a0;->e()Z

    move-result p1

    goto :goto_5

    :cond_c
    iget-boolean v1, v0, Ld/b/k/k$j;->m:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Ld/b/k/k$j;->l:Z

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v1, v0, Ld/b/k/k$j;->k:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Ld/b/k/k$j;->p:Z

    if-eqz v1, :cond_e

    iput-boolean v4, v0, Ld/b/k/k$j;->k:Z

    invoke-virtual {p0, v0, p1}, Ld/b/k/k;->J(Ld/b/k/k$j;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0, v0, p1}, Ld/b/k/k;->H(Ld/b/k/k$j;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    iget-boolean p1, v0, Ld/b/k/k$j;->m:Z

    invoke-virtual {p0, v0, v2}, Ld/b/k/k;->v(Ld/b/k/k$j;Z)V

    :goto_5
    if-eqz p1, :cond_16

    iget-object p1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 8
    :cond_12
    iget-boolean p1, p0, Ld/b/k/k;->I:Z

    iput-boolean v4, p0, Ld/b/k/k;->I:Z

    invoke-virtual {p0, v4}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iget-boolean v1, v0, Ld/b/k/k$j;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    invoke-virtual {p0, v0, v2}, Ld/b/k/k;->v(Ld/b/k/k$j;Z)V

    goto :goto_8

    .line 9
    :cond_13
    iget-object p1, p0, Ld/b/k/k;->n:Ld/b/p/a;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ld/b/p/a;->c()V

    goto :goto_6

    .line 10
    :cond_14
    invoke-virtual {p0}, Ld/b/k/k;->F()V

    iget-object p1, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz p1, :cond_15

    .line 11
    invoke-virtual {p1}, Ld/b/k/a;->a()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method public x(I)V
    .locals 3

    invoke-virtual {p0, p1}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iget-object v1, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {v2, v1}, Ld/b/p/i/g;->w(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Ld/b/k/k$j;->q:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {v1}, Ld/b/p/i/g;->z()V

    iget-object v1, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    invoke-virtual {v1}, Ld/b/p/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/b/k/k$j;->p:Z

    iput-boolean v1, v0, Ld/b/k/k$j;->o:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iput-boolean p1, v0, Ld/b/k/k$j;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ld/b/k/k;->J(Ld/b/k/k$j;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Ld/b/k/k;->r:Ld/g/m/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/g/m/v;->b()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 9

    iget-boolean v0, p0, Ld/b/k/k;->t:Z

    if-nez v0, :cond_1b

    .line 1
    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    sget-object v1, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Ld/b/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget v1, Ld/b/j;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v3, 0x6c

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Ld/b/k/k;->l(I)Z

    goto :goto_0

    :cond_0
    sget v1, Ld/b/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Ld/b/k/k;->l(I)Z

    :cond_1
    :goto_0
    sget v1, Ld/b/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v5, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5}, Ld/b/k/k;->l(I)Z

    :cond_2
    sget v1, Ld/b/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ld/b/k/k;->l(I)Z

    :cond_3
    sget v1, Ld/b/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ld/b/k/k;->C:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Ld/b/k/k;->A()V

    iget-object v0, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Ld/b/k/k;->D:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Ld/b/k/k;->C:Z

    if-eqz v1, :cond_4

    sget v1, Ld/b/g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v2, p0, Ld/b/k/k;->A:Z

    iput-boolean v2, p0, Ld/b/k/k;->z:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, p0, Ld/b/k/k;->z:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v7, Ld/b/a;->actionBarTheme:I

    invoke-virtual {v1, v7, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Ld/b/p/c;

    iget-object v7, p0, Ld/b/k/k;->d:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Ld/b/p/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ld/b/g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Ld/b/f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ld/b/q/a0;

    iput-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-virtual {p0}, Ld/b/k/k;->E()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Ld/b/q/a0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Ld/b/k/k;->A:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    invoke-interface {v1, v5}, Ld/b/q/a0;->k(I)V

    :cond_6
    iget-boolean v1, p0, Ld/b/k/k;->x:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ld/b/q/a0;->k(I)V

    :cond_7
    iget-boolean v1, p0, Ld/b/k/k;->y:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    const/4 v5, 0x5

    invoke-interface {v1, v5}, Ld/b/q/a0;->k(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Ld/b/k/k;->B:Z

    if-eqz v1, :cond_a

    sget v1, Ld/b/g;->abc_screen_simple_overlay_action_mode:I

    goto :goto_2

    :cond_a
    sget v1, Ld/b/g;->abc_screen_simple:I

    :goto_2
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_b

    new-instance v1, Ld/b/k/l;

    invoke-direct {v1, p0}, Ld/b/k/l;-><init>(Ld/b/k/k;)V

    invoke-static {v0, v1}, Ld/g/m/s;->T(Landroid/view/View;Ld/g/m/l;)V

    goto :goto_3

    :cond_b
    move-object v1, v0

    check-cast v1, Ld/b/q/e0;

    new-instance v5, Ld/b/k/m;

    invoke-direct {v5, p0}, Ld/b/k/m;-><init>(Ld/b/k/k;)V

    invoke-interface {v1, v5}, Ld/b/q/e0;->setOnFitSystemWindowsListener(Ld/b/q/e0$a;)V

    :cond_c
    :goto_3
    if-eqz v0, :cond_19

    iget-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-nez v1, :cond_d

    sget v1, Ld/b/f;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ld/b/k/k;->v:Landroid/widget/TextView;

    :cond_d
    invoke-static {v0}, Ld/b/q/b1;->c(Landroid/view/View;)V

    sget v1, Ld/b/f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Ld/b/k/k;->e:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_f

    :goto_4
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v8, v5, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_f

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v5, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v5, Ld/b/k/n;

    invoke-direct {v5, p0}, Ld/b/k/n;-><init>(Ld/b/k/k;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 2
    iput-object v0, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    .line 3
    iget-object v0, p0, Ld/b/k/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_10
    iget-object v0, p0, Ld/b/k/k;->j:Ljava/lang/CharSequence;

    .line 4
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Ld/b/k/k;->k:Ld/b/q/a0;

    if-eqz v1, :cond_11

    invoke-interface {v1, v0}, Ld/b/q/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 5
    :cond_11
    iget-object v1, p0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v1, :cond_12

    .line 6
    invoke-virtual {v1, v0}, Ld/b/k/a;->i(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_12
    iget-object v1, p0, Ld/b/k/k;->v:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_13
    :goto_6
    iget-object v0, p0, Ld/b/k/k;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 8
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0}, Ld/g/m/s;->A(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 9
    :cond_14
    iget-object v1, p0, Ld/b/k/k;->d:Landroid/content/Context;

    sget-object v5, Ld/b/j;->AppCompatTheme:[I

    invoke-virtual {v1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v5, Ld/b/j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Ld/b/j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_18

    sget v5, Ld/b/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 10
    iput-boolean v4, p0, Ld/b/k/k;->t:Z

    invoke-virtual {p0, v2}, Ld/b/k/k;->D(I)Ld/b/k/k$j;

    move-result-object v0

    iget-boolean v1, p0, Ld/b/k/k;->M:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Ld/b/k/k$j;->h:Ld/b/p/i/g;

    if-nez v0, :cond_1b

    invoke-virtual {p0, v3}, Ld/b/k/k;->G(I)V

    goto :goto_7

    .line 11
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ld/b/k/k;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/k;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/k;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/k;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/k/k;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_7
    return-void
.end method
