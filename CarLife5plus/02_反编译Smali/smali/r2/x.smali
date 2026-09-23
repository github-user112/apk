.class public final Lr2/x;
.super La2/d;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic c:Lr2/b0;


# direct methods
.method public constructor <init>(Lr2/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr2/x;->c:Lr2/b0;

    .line 2
    .line 3
    const/16 p1, 0x13

    .line 4
    .line 5
    invoke-direct {p0, p1}, La2/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final h(ILf4/e;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/x;->c:Lr2/b0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lr2/b0;->e(ILf4/e;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(I)Lf4/e;
    .locals 47

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lr2/x;->c:Lr2/b0;

    iget-object v3, v2, Lr2/b0;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    iget-object v4, v2, Lr2/b0;->d:Lr2/u;

    .line 3
    invoke-virtual {v4}, Lr2/u;->getViewTreeOwners()Lr2/l;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v5, v5, Lr2/l;->a:Landroidx/lifecycle/t;

    .line 5
    invoke-interface {v5}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    iget-object v5, v5, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/o;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 7
    :goto_0
    sget-object v7, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    if-ne v5, v7, :cond_2

    .line 8
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 10
    new-instance v6, Lf4/e;

    invoke-direct {v6, v3}, Lf4/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v4, v1

    move-object v9, v2

    goto/16 :goto_58

    .line 11
    :cond_2
    invoke-virtual {v2}, Lr2/b0;->o()Ls/k;

    move-result-object v5

    invoke-virtual {v5, v1}, Ls/k;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly2/n;

    if-nez v5, :cond_3

    .line 12
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 14
    new-instance v6, Lf4/e;

    invoke-direct {v6, v3}, Lf4/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v7, v5, Ly2/n;->a:Ly2/m;

    .line 16
    invoke-virtual {v7}, Ly2/m;->k()Ly2/j;

    move-result-object v8

    iget-object v9, v7, Ly2/m;->c:Lq2/h0;

    sget-object v10, Ly2/r;->n:Ly2/u;

    .line 17
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 18
    invoke-virtual {v8, v10}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    .line 19
    :cond_4
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/16 v10, 0x22

    if-eqz v8, :cond_6

    .line 20
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v10, :cond_5

    .line 21
    invoke-static {v3}, Lc/a;->h(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v12

    goto :goto_2

    :cond_5
    const/4 v12, 0x1

    :goto_2
    if-nez v12, :cond_6

    move v4, v1

    move-object v9, v2

    const/4 v6, 0x0

    goto/16 :goto_58

    .line 22
    :cond_6
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    .line 23
    new-instance v13, Lf4/e;

    invoke-direct {v13, v12}, Lf4/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 24
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v10, :cond_7

    .line 25
    invoke-static {v12, v8}, Lc/a;->k(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_3

    :cond_7
    const/16 v15, 0x40

    .line 26
    invoke-virtual {v13, v15, v8}, Lf4/e;->f(IZ)V

    :goto_3
    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v15

    const/16 v16, 0x0

    instance-of v6, v15, Landroid/view/View;

    if-eqz v6, :cond_8

    move-object v6, v15

    check-cast v6, Landroid/view/View;

    goto :goto_4

    :cond_8
    move-object/from16 v6, v16

    .line 28
    :goto_4
    iput v8, v13, Lf4/e;->b:I

    .line 29
    invoke-virtual {v12, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    .line 30
    invoke-virtual {v7}, Ly2/m;->l()Ly2/m;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 31
    iget v6, v6, Ly2/m;->g:I

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    :cond_a
    move-object/from16 v6, v16

    :goto_5
    if-eqz v6, :cond_ab

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 33
    invoke-virtual {v4}, Lr2/u;->getSemanticsOwner()Ly2/o;

    move-result-object v15

    invoke-virtual {v15}, Ly2/o;->a()Ly2/m;

    move-result-object v15

    .line 34
    iget v15, v15, Ly2/m;->g:I

    if-ne v6, v15, :cond_b

    const/4 v6, -0x1

    .line 35
    :cond_b
    iput v6, v13, Lf4/e;->b:I

    .line 36
    invoke-virtual {v12, v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 37
    :goto_6
    iput v1, v13, Lf4/e;->c:I

    .line 38
    invoke-virtual {v12, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 39
    invoke-virtual {v2, v5}, Lr2/b0;->f(Ly2/n;)Landroid/graphics/Rect;

    move-result-object v5

    .line 40
    invoke-virtual {v12, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 41
    iget-object v5, v2, Lr2/b0;->M:Ls/u;

    iget-object v6, v2, Lr2/b0;->v:Ls/r0;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 42
    const-string v11, "android.view.View"

    invoke-virtual {v13, v11}, Lf4/e;->g(Ljava/lang/String;)V

    .line 43
    iget-object v11, v7, Ly2/m;->d:Ly2/j;

    iget-object v8, v11, Ly2/j;->a:Ls/h0;

    .line 44
    sget-object v10, Ly2/r;->E:Ly2/u;

    .line 45
    invoke-virtual {v8, v10}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 46
    const-string v10, "android.widget.EditText"

    invoke-virtual {v13, v10}, Lf4/e;->g(Ljava/lang/String;)V

    .line 47
    :cond_c
    sget-object v10, Ly2/r;->A:Ly2/u;

    .line 48
    invoke-virtual {v8, v10}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 49
    const-string v10, "android.widget.TextView"

    invoke-virtual {v13, v10}, Lf4/e;->g(Ljava/lang/String;)V

    .line 50
    :cond_d
    sget-object v10, Ly2/r;->x:Ly2/u;

    .line 51
    invoke-virtual {v8, v10}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_e

    move-object/from16 v10, v16

    .line 52
    :cond_e
    check-cast v10, Ly2/g;

    if-eqz v10, :cond_13

    .line 53
    iget v0, v10, Ly2/g;->a:I

    move-object/from16 v20, v3

    .line 54
    iget-boolean v3, v7, Ly2/m;->e:Z

    if-nez v3, :cond_f

    const/4 v3, 0x4

    .line 55
    invoke-static {v3, v7}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    move-result-object v19

    .line 56
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    move-object/from16 v21, v6

    if-eqz v19, :cond_14

    goto :goto_7

    :cond_f
    const/4 v3, 0x4

    move-object/from16 v21, v6

    .line 57
    :goto_7
    const-string v6, "AccessibilityNodeInfo.roleDescription"

    if-ne v0, v3, :cond_10

    const v0, 0x7f0e007e

    .line 58
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_10
    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    const v0, 0x7f0e007d

    .line 60
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 62
    :cond_11
    invoke-static {v0}, Lr2/j0;->w(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    if-ne v0, v6, :cond_12

    .line 63
    invoke-virtual {v7}, Ly2/m;->o()Z

    move-result v0

    if-nez v0, :cond_12

    .line 64
    iget-boolean v0, v11, Ly2/j;->c:Z

    if-eqz v0, :cond_14

    .line 65
    :cond_12
    invoke-virtual {v13, v3}, Lf4/e;->g(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    .line 66
    :cond_14
    :goto_8
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v12, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {v7}, Ly2/p;->f(Ly2/m;)Z

    move-result v0

    const/16 v3, 0x18

    if-lt v14, v3, :cond_15

    .line 69
    invoke-static {v12, v0}, La4/h;->s(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    :cond_15
    const/16 v0, 0x22

    if-lt v14, v0, :cond_16

    .line 70
    invoke-static/range {v20 .. v20}, Lc/a;->h(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    :goto_9
    const/4 v6, 0x4

    goto :goto_a

    :cond_16
    const/4 v0, 0x1

    goto :goto_9

    .line 71
    :goto_a
    invoke-static {v6, v7}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    move-result-object v14

    .line 72
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v6

    move/from16 v22, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v6, :cond_1e

    .line 73
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v3

    .line 74
    move-object/from16 v3, v23

    check-cast v3, Ly2/m;

    move/from16 v23, v6

    .line 75
    invoke-virtual {v2}, Lr2/b0;->o()Ls/k;

    move-result-object v6

    move-object/from16 v25, v14

    .line 76
    iget v14, v3, Ly2/m;->g:I

    .line 77
    invoke-virtual {v6, v14}, Ls/k;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 78
    invoke-virtual {v4}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    move-result-object v6

    invoke-virtual {v6}, Lr2/w0;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v6

    .line 79
    iget-object v3, v3, Ly2/m;->c:Lq2/h0;

    .line 80
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/i;

    const/4 v6, -0x1

    if-ne v14, v6, :cond_17

    goto :goto_e

    :cond_17
    if-eqz v3, :cond_18

    .line 81
    invoke-virtual {v12, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    goto :goto_d

    .line 82
    :cond_18
    invoke-virtual {v2}, Lr2/b0;->o()Ls/k;

    move-result-object v3

    invoke-virtual {v3, v14}, Ls/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly2/n;

    if-eqz v3, :cond_1a

    .line 83
    iget-object v3, v3, Ly2/n;->a:Ly2/m;

    if-eqz v3, :cond_1a

    .line 84
    invoke-virtual {v3}, Ly2/m;->k()Ly2/j;

    move-result-object v3

    .line 85
    sget-object v6, Ly2/r;->n:Ly2/u;

    .line 86
    iget-object v3, v3, Ly2/j;->a:Ls/h0;

    .line 87
    invoke-virtual {v3, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    move-object/from16 v3, v16

    .line 88
    :cond_19
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    invoke-static {v3, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_c

    :cond_1a
    const/4 v3, 0x0

    :goto_c
    if-nez v22, :cond_1b

    if-nez v3, :cond_1c

    .line 90
    :cond_1b
    invoke-virtual {v12, v4, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 91
    :cond_1c
    :goto_d
    invoke-virtual {v5, v14, v0}, Ls/u;->f(II)V

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    :goto_e
    add-int/lit8 v3, v24, 0x1

    move/from16 v6, v23

    move-object/from16 v14, v25

    goto :goto_b

    .line 92
    :cond_1e
    iget v0, v2, Lr2/b0;->n:I

    iget-object v3, v13, Lf4/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ne v1, v0, :cond_1f

    const/4 v0, 0x1

    .line 93
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 94
    sget-object v0, Lf4/c;->d:Lf4/c;

    invoke-virtual {v13, v0}, Lf4/e;->a(Lf4/c;)V

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    .line 95
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 96
    sget-object v0, Lf4/c;->c:Lf4/c;

    invoke-virtual {v13, v0}, Lf4/e;->a(Lf4/c;)V

    .line 97
    :goto_f
    invoke-static {v7}, Lr2/j0;->m(Ly2/m;)Lb3/g;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 98
    invoke-virtual {v4}, Lr2/u;->getFontFamilyResolver()Lf3/d;

    .line 99
    invoke-virtual {v4}, Lr2/u;->getDensity()Ln3/c;

    move-result-object v25

    .line 100
    iget-object v6, v2, Lr2/b0;->I:La2/b;

    .line 101
    new-instance v14, Landroid/text/SpannableString;

    move-object/from16 v28, v4

    .line 102
    iget-object v4, v0, Lb3/g;->b:Ljava/lang/String;

    move-object/from16 v29, v9

    iget-object v9, v0, Lb3/g;->a:Ljava/util/List;

    .line 103
    invoke-direct {v14, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v0, Lb3/g;->c:Ljava/util/ArrayList;

    move-object/from16 v30, v4

    if-eqz v0, :cond_2b

    .line 105
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v31, v2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v4, :cond_2a

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v32, v0

    .line 107
    move-object/from16 v0, v22

    check-cast v0, Lb3/e;

    move/from16 v33, v2

    .line 108
    iget-object v2, v0, Lb3/e;->a:Ljava/lang/Object;

    .line 109
    check-cast v2, Lb3/e0;

    move/from16 v34, v4

    .line 110
    iget v4, v0, Lb3/e;->b:I

    .line 111
    iget v0, v0, Lb3/e;->c:I

    move-object/from16 v35, v5

    .line 112
    iget-object v5, v2, Lb3/e0;->a:Lm3/o;

    move-object/from16 v37, v10

    move-object/from16 v36, v11

    .line 113
    invoke-interface {v5}, Lm3/o;->b()J

    move-result-wide v10

    move-object v5, v12

    move-object/from16 v38, v13

    .line 114
    iget-wide v12, v2, Lb3/e0;->b:J

    move-object/from16 v39, v5

    .line 115
    iget-object v5, v2, Lb3/e0;->c:Lf3/k;

    move-object/from16 v40, v5

    .line 116
    iget-object v5, v2, Lb3/e0;->d:Lf3/i;

    move-wide/from16 v23, v12

    .line 117
    iget-object v12, v2, Lb3/e0;->j:Lm3/p;

    .line 118
    iget-object v13, v2, Lb3/e0;->k:Li3/b;

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    .line 119
    iget-wide v7, v2, Lb3/e0;->l:J

    move-wide/from16 v43, v7

    .line 120
    iget-object v7, v2, Lb3/e0;->m:Lm3/l;

    .line 121
    iget-object v2, v2, Lb3/e0;->a:Lm3/o;

    move-object v8, v2

    .line 122
    invoke-interface {v8}, Lm3/o;->b()J

    move-result-wide v1

    .line 123
    invoke-static {v10, v11, v1, v2}, Ly1/q;->c(JJ)Z

    move-result v1

    const-wide/16 v45, 0x10

    if-eqz v1, :cond_20

    move-object v2, v8

    goto :goto_12

    :cond_20
    cmp-long v1, v10, v45

    if-eqz v1, :cond_21

    .line 124
    new-instance v1, Lm3/c;

    invoke-direct {v1, v10, v11}, Lm3/c;-><init>(J)V

    :goto_11
    move-object v2, v1

    goto :goto_12

    :cond_21
    sget-object v1, Lm3/n;->a:Lm3/n;

    goto :goto_11

    .line 125
    :goto_12
    invoke-interface {v2}, Lm3/o;->b()J

    move-result-wide v1

    .line 126
    invoke-static {v14, v1, v2, v4, v0}, Lc7/a;->S(Landroid/text/Spannable;JII)V

    move/from16 v27, v0

    move/from16 v26, v4

    move-object/from16 v22, v14

    .line 127
    invoke-static/range {v22 .. v27}, Lc7/a;->T(Landroid/text/Spannable;JLn3/c;II)V

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    if-nez v40, :cond_23

    if-eqz v5, :cond_22

    goto :goto_13

    :cond_22
    const/16 v4, 0x21

    goto :goto_16

    :cond_23
    :goto_13
    if-nez v40, :cond_24

    .line 128
    sget-object v4, Lf3/k;->c:Lf3/k;

    goto :goto_14

    :cond_24
    move-object/from16 v4, v40

    :goto_14
    if-eqz v5, :cond_25

    .line 129
    iget v5, v5, Lf3/i;->a:I

    goto :goto_15

    :cond_25
    const/4 v5, 0x0

    .line 130
    :goto_15
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-static {v4, v5}, Li2/c;->r(Lf3/k;I)I

    move-result v4

    invoke-direct {v8, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    .line 131
    invoke-virtual {v0, v8, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_16
    if-eqz v7, :cond_27

    .line 132
    iget v5, v7, Lm3/l;->a:I

    or-int/lit8 v7, v5, 0x1

    if-ne v7, v5, :cond_26

    .line 133
    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_26
    or-int/lit8 v7, v5, 0x2

    if-ne v7, v5, :cond_27

    .line 134
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_27
    if-eqz v12, :cond_28

    .line 135
    new-instance v5, Landroid/text/style/ScaleXSpan;

    .line 136
    iget v7, v12, Lm3/p;->a:F

    .line 137
    invoke-direct {v5, v7}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 138
    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    :cond_28
    invoke-static {v0, v13, v1, v2}, Lc7/a;->U(Landroid/text/Spannable;Li3/b;II)V

    cmp-long v5, v43, v45

    if-eqz v5, :cond_29

    .line 140
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static/range {v43 .. v44}, Ly1/h0;->C(J)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 141
    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_29
    add-int/lit8 v2, v33, 0x1

    move/from16 v1, p1

    move-object v14, v0

    move-object/from16 v0, v32

    move/from16 v4, v34

    move-object/from16 v5, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v13, v38

    move-object/from16 v12, v39

    move-object/from16 v7, v41

    move-object/from16 v8, v42

    goto/16 :goto_10

    :cond_2a
    :goto_17
    move-object/from16 v35, v5

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move-object/from16 v37, v10

    move-object/from16 v36, v11

    move-object/from16 v39, v12

    move-object/from16 v38, v13

    move-object v0, v14

    goto :goto_18

    :cond_2b
    move-object/from16 v31, v2

    goto :goto_17

    .line 142
    :goto_18
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    .line 143
    sget-object v2, Ls8/w;->a:Ls8/w;

    if-eqz v9, :cond_2d

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v5, :cond_2e

    .line 146
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 147
    move-object v10, v8

    check-cast v10, Lb3/e;

    .line 148
    iget-object v11, v10, Lb3/e;->a:Ljava/lang/Object;

    .line 149
    instance-of v11, v11, Lb3/q0;

    if-eqz v11, :cond_2c

    .line 150
    iget v11, v10, Lb3/e;->b:I

    .line 151
    iget v10, v10, Lb3/e;->c:I

    const/4 v12, 0x0

    .line 152
    invoke-static {v12, v1, v11, v10}, Lb3/h;->b(IIII)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 153
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_2d
    move-object v4, v2

    .line 154
    :cond_2e
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v1, :cond_30

    .line 155
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 156
    check-cast v7, Lb3/e;

    .line 157
    iget-object v8, v7, Lb3/e;->a:Ljava/lang/Object;

    .line 158
    check-cast v8, Lb3/q0;

    .line 159
    iget v10, v7, Lb3/e;->b:I

    .line 160
    iget v7, v7, Lb3/e;->c:I

    .line 161
    instance-of v11, v8, Lb3/q0;

    if-eqz v11, :cond_2f

    .line 162
    new-instance v11, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 163
    iget-object v8, v8, Lb3/q0;->a:Ljava/lang/String;

    .line 164
    invoke-direct {v11, v8}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v11}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v8

    const/16 v11, 0x21

    .line 166
    invoke-virtual {v0, v8, v10, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 167
    :cond_2f
    new-instance v0, Lac/p;

    .line 168
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 169
    throw v0

    .line 170
    :cond_30
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v9, :cond_32

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v5, :cond_33

    .line 173
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 174
    move-object v10, v8

    check-cast v10, Lb3/e;

    .line 175
    iget-object v11, v10, Lb3/e;->a:Ljava/lang/Object;

    .line 176
    instance-of v11, v11, Lb3/p0;

    if-eqz v11, :cond_31

    .line 177
    iget v11, v10, Lb3/e;->b:I

    .line 178
    iget v10, v10, Lb3/e;->c:I

    const/4 v12, 0x0

    .line 179
    invoke-static {v12, v1, v11, v10}, Lb3/h;->b(IIII)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 180
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_32
    move-object v4, v2

    .line 181
    :cond_33
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v1, :cond_35

    .line 182
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 183
    check-cast v7, Lb3/e;

    .line 184
    iget-object v8, v7, Lb3/e;->a:Ljava/lang/Object;

    .line 185
    check-cast v8, Lb3/p0;

    .line 186
    iget v10, v7, Lb3/e;->b:I

    .line 187
    iget v7, v7, Lb3/e;->c:I

    .line 188
    iget-object v11, v6, La2/b;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/WeakHashMap;

    .line 189
    invoke-virtual {v11, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_34

    .line 190
    new-instance v12, Landroid/text/style/URLSpan;

    .line 191
    iget-object v13, v8, Lb3/p0;->a:Ljava/lang/String;

    .line 192
    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v11, v8, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_34
    check-cast v12, Landroid/text/style/URLSpan;

    const/16 v11, 0x21

    .line 195
    invoke-virtual {v0, v12, v10, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 196
    :cond_35
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v9, :cond_37

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_37

    .line 199
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 200
    move-object v8, v7

    check-cast v8, Lb3/e;

    .line 201
    iget-object v10, v8, Lb3/e;->a:Ljava/lang/Object;

    .line 202
    instance-of v10, v10, Lb3/m;

    if-eqz v10, :cond_36

    .line 203
    iget v10, v8, Lb3/e;->b:I

    .line 204
    iget v8, v8, Lb3/e;->c:I

    const/4 v12, 0x0

    .line 205
    invoke-static {v12, v1, v10, v8}, Lb3/h;->b(IIII)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 206
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 207
    :cond_37
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v1, :cond_3c

    .line 208
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 209
    check-cast v5, Lb3/e;

    .line 210
    iget v7, v5, Lb3/e;->b:I

    iget-object v8, v5, Lb3/e;->a:Ljava/lang/Object;

    iget v9, v5, Lb3/e;->c:I

    if-eq v7, v9, :cond_3b

    .line 211
    move-object v10, v8

    check-cast v10, Lb3/m;

    .line 212
    instance-of v11, v10, Lb3/l;

    if-eqz v11, :cond_39

    .line 213
    new-instance v5, Lb3/e;

    const-string v10, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url"

    invoke-static {v8, v10}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lb3/l;

    invoke-direct {v5, v7, v9, v8}, Lb3/e;-><init>(IILjava/lang/Object;)V

    .line 214
    iget-object v10, v6, La2/b;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/WeakHashMap;

    .line 215
    invoke-virtual {v10, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_38

    .line 216
    new-instance v11, Landroid/text/style/URLSpan;

    .line 217
    iget-object v8, v8, Lb3/l;->a:Ljava/lang/String;

    .line 218
    invoke-direct {v11, v8}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v10, v5, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_38
    check-cast v11, Landroid/text/style/URLSpan;

    const/16 v5, 0x21

    .line 221
    invoke-virtual {v0, v11, v7, v9, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1f

    .line 222
    :cond_39
    iget-object v8, v6, La2/b;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/WeakHashMap;

    .line 223
    invoke-virtual {v8, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3a

    .line 224
    new-instance v11, Lj3/g;

    invoke-direct {v11, v10}, Lj3/g;-><init>(Lb3/m;)V

    .line 225
    invoke-virtual {v8, v5, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3a
    check-cast v11, Landroid/text/style/ClickableSpan;

    const/16 v5, 0x21

    .line 227
    invoke-virtual {v0, v11, v7, v9, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1f

    :cond_3b
    const/16 v5, 0x21

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 228
    :cond_3c
    invoke-static {v0}, Lr2/b0;->J(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    goto :goto_20

    :cond_3d
    move-object/from16 v31, v2

    move-object/from16 v28, v4

    move-object/from16 v35, v5

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move-object/from16 v29, v9

    move-object/from16 v37, v10

    move-object/from16 v36, v11

    move-object/from16 v39, v12

    move-object/from16 v38, v13

    move-object/from16 v0, v16

    .line 229
    :goto_20
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 230
    sget-object v0, Ly2/r;->K:Ly2/u;

    move-object/from16 v1, v42

    .line 231
    invoke-virtual {v1, v0}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v5, v39

    const/4 v2, 0x1

    .line 232
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 233
    invoke-virtual {v1, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3e

    move-object/from16 v0, v16

    .line 234
    :cond_3e
    check-cast v0, Ljava/lang/CharSequence;

    .line 235
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :goto_21
    move-object/from16 v0, v41

    goto :goto_22

    :cond_3f
    move-object/from16 v5, v39

    goto :goto_21

    .line 236
    :goto_22
    invoke-static {v0, v15}, Lr2/j0;->l(Ly2/m;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 237
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v4, v6, :cond_40

    .line 238
    invoke-static {v3, v2}, Le4/h;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 239
    :cond_40
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 240
    :goto_23
    invoke-static {v0}, Lr2/j0;->k(Ly2/m;)Z

    move-result v2

    .line 241
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 242
    sget-object v2, Ly2/r;->I:Ly2/u;

    .line 243
    invoke-virtual {v1, v2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_41

    move-object/from16 v2, v16

    .line 244
    :cond_41
    check-cast v2, La3/a;

    if-eqz v2, :cond_43

    .line 245
    sget-object v4, La3/a;->a:La3/a;

    if-ne v2, v4, :cond_42

    const/4 v4, 0x1

    .line 246
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_24

    .line 247
    :cond_42
    sget-object v4, La3/a;->b:La3/a;

    if-ne v2, v4, :cond_43

    const/4 v12, 0x0

    .line 248
    invoke-virtual {v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 249
    :cond_43
    :goto_24
    sget-object v2, Ly2/r;->H:Ly2/u;

    .line 250
    invoke-virtual {v1, v2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_44

    move-object/from16 v2, v16

    .line 251
    :cond_44
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v37, :cond_45

    move-object/from16 v10, v37

    const/4 v6, 0x4

    goto :goto_25

    :cond_45
    move-object/from16 v10, v37

    .line 252
    iget v4, v10, Ly2/g;->a:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_46

    .line 253
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    goto :goto_26

    .line 254
    :cond_46
    :goto_25
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_26
    move-object/from16 v2, v36

    goto :goto_27

    :cond_47
    move-object/from16 v10, v37

    const/4 v6, 0x4

    goto :goto_26

    .line 255
    :goto_27
    iget-boolean v4, v2, Ly2/j;->c:Z

    if-eqz v4, :cond_48

    .line 256
    invoke-static {v6, v0}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    move-result-object v4

    .line 257
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 258
    :cond_48
    sget-object v4, Ly2/r;->a:Ly2/u;

    .line 259
    invoke-virtual {v1, v4}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_49

    move-object/from16 v4, v16

    .line 260
    :cond_49
    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4a

    .line 261
    invoke-static {v4}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_28

    :cond_4a
    move-object/from16 v4, v16

    .line 262
    :goto_28
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 263
    :cond_4b
    sget-object v4, Ly2/r;->y:Ly2/u;

    .line 264
    invoke-virtual {v1, v4}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4c

    move-object/from16 v4, v16

    .line 265
    :cond_4c
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4f

    move-object v6, v0

    :goto_29
    if-eqz v6, :cond_4e

    .line 266
    iget-object v7, v6, Ly2/m;->d:Ly2/j;

    .line 267
    sget-object v8, Ly2/s;->a:Ly2/u;

    .line 268
    iget-object v9, v7, Ly2/j;->a:Ls/h0;

    .line 269
    invoke-virtual {v9, v8}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 270
    invoke-virtual {v7, v8}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_2a

    .line 271
    :cond_4d
    invoke-virtual {v6}, Ly2/m;->l()Ly2/m;

    move-result-object v6

    goto :goto_29

    :cond_4e
    const/4 v6, 0x0

    :goto_2a
    if-eqz v6, :cond_4f

    .line 272
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 273
    :cond_4f
    sget-object v4, Ly2/r;->h:Ly2/u;

    .line 274
    invoke-virtual {v1, v4}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_50

    move-object/from16 v4, v16

    .line 275
    :cond_50
    check-cast v4, Lr8/z;

    const/16 v6, 0x1c

    if-eqz v4, :cond_52

    .line 276
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_51

    const/4 v4, 0x1

    .line 277
    invoke-static {v3, v4}, Landroid/support/v4/media/session/o;->D(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_2c

    :cond_51
    move-object/from16 v7, v38

    const/4 v4, 0x1

    const/4 v8, 0x2

    .line 278
    invoke-virtual {v7, v8, v4}, Lf4/e;->f(IZ)V

    :goto_2b
    move/from16 v4, p1

    const/4 v8, -0x1

    goto :goto_2d

    :cond_52
    :goto_2c
    move-object/from16 v7, v38

    goto :goto_2b

    :goto_2d
    if-eq v4, v8, :cond_54

    .line 279
    iget v9, v0, Ly2/m;->g:I

    move-object/from16 v11, v35

    .line 280
    invoke-virtual {v11, v9}, Ls/u;->d(I)I

    move-result v9

    if-eq v9, v8, :cond_53

    .line 281
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v8, v11, :cond_54

    .line 282
    invoke-static {v5, v9}, La4/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    goto :goto_2e

    .line 283
    :cond_53
    const-string v8, "AccessibilityDelegate"

    .line 284
    const-string v9, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?"

    .line 285
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_54
    :goto_2e
    sget-object v8, Ly2/r;->J:Ly2/u;

    .line 287
    invoke-virtual {v1, v8}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v8

    .line 288
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 289
    sget-object v8, Ly2/r;->M:Ly2/u;

    .line 290
    invoke-virtual {v1, v8}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v8

    .line 291
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 292
    sget-object v8, Ly2/r;->N:Ly2/u;

    invoke-static {v2, v8}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_55

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2f

    :cond_55
    const/4 v8, -0x1

    .line 293
    :goto_2f
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 294
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v8

    .line 295
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 296
    sget-object v8, Ly2/r;->k:Ly2/u;

    .line 297
    invoke-virtual {v1, v8}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v9

    .line 298
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 299
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 300
    invoke-virtual {v2, v8}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 301
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 302
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_56

    const/4 v9, 0x2

    .line 303
    invoke-virtual {v3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    move-object/from16 v9, v31

    .line 304
    iput v4, v9, Lr2/b0;->o:I

    :goto_30
    const/4 v11, 0x1

    goto :goto_31

    :cond_56
    move-object/from16 v9, v31

    const/4 v11, 0x1

    .line 305
    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_31

    :cond_57
    move-object/from16 v9, v31

    goto :goto_30

    .line 306
    :goto_31
    invoke-static {v0}, Ly2/p;->e(Ly2/m;)Z

    move-result v12

    xor-int/2addr v12, v11

    .line 307
    invoke-virtual {v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 308
    sget-object v11, Ly2/r;->j:Ly2/u;

    invoke-static {v2, v11}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, La2/f;->N(Ljava/lang/Object;)V

    const/4 v12, 0x0

    .line 309
    invoke-virtual {v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 310
    sget-object v11, Ly2/i;->b:Ly2/u;

    invoke-static {v2, v11}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly2/a;

    const/4 v13, 0x3

    if-eqz v11, :cond_60

    .line 311
    sget-object v14, Ly2/r;->H:Ly2/u;

    invoke-static {v2, v14}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v14

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v14, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v10, :cond_59

    :cond_58
    const/4 v12, 0x0

    goto :goto_32

    .line 312
    :cond_59
    iget v14, v10, Ly2/g;->a:I

    const/4 v12, 0x4

    if-ne v14, v12, :cond_58

    const/4 v12, 0x1

    :goto_32
    if-nez v12, :cond_5d

    if-nez v10, :cond_5b

    :cond_5a
    const/4 v10, 0x0

    goto :goto_33

    :cond_5b
    iget v10, v10, Ly2/g;->a:I

    if-ne v10, v13, :cond_5a

    const/4 v10, 0x1

    :goto_33
    if-eqz v10, :cond_5c

    goto :goto_34

    :cond_5c
    const/4 v10, 0x0

    goto :goto_35

    :cond_5d
    :goto_34
    const/4 v10, 0x1

    :goto_35
    if-eqz v10, :cond_5f

    if-eqz v10, :cond_5e

    if-nez v6, :cond_5e

    goto :goto_36

    :cond_5e
    const/4 v6, 0x0

    goto :goto_37

    :cond_5f
    :goto_36
    const/4 v6, 0x1

    .line 313
    :goto_37
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 314
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 315
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 316
    new-instance v6, Lf4/c;

    .line 317
    iget-object v10, v11, Ly2/a;->a:Ljava/lang/String;

    const/16 v11, 0x10

    .line 318
    invoke-direct {v6, v11, v10}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 319
    invoke-virtual {v7, v6}, Lf4/e;->a(Lf4/c;)V

    :cond_60
    const/4 v12, 0x0

    .line 320
    invoke-virtual {v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 321
    sget-object v6, Ly2/i;->c:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/a;

    if-eqz v6, :cond_61

    const/4 v11, 0x1

    .line 322
    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 323
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 324
    new-instance v10, Lf4/c;

    const/16 v11, 0x20

    .line 325
    iget-object v6, v6, Ly2/a;->a:Ljava/lang/String;

    .line 326
    invoke-direct {v10, v11, v6}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 327
    invoke-virtual {v7, v10}, Lf4/e;->a(Lf4/c;)V

    .line 328
    :cond_61
    sget-object v6, Ly2/i;->p:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/a;

    if-eqz v6, :cond_62

    .line 329
    new-instance v10, Lf4/c;

    const/16 v11, 0x4000

    .line 330
    iget-object v6, v6, Ly2/a;->a:Ljava/lang/String;

    .line 331
    invoke-direct {v10, v11, v6}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 332
    invoke-virtual {v7, v10}, Lf4/e;->a(Lf4/c;)V

    .line 333
    :cond_62
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 334
    sget-object v6, Ly2/i;->j:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/a;

    if-eqz v6, :cond_63

    .line 335
    new-instance v10, Lf4/c;

    const/high16 v11, 0x200000

    .line 336
    iget-object v6, v6, Ly2/a;->a:Ljava/lang/String;

    .line 337
    invoke-direct {v10, v11, v6}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 338
    invoke-virtual {v7, v10}, Lf4/e;->a(Lf4/c;)V

    .line 339
    :cond_63
    sget-object v6, Ly2/i;->o:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/a;

    if-eqz v6, :cond_64

    .line 340
    new-instance v10, Lf4/c;

    const v11, 0x1020054

    .line 341
    iget-object v6, v6, Ly2/a;->a:Ljava/lang/String;

    .line 342
    invoke-direct {v10, v11, v6}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 343
    invoke-virtual {v7, v10}, Lf4/e;->a(Lf4/c;)V

    .line 344
    :cond_64
    sget-object v6, Ly2/i;->q:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/a;

    if-eqz v6, :cond_65

    .line 345
    new-instance v10, Lf4/c;

    const/high16 v11, 0x10000

    .line 346
    iget-object v6, v6, Ly2/a;->a:Ljava/lang/String;

    .line 347
    invoke-direct {v10, v11, v6}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 348
    invoke-virtual {v7, v10}, Lf4/e;->a(Lf4/c;)V

    .line 349
    :cond_65
    sget-object v6, Ly2/i;->r:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/a;

    if-eqz v6, :cond_67

    .line 350
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_67

    .line 351
    invoke-virtual/range {v28 .. v28}, Lr2/u;->getClipboardManager()Lr2/h;

    move-result-object v10

    .line 352
    iget-object v10, v10, Lr2/h;->a:Landroid/content/ClipboardManager;

    .line 353
    invoke-virtual {v10}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v10

    if-eqz v10, :cond_66

    const-string v11, "text/*"

    invoke-virtual {v10, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v10

    goto :goto_38

    :cond_66
    const/4 v10, 0x0

    :goto_38
    if-eqz v10, :cond_67

    .line 354
    new-instance v10, Lf4/c;

    const v11, 0x8000

    .line 355
    iget-object v6, v6, Ly2/a;->a:Ljava/lang/String;

    .line 356
    invoke-direct {v10, v11, v6}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 357
    invoke-virtual {v7, v10}, Lf4/e;->a(Lf4/c;)V

    .line 358
    :cond_67
    invoke-static {v0}, Lr2/b0;->p(Ly2/m;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_69

    .line 359
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_68

    goto :goto_39

    :cond_68
    const/4 v6, 0x0

    goto :goto_3a

    :cond_69
    :goto_39
    const/4 v6, 0x1

    :goto_3a
    if-nez v6, :cond_74

    .line 360
    invoke-virtual {v9, v0}, Lr2/b0;->n(Ly2/m;)I

    move-result v6

    .line 361
    invoke-virtual {v9, v0}, Lr2/b0;->m(Ly2/m;)I

    move-result v10

    .line 362
    invoke-virtual {v5, v6, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 363
    sget-object v6, Ly2/i;->i:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/a;

    .line 364
    new-instance v10, Lf4/c;

    if-eqz v6, :cond_6a

    .line 365
    iget-object v6, v6, Ly2/a;->a:Ljava/lang/String;

    goto :goto_3b

    :cond_6a
    move-object/from16 v6, v16

    :goto_3b
    const/high16 v11, 0x20000

    .line 366
    invoke-direct {v10, v11, v6}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 367
    invoke-virtual {v7, v10}, Lf4/e;->a(Lf4/c;)V

    const/16 v6, 0x100

    .line 368
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v6, 0x200

    .line 369
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v6, 0xb

    .line 370
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 371
    sget-object v6, Ly2/r;->a:Ly2/u;

    invoke-static {v2, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_6c

    .line 372
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6b

    goto :goto_3c

    :cond_6b
    const/4 v6, 0x0

    goto :goto_3d

    :cond_6c
    :goto_3c
    const/4 v6, 0x1

    :goto_3d
    if-eqz v6, :cond_74

    .line 373
    sget-object v6, Ly2/i;->a:Ly2/u;

    .line 374
    invoke-virtual {v1, v6}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 375
    sget-object v6, Ly2/r;->E:Ly2/u;

    .line 376
    invoke-virtual {v1, v6}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 377
    invoke-static {v2, v8}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_42

    .line 378
    :cond_6d
    invoke-virtual/range {v29 .. v29}, Lq2/h0;->v()Lq2/h0;

    move-result-object v1

    :goto_3e
    if-eqz v1, :cond_70

    .line 379
    invoke-virtual {v1}, Lq2/h0;->x()Ly2/j;

    move-result-object v6

    if-eqz v6, :cond_6e

    .line 380
    iget-boolean v10, v6, Ly2/j;->c:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6e

    .line 381
    sget-object v10, Ly2/r;->E:Ly2/u;

    .line 382
    iget-object v6, v6, Ly2/j;->a:Ls/h0;

    .line 383
    invoke-virtual {v6, v10}, Ls/h0;->c(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    const/4 v6, 0x1

    goto :goto_3f

    :cond_6e
    const/4 v6, 0x0

    :goto_3f
    if-eqz v6, :cond_6f

    goto :goto_40

    .line 384
    :cond_6f
    invoke-virtual {v1}, Lq2/h0;->v()Lq2/h0;

    move-result-object v1

    goto :goto_3e

    :cond_70
    move-object/from16 v1, v16

    :goto_40
    if-eqz v1, :cond_73

    .line 385
    invoke-virtual {v1}, Lq2/h0;->x()Ly2/j;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 386
    iget-object v1, v1, Ly2/j;->a:Ls/h0;

    .line 387
    invoke-virtual {v1, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_71

    move-object/from16 v1, v16

    .line 388
    :cond_71
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_41

    :cond_72
    const/4 v1, 0x0

    :goto_41
    if-nez v1, :cond_73

    :goto_42
    const/4 v1, 0x1

    goto :goto_43

    :cond_73
    const/4 v1, 0x0

    :goto_43
    if-nez v1, :cond_74

    .line 389
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v1

    or-int/lit8 v1, v1, 0x14

    .line 390
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 391
    :cond_74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_7a

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    const-string v6, "androidx.compose.ui.semantics.id"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v7}, Lf4/e;->e()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_76

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_75

    goto :goto_44

    :cond_75
    const/4 v6, 0x0

    goto :goto_45

    :cond_76
    :goto_44
    const/4 v6, 0x1

    :goto_45
    if-nez v6, :cond_77

    .line 395
    sget-object v6, Ly2/i;->a:Ly2/u;

    invoke-virtual {v2, v6}, Ly2/j;->b(Ly2/u;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 396
    const-string v6, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_77
    sget-object v6, Ly2/r;->y:Ly2/u;

    invoke-virtual {v2, v6}, Ly2/j;->b(Ly2/u;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 398
    const-string v2, "androidx.compose.ui.semantics.testTag"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_78
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v2

    sget-object v6, Ly2/r;->O:Ly2/u;

    invoke-virtual {v2, v6}, Ly2/j;->b(Ly2/u;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 400
    const-string v2, "androidx.compose.ui.semantics.shapeType"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v2, "androidx.compose.ui.semantics.shapeRect"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v2, "androidx.compose.ui.semantics.shapeCorners"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v2, "androidx.compose.ui.semantics.shapeRegion"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_79
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_7a

    .line 406
    invoke-static {v3, v1}, La7/b;->v(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    .line 407
    :cond_7a
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v1

    sget-object v2, Ly2/r;->c:Ly2/u;

    invoke-static {v1, v2}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/f;

    if-eqz v1, :cond_7e

    .line 408
    iget v2, v1, Ly2/f;->a:F

    .line 409
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v5

    sget-object v6, Ly2/i;->h:Ly2/u;

    invoke-virtual {v5, v6}, Ly2/j;->b(Ly2/u;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 410
    const-string v5, "android.widget.SeekBar"

    invoke-virtual {v7, v5}, Lf4/e;->g(Ljava/lang/String;)V

    goto :goto_46

    .line 411
    :cond_7b
    const-string v5, "android.widget.ProgressBar"

    invoke-virtual {v7, v5}, Lf4/e;->g(Ljava/lang/String;)V

    .line 412
    :goto_46
    sget-object v5, Ly2/f;->d:Ly2/f;

    .line 413
    sget-object v5, Ly2/f;->d:Ly2/f;

    if-eq v1, v5, :cond_7c

    .line 414
    invoke-virtual {v1}, Ly2/f;->a()Ll9/a;

    move-result-object v5

    .line 415
    iget v5, v5, Ll9/a;->a:F

    .line 416
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 417
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 418
    invoke-virtual {v1}, Ly2/f;->a()Ll9/a;

    move-result-object v8

    .line 419
    iget v8, v8, Ll9/a;->b:F

    .line 420
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 421
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 422
    new-instance v10, Lf4/d;

    const/4 v11, 0x1

    .line 423
    invoke-static {v11, v5, v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v5

    invoke-direct {v10, v5}, Lf4/d;-><init>(Ljava/lang/Object;)V

    .line 424
    iget-object v5, v10, Lf4/d;->a:Ljava/lang/Object;

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 425
    :cond_7c
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v5

    invoke-virtual {v5, v6}, Ly2/j;->b(Ly2/u;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 426
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 427
    invoke-virtual {v1}, Ly2/f;->a()Ll9/a;

    move-result-object v5

    .line 428
    iget v5, v5, Ll9/a;->b:F

    .line 429
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 430
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ly2/f;->a()Ll9/a;

    move-result-object v6

    .line 431
    iget v6, v6, Ll9/a;->a:F

    .line 432
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 433
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Li9/a;->j(FF)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_7d

    .line 434
    sget-object v5, Lf4/c;->e:Lf4/c;

    invoke-virtual {v7, v5}, Lf4/e;->a(Lf4/c;)V

    .line 435
    :cond_7d
    invoke-virtual {v1}, Ly2/f;->a()Ll9/a;

    move-result-object v5

    .line 436
    iget v5, v5, Ll9/a;->a:F

    .line 437
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 438
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ly2/f;->a()Ll9/a;

    move-result-object v1

    .line 439
    iget v1, v1, Ll9/a;->b:F

    .line 440
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v5, v1}, Li9/a;->k(FF)F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_7e

    .line 442
    sget-object v1, Lf4/c;->f:Lf4/c;

    invoke-virtual {v7, v1}, Lf4/e;->a(Lf4/c;)V

    .line 443
    :cond_7e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v1, v11, :cond_7f

    .line 444
    invoke-static {v7, v0}, Lr2/j0;->f(Lf4/e;Ly2/m;)V

    .line 445
    :cond_7f
    invoke-static {v7, v0}, Lp4/e;->A(Lf4/e;Ly2/m;)V

    .line 446
    invoke-static {v7, v0}, Lp4/e;->B(Lf4/e;Ly2/m;)V

    .line 447
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v2

    sget-object v5, Ly2/r;->t:Ly2/u;

    invoke-static {v2, v5}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly2/h;

    .line 448
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v5

    sget-object v6, Ly2/i;->d:Ly2/u;

    invoke-static {v5, v6}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly2/a;

    const/4 v6, 0x0

    if-eqz v2, :cond_8b

    if-eqz v5, :cond_8b

    .line 449
    invoke-virtual {v0}, Ly2/m;->k()Ly2/j;

    move-result-object v8

    sget-object v10, Ly2/r;->f:Ly2/u;

    .line 450
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 451
    invoke-virtual {v8, v10}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_80

    move-object/from16 v8, v16

    :cond_80
    if-nez v8, :cond_83

    .line 452
    invoke-virtual {v0}, Ly2/m;->k()Ly2/j;

    move-result-object v8

    sget-object v10, Ly2/r;->e:Ly2/u;

    .line 453
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 454
    invoke-virtual {v8, v10}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_81

    move-object/from16 v8, v16

    :cond_81
    if-eqz v8, :cond_82

    goto :goto_47

    :cond_82
    const/4 v8, 0x0

    goto :goto_48

    :cond_83
    :goto_47
    const/4 v8, 0x1

    :goto_48
    if-nez v8, :cond_84

    .line 455
    const-string v8, "android.widget.HorizontalScrollView"

    invoke-virtual {v7, v8}, Lf4/e;->g(Ljava/lang/String;)V

    .line 456
    :cond_84
    iget-object v8, v2, Ly2/h;->b:Lf9/a;

    .line 457
    invoke-interface {v8}, Lf9/a;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v6

    if-lez v8, :cond_85

    const/4 v11, 0x1

    .line 458
    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 459
    :cond_85
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 460
    invoke-static {v2}, Lr2/b0;->u(Ly2/h;)Z

    move-result v8

    sget-object v10, Ln3/m;->b:Ln3/m;

    if-eqz v8, :cond_88

    .line 461
    sget-object v8, Lf4/c;->e:Lf4/c;

    invoke-virtual {v7, v8}, Lf4/e;->a(Lf4/c;)V

    move-object/from16 v8, v29

    .line 462
    iget-object v11, v8, Lq2/h0;->y:Ln3/m;

    if-ne v11, v10, :cond_86

    const/4 v11, 0x1

    goto :goto_49

    :cond_86
    const/4 v11, 0x0

    :goto_49
    if-nez v11, :cond_87

    .line 463
    sget-object v11, Lf4/c;->j:Lf4/c;

    goto :goto_4a

    .line 464
    :cond_87
    sget-object v11, Lf4/c;->h:Lf4/c;

    .line 465
    :goto_4a
    invoke-virtual {v7, v11}, Lf4/e;->a(Lf4/c;)V

    goto :goto_4b

    :cond_88
    move-object/from16 v8, v29

    .line 466
    :goto_4b
    invoke-static {v2}, Lr2/b0;->t(Ly2/h;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 467
    sget-object v2, Lf4/c;->f:Lf4/c;

    invoke-virtual {v7, v2}, Lf4/e;->a(Lf4/c;)V

    .line 468
    iget-object v2, v8, Lq2/h0;->y:Ln3/m;

    if-ne v2, v10, :cond_89

    const/4 v2, 0x1

    goto :goto_4c

    :cond_89
    const/4 v2, 0x0

    :goto_4c
    if-nez v2, :cond_8a

    .line 469
    sget-object v2, Lf4/c;->h:Lf4/c;

    goto :goto_4d

    .line 470
    :cond_8a
    sget-object v2, Lf4/c;->j:Lf4/c;

    .line 471
    :goto_4d
    invoke-virtual {v7, v2}, Lf4/e;->a(Lf4/c;)V

    .line 472
    :cond_8b
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v2

    sget-object v8, Ly2/r;->u:Ly2/u;

    invoke-static {v2, v8}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly2/h;

    if-eqz v2, :cond_93

    if-eqz v5, :cond_93

    .line 473
    invoke-virtual {v0}, Ly2/m;->k()Ly2/j;

    move-result-object v5

    sget-object v8, Ly2/r;->f:Ly2/u;

    .line 474
    iget-object v5, v5, Ly2/j;->a:Ls/h0;

    .line 475
    invoke-virtual {v5, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8c

    move-object/from16 v5, v16

    :cond_8c
    if-nez v5, :cond_8f

    .line 476
    invoke-virtual {v0}, Ly2/m;->k()Ly2/j;

    move-result-object v5

    sget-object v8, Ly2/r;->e:Ly2/u;

    .line 477
    iget-object v5, v5, Ly2/j;->a:Ls/h0;

    .line 478
    invoke-virtual {v5, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8d

    move-object/from16 v5, v16

    :cond_8d
    if-eqz v5, :cond_8e

    goto :goto_4e

    :cond_8e
    const/4 v5, 0x0

    goto :goto_4f

    :cond_8f
    :goto_4e
    const/4 v5, 0x1

    :goto_4f
    if-nez v5, :cond_90

    .line 479
    const-string v5, "android.widget.ScrollView"

    invoke-virtual {v7, v5}, Lf4/e;->g(Ljava/lang/String;)V

    .line 480
    :cond_90
    iget-object v5, v2, Ly2/h;->b:Lf9/a;

    .line 481
    invoke-interface {v5}, Lf9/a;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_91

    const/4 v11, 0x1

    .line 482
    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 483
    :cond_91
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 484
    invoke-static {v2}, Lr2/b0;->u(Ly2/h;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 485
    sget-object v5, Lf4/c;->e:Lf4/c;

    invoke-virtual {v7, v5}, Lf4/e;->a(Lf4/c;)V

    .line 486
    sget-object v5, Lf4/c;->i:Lf4/c;

    invoke-virtual {v7, v5}, Lf4/e;->a(Lf4/c;)V

    .line 487
    :cond_92
    invoke-static {v2}, Lr2/b0;->t(Ly2/h;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 488
    sget-object v2, Lf4/c;->f:Lf4/c;

    invoke-virtual {v7, v2}, Lf4/e;->a(Lf4/c;)V

    .line 489
    sget-object v2, Lf4/c;->g:Lf4/c;

    invoke-virtual {v7, v2}, Lf4/e;->a(Lf4/c;)V

    :cond_93
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_94

    .line 490
    invoke-static {v7, v0}, Lr2/j0;->e(Lf4/e;Ly2/m;)V

    .line 491
    :cond_94
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v2

    sget-object v5, Ly2/r;->d:Ly2/u;

    invoke-static {v2, v5}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_95

    .line 492
    invoke-static {v3, v2}, Landroid/support/v4/media/session/o;->v(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 493
    :cond_95
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 494
    :goto_50
    invoke-static {v0}, Lr2/j0;->a(Ly2/m;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 495
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v1

    sget-object v2, Ly2/i;->s:Ly2/u;

    invoke-static {v1, v2}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/a;

    if-eqz v1, :cond_96

    .line 496
    new-instance v2, Lf4/c;

    const/high16 v5, 0x40000

    .line 497
    iget-object v1, v1, Ly2/a;->a:Ljava/lang/String;

    .line 498
    invoke-direct {v2, v5, v1}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 499
    invoke-virtual {v7, v2}, Lf4/e;->a(Lf4/c;)V

    .line 500
    :cond_96
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v1

    sget-object v2, Ly2/i;->t:Ly2/u;

    invoke-static {v1, v2}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/a;

    if-eqz v1, :cond_97

    .line 501
    new-instance v2, Lf4/c;

    const/high16 v5, 0x80000

    .line 502
    iget-object v1, v1, Ly2/a;->a:Ljava/lang/String;

    .line 503
    invoke-direct {v2, v5, v1}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 504
    invoke-virtual {v7, v2}, Lf4/e;->a(Lf4/c;)V

    .line 505
    :cond_97
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v1

    sget-object v2, Ly2/i;->u:Ly2/u;

    invoke-static {v1, v2}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/a;

    if-eqz v1, :cond_98

    .line 506
    new-instance v2, Lf4/c;

    const/high16 v5, 0x100000

    .line 507
    iget-object v1, v1, Ly2/a;->a:Ljava/lang/String;

    .line 508
    invoke-direct {v2, v5, v1}, Lf4/c;-><init>(ILjava/lang/String;)V

    .line 509
    invoke-virtual {v7, v2}, Lf4/e;->a(Lf4/c;)V

    .line 510
    :cond_98
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v1

    sget-object v2, Ly2/i;->w:Ly2/u;

    invoke-virtual {v1, v2}, Ly2/j;->b(Ly2/u;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 511
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v1

    invoke-virtual {v1, v2}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 512
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sget-object v5, Lr2/b0;->Q:Ls/v;

    .line 513
    iget v6, v5, Ls/v;->b:I

    if-ge v2, v6, :cond_a0

    .line 514
    new-instance v2, Ls/r0;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Ls/r0;-><init>(I)V

    .line 515
    invoke-static {}, Ls/l0;->a()Ls/c0;

    move-result-object v6

    move-object/from16 v8, v21

    .line 516
    invoke-virtual {v8, v4}, Ls/r0;->c(I)Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 517
    invoke-virtual {v8, v4}, Ls/r0;->d(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls/c0;

    const/16 v11, 0x10

    .line 518
    new-array v11, v11, [I

    .line 519
    iget-object v12, v5, Ls/v;->a:[I

    .line 520
    iget v5, v5, Ls/v;->b:I

    move-object v13, v11

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x3

    :goto_51
    if-ge v11, v5, :cond_9a

    .line 521
    aget v19, v12, v11

    move/from16 v21, v5

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v23, v10

    .line 522
    array-length v10, v13

    if-ge v10, v5, :cond_99

    .line 523
    array-length v10, v13

    mul-int/lit8 v10, v10, 0x3

    const/16 v18, 0x2

    div-int/lit8 v10, v10, 0x2

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 524
    invoke-static {v13, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    const-string v13, "copyOf(...)"

    invoke-static {v10, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v10

    goto :goto_52

    :cond_99
    const/16 v18, 0x2

    .line 525
    :goto_52
    aput v19, v13, v14

    add-int/lit8 v11, v11, 0x1

    move v14, v5

    move/from16 v5, v21

    move-object/from16 v10, v23

    goto :goto_51

    :cond_9a
    move-object/from16 v23, v10

    .line 526
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v10

    if-gtz v10, :cond_9d

    .line 528
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9b

    goto :goto_53

    :cond_9b
    const/4 v12, 0x0

    .line 529
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 530
    invoke-static {v0}, La2/f;->N(Ljava/lang/Object;)V

    if-lez v14, :cond_9c

    .line 531
    aget v0, v13, v12

    .line 532
    throw v16

    .line 533
    :cond_9c
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Lt/a;->d(Ljava/lang/String;)V

    throw v16

    :cond_9d
    const/4 v12, 0x0

    .line 534
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 535
    invoke-static {v0}, La2/f;->N(Ljava/lang/Object;)V

    .line 536
    invoke-static/range {v23 .. v23}, Lg9/l;->b(Ljava/lang/Object;)V

    throw v16

    :cond_9e
    const/4 v12, 0x0

    .line 537
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v10

    if-gtz v10, :cond_9f

    .line 538
    :goto_53
    iget-object v1, v9, Lr2/b0;->u:Ls/r0;

    invoke-virtual {v1, v4, v2}, Ls/r0;->e(ILjava/lang/Object;)V

    .line 539
    invoke-virtual {v8, v4, v6}, Ls/r0;->e(ILjava/lang/Object;)V

    goto :goto_54

    .line 540
    :cond_9f
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 541
    invoke-static {v0}, La2/f;->N(Ljava/lang/Object;)V

    .line 542
    invoke-virtual {v5, v12}, Ls/v;->b(I)I

    .line 543
    throw v16

    .line 544
    :cond_a0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t have more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    iget v2, v5, Ls/v;->b:I

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v2, " custom actions for one widget"

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_a1
    :goto_54
    invoke-static {v0, v15}, Lr2/j0;->c(Ly2/m;Landroid/content/res/Resources;)Z

    move-result v1

    .line 552
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_a2

    .line 553
    invoke-static {v3, v1}, Landroid/support/v4/media/session/o;->w(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_55

    :cond_a2
    const/4 v11, 0x1

    .line 554
    invoke-virtual {v7, v11, v1}, Lf4/e;->f(IZ)V

    .line 555
    :goto_55
    iget-object v1, v9, Lr2/b0;->E:Ls/u;

    invoke-virtual {v1, v4}, Ls/u;->d(I)I

    move-result v1

    const/16 v5, 0x16

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a5

    .line 556
    invoke-virtual/range {v28 .. v28}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    move-result-object v6

    invoke-static {v6, v1}, Lr2/j0;->u(Lr2/w0;I)Lq3/i;

    move-result-object v6

    if-eqz v6, :cond_a4

    if-lt v2, v5, :cond_a3

    .line 557
    invoke-static {v3, v6}, Landroid/support/v4/media/session/v;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Lq3/i;)V

    :cond_a3
    move-object/from16 v6, v28

    goto :goto_56

    :cond_a4
    if-lt v2, v5, :cond_a3

    move-object/from16 v6, v28

    .line 558
    invoke-static {v3, v6, v1}, Landroid/support/v4/media/session/v;->e(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V

    .line 559
    :goto_56
    iget-object v1, v9, Lr2/b0;->G:Ljava/lang/String;

    move-object/from16 v8, v16

    .line 560
    invoke-virtual {v9, v4, v7, v1, v8}, Lr2/b0;->e(ILf4/e;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_57

    :cond_a5
    move-object/from16 v6, v28

    .line 561
    :goto_57
    iget-object v1, v9, Lr2/b0;->F:Ls/u;

    invoke-virtual {v1, v4}, Ls/u;->d(I)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_a7

    .line 562
    invoke-virtual {v6}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    move-result-object v6

    invoke-static {v6, v1}, Lr2/j0;->u(Lr2/w0;I)Lq3/i;

    move-result-object v1

    if-eqz v1, :cond_a7

    if-lt v2, v5, :cond_a6

    .line 563
    invoke-static {v3, v1}, Landroid/support/v4/media/session/v;->d(Landroid/view/accessibility/AccessibilityNodeInfo;Lq3/i;)V

    .line 564
    :cond_a6
    iget-object v1, v9, Lr2/b0;->H:Ljava/lang/String;

    const/4 v8, 0x0

    .line 565
    invoke-virtual {v9, v4, v7, v1, v8}, Lr2/b0;->e(ILf4/e;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 566
    :cond_a7
    invoke-virtual {v0}, Ly2/m;->m()Ly2/j;

    move-result-object v0

    .line 567
    sget-object v1, Ly2/s;->b:Ly2/u;

    invoke-static {v0, v1}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a8

    .line 568
    invoke-virtual {v7, v0}, Lf4/e;->g(Ljava/lang/String;)V

    :cond_a8
    move-object v6, v7

    .line 569
    :goto_58
    iget-boolean v0, v9, Lr2/b0;->r:Z

    if-eqz v0, :cond_aa

    .line 570
    iget v0, v9, Lr2/b0;->n:I

    if-ne v4, v0, :cond_a9

    .line 571
    iput-object v6, v9, Lr2/b0;->p:Lf4/e;

    .line 572
    :cond_a9
    iget v0, v9, Lr2/b0;->o:I

    if-ne v4, v0, :cond_aa

    .line 573
    iput-object v6, v9, Lr2/b0;->q:Lf4/e;

    :cond_aa
    return-object v6

    :cond_ab
    move v4, v1

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semanticsNode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has null parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v0}, Ln2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lac/p;

    .line 576
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 577
    throw v0
.end method

.method public final k(I)Lf4/e;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lr2/x;->c:Lr2/b0;

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget p1, v1, Lr2/b0;->n:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lr2/x;->i(I)Lf4/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Unknown focus type: "

    .line 19
    .line 20
    invoke-static {p1, v1}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    iget p1, v1, Lr2/b0;->o:I

    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Lr2/x;->i(I)Lf4/e;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final q(IILandroid/os/Bundle;)Z
    .locals 20

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Lr2/x;->c:Lr2/b0;

    .line 10
    .line 11
    iget-object v5, v4, Lr2/b0;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    iget-object v8, v4, Lr2/b0;->d:Lr2/u;

    .line 19
    .line 20
    invoke-virtual {v4}, Lr2/b0;->o()Ls/k;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-virtual {v9, v0}, Ls/k;->b(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    check-cast v9, Ly2/n;

    .line 29
    .line 30
    if-eqz v9, :cond_0

    .line 31
    .line 32
    iget-object v12, v9, Ly2/n;->a:Ly2/m;

    .line 33
    .line 34
    if-nez v12, :cond_1

    .line 35
    .line 36
    :cond_0
    :goto_0
    const/16 v18, 0x0

    .line 37
    .line 38
    goto/16 :goto_48

    .line 39
    .line 40
    :cond_1
    iget-object v9, v12, Ly2/m;->c:Lq2/h0;

    .line 41
    .line 42
    iget v11, v12, Ly2/m;->g:I

    .line 43
    .line 44
    iget-object v13, v12, Ly2/m;->d:Ly2/j;

    .line 45
    .line 46
    iget-object v14, v13, Ly2/j;->a:Ls/h0;

    .line 47
    .line 48
    sget-object v15, Ly2/r;->n:Ly2/u;

    .line 49
    .line 50
    invoke-virtual {v14, v15}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v15

    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    if-nez v15, :cond_2

    .line 57
    .line 58
    const/4 v15, 0x0

    .line 59
    :cond_2
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {v15, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    if-eqz v15, :cond_4

    .line 66
    .line 67
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v10, 0x22

    .line 70
    .line 71
    if-lt v15, v10, :cond_3

    .line 72
    .line 73
    invoke-static {v5}, Lc/a;->h(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v10, 0x1

    .line 79
    :goto_1
    if-nez v10, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const/16 v10, 0x40

    .line 83
    .line 84
    const/high16 v15, -0x80000000

    .line 85
    .line 86
    if-eq v1, v10, :cond_86

    .line 87
    .line 88
    const/16 v5, 0x80

    .line 89
    .line 90
    if-eq v1, v5, :cond_84

    .line 91
    .line 92
    const/16 v10, 0x200

    .line 93
    .line 94
    const/16 v5, 0x100

    .line 95
    .line 96
    const/4 v15, -0x1

    .line 97
    if-eq v1, v5, :cond_66

    .line 98
    .line 99
    if-eq v1, v10, :cond_66

    .line 100
    .line 101
    const/16 v5, 0x4000

    .line 102
    .line 103
    if-eq v1, v5, :cond_64

    .line 104
    .line 105
    const/high16 v5, 0x20000

    .line 106
    .line 107
    if-eq v1, v5, :cond_60

    .line 108
    .line 109
    invoke-static {v12}, Lr2/j0;->a(Ly2/m;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_5

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    const/4 v5, 0x1

    .line 117
    if-eq v1, v5, :cond_5d

    .line 118
    .line 119
    const/4 v5, 0x2

    .line 120
    if-eq v1, v5, :cond_5b

    .line 121
    .line 122
    sget-object v5, Ln3/m;->b:Ln3/m;

    .line 123
    .line 124
    sparse-switch v1, :sswitch_data_0

    .line 125
    .line 126
    .line 127
    packed-switch v1, :pswitch_data_0

    .line 128
    .line 129
    .line 130
    packed-switch v1, :pswitch_data_1

    .line 131
    .line 132
    .line 133
    iget-object v3, v4, Lr2/b0;->u:Ls/r0;

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Ls/r0;->d(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ls/r0;

    .line 140
    .line 141
    if-eqz v0, :cond_0

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ls/r0;->d(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/CharSequence;

    .line 148
    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    sget-object v0, Ly2/i;->w:Ly2/u;

    .line 153
    .line 154
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_7

    .line 159
    .line 160
    const/4 v6, 0x0

    .line 161
    goto :goto_2

    .line 162
    :cond_7
    move-object v6, v0

    .line 163
    :goto_2
    check-cast v6, Ljava/util/List;

    .line 164
    .line 165
    if-nez v6, :cond_8

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_8
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-gtz v0, :cond_9

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_9
    const/4 v0, 0x0

    .line 178
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    new-instance v0, Ljava/lang/ClassCastException;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :pswitch_0
    sget-object v0, Ly2/i;->A:Ly2/u;

    .line 192
    .line 193
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-nez v0, :cond_a

    .line 198
    .line 199
    const/4 v6, 0x0

    .line 200
    goto :goto_3

    .line 201
    :cond_a
    move-object v6, v0

    .line 202
    :goto_3
    check-cast v6, Ly2/a;

    .line 203
    .line 204
    if-eqz v6, :cond_0

    .line 205
    .line 206
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 207
    .line 208
    check-cast v0, Lf9/a;

    .line 209
    .line 210
    if-eqz v0, :cond_0

    .line 211
    .line 212
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    return v0

    .line 223
    :pswitch_1
    sget-object v0, Ly2/i;->y:Ly2/u;

    .line 224
    .line 225
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-nez v0, :cond_b

    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    goto :goto_4

    .line 233
    :cond_b
    move-object v6, v0

    .line 234
    :goto_4
    check-cast v6, Ly2/a;

    .line 235
    .line 236
    if-eqz v6, :cond_0

    .line 237
    .line 238
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 239
    .line 240
    check-cast v0, Lf9/a;

    .line 241
    .line 242
    if-eqz v0, :cond_0

    .line 243
    .line 244
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    return v0

    .line 255
    :pswitch_2
    sget-object v0, Ly2/i;->z:Ly2/u;

    .line 256
    .line 257
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    if-nez v0, :cond_c

    .line 262
    .line 263
    const/4 v6, 0x0

    .line 264
    goto :goto_5

    .line 265
    :cond_c
    move-object v6, v0

    .line 266
    :goto_5
    check-cast v6, Ly2/a;

    .line 267
    .line 268
    if-eqz v6, :cond_0

    .line 269
    .line 270
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 271
    .line 272
    check-cast v0, Lf9/a;

    .line 273
    .line 274
    if-eqz v0, :cond_0

    .line 275
    .line 276
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    return v0

    .line 287
    :pswitch_3
    sget-object v0, Ly2/i;->x:Ly2/u;

    .line 288
    .line 289
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-nez v0, :cond_d

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    goto :goto_6

    .line 297
    :cond_d
    move-object v6, v0

    .line 298
    :goto_6
    check-cast v6, Ly2/a;

    .line 299
    .line 300
    if-eqz v6, :cond_0

    .line 301
    .line 302
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 303
    .line 304
    check-cast v0, Lf9/a;

    .line 305
    .line 306
    if-eqz v0, :cond_0

    .line 307
    .line 308
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Ljava/lang/Boolean;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    return v0

    .line 319
    :sswitch_0
    sget-object v0, Ly2/i;->o:Ly2/u;

    .line 320
    .line 321
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-nez v0, :cond_e

    .line 326
    .line 327
    const/4 v6, 0x0

    .line 328
    goto :goto_7

    .line 329
    :cond_e
    move-object v6, v0

    .line 330
    :goto_7
    check-cast v6, Ly2/a;

    .line 331
    .line 332
    if-eqz v6, :cond_0

    .line 333
    .line 334
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 335
    .line 336
    check-cast v0, Lf9/a;

    .line 337
    .line 338
    if-eqz v0, :cond_0

    .line 339
    .line 340
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Ljava/lang/Boolean;

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    return v0

    .line 351
    :sswitch_1
    if-eqz v3, :cond_0

    .line 352
    .line 353
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 354
    .line 355
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-nez v1, :cond_f

    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_f
    sget-object v1, Ly2/i;->h:Ly2/u;

    .line 364
    .line 365
    invoke-virtual {v14, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    if-nez v1, :cond_10

    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    goto :goto_8

    .line 373
    :cond_10
    move-object v6, v1

    .line 374
    :goto_8
    check-cast v6, Ly2/a;

    .line 375
    .line 376
    if-eqz v6, :cond_0

    .line 377
    .line 378
    iget-object v1, v6, Ly2/a;->b:Lr8/e;

    .line 379
    .line 380
    check-cast v1, Lf9/k;

    .line 381
    .line 382
    if-eqz v1, :cond_0

    .line 383
    .line 384
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-interface {v1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Ljava/lang/Boolean;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    return v0

    .line 403
    :sswitch_2
    invoke-virtual {v12}, Ly2/m;->l()Ly2/m;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    if-eqz v0, :cond_12

    .line 408
    .line 409
    iget-object v1, v0, Ly2/m;->d:Ly2/j;

    .line 410
    .line 411
    sget-object v3, Ly2/i;->d:Ly2/u;

    .line 412
    .line 413
    iget-object v1, v1, Ly2/j;->a:Ls/h0;

    .line 414
    .line 415
    invoke-virtual {v1, v3}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    if-nez v1, :cond_11

    .line 420
    .line 421
    const/4 v1, 0x0

    .line 422
    :cond_11
    check-cast v1, Ly2/a;

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_12
    const/4 v1, 0x0

    .line 426
    :goto_9
    if-eqz v0, :cond_15

    .line 427
    .line 428
    if-eqz v1, :cond_13

    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_13
    invoke-virtual {v0}, Ly2/m;->l()Ly2/m;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    if-eqz v0, :cond_12

    .line 436
    .line 437
    iget-object v1, v0, Ly2/m;->d:Ly2/j;

    .line 438
    .line 439
    sget-object v3, Ly2/i;->d:Ly2/u;

    .line 440
    .line 441
    iget-object v1, v1, Ly2/j;->a:Ls/h0;

    .line 442
    .line 443
    invoke-virtual {v1, v3}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    if-nez v1, :cond_14

    .line 448
    .line 449
    const/4 v1, 0x0

    .line 450
    :cond_14
    check-cast v1, Ly2/a;

    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_15
    :goto_a
    if-nez v0, :cond_16

    .line 454
    .line 455
    invoke-virtual {v12}, Ly2/m;->g()Lx1/c;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    new-instance v1, Landroid/graphics/Rect;

    .line 460
    .line 461
    iget v3, v0, Lx1/c;->a:F

    .line 462
    .line 463
    float-to-double v3, v3

    .line 464
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 465
    .line 466
    .line 467
    move-result-wide v3

    .line 468
    double-to-float v3, v3

    .line 469
    float-to-int v3, v3

    .line 470
    iget v4, v0, Lx1/c;->b:F

    .line 471
    .line 472
    float-to-double v4, v4

    .line 473
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 474
    .line 475
    .line 476
    move-result-wide v4

    .line 477
    double-to-float v4, v4

    .line 478
    float-to-int v4, v4

    .line 479
    iget v5, v0, Lx1/c;->c:F

    .line 480
    .line 481
    float-to-double v5, v5

    .line 482
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 483
    .line 484
    .line 485
    move-result-wide v5

    .line 486
    double-to-float v5, v5

    .line 487
    invoke-static {v5}, Li9/a;->N(F)I

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    iget v0, v0, Lx1/c;->d:F

    .line 492
    .line 493
    float-to-double v6, v0

    .line 494
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 495
    .line 496
    .line 497
    move-result-wide v6

    .line 498
    double-to-float v0, v6

    .line 499
    invoke-static {v0}, Li9/a;->N(F)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    return v0

    .line 511
    :cond_16
    iget-object v3, v0, Ly2/m;->d:Ly2/j;

    .line 512
    .line 513
    iget-object v3, v3, Ly2/j;->a:Ls/h0;

    .line 514
    .line 515
    iget-object v0, v0, Ly2/m;->c:Lq2/h0;

    .line 516
    .line 517
    iget-object v4, v0, Lq2/h0;->E:Lq2/d1;

    .line 518
    .line 519
    iget-object v4, v4, Lq2/d1;->c:Lq2/t;

    .line 520
    .line 521
    invoke-static {v4}, Lo2/d1;->d(Lo2/w;)Lx1/c;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 526
    .line 527
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 528
    .line 529
    invoke-virtual {v0}, Lq2/h1;->y()Lo2/w;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    const-wide/16 v6, 0x0

    .line 534
    .line 535
    if-eqz v0, :cond_17

    .line 536
    .line 537
    check-cast v0, Lq2/h1;

    .line 538
    .line 539
    invoke-virtual {v0, v6, v7}, Lq2/h1;->F(J)J

    .line 540
    .line 541
    .line 542
    move-result-wide v10

    .line 543
    goto :goto_b

    .line 544
    :cond_17
    move-wide v10, v6

    .line 545
    :goto_b
    invoke-virtual {v4, v10, v11}, Lx1/c;->i(J)Lx1/c;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v12}, Ly2/m;->d()Lq2/h1;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    if-eqz v4, :cond_19

    .line 554
    .line 555
    invoke-virtual {v4}, Lq2/h1;->G0()Lr1/o;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    iget-boolean v8, v8, Lr1/o;->n:Z

    .line 560
    .line 561
    if-eqz v8, :cond_18

    .line 562
    .line 563
    goto :goto_c

    .line 564
    :cond_18
    const/4 v4, 0x0

    .line 565
    :goto_c
    if-eqz v4, :cond_19

    .line 566
    .line 567
    invoke-virtual {v4, v6, v7}, Lq2/h1;->F(J)J

    .line 568
    .line 569
    .line 570
    move-result-wide v10

    .line 571
    goto :goto_d

    .line 572
    :cond_19
    move-wide v10, v6

    .line 573
    :goto_d
    invoke-virtual {v12}, Ly2/m;->d()Lq2/h1;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    if-eqz v4, :cond_1a

    .line 578
    .line 579
    iget-wide v6, v4, Lo2/v0;->c:J

    .line 580
    .line 581
    :cond_1a
    invoke-static {v6, v7}, La/a;->S(J)J

    .line 582
    .line 583
    .line 584
    move-result-wide v6

    .line 585
    invoke-static {v10, v11, v6, v7}, Lp9/p1;->d(JJ)Lx1/c;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    sget-object v6, Ly2/r;->t:Ly2/u;

    .line 590
    .line 591
    invoke-virtual {v3, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    if-nez v6, :cond_1b

    .line 596
    .line 597
    const/4 v6, 0x0

    .line 598
    :cond_1b
    check-cast v6, Ly2/h;

    .line 599
    .line 600
    sget-object v6, Ly2/r;->u:Ly2/u;

    .line 601
    .line 602
    invoke-virtual {v3, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    if-nez v3, :cond_1c

    .line 607
    .line 608
    const/4 v6, 0x0

    .line 609
    goto :goto_e

    .line 610
    :cond_1c
    move-object v6, v3

    .line 611
    :goto_e
    check-cast v6, Ly2/h;

    .line 612
    .line 613
    iget v3, v4, Lx1/c;->a:F

    .line 614
    .line 615
    iget v6, v0, Lx1/c;->a:F

    .line 616
    .line 617
    sub-float/2addr v3, v6

    .line 618
    iget v6, v4, Lx1/c;->c:F

    .line 619
    .line 620
    iget v7, v0, Lx1/c;->c:F

    .line 621
    .line 622
    sub-float/2addr v6, v7

    .line 623
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 624
    .line 625
    .line 626
    move-result v7

    .line 627
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 628
    .line 629
    .line 630
    move-result v8

    .line 631
    cmpg-float v7, v7, v8

    .line 632
    .line 633
    if-nez v7, :cond_1e

    .line 634
    .line 635
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 636
    .line 637
    .line 638
    move-result v7

    .line 639
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 640
    .line 641
    .line 642
    move-result v8

    .line 643
    cmpg-float v7, v7, v8

    .line 644
    .line 645
    if-gez v7, :cond_1d

    .line 646
    .line 647
    goto :goto_f

    .line 648
    :cond_1d
    move v3, v6

    .line 649
    goto :goto_f

    .line 650
    :cond_1e
    const/4 v3, 0x0

    .line 651
    :goto_f
    iget-object v6, v9, Lq2/h0;->y:Ln3/m;

    .line 652
    .line 653
    if-ne v6, v5, :cond_1f

    .line 654
    .line 655
    const/4 v5, 0x1

    .line 656
    goto :goto_10

    .line 657
    :cond_1f
    const/4 v5, 0x0

    .line 658
    :goto_10
    if-eqz v5, :cond_20

    .line 659
    .line 660
    neg-float v3, v3

    .line 661
    :cond_20
    iget v5, v4, Lx1/c;->b:F

    .line 662
    .line 663
    iget v6, v0, Lx1/c;->b:F

    .line 664
    .line 665
    sub-float/2addr v5, v6

    .line 666
    iget v4, v4, Lx1/c;->d:F

    .line 667
    .line 668
    iget v0, v0, Lx1/c;->d:F

    .line 669
    .line 670
    sub-float/2addr v4, v0

    .line 671
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    cmpg-float v0, v0, v6

    .line 680
    .line 681
    if-nez v0, :cond_22

    .line 682
    .line 683
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 688
    .line 689
    .line 690
    move-result v6

    .line 691
    cmpg-float v0, v0, v6

    .line 692
    .line 693
    if-gez v0, :cond_21

    .line 694
    .line 695
    move v6, v5

    .line 696
    goto :goto_11

    .line 697
    :cond_21
    move v6, v4

    .line 698
    goto :goto_11

    .line 699
    :cond_22
    const/4 v6, 0x0

    .line 700
    :goto_11
    if-eqz v1, :cond_0

    .line 701
    .line 702
    iget-object v0, v1, Ly2/a;->b:Lr8/e;

    .line 703
    .line 704
    check-cast v0, Lf9/n;

    .line 705
    .line 706
    if-eqz v0, :cond_0

    .line 707
    .line 708
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    invoke-interface {v0, v1, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    check-cast v0, Ljava/lang/Boolean;

    .line 721
    .line 722
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    const/4 v5, 0x1

    .line 727
    if-ne v0, v5, :cond_0

    .line 728
    .line 729
    return v5

    .line 730
    :sswitch_3
    if-eqz v3, :cond_23

    .line 731
    .line 732
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 733
    .line 734
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    goto :goto_12

    .line 739
    :cond_23
    const/4 v0, 0x0

    .line 740
    :goto_12
    sget-object v1, Ly2/i;->j:Ly2/u;

    .line 741
    .line 742
    invoke-virtual {v14, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    if-nez v1, :cond_24

    .line 747
    .line 748
    const/4 v6, 0x0

    .line 749
    goto :goto_13

    .line 750
    :cond_24
    move-object v6, v1

    .line 751
    :goto_13
    check-cast v6, Ly2/a;

    .line 752
    .line 753
    if-eqz v6, :cond_0

    .line 754
    .line 755
    iget-object v1, v6, Ly2/a;->b:Lr8/e;

    .line 756
    .line 757
    check-cast v1, Lf9/k;

    .line 758
    .line 759
    if-eqz v1, :cond_0

    .line 760
    .line 761
    new-instance v3, Lb3/g;

    .line 762
    .line 763
    if-nez v0, :cond_25

    .line 764
    .line 765
    const-string v0, ""

    .line 766
    .line 767
    :cond_25
    invoke-direct {v3, v0}, Lb3/g;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-interface {v1, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    check-cast v0, Ljava/lang/Boolean;

    .line 775
    .line 776
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    return v0

    .line 781
    :sswitch_4
    sget-object v0, Ly2/i;->u:Ly2/u;

    .line 782
    .line 783
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    if-nez v0, :cond_26

    .line 788
    .line 789
    const/4 v6, 0x0

    .line 790
    goto :goto_14

    .line 791
    :cond_26
    move-object v6, v0

    .line 792
    :goto_14
    check-cast v6, Ly2/a;

    .line 793
    .line 794
    if-eqz v6, :cond_0

    .line 795
    .line 796
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 797
    .line 798
    check-cast v0, Lf9/a;

    .line 799
    .line 800
    if-eqz v0, :cond_0

    .line 801
    .line 802
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    check-cast v0, Ljava/lang/Boolean;

    .line 807
    .line 808
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    return v0

    .line 813
    :sswitch_5
    sget-object v0, Ly2/i;->t:Ly2/u;

    .line 814
    .line 815
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    if-nez v0, :cond_27

    .line 820
    .line 821
    const/4 v6, 0x0

    .line 822
    goto :goto_15

    .line 823
    :cond_27
    move-object v6, v0

    .line 824
    :goto_15
    check-cast v6, Ly2/a;

    .line 825
    .line 826
    if-eqz v6, :cond_0

    .line 827
    .line 828
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 829
    .line 830
    check-cast v0, Lf9/a;

    .line 831
    .line 832
    if-eqz v0, :cond_0

    .line 833
    .line 834
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    check-cast v0, Ljava/lang/Boolean;

    .line 839
    .line 840
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    return v0

    .line 845
    :sswitch_6
    sget-object v0, Ly2/i;->s:Ly2/u;

    .line 846
    .line 847
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    if-nez v0, :cond_28

    .line 852
    .line 853
    const/4 v6, 0x0

    .line 854
    goto :goto_16

    .line 855
    :cond_28
    move-object v6, v0

    .line 856
    :goto_16
    check-cast v6, Ly2/a;

    .line 857
    .line 858
    if-eqz v6, :cond_0

    .line 859
    .line 860
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 861
    .line 862
    check-cast v0, Lf9/a;

    .line 863
    .line 864
    if-eqz v0, :cond_0

    .line 865
    .line 866
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    check-cast v0, Ljava/lang/Boolean;

    .line 871
    .line 872
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    return v0

    .line 877
    :sswitch_7
    sget-object v0, Ly2/i;->q:Ly2/u;

    .line 878
    .line 879
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    if-nez v0, :cond_29

    .line 884
    .line 885
    const/4 v6, 0x0

    .line 886
    goto :goto_17

    .line 887
    :cond_29
    move-object v6, v0

    .line 888
    :goto_17
    check-cast v6, Ly2/a;

    .line 889
    .line 890
    if-eqz v6, :cond_0

    .line 891
    .line 892
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 893
    .line 894
    check-cast v0, Lf9/a;

    .line 895
    .line 896
    if-eqz v0, :cond_0

    .line 897
    .line 898
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    check-cast v0, Ljava/lang/Boolean;

    .line 903
    .line 904
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 905
    .line 906
    .line 907
    move-result v0

    .line 908
    return v0

    .line 909
    :sswitch_8
    sget-object v0, Ly2/i;->r:Ly2/u;

    .line 910
    .line 911
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    if-nez v0, :cond_2a

    .line 916
    .line 917
    const/4 v6, 0x0

    .line 918
    goto :goto_18

    .line 919
    :cond_2a
    move-object v6, v0

    .line 920
    :goto_18
    check-cast v6, Ly2/a;

    .line 921
    .line 922
    if-eqz v6, :cond_0

    .line 923
    .line 924
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 925
    .line 926
    check-cast v0, Lf9/a;

    .line 927
    .line 928
    if-eqz v0, :cond_0

    .line 929
    .line 930
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    check-cast v0, Ljava/lang/Boolean;

    .line 935
    .line 936
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 937
    .line 938
    .line 939
    move-result v0

    .line 940
    return v0

    .line 941
    :pswitch_4
    :sswitch_9
    const/16 v0, 0x1000

    .line 942
    .line 943
    if-ne v1, v0, :cond_2b

    .line 944
    .line 945
    const/4 v0, 0x1

    .line 946
    goto :goto_19

    .line 947
    :cond_2b
    const/4 v0, 0x0

    .line 948
    :goto_19
    const/16 v3, 0x2000

    .line 949
    .line 950
    if-ne v1, v3, :cond_2c

    .line 951
    .line 952
    const/4 v3, 0x1

    .line 953
    goto :goto_1a

    .line 954
    :cond_2c
    const/4 v3, 0x0

    .line 955
    :goto_1a
    const v4, 0x1020039

    .line 956
    .line 957
    .line 958
    if-ne v1, v4, :cond_2d

    .line 959
    .line 960
    const/4 v4, 0x1

    .line 961
    goto :goto_1b

    .line 962
    :cond_2d
    const/4 v4, 0x0

    .line 963
    :goto_1b
    const v6, 0x102003b

    .line 964
    .line 965
    .line 966
    if-ne v1, v6, :cond_2e

    .line 967
    .line 968
    const/4 v6, 0x1

    .line 969
    goto :goto_1c

    .line 970
    :cond_2e
    const/4 v6, 0x0

    .line 971
    :goto_1c
    const v8, 0x1020038

    .line 972
    .line 973
    .line 974
    if-ne v1, v8, :cond_2f

    .line 975
    .line 976
    const/4 v8, 0x1

    .line 977
    goto :goto_1d

    .line 978
    :cond_2f
    const/4 v8, 0x0

    .line 979
    :goto_1d
    const v10, 0x102003a

    .line 980
    .line 981
    .line 982
    if-ne v1, v10, :cond_30

    .line 983
    .line 984
    const/4 v1, 0x1

    .line 985
    goto :goto_1e

    .line 986
    :cond_30
    const/4 v1, 0x0

    .line 987
    :goto_1e
    if-nez v4, :cond_32

    .line 988
    .line 989
    if-nez v6, :cond_32

    .line 990
    .line 991
    if-nez v0, :cond_32

    .line 992
    .line 993
    if-eqz v3, :cond_31

    .line 994
    .line 995
    goto :goto_1f

    .line 996
    :cond_31
    const/4 v10, 0x0

    .line 997
    goto :goto_20

    .line 998
    :cond_32
    :goto_1f
    const/4 v10, 0x1

    .line 999
    :goto_20
    if-nez v8, :cond_34

    .line 1000
    .line 1001
    if-nez v1, :cond_34

    .line 1002
    .line 1003
    if-nez v0, :cond_34

    .line 1004
    .line 1005
    if-eqz v3, :cond_33

    .line 1006
    .line 1007
    goto :goto_21

    .line 1008
    :cond_33
    const/4 v1, 0x0

    .line 1009
    goto :goto_22

    .line 1010
    :cond_34
    :goto_21
    const/4 v1, 0x1

    .line 1011
    :goto_22
    if-nez v0, :cond_35

    .line 1012
    .line 1013
    if-eqz v3, :cond_3c

    .line 1014
    .line 1015
    :cond_35
    sget-object v0, Ly2/r;->c:Ly2/u;

    .line 1016
    .line 1017
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    if-nez v0, :cond_36

    .line 1022
    .line 1023
    const/4 v0, 0x0

    .line 1024
    :cond_36
    check-cast v0, Ly2/f;

    .line 1025
    .line 1026
    sget-object v11, Ly2/i;->h:Ly2/u;

    .line 1027
    .line 1028
    invoke-virtual {v14, v11}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v11

    .line 1032
    if-nez v11, :cond_37

    .line 1033
    .line 1034
    const/4 v11, 0x0

    .line 1035
    :cond_37
    check-cast v11, Ly2/a;

    .line 1036
    .line 1037
    if-eqz v0, :cond_3c

    .line 1038
    .line 1039
    iget-object v12, v0, Ly2/f;->b:Ll9/a;

    .line 1040
    .line 1041
    if-eqz v11, :cond_3c

    .line 1042
    .line 1043
    iget v1, v12, Ll9/a;->b:F

    .line 1044
    .line 1045
    iget v4, v12, Ll9/a;->a:F

    .line 1046
    .line 1047
    cmpg-float v5, v1, v4

    .line 1048
    .line 1049
    if-gez v5, :cond_38

    .line 1050
    .line 1051
    move v5, v4

    .line 1052
    goto :goto_23

    .line 1053
    :cond_38
    move v5, v1

    .line 1054
    :goto_23
    cmpl-float v6, v4, v1

    .line 1055
    .line 1056
    if-lez v6, :cond_39

    .line 1057
    .line 1058
    goto :goto_24

    .line 1059
    :cond_39
    move v1, v4

    .line 1060
    :goto_24
    iget v4, v0, Ly2/f;->c:I

    .line 1061
    .line 1062
    if-lez v4, :cond_3a

    .line 1063
    .line 1064
    sub-float/2addr v5, v1

    .line 1065
    const/16 v19, 0x1

    .line 1066
    .line 1067
    add-int/lit8 v4, v4, 0x1

    .line 1068
    .line 1069
    int-to-float v1, v4

    .line 1070
    :goto_25
    div-float/2addr v5, v1

    .line 1071
    goto :goto_26

    .line 1072
    :cond_3a
    sub-float/2addr v5, v1

    .line 1073
    const/16 v1, 0x14

    .line 1074
    .line 1075
    int-to-float v1, v1

    .line 1076
    goto :goto_25

    .line 1077
    :goto_26
    if-eqz v3, :cond_3b

    .line 1078
    .line 1079
    neg-float v5, v5

    .line 1080
    :cond_3b
    iget-object v1, v11, Ly2/a;->b:Lr8/e;

    .line 1081
    .line 1082
    check-cast v1, Lf9/k;

    .line 1083
    .line 1084
    if-eqz v1, :cond_0

    .line 1085
    .line 1086
    iget v0, v0, Ly2/f;->a:F

    .line 1087
    .line 1088
    add-float/2addr v0, v5

    .line 1089
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    invoke-interface {v1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    check-cast v0, Ljava/lang/Boolean;

    .line 1098
    .line 1099
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v0

    .line 1103
    return v0

    .line 1104
    :cond_3c
    iget-object v0, v9, Lq2/h0;->E:Lq2/d1;

    .line 1105
    .line 1106
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 1107
    .line 1108
    invoke-static {v0}, Lo2/d1;->d(Lo2/w;)Lx1/c;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Lx1/c;->c()J

    .line 1113
    .line 1114
    .line 1115
    move-result-wide v11

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    .line 1117
    .line 1118
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .line 1120
    .line 1121
    sget-object v13, Ly2/i;->B:Ly2/u;

    .line 1122
    .line 1123
    invoke-virtual {v14, v13}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v13

    .line 1127
    if-nez v13, :cond_3d

    .line 1128
    .line 1129
    const/4 v13, 0x0

    .line 1130
    :cond_3d
    check-cast v13, Ly2/a;

    .line 1131
    .line 1132
    if-eqz v13, :cond_3e

    .line 1133
    .line 1134
    iget-object v13, v13, Ly2/a;->b:Lr8/e;

    .line 1135
    .line 1136
    check-cast v13, Lf9/k;

    .line 1137
    .line 1138
    if-eqz v13, :cond_3e

    .line 1139
    .line 1140
    invoke-interface {v13, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v13

    .line 1144
    check-cast v13, Ljava/lang/Boolean;

    .line 1145
    .line 1146
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v13

    .line 1150
    if-eqz v13, :cond_3e

    .line 1151
    .line 1152
    const/4 v13, 0x0

    .line 1153
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    check-cast v0, Ljava/lang/Float;

    .line 1158
    .line 1159
    goto :goto_27

    .line 1160
    :cond_3e
    const/4 v0, 0x0

    .line 1161
    :goto_27
    sget-object v13, Ly2/i;->d:Ly2/u;

    .line 1162
    .line 1163
    invoke-virtual {v14, v13}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v13

    .line 1167
    if-nez v13, :cond_3f

    .line 1168
    .line 1169
    const/4 v13, 0x0

    .line 1170
    :cond_3f
    check-cast v13, Ly2/a;

    .line 1171
    .line 1172
    if-nez v13, :cond_40

    .line 1173
    .line 1174
    goto/16 :goto_0

    .line 1175
    .line 1176
    :cond_40
    iget-object v13, v13, Ly2/a;->b:Lr8/e;

    .line 1177
    .line 1178
    sget-object v15, Ly2/r;->t:Ly2/u;

    .line 1179
    .line 1180
    invoke-virtual {v14, v15}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v15

    .line 1184
    if-nez v15, :cond_41

    .line 1185
    .line 1186
    const/4 v15, 0x0

    .line 1187
    :cond_41
    check-cast v15, Ly2/h;

    .line 1188
    .line 1189
    if-eqz v15, :cond_4d

    .line 1190
    .line 1191
    if-eqz v10, :cond_4d

    .line 1192
    .line 1193
    if-eqz v0, :cond_42

    .line 1194
    .line 1195
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 1196
    .line 1197
    .line 1198
    move-result v10

    .line 1199
    move-object/from16 p2, v0

    .line 1200
    .line 1201
    move/from16 p1, v1

    .line 1202
    .line 1203
    goto :goto_28

    .line 1204
    :cond_42
    const/16 v10, 0x20

    .line 1205
    .line 1206
    move-object/from16 p2, v0

    .line 1207
    .line 1208
    move/from16 p1, v1

    .line 1209
    .line 1210
    shr-long v0, v11, v10

    .line 1211
    .line 1212
    long-to-int v1, v0

    .line 1213
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1214
    .line 1215
    .line 1216
    move-result v10

    .line 1217
    :goto_28
    if-nez v4, :cond_43

    .line 1218
    .line 1219
    if-eqz v3, :cond_44

    .line 1220
    .line 1221
    :cond_43
    neg-float v10, v10

    .line 1222
    :cond_44
    iget-object v0, v9, Lq2/h0;->y:Ln3/m;

    .line 1223
    .line 1224
    if-ne v0, v5, :cond_45

    .line 1225
    .line 1226
    const/16 v19, 0x1

    .line 1227
    .line 1228
    goto :goto_29

    .line 1229
    :cond_45
    const/16 v19, 0x0

    .line 1230
    .line 1231
    :goto_29
    if-eqz v19, :cond_47

    .line 1232
    .line 1233
    if-nez v4, :cond_46

    .line 1234
    .line 1235
    if-eqz v6, :cond_47

    .line 1236
    .line 1237
    :cond_46
    neg-float v10, v10

    .line 1238
    :cond_47
    invoke-static {v15, v10}, Lr2/b0;->s(Ly2/h;F)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v0

    .line 1242
    if-eqz v0, :cond_4e

    .line 1243
    .line 1244
    sget-object v0, Ly2/i;->y:Ly2/u;

    .line 1245
    .line 1246
    invoke-virtual {v14, v0}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v1

    .line 1250
    if-nez v1, :cond_49

    .line 1251
    .line 1252
    sget-object v1, Ly2/i;->A:Ly2/u;

    .line 1253
    .line 1254
    invoke-virtual {v14, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v1

    .line 1258
    if-eqz v1, :cond_48

    .line 1259
    .line 1260
    goto :goto_2a

    .line 1261
    :cond_48
    check-cast v13, Lf9/n;

    .line 1262
    .line 1263
    if-eqz v13, :cond_0

    .line 1264
    .line 1265
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    invoke-interface {v13, v0, v7}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    check-cast v0, Ljava/lang/Boolean;

    .line 1274
    .line 1275
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1276
    .line 1277
    .line 1278
    move-result v0

    .line 1279
    return v0

    .line 1280
    :cond_49
    :goto_2a
    cmpl-float v1, v10, v16

    .line 1281
    .line 1282
    if-lez v1, :cond_4b

    .line 1283
    .line 1284
    sget-object v0, Ly2/i;->A:Ly2/u;

    .line 1285
    .line 1286
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    if-nez v0, :cond_4a

    .line 1291
    .line 1292
    const/4 v6, 0x0

    .line 1293
    goto :goto_2b

    .line 1294
    :cond_4a
    move-object v6, v0

    .line 1295
    :goto_2b
    check-cast v6, Ly2/a;

    .line 1296
    .line 1297
    goto :goto_2d

    .line 1298
    :cond_4b
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    if-nez v0, :cond_4c

    .line 1303
    .line 1304
    const/4 v6, 0x0

    .line 1305
    goto :goto_2c

    .line 1306
    :cond_4c
    move-object v6, v0

    .line 1307
    :goto_2c
    check-cast v6, Ly2/a;

    .line 1308
    .line 1309
    :goto_2d
    if-eqz v6, :cond_0

    .line 1310
    .line 1311
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 1312
    .line 1313
    check-cast v0, Lf9/a;

    .line 1314
    .line 1315
    if-eqz v0, :cond_0

    .line 1316
    .line 1317
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    check-cast v0, Ljava/lang/Boolean;

    .line 1322
    .line 1323
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    return v0

    .line 1328
    :cond_4d
    move-object/from16 p2, v0

    .line 1329
    .line 1330
    move/from16 p1, v1

    .line 1331
    .line 1332
    :cond_4e
    sget-object v0, Ly2/r;->u:Ly2/u;

    .line 1333
    .line 1334
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    if-nez v0, :cond_4f

    .line 1339
    .line 1340
    const/4 v0, 0x0

    .line 1341
    :cond_4f
    check-cast v0, Ly2/h;

    .line 1342
    .line 1343
    if-eqz v0, :cond_0

    .line 1344
    .line 1345
    if-eqz p1, :cond_0

    .line 1346
    .line 1347
    if-eqz p2, :cond_50

    .line 1348
    .line 1349
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    .line 1350
    .line 1351
    .line 1352
    move-result v1

    .line 1353
    goto :goto_2e

    .line 1354
    :cond_50
    const-wide v4, 0xffffffffL

    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    and-long/2addr v4, v11

    .line 1360
    long-to-int v1, v4

    .line 1361
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1362
    .line 1363
    .line 1364
    move-result v1

    .line 1365
    :goto_2e
    if-nez v8, :cond_51

    .line 1366
    .line 1367
    if-eqz v3, :cond_52

    .line 1368
    .line 1369
    :cond_51
    neg-float v1, v1

    .line 1370
    :cond_52
    invoke-static {v0, v1}, Lr2/b0;->s(Ly2/h;F)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_0

    .line 1375
    .line 1376
    sget-object v0, Ly2/i;->x:Ly2/u;

    .line 1377
    .line 1378
    invoke-virtual {v14, v0}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v3

    .line 1382
    if-nez v3, :cond_54

    .line 1383
    .line 1384
    sget-object v3, Ly2/i;->z:Ly2/u;

    .line 1385
    .line 1386
    invoke-virtual {v14, v3}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v3

    .line 1390
    if-eqz v3, :cond_53

    .line 1391
    .line 1392
    goto :goto_2f

    .line 1393
    :cond_53
    check-cast v13, Lf9/n;

    .line 1394
    .line 1395
    if-eqz v13, :cond_0

    .line 1396
    .line 1397
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    invoke-interface {v13, v7, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    check-cast v0, Ljava/lang/Boolean;

    .line 1406
    .line 1407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1408
    .line 1409
    .line 1410
    move-result v0

    .line 1411
    return v0

    .line 1412
    :cond_54
    :goto_2f
    cmpl-float v1, v1, v16

    .line 1413
    .line 1414
    if-lez v1, :cond_56

    .line 1415
    .line 1416
    sget-object v0, Ly2/i;->z:Ly2/u;

    .line 1417
    .line 1418
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v0

    .line 1422
    if-nez v0, :cond_55

    .line 1423
    .line 1424
    const/4 v6, 0x0

    .line 1425
    goto :goto_30

    .line 1426
    :cond_55
    move-object v6, v0

    .line 1427
    :goto_30
    check-cast v6, Ly2/a;

    .line 1428
    .line 1429
    goto :goto_32

    .line 1430
    :cond_56
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    if-nez v0, :cond_57

    .line 1435
    .line 1436
    const/4 v6, 0x0

    .line 1437
    goto :goto_31

    .line 1438
    :cond_57
    move-object v6, v0

    .line 1439
    :goto_31
    check-cast v6, Ly2/a;

    .line 1440
    .line 1441
    :goto_32
    if-eqz v6, :cond_0

    .line 1442
    .line 1443
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 1444
    .line 1445
    check-cast v0, Lf9/a;

    .line 1446
    .line 1447
    if-eqz v0, :cond_0

    .line 1448
    .line 1449
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v0

    .line 1453
    check-cast v0, Ljava/lang/Boolean;

    .line 1454
    .line 1455
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1456
    .line 1457
    .line 1458
    move-result v0

    .line 1459
    return v0

    .line 1460
    :sswitch_a
    sget-object v0, Ly2/i;->c:Ly2/u;

    .line 1461
    .line 1462
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    if-nez v0, :cond_58

    .line 1467
    .line 1468
    const/4 v6, 0x0

    .line 1469
    goto :goto_33

    .line 1470
    :cond_58
    move-object v6, v0

    .line 1471
    :goto_33
    check-cast v6, Ly2/a;

    .line 1472
    .line 1473
    if-eqz v6, :cond_0

    .line 1474
    .line 1475
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 1476
    .line 1477
    check-cast v0, Lf9/a;

    .line 1478
    .line 1479
    if-eqz v0, :cond_0

    .line 1480
    .line 1481
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    check-cast v0, Ljava/lang/Boolean;

    .line 1486
    .line 1487
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1488
    .line 1489
    .line 1490
    move-result v0

    .line 1491
    return v0

    .line 1492
    :sswitch_b
    sget-object v1, Ly2/i;->b:Ly2/u;

    .line 1493
    .line 1494
    invoke-virtual {v14, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    if-nez v1, :cond_59

    .line 1499
    .line 1500
    const/4 v1, 0x0

    .line 1501
    :cond_59
    check-cast v1, Ly2/a;

    .line 1502
    .line 1503
    if-eqz v1, :cond_5a

    .line 1504
    .line 1505
    iget-object v1, v1, Ly2/a;->b:Lr8/e;

    .line 1506
    .line 1507
    check-cast v1, Lf9/a;

    .line 1508
    .line 1509
    if-eqz v1, :cond_5a

    .line 1510
    .line 1511
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v1

    .line 1515
    check-cast v1, Ljava/lang/Boolean;

    .line 1516
    .line 1517
    move-object/from16 v17, v1

    .line 1518
    .line 1519
    :goto_34
    const/16 v1, 0xc

    .line 1520
    .line 1521
    const/4 v3, 0x0

    .line 1522
    const/4 v5, 0x1

    .line 1523
    goto :goto_35

    .line 1524
    :cond_5a
    const/16 v17, 0x0

    .line 1525
    .line 1526
    goto :goto_34

    .line 1527
    :goto_35
    invoke-static {v4, v0, v5, v3, v1}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 1528
    .line 1529
    .line 1530
    if-eqz v17, :cond_0

    .line 1531
    .line 1532
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1533
    .line 1534
    .line 1535
    move-result v0

    .line 1536
    return v0

    .line 1537
    :cond_5b
    sget-object v0, Ly2/r;->k:Ly2/u;

    .line 1538
    .line 1539
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v0

    .line 1543
    if-nez v0, :cond_5c

    .line 1544
    .line 1545
    const/4 v0, 0x0

    .line 1546
    :cond_5c
    invoke-static {v0, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v0

    .line 1550
    if-eqz v0, :cond_0

    .line 1551
    .line 1552
    invoke-virtual {v8}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    check-cast v0, Lw1/j;

    .line 1557
    .line 1558
    const/16 v1, 0x8

    .line 1559
    .line 1560
    const/4 v5, 0x1

    .line 1561
    const/4 v13, 0x0

    .line 1562
    invoke-virtual {v0, v1, v13, v5}, Lw1/j;->b(IZZ)Z

    .line 1563
    .line 1564
    .line 1565
    return v5

    .line 1566
    :cond_5d
    invoke-virtual {v8}, Landroid/view/View;->isInTouchMode()Z

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    if-eqz v0, :cond_5e

    .line 1571
    .line 1572
    invoke-virtual {v8}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1573
    .line 1574
    .line 1575
    :cond_5e
    sget-object v0, Ly2/i;->v:Ly2/u;

    .line 1576
    .line 1577
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    if-nez v0, :cond_5f

    .line 1582
    .line 1583
    const/4 v6, 0x0

    .line 1584
    goto :goto_36

    .line 1585
    :cond_5f
    move-object v6, v0

    .line 1586
    :goto_36
    check-cast v6, Ly2/a;

    .line 1587
    .line 1588
    if-eqz v6, :cond_0

    .line 1589
    .line 1590
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 1591
    .line 1592
    check-cast v0, Lf9/a;

    .line 1593
    .line 1594
    if-eqz v0, :cond_0

    .line 1595
    .line 1596
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    check-cast v0, Ljava/lang/Boolean;

    .line 1601
    .line 1602
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1603
    .line 1604
    .line 1605
    move-result v0

    .line 1606
    return v0

    .line 1607
    :cond_60
    if-eqz v3, :cond_61

    .line 1608
    .line 1609
    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 1610
    .line 1611
    invoke-virtual {v3, v0, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1612
    .line 1613
    .line 1614
    move-result v0

    .line 1615
    goto :goto_37

    .line 1616
    :cond_61
    const/4 v0, -0x1

    .line 1617
    :goto_37
    if-eqz v3, :cond_62

    .line 1618
    .line 1619
    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 1620
    .line 1621
    invoke-virtual {v3, v1, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1622
    .line 1623
    .line 1624
    move-result v15

    .line 1625
    :cond_62
    const/4 v13, 0x0

    .line 1626
    invoke-virtual {v4, v12, v0, v15, v13}, Lr2/b0;->F(Ly2/m;IIZ)Z

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    if-eqz v0, :cond_63

    .line 1631
    .line 1632
    invoke-virtual {v4, v11}, Lr2/b0;->v(I)I

    .line 1633
    .line 1634
    .line 1635
    move-result v1

    .line 1636
    const/16 v3, 0xc

    .line 1637
    .line 1638
    const/4 v5, 0x0

    .line 1639
    invoke-static {v4, v1, v13, v5, v3}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 1640
    .line 1641
    .line 1642
    :cond_63
    return v0

    .line 1643
    :cond_64
    sget-object v0, Ly2/i;->p:Ly2/u;

    .line 1644
    .line 1645
    invoke-virtual {v14, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    if-nez v0, :cond_65

    .line 1650
    .line 1651
    const/4 v6, 0x0

    .line 1652
    goto :goto_38

    .line 1653
    :cond_65
    move-object v6, v0

    .line 1654
    :goto_38
    check-cast v6, Ly2/a;

    .line 1655
    .line 1656
    if-eqz v6, :cond_0

    .line 1657
    .line 1658
    iget-object v0, v6, Ly2/a;->b:Lr8/e;

    .line 1659
    .line 1660
    check-cast v0, Lf9/a;

    .line 1661
    .line 1662
    if-eqz v0, :cond_0

    .line 1663
    .line 1664
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v0

    .line 1668
    check-cast v0, Ljava/lang/Boolean;

    .line 1669
    .line 1670
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1671
    .line 1672
    .line 1673
    move-result v0

    .line 1674
    return v0

    .line 1675
    :cond_66
    if-eqz v3, :cond_0

    .line 1676
    .line 1677
    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1678
    .line 1679
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1680
    .line 1681
    .line 1682
    move-result v0

    .line 1683
    const-string v6, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 1684
    .line 1685
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1686
    .line 1687
    .line 1688
    move-result v3

    .line 1689
    if-ne v1, v5, :cond_67

    .line 1690
    .line 1691
    const/4 v1, 0x1

    .line 1692
    goto :goto_39

    .line 1693
    :cond_67
    const/4 v1, 0x0

    .line 1694
    :goto_39
    iget-object v6, v4, Lr2/b0;->x:Ljava/lang/Integer;

    .line 1695
    .line 1696
    if-nez v6, :cond_68

    .line 1697
    .line 1698
    goto :goto_3a

    .line 1699
    :cond_68
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1700
    .line 1701
    .line 1702
    move-result v6

    .line 1703
    if-eq v11, v6, :cond_69

    .line 1704
    .line 1705
    :goto_3a
    iput v15, v4, Lr2/b0;->w:I

    .line 1706
    .line 1707
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v6

    .line 1711
    iput-object v6, v4, Lr2/b0;->x:Ljava/lang/Integer;

    .line 1712
    .line 1713
    :cond_69
    invoke-static {v12}, Lr2/b0;->p(Ly2/m;)Ljava/lang/String;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v6

    .line 1717
    if-eqz v6, :cond_0

    .line 1718
    .line 1719
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1720
    .line 1721
    .line 1722
    move-result v7

    .line 1723
    if-nez v7, :cond_6a

    .line 1724
    .line 1725
    goto/16 :goto_0

    .line 1726
    .line 1727
    :cond_6a
    invoke-static {v12}, Lr2/b0;->p(Ly2/m;)Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v7

    .line 1731
    if-eqz v7, :cond_6c

    .line 1732
    .line 1733
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1734
    .line 1735
    .line 1736
    move-result v9

    .line 1737
    if-nez v9, :cond_6b

    .line 1738
    .line 1739
    goto :goto_3b

    .line 1740
    :cond_6b
    const/4 v9, 0x1

    .line 1741
    if-eq v0, v9, :cond_77

    .line 1742
    .line 1743
    const/4 v9, 0x2

    .line 1744
    if-eq v0, v9, :cond_75

    .line 1745
    .line 1746
    const/4 v8, 0x4

    .line 1747
    if-eq v0, v8, :cond_6f

    .line 1748
    .line 1749
    const/16 v9, 0x8

    .line 1750
    .line 1751
    if-eq v0, v9, :cond_6d

    .line 1752
    .line 1753
    const/16 v9, 0x10

    .line 1754
    .line 1755
    if-eq v0, v9, :cond_6f

    .line 1756
    .line 1757
    :cond_6c
    :goto_3b
    const/4 v8, 0x0

    .line 1758
    goto/16 :goto_3c

    .line 1759
    .line 1760
    :cond_6d
    sget-object v8, Lr2/d;->c:Lr2/d;

    .line 1761
    .line 1762
    if-nez v8, :cond_6e

    .line 1763
    .line 1764
    new-instance v8, Lr2/d;

    .line 1765
    .line 1766
    invoke-direct {v8}, Ld6/f;-><init>()V

    .line 1767
    .line 1768
    .line 1769
    sput-object v8, Lr2/d;->c:Lr2/d;

    .line 1770
    .line 1771
    :cond_6e
    sget-object v8, Lr2/d;->c:Lr2/d;

    .line 1772
    .line 1773
    const-string v9, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator"

    .line 1774
    .line 1775
    invoke-static {v8, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1776
    .line 1777
    .line 1778
    iput-object v7, v8, Ld6/f;->a:Ljava/lang/Object;

    .line 1779
    .line 1780
    goto/16 :goto_3c

    .line 1781
    .line 1782
    :cond_6f
    sget-object v9, Ly2/i;->a:Ly2/u;

    .line 1783
    .line 1784
    invoke-virtual {v14, v9}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result v9

    .line 1788
    if-nez v9, :cond_70

    .line 1789
    .line 1790
    goto :goto_3b

    .line 1791
    :cond_70
    invoke-static {v13}, Lr2/j0;->o(Ly2/j;)Lb3/l0;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v9

    .line 1795
    if-nez v9, :cond_71

    .line 1796
    .line 1797
    goto :goto_3b

    .line 1798
    :cond_71
    if-ne v0, v8, :cond_73

    .line 1799
    .line 1800
    sget-object v8, Lr2/b;->g:Lr2/b;

    .line 1801
    .line 1802
    if-nez v8, :cond_72

    .line 1803
    .line 1804
    new-instance v8, Lr2/b;

    .line 1805
    .line 1806
    const/4 v11, 0x2

    .line 1807
    invoke-direct {v8, v11}, Lr2/b;-><init>(I)V

    .line 1808
    .line 1809
    .line 1810
    sput-object v8, Lr2/b;->g:Lr2/b;

    .line 1811
    .line 1812
    :cond_72
    sget-object v8, Lr2/b;->g:Lr2/b;

    .line 1813
    .line 1814
    const-string v11, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.LineTextSegmentIterator"

    .line 1815
    .line 1816
    invoke-static {v8, v11}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    iput-object v7, v8, Ld6/f;->a:Ljava/lang/Object;

    .line 1820
    .line 1821
    iput-object v9, v8, Lr2/b;->d:Ljava/lang/Object;

    .line 1822
    .line 1823
    goto :goto_3c

    .line 1824
    :cond_73
    sget-object v8, Lr2/c;->e:Lr2/c;

    .line 1825
    .line 1826
    if-nez v8, :cond_74

    .line 1827
    .line 1828
    new-instance v8, Lr2/c;

    .line 1829
    .line 1830
    invoke-direct {v8}, Ld6/f;-><init>()V

    .line 1831
    .line 1832
    .line 1833
    new-instance v11, Landroid/graphics/Rect;

    .line 1834
    .line 1835
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1836
    .line 1837
    .line 1838
    sput-object v8, Lr2/c;->e:Lr2/c;

    .line 1839
    .line 1840
    :cond_74
    sget-object v8, Lr2/c;->e:Lr2/c;

    .line 1841
    .line 1842
    const-string v11, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator"

    .line 1843
    .line 1844
    invoke-static {v8, v11}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1845
    .line 1846
    .line 1847
    iput-object v7, v8, Ld6/f;->a:Ljava/lang/Object;

    .line 1848
    .line 1849
    iput-object v9, v8, Lr2/c;->c:Lb3/l0;

    .line 1850
    .line 1851
    iput-object v12, v8, Lr2/c;->d:Ly2/m;

    .line 1852
    .line 1853
    goto :goto_3c

    .line 1854
    :cond_75
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v8

    .line 1858
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v8

    .line 1862
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v8

    .line 1866
    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1867
    .line 1868
    sget-object v9, Lr2/b;->f:Lr2/b;

    .line 1869
    .line 1870
    if-nez v9, :cond_76

    .line 1871
    .line 1872
    new-instance v9, Lr2/b;

    .line 1873
    .line 1874
    const/4 v11, 0x1

    .line 1875
    invoke-direct {v9, v11}, Lr2/b;-><init>(I)V

    .line 1876
    .line 1877
    .line 1878
    invoke-static {v8}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v8

    .line 1882
    iput-object v8, v9, Lr2/b;->d:Ljava/lang/Object;

    .line 1883
    .line 1884
    sput-object v9, Lr2/b;->f:Lr2/b;

    .line 1885
    .line 1886
    :cond_76
    sget-object v8, Lr2/b;->f:Lr2/b;

    .line 1887
    .line 1888
    const-string v9, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.WordTextSegmentIterator"

    .line 1889
    .line 1890
    invoke-static {v8, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1891
    .line 1892
    .line 1893
    invoke-virtual {v8, v7}, Lr2/b;->q(Ljava/lang/String;)V

    .line 1894
    .line 1895
    .line 1896
    goto :goto_3c

    .line 1897
    :cond_77
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v8

    .line 1901
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v8

    .line 1905
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v8

    .line 1909
    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1910
    .line 1911
    sget-object v9, Lr2/b;->e:Lr2/b;

    .line 1912
    .line 1913
    if-nez v9, :cond_78

    .line 1914
    .line 1915
    new-instance v9, Lr2/b;

    .line 1916
    .line 1917
    const/4 v11, 0x0

    .line 1918
    invoke-direct {v9, v11}, Lr2/b;-><init>(I)V

    .line 1919
    .line 1920
    .line 1921
    invoke-static {v8}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v8

    .line 1925
    iput-object v8, v9, Lr2/b;->d:Ljava/lang/Object;

    .line 1926
    .line 1927
    sput-object v9, Lr2/b;->e:Lr2/b;

    .line 1928
    .line 1929
    :cond_78
    sget-object v8, Lr2/b;->e:Lr2/b;

    .line 1930
    .line 1931
    const-string v9, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.CharacterTextSegmentIterator"

    .line 1932
    .line 1933
    invoke-static {v8, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1934
    .line 1935
    .line 1936
    invoke-virtual {v8, v7}, Lr2/b;->q(Ljava/lang/String;)V

    .line 1937
    .line 1938
    .line 1939
    :goto_3c
    if-nez v8, :cond_79

    .line 1940
    .line 1941
    goto/16 :goto_0

    .line 1942
    .line 1943
    :cond_79
    invoke-virtual {v4, v12}, Lr2/b0;->m(Ly2/m;)I

    .line 1944
    .line 1945
    .line 1946
    move-result v7

    .line 1947
    if-ne v7, v15, :cond_7b

    .line 1948
    .line 1949
    if-eqz v1, :cond_7a

    .line 1950
    .line 1951
    const/4 v6, 0x0

    .line 1952
    goto :goto_3d

    .line 1953
    :cond_7a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1954
    .line 1955
    .line 1956
    move-result v6

    .line 1957
    :goto_3d
    move v7, v6

    .line 1958
    :cond_7b
    if-eqz v1, :cond_7c

    .line 1959
    .line 1960
    invoke-virtual {v8, v7}, Ld6/f;->f(I)[I

    .line 1961
    .line 1962
    .line 1963
    move-result-object v6

    .line 1964
    goto :goto_3e

    .line 1965
    :cond_7c
    invoke-virtual {v8, v7}, Ld6/f;->n(I)[I

    .line 1966
    .line 1967
    .line 1968
    move-result-object v6

    .line 1969
    :goto_3e
    if-nez v6, :cond_7d

    .line 1970
    .line 1971
    goto/16 :goto_0

    .line 1972
    .line 1973
    :cond_7d
    const/16 v18, 0x0

    .line 1974
    .line 1975
    aget v7, v6, v18

    .line 1976
    .line 1977
    const/16 v19, 0x1

    .line 1978
    .line 1979
    aget v16, v6, v19

    .line 1980
    .line 1981
    if-eqz v3, :cond_81

    .line 1982
    .line 1983
    sget-object v3, Ly2/r;->a:Ly2/u;

    .line 1984
    .line 1985
    invoke-virtual {v14, v3}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v3

    .line 1989
    if-nez v3, :cond_81

    .line 1990
    .line 1991
    sget-object v3, Ly2/r;->E:Ly2/u;

    .line 1992
    .line 1993
    invoke-virtual {v14, v3}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1994
    .line 1995
    .line 1996
    move-result v3

    .line 1997
    if-eqz v3, :cond_81

    .line 1998
    .line 1999
    invoke-virtual {v4, v12}, Lr2/b0;->n(Ly2/m;)I

    .line 2000
    .line 2001
    .line 2002
    move-result v3

    .line 2003
    if-ne v3, v15, :cond_7f

    .line 2004
    .line 2005
    if-eqz v1, :cond_7e

    .line 2006
    .line 2007
    move v3, v7

    .line 2008
    goto :goto_3f

    .line 2009
    :cond_7e
    move/from16 v3, v16

    .line 2010
    .line 2011
    :cond_7f
    :goto_3f
    if-eqz v1, :cond_80

    .line 2012
    .line 2013
    move/from16 v6, v16

    .line 2014
    .line 2015
    goto :goto_41

    .line 2016
    :cond_80
    move v6, v7

    .line 2017
    goto :goto_41

    .line 2018
    :cond_81
    if-eqz v1, :cond_82

    .line 2019
    .line 2020
    move/from16 v3, v16

    .line 2021
    .line 2022
    goto :goto_40

    .line 2023
    :cond_82
    move v3, v7

    .line 2024
    :goto_40
    move v6, v3

    .line 2025
    :goto_41
    if-eqz v1, :cond_83

    .line 2026
    .line 2027
    const/16 v13, 0x100

    .line 2028
    .line 2029
    goto :goto_42

    .line 2030
    :cond_83
    const/16 v13, 0x200

    .line 2031
    .line 2032
    :goto_42
    new-instance v11, Lr2/y;

    .line 2033
    .line 2034
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2035
    .line 2036
    .line 2037
    move-result-wide v17

    .line 2038
    move v14, v0

    .line 2039
    move v15, v7

    .line 2040
    invoke-direct/range {v11 .. v18}, Lr2/y;-><init>(Ly2/m;IIIIJ)V

    .line 2041
    .line 2042
    .line 2043
    iput-object v11, v4, Lr2/b0;->B:Lr2/y;

    .line 2044
    .line 2045
    const/4 v5, 0x1

    .line 2046
    invoke-virtual {v4, v12, v3, v6, v5}, Lr2/b0;->F(Ly2/m;IIZ)Z

    .line 2047
    .line 2048
    .line 2049
    return v5

    .line 2050
    :cond_84
    iget v1, v4, Lr2/b0;->n:I

    .line 2051
    .line 2052
    if-ne v1, v0, :cond_85

    .line 2053
    .line 2054
    const/4 v1, 0x1

    .line 2055
    goto :goto_43

    .line 2056
    :cond_85
    const/4 v1, 0x0

    .line 2057
    :goto_43
    if-eqz v1, :cond_0

    .line 2058
    .line 2059
    iput v15, v4, Lr2/b0;->n:I

    .line 2060
    .line 2061
    const/4 v3, 0x0

    .line 2062
    iput-object v3, v4, Lr2/b0;->p:Lf4/e;

    .line 2063
    .line 2064
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 2065
    .line 2066
    .line 2067
    const/high16 v1, 0x10000

    .line 2068
    .line 2069
    const/16 v5, 0xc

    .line 2070
    .line 2071
    invoke-static {v4, v0, v1, v3, v5}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 2072
    .line 2073
    .line 2074
    :goto_44
    const/16 v19, 0x1

    .line 2075
    .line 2076
    return v19

    .line 2077
    :cond_86
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2078
    .line 2079
    .line 2080
    move-result v1

    .line 2081
    if-eqz v1, :cond_87

    .line 2082
    .line 2083
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2084
    .line 2085
    .line 2086
    move-result v1

    .line 2087
    if-eqz v1, :cond_87

    .line 2088
    .line 2089
    const/4 v5, 0x1

    .line 2090
    goto :goto_45

    .line 2091
    :cond_87
    const/4 v5, 0x0

    .line 2092
    :goto_45
    if-nez v5, :cond_88

    .line 2093
    .line 2094
    goto/16 :goto_0

    .line 2095
    .line 2096
    :cond_88
    iget v1, v4, Lr2/b0;->n:I

    .line 2097
    .line 2098
    if-ne v1, v0, :cond_89

    .line 2099
    .line 2100
    const/4 v5, 0x1

    .line 2101
    goto :goto_46

    .line 2102
    :cond_89
    const/4 v5, 0x0

    .line 2103
    :goto_46
    if-nez v5, :cond_0

    .line 2104
    .line 2105
    if-eq v1, v15, :cond_8a

    .line 2106
    .line 2107
    const/high16 v3, 0x10000

    .line 2108
    .line 2109
    const/16 v5, 0xc

    .line 2110
    .line 2111
    const/4 v6, 0x0

    .line 2112
    invoke-static {v4, v1, v3, v6, v5}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 2113
    .line 2114
    .line 2115
    goto :goto_47

    .line 2116
    :cond_8a
    const/16 v5, 0xc

    .line 2117
    .line 2118
    const/4 v6, 0x0

    .line 2119
    :goto_47
    iput v0, v4, Lr2/b0;->n:I

    .line 2120
    .line 2121
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 2122
    .line 2123
    .line 2124
    const v1, 0x8000

    .line 2125
    .line 2126
    .line 2127
    invoke-static {v4, v0, v1, v6, v5}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 2128
    .line 2129
    .line 2130
    goto :goto_44

    .line 2131
    :goto_48
    return v18

    .line 2132
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_5
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_3
        0x1020036 -> :sswitch_2
        0x102003d -> :sswitch_1
        0x1020054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020046
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
