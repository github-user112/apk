.class public abstract Ld/j/d/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/j/d/y$j;,
        Ld/j/d/y$k;,
        Ld/j/d/y$m;,
        Ld/j/d/y$l;
    }
.end annotation


# instance fields
.field public A:Ld/a/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/e/c<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ld/j/d/y$k;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/j/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/j/d/y$m;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ld/j/d/b0;

.field public M:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/j/d/y$l;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ld/j/d/f0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/j/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ld/j/d/w;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Ld/a/b;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Ld/g/i/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Ld/j/d/n0$a;

.field public final n:Ld/j/d/x;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ld/j/d/c0;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Ld/j/d/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/j/d/v<",
            "*>;"
        }
    .end annotation
.end field

.field public r:Ld/j/d/r;

.field public s:Landroidx/fragment/app/Fragment;

.field public t:Landroidx/fragment/app/Fragment;

.field public u:Ld/j/d/u;

.field public v:Ld/j/d/u;

.field public w:Ld/j/d/v0;

.field public x:Ld/j/d/v0;

.field public y:Ld/a/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/e/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ld/a/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/e/c<",
            "Ld/a/e/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    new-instance v0, Ld/j/d/f0;

    invoke-direct {v0}, Ld/j/d/f0;-><init>()V

    iput-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    new-instance v0, Ld/j/d/w;

    invoke-direct {v0, p0}, Ld/j/d/w;-><init>(Ld/j/d/y;)V

    iput-object v0, p0, Ld/j/d/y;->f:Ld/j/d/w;

    new-instance v0, Ld/j/d/y$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/j/d/y$c;-><init>(Ld/j/d/y;Z)V

    iput-object v0, p0, Ld/j/d/y;->h:Ld/a/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ld/j/d/y;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/j/d/y;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/j/d/y;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/j/d/y;->l:Ljava/util/Map;

    new-instance v0, Ld/j/d/y$d;

    invoke-direct {v0, p0}, Ld/j/d/y$d;-><init>(Ld/j/d/y;)V

    iput-object v0, p0, Ld/j/d/y;->m:Ld/j/d/n0$a;

    new-instance v0, Ld/j/d/x;

    invoke-direct {v0, p0}, Ld/j/d/x;-><init>(Ld/j/d/y;)V

    iput-object v0, p0, Ld/j/d/y;->n:Ld/j/d/x;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ld/j/d/y;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Ld/j/d/y;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Ld/j/d/y;->u:Ld/j/d/u;

    new-instance v1, Ld/j/d/y$e;

    invoke-direct {v1, p0}, Ld/j/d/y$e;-><init>(Ld/j/d/y;)V

    iput-object v1, p0, Ld/j/d/y;->v:Ld/j/d/u;

    iput-object v0, p0, Ld/j/d/y;->w:Ld/j/d/v0;

    new-instance v0, Ld/j/d/y$f;

    invoke-direct {v0, p0}, Ld/j/d/y$f;-><init>(Ld/j/d/y;)V

    iput-object v0, p0, Ld/j/d/y;->x:Ld/j/d/v0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ld/j/d/y;->B:Ljava/util/ArrayDeque;

    new-instance v0, Ld/j/d/y$g;

    invoke-direct {v0, p0}, Ld/j/d/y$g;-><init>(Ld/j/d/y;)V

    iput-object v0, p0, Ld/j/d/y;->M:Ljava/lang/Runnable;

    return-void
.end method

.method public static M(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    iget-boolean v0, p0, Ld/j/d/y;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ld/j/d/y;->q:Ld/j/d/v;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Ld/j/d/y;->F:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 1
    iget-object v1, v1, Ld/j/d/v;->c:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Ld/j/d/y;->Q()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    :goto_0
    iget-object p1, p0, Ld/j/d/y;->H:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/j/d/y;->H:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/j/d/y;->I:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/j/d/y;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Ld/j/d/y;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Ld/j/d/y;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Ld/j/d/y;->b:Z

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(Z)Z
    .locals 9

    invoke-virtual {p0, p1}, Ld/j/d/y;->A(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld/j/d/y;->H:Ljava/util/ArrayList;

    iget-object v3, p0, Ld/j/d/y;->I:Ljava/util/ArrayList;

    .line 1
    iget-object v4, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v4

    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v8, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/j/d/y$l;

    invoke-interface {v8, v2, v3}, Ld/j/d/y$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 2
    iget-object v2, v2, Ld/j/d/v;->c:Landroid/os/Handler;

    .line 3
    iget-object v3, p0, Ld/j/d/y;->M:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-eqz v7, :cond_2

    .line 4
    iput-boolean p1, p0, Ld/j/d/y;->b:Z

    :try_start_1
    iget-object v1, p0, Ld/j/d/y;->H:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/j/d/y;->I:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Ld/j/d/y;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ld/j/d/y;->e()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ld/j/d/y;->e()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Ld/j/d/y;->h0()V

    invoke-virtual {p0}, Ld/j/d/y;->x()V

    iget-object p1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {p1}, Ld/j/d/f0;->b()V

    return v1

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final C(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/j/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/j/d/a;

    iget-boolean v5, v5, Ld/j/d/g0;->o:Z

    iget-object v6, v0, Ld/j/d/y;->J:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Ld/j/d/y;->J:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Ld/j/d/y;->J:Ljava/util/ArrayList;

    iget-object v7, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v7}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1
    iget-object v6, v0, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    move v8, v3

    const/4 v9, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v8, v4, :cond_11

    .line 2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ld/j/d/a;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x3

    if-nez v14, :cond_b

    iget-object v14, v0, Ld/j/d/y;->J:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 3
    :goto_2
    iget-object v10, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_e

    iget-object v10, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/j/d/g0$a;

    iget v11, v10, Ld/j/d/g0$a;->a:I

    if-eq v11, v12, :cond_a

    const/4 v12, 0x2

    const/16 v3, 0x9

    if-eq v11, v12, :cond_3

    if-eq v11, v15, :cond_2

    const/4 v12, 0x6

    if-eq v11, v12, :cond_2

    const/4 v12, 0x7

    if-eq v11, v12, :cond_a

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v11, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    new-instance v12, Ld/j/d/g0$a;

    invoke-direct {v12, v3, v6}, Ld/j/d/g0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v11, v7, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    iget-object v6, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    goto/16 :goto_6

    :cond_2
    iget-object v11, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v10, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v10, v6, :cond_8

    iget-object v6, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    new-instance v11, Ld/j/d/g0$a;

    invoke-direct {v11, v3, v10}, Ld/j/d/g0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_3
    iget-object v11, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    iget v12, v11, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    const/16 v17, 0x0

    :goto_3
    if-ltz v15, :cond_7

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroidx/fragment/app/Fragment;

    iget v2, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v2, v12, :cond_6

    if-ne v3, v11, :cond_4

    move/from16 v18, v12

    const/16 v17, 0x1

    goto :goto_5

    :cond_4
    if-ne v3, v6, :cond_5

    iget-object v2, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    new-instance v6, Ld/j/d/g0$a;

    move/from16 v18, v12

    const/16 v12, 0x9

    invoke-direct {v6, v12, v3}, Ld/j/d/g0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    move/from16 v18, v12

    const/16 v12, 0x9

    :goto_4
    new-instance v2, Ld/j/d/g0$a;

    const/4 v12, 0x3

    invoke-direct {v2, v12, v3}, Ld/j/d/g0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    iget v12, v10, Ld/j/d/g0$a;->c:I

    iput v12, v2, Ld/j/d/g0$a;->c:I

    iget v12, v10, Ld/j/d/g0$a;->e:I

    iput v12, v2, Ld/j/d/g0$a;->e:I

    iget v12, v10, Ld/j/d/g0$a;->d:I

    iput v12, v2, Ld/j/d/g0$a;->d:I

    iget v12, v10, Ld/j/d/g0$a;->f:I

    iput v12, v2, Ld/j/d/g0$a;->f:I

    iget-object v12, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v7, v2

    goto :goto_5

    :cond_6
    move/from16 v18, v12

    :goto_5
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    move/from16 v12, v18

    const/16 v3, 0x9

    goto :goto_3

    :cond_7
    if-eqz v17, :cond_9

    iget-object v2, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_8
    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x1

    iput v2, v10, Ld/j/d/g0$a;->a:I

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    iget-object v3, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v7, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v12, 0x1

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    .line 4
    iget-object v3, v0, Ld/j/d/y;->J:Ljava/util/ArrayList;

    .line 5
    iget-object v7, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_8
    if-ltz v7, :cond_e

    iget-object v10, v13, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/j/d/g0$a;

    iget v11, v10, Ld/j/d/g0$a;->a:I

    if-eq v11, v2, :cond_d

    const/4 v2, 0x3

    if-eq v11, v2, :cond_c

    packed-switch v11, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object v11, v10, Ld/j/d/g0$a;->g:Ld/l/e$b;

    iput-object v11, v10, Ld/j/d/g0$a;->h:Ld/l/e$b;

    goto :goto_9

    :pswitch_1
    iget-object v6, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_9

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    :pswitch_3
    iget-object v10, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    const/4 v2, 0x3

    :pswitch_4
    iget-object v10, v10, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, -0x1

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    if-nez v9, :cond_10

    .line 6
    iget-boolean v2, v13, Ld/j/d/g0;->g:Z

    if-eqz v2, :cond_f

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v9, 0x1

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_1

    :cond_11
    iget-object v2, v0, Ld/j/d/y;->J:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_14

    iget v2, v0, Ld/j/d/y;->p:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    move/from16 v2, p3

    :goto_c
    if-ge v2, v4, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/a;

    iget-object v3, v3, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/j/d/g0$a;

    iget-object v5, v5, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_12

    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    if-eqz v6, :cond_12

    invoke-virtual {v0, v5}, Ld/j/d/y;->h(Landroidx/fragment/app/Fragment;)Ld/j/d/e0;

    move-result-object v5

    iget-object v6, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v6, v5}, Ld/j/d/f0;->j(Ld/j/d/e0;)V

    goto :goto_d

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    move/from16 v2, p3

    :goto_e
    if-ge v2, v4, :cond_17

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/a;

    move-object/from16 v5, p2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Ld/j/d/a;->g(I)V

    add-int/lit8 v6, v4, -0x1

    if-ne v2, v6, :cond_15

    const/4 v6, 0x1

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v3, v6}, Ld/j/d/a;->j(Z)V

    goto :goto_10

    :cond_16
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ld/j/d/a;->g(I)V

    invoke-virtual {v3}, Ld/j/d/a;->i()V

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v5, p2

    add-int/lit8 v2, v4, -0x1

    .line 8
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v3, p3

    :goto_11
    if-ge v3, v4, :cond_1c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/j/d/a;

    if-eqz v2, :cond_19

    iget-object v7, v6, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_12
    if-ltz v7, :cond_1b

    iget-object v8, v6, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/j/d/g0$a;

    iget-object v8, v8, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_18

    invoke-virtual {v0, v8}, Ld/j/d/y;->h(Landroidx/fragment/app/Fragment;)Ld/j/d/e0;

    move-result-object v8

    invoke-virtual {v8}, Ld/j/d/e0;->k()V

    :cond_18
    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    :cond_19
    iget-object v6, v6, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/j/d/g0$a;

    iget-object v7, v7, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_1a

    invoke-virtual {v0, v7}, Ld/j/d/y;->h(Landroidx/fragment/app/Fragment;)Ld/j/d/e0;

    move-result-object v7

    invoke-virtual {v7}, Ld/j/d/e0;->k()V

    goto :goto_13

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1c
    iget v3, v0, Ld/j/d/y;->p:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Ld/j/d/y;->R(IZ)V

    .line 9
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_14
    if-ge v6, v4, :cond_1f

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/j/d/a;

    iget-object v7, v7, Ld/j/d/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/j/d/g0$a;

    iget-object v8, v8, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_1d

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1d

    .line 10
    invoke-virtual/range {p0 .. p0}, Ld/j/d/y;->K()Ld/j/d/v0;

    move-result-object v9

    invoke-static {v8, v9}, Ld/j/d/u0;->g(Landroid/view/ViewGroup;Ld/j/d/v0;)Ld/j/d/u0;

    move-result-object v8

    .line 11
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 12
    :cond_1f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/j/d/u0;

    .line 13
    iput-boolean v2, v6, Ld/j/d/u0;->d:Z

    .line 14
    invoke-virtual {v6}, Ld/j/d/u0;->h()V

    invoke-virtual {v6}, Ld/j/d/u0;->c()V

    goto :goto_16

    :cond_20
    move/from16 v2, p3

    :goto_17
    if-ge v2, v4, :cond_24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/a;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    iget v6, v3, Ld/j/d/a;->s:I

    if-ltz v6, :cond_21

    const/4 v6, -0x1

    iput v6, v3, Ld/j/d/a;->s:I

    goto :goto_18

    :cond_21
    const/4 v6, -0x1

    .line 15
    :goto_18
    iget-object v7, v3, Ld/j/d/g0;->p:Ljava/util/ArrayList;

    if-eqz v7, :cond_23

    const/4 v7, 0x0

    :goto_19
    iget-object v8, v3, Ld/j/d/g0;->p:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_22

    iget-object v8, v3, Ld/j/d/g0;->p:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_22
    const/4 v7, 0x0

    iput-object v7, v3, Ld/j/d/g0;->p:Ljava/util/ArrayList;

    goto :goto_1a

    :cond_23
    const/4 v7, 0x0

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_24
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/j/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ld/j/d/y;->K:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Ld/j/d/y;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/y$m;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    iget-boolean v6, v3, Ld/j/d/y$m;->a:Z

    if-nez v6, :cond_1

    iget-object v6, v3, Ld/j/d/y$m;->b:Ld/j/d/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Ld/j/d/y;->K:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1
    :cond_1
    iget v6, v3, Ld/j/d/y$m;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 2
    iget-object v6, v3, Ld/j/d/y$m;->b:Ld/j/d/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Ld/j/d/a;->l(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p0, Ld/j/d/y;->K:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    iget-boolean v6, v3, Ld/j/d/y$m;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Ld/j/d/y$m;->b:Ld/j/d/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3
    :goto_3
    iget-object v5, v3, Ld/j/d/y$m;->b:Ld/j/d/a;

    iget-object v6, v5, Ld/j/d/a;->q:Ld/j/d/y;

    iget-boolean v3, v3, Ld/j/d/y$m;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Ld/j/d/y;->g(Ld/j/d/a;ZZZ)V

    goto :goto_4

    .line 4
    :cond_4
    invoke-virtual {v3}, Ld/j/d/y$m;->a()V

    :cond_5
    :goto_4
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    return-void
.end method

.method public E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0, p1}, Ld/j/d/f0;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public F(I)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    .line 1
    iget-object v1, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/e0;

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget v1, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1
    iget-object v2, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    iget-object v3, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/j/d/e0;

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, v2, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final H(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Ld/j/d/y;->r:Ld/j/d/r;

    invoke-virtual {v0}, Ld/j/d/r;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/j/d/y;->r:Ld/j/d/r;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Ld/j/d/r;->b(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public I()Ld/j/d/u;
    .locals 1

    iget-object v0, p0, Ld/j/d/y;->u:Ld/j/d/u;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    invoke-virtual {v0}, Ld/j/d/y;->I()Ld/j/d/u;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ld/j/d/y;->v:Ld/j/d/u;

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public K()Ld/j/d/v0;
    .locals 1

    iget-object v0, p0, Ld/j/d/y;->w:Ld/j/d/v0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    invoke-virtual {v0}, Ld/j/d/y;->K()Ld/j/d/v0;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ld/j/d/y;->x:Ld/j/d/v0;

    return-object v0
.end method

.method public L(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    invoke-virtual {p0, p1}, Ld/j/d/y;->e0(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public final N(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Ld/j/d/y;

    .line 1
    iget-object v0, p1, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->g()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Ld/j/d/y;->N(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public O(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result p1

    return p1
.end method

.method public P(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    .line 1
    iget-object v2, v1, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Ld/j/d/y;->P(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Ld/j/d/y;->D:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ld/j/d/y;->E:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public R(IZ)V
    .locals 4

    iget-object v0, p0, Ld/j/d/y;->q:Ld/j/d/v;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Ld/j/d/y;->p:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Ld/j/d/y;->p:I

    iget-object p1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    .line 1
    iget-object p2, p1, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Ld/j/d/f0;->b:Ljava/util/HashMap;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/j/d/e0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld/j/d/e0;->k()V

    goto :goto_1

    :cond_4
    iget-object p2, p1, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/j/d/e0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ld/j/d/e0;->k()V

    .line 2
    iget-object v2, v0, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ld/j/d/f0;->k(Ld/j/d/e0;)V

    goto :goto_2

    .line 4
    :cond_7
    invoke-virtual {p0}, Ld/j/d/y;->g0()V

    iget-boolean p1, p0, Ld/j/d/y;->C:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    if-eqz p1, :cond_8

    iget p2, p0, Ld/j/d/y;->p:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    check-cast p1, Ld/j/d/l$c;

    .line 5
    iget-object p1, p1, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {p1}, Ld/j/d/l;->supportInvalidateOptionsMenu()V

    .line 6
    iput-boolean v1, p0, Ld/j/d/y;->C:Z

    :cond_8
    return-void
.end method

.method public S(Landroidx/fragment/app/Fragment;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ld/j/d/f0;->h(Ljava/lang/String;)Ld/j/d/e0;

    move-result-object v1

    const/4 v8, 0x1

    if-nez v1, :cond_0

    new-instance v1, Ld/j/d/e0;

    iget-object v2, v0, Ld/j/d/y;->n:Ld/j/d/x;

    iget-object v3, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-direct {v1, v2, v3, v7}, Ld/j/d/e0;-><init>(Ld/j/d/x;Ld/j/d/f0;Landroidx/fragment/app/Fragment;)V

    .line 1
    iput v8, v1, Ld/j/d/e0;->e:I

    :cond_0
    move-object v9, v1

    .line 2
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 v10, 0x2

    if-eqz v1, :cond_1

    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_1

    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-ne v1, v10, :cond_1

    move/from16 v1, p2

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move/from16 v1, p2

    :goto_0
    invoke-virtual {v9}, Ld/j/d/e0;->d()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v12, 0x3

    const-string v13, "FragmentManager"

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-gt v1, v11, :cond_a

    if-ge v1, v11, :cond_2

    iget-object v1, v0, Ld/j/d/y;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p1}, Ld/j/d/y;->d(Landroidx/fragment/app/Fragment;)V

    :cond_2
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_5

    if-eq v1, v10, :cond_7

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_9

    goto/16 :goto_3

    :cond_3
    if-le v11, v2, :cond_4

    invoke-virtual {v9}, Ld/j/d/e0;->c()V

    :cond_4
    if-lez v11, :cond_5

    invoke-virtual {v9}, Ld/j/d/e0;->e()V

    :cond_5
    if-le v11, v2, :cond_6

    invoke-virtual {v9}, Ld/j/d/e0;->j()V

    :cond_6
    if-le v11, v8, :cond_7

    invoke-virtual {v9}, Ld/j/d/e0;->f()V

    :cond_7
    if-le v11, v10, :cond_8

    invoke-virtual {v9}, Ld/j/d/e0;->a()V

    :cond_8
    if-le v11, v4, :cond_9

    invoke-virtual {v9}, Ld/j/d/e0;->p()V

    :cond_9
    if-le v11, v3, :cond_19

    invoke-virtual {v9}, Ld/j/d/e0;->n()V

    goto/16 :goto_3

    :cond_a
    if-le v1, v11, :cond_19

    if-eqz v1, :cond_17

    if-eq v1, v8, :cond_15

    if-eq v1, v10, :cond_f

    if-eq v1, v4, :cond_d

    if-eq v1, v3, :cond_c

    const/4 v5, 0x7

    if-eq v1, v5, :cond_b

    goto/16 :goto_3

    :cond_b
    if-ge v11, v5, :cond_c

    invoke-virtual {v9}, Ld/j/d/e0;->l()V

    :cond_c
    if-ge v11, v3, :cond_d

    invoke-virtual {v9}, Ld/j/d/e0;->q()V

    :cond_d
    if-ge v11, v4, :cond_f

    invoke-static {v12}, Ld/j/d/y;->M(I)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, v0, Ld/j/d/y;->q:Ld/j/d/v;

    check-cast v1, Ld/j/d/l$c;

    .line 3
    iget-object v1, v1, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_f

    .line 4
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_f

    invoke-virtual {v9}, Ld/j/d/e0;->o()V

    :cond_f
    if-ge v11, v10, :cond_15

    const/4 v1, 0x0

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_14

    iget-object v4, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v3

    if-nez v3, :cond_14

    iget v3, v0, Ld/j/d/y;->p:I

    const/4 v4, 0x0

    if-le v3, v2, :cond_10

    iget-boolean v2, v0, Ld/j/d/y;->F:Z

    if-nez v2, :cond_10

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    iget v2, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_10

    iget-object v1, v0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 5
    iget-object v1, v1, Ld/j/d/v;->b:Landroid/content/Context;

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v7, v2}, Ld/b/k/r;->U(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Ld/j/d/p;

    move-result-object v1

    :cond_10
    iput v4, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    iget-object v14, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v15, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v2, v0, Ld/j/d/y;->m:Ld/j/d/n0$a;

    .line 7
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v6, Ld/g/i/a;

    invoke-direct {v6}, Ld/g/i/a;-><init>()V

    new-instance v3, Ld/j/d/m;

    invoke-direct {v3, v7}, Ld/j/d/m;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v3}, Ld/g/i/a;->b(Ld/g/i/a$a;)V

    move-object v5, v2

    check-cast v5, Ld/j/d/y$d;

    invoke-virtual {v5, v7, v6}, Ld/j/d/y$d;->b(Landroidx/fragment/app/Fragment;Ld/g/i/a;)V

    iget-object v2, v1, Ld/j/d/p;->a:Landroid/view/animation/Animation;

    if-eqz v2, :cond_11

    new-instance v2, Ld/j/d/q;

    iget-object v1, v1, Ld/j/d/p;->a:Landroid/view/animation/Animation;

    invoke-direct {v2, v1, v14, v15}, Ld/j/d/q;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    new-instance v1, Ld/j/d/n;

    invoke-direct {v1, v14, v7, v5, v6}, Ld/j/d/n;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ld/j/d/n0$a;Ld/g/i/a;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_11
    iget-object v4, v1, Ld/j/d/p;->b:Landroid/animation/Animator;

    invoke-virtual {v7, v4}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    new-instance v3, Ld/j/d/o;

    move-object v1, v3

    move-object v2, v14

    move-object v12, v3

    move-object v3, v15

    move-object v8, v4

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Ld/j/d/o;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Ld/j/d/n0$a;Ld/g/i/a;)V

    invoke-virtual {v8, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 8
    :cond_12
    :goto_1
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v10}, Ld/j/d/y;->M(I)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v14, v1, :cond_14

    return-void

    :cond_14
    iget-object v1, v0, Ld/j/d/y;->l:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-virtual {v9}, Ld/j/d/e0;->h()V

    :cond_15
    const/4 v1, 0x1

    if-ge v11, v1, :cond_17

    iget-object v2, v0, Ld/j/d/y;->l:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    const/4 v8, 0x1

    goto :goto_2

    :cond_16
    invoke-virtual {v9}, Ld/j/d/e0;->g()V

    :cond_17
    move v8, v11

    :goto_2
    if-gez v8, :cond_18

    invoke-virtual {v9}, Ld/j/d/e0;->i()V

    :cond_18
    move v11, v8

    :cond_19
    :goto_3
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v11, :cond_1b

    const/4 v1, 0x3

    invoke-static {v1}, Ld/j/d/y;->M(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iput v11, v7, Landroidx/fragment/app/Fragment;->mState:I

    :cond_1b
    return-void
.end method

.method public T()V
    .locals 2

    iget-object v0, p0, Ld/j/d/y;->q:Ld/j/d/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j/d/y;->D:Z

    iput-boolean v0, p0, Ld/j/d/y;->E:Z

    iget-object v1, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 1
    iput-boolean v0, v1, Ld/j/d/b0;->i:Z

    .line 2
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public U(Ld/j/d/e0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ld/j/d/y;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/j/d/y;->G:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {p1}, Ld/j/d/e0;->k()V

    :cond_1
    return-void
.end method

.method public V()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ld/j/d/y;->B(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ld/j/d/y;->A(Z)V

    iget-object v2, p0, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/j/d/y;

    move-result-object v2

    invoke-virtual {v2}, Ld/j/d/y;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Ld/j/d/y;->H:Ljava/util/ArrayList;

    iget-object v3, p0, Ld/j/d/y;->I:Ljava/util/ArrayList;

    .line 2
    iget-object v4, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iput-boolean v1, p0, Ld/j/d/y;->b:Z

    :try_start_0
    iget-object v1, p0, Ld/j/d/y;->H:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/j/d/y;->I:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Ld/j/d/y;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ld/j/d/y;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ld/j/d/y;->e()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ld/j/d/y;->h0()V

    invoke-virtual {p0}, Ld/j/d/y;->x()V

    iget-object v1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v1}, Ld/j/d/f0;->b()V

    move v1, v0

    :goto_2
    return v1
.end method

.method public W(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0, p1}, Ld/j/d/f0;->l(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Ld/j/d/y;->N(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Ld/j/d/y;->C:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p0, p1}, Ld/j/d/y;->e0(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public final X(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/j/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Ld/j/d/y;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/a;

    iget-boolean v3, v3, Ld/j/d/g0;->o:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Ld/j/d/y;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/a;

    iget-boolean v3, v3, Ld/j/d/g0;->o:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Ld/j/d/y;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Ld/j/d/y;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public Y(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Ld/j/d/a0;

    iget-object v2, v1, Ld/j/d/a0;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    .line 1
    iget-object v2, v2, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v2, v1, Ld/j/d/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "): "

    const/4 v5, 0x2

    const-string v6, "FragmentManager"

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ld/j/d/d0;

    if-eqz v12, :cond_2

    iget-object v3, v0, Ld/j/d/y;->L:Ld/j/d/b0;

    iget-object v7, v12, Ld/j/d/d0;->b:Ljava/lang/String;

    .line 3
    iget-object v3, v3, Ld/j/d/b0;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4

    .line 4
    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: re-attaching retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v7, Ld/j/d/e0;

    iget-object v8, v0, Ld/j/d/y;->n:Ld/j/d/x;

    iget-object v9, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-direct {v7, v8, v9, v3, v12}, Ld/j/d/e0;-><init>(Ld/j/d/x;Ld/j/d/f0;Landroidx/fragment/app/Fragment;Ld/j/d/d0;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ld/j/d/e0;

    iget-object v8, v0, Ld/j/d/y;->n:Ld/j/d/x;

    iget-object v9, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    iget-object v7, v0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 5
    iget-object v7, v7, Ld/j/d/v;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ld/j/d/y;->I()Ld/j/d/u;

    move-result-object v11

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ld/j/d/e0;-><init>(Ld/j/d/x;Ld/j/d/f0;Ljava/lang/ClassLoader;Ld/j/d/u;Ld/j/d/d0;)V

    .line 7
    :goto_1
    iget-object v3, v7, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 8
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "restoreSaveState: active ("

    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 9
    iget-object v3, v3, Ld/j/d/v;->b:Landroid/content/Context;

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v7, v3}, Ld/j/d/e0;->m(Ljava/lang/ClassLoader;)V

    iget-object v3, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v3, v7}, Ld/j/d/f0;->j(Ld/j/d/e0;)V

    iget v3, v0, Ld/j/d/y;->p:I

    .line 11
    iput v3, v7, Ld/j/d/e0;->e:I

    goto/16 :goto_0

    .line 12
    :cond_6
    iget-object v2, v0, Ld/j/d/y;->L:Ld/j/d/b0;

    if-eqz v2, :cond_16

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Ld/j/d/b0;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    iget-object v8, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    iget-object v9, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ld/j/d/f0;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding retained Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " that was not found in the set of active Fragments "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ld/j/d/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v8, v0, Ld/j/d/y;->L:Ld/j/d/b0;

    invoke-virtual {v8, v3}, Ld/j/d/b0;->d(Landroidx/fragment/app/Fragment;)V

    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    new-instance v8, Ld/j/d/e0;

    iget-object v9, v0, Ld/j/d/y;->n:Ld/j/d/x;

    iget-object v10, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-direct {v8, v9, v10, v3}, Ld/j/d/e0;-><init>(Ld/j/d/x;Ld/j/d/f0;Landroidx/fragment/app/Fragment;)V

    .line 15
    iput v7, v8, Ld/j/d/e0;->e:I

    .line 16
    invoke-virtual {v8}, Ld/j/d/e0;->k()V

    iput-boolean v7, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {v8}, Ld/j/d/e0;->k()V

    goto :goto_2

    :cond_9
    iget-object v2, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    iget-object v3, v1, Ld/j/d/a0;->b:Ljava/util/ArrayList;

    .line 17
    iget-object v8, v2, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ld/j/d/f0;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: added ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v2, v9}, Ld/j/d/f0;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v8, v3}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_c
    iget-object v2, v1, Ld/j/d/a0;->c:[Ld/j/d/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    iget-object v8, v1, Ld/j/d/a0;->c:[Ld/j/d/b;

    array-length v8, v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_4
    iget-object v8, v1, Ld/j/d/a0;->c:[Ld/j/d/b;

    array-length v9, v8

    if-ge v2, v9, :cond_13

    aget-object v8, v8, v2

    if-eqz v8, :cond_11

    .line 19
    new-instance v9, Ld/j/d/a;

    invoke-direct {v9, v0}, Ld/j/d/a;-><init>(Ld/j/d/y;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    iget-object v12, v8, Ld/j/d/b;->a:[I

    array-length v12, v12

    if-ge v10, v12, :cond_f

    new-instance v12, Ld/j/d/g0$a;

    invoke-direct {v12}, Ld/j/d/g0$a;-><init>()V

    iget-object v13, v8, Ld/j/d/b;->a:[I

    add-int/lit8 v14, v10, 0x1

    aget v10, v13, v10

    iput v10, v12, Ld/j/d/g0$a;->a:I

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Instantiate "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " op #"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " base fragment #"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Ld/j/d/b;->a:[I

    aget v13, v13, v14

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v10, v8, Ld/j/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 20
    iget-object v13, v0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v13, v10}, Ld/j/d/f0;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v10

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    .line 21
    :goto_6
    iput-object v10, v12, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-static {}, Ld/l/e$b;->values()[Ld/l/e$b;

    move-result-object v10

    iget-object v13, v8, Ld/j/d/b;->c:[I

    aget v13, v13, v11

    aget-object v10, v10, v13

    iput-object v10, v12, Ld/j/d/g0$a;->g:Ld/l/e$b;

    invoke-static {}, Ld/l/e$b;->values()[Ld/l/e$b;

    move-result-object v10

    iget-object v13, v8, Ld/j/d/b;->d:[I

    aget v13, v13, v11

    aget-object v10, v10, v13

    iput-object v10, v12, Ld/j/d/g0$a;->h:Ld/l/e$b;

    iget-object v10, v8, Ld/j/d/b;->a:[I

    add-int/lit8 v13, v14, 0x1

    aget v14, v10, v14

    iput v14, v12, Ld/j/d/g0$a;->c:I

    add-int/lit8 v15, v13, 0x1

    aget v13, v10, v13

    iput v13, v12, Ld/j/d/g0$a;->d:I

    add-int/lit8 v16, v15, 0x1

    aget v15, v10, v15

    iput v15, v12, Ld/j/d/g0$a;->e:I

    add-int/lit8 v17, v16, 0x1

    aget v10, v10, v16

    iput v10, v12, Ld/j/d/g0$a;->f:I

    iput v14, v9, Ld/j/d/g0;->b:I

    iput v13, v9, Ld/j/d/g0;->c:I

    iput v15, v9, Ld/j/d/g0;->d:I

    iput v10, v9, Ld/j/d/g0;->e:I

    invoke-virtual {v9, v12}, Ld/j/d/g0;->b(Ld/j/d/g0$a;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v17

    goto/16 :goto_5

    :cond_f
    iget v10, v8, Ld/j/d/b;->e:I

    iput v10, v9, Ld/j/d/g0;->f:I

    iget-object v10, v8, Ld/j/d/b;->f:Ljava/lang/String;

    iput-object v10, v9, Ld/j/d/g0;->h:Ljava/lang/String;

    iget v10, v8, Ld/j/d/b;->g:I

    iput v10, v9, Ld/j/d/a;->s:I

    iput-boolean v7, v9, Ld/j/d/g0;->g:Z

    iget v10, v8, Ld/j/d/b;->h:I

    iput v10, v9, Ld/j/d/g0;->i:I

    iget-object v10, v8, Ld/j/d/b;->i:Ljava/lang/CharSequence;

    iput-object v10, v9, Ld/j/d/g0;->j:Ljava/lang/CharSequence;

    iget v10, v8, Ld/j/d/b;->j:I

    iput v10, v9, Ld/j/d/g0;->k:I

    iget-object v10, v8, Ld/j/d/b;->k:Ljava/lang/CharSequence;

    iput-object v10, v9, Ld/j/d/g0;->l:Ljava/lang/CharSequence;

    iget-object v10, v8, Ld/j/d/b;->l:Ljava/util/ArrayList;

    iput-object v10, v9, Ld/j/d/g0;->m:Ljava/util/ArrayList;

    iget-object v10, v8, Ld/j/d/b;->m:Ljava/util/ArrayList;

    iput-object v10, v9, Ld/j/d/g0;->n:Ljava/util/ArrayList;

    iget-boolean v8, v8, Ld/j/d/b;->n:Z

    iput-boolean v8, v9, Ld/j/d/g0;->o:Z

    invoke-virtual {v9, v7}, Ld/j/d/a;->g(I)V

    .line 22
    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "restoreAllState: back stack #"

    const-string v10, " (index "

    invoke-static {v8, v2, v10}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v9, Ld/j/d/a;->s:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ld/j/d/t0;

    invoke-direct {v8, v6}, Ld/j/d/t0;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v8, "  "

    invoke-virtual {v9, v8, v10, v3}, Ld/j/d/a;->h(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    :cond_10
    iget-object v8, v0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_11
    const/4 v1, 0x0

    .line 23
    throw v1

    :cond_12
    const/4 v2, 0x0

    .line 24
    iput-object v2, v0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    :cond_13
    iget-object v2, v0, Ld/j/d/y;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Ld/j/d/a0;->d:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Ld/j/d/a0;->e:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v0, v2}, Ld/j/d/y;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, v0, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ld/j/d/y;->t(Landroidx/fragment/app/Fragment;)V

    :cond_14
    iget-object v2, v1, Ld/j/d/a0;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_15

    iget-object v4, v0, Ld/j/d/y;->j:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Ld/j/d/a0;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Ld/j/d/a0;->h:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Ld/j/d/y;->B:Ljava/util/ArrayDeque;

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 25
    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public Z()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ld/j/d/y;->f()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/u0;

    .line 2
    iget-boolean v3, v1, Ld/j/d/u0;->e:Z

    if-eqz v3, :cond_0

    iput-boolean v2, v1, Ld/j/d/u0;->e:Z

    invoke-virtual {v1}, Ld/j/d/u0;->c()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ld/j/d/y;->z()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/j/d/y;->B(Z)Z

    iput-boolean v0, p0, Ld/j/d/y;->D:Z

    iget-object v1, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 4
    iput-boolean v0, v1, Ld/j/d/b0;->i:Z

    .line 5
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/j/d/e0;

    if-eqz v4, :cond_2

    .line 7
    iget-object v6, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 8
    new-instance v7, Ld/j/d/d0;

    invoke-direct {v7, v6}, Ld/j/d/d0;-><init>(Landroidx/fragment/app/Fragment;)V

    iget-object v8, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget v8, v8, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_c

    iget-object v8, v7, Ld/j/d/d0;->m:Landroid/os/Bundle;

    if-nez v8, :cond_c

    .line 9
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v8}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v9, v4, Ld/j/d/e0;->a:Ld/j/d/x;

    iget-object v10, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v10, v8, v2}, Ld/j/d/x;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v1

    :cond_3
    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Ld/j/d/e0;->o()V

    :cond_4
    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v9, :cond_6

    if-nez v8, :cond_5

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_5
    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v10, "android:view_state"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_6
    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v9, :cond_8

    if-nez v8, :cond_7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    const-string v10, "android:view_registry_state"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v9, :cond_a

    if-nez v8, :cond_9

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_9
    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string v10, "android:user_visible_hint"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    :cond_a
    iput-object v8, v7, Ld/j/d/d0;->m:Landroid/os/Bundle;

    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v9, :cond_d

    if-nez v8, :cond_b

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Ld/j/d/d0;->m:Landroid/os/Bundle;

    :cond_b
    iget-object v8, v7, Ld/j/d/d0;->m:Landroid/os/Bundle;

    iget-object v9, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    const-string v10, "android:target_state"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v4, :cond_d

    iget-object v8, v7, Ld/j/d/d0;->m:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_c
    iget-object v4, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v4, v7, Ld/j/d/d0;->m:Landroid/os/Bundle;

    .line 11
    :cond_d
    :goto_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Ld/j/d/d0;->m:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 12
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "FragmentManager"

    const-string v2, "saveAllState: no fragments!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-object v1

    :cond_10
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    .line 13
    iget-object v4, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v6, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    monitor-exit v4

    move-object v6, v1

    goto :goto_4

    :cond_11
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding fragment ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_13
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_4
    iget-object v0, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    new-array v1, v0, [Ld/j/d/b;

    :goto_5
    if-ge v2, v0, :cond_15

    new-instance v4, Ld/j/d/b;

    iget-object v7, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/j/d/a;

    invoke-direct {v4, v7}, Ld/j/d/b;-><init>(Ld/j/d/a;)V

    aput-object v4, v1, v2

    invoke-static {v5}, Ld/j/d/y;->M(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "FragmentManager"

    const-string v7, "saveAllState: adding back stack #"

    const-string v8, ": "

    invoke-static {v7, v2, v8}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    new-instance v0, Ld/j/d/a0;

    invoke-direct {v0}, Ld/j/d/a0;-><init>()V

    iput-object v3, v0, Ld/j/d/a0;->a:Ljava/util/ArrayList;

    iput-object v6, v0, Ld/j/d/a0;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Ld/j/d/a0;->c:[Ld/j/d/b;

    iget-object v1, p0, Ld/j/d/y;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Ld/j/d/a0;->d:I

    iget-object v1, p0, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_16

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v1, v0, Ld/j/d/a0;->e:Ljava/lang/String;

    :cond_16
    iget-object v1, v0, Ld/j/d/a0;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/j/d/y;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Ld/j/d/a0;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/j/d/y;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ld/j/d/y;->B:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ld/j/d/a0;->h:Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 16
    :cond_17
    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method public a(Landroidx/fragment/app/Fragment;)Ld/j/d/e0;
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Ld/j/d/y;->h(Landroidx/fragment/app/Fragment;)Ld/j/d/e0;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    iget-object v1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v1, v0}, Ld/j/d/f0;->j(Ld/j/d/e0;)V

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v1, p1}, Ld/j/d/f0;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    invoke-virtual {p0, p1}, Ld/j/d/y;->N(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/j/d/y;->C:Z

    :cond_2
    return-object v0
.end method

.method public a0()V
    .locals 5

    iget-object v0, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/j/d/y;->K:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld/j/d/y;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 1
    iget-object v1, v1, Ld/j/d/v;->c:Landroid/os/Handler;

    .line 2
    iget-object v2, p0, Ld/j/d/y;->M:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 3
    iget-object v1, v1, Ld/j/d/v;->c:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Ld/j/d/y;->M:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Ld/j/d/y;->h0()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ld/j/d/v;Ld/j/d/r;Landroidx/fragment/app/Fragment;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/j/d/v<",
            "*>;",
            "Ld/j/d/r;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ld/j/d/y;->q:Ld/j/d/v;

    if-nez v0, :cond_10

    iput-object p1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    iput-object p2, p0, Ld/j/d/y;->r:Ld/j/d/r;

    iput-object p3, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    new-instance p2, Ld/j/d/y$h;

    invoke-direct {p2, p0, p3}, Ld/j/d/y$h;-><init>(Ld/j/d/y;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1
    :cond_0
    instance-of p2, p1, Ld/j/d/c0;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Ld/j/d/c0;

    .line 2
    :goto_0
    iget-object v0, p0, Ld/j/d/y;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_1
    iget-object p2, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Ld/j/d/y;->h0()V

    :cond_2
    instance-of p2, p1, Ld/a/c;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Ld/a/c;

    invoke-interface {p2}, Ld/a/c;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Ld/j/d/y;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    iget-object v0, p0, Ld/j/d/y;->g:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Ld/j/d/y;->h:Ld/a/b;

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {p2}, Ld/l/h;->getLifecycle()Ld/l/e;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ld/l/i;

    .line 5
    iget-object v2, v2, Ld/l/i;->b:Ld/l/e$b;

    .line 6
    sget-object v3, Ld/l/e$b;->a:Ld/l/e$b;

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v2, v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Ld/l/e;Ld/a/b;)V

    .line 7
    iget-object p2, v1, Ld/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_6
    :goto_1
    if-eqz p3, :cond_8

    .line 9
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    .line 10
    iget-object p1, p1, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 11
    iget-object p2, p1, Ld/j/d/b0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/j/d/b0;

    if-nez p2, :cond_7

    new-instance p2, Ld/j/d/b0;

    iget-boolean v0, p1, Ld/j/d/b0;->f:Z

    invoke-direct {p2, v0}, Ld/j/d/b0;-><init>(Z)V

    iget-object p1, p1, Ld/j/d/b0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_7
    iput-object p2, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    goto :goto_4

    :cond_8
    instance-of p2, p1, Ld/l/z;

    if-eqz p2, :cond_d

    check-cast p1, Ld/l/z;

    invoke-interface {p1}, Ld/l/z;->getViewModelStore()Ld/l/y;

    move-result-object p1

    .line 13
    sget-object p2, Ld/j/d/b0;->j:Ld/l/u;

    const-class v0, Ld/j/d/b0;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-static {v2, v1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v2, p1, Ld/l/y;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/l/s;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of p1, p2, Ld/l/x;

    if-eqz p1, :cond_b

    check-cast p2, Ld/l/x;

    invoke-virtual {p2, v2}, Ld/l/x;->b(Ld/l/s;)V

    goto :goto_3

    :cond_9
    instance-of v2, p2, Ld/l/v;

    if-eqz v2, :cond_a

    check-cast p2, Ld/l/v;

    invoke-virtual {p2, v1, v0}, Ld/l/v;->c(Ljava/lang/String;Ljava/lang/Class;)Ld/l/s;

    move-result-object p2

    goto :goto_2

    :cond_a
    check-cast p2, Ld/j/d/b0$a;

    invoke-virtual {p2, v0}, Ld/j/d/b0$a;->a(Ljava/lang/Class;)Ld/l/s;

    move-result-object p2

    :goto_2
    move-object v2, p2

    .line 17
    iget-object p1, p1, Ld/l/y;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/l/s;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ld/l/s;->a()V

    .line 18
    :cond_b
    :goto_3
    check-cast v2, Ld/j/d/b0;

    .line 19
    iput-object v2, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    goto :goto_4

    .line 20
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_d
    new-instance p1, Ld/j/d/b0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ld/j/d/b0;-><init>(Z)V

    iput-object p1, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    :goto_4
    iget-object p1, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    invoke-virtual {p0}, Ld/j/d/y;->Q()Z

    move-result p2

    .line 22
    iput-boolean p2, p1, Ld/j/d/b0;->i:Z

    .line 23
    iget-object p1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    iget-object p2, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 24
    iput-object p2, p1, Ld/j/d/f0;->c:Ld/j/d/b0;

    .line 25
    iget-object p1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    instance-of p2, p1, Ld/a/e/d;

    if-eqz p2, :cond_f

    check-cast p1, Ld/a/e/d;

    invoke-interface {p1}, Ld/a/e/d;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    if-eqz p3, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const-string v0, ":"

    invoke-static {p2, p3, v0}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_e
    const-string p2, ""

    :goto_5
    const-string p3, "FragmentManager:"

    invoke-static {p3, p2}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "StartActivityForResult"

    invoke-static {p2, p3}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ld/a/e/f/c;

    invoke-direct {v0}, Ld/a/e/f/c;-><init>()V

    new-instance v1, Ld/j/d/y$i;

    invoke-direct {v1, p0}, Ld/j/d/y$i;-><init>(Ld/j/d/y;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->c(Ljava/lang/String;Ld/a/e/f/a;Ld/a/e/b;)Ld/a/e/c;

    move-result-object p3

    iput-object p3, p0, Ld/j/d/y;->y:Ld/a/e/c;

    const-string p3, "StartIntentSenderForResult"

    invoke-static {p2, p3}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ld/j/d/y$j;

    invoke-direct {v0}, Ld/j/d/y$j;-><init>()V

    new-instance v1, Ld/j/d/y$a;

    invoke-direct {v1, p0}, Ld/j/d/y$a;-><init>(Ld/j/d/y;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->c(Ljava/lang/String;Ld/a/e/f/a;Ld/a/e/b;)Ld/a/e/c;

    move-result-object p3

    iput-object p3, p0, Ld/j/d/y;->z:Ld/a/e/c;

    const-string p3, "RequestPermissions"

    invoke-static {p2, p3}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ld/a/e/f/b;

    invoke-direct {p3}, Ld/a/e/f/b;-><init>()V

    new-instance v0, Ld/j/d/y$b;

    invoke-direct {v0, p0}, Ld/j/d/y$b;-><init>(Ld/j/d/y;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/ActivityResultRegistry;->c(Ljava/lang/String;Ld/a/e/f/a;Ld/a/e/b;)Ld/a/e/c;

    move-result-object p1

    iput-object p1, p0, Ld/j/d/y;->A:Ld/a/e/c;

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Ld/j/d/y;->H(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ld/j/d/s;

    if-eqz v0, :cond_0

    check-cast p1, Ld/j/d/s;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ld/j/d/s;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v1, p1}, Ld/j/d/f0;->a(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Ld/j/d/y;->N(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/j/d/y;->C:Z

    :cond_2
    return-void
.end method

.method public c0(Landroidx/fragment/app/Fragment;Ld/l/e$b;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/j/d/y;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Ld/j/d/v;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Ld/l/e$b;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final d(Landroidx/fragment/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Ld/j/d/y;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/g/i/a;

    invoke-virtual {v2}, Ld/g/i/a;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0, p1}, Ld/j/d/y;->i(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Ld/j/d/y;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/j/d/y;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Ld/j/d/v;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/j/d/y;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Ld/j/d/y;->t(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Ld/j/d/y;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Ld/j/d/y;->t(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j/d/y;->b:Z

    iget-object v0, p0, Ld/j/d/y;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ld/j/d/y;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-virtual {p0, p1}, Ld/j/d/y;->H(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    if-lez v1, :cond_1

    sget v1, Ld/j/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Ld/j/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    sget v1, Ld/j/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    :cond_1
    return-void
.end method

.method public final f()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ld/j/d/u0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v1}, Ld/j/d/f0;->f()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/j/d/e0;

    .line 1
    iget-object v2, v2, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ld/j/d/y;->K()Ld/j/d/v0;

    move-result-object v3

    invoke-static {v2, v3}, Ld/j/d/u0;->g(Landroid/view/ViewGroup;Ld/j/d/v0;)Ld/j/d/u0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public f0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method public g(Ld/j/d/a;ZZZ)V
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Ld/j/d/a;->j(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ld/j/d/a;->i()V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    iget p2, p0, Ld/j/d/y;->p:I

    if-lt p2, v8, :cond_1

    iget-object p2, p0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 1
    iget-object v0, p2, Ld/j/d/v;->b:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Ld/j/d/y;->r:Ld/j/d/r;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Ld/j/d/y;->m:Ld/j/d/n0$a;

    invoke-static/range {v0 .. v7}, Ld/j/d/n0;->q(Landroid/content/Context;Ld/j/d/r;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/j/d/n0$a;)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Ld/j/d/y;->p:I

    invoke-virtual {p0, p2, v8}, Ld/j/d/y;->R(IZ)V

    :cond_2
    iget-object p2, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {p2}, Ld/j/d/f0;->g()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v0}, Ld/j/d/a;->k(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    iget-object v2, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    iput v1, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final g0()V
    .locals 2

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/e0;

    invoke-virtual {p0, v1}, Ld/j/d/y;->U(Ld/j/d/e0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Landroidx/fragment/app/Fragment;)Ld/j/d/e0;
    .locals 3

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/j/d/f0;->h(Ljava/lang/String;)Ld/j/d/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ld/j/d/e0;

    iget-object v1, p0, Ld/j/d/y;->n:Ld/j/d/x;

    iget-object v2, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-direct {v0, v1, v2, p1}, Ld/j/d/e0;-><init>(Ld/j/d/x;Ld/j/d/f0;Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    .line 1
    iget-object p1, p1, Ld/j/d/v;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/j/d/e0;->m(Ljava/lang/ClassLoader;)V

    iget p1, p0, Ld/j/d/y;->p:I

    .line 3
    iput p1, v0, Ld/j/d/e0;->e:I

    return-object v0
.end method

.method public final h0()V
    .locals 4

    iget-object v0, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Ld/j/d/y;->h:Ld/a/b;

    .line 1
    iput-boolean v2, v1, Ld/a/b;->a:Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ld/j/d/y;->h:Ld/a/b;

    .line 3
    iget-object v1, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    .line 4
    iget-object v1, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Ld/j/d/y;->P(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_1
    iput-boolean v2, v0, Ld/a/b;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i(Landroidx/fragment/app/Fragment;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    iget-object v0, p0, Ld/j/d/y;->n:Ld/j/d/x;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ld/j/d/x;->n(Landroidx/fragment/app/Fragment;Z)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Ld/j/d/s0;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Ld/l/m;

    invoke-virtual {v2, v0}, Ld/l/m;->g(Ljava/lang/Object;)V

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method public j(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0, p1}, Ld/j/d/f0;->l(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Ld/j/d/y;->N(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Ld/j/d/y;->C:Z

    :cond_2
    invoke-virtual {p0, p1}, Ld/j/d/y;->e0(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public k(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Ld/j/d/y;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j/d/y;->D:Z

    iput-boolean v0, p0, Ld/j/d/y;->E:Z

    iget-object v1, p0, Ld/j/d/y;->L:Ld/j/d/b0;

    .line 1
    iput-boolean v0, v1, Ld/j/d/b0;->i:Z

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ld/j/d/y;->w(I)V

    return-void
.end method

.method public n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Ld/j/d/y;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v3}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Ld/j/d/y;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ld/j/d/y;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Ld/j/d/y;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Ld/j/d/y;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v0, p0, Ld/j/d/y;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public o()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j/d/y;->F:Z

    invoke-virtual {p0, v0}, Ld/j/d/y;->B(Z)Z

    invoke-virtual {p0}, Ld/j/d/y;->z()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ld/j/d/y;->w(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/j/d/y;->q:Ld/j/d/v;

    iput-object v0, p0, Ld/j/d/y;->r:Ld/j/d/r;

    iput-object v0, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Ld/j/d/y;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ld/j/d/y;->h:Ld/a/b;

    .line 1
    iget-object v1, v1, Ld/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/a;

    invoke-interface {v2}, Ld/a/a;->cancel()V

    goto :goto_0

    .line 2
    :cond_0
    iput-object v0, p0, Ld/j/d/y;->g:Landroidx/activity/OnBackPressedDispatcher;

    :cond_1
    iget-object v0, p0, Ld/j/d/y;->y:Ld/a/e/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ld/a/e/c;->b()V

    iget-object v0, p0, Ld/j/d/y;->z:Ld/a/e/c;

    invoke-virtual {v0}, Ld/a/e/c;->b()V

    iget-object v0, p0, Ld/j/d/y;->A:Ld/a/e/c;

    invoke-virtual {v0}, Ld/a/e/c;->b()V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q(Z)V
    .locals 2

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Ld/j/d/y;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public s(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Ld/j/d/y;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/j/d/y;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    :goto_0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/j/d/y;->q:Ld/j/d/v;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Z)V
    .locals 2

    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v(Landroid/view/Menu;)Z
    .locals 5

    iget v0, p0, Ld/j/d/y;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    invoke-virtual {v0}, Ld/j/d/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Ld/j/d/y;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final w(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Ld/j/d/y;->b:Z

    iget-object v2, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    .line 1
    iget-object v2, v2, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/j/d/e0;

    if-eqz v3, :cond_0

    .line 2
    iput p1, v3, Ld/j/d/e0;->e:I

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, v1}, Ld/j/d/y;->R(IZ)V

    invoke-virtual {p0}, Ld/j/d/y;->f()Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Ljava/util/HashSet;

    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/j/d/u0;

    invoke-virtual {v2}, Ld/j/d/u0;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Ld/j/d/y;->b:Z

    invoke-virtual {p0, v0}, Ld/j/d/y;->B(Z)Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Ld/j/d/y;->b:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final x()V
    .locals 1

    iget-boolean v0, p0, Ld/j/d/y;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j/d/y;->G:Z

    invoke-virtual {p0}, Ld/j/d/y;->g0()V

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    invoke-static {p1, v0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld/j/d/y;->c:Ld/j/d/f0;

    if-eqz v1, :cond_8

    const-string v2, "    "

    .line 1
    invoke-static {p1, v2}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Ld/j/d/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/j/d/e0;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, v4, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, v1, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    iget-object v3, v1, Ld/j/d/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4
    :cond_2
    iget-object p2, p0, Ld/j/d/y;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Ld/j/d/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    iget-object v2, p0, Ld/j/d/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/j/d/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ld/j/d/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v0, p3, v3}, Ld/j/d/a;->h(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/j/d/y;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    iget-object v1, p0, Ld/j/d/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/y$l;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ld/j/d/y;->q:Ld/j/d/v;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ld/j/d/y;->r:Ld/j/d/r;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ld/j/d/y;->s:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Ld/j/d/y;->p:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Ld/j/d/y;->D:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Ld/j/d/y;->E:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Ld/j/d/y;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Ld/j/d/y;->C:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Ld/j/d/y;->C:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    const/4 p1, 0x0

    .line 7
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Ld/j/d/y;->f()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/u0;

    invoke-virtual {v1}, Ld/j/d/u0;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method
