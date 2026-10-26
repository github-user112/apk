.class public Ld/j/d/l;
.super Landroidx/activity/ComponentActivity;
.source ""

# interfaces
.implements Ld/g/e/a$c;
.implements Ld/g/e/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/j/d/l$c;
    }
.end annotation


# static fields
.field public static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:Ld/l/i;

.field public final mFragments:Ld/j/d/t;

.field public mResumed:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Ld/j/d/l$c;

    invoke-direct {v0, p0}, Ld/j/d/l$c;-><init>(Ld/j/d/l;)V

    .line 1
    new-instance v1, Ld/j/d/t;

    const-string v2, "callbacks == null"

    invoke-static {v0, v2}, Ld/b/k/r;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0}, Ld/j/d/t;-><init>(Ld/j/d/v;)V

    .line 2
    iput-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    new-instance v0, Ld/l/i;

    invoke-direct {v0, p0}, Ld/l/i;-><init>(Ld/l/h;)V

    iput-object v0, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j/d/l;->mStopped:Z

    invoke-direct {p0}, Ld/j/d/l;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    new-instance p1, Ld/j/d/l$c;

    invoke-direct {p1, p0}, Ld/j/d/l$c;-><init>(Ld/j/d/l;)V

    .line 3
    new-instance v0, Ld/j/d/t;

    const-string v1, "callbacks == null"

    invoke-static {p1, v1}, Ld/b/k/r;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Ld/j/d/t;-><init>(Ld/j/d/v;)V

    .line 4
    iput-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    new-instance p1, Ld/l/i;

    invoke-direct {p1, p0}, Ld/l/i;-><init>(Ld/l/h;)V

    iput-object p1, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/j/d/l;->mStopped:Z

    invoke-direct {p0}, Ld/j/d/l;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Ld/r/b;

    move-result-object v0

    new-instance v1, Ld/j/d/l$a;

    invoke-direct {v1, p0}, Ld/j/d/l$a;-><init>(Ld/j/d/l;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Ld/r/b;->b(Ljava/lang/String;Ld/r/b$b;)V

    new-instance v0, Ld/j/d/l$b;

    invoke-direct {v0, p0}, Ld/j/d/l$b;-><init>(Ld/j/d/l;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Ld/a/d/b;)V

    return-void
.end method

.method public static markState(Ld/j/d/y;Ld/l/e$b;)Z
    .locals 7

    sget-object v0, Ld/l/e$b;->d:Ld/l/e$b;

    invoke-virtual {p0}, Ld/j/d/y;->J()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/j/d/y;

    move-result-object v4

    invoke-static {v4, p1}, Ld/j/d/l;->markState(Ld/j/d/y;Ld/l/e$b;)Z

    move-result v4

    or-int/2addr v2, v4

    :cond_2
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Ld/j/d/s0;

    const-string v5, "setCurrentState"

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ld/j/d/s0;->getLifecycle()Ld/l/e;

    move-result-object v4

    check-cast v4, Ld/l/i;

    .line 1
    iget-object v4, v4, Ld/l/i;->b:Ld/l/e$b;

    .line 2
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 3
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Ld/j/d/s0;

    .line 4
    iget-object v2, v2, Ld/j/d/s0;->a:Ld/l/i;

    .line 5
    invoke-virtual {v2, v5}, Ld/l/i;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ld/l/i;->g(Ld/l/e$b;)V

    const/4 v2, 0x1

    .line 6
    :cond_4
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Ld/l/i;

    .line 7
    iget-object v4, v4, Ld/l/i;->b:Ld/l/e$b;

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_0

    .line 9
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Ld/l/i;

    .line 10
    invoke-virtual {v2, v5}, Ld/l/i;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ld/l/i;->g(Ld/l/e$b;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    .line 2
    iget-object v0, v0, Ld/j/d/y;->f:Ld/j/d/w;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Ld/j/d/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Ld/j/d/l;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Ld/j/d/l;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Ld/j/d/l;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ld/m/a/a;->b(Ld/l/h;)Ld/m/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Ld/m/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Ld/j/d/y;->y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Ld/j/d/y;
    .locals 1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    return-object v0
.end method

.method public getSupportLoaderManager()Ld/m/a/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ld/m/a/a;->b(Ld/l/h;)Ld/m/a/a;

    move-result-object v0

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Ld/j/d/l;->getSupportFragmentManager()Ld/j/d/y;

    move-result-object v0

    sget-object v1, Ld/l/e$b;->c:Ld/l/e$b;

    invoke-static {v0, v1}, Ld/j/d/l;->markState(Ld/j/d/y;Ld/l/e$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {v0}, Ld/j/d/t;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {v0}, Ld/j/d/t;->a()V

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0, p1}, Ld/j/d/y;->k(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    sget-object v0, Ld/l/e$a;->ON_CREATE:Ld/l/e$a;

    invoke-virtual {p1, v0}, Ld/l/i;->e(Ld/l/e$a;)V

    iget-object p1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object p1, p1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object p1, p1, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {p1}, Ld/j/d/y;->m()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0, p2, v1}, Ld/j/d/y;->n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Ld/j/d/l;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ld/j/d/l;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0}, Ld/j/d/y;->o()V

    .line 2
    iget-object v0, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    sget-object v1, Ld/l/e$a;->ON_DESTROY:Ld/l/e$a;

    invoke-virtual {v0, v1}, Ld/l/i;->e(Ld/l/e$a;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0}, Ld/j/d/y;->p()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object p1, p1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object p1, p1, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {p1, p2}, Ld/j/d/y;->l(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2
    :cond_2
    iget-object p1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 3
    iget-object p1, p1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object p1, p1, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {p1, p2}, Ld/j/d/y;->r(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0, p1}, Ld/j/d/y;->q(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {p1}, Ld/j/d/t;->a()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0, p2}, Ld/j/d/y;->s(Landroid/view/Menu;)V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j/d/l;->mResumed:Z

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Ld/j/d/y;->w(I)V

    .line 3
    iget-object v0, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    sget-object v1, Ld/l/e$a;->ON_PAUSE:Ld/l/e$a;

    invoke-virtual {v0, v1}, Ld/l/i;->e(Ld/l/e$a;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0, p1}, Ld/j/d/y;->u(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Ld/j/d/l;->onResumeFragments()V

    return-void
.end method

.method public onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Ld/j/d/l;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object p2, p2, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object p2, p2, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {p2, p3}, Ld/j/d/y;->v(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {v0}, Ld/j/d/t;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j/d/l;->mResumed:Z

    iget-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {v1}, Ld/j/d/t;->a()V

    iget-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v1, v1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v1, v1, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v1, v0}, Ld/j/d/y;->B(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 3

    iget-object v0, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    sget-object v1, Ld/l/e$a;->ON_RESUME:Ld/l/e$a;

    invoke-virtual {v0, v1}, Ld/l/i;->e(Ld/l/e$a;)V

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ld/j/d/y;->D:Z

    iput-boolean v1, v0, Ld/j/d/y;->E:Z

    iget-object v2, v0, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 3
    iput-boolean v1, v2, Ld/j/d/b0;->i:Z

    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Ld/j/d/y;->w(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j/d/l;->mStopped:Z

    iget-boolean v1, p0, Ld/j/d/l;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Ld/j/d/l;->mCreated:Z

    iget-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v1, v1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v1, v1, Ld/j/d/v;->d:Ld/j/d/y;

    .line 2
    iput-boolean v0, v1, Ld/j/d/y;->D:Z

    iput-boolean v0, v1, Ld/j/d/y;->E:Z

    iget-object v3, v1, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 3
    iput-boolean v0, v3, Ld/j/d/b0;->i:Z

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v1, v3}, Ld/j/d/y;->w(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {v1}, Ld/j/d/t;->a()V

    iget-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 6
    iget-object v1, v1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v1, v1, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v1, v2}, Ld/j/d/y;->B(Z)Z

    .line 7
    iget-object v1, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    sget-object v2, Ld/l/e$a;->ON_START:Ld/l/e$a;

    invoke-virtual {v1, v2}, Ld/l/i;->e(Ld/l/e$a;)V

    iget-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 8
    iget-object v1, v1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v1, v1, Ld/j/d/v;->d:Ld/j/d/y;

    .line 9
    iput-boolean v0, v1, Ld/j/d/y;->D:Z

    iput-boolean v0, v1, Ld/j/d/y;->E:Z

    iget-object v2, v1, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 10
    iput-boolean v0, v2, Ld/j/d/b0;->i:Z

    const/4 v0, 0x5

    .line 11
    invoke-virtual {v1, v0}, Ld/j/d/y;->w(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    invoke-virtual {v0}, Ld/j/d/t;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j/d/l;->mStopped:Z

    invoke-virtual {p0}, Ld/j/d/l;->markFragmentsCreated()V

    iget-object v1, p0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v1, v1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v1, v1, Ld/j/d/v;->d:Ld/j/d/y;

    .line 2
    iput-boolean v0, v1, Ld/j/d/y;->E:Z

    iget-object v2, v1, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 3
    iput-boolean v0, v2, Ld/j/d/b0;->i:Z

    const/4 v0, 0x4

    .line 4
    invoke-virtual {v1, v0}, Ld/j/d/y;->w(I)V

    .line 5
    iget-object v0, p0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    sget-object v1, Ld/l/e$a;->ON_STOP:Ld/l/e$a;

    invoke-virtual {v0, v1}, Ld/l/i;->e(Ld/l/e$a;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Ld/g/e/n;)V
    .locals 0

    invoke-static {p0}, Ld/g/e/a;->n(Landroid/app/Activity;)V

    return-void
.end method

.method public setExitSharedElementCallback(Ld/g/e/n;)V
    .locals 0

    invoke-static {p0}, Ld/g/e/a;->o(Landroid/app/Activity;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ld/j/d/l;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-static {p0, p2, v0, p4}, Ld/g/e/a;->q(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Ld/g/e/a;->r(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-static {p0}, Ld/g/e/a;->j(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-static {p0}, Ld/g/e/a;->k(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-static {p0}, Ld/g/e/a;->s(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
