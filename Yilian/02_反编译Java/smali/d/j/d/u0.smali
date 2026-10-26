.class public abstract Ld/j/d/u0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/j/d/u0$c;,
        Ld/j/d/u0$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/j/d/u0$d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/j/d/u0$d;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/j/d/u0;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j/d/u0;->d:Z

    iput-boolean v0, p0, Ld/j/d/u0;->e:Z

    iput-object p1, p0, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Ld/j/d/y;)Ld/j/d/u0;
    .locals 0

    invoke-virtual {p1}, Ld/j/d/y;->K()Ld/j/d/v0;

    move-result-object p1

    invoke-static {p0, p1}, Ld/j/d/u0;->g(Landroid/view/ViewGroup;Ld/j/d/v0;)Ld/j/d/u0;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/ViewGroup;Ld/j/d/v0;)Ld/j/d/u0;
    .locals 2

    sget v0, Ld/j/b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ld/j/d/u0;

    if-eqz v1, :cond_0

    check-cast v0, Ld/j/d/u0;

    return-object v0

    :cond_0
    check-cast p1, Ld/j/d/y$f;

    if-eqz p1, :cond_1

    .line 1
    new-instance p1, Ld/j/d/c;

    invoke-direct {p1, p0}, Ld/j/d/c;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    sget v0, Ld/j/b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public final a(Ld/j/d/u0$d$c;Ld/j/d/u0$d$b;Ld/j/d/e0;)V
    .locals 3

    iget-object v0, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ld/g/i/a;

    invoke-direct {v1}, Ld/g/i/a;-><init>()V

    .line 1
    iget-object v2, p3, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {p0, v2}, Ld/j/d/u0;->d(Landroidx/fragment/app/Fragment;)Ld/j/d/u0$d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Ld/j/d/u0$d;->c(Ld/j/d/u0$d$c;Ld/j/d/u0$d$b;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ld/j/d/u0$c;

    invoke-direct {v2, p1, p2, p3, v1}, Ld/j/d/u0$c;-><init>(Ld/j/d/u0$d$c;Ld/j/d/u0$d$b;Ld/j/d/e0;Ld/g/i/a;)V

    iget-object p1, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld/j/d/u0$a;

    invoke-direct {p1, p0, v2}, Ld/j/d/u0$a;-><init>(Ld/j/d/u0;Ld/j/d/u0$c;)V

    .line 3
    iget-object p2, v2, Ld/j/d/u0$d;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Ld/j/d/u0$b;

    invoke-direct {p1, p0, v2}, Ld/j/d/u0$b;-><init>(Ld/j/d/u0;Ld/j/d/u0$c;)V

    .line 5
    iget-object p2, v2, Ld/j/d/u0$d;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract b(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/j/d/u0$d;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public c()V
    .locals 7

    iget-boolean v0, p0, Ld/j/d/u0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Ld/g/m/s;->z(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld/j/d/u0;->e()V

    iput-boolean v1, p0, Ld/j/d/u0;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ld/j/d/u0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Ld/j/d/u0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/u0$d;

    const/4 v4, 0x2

    invoke-static {v4}, Ld/j/d/y;->M(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Ld/j/d/u0$d;->a()V

    .line 1
    iget-boolean v4, v3, Ld/j/d/u0$d;->g:Z

    if-nez v4, :cond_2

    .line 2
    iget-object v4, p0, Ld/j/d/u0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ld/j/d/u0;->i()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Ld/j/d/u0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/j/d/u0$d;

    invoke-virtual {v4}, Ld/j/d/u0$d;->d()V

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Ld/j/d/u0;->d:Z

    invoke-virtual {p0, v2, v3}, Ld/j/d/u0;->b(Ljava/util/List;Z)V

    iput-boolean v1, p0, Ld/j/d/u0;->d:Z

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Ld/j/d/u0$d;
    .locals 3

    iget-object v0, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/u0$d;

    .line 1
    iget-object v2, v1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-boolean v2, v1, Ld/j/d/u0$d;->f:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 9

    iget-object v0, p0, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Ld/g/m/s;->z(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ld/j/d/u0;->i()V

    iget-object v2, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/u0$d;

    invoke-virtual {v3}, Ld/j/d/u0$d;->d()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ld/j/d/u0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/u0$d;

    invoke-static {v4}, Ld/j/d/y;->M(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v6, ""

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling running operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Ld/j/d/u0$d;->a()V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/u0$d;

    invoke-static {v4}, Ld/j/d/y;->M(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v7, ""

    goto :goto_4

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, Ld/j/d/u0$d;->a()V

    goto :goto_3

    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public h()V
    .locals 6

    sget-object v0, Ld/j/d/u0$d$c;->b:Ld/j/d/u0$d$c;

    iget-object v1, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ld/j/d/u0;->i()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Ld/j/d/u0;->e:Z

    iget-object v2, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/u0$d;

    .line 1
    iget-object v4, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Ld/j/d/u0$d$c;->c(Landroid/view/View;)Ld/j/d/u0$d$c;

    move-result-object v4

    .line 3
    iget-object v5, v3, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    if-ne v5, v0, :cond_0

    if-eq v4, v0, :cond_0

    .line 4
    iget-object v0, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v0

    iput-boolean v0, p0, Ld/j/d/u0;->e:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/u0$d;

    .line 1
    iget-object v2, v1, Ld/j/d/u0$d;->b:Ld/j/d/u0$d$b;

    .line 2
    sget-object v3, Ld/j/d/u0$d$b;->b:Ld/j/d/u0$d$b;

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, v1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ld/j/d/u0$d$c;->b(I)Ld/j/d/u0$d$c;

    move-result-object v2

    sget-object v3, Ld/j/d/u0$d$b;->a:Ld/j/d/u0$d$b;

    invoke-virtual {v1, v2, v3}, Ld/j/d/u0$d;->c(Ld/j/d/u0$d$c;Ld/j/d/u0$d$b;)V

    goto :goto_0

    :cond_1
    return-void
.end method
