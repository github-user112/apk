.class public Lb/b/c/j;
.super Lb/h/b/p;
.source ""

# interfaces
.implements Lb/b/c/k;


# instance fields
.field public n:Lb/b/c/l;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/h/b/p;-><init>()V

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/m/b;

    .line 2
    iget-object v0, v0, Lb/m/b;->b:Lb/m/a;

    .line 3
    new-instance v1, Lb/b/c/h;

    invoke-direct {v1, p0}, Lb/b/c/h;-><init>(Lb/b/c/j;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Lb/m/a;->b(Ljava/lang/String;Lb/m/a$b;)V

    new-instance v0, Lb/b/c/i;

    invoke-direct {v0, p0}, Lb/b/c/i;-><init>(Lb/b/c/j;)V

    .line 4
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->c:Lb/a/f/a;

    .line 5
    iget-object v2, v1, Lb/a/f/a;->b:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lb/a/f/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lb/b/c/i;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v1, v1, Lb/a/f/a;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private P0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090133

    .line 1
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090135

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090134

    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public D0(Lb/b/g/a$a;)Lb/b/g/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public R(Lb/b/g/a;)V
    .locals 0

    return-void
.end method

.method public T0()V
    .locals 1

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->j()V

    return-void
.end method

.method public U0()Lb/b/c/l;
    .locals 2

    iget-object v0, p0, Lb/b/c/j;->n:Lb/b/c/l;

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Lb/b/c/l;->b:Lb/d/c;

    new-instance v0, Lb/b/c/m;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1, p0, p0}, Lb/b/c/m;-><init>(Landroid/content/Context;Landroid/view/Window;Lb/b/c/k;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lb/b/c/j;->n:Lb/b/c/l;

    :cond_0
    iget-object v0, p0, Lb/b/c/j;->n:Lb/b/c/l;

    return-object v0
.end method

.method public V0()Lb/b/c/a;
    .locals 1

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->h()Lb/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method public W0()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lb/e/b/g;->A(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public X0()V
    .locals 0

    return-void
.end method

.method public Y0()V
    .locals 0

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0}, Lb/b/c/j;->P0()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/c/l;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/l;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lb/b/c/j;->V0()Lb/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Lb/b/c/j;->V0()Lb/b/c/a;

    move-result-object v1

    const/16 v2, 0x52

    invoke-super {p0, p1}, Lb/e/b/h;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/l;->e(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->g()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Lb/b/h/e1;->a:I

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->j()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lb/h/b/p;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/l;->k(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lb/h/b/p;->onDestroy()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->m()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lb/h/b/p;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lb/b/c/j;->V0()Lb/b/c/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    check-cast p1, Lb/b/c/x;

    .line 1
    iget-object p1, p1, Lb/b/c/x;->g:Lb/b/h/f0;

    invoke-interface {p1}, Lb/b/h/f0;->i()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    .line 2
    invoke-static {p0}, Lb/e/b/g;->A(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Lb/b/c/j;->W0()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lb/e/b/g;->A(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    :try_start_0
    invoke-static {p0, v1}, Lb/e/b/g;->B(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 8
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lb/b/c/j;->Y0()V

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    .line 11
    sget-object p2, Lb/e/c/a;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 12
    :try_start_1
    sget p1, Lb/e/b/c;->b:I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 13
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_8
    return v2
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lb/h/b/p;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/l;->n(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Lb/h/b/p;->onPostResume()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->o()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lb/h/b/p;->onStart()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->q()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lb/h/b/p;->onStop()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/l;->r()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/b/c/l;->y(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lb/b/c/j;->V0()Lb/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public p0(Lb/b/g/a;)V
    .locals 0

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-direct {p0}, Lb/b/c/j;->P0()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/l;->u(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lb/b/c/j;->P0()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/l;->v(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0}, Lb/b/c/j;->P0()V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/c/l;->w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/l;->x(I)V

    return-void
.end method
