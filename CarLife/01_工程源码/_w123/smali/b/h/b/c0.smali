.class public abstract Lb/h/b/c0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/b/c0$j;,
        Lb/h/b/c0$k;,
        Lb/h/b/c0$m;,
        Lb/h/b/c0$l;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/b/m;",
            ">;"
        }
    .end annotation
.end field

.field public I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/b/c0$m;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lb/h/b/f0;

.field public K:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/b/c0$l;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Lb/h/b/j0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/b/m;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lb/h/b/a0;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Lb/a/d;

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
            "*>;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb/h/b/m;",
            "Ljava/util/HashSet<",
            "Lb/e/f/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Lb/h/b/r0$a;

.field public final n:Lb/h/b/b0;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lb/h/b/g0;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Lb/h/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/b/z<",
            "*>;"
        }
    .end annotation
.end field

.field public r:Lb/h/b/v;

.field public s:Lb/h/b/m;

.field public t:Lb/h/b/m;

.field public u:Lb/h/b/y;

.field public v:Lb/h/b/z0;

.field public w:Lb/a/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/g/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lb/a/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/g/c<",
            "Lb/a/g/f;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lb/a/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/g/c<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lb/h/b/c0$k;",
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

    iput-object v0, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    new-instance v0, Lb/h/b/j0;

    invoke-direct {v0}, Lb/h/b/j0;-><init>()V

    iput-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    new-instance v0, Lb/h/b/a0;

    invoke-direct {v0, p0}, Lb/h/b/a0;-><init>(Lb/h/b/c0;)V

    iput-object v0, p0, Lb/h/b/c0;->f:Lb/h/b/a0;

    new-instance v0, Lb/h/b/c0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/h/b/c0$c;-><init>(Lb/h/b/c0;Z)V

    iput-object v0, p0, Lb/h/b/c0;->h:Lb/a/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lb/h/b/c0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/h/b/c0;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/h/b/c0;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/h/b/c0;->l:Ljava/util/Map;

    new-instance v0, Lb/h/b/c0$d;

    invoke-direct {v0, p0}, Lb/h/b/c0$d;-><init>(Lb/h/b/c0;)V

    iput-object v0, p0, Lb/h/b/c0;->m:Lb/h/b/r0$a;

    new-instance v0, Lb/h/b/b0;

    invoke-direct {v0, p0}, Lb/h/b/b0;-><init>(Lb/h/b/c0;)V

    iput-object v0, p0, Lb/h/b/c0;->n:Lb/h/b/b0;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lb/h/b/c0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lb/h/b/c0;->p:I

    new-instance v0, Lb/h/b/c0$e;

    invoke-direct {v0, p0}, Lb/h/b/c0$e;-><init>(Lb/h/b/c0;)V

    iput-object v0, p0, Lb/h/b/c0;->u:Lb/h/b/y;

    new-instance v0, Lb/h/b/c0$f;

    invoke-direct {v0, p0}, Lb/h/b/c0$f;-><init>(Lb/h/b/c0;)V

    iput-object v0, p0, Lb/h/b/c0;->v:Lb/h/b/z0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lb/h/b/c0;->z:Ljava/util/ArrayDeque;

    new-instance v0, Lb/h/b/c0$g;

    invoke-direct {v0, p0}, Lb/h/b/c0$g;-><init>(Lb/h/b/c0;)V

    iput-object v0, p0, Lb/h/b/c0;->K:Ljava/lang/Runnable;

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

    iget-boolean v0, p0, Lb/h/b/c0;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lb/h/b/c0;->D:Z

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

    iget-object v1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 1
    iget-object v1, v1, Lb/h/b/z;->d:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Lb/h/b/c0;->Q()Z

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
    iget-object p1, p0, Lb/h/b/c0;->F:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/h/b/c0;->F:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/h/b/c0;->G:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/b/c0;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lb/h/b/c0;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Lb/h/b/c0;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Lb/h/b/c0;->b:Z

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

    invoke-virtual {p0, p1}, Lb/h/b/c0;->A(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/h/b/c0;->F:Ljava/util/ArrayList;

    iget-object v3, p0, Lb/h/b/c0;->G:Ljava/util/ArrayList;

    .line 1
    iget-object v4, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v4

    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v8, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/h/b/c0$l;

    invoke-interface {v8, v2, v3}, Lb/h/b/c0$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 2
    iget-object v2, v2, Lb/h/b/z;->d:Landroid/os/Handler;

    .line 3
    iget-object v3, p0, Lb/h/b/c0;->K:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-eqz v7, :cond_2

    .line 4
    iput-boolean p1, p0, Lb/h/b/c0;->b:Z

    :try_start_1
    iget-object v1, p0, Lb/h/b/c0;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/h/b/c0;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lb/h/b/c0;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lb/h/b/c0;->e()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lb/h/b/c0;->e()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lb/h/b/c0;->g0()V

    invoke-virtual {p0}, Lb/h/b/c0;->x()V

    iget-object p1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {p1}, Lb/h/b/j0;->b()V

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
            "Lb/h/b/a;",
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

    check-cast v5, Lb/h/b/a;

    iget-boolean v5, v5, Lb/h/b/k0;->o:Z

    iget-object v6, v0, Lb/h/b/c0;->H:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lb/h/b/c0;->H:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Lb/h/b/c0;->H:Ljava/util/ArrayList;

    iget-object v7, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v7}, Lb/h/b/j0;->i()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1
    iget-object v6, v0, Lb/h/b/c0;->t:Lb/h/b/m;

    move v8, v3

    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v8, v4, :cond_11

    .line 2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/h/b/a;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v15, 0x3

    if-nez v13, :cond_b

    iget-object v13, v0, Lb/h/b/c0;->H:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 3
    :goto_2
    iget-object v14, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_e

    iget-object v14, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/h/b/k0$a;

    iget v10, v14, Lb/h/b/k0$a;->a:I

    if-eq v10, v11, :cond_a

    const/4 v11, 0x2

    const/16 v3, 0x9

    if-eq v10, v11, :cond_3

    if-eq v10, v15, :cond_2

    const/4 v11, 0x6

    if-eq v10, v11, :cond_2

    const/4 v11, 0x7

    if-eq v10, v11, :cond_a

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v10, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    new-instance v11, Lb/h/b/k0$a;

    invoke-direct {v11, v3, v6}, Lb/h/b/k0$a;-><init>(ILb/h/b/m;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    iget-object v6, v14, Lb/h/b/k0$a;->b:Lb/h/b/m;

    goto/16 :goto_6

    :cond_2
    iget-object v10, v14, Lb/h/b/k0$a;->b:Lb/h/b/m;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v10, v14, Lb/h/b/k0$a;->b:Lb/h/b/m;

    if-ne v10, v6, :cond_8

    iget-object v6, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    new-instance v11, Lb/h/b/k0$a;

    invoke-direct {v11, v3, v10}, Lb/h/b/k0$a;-><init>(ILb/h/b/m;)V

    invoke-virtual {v6, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_3
    iget-object v10, v14, Lb/h/b/k0$a;->b:Lb/h/b/m;

    iget v11, v10, Lb/h/b/m;->y:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    const/16 v17, 0x0

    :goto_3
    if-ltz v15, :cond_7

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Lb/h/b/m;

    iget v2, v3, Lb/h/b/m;->y:I

    if-ne v2, v11, :cond_6

    if-ne v3, v10, :cond_4

    move/from16 v18, v11

    const/16 v17, 0x1

    goto :goto_5

    :cond_4
    if-ne v3, v6, :cond_5

    iget-object v2, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    new-instance v6, Lb/h/b/k0$a;

    move/from16 v18, v11

    const/16 v11, 0x9

    invoke-direct {v6, v11, v3}, Lb/h/b/k0$a;-><init>(ILb/h/b/m;)V

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    move/from16 v18, v11

    const/16 v11, 0x9

    :goto_4
    new-instance v2, Lb/h/b/k0$a;

    const/4 v11, 0x3

    invoke-direct {v2, v11, v3}, Lb/h/b/k0$a;-><init>(ILb/h/b/m;)V

    iget v11, v14, Lb/h/b/k0$a;->c:I

    iput v11, v2, Lb/h/b/k0$a;->c:I

    iget v11, v14, Lb/h/b/k0$a;->e:I

    iput v11, v2, Lb/h/b/k0$a;->e:I

    iget v11, v14, Lb/h/b/k0$a;->d:I

    iput v11, v2, Lb/h/b/k0$a;->d:I

    iget v11, v14, Lb/h/b/k0$a;->f:I

    iput v11, v2, Lb/h/b/k0$a;->f:I

    iget-object v11, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v7, v2

    goto :goto_5

    :cond_6
    move/from16 v18, v11

    :goto_5
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    move/from16 v11, v18

    const/16 v3, 0x9

    goto :goto_3

    :cond_7
    if-eqz v17, :cond_9

    iget-object v2, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_8
    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x1

    iput v2, v14, Lb/h/b/k0$a;->a:I

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    iget-object v3, v14, Lb/h/b/k0$a;->b:Lb/h/b/m;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v7, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v11, 0x1

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    .line 4
    iget-object v3, v0, Lb/h/b/c0;->H:Ljava/util/ArrayList;

    .line 5
    iget-object v7, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_8
    if-ltz v7, :cond_e

    iget-object v10, v12, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/h/b/k0$a;

    iget v11, v10, Lb/h/b/k0$a;->a:I

    if-eq v11, v2, :cond_d

    const/4 v2, 0x3

    if-eq v11, v2, :cond_c

    packed-switch v11, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object v11, v10, Lb/h/b/k0$a;->g:Lb/j/d$b;

    iput-object v11, v10, Lb/h/b/k0$a;->h:Lb/j/d$b;

    goto :goto_9

    :pswitch_1
    iget-object v6, v10, Lb/h/b/k0$a;->b:Lb/h/b/m;

    goto :goto_9

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    :pswitch_3
    iget-object v10, v10, Lb/h/b/k0$a;->b:Lb/h/b/m;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    const/4 v2, 0x3

    :pswitch_4
    iget-object v10, v10, Lb/h/b/k0$a;->b:Lb/h/b/m;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, -0x1

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    if-nez v9, :cond_10

    .line 6
    iget-boolean v2, v12, Lb/h/b/k0;->g:Z

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
    iget-object v2, v0, Lb/h/b/c0;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_14

    iget v2, v0, Lb/h/b/c0;->p:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    move/from16 v2, p3

    :goto_c
    if-ge v2, v4, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/a;

    iget-object v3, v3, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/h/b/k0$a;

    iget-object v5, v5, Lb/h/b/k0$a;->b:Lb/h/b/m;

    if-eqz v5, :cond_12

    iget-object v6, v5, Lb/h/b/m;->t:Lb/h/b/c0;

    if-eqz v6, :cond_12

    invoke-virtual {v0, v5}, Lb/h/b/c0;->h(Lb/h/b/m;)Lb/h/b/i0;

    move-result-object v5

    iget-object v6, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v6, v5}, Lb/h/b/j0;->j(Lb/h/b/i0;)V

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

    check-cast v3, Lb/h/b/a;

    move-object/from16 v5, p2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lb/h/b/a;->c(I)V

    add-int/lit8 v6, v4, -0x1

    if-ne v2, v6, :cond_15

    const/4 v6, 0x1

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v3, v6}, Lb/h/b/a;->i(Z)V

    goto :goto_10

    :cond_16
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lb/h/b/a;->c(I)V

    invoke-virtual {v3}, Lb/h/b/a;->h()V

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

    check-cast v6, Lb/h/b/a;

    if-eqz v2, :cond_19

    iget-object v7, v6, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_12
    if-ltz v7, :cond_1b

    iget-object v8, v6, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/h/b/k0$a;

    iget-object v8, v8, Lb/h/b/k0$a;->b:Lb/h/b/m;

    if-eqz v8, :cond_18

    invoke-virtual {v0, v8}, Lb/h/b/c0;->h(Lb/h/b/m;)Lb/h/b/i0;

    move-result-object v8

    invoke-virtual {v8}, Lb/h/b/i0;->k()V

    :cond_18
    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    :cond_19
    iget-object v6, v6, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/h/b/k0$a;

    iget-object v7, v7, Lb/h/b/k0$a;->b:Lb/h/b/m;

    if-eqz v7, :cond_1a

    invoke-virtual {v0, v7}, Lb/h/b/c0;->h(Lb/h/b/m;)Lb/h/b/i0;

    move-result-object v7

    invoke-virtual {v7}, Lb/h/b/i0;->k()V

    goto :goto_13

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1c
    iget v3, v0, Lb/h/b/c0;->p:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Lb/h/b/c0;->R(IZ)V

    .line 9
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_14
    if-ge v6, v4, :cond_1f

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/h/b/a;

    iget-object v7, v7, Lb/h/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/h/b/k0$a;

    iget-object v8, v8, Lb/h/b/k0$a;->b:Lb/h/b/m;

    if-eqz v8, :cond_1d

    iget-object v8, v8, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1d

    .line 10
    invoke-virtual/range {p0 .. p0}, Lb/h/b/c0;->K()Lb/h/b/z0;

    move-result-object v9

    invoke-static {v8, v9}, Lb/h/b/y0;->g(Landroid/view/ViewGroup;Lb/h/b/z0;)Lb/h/b/y0;

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

    check-cast v6, Lb/h/b/y0;

    .line 13
    iput-boolean v2, v6, Lb/h/b/y0;->d:Z

    .line 14
    invoke-virtual {v6}, Lb/h/b/y0;->h()V

    invoke-virtual {v6}, Lb/h/b/y0;->c()V

    goto :goto_16

    :cond_20
    move/from16 v2, p3

    :goto_17
    if-ge v2, v4, :cond_22

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/a;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    iget v6, v3, Lb/h/b/a;->r:I

    if-ltz v6, :cond_21

    const/4 v6, -0x1

    iput v6, v3, Lb/h/b/a;->r:I

    goto :goto_18

    :cond_21
    const/4 v6, -0x1

    .line 15
    :goto_18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    return-void

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
            "Lb/h/b/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/h/b/c0;->I:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lb/h/b/c0;->I:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/c0$m;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    iget-boolean v6, v3, Lb/h/b/c0$m;->a:Z

    if-nez v6, :cond_1

    iget-object v6, v3, Lb/h/b/c0$m;->b:Lb/h/b/a;

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

    iget-object v5, p0, Lb/h/b/c0;->I:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1
    :cond_1
    iget v6, v3, Lb/h/b/c0$m;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 2
    iget-object v6, v3, Lb/h/b/c0$m;->b:Lb/h/b/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Lb/h/b/a;->l(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p0, Lb/h/b/c0;->I:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    iget-boolean v6, v3, Lb/h/b/c0$m;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Lb/h/b/c0$m;->b:Lb/h/b/a;

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
    iget-object v5, v3, Lb/h/b/c0$m;->b:Lb/h/b/a;

    iget-object v6, v5, Lb/h/b/a;->p:Lb/h/b/c0;

    iget-boolean v3, v3, Lb/h/b/c0$m;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Lb/h/b/c0;->g(Lb/h/b/a;ZZZ)V

    goto :goto_4

    .line 4
    :cond_4
    invoke-virtual {v3}, Lb/h/b/c0$m;->a()V

    :cond_5
    :goto_4
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    return-void
.end method

.method public E(Ljava/lang/String;)Lb/h/b/m;
    .locals 1

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0, p1}, Lb/h/b/j0;->d(Ljava/lang/String;)Lb/h/b/m;

    move-result-object p1

    return-object p1
.end method

.method public F(I)Lb/h/b/m;
    .locals 4

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 1
    iget-object v1, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/h/b/m;

    if-eqz v2, :cond_0

    iget v3, v2, Lb/h/b/m;->x:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lb/h/b/j0;->b:Ljava/util/HashMap;

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

    check-cast v1, Lb/h/b/i0;

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 3
    iget v1, v2, Lb/h/b/m;->x:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public G(Ljava/lang/String;)Lb/h/b/m;
    .locals 4

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/h/b/m;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lb/h/b/m;->z:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lb/h/b/j0;->b:Ljava/util/HashMap;

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

    check-cast v1, Lb/h/b/i0;

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 3
    iget-object v1, v2, Lb/h/b/m;->z:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final H(Lb/h/b/m;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Lb/h/b/m;->y:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lb/h/b/c0;->r:Lb/h/b/v;

    invoke-virtual {v0}, Lb/h/b/v;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/h/b/c0;->r:Lb/h/b/v;

    iget p1, p1, Lb/h/b/m;->y:I

    invoke-virtual {v0, p1}, Lb/h/b/v;->c(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public I()Lb/h/b/y;
    .locals 1

    iget-object v0, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/h/b/m;->t:Lb/h/b/c0;

    invoke-virtual {v0}, Lb/h/b/c0;->I()Lb/h/b/y;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/h/b/c0;->u:Lb/h/b/y;

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/h/b/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public K()Lb/h/b/z0;
    .locals 1

    iget-object v0, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/h/b/m;->t:Lb/h/b/c0;

    invoke-virtual {v0}, Lb/h/b/c0;->K()Lb/h/b/z0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/h/b/c0;->v:Lb/h/b/z0;

    return-object v0
.end method

.method public L(Lb/h/b/m;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

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
    iget-boolean v0, p1, Lb/h/b/m;->A:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/h/b/m;->A:Z

    iget-boolean v1, p1, Lb/h/b/m;->L:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lb/h/b/m;->L:Z

    invoke-virtual {p0, p1}, Lb/h/b/c0;->d0(Lb/h/b/m;)V

    :cond_1
    return-void
.end method

.method public final N(Lb/h/b/m;)Z
    .locals 5

    iget-boolean v0, p1, Lb/h/b/m;->D:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lb/h/b/m;->E:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p1, p1, Lb/h/b/m;->v:Lb/h/b/c0;

    .line 1
    iget-object v0, p1, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->g()Ljava/util/List;

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

    check-cast v4, Lb/h/b/m;

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Lb/h/b/c0;->N(Lb/h/b/m;)Z

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

.method public O(Lb/h/b/m;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-boolean v1, p1, Lb/h/b/m;->E:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lb/h/b/m;->t:Lb/h/b/c0;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lb/h/b/m;->w:Lb/h/b/m;

    invoke-virtual {v1, p1}, Lb/h/b/c0;->O(Lb/h/b/m;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public P(Lb/h/b/m;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lb/h/b/m;->t:Lb/h/b/c0;

    .line 1
    iget-object v2, v1, Lb/h/b/c0;->t:Lb/h/b/m;

    .line 2
    invoke-virtual {p1, v2}, Lb/h/b/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lb/h/b/c0;->s:Lb/h/b/m;

    invoke-virtual {p0, p1}, Lb/h/b/c0;->P(Lb/h/b/m;)Z

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

    iget-boolean v0, p0, Lb/h/b/c0;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/h/b/c0;->C:Z

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

    iget-object v0, p0, Lb/h/b/c0;->q:Lb/h/b/z;

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

    iget p2, p0, Lb/h/b/c0;->p:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lb/h/b/c0;->p:I

    iget-object p1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 1
    iget-object p2, p1, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h/b/m;

    iget-object v1, p1, Lb/h/b/j0;->b:Ljava/util/HashMap;

    iget-object v0, v0, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h/b/i0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/h/b/i0;->k()V

    goto :goto_1

    :cond_4
    iget-object p2, p1, Lb/h/b/j0;->b:Ljava/util/HashMap;

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

    check-cast v0, Lb/h/b/i0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lb/h/b/i0;->k()V

    .line 2
    iget-object v2, v0, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 3
    iget-boolean v3, v2, Lb/h/b/m;->n:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lb/h/b/m;->B()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lb/h/b/j0;->k(Lb/h/b/i0;)V

    goto :goto_2

    .line 4
    :cond_7
    invoke-virtual {p0}, Lb/h/b/c0;->f0()V

    iget-boolean p1, p0, Lb/h/b/c0;->A:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    if-eqz p1, :cond_8

    iget p2, p0, Lb/h/b/c0;->p:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    invoke-virtual {p1}, Lb/h/b/z;->i()V

    iput-boolean v1, p0, Lb/h/b/c0;->A:Z

    :cond_8
    return-void
.end method

.method public S(Lb/h/b/m;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    iget-object v2, v7, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/h/b/j0;->h(Ljava/lang/String;)Lb/h/b/i0;

    move-result-object v1

    const/4 v8, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lb/h/b/i0;

    iget-object v2, v0, Lb/h/b/c0;->n:Lb/h/b/b0;

    iget-object v3, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-direct {v1, v2, v3, v7}, Lb/h/b/i0;-><init>(Lb/h/b/b0;Lb/h/b/j0;Lb/h/b/m;)V

    .line 1
    iput v8, v1, Lb/h/b/i0;->e:I

    :cond_0
    move-object v9, v1

    .line 2
    iget-boolean v1, v7, Lb/h/b/m;->o:Z

    const/4 v10, 0x2

    if-eqz v1, :cond_1

    iget-boolean v1, v7, Lb/h/b/m;->p:Z

    if-eqz v1, :cond_1

    iget v1, v7, Lb/h/b/m;->c:I

    if-ne v1, v10, :cond_1

    move/from16 v1, p2

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move/from16 v1, p2

    :goto_0
    invoke-virtual {v9}, Lb/h/b/i0;->d()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v1, v7, Lb/h/b/m;->c:I

    const/4 v12, 0x3

    const-string v13, "FragmentManager"

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-gt v1, v11, :cond_a

    if-ge v1, v11, :cond_2

    iget-object v1, v0, Lb/h/b/c0;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p1}, Lb/h/b/c0;->d(Lb/h/b/m;)V

    :cond_2
    iget v1, v7, Lb/h/b/m;->c:I

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_5

    if-eq v1, v10, :cond_7

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_9

    goto/16 :goto_3

    :cond_3
    if-le v11, v2, :cond_4

    invoke-virtual {v9}, Lb/h/b/i0;->c()V

    :cond_4
    if-lez v11, :cond_5

    invoke-virtual {v9}, Lb/h/b/i0;->e()V

    :cond_5
    if-le v11, v2, :cond_6

    invoke-virtual {v9}, Lb/h/b/i0;->j()V

    :cond_6
    if-le v11, v8, :cond_7

    invoke-virtual {v9}, Lb/h/b/i0;->f()V

    :cond_7
    if-le v11, v10, :cond_8

    invoke-virtual {v9}, Lb/h/b/i0;->a()V

    :cond_8
    if-le v11, v4, :cond_9

    invoke-virtual {v9}, Lb/h/b/i0;->p()V

    :cond_9
    if-le v11, v3, :cond_19

    invoke-virtual {v9}, Lb/h/b/i0;->n()V

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

    invoke-virtual {v9}, Lb/h/b/i0;->l()V

    :cond_c
    if-ge v11, v3, :cond_d

    invoke-virtual {v9}, Lb/h/b/i0;->q()V

    :cond_d
    if-ge v11, v4, :cond_f

    invoke-static {v12}, Lb/h/b/c0;->M(I)Z

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
    iget-object v1, v7, Lb/h/b/m;->H:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lb/h/b/c0;->q:Lb/h/b/z;

    invoke-virtual {v1, v7}, Lb/h/b/z;->g(Lb/h/b/m;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Lb/h/b/m;->e:Landroid/util/SparseArray;

    if-nez v1, :cond_f

    invoke-virtual {v9}, Lb/h/b/i0;->o()V

    :cond_f
    if-ge v11, v10, :cond_15

    const/4 v1, 0x0

    iget-object v3, v7, Lb/h/b/m;->H:Landroid/view/View;

    if-eqz v3, :cond_14

    iget-object v4, v7, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v3, v7, Lb/h/b/m;->H:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-virtual/range {p1 .. p1}, Lb/h/b/m;->D()Z

    move-result v3

    if-nez v3, :cond_14

    iget v3, v0, Lb/h/b/c0;->p:I

    const/4 v4, 0x0

    if-le v3, v2, :cond_10

    iget-boolean v2, v0, Lb/h/b/c0;->D:Z

    if-nez v2, :cond_10

    iget-object v2, v7, Lb/h/b/m;->H:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    iget v2, v7, Lb/h/b/m;->M:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_10

    iget-object v1, v0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 3
    iget-object v1, v1, Lb/h/b/z;->c:Landroid/content/Context;

    const/4 v2, 0x0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lb/h/b/m;->r()Z

    move-result v3

    invoke-static {v1, v7, v2, v3}, Lb/e/b/g;->J(Landroid/content/Context;Lb/h/b/m;ZZ)Lb/h/b/t;

    move-result-object v1

    :cond_10
    iput v4, v7, Lb/h/b/m;->M:F

    iget-object v14, v7, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    iget-object v15, v7, Lb/h/b/m;->H:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v2, v0, Lb/h/b/c0;->m:Lb/h/b/r0$a;

    .line 5
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v6, Lb/e/f/a;

    invoke-direct {v6}, Lb/e/f/a;-><init>()V

    new-instance v3, Lb/h/b/q;

    invoke-direct {v3, v7}, Lb/h/b/q;-><init>(Lb/h/b/m;)V

    invoke-virtual {v6, v3}, Lb/e/f/a;->b(Lb/e/f/a$a;)V

    move-object v5, v2

    check-cast v5, Lb/h/b/c0$d;

    invoke-virtual {v5, v7, v6}, Lb/h/b/c0$d;->b(Lb/h/b/m;Lb/e/f/a;)V

    iget-object v2, v1, Lb/h/b/t;->a:Landroid/view/animation/Animation;

    if-eqz v2, :cond_11

    new-instance v2, Lb/h/b/u;

    iget-object v1, v1, Lb/h/b/t;->a:Landroid/view/animation/Animation;

    invoke-direct {v2, v1, v14, v15}, Lb/h/b/u;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v1, v7, Lb/h/b/m;->H:Landroid/view/View;

    invoke-virtual {v7, v1}, Lb/h/b/m;->s0(Landroid/view/View;)V

    new-instance v1, Lb/h/b/r;

    invoke-direct {v1, v14, v7, v5, v6}, Lb/h/b/r;-><init>(Landroid/view/ViewGroup;Lb/h/b/m;Lb/h/b/r0$a;Lb/e/f/a;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v7, Lb/h/b/m;->H:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_11
    iget-object v4, v1, Lb/h/b/t;->b:Landroid/animation/Animator;

    invoke-virtual {v7, v4}, Lb/h/b/m;->u0(Landroid/animation/Animator;)V

    new-instance v3, Lb/h/b/s;

    move-object v1, v3

    move-object v2, v14

    move-object v12, v3

    move-object v3, v15

    move-object v8, v4

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lb/h/b/s;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lb/h/b/m;Lb/h/b/r0$a;Lb/e/f/a;)V

    invoke-virtual {v8, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v7, Lb/h/b/m;->H:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 6
    :cond_12
    :goto_1
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v10}, Lb/h/b/c0;->M(I)Z

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
    iget-object v1, v7, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    if-eq v14, v1, :cond_14

    return-void

    :cond_14
    iget-object v1, v0, Lb/h/b/c0;->l:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-virtual {v9}, Lb/h/b/i0;->h()V

    :cond_15
    const/4 v1, 0x1

    if-ge v11, v1, :cond_17

    iget-object v2, v0, Lb/h/b/c0;->l:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    const/4 v8, 0x1

    goto :goto_2

    :cond_16
    invoke-virtual {v9}, Lb/h/b/i0;->g()V

    :cond_17
    move v8, v11

    :goto_2
    if-gez v8, :cond_18

    invoke-virtual {v9}, Lb/h/b/i0;->i()V

    :cond_18
    move v11, v8

    :cond_19
    :goto_3
    iget v1, v7, Lb/h/b/m;->c:I

    if-eq v1, v11, :cond_1b

    const/4 v1, 0x3

    invoke-static {v1}, Lb/h/b/c0;->M(I)Z

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

    iget v2, v7, Lb/h/b/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iput v11, v7, Lb/h/b/m;->c:I

    :cond_1b
    return-void
.end method

.method public T()V
    .locals 2

    iget-object v0, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/h/b/c0;->B:Z

    iput-boolean v0, p0, Lb/h/b/c0;->C:Z

    iget-object v1, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    .line 1
    iput-boolean v0, v1, Lb/h/b/f0;->h:Z

    .line 2
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

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

    check-cast v1, Lb/h/b/m;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v1}, Lb/h/b/c0;->T()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public U()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lb/h/b/c0;->B(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lb/h/b/c0;->A(Z)V

    iget-object v2, p0, Lb/h/b/c0;->t:Lb/h/b/m;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lb/h/b/m;->e()Lb/h/b/c0;

    move-result-object v2

    invoke-virtual {v2}, Lb/h/b/c0;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lb/h/b/c0;->F:Ljava/util/ArrayList;

    iget-object v3, p0, Lb/h/b/c0;->G:Ljava/util/ArrayList;

    .line 2
    iget-object v4, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iput-boolean v1, p0, Lb/h/b/c0;->b:Z

    :try_start_0
    iget-object v1, p0, Lb/h/b/c0;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/h/b/c0;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lb/h/b/c0;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lb/h/b/c0;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/h/b/c0;->e()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lb/h/b/c0;->g0()V

    invoke-virtual {p0}, Lb/h/b/c0;->x()V

    iget-object v1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v1}, Lb/h/b/j0;->b()V

    move v1, v0

    :goto_2
    return v1
.end method

.method public V(Lb/h/b/m;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lb/h/b/m;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lb/h/b/m;->B()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Lb/h/b/m;->B:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0, p1}, Lb/h/b/j0;->l(Lb/h/b/m;)V

    invoke-virtual {p0, p1}, Lb/h/b/c0;->N(Lb/h/b/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lb/h/b/c0;->A:Z

    :cond_2
    iput-boolean v1, p1, Lb/h/b/m;->n:Z

    invoke-virtual {p0, p1}, Lb/h/b/c0;->d0(Lb/h/b/m;)V

    :cond_3
    return-void
.end method

.method public final W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/h/b/a;",
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

    invoke-virtual {p0, p1, p2}, Lb/h/b/c0;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/a;

    iget-boolean v3, v3, Lb/h/b/k0;->o:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Lb/h/b/c0;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

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

    check-cast v3, Lb/h/b/a;

    iget-boolean v3, v3, Lb/h/b/k0;->o:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lb/h/b/c0;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Lb/h/b/c0;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

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

.method public X(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Lb/h/b/e0;

    iget-object v2, v1, Lb/h/b/e0;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 1
    iget-object v2, v2, Lb/h/b/j0;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v2, v1, Lb/h/b/e0;->b:Ljava/util/ArrayList;

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

    check-cast v12, Lb/h/b/h0;

    if-eqz v12, :cond_2

    iget-object v3, v0, Lb/h/b/c0;->J:Lb/h/b/f0;

    iget-object v7, v12, Lb/h/b/h0;->c:Ljava/lang/String;

    .line 3
    iget-object v3, v3, Lb/h/b/f0;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/m;

    if-eqz v3, :cond_4

    .line 4
    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

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
    new-instance v7, Lb/h/b/i0;

    iget-object v8, v0, Lb/h/b/c0;->n:Lb/h/b/b0;

    iget-object v9, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-direct {v7, v8, v9, v3, v12}, Lb/h/b/i0;-><init>(Lb/h/b/b0;Lb/h/b/j0;Lb/h/b/m;Lb/h/b/h0;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lb/h/b/i0;

    iget-object v8, v0, Lb/h/b/c0;->n:Lb/h/b/b0;

    iget-object v9, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    iget-object v7, v0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 5
    iget-object v7, v7, Lb/h/b/z;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lb/h/b/c0;->I()Lb/h/b/y;

    move-result-object v11

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lb/h/b/i0;-><init>(Lb/h/b/b0;Lb/h/b/j0;Ljava/lang/ClassLoader;Lb/h/b/y;Lb/h/b/h0;)V

    .line 7
    :goto_1
    iget-object v3, v7, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 8
    iput-object v0, v3, Lb/h/b/m;->t:Lb/h/b/c0;

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "restoreSaveState: active ("

    invoke-static {v5}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 9
    iget-object v3, v3, Lb/h/b/z;->c:Landroid/content/Context;

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v7, v3}, Lb/h/b/i0;->m(Ljava/lang/ClassLoader;)V

    iget-object v3, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v3, v7}, Lb/h/b/j0;->j(Lb/h/b/i0;)V

    iget v3, v0, Lb/h/b/c0;->p:I

    .line 11
    iput v3, v7, Lb/h/b/i0;->e:I

    goto/16 :goto_0

    .line 12
    :cond_6
    iget-object v2, v0, Lb/h/b/c0;->J:Lb/h/b/f0;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lb/h/b/f0;->c:Ljava/util/HashMap;

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

    check-cast v3, Lb/h/b/m;

    iget-object v8, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    iget-object v9, v3, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lb/h/b/j0;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding retained Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " that was not found in the set of active Fragments "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lb/h/b/e0;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v8, v0, Lb/h/b/c0;->J:Lb/h/b/f0;

    invoke-virtual {v8, v3}, Lb/h/b/f0;->b(Lb/h/b/m;)V

    iput-object v0, v3, Lb/h/b/m;->t:Lb/h/b/c0;

    new-instance v8, Lb/h/b/i0;

    iget-object v9, v0, Lb/h/b/c0;->n:Lb/h/b/b0;

    iget-object v10, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-direct {v8, v9, v10, v3}, Lb/h/b/i0;-><init>(Lb/h/b/b0;Lb/h/b/j0;Lb/h/b/m;)V

    .line 15
    iput v7, v8, Lb/h/b/i0;->e:I

    .line 16
    invoke-virtual {v8}, Lb/h/b/i0;->k()V

    iput-boolean v7, v3, Lb/h/b/m;->n:Z

    invoke-virtual {v8}, Lb/h/b/i0;->k()V

    goto :goto_2

    :cond_9
    iget-object v2, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    iget-object v3, v1, Lb/h/b/e0;->c:Ljava/util/ArrayList;

    .line 17
    iget-object v8, v2, Lb/h/b/j0;->a:Ljava/util/ArrayList;

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

    invoke-virtual {v2, v8}, Lb/h/b/j0;->d(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

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
    invoke-virtual {v2, v9}, Lb/h/b/j0;->a(Lb/h/b/m;)V

    goto :goto_3

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v8, v3}, La/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_c
    iget-object v2, v1, Lb/h/b/e0;->d:[Lb/h/b/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    iget-object v8, v1, Lb/h/b/e0;->d:[Lb/h/b/b;

    array-length v8, v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_4
    iget-object v8, v1, Lb/h/b/e0;->d:[Lb/h/b/b;

    array-length v9, v8

    if-ge v2, v9, :cond_12

    aget-object v8, v8, v2

    .line 19
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lb/h/b/a;

    invoke-direct {v9, v0}, Lb/h/b/a;-><init>(Lb/h/b/c0;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    iget-object v12, v8, Lb/h/b/b;->b:[I

    array-length v13, v12

    if-ge v10, v13, :cond_f

    new-instance v13, Lb/h/b/k0$a;

    invoke-direct {v13}, Lb/h/b/k0$a;-><init>()V

    add-int/lit8 v14, v10, 0x1

    aget v10, v12, v10

    iput v10, v13, Lb/h/b/k0$a;->a:I

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiate "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " op #"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " base fragment #"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lb/h/b/b;->b:[I

    aget v12, v12, v14

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v10, v8, Lb/h/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 20
    iget-object v12, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v12, v10}, Lb/h/b/j0;->d(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v10

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    .line 21
    :goto_6
    iput-object v10, v13, Lb/h/b/k0$a;->b:Lb/h/b/m;

    invoke-static {}, Lb/j/d$b;->values()[Lb/j/d$b;

    move-result-object v10

    iget-object v12, v8, Lb/h/b/b;->d:[I

    aget v12, v12, v11

    aget-object v10, v10, v12

    iput-object v10, v13, Lb/h/b/k0$a;->g:Lb/j/d$b;

    invoke-static {}, Lb/j/d$b;->values()[Lb/j/d$b;

    move-result-object v10

    iget-object v12, v8, Lb/h/b/b;->e:[I

    aget v12, v12, v11

    aget-object v10, v10, v12

    iput-object v10, v13, Lb/h/b/k0$a;->h:Lb/j/d$b;

    iget-object v10, v8, Lb/h/b/b;->b:[I

    add-int/lit8 v12, v14, 0x1

    aget v14, v10, v14

    iput v14, v13, Lb/h/b/k0$a;->c:I

    add-int/lit8 v15, v12, 0x1

    aget v12, v10, v12

    iput v12, v13, Lb/h/b/k0$a;->d:I

    add-int/lit8 v16, v15, 0x1

    aget v15, v10, v15

    iput v15, v13, Lb/h/b/k0$a;->e:I

    add-int/lit8 v17, v16, 0x1

    aget v10, v10, v16

    iput v10, v13, Lb/h/b/k0$a;->f:I

    iput v14, v9, Lb/h/b/k0;->b:I

    iput v12, v9, Lb/h/b/k0;->c:I

    iput v15, v9, Lb/h/b/k0;->d:I

    iput v10, v9, Lb/h/b/k0;->e:I

    invoke-virtual {v9, v13}, Lb/h/b/k0;->b(Lb/h/b/k0$a;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v17

    goto/16 :goto_5

    :cond_f
    iget v10, v8, Lb/h/b/b;->f:I

    iput v10, v9, Lb/h/b/k0;->f:I

    iget-object v10, v8, Lb/h/b/b;->g:Ljava/lang/String;

    iput-object v10, v9, Lb/h/b/k0;->h:Ljava/lang/String;

    iget v10, v8, Lb/h/b/b;->h:I

    iput v10, v9, Lb/h/b/a;->r:I

    iput-boolean v7, v9, Lb/h/b/k0;->g:Z

    iget v10, v8, Lb/h/b/b;->i:I

    iput v10, v9, Lb/h/b/k0;->i:I

    iget-object v10, v8, Lb/h/b/b;->j:Ljava/lang/CharSequence;

    iput-object v10, v9, Lb/h/b/k0;->j:Ljava/lang/CharSequence;

    iget v10, v8, Lb/h/b/b;->k:I

    iput v10, v9, Lb/h/b/k0;->k:I

    iget-object v10, v8, Lb/h/b/b;->l:Ljava/lang/CharSequence;

    iput-object v10, v9, Lb/h/b/k0;->l:Ljava/lang/CharSequence;

    iget-object v10, v8, Lb/h/b/b;->m:Ljava/util/ArrayList;

    iput-object v10, v9, Lb/h/b/k0;->m:Ljava/util/ArrayList;

    iget-object v10, v8, Lb/h/b/b;->n:Ljava/util/ArrayList;

    iput-object v10, v9, Lb/h/b/k0;->n:Ljava/util/ArrayList;

    iget-boolean v8, v8, Lb/h/b/b;->o:Z

    iput-boolean v8, v9, Lb/h/b/k0;->o:Z

    invoke-virtual {v9, v7}, Lb/h/b/a;->c(I)V

    .line 22
    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "restoreAllState: back stack #"

    const-string v10, " (index "

    invoke-static {v8, v2, v10}, La/b/a/a/a;->g(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v9, Lb/h/b/a;->r:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lb/h/b/x0;

    invoke-direct {v8, v6}, Lb/h/b/x0;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v8, "  "

    invoke-virtual {v9, v8, v10, v3}, Lb/h/b/a;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    :cond_10
    iget-object v8, v0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_11
    const/4 v2, 0x0

    iput-object v2, v0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    :cond_12
    iget-object v2, v0, Lb/h/b/c0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Lb/h/b/e0;->e:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lb/h/b/e0;->f:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v0, v2}, Lb/h/b/c0;->E(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v2

    iput-object v2, v0, Lb/h/b/c0;->t:Lb/h/b/m;

    invoke-virtual {v0, v2}, Lb/h/b/c0;->t(Lb/h/b/m;)V

    :cond_13
    iget-object v2, v1, Lb/h/b/e0;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    iget-object v4, v1, Lb/h/b/e0;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, v0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 23
    iget-object v5, v5, Lb/h/b/z;->c:Landroid/content/Context;

    .line 24
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v5, v0, Lb/h/b/c0;->j:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Lb/h/b/e0;->i:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lb/h/b/c0;->z:Ljava/util/ArrayDeque;

    return-void
.end method

.method public Y()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lb/h/b/c0;->f()Ljava/util/Set;

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

    check-cast v1, Lb/h/b/y0;

    .line 2
    iget-boolean v3, v1, Lb/h/b/y0;->e:Z

    if-eqz v3, :cond_0

    iput-boolean v2, v1, Lb/h/b/y0;->e:Z

    invoke-virtual {v1}, Lb/h/b/y0;->c()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lb/h/b/c0;->z()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/h/b/c0;->B(Z)Z

    iput-boolean v0, p0, Lb/h/b/c0;->B:Z

    iget-object v1, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    .line 4
    iput-boolean v0, v1, Lb/h/b/f0;->h:Z

    .line 5
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lb/h/b/j0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Lb/h/b/j0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/i0;

    if-eqz v3, :cond_2

    .line 7
    iget-object v6, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 8
    new-instance v7, Lb/h/b/h0;

    invoke-direct {v7, v6}, Lb/h/b/h0;-><init>(Lb/h/b/m;)V

    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget v9, v8, Lb/h/b/m;->c:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_d

    iget-object v9, v7, Lb/h/b/h0;->n:Landroid/os/Bundle;

    if-nez v9, :cond_d

    .line 9
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v9, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 10
    invoke-virtual {v9, v8}, Lb/h/b/m;->f0(Landroid/os/Bundle;)V

    iget-object v10, v9, Lb/h/b/m;->T:Lb/m/b;

    invoke-virtual {v10, v8}, Lb/m/b;->b(Landroid/os/Bundle;)V

    iget-object v9, v9, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v9}, Lb/h/b/c0;->Y()Landroid/os/Parcelable;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v10, "android:support:fragments"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    :cond_3
    iget-object v9, v3, Lb/h/b/i0;->a:Lb/h/b/b0;

    iget-object v10, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    invoke-virtual {v9, v10, v8, v2}, Lb/h/b/b0;->j(Lb/h/b/m;Landroid/os/Bundle;Z)V

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v8

    :goto_2
    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-object v8, v8, Lb/h/b/m;->H:Landroid/view/View;

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lb/h/b/i0;->o()V

    :cond_5
    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-object v8, v8, Lb/h/b/m;->e:Landroid/util/SparseArray;

    if-eqz v8, :cond_7

    if-nez v4, :cond_6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_6
    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-object v8, v8, Lb/h/b/m;->e:Landroid/util/SparseArray;

    const-string v9, "android:view_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_7
    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-object v8, v8, Lb/h/b/m;->f:Landroid/os/Bundle;

    if-eqz v8, :cond_9

    if-nez v4, :cond_8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_8
    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-object v8, v8, Lb/h/b/m;->f:Landroid/os/Bundle;

    const-string v9, "android:view_registry_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-boolean v8, v8, Lb/h/b/m;->J:Z

    if-nez v8, :cond_b

    if-nez v4, :cond_a

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_a
    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-boolean v8, v8, Lb/h/b/m;->J:Z

    const-string v9, "android:user_visible_hint"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    :cond_b
    iput-object v4, v7, Lb/h/b/h0;->n:Landroid/os/Bundle;

    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-object v8, v8, Lb/h/b/m;->j:Ljava/lang/String;

    if-eqz v8, :cond_e

    if-nez v4, :cond_c

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v7, Lb/h/b/h0;->n:Landroid/os/Bundle;

    :cond_c
    iget-object v4, v7, Lb/h/b/h0;->n:Landroid/os/Bundle;

    iget-object v8, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget-object v8, v8, Lb/h/b/m;->j:Ljava/lang/String;

    const-string v9, "android:target_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lb/h/b/i0;->c:Lb/h/b/m;

    iget v3, v3, Lb/h/b/m;->k:I

    if-eqz v3, :cond_e

    iget-object v4, v7, Lb/h/b/h0;->n:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_d
    iget-object v3, v8, Lb/h/b/m;->d:Landroid/os/Bundle;

    iput-object v3, v7, Lb/h/b/h0;->n:Landroid/os/Bundle;

    .line 13
    :cond_e
    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lb/h/b/h0;->n:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 14
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-object v4

    :cond_11
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 15
    iget-object v3, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v6, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    monitor-exit v3

    move-object v6, v4

    goto :goto_5

    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/h/b/m;

    iget-object v8, v7, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding fragment ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_14
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_5
    iget-object v0, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-array v4, v0, [Lb/h/b/b;

    :goto_6
    if-ge v2, v0, :cond_16

    new-instance v3, Lb/h/b/b;

    iget-object v7, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/h/b/a;

    invoke-direct {v3, v7}, Lb/h/b/b;-><init>(Lb/h/b/a;)V

    aput-object v3, v4, v2

    invoke-static {v5}, Lb/h/b/c0;->M(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "FragmentManager"

    const-string v7, "saveAllState: adding back stack #"

    const-string v8, ": "

    invoke-static {v7, v2, v8}, La/b/a/a/a;->g(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    new-instance v0, Lb/h/b/e0;

    invoke-direct {v0}, Lb/h/b/e0;-><init>()V

    iput-object v1, v0, Lb/h/b/e0;->b:Ljava/util/ArrayList;

    iput-object v6, v0, Lb/h/b/e0;->c:Ljava/util/ArrayList;

    iput-object v4, v0, Lb/h/b/e0;->d:[Lb/h/b/b;

    iget-object v1, p0, Lb/h/b/c0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Lb/h/b/e0;->e:I

    iget-object v1, p0, Lb/h/b/c0;->t:Lb/h/b/m;

    if-eqz v1, :cond_17

    iget-object v1, v1, Lb/h/b/m;->g:Ljava/lang/String;

    iput-object v1, v0, Lb/h/b/e0;->f:Ljava/lang/String;

    :cond_17
    iget-object v1, v0, Lb/h/b/e0;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/h/b/c0;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lb/h/b/e0;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/h/b/c0;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lb/h/b/c0;->z:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lb/h/b/e0;->i:Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public Z()V
    .locals 5

    iget-object v0, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/h/b/c0;->I:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 1
    iget-object v1, v1, Lb/h/b/z;->d:Landroid/os/Handler;

    .line 2
    iget-object v2, p0, Lb/h/b/c0;->K:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 3
    iget-object v1, v1, Lb/h/b/z;->d:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Lb/h/b/c0;->K:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lb/h/b/c0;->g0()V

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

.method public a(Lb/h/b/m;)Lb/h/b/i0;
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

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
    invoke-virtual {p0, p1}, Lb/h/b/c0;->h(Lb/h/b/m;)Lb/h/b/i0;

    move-result-object v0

    iput-object p0, p1, Lb/h/b/m;->t:Lb/h/b/c0;

    iget-object v1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v1, v0}, Lb/h/b/j0;->j(Lb/h/b/i0;)V

    iget-boolean v1, p1, Lb/h/b/m;->B:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v1, p1}, Lb/h/b/j0;->a(Lb/h/b/m;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lb/h/b/m;->n:Z

    iget-object v2, p1, Lb/h/b/m;->H:Landroid/view/View;

    if-nez v2, :cond_1

    iput-boolean v1, p1, Lb/h/b/m;->L:Z

    :cond_1
    invoke-virtual {p0, p1}, Lb/h/b/c0;->N(Lb/h/b/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/b/c0;->A:Z

    :cond_2
    return-object v0
.end method

.method public a0(Lb/h/b/m;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lb/h/b/c0;->H(Lb/h/b/m;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lb/h/b/w;

    if-eqz v0, :cond_0

    check-cast p1, Lb/h/b/w;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lb/h/b/w;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public b(Lb/h/b/z;Lb/h/b/v;Lb/h/b/m;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/b/z<",
            "*>;",
            "Lb/h/b/v;",
            "Lb/h/b/m;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    if-nez v0, :cond_f

    iput-object p1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    iput-object p2, p0, Lb/h/b/c0;->r:Lb/h/b/v;

    iput-object p3, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    if-eqz p3, :cond_0

    new-instance p2, Lb/h/b/c0$h;

    invoke-direct {p2, p0, p3}, Lb/h/b/c0$h;-><init>(Lb/h/b/c0;Lb/h/b/m;)V

    goto :goto_0

    .line 1
    :cond_0
    instance-of p2, p1, Lb/h/b/g0;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lb/h/b/g0;

    .line 2
    :goto_0
    iget-object v0, p0, Lb/h/b/c0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_1
    iget-object p2, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lb/h/b/c0;->g0()V

    :cond_2
    instance-of p2, p1, Lb/a/e;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lb/a/e;

    invoke-interface {p2}, Lb/a/e;->j()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lb/h/b/c0;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    iget-object v1, p0, Lb/h/b/c0;->h:Lb/a/d;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lb/j/g;->b()Lb/j/d;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lb/j/h;

    .line 5
    iget-object v2, v2, Lb/j/h;->b:Lb/j/d$b;

    .line 6
    sget-object v3, Lb/j/d$b;->b:Lb/j/d$b;

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v2, v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Lb/j/d;Lb/a/d;)V

    .line 7
    iget-object p2, v1, Lb/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    if-eqz p3, :cond_7

    .line 8
    iget-object p1, p3, Lb/h/b/m;->t:Lb/h/b/c0;

    .line 9
    iget-object p1, p1, Lb/h/b/c0;->J:Lb/h/b/f0;

    .line 10
    iget-object p2, p1, Lb/h/b/f0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/h/b/f0;

    if-nez p2, :cond_6

    new-instance p2, Lb/h/b/f0;

    iget-boolean v0, p1, Lb/h/b/f0;->f:Z

    invoke-direct {p2, v0}, Lb/h/b/f0;-><init>(Z)V

    iget-object p1, p1, Lb/h/b/f0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_6
    iput-object p2, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    goto :goto_4

    :cond_7
    instance-of p2, p1, Lb/j/u;

    if-eqz p2, :cond_c

    check-cast p1, Lb/j/u;

    invoke-interface {p1}, Lb/j/u;->a0()Lb/j/t;

    move-result-object p1

    .line 12
    sget-object p2, Lb/h/b/f0;->b:Lb/j/q;

    const-class v0, Lb/h/b/f0;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-static {v2, v1}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v2, p1, Lb/j/t;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/j/p;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    instance-of p1, p2, Lb/j/s;

    if-eqz p1, :cond_a

    check-cast p2, Lb/j/s;

    goto :goto_3

    :cond_8
    instance-of v2, p2, Lb/j/r;

    if-eqz v2, :cond_9

    check-cast p2, Lb/j/r;

    invoke-virtual {p2, v1, v0}, Lb/j/r;->a(Ljava/lang/String;Ljava/lang/Class;)Lb/j/p;

    move-result-object p2

    goto :goto_2

    :cond_9
    check-cast p2, Lb/h/b/f0$a;

    invoke-virtual {p2, v0}, Lb/h/b/f0$a;->a(Ljava/lang/Class;)Lb/j/p;

    move-result-object p2

    :goto_2
    move-object v2, p2

    .line 16
    iget-object p1, p1, Lb/j/t;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/j/p;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lb/j/p;->a()V

    .line 17
    :cond_a
    :goto_3
    check-cast v2, Lb/h/b/f0;

    .line 18
    iput-object v2, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    goto :goto_4

    .line 19
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_c
    new-instance p1, Lb/h/b/f0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lb/h/b/f0;-><init>(Z)V

    iput-object p1, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    :goto_4
    iget-object p1, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    invoke-virtual {p0}, Lb/h/b/c0;->Q()Z

    move-result p2

    .line 21
    iput-boolean p2, p1, Lb/h/b/f0;->h:Z

    .line 22
    iget-object p1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    iget-object p2, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    .line 23
    iput-object p2, p1, Lb/h/b/j0;->c:Lb/h/b/f0;

    .line 24
    iget-object p1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    instance-of p2, p1, Lb/a/g/e;

    if-eqz p2, :cond_e

    check-cast p1, Lb/a/g/e;

    invoke-interface {p1}, Lb/a/g/e;->y()Lb/a/g/d;

    move-result-object p1

    if-eqz p3, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_d
    const-string p2, ""

    :goto_5
    const-string p3, "FragmentManager:"

    invoke-static {p3, p2}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "StartActivityForResult"

    invoke-static {p2, p3}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lb/a/g/g/c;

    invoke-direct {v0}, Lb/a/g/g/c;-><init>()V

    new-instance v1, Lb/h/b/c0$i;

    invoke-direct {v1, p0}, Lb/h/b/c0$i;-><init>(Lb/h/b/c0;)V

    invoke-virtual {p1, p3, v0, v1}, Lb/a/g/d;->b(Ljava/lang/String;Lb/a/g/g/a;Lb/a/g/b;)Lb/a/g/c;

    move-result-object p3

    iput-object p3, p0, Lb/h/b/c0;->w:Lb/a/g/c;

    const-string p3, "StartIntentSenderForResult"

    invoke-static {p2, p3}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lb/h/b/c0$j;

    invoke-direct {v0}, Lb/h/b/c0$j;-><init>()V

    new-instance v1, Lb/h/b/c0$a;

    invoke-direct {v1, p0}, Lb/h/b/c0$a;-><init>(Lb/h/b/c0;)V

    invoke-virtual {p1, p3, v0, v1}, Lb/a/g/d;->b(Ljava/lang/String;Lb/a/g/g/a;Lb/a/g/b;)Lb/a/g/c;

    move-result-object p3

    iput-object p3, p0, Lb/h/b/c0;->x:Lb/a/g/c;

    const-string p3, "RequestPermissions"

    invoke-static {p2, p3}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lb/a/g/g/b;

    invoke-direct {p3}, Lb/a/g/g/b;-><init>()V

    new-instance v0, Lb/h/b/c0$b;

    invoke-direct {v0, p0}, Lb/h/b/c0$b;-><init>(Lb/h/b/c0;)V

    invoke-virtual {p1, p2, p3, v0}, Lb/a/g/d;->b(Ljava/lang/String;Lb/a/g/g/a;Lb/a/g/b;)Lb/a/g/c;

    move-result-object p1

    iput-object p1, p0, Lb/h/b/c0;->y:Lb/a/g/c;

    :cond_e
    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(Lb/h/b/m;Lb/j/d$b;)V
    .locals 2

    iget-object v0, p1, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/h/b/c0;->E(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/b/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb/h/b/m;->t:Lb/h/b/c0;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Lb/h/b/m;->P:Lb/j/d$b;

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

.method public c(Lb/h/b/m;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

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
    iget-boolean v1, p1, Lb/h/b/m;->B:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Lb/h/b/m;->B:Z

    iget-boolean v1, p1, Lb/h/b/m;->m:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v1, p1}, Lb/h/b/j0;->a(Lb/h/b/m;)V

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

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
    invoke-virtual {p0, p1}, Lb/h/b/c0;->N(Lb/h/b/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/b/c0;->A:Z

    :cond_2
    return-void
.end method

.method public c0(Lb/h/b/m;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/h/b/c0;->E(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/b/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lb/h/b/m;->t:Lb/h/b/c0;

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
    iget-object v0, p0, Lb/h/b/c0;->t:Lb/h/b/m;

    iput-object p1, p0, Lb/h/b/c0;->t:Lb/h/b/m;

    invoke-virtual {p0, v0}, Lb/h/b/c0;->t(Lb/h/b/m;)V

    iget-object p1, p0, Lb/h/b/c0;->t:Lb/h/b/m;

    invoke-virtual {p0, p1}, Lb/h/b/c0;->t(Lb/h/b/m;)V

    return-void
.end method

.method public final d(Lb/h/b/m;)V
    .locals 3

    iget-object v0, p0, Lb/h/b/c0;->l:Ljava/util/Map;

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

    check-cast v2, Lb/e/f/a;

    invoke-virtual {v2}, Lb/e/f/a;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0, p1}, Lb/h/b/c0;->i(Lb/h/b/m;)V

    iget-object v0, p0, Lb/h/b/c0;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final d0(Lb/h/b/m;)V
    .locals 3

    invoke-virtual {p0, p1}, Lb/h/b/c0;->H(Lb/h/b/m;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/h/b/m;->g()I

    move-result v1

    invoke-virtual {p1}, Lb/h/b/m;->k()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Lb/h/b/m;->s()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lb/h/b/m;->t()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_1

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h/b/m;

    invoke-virtual {p1}, Lb/h/b/m;->r()Z

    move-result p1

    invoke-virtual {v0, p1}, Lb/h/b/m;->z0(Z)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/h/b/c0;->b:Z

    iget-object v0, p0, Lb/h/b/c0;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lb/h/b/c0;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public e0(Lb/h/b/m;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

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
    iget-boolean v0, p1, Lb/h/b/m;->A:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lb/h/b/m;->A:Z

    iget-boolean v0, p1, Lb/h/b/m;->L:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lb/h/b/m;->L:Z

    :cond_1
    return-void
.end method

.method public final f()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lb/h/b/y0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v1}, Lb/h/b/j0;->f()Ljava/util/List;

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

    check-cast v2, Lb/h/b/i0;

    .line 1
    iget-object v2, v2, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 2
    iget-object v2, v2, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lb/h/b/c0;->K()Lb/h/b/z0;

    move-result-object v3

    invoke-static {v2, v3}, Lb/h/b/y0;->g(Landroid/view/ViewGroup;Lb/h/b/z0;)Lb/h/b/y0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f0()V
    .locals 4

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/h/b/i0;

    .line 1
    iget-object v2, v1, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 2
    iget-boolean v3, v2, Lb/h/b/m;->I:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lb/h/b/c0;->b:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/h/b/c0;->E:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Lb/h/b/m;->I:Z

    invoke-virtual {v1}, Lb/h/b/i0;->k()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g(Lb/h/b/a;ZZZ)V
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Lb/h/b/a;->i(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/h/b/a;->h()V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    iget p1, p0, Lb/h/b/c0;->p:I

    if-lt p1, v8, :cond_1

    iget-object p1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 1
    iget-object v0, p1, Lb/h/b/z;->c:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lb/h/b/c0;->r:Lb/h/b/v;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lb/h/b/c0;->m:Lb/h/b/r0$a;

    invoke-static/range {v0 .. v7}, Lb/h/b/r0;->p(Landroid/content/Context;Lb/h/b/v;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLb/h/b/r0$a;)V

    :cond_1
    if-eqz p4, :cond_2

    iget p1, p0, Lb/h/b/c0;->p:I

    invoke-virtual {p0, p1, v8}, Lb/h/b/c0;->R(IZ)V

    :cond_2
    iget-object p1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {p1}, Lb/h/b/j0;->g()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/h/b/m;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lb/h/b/m;->H:Landroid/view/View;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final g0()V
    .locals 4

    iget-object v0, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/h/b/c0;->h:Lb/a/d;

    .line 1
    iput-boolean v2, v1, Lb/a/d;->a:Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/h/b/c0;->h:Lb/a/d;

    .line 3
    iget-object v1, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    invoke-virtual {p0, v1}, Lb/h/b/c0;->P(Lb/h/b/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_1
    iput-boolean v2, v0, Lb/a/d;->a:Z

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

.method public h(Lb/h/b/m;)Lb/h/b/i0;
    .locals 3

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    iget-object v1, p1, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/h/b/j0;->h(Ljava/lang/String;)Lb/h/b/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lb/h/b/i0;

    iget-object v1, p0, Lb/h/b/c0;->n:Lb/h/b/b0;

    iget-object v2, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-direct {v0, v1, v2, p1}, Lb/h/b/i0;-><init>(Lb/h/b/b0;Lb/h/b/j0;Lb/h/b/m;)V

    iget-object p1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 1
    iget-object p1, p1, Lb/h/b/z;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/h/b/i0;->m(Ljava/lang/ClassLoader;)V

    iget p1, p0, Lb/h/b/c0;->p:I

    .line 3
    iput p1, v0, Lb/h/b/i0;->e:I

    return-object v0
.end method

.method public final i(Lb/h/b/m;)V
    .locals 3

    invoke-virtual {p1}, Lb/h/b/m;->l0()V

    iget-object v0, p0, Lb/h/b/c0;->n:Lb/h/b/b0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lb/h/b/b0;->n(Lb/h/b/m;Z)V

    const/4 v0, 0x0

    iput-object v0, p1, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    iput-object v0, p1, Lb/h/b/m;->H:Landroid/view/View;

    iput-object v0, p1, Lb/h/b/m;->R:Lb/h/b/w0;

    iget-object v2, p1, Lb/h/b/m;->S:Lb/j/l;

    invoke-virtual {v2, v0}, Lb/j/l;->g(Ljava/lang/Object;)V

    iput-boolean v1, p1, Lb/h/b/m;->p:Z

    return-void
.end method

.method public j(Lb/h/b/m;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

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
    iget-boolean v1, p1, Lb/h/b/m;->B:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Lb/h/b/m;->B:Z

    iget-boolean v3, p1, Lb/h/b/m;->m:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

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
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0, p1}, Lb/h/b/j0;->l(Lb/h/b/m;)V

    invoke-virtual {p0, p1}, Lb/h/b/c0;->N(Lb/h/b/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lb/h/b/c0;->A:Z

    :cond_2
    invoke-virtual {p0, p1}, Lb/h/b/c0;->d0(Lb/h/b/m;)V

    :cond_3
    return-void
.end method

.method public k(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

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

    check-cast v1, Lb/h/b/m;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1, p1}, Lb/h/b/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, v1, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v1, p1}, Lb/h/b/c0;->k(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(Landroid/view/MenuItem;)Z
    .locals 5

    iget v0, p0, Lb/h/b/c0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/m;

    if-eqz v3, :cond_1

    .line 1
    iget-boolean v4, v3, Lb/h/b/m;->A:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lb/h/b/m;->J()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v3, p1}, Lb/h/b/c0;->l(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_4
    return v1
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/h/b/c0;->B:Z

    iput-boolean v0, p0, Lb/h/b/c0;->C:Z

    iget-object v1, p0, Lb/h/b/c0;->J:Lb/h/b/f0;

    .line 1
    iput-boolean v0, v1, Lb/h/b/f0;->h:Z

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lb/h/b/c0;->w(I)V

    return-void
.end method

.method public n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    iget v0, p0, Lb/h/b/c0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v3}, Lb/h/b/j0;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/h/b/m;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Lb/h/b/c0;->O(Lb/h/b/m;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1
    iget-boolean v6, v5, Lb/h/b/m;->A:Z

    if-nez v6, :cond_3

    iget-boolean v6, v5, Lb/h/b/m;->D:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Lb/h/b/m;->E:Z

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lb/h/b/m;->N()V

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iget-object v7, v5, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v7, p1, p2}, Lb/h/b/c0;->n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_1

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lb/h/b/c0;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    :goto_3
    iget-object p1, p0, Lb/h/b/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    iget-object p1, p0, Lb/h/b/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h/b/m;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 3
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4
    :cond_8
    iput-object v0, p0, Lb/h/b/c0;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public o()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/c0;->D:Z

    invoke-virtual {p0, v0}, Lb/h/b/c0;->B(Z)Z

    invoke-virtual {p0}, Lb/h/b/c0;->z()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lb/h/b/c0;->w(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    iput-object v0, p0, Lb/h/b/c0;->r:Lb/h/b/v;

    iput-object v0, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    iget-object v1, p0, Lb/h/b/c0;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/h/b/c0;->h:Lb/a/d;

    .line 1
    iget-object v1, v1, Lb/a/d;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a;

    invoke-interface {v2}, Lb/a/a;->cancel()V

    goto :goto_0

    .line 2
    :cond_0
    iput-object v0, p0, Lb/h/b/c0;->g:Landroidx/activity/OnBackPressedDispatcher;

    :cond_1
    iget-object v0, p0, Lb/h/b/c0;->w:Lb/a/g/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/a/g/c;->b()V

    iget-object v0, p0, Lb/h/b/c0;->x:Lb/a/g/c;

    invoke-virtual {v0}, Lb/a/g/c;->b()V

    iget-object v0, p0, Lb/h/b/c0;->y:Lb/a/g/c;

    invoke-virtual {v0}, Lb/a/g/c;->b()V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

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

    check-cast v1, Lb/h/b/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/h/b/m;->m0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q(Z)V
    .locals 2

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

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

    check-cast v1, Lb/h/b/m;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1}, Lb/h/b/m;->V()V

    iget-object v1, v1, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v1, p1}, Lb/h/b/c0;->q(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Landroid/view/MenuItem;)Z
    .locals 5

    iget v0, p0, Lb/h/b/c0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/m;

    if-eqz v3, :cond_1

    .line 1
    iget-boolean v4, v3, Lb/h/b/m;->A:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lb/h/b/m;->D:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lb/h/b/m;->E:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lb/h/b/m;->W()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v3, p1}, Lb/h/b/c0;->r(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_4
    return v1
.end method

.method public s(Landroid/view/Menu;)V
    .locals 3

    iget v0, p0, Lb/h/b/c0;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/h/b/m;

    if-eqz v1, :cond_1

    .line 1
    iget-boolean v2, v1, Lb/h/b/m;->A:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lb/h/b/m;->D:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lb/h/b/m;->E:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lb/h/b/m;->X()V

    :cond_2
    iget-object v1, v1, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v1, p1}, Lb/h/b/c0;->s(Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final t(Lb/h/b/m;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/h/b/c0;->E(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/b/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p1, Lb/h/b/m;->t:Lb/h/b/c0;

    invoke-virtual {v0, p1}, Lb/h/b/c0;->P(Lb/h/b/m;)Z

    move-result v0

    iget-object v1, p1, Lb/h/b/m;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lb/h/b/m;->l:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lb/h/b/m;->c0()V

    iget-object p1, p1, Lb/h/b/m;->v:Lb/h/b/c0;

    .line 2
    invoke-virtual {p1}, Lb/h/b/c0;->g0()V

    iget-object v0, p1, Lb/h/b/c0;->t:Lb/h/b/m;

    invoke-virtual {p1, v0}, Lb/h/b/c0;->t(Lb/h/b/m;)V

    :cond_1
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

    iget-object v1, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    :goto_0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/h/b/c0;->q:Lb/h/b/z;

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

    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

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

    check-cast v1, Lb/h/b/m;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1}, Lb/h/b/m;->Z()V

    iget-object v1, v1, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v1, p1}, Lb/h/b/c0;->u(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v(Landroid/view/Menu;)Z
    .locals 5

    iget v0, p0, Lb/h/b/c0;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0}, Lb/h/b/j0;->i()Ljava/util/List;

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

    check-cast v3, Lb/h/b/m;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lb/h/b/c0;->O(Lb/h/b/m;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Lb/h/b/m;->n0(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final w(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lb/h/b/c0;->b:Z

    iget-object v2, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 1
    iget-object v2, v2, Lb/h/b/j0;->b:Ljava/util/HashMap;

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

    check-cast v3, Lb/h/b/i0;

    if-eqz v3, :cond_0

    .line 2
    iput p1, v3, Lb/h/b/i0;->e:I

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, v1}, Lb/h/b/c0;->R(IZ)V

    invoke-virtual {p0}, Lb/h/b/c0;->f()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/h/b/y0;

    invoke-virtual {v2}, Lb/h/b/y0;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lb/h/b/c0;->b:Z

    invoke-virtual {p0, v0}, Lb/h/b/c0;->B(Z)Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lb/h/b/c0;->b:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final x()V
    .locals 1

    iget-boolean v0, p0, Lb/h/b/c0;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/h/b/c0;->E:Z

    invoke-virtual {p0}, Lb/h/b/c0;->f0()V

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    invoke-static {p1, v0}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/h/b/c0;->c:Lb/h/b/j0;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lb/h/b/j0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lb/h/b/j0;->b:Ljava/util/HashMap;

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

    check-cast v4, Lb/h/b/i0;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, v4, Lb/h/b/i0;->c:Lb/h/b/m;

    .line 3
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, p2, p3, p4}, Lb/h/b/m;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, v1, Lb/h/b/j0;->a:Ljava/util/ArrayList;

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

    iget-object v3, v1, Lb/h/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/m;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lb/h/b/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4
    :cond_2
    iget-object p2, p0, Lb/h/b/c0;->e:Ljava/util/ArrayList;

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

    iget-object v2, p0, Lb/h/b/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/h/b/m;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/h/b/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

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

    iget-object v2, p0, Lb/h/b/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/h/b/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/h/b/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v0, p3, v3}, Lb/h/b/a;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/h/b/c0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    iget-object v1, p0, Lb/h/b/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/h/b/c0$l;

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

    iget-object p2, p0, Lb/h/b/c0;->q:Lb/h/b/z;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lb/h/b/c0;->r:Lb/h/b/v;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lb/h/b/c0;->s:Lb/h/b/m;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lb/h/b/c0;->p:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lb/h/b/c0;->B:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lb/h/b/c0;->C:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lb/h/b/c0;->D:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lb/h/b/c0;->A:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lb/h/b/c0;->A:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Lb/h/b/c0;->f()Ljava/util/Set;

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

    check-cast v1, Lb/h/b/y0;

    invoke-virtual {v1}, Lb/h/b/y0;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method
