.class public Ld/b/k/h;
.super Ld/j/d/l;
.source ""

# interfaces
.implements Ld/b/k/i;
.implements Ld/g/e/o;


# instance fields
.field public a:Ld/b/k/j;

.field public b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/j/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/k/j;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object p1

    check-cast p1, Ld/b/k/k;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ld/b/k/k;->r(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Ld/b/k/k;->J:Z

    return-void
.end method

.method public b(Ld/b/p/a;)V
    .locals 0

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Ld/b/k/h;->s()Ld/b/k/a;

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

.method public d(Ld/b/p/a;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Ld/b/k/h;->s()Ld/b/k/a;

    move-result-object v1

    const/16 v2, 0x52

    invoke-super {p0, p1}, Ld/g/e/e;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    .line 1
    invoke-virtual {v0}, Ld/b/k/k;->z()V

    iget-object v0, v0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    .line 1
    iget-object v1, v0, Ld/b/k/k;->i:Landroid/view/MenuInflater;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ld/b/k/k;->F()V

    new-instance v1, Ld/b/p/f;

    iget-object v2, v0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ld/b/k/a;->d()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ld/b/k/k;->d:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Ld/b/p/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Ld/b/k/k;->i:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, v0, Ld/b/k/k;->i:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Ld/b/k/h;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Ld/b/q/a1;->a()Z

    :cond_0
    iget-object v0, p0, Ld/b/k/h;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/k/j;->h()V

    return-void
.end method

.method public k()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Ld/b/k/r;->H(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Ld/j/d/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Ld/b/k/h;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Ld/b/k/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    .line 1
    iget-boolean v1, v0, Ld/b/k/k;->z:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Ld/b/k/k;->t:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Ld/b/k/k;->F()V

    iget-object v1, v0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, p1}, Ld/b/k/a;->e(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-static {}, Ld/b/q/i;->a()Ld/b/q/i;

    move-result-object p1

    iget-object v1, v0, Ld/b/k/k;->d:Landroid/content/Context;

    .line 4
    monitor-enter p1

    :try_start_0
    iget-object v2, p1, Ld/b/q/i;->a:Ld/b/q/l0;

    .line 5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Ld/b/q/l0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/e/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ld/e/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p1

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Ld/b/k/k;->r(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/k/j;->g()V

    invoke-virtual {v0, p1}, Ld/b/k/j;->i(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Ld/j/d/l;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Ld/j/d/l;->onDestroy()V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    if-eqz v0, :cond_3

    .line 1
    sget-object v1, Ld/b/k/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Ld/b/k/j;->k(Ld/b/k/j;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v1, v0, Ld/b/k/k;->T:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Ld/b/k/k;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Ld/b/k/k;->V:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Ld/b/k/k;->L:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/b/k/k;->M:Z

    iget-object v1, v0, Ld/b/k/k;->h:Ld/b/k/a;

    .line 3
    iget-object v1, v0, Ld/b/k/k;->R:Ld/b/k/k$g;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ld/b/k/k$g;->a()V

    :cond_1
    iget-object v0, v0, Ld/b/k/k;->S:Ld/b/k/k$g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ld/b/k/k$g;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Ld/b/k/h;->v(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Ld/j/d/l;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ld/b/k/h;->s()Ld/b/k/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ld/b/k/a;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    .line 1
    invoke-static {p0}, Ld/b/k/r;->H(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ld/g/e/o;->k()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Ld/b/k/r;->H(Landroid/app/Activity;)Landroid/content/Intent;

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

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    :try_start_0
    invoke-static {p0, v1}, Ld/b/k/r;->I(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 7
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ld/b/k/h;->u()V

    .line 9
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

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Ld/g/f/a;->g(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    .line 10
    :try_start_1
    invoke-static {p0}, Ld/g/e/a;->i(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
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

    invoke-super {p0, p1, p2}, Ld/j/d/l;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object p1

    check-cast p1, Ld/b/k/k;

    .line 1
    invoke-virtual {p1}, Ld/b/k/k;->z()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Ld/j/d/l;->onPostResume()V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    .line 1
    invoke-virtual {v0}, Ld/b/k/k;->F()V

    iget-object v0, v0, Ld/b/k/k;->h:Ld/b/k/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ld/b/k/a;->h(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object p1

    check-cast p1, Ld/b/k/k;

    .line 1
    iget v0, p1, Ld/b/k/k;->N:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    sget-object v0, Ld/b/k/k;->a0:Ljava/util/Map;

    iget-object v1, p1, Ld/b/k/k;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget p1, p1, Ld/b/k/k;->N:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ld/e/h;

    invoke-virtual {v0, v1, p1}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Ld/j/d/l;->onStart()V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Ld/b/k/k;->L:Z

    invoke-virtual {v0}, Ld/b/k/k;->q()Z

    .line 2
    sget-object v1, Ld/b/k/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Ld/b/k/j;->k(Ld/b/k/j;)V

    sget-object v2, Ld/b/k/j;->a:Ld/e/c;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ld/e/c;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Ld/j/d/l;->onStop()V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/k/j;->j()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Ld/b/k/j;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Ld/b/k/h;->s()Ld/b/k/a;

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

.method public p(Ld/b/p/a$a;)Ld/b/p/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public r()Ld/b/k/j;
    .locals 1

    iget-object v0, p0, Ld/b/k/h;->a:Ld/b/k/j;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Ld/b/k/j;->d(Landroid/app/Activity;Ld/b/k/i;)Ld/b/k/j;

    move-result-object v0

    iput-object v0, p0, Ld/b/k/h;->a:Ld/b/k/j;

    :cond_0
    iget-object v0, p0, Ld/b/k/h;->a:Ld/b/k/j;

    return-object v0
.end method

.method public s()Ld/b/k/a;
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    .line 1
    invoke-virtual {v0}, Ld/b/k/k;->F()V

    iget-object v0, v0, Ld/b/k/k;->h:Ld/b/k/a;

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/k/j;->m(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/k/j;->n(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/k/j;->o(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    check-cast v0, Ld/b/k/k;

    .line 1
    iput p1, v0, Ld/b/k/k;->O:I

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Ld/b/k/h;->r()Ld/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/k/j;->h()V

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public final v(Landroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

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

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
