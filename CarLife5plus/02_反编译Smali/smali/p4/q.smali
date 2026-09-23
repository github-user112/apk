.class public final Lp4/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Lp4/x;


# direct methods
.method public constructor <init>(Lp4/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp4/q;->a:Lp4/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 2
    const-class v3, Lp4/p;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v4, p0

    iget-object v5, v4, Lp4/q;->a:Lp4/x;

    if-eqz v3, :cond_0

    .line 3
    new-instance v0, Lp4/p;

    invoke-direct {v0, v1, v2, v5}, Lp4/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lp4/x;)V

    return-object v0

    .line 4
    :cond_0
    const-string v3, "fragment"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    move-object/from16 p2, v3

    goto/16 :goto_a

    .line 5
    :cond_2
    const-string v0, "class"

    invoke-interface {v2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v6, Lo4/a;->a:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 8
    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/4 v11, 0x2

    .line 9
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 12
    :try_start_0
    invoke-static {v6, v0}, Lp4/u;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 13
    const-class v13, Lp4/k;

    invoke-virtual {v13, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    :cond_5
    if-ne v7, v9, :cond_7

    if-ne v10, v9, :cond_7

    if-eqz v12, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    if-eq v10, v9, :cond_8

    .line 16
    invoke-virtual {v5, v10}, Lp4/x;->y(I)Lp4/k;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v3

    :goto_3
    if-nez v6, :cond_d

    if-eqz v12, :cond_d

    .line 17
    iget-object v6, v5, Lp4/x;->c:Lba/a;

    .line 18
    iget-object v13, v6, Lba/a;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v8

    :goto_4
    if-ltz v14, :cond_a

    .line 20
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lp4/k;

    move-object/from16 p2, v3

    if-eqz v15, :cond_9

    .line 21
    iget-object v3, v15, Lp4/k;->x:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v6, v15

    goto :goto_5

    :cond_9
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, p2

    goto :goto_4

    :cond_a
    move-object/from16 p2, v3

    .line 22
    iget-object v3, v6, Lba/a;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp4/c0;

    if-eqz v6, :cond_b

    .line 23
    iget-object v6, v6, Lp4/c0;->c:Lp4/k;

    .line 24
    iget-object v13, v6, Lp4/k;->x:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_c
    move-object/from16 v6, p2

    goto :goto_5

    :cond_d
    move-object/from16 p2, v3

    :goto_5
    if-nez v6, :cond_e

    if-eq v7, v9, :cond_e

    .line 25
    invoke-virtual {v5, v7}, Lp4/x;->y(I)Lp4/k;

    move-result-object v6

    .line 26
    :cond_e
    const-string v3, "Fragment "

    const-string v9, "FragmentManager"

    if-nez v6, :cond_12

    .line 27
    invoke-virtual {v5}, Lp4/x;->A()Lp4/u;

    move-result-object v2

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 29
    invoke-virtual {v2, v0}, Lp4/u;->a(Ljava/lang/String;)Lp4/k;

    move-result-object v6

    .line 30
    iput-boolean v8, v6, Lp4/k;->m:Z

    if-eqz v10, :cond_f

    move v1, v10

    goto :goto_6

    :cond_f
    move v1, v7

    .line 31
    :goto_6
    iput v1, v6, Lp4/k;->v:I

    .line 32
    iput v7, v6, Lp4/k;->w:I

    .line 33
    iput-object v12, v6, Lp4/k;->x:Ljava/lang/String;

    .line 34
    iput-boolean v8, v6, Lp4/k;->n:Z

    .line 35
    iput-object v5, v6, Lp4/k;->r:Lp4/x;

    .line 36
    iget-object v1, v5, Lp4/x;->t:Lp4/m;

    .line 37
    iput-object v1, v6, Lp4/k;->s:Lp4/m;

    .line 38
    iget-object v2, v1, Lp4/m;->c:Lj/j;

    .line 39
    iput-boolean v8, v6, Lp4/k;->D:Z

    if-nez v1, :cond_10

    move-object/from16 v1, p2

    goto :goto_7

    .line 40
    :cond_10
    iget-object v1, v1, Lp4/m;->b:Lj/j;

    :goto_7
    if-eqz v1, :cond_11

    .line 41
    iput-boolean v8, v6, Lp4/k;->D:Z

    .line 42
    :cond_11
    invoke-virtual {v5, v6}, Lp4/x;->a(Lp4/k;)Lp4/c0;

    move-result-object v1

    .line 43
    invoke-static {v11}, Lp4/x;->D(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 47
    :cond_12
    iget-boolean v1, v6, Lp4/k;->n:Z

    if-nez v1, :cond_16

    .line 48
    iput-boolean v8, v6, Lp4/k;->n:Z

    .line 49
    iput-object v5, v6, Lp4/k;->r:Lp4/x;

    .line 50
    iget-object v1, v5, Lp4/x;->t:Lp4/m;

    .line 51
    iput-object v1, v6, Lp4/k;->s:Lp4/m;

    .line 52
    iget-object v2, v1, Lp4/m;->c:Lj/j;

    .line 53
    iput-boolean v8, v6, Lp4/k;->D:Z

    if-nez v1, :cond_13

    move-object/from16 v1, p2

    goto :goto_8

    .line 54
    :cond_13
    iget-object v1, v1, Lp4/m;->b:Lj/j;

    :goto_8
    if-eqz v1, :cond_14

    .line 55
    iput-boolean v8, v6, Lp4/k;->D:Z

    .line 56
    :cond_14
    invoke-virtual {v5, v6}, Lp4/x;->f(Lp4/k;)Lp4/c0;

    move-result-object v1

    .line 57
    invoke-static {v11}, Lp4/x;->D(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Retained Fragment "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_15
    :goto_9
    move-object/from16 v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v5, Lq4/c;->a:Lq4/b;

    .line 62
    new-instance v5, Lq4/a;

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Attempting to use <fragment> tag to add fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-direct {v5, v6, v7}, Lq4/a;-><init>(Lp4/k;Ljava/lang/String;)V

    .line 65
    invoke-static {v5}, Lq4/c;->b(Lq4/a;)V

    .line 66
    invoke-static {v6}, Lq4/c;->a(Lp4/k;)Lq4/b;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iput-object v2, v6, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {v1}, Lp4/c0;->j()V

    .line 70
    invoke-virtual {v1}, Lp4/c0;->i()V

    .line 71
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, " did not create a view."

    .line 72
    invoke-static {v3, v0, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or parent id 0x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with another fragment for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_a
    return-object p2
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lp4/q;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
