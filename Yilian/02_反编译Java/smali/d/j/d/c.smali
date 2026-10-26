.class public Ld/j/d/c;
.super Ld/j/d/u0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/j/d/c$d;,
        Ld/j/d/c$b;,
        Ld/j/d/c$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/j/d/u0;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Z)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/j/d/u0$d;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v6, p2

    sget-object v8, Ld/j/d/u0$d$c;->c:Ld/j/d/u0$d$c;

    sget-object v9, Ld/j/d/u0$d$c;->b:Ld/j/d/u0$d$c;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v10, v1

    move-object v11, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/u0$d;

    .line 1
    iget-object v4, v1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Ld/j/d/u0$d$c;->c(Landroid/view/View;)Ld/j/d/u0$d$c;

    move-result-object v4

    .line 3
    iget-object v5, v1, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 4
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_2

    goto :goto_0

    :cond_1
    if-eq v4, v9, :cond_0

    move-object v11, v1

    goto :goto_0

    :cond_2
    if-ne v4, v9, :cond_0

    if-nez v10, :cond_0

    move-object v10, v1

    goto :goto_0

    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/u0$d;

    new-instance v2, Ld/g/i/a;

    invoke-direct {v2}, Ld/g/i/a;-><init>()V

    .line 5
    invoke-virtual {v1}, Ld/j/d/u0$d;->d()V

    iget-object v3, v1, Ld/j/d/u0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Ld/j/d/c$b;

    invoke-direct {v3, v1, v2}, Ld/j/d/c$b;-><init>(Ld/j/d/u0$d;Ld/g/i/a;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ld/g/i/a;

    invoke-direct {v2}, Ld/g/i/a;-><init>()V

    .line 7
    invoke-virtual {v1}, Ld/j/d/u0$d;->d()V

    iget-object v3, v1, Ld/j/d/u0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Ld/j/d/c$d;

    if-eqz v6, :cond_4

    if-ne v1, v10, :cond_5

    goto :goto_2

    :cond_4
    if-ne v1, v11, :cond_5

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v3, v1, v2, v6, v4}, Ld/j/d/c$d;-><init>(Ld/j/d/u0$d;Ld/g/i/a;ZZ)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ld/j/d/c$a;

    invoke-direct {v2, v7, v14, v1}, Ld/j/d/c$a;-><init>(Ld/j/d/c;Ljava/util/List;Ld/j/d/u0$d;)V

    .line 9
    iget-object v1, v1, Ld/j/d/u0$d;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_6
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v5, v1

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/c$d;

    invoke-virtual {v1}, Ld/j/d/c$c;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 11
    :cond_8
    iget-object v2, v1, Ld/j/d/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ld/j/d/c$d;->c(Ljava/lang/Object;)Ld/j/d/p0;

    move-result-object v2

    iget-object v3, v1, Ld/j/d/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ld/j/d/c$d;->c(Ljava/lang/Object;)Ld/j/d/p0;

    move-result-object v3

    const-string v4, " returned Transition "

    const-string v16, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12
    iget-object v3, v1, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 13
    iget-object v3, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ld/j/d/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ld/j/d/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, v3

    :goto_6
    if-nez v5, :cond_c

    move-object v5, v2

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_7

    if-ne v5, v2, :cond_d

    goto :goto_4

    .line 15
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 16
    iget-object v3, v1, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 17
    iget-object v3, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, v1, Ld/j/d/c$d;->c:Ljava/lang/Object;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v4, "FragmentManager"

    if-nez v5, :cond_10

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/c$d;

    .line 21
    iget-object v2, v1, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 22
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ld/j/d/c$c;->a()V

    goto :goto_7

    :cond_f
    move-object v9, v4

    move-object/from16 v26, v12

    move-object/from16 v24, v14

    move-object v12, v8

    move-object v8, v15

    goto/16 :goto_1d

    :cond_10
    new-instance v3, Landroid/view/View;

    .line 23
    iget-object v0, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v14

    new-instance v14, Ld/e/a;

    invoke-direct {v14}, Ld/e/a;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v2

    move-object/from16 v26, v12

    move-object/from16 v2, v16

    move-object/from16 v12, v17

    const/16 v27, 0x0

    move-object/from16 v16, v3

    move-object v3, v11

    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Ld/j/d/c$d;

    move-object/from16 v28, v12

    .line 25
    iget-object v12, v4, Ld/j/d/c$d;->e:Ljava/lang/Object;

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_1d

    if-eqz v10, :cond_1d

    if-eqz v3, :cond_1d

    .line 26
    iget-object v2, v4, Ld/j/d/c$d;->e:Ljava/lang/Object;

    .line 27
    invoke-virtual {v5, v2}, Ld/j/d/p0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ld/j/d/p0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 28
    iget-object v2, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 29
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v4

    .line 30
    iget-object v2, v10, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v17, v5

    .line 32
    iget-object v5, v10, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 33
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v5

    const/16 v19, 0x0

    move-object/from16 v30, v8

    move-object/from16 v29, v9

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v9, v8, :cond_13

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move-object/from16 v19, v5

    const/4 v5, -0x1

    if-eq v8, v5, :cond_12

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v19

    goto :goto_a

    .line 34
    :cond_13
    iget-object v2, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v6, :cond_14

    .line 36
    iget-object v2, v10, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 37
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld/g/e/n;

    move-result-object v2

    .line 38
    iget-object v5, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 39
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld/g/e/n;

    move-result-object v5

    goto :goto_b

    .line 40
    :cond_14
    iget-object v2, v10, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 41
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld/g/e/n;

    move-result-object v2

    .line 42
    iget-object v5, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 43
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld/g/e/n;

    move-result-object v5

    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v19, 0x0

    move-object/from16 v31, v13

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v9, :cond_15

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v9

    move-object/from16 v9, v19

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v32, v15

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v9, v15}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v20

    move-object/from16 v15, v32

    goto :goto_c

    :cond_15
    move-object/from16 v32, v15

    new-instance v9, Ld/e/a;

    invoke-direct {v9}, Ld/e/a;-><init>()V

    .line 44
    iget-object v13, v10, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 45
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v9, v13}, Ld/j/d/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 46
    invoke-static {v9, v4}, Ld/e/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    if-nez v2, :cond_1c

    .line 47
    invoke-virtual {v9}, Ld/e/a;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 48
    invoke-static {v14, v2}, Ld/e/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 49
    new-instance v13, Ld/e/a;

    invoke-direct {v13}, Ld/e/a;-><init>()V

    .line 50
    iget-object v2, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 51
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v13, v2}, Ld/j/d/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 52
    invoke-static {v13, v8}, Ld/e/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {v14}, Ld/e/a;->values()Ljava/util/Collection;

    move-result-object v2

    .line 54
    invoke-static {v13, v2}, Ld/e/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    if-nez v5, :cond_1b

    .line 55
    invoke-static {v14, v13}, Ld/j/d/n0;->n(Ld/e/a;Ld/e/a;)V

    invoke-virtual {v14}, Ld/e/a;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Ld/j/d/c;->l(Ld/e/a;Ljava/util/Collection;)V

    invoke-virtual {v14}, Ld/e/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v7, v13, v2}, Ld/j/d/c;->l(Ld/e/a;Ljava/util/Collection;)V

    invoke-virtual {v14}, Ld/e/h;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v4, p1

    move-object v5, v10

    move-object v6, v11

    move-object/from16 p1, v14

    move-object/from16 v10, v17

    move-object/from16 v35, v18

    move-object/from16 v12, v28

    move-object/from16 v8, v32

    move-object v11, v0

    move-object v14, v1

    move-object/from16 v1, v16

    goto/16 :goto_11

    .line 56
    :cond_16
    iget-object v2, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v10, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x1

    .line 57
    invoke-static {v2, v3, v6, v9, v5}, Ld/j/d/n0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/e/a;Z)V

    .line 58
    iget-object v15, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 59
    new-instance v5, Ld/j/d/h;

    move-object v3, v0

    move-object v0, v5

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 p1, v14

    move-object v14, v2

    move-object v2, v11

    move-object/from16 v33, v11

    move-object/from16 v34, v16

    move-object v11, v3

    move-object v3, v10

    move-object/from16 v16, v4

    move-object/from16 v35, v18

    move/from16 v4, p2

    move-object/from16 v37, v6

    move-object/from16 v36, v10

    move-object/from16 v10, v17

    move-object v6, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Ld/j/d/h;-><init>(Ld/j/d/c;Ld/j/d/u0$d;Ld/j/d/u0$d;ZLd/e/a;)V

    invoke-static {v15, v6}, Ld/g/m/m;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/g/m/m;

    invoke-virtual {v9}, Ld/e/a;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ld/e/g$e;

    invoke-virtual {v0}, Ld/e/g$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    move-object v1, v0

    check-cast v1, Ld/e/g$a;

    invoke-virtual {v1}, Ld/e/g$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Ld/e/g$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v7, v14, v1}, Ld/j/d/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_d

    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ld/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v10, v12, v0}, Ld/j/d/p0;->t(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_e

    :cond_18
    move-object/from16 v0, v28

    :goto_e
    invoke-virtual {v13}, Ld/e/a;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ld/e/g$e;

    invoke-virtual {v1}, Ld/e/g$e;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    move-object v2, v1

    check-cast v2, Ld/e/g$a;

    invoke-virtual {v2}, Ld/e/g$a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Ld/e/g$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v7, v11, v2}, Ld/j/d/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_f

    :cond_19
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ld/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 60
    iget-object v2, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 61
    new-instance v3, Ld/j/d/i;

    move-object/from16 v4, v37

    invoke-direct {v3, v7, v10, v1, v4}, Ld/j/d/i;-><init>(Ld/j/d/c;Ld/j/d/p0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v2, v3}, Ld/g/m/m;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/g/m/m;

    const/4 v1, 0x1

    move-object/from16 v1, v34

    const/16 v27, 0x1

    goto :goto_10

    :cond_1a
    move-object/from16 v4, v37

    move-object/from16 v1, v34

    :goto_10
    invoke-virtual {v10, v12, v1, v14}, Ld/j/d/p0;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v22, v12

    move-object/from16 v23, v11

    invoke-virtual/range {v16 .. v23}, Ld/j/d/p0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v8, v32

    move-object/from16 v5, v36

    invoke-virtual {v8, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, v33

    invoke-virtual {v8, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v6

    move-object v2, v12

    move-object v12, v0

    goto :goto_11

    :cond_1b
    const/4 v0, 0x0

    throw v0

    :cond_1c
    const/4 v0, 0x0

    throw v0

    :cond_1d
    move-object/from16 v4, p1

    move-object/from16 v30, v8

    move-object/from16 v29, v9

    move-object v6, v11

    move-object/from16 v31, v13

    move-object/from16 p1, v14

    move-object v8, v15

    move-object/from16 v35, v18

    move-object v11, v0

    move-object v14, v1

    move-object/from16 v1, v16

    move-object/from16 v38, v10

    move-object v10, v5

    move-object/from16 v5, v38

    move-object/from16 v12, v28

    :goto_11
    move-object/from16 v16, v1

    move-object v15, v8

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v9, v29

    move-object/from16 v8, v30

    move-object/from16 v13, v31

    move-object/from16 v14, p1

    move-object/from16 p1, v4

    move-object v11, v6

    move-object/from16 v4, v35

    move/from16 v6, p2

    move-object/from16 v38, v10

    move-object v10, v5

    move-object/from16 v5, v38

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v35, v4

    move-object/from16 v30, v8

    move-object/from16 v29, v9

    move-object v6, v11

    move-object/from16 v28, v12

    move-object/from16 v31, v13

    move-object v8, v15

    move-object/from16 v4, p1

    move-object v11, v0

    move-object/from16 p1, v14

    move-object v14, v1

    move-object/from16 v1, v16

    move-object/from16 v38, v10

    move-object v10, v5

    move-object/from16 v5, v38

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ld/j/d/c$d;

    invoke-virtual {v15}, Ld/j/d/c$c;->b()Z

    move-result v16

    if-eqz v16, :cond_1f

    move-object/from16 p2, v9

    .line 62
    iget-object v9, v15, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    move-object/from16 v33, v6

    .line 63
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Ld/j/d/c$c;->a()V

    move-object/from16 v9, p2

    move-object/from16 v6, v33

    goto :goto_12

    :cond_1f
    move-object/from16 v33, v6

    move-object/from16 p2, v9

    .line 64
    iget-object v6, v15, Ld/j/d/c$d;->c:Ljava/lang/Object;

    .line 65
    invoke-virtual {v10, v6}, Ld/j/d/p0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 66
    iget-object v9, v15, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    if-eqz v2, :cond_21

    if-eq v9, v5, :cond_20

    if-ne v9, v3, :cond_21

    :cond_20
    const/4 v3, 0x1

    goto :goto_13

    :cond_21
    const/4 v3, 0x0

    :goto_13
    if-nez v6, :cond_23

    if-nez v3, :cond_22

    .line 67
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Ld/j/d/c$c;->a()V

    :cond_22
    move-object/from16 v34, v1

    move-object/from16 v25, v2

    move-object/from16 v32, v12

    move-object/from16 v1, v28

    move-object/from16 v3, v29

    move-object/from16 v12, v30

    goto/16 :goto_17

    :cond_23
    move-object/from16 v25, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v12

    .line 68
    iget-object v12, v9, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 69
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v2, v12}, Ld/j/d/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v3, :cond_25

    if-ne v9, v5, :cond_24

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_14

    :cond_24
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_25
    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v10, v6, v1}, Ld/j/d/p0;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v34, v1

    move-object/from16 v12, v30

    goto :goto_15

    :cond_26
    invoke-virtual {v10, v6, v2}, Ld/j/d/p0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v6

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v23}, Ld/j/d/p0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 70
    iget-object v3, v9, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    move-object/from16 v12, v30

    if-ne v3, v12, :cond_27

    .line 71
    iget-object v3, v9, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 72
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v10, v6, v3, v2}, Ld/j/d/p0;->q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 73
    iget-object v3, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    move-object/from16 v34, v1

    .line 74
    new-instance v1, Ld/j/d/j;

    invoke-direct {v1, v7, v2}, Ld/j/d/j;-><init>(Ld/j/d/c;Ljava/util/ArrayList;)V

    invoke-static {v3, v1}, Ld/g/m/m;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/g/m/m;

    goto :goto_15

    :cond_27
    move-object/from16 v34, v1

    .line 75
    :goto_15
    iget-object v1, v9, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    move-object/from16 v3, v29

    if-ne v1, v3, :cond_29

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v27, :cond_28

    invoke-virtual {v10, v6, v4}, Ld/j/d/p0;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_28
    move-object/from16 v1, v28

    goto :goto_16

    :cond_29
    move-object/from16 v1, v28

    invoke-virtual {v10, v6, v1}, Ld/j/d/p0;->t(Ljava/lang/Object;Landroid/view/View;)V

    :goto_16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-boolean v2, v15, Ld/j/d/c$d;->d:Z

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v10, v13, v6, v2}, Ld/j/d/p0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    goto :goto_17

    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v9, v32

    invoke-virtual {v10, v9, v6, v2}, Ld/j/d/p0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v32, v2

    :goto_17
    move-object/from16 v9, p2

    move-object/from16 v28, v1

    move-object/from16 v29, v3

    move-object/from16 v30, v12

    move-object/from16 v2, v25

    move-object/from16 v12, v32

    move-object/from16 v3, v33

    move-object v6, v3

    move-object/from16 v1, v34

    goto/16 :goto_12

    :cond_2b
    move-object/from16 v33, v6

    move-object v9, v12

    move-object/from16 v12, v30

    invoke-virtual {v10, v13, v9, v2}, Ld/j/d/p0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/j/d/c$d;

    invoke-virtual {v4}, Ld/j/d/c$c;->b()Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_18

    .line 79
    :cond_2c
    iget-object v6, v4, Ld/j/d/c$d;->c:Ljava/lang/Object;

    .line 80
    iget-object v9, v4, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    move-object/from16 v13, v33

    if-eqz v2, :cond_2e

    if-eq v9, v5, :cond_2d

    if-ne v9, v13, :cond_2e

    :cond_2d
    const/4 v15, 0x1

    goto :goto_19

    :cond_2e
    const/4 v15, 0x0

    :goto_19
    if-nez v6, :cond_30

    if-eqz v15, :cond_2f

    goto :goto_1a

    :cond_2f
    move-object/from16 p2, v3

    move-object/from16 v9, v35

    goto :goto_1c

    .line 81
    :cond_30
    :goto_1a
    iget-object v6, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 82
    invoke-static {v6}, Ld/g/m/s;->A(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_32

    const/4 v6, 0x2

    invoke-static {v6}, Ld/j/d/y;->M(I)Z

    move-result v6

    if-eqz v6, :cond_31

    const-string v6, "SpecialEffectsController: Container "

    invoke-static {v6}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 83
    iget-object v15, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " has not been laid out. Completing operation "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, v35

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_31
    move-object/from16 v9, v35

    :goto_1b
    invoke-virtual {v4}, Ld/j/d/c$c;->a()V

    move-object/from16 p2, v3

    goto :goto_1c

    :cond_32
    move-object/from16 v9, v35

    .line 85
    iget-object v6, v4, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 86
    iget-object v6, v6, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 87
    iget-object v15, v4, Ld/j/d/c$c;->b:Ld/g/i/a;

    move-object/from16 p2, v3

    .line 88
    new-instance v3, Ld/j/d/k;

    invoke-direct {v3, v7, v4}, Ld/j/d/k;-><init>(Ld/j/d/c;Ld/j/d/c$d;)V

    invoke-virtual {v10, v6, v1, v15, v3}, Ld/j/d/p0;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ld/g/i/a;Ljava/lang/Runnable;)V

    :goto_1c
    move-object/from16 v3, p2

    move-object/from16 v35, v9

    move-object/from16 v33, v13

    goto :goto_18

    :cond_33
    move-object/from16 v9, v35

    .line 89
    iget-object v3, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 90
    invoke-static {v3}, Ld/g/m/s;->A(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_1d

    :cond_34
    const/4 v3, 0x4

    invoke-static {v0, v3}, Ld/j/d/n0;->p(Ljava/util/ArrayList;I)V

    invoke-virtual {v10, v11}, Ld/j/d/p0;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    .line 91
    iget-object v3, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {v10, v3, v1}, Ld/j/d/p0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 93
    iget-object v1, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    move-object/from16 v16, v10

    move-object/from16 v17, v1

    move-object/from16 v18, v14

    move-object/from16 v19, v11

    move-object/from16 v21, p1

    .line 94
    invoke-virtual/range {v16 .. v21}, Ld/j/d/p0;->v(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/j/d/n0;->p(Ljava/util/ArrayList;I)V

    invoke-virtual {v10, v2, v14, v11}, Ld/j/d/p0;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 95
    :goto_1d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v10

    .line 96
    iget-object v11, v7, Ld/j/d/u0;->a:Landroid/view/ViewGroup;

    .line 97
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    :goto_1e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ld/j/d/c$b;

    invoke-virtual {v6}, Ld/j/d/c$c;->b()Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_1f

    :cond_35
    invoke-virtual {v6, v13}, Ld/j/d/c$b;->c(Landroid/content/Context;)Ld/j/d/p;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_1f

    :cond_36
    iget-object v5, v1, Ld/j/d/p;->b:Landroid/animation/Animator;

    if-nez v5, :cond_37

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 98
    :cond_37
    iget-object v4, v6, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 99
    iget-object v1, v4, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 100
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x2

    invoke-static {v2}, Ld/j/d/y;->M(I)Z

    move-result v2

    if-eqz v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Animator set on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as this Fragment was involved in a Transition."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_1f
    invoke-virtual {v6}, Ld/j/d/c$c;->a()V

    goto :goto_1e

    .line 101
    :cond_39
    iget-object v0, v4, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    if-ne v0, v12, :cond_3a

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_20

    :cond_3a
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_20
    move-object/from16 v3, v24

    if-eqz v16, :cond_3b

    .line 102
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v1, Ld/j/d/d;

    move-object v0, v1

    move-object/from16 v32, v8

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v11

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move/from16 v4, v16

    move-object/from16 v30, v12

    move-object v12, v5

    move-object/from16 v5, v18

    move-object/from16 p2, v6

    invoke-direct/range {v0 .. v6}, Ld/j/d/d;-><init>(Ld/j/d/c;Landroid/view/ViewGroup;Landroid/view/View;ZLd/j/d/u0$d;Ld/j/d/c$b;)V

    invoke-virtual {v12, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    move-object/from16 v1, p2

    .line 103
    iget-object v0, v1, Ld/j/d/c$c;->b:Ld/g/i/a;

    .line 104
    new-instance v1, Ld/j/d/e;

    invoke-direct {v1, v7, v12}, Ld/j/d/e;-><init>(Ld/j/d/c;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Ld/g/i/a;->b(Ld/g/i/a$a;)V

    const/4 v0, 0x1

    move-object/from16 v24, v17

    move-object/from16 v12, v30

    move-object/from16 v8, v32

    goto/16 :goto_1e

    :cond_3c
    move-object/from16 v17, v24

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/j/d/c$b;

    .line 105
    iget-object v3, v2, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 106
    iget-object v4, v3, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    const-string v5, "Ignoring Animation set on "

    if-eqz v10, :cond_3d

    const/4 v3, 0x2

    .line 107
    invoke-static {v3}, Ld/j/d/y;->M(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Transitions."

    goto :goto_22

    :cond_3d
    const/4 v6, 0x2

    if-eqz v0, :cond_3f

    invoke-static {v6}, Ld/j/d/y;->M(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Animators."

    :goto_22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    invoke-virtual {v2}, Ld/j/d/c$c;->a()V

    goto :goto_21

    :cond_3f
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v13}, Ld/j/d/c$b;->c(Landroid/content/Context;)Ld/j/d/p;

    move-result-object v5

    invoke-static {v5}, Ld/b/k/r;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Ld/j/d/p;->a:Landroid/view/animation/Animation;

    invoke-static {v5}, Ld/b/k/r;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v3, v3, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 109
    sget-object v6, Ld/j/d/u0$d$c;->a:Ld/j/d/u0$d$c;

    if-eq v3, v6, :cond_40

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Ld/j/d/c$c;->a()V

    goto :goto_23

    :cond_40
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v3, Ld/j/d/q;

    invoke-direct {v3, v5, v11, v4}, Ld/j/d/q;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v5, Ld/j/d/f;

    invoke-direct {v5, v7, v11, v4, v2}, Ld/j/d/f;-><init>(Ld/j/d/c;Landroid/view/ViewGroup;Landroid/view/View;Ld/j/d/c$b;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :goto_23
    iget-object v3, v2, Ld/j/d/c$c;->b:Ld/g/i/a;

    .line 111
    new-instance v5, Ld/j/d/g;

    invoke-direct {v5, v7, v4, v11, v2}, Ld/j/d/g;-><init>(Ld/j/d/c;Landroid/view/View;Landroid/view/ViewGroup;Ld/j/d/c$b;)V

    invoke-virtual {v3, v5}, Ld/g/i/a;->b(Ld/g/i/a$a;)V

    goto/16 :goto_21

    .line 112
    :cond_41
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/j/d/u0$d;

    .line 113
    iget-object v2, v1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 114
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 115
    iget-object v1, v1, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 116
    invoke-virtual {v1, v2}, Ld/j/d/u0$d$c;->a(Landroid/view/View;)V

    goto :goto_24

    .line 117
    :cond_42
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2}, Ld/b/k/r;->T(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Ld/j/d/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public k(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ld/g/m/s;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Ld/j/d/c;->k(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Ld/e/a;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ld/e/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ld/e/g$b;

    invoke-virtual {p1}, Ld/e/g$b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Ld/e/g$d;

    invoke-virtual {v0}, Ld/e/g$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ld/e/g$d;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Ld/g/m/s;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ld/e/g$d;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
