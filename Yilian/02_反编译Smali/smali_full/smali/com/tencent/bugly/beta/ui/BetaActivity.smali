.class public Lcom/tencent/bugly/beta/ui/BetaActivity;
.super Ld/j/d/l;
.source ""


# instance fields
.field public onDestroyRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/j/d/l;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/BetaActivity;->onDestroyRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Ld/j/d/l;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    const v0, 0x1020002

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    sget-boolean v2, Lcom/tencent/bugly/beta/Beta;->dialogFullScreen:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/tencent/bugly/beta/global/b;

    new-array v4, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object v2, v4, v1

    invoke-direct {v3, v1, v4}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "frag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/tencent/bugly/beta/ui/UiManager;->TEMP_FRAG:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/beta/ui/BaseFrag;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Ld/j/d/l;->getSupportFragmentManager()Ld/j/d/y;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    .line 1
    new-instance v7, Ld/j/d/a;

    invoke-direct {v7, v5}, Ld/j/d/a;-><init>(Ld/j/d/y;)V

    .line 2
    invoke-virtual {v7, v0, v3, v6, v1}, Ld/j/d/g0;->d(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, v7, Ld/j/d/a;->r:Z

    if-nez v0, :cond_8

    invoke-static {p1}, Ld/j/d/y;->M(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Commit: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ld/j/d/t0;

    const-string v0, "FragmentManager"

    invoke-direct {p1, v0}, Ld/j/d/t0;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, "  "

    .line 4
    invoke-virtual {v7, p1, v0, v1}, Ld/j/d/a;->h(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_2
    iput-boolean v1, v7, Ld/j/d/a;->r:Z

    iget-boolean p1, v7, Ld/j/d/g0;->g:Z

    if-eqz p1, :cond_3

    iget-object p1, v7, Ld/j/d/a;->q:Ld/j/d/y;

    .line 6
    iget-object p1, p1, Ld/j/d/y;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 7
    :cond_3
    iput v4, v7, Ld/j/d/a;->s:I

    iget-object p1, v7, Ld/j/d/a;->q:Ld/j/d/y;

    .line 8
    iget-object v0, p1, Ld/j/d/y;->q:Ld/j/d/v;

    if-nez v0, :cond_5

    iget-boolean p1, p1, Ld/j/d/y;->F:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    invoke-virtual {p1}, Ld/j/d/y;->Q()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    iget-object v0, p1, Ld/j/d/y;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p1, Ld/j/d/y;->q:Ld/j/d/v;

    if-eqz v1, :cond_6

    iget-object v1, p1, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ld/j/d/y;->a0()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    sget-object p1, Lcom/tencent/bugly/beta/ui/UiManager;->TEMP_FRAG:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_9
    throw v6

    .line 16
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Ld/j/d/l;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/BetaActivity;->onDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ld/j/d/l;->getSupportFragmentManager()Ld/j/d/y;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Ld/j/d/y;->F(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :try_start_0
    instance-of v1, v0, Lcom/tencent/bugly/beta/ui/BaseFrag;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/bugly/beta/ui/BaseFrag;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/beta/ui/BaseFrag;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0}, Ld/j/d/l;->onPause()V

    return-void
.end method
