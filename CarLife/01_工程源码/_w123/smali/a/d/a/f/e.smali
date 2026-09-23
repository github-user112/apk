.class public La/d/a/f/e;
.super Lb/h/b/m;
.source ""


# instance fields
.field public V:La/d/a/f/i;

.field public W:La/d/a/f/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/h/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final C0()Z
    .locals 2

    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/d/a/f/e;->W:La/d/a/f/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "PermissionX"

    const-string v1, "PermissionBuilder and ChainTask should not be null at this time, so we can do nothing in this case."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public final D0()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v1, v0, La/d/a/f/i;->p:La/d/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->p:La/d/a/c/a;

    iget-object v1, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {v1}, La/d/a/f/b;->d()La/d/a/f/c;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/d/a/c/a;->a(La/d/a/f/c;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {v0}, La/d/a/f/b;->b()V

    :goto_1
    return-void
.end method

.method public final E0()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v1, v0, La/d/a/f/i;->p:La/d/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->p:La/d/a/c/a;

    iget-object v1, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {v1}, La/d/a/f/b;->d()La/d/a/f/c;

    move-result-object v1

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/d/a/c/a;->a(La/d/a/f/c;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {v0}, La/d/a/f/b;->b()V

    :goto_1
    return-void
.end method

.method public F(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/h/b/m;->F(IILandroid/content/Intent;)V

    invoke-virtual {p0}, La/d/a/f/e;->C0()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La/d/a/f/e;->D0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, La/d/a/f/e;->F0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, La/d/a/f/e;->E0()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, La/d/a/f/e;->W:La/d/a/f/b;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p3, p3, La/d/a/f/i;->n:Ljava/util/Set;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, La/d/a/f/b;->a(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final F0()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v1, v0, La/d/a/f/i;->p:La/d/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->p:La/d/a/c/a;

    iget-object v1, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {v1}, La/d/a/f/b;->d()La/d/a/f/c;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/d/a/c/a;->a(La/d/a/f/c;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {v0}, La/d/a/f/b;->b()V

    :goto_1
    return-void
.end method

.method public P()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    .line 2
    invoke-virtual {p0}, La/d/a/f/e;->C0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public d0(I[Ljava/lang/String;[I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    .line 1
    invoke-virtual {p0}, La/d/a/f/e;->C0()Z

    move-result p1

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    array-length p1, p2

    array-length v2, p3

    if-ne p1, v2, :cond_12

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p1, p1, La/d/a/f/i;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_3

    aget-object v4, p2, v3

    aget v5, p3, v3

    if-nez v5, :cond_0

    iget-object v5, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v5, v5, La/d/a/f/i;->j:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v5, v5, La/d/a/f/i;->k:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v5, v5, La/d/a/f/i;->l:Ljava/util/Set;

    goto :goto_2

    .line 2
    :cond_0
    iget-object v5, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lb/h/b/z;->h(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 3
    aget-object v5, p2, v3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v5, v5, La/d/a/f/i;->k:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    aget-object v5, p2, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v5, v5, La/d/a/f/i;->l:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v5, v5, La/d/a/f/i;->k:Ljava/util/Set;

    :goto_2
    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p3, p3, La/d/a/f/i;->k:Ljava/util/Set;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p3, p3, La/d/a/f/i;->l:Ljava/util/Set;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lb/e/b/g;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v3, v3, La/d/a/f/i;->k:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v3, v3, La/d/a/f/i;->j:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object p2, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p2, p2, La/d/a/f/i;->j:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    iget-object p3, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p3, p3, La/d/a/f/i;->f:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    if-ne p2, p3, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_7

    iget-object p1, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {p1}, La/d/a/f/b;->b()V

    goto/16 :goto_b

    :cond_7
    iget-object p2, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p2, p2, La/d/a/f/i;->p:La/d/a/c/a;

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p1, p1, La/d/a/f/i;->p:La/d/a/c/a;

    iget-object p2, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {p2}, La/d/a/f/b;->d()La/d/a/f/c;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->k:Ljava/util/Set;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2, p3}, La/d/a/c/a;->a(La/d/a/f/c;Ljava/util/List;)V

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p1, p1, La/d/a/f/i;->m:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    if-nez v0, :cond_a

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-boolean p1, p1, La/d/a/f/i;->h:Z

    if-nez p1, :cond_b

    :cond_a
    iget-object p1, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {p1}, La/d/a/f/b;->b()V

    :cond_b
    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iput-boolean v1, p1, La/d/a/f/i;->h:Z

    goto :goto_b

    :cond_c
    const/4 p2, 0x2

    if-ne p1, p2, :cond_12

    .line 4
    invoke-virtual {p0}, La/d/a/f/e;->C0()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, p2}, Lb/e/b/g;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p1, p1, La/d/a/f/i;->j:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p1, p1, La/d/a/f/i;->k:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p1, p1, La/d/a/f/i;->l:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 5
    :cond_d
    iget-object p1, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz p1, :cond_e

    invoke-virtual {p1, p2}, Lb/h/b/z;->h(Ljava/lang/String;)Z

    move-result p1

    goto :goto_8

    :cond_e
    const/4 p1, 0x0

    .line 6
    :goto_8
    iget-object p3, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p3, p3, La/d/a/f/i;->p:La/d/a/c/a;

    if-nez p3, :cond_f

    goto :goto_9

    :cond_f
    if-eqz p1, :cond_10

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, La/d/a/f/e;->V:La/d/a/f/i;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-object p2, p2, La/d/a/f/i;->p:La/d/a/c/a;

    iget-object p3, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {p3}, La/d/a/f/b;->d()La/d/a/f/c;

    move-result-object p3

    invoke-interface {p2, p3, p1}, La/d/a/c/a;->a(La/d/a/f/c;Ljava/util/List;)V

    const/4 v0, 0x0

    :cond_10
    :goto_9
    if-nez v0, :cond_11

    iget-object p1, p0, La/d/a/f/e;->V:La/d/a/f/i;

    iget-boolean p1, p1, La/d/a/f/i;->h:Z

    if-nez p1, :cond_12

    :cond_11
    :goto_a
    iget-object p1, p0, La/d/a/f/e;->W:La/d/a/f/b;

    invoke-interface {p1}, La/d/a/f/b;->b()V

    :cond_12
    :goto_b
    return-void
.end method
