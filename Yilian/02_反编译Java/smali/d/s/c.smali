.class public Ld/s/c;
.super Ld/s/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s/c$k;
    }
.end annotation


# static fields
.field public static final M:[Ljava/lang/String;

.field public static final N:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final O:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Ld/s/c$k;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final P:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Ld/s/c$k;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final Q:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final R:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final S:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static T:Ld/s/i;


# instance fields
.field public J:[I

.field public K:Z

.field public L:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Ld/s/c;->M:[Ljava/lang/String;

    new-instance v0, Ld/s/c$b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Ld/s/c$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ld/s/c;->N:Landroid/util/Property;

    new-instance v0, Ld/s/c$c;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Ld/s/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ld/s/c;->O:Landroid/util/Property;

    new-instance v0, Ld/s/c$d;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Ld/s/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ld/s/c;->P:Landroid/util/Property;

    new-instance v0, Ld/s/c$e;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Ld/s/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ld/s/c;->Q:Landroid/util/Property;

    new-instance v0, Ld/s/c$f;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Ld/s/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ld/s/c;->R:Landroid/util/Property;

    new-instance v0, Ld/s/c$g;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Ld/s/c$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ld/s/c;->S:Landroid/util/Property;

    new-instance v0, Ld/s/i;

    invoke-direct {v0}, Ld/s/i;-><init>()V

    sput-object v0, Ld/s/c;->T:Ld/s/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/s/k;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ld/s/c;->J:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/s/c;->K:Z

    iput-boolean v0, p0, Ld/s/c;->L:Z

    return-void
.end method


# virtual methods
.method public final H(Ld/s/s;)V
    .locals 7

    iget-object v0, p1, Ld/s/s;->b:Landroid/view/View;

    invoke-static {v0}, Ld/g/m/s;->A(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p1, Ld/s/s;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Ld/s/s;->a:Ljava/util/Map;

    iget-object v2, p1, Ld/s/s;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Ld/s/c;->L:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Ld/s/s;->b:Landroid/view/View;

    iget-object v2, p0, Ld/s/c;->J:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p1, Ld/s/s;->a:Ljava/util/Map;

    iget-object v2, p0, Ld/s/c;->J:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Ld/s/s;->a:Ljava/util/Map;

    iget-object v2, p0, Ld/s/c;->J:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Ld/s/c;->K:Z

    if-eqz v1, :cond_3

    iget-object p1, p1, Ld/s/s;->a:Ljava/util/Map;

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android:changeBounds:clip"

    .line 2
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public d(Ld/s/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld/s/c;->H(Ld/s/s;)V

    return-void
.end method

.method public g(Ld/s/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld/s/c;->H(Ld/s/s;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;Ld/s/s;Ld/s/s;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_20

    if-nez v1, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v4, v0, Ld/s/s;->a:Ljava/util/Map;

    iget-object v5, v1, Ld/s/s;->a:Ljava/util/Map;

    const-string v6, "android:changeBounds:parent"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1f

    if-nez v5, :cond_1

    goto/16 :goto_10

    :cond_1
    iget-object v9, v1, Ld/s/s;->b:Landroid/view/View;

    .line 1
    iget-boolean v6, v8, Ld/s/c;->L:Z

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v8, v4, v10}, Ld/s/k;->n(Landroid/view/View;Z)Ld/s/s;

    move-result-object v6

    if-nez v6, :cond_2

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_2
    iget-object v4, v6, Ld/s/s;->b:Landroid/view/View;

    if-ne v5, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_1a

    .line 2
    iget-object v2, v0, Ld/s/s;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v6, v1, Ld/s/s;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    iget v14, v2, Landroid/graphics/Rect;->right:I

    iget v15, v4, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v14, v6

    sub-int v10, v2, v12

    sub-int v7, v15, v11

    sub-int v5, v4, v13

    iget-object v0, v0, Ld/s/s;->a:Ljava/util/Map;

    move-object/from16 v16, v9

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v1, Ld/s/s;->a:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v3, :cond_5

    if-nez v10, :cond_6

    :cond_5
    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    :cond_6
    if-ne v6, v11, :cond_8

    if-eq v12, v13, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-ne v14, v15, :cond_9

    if-eq v2, v4, :cond_b

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_c
    if-nez v0, :cond_e

    if-eqz v9, :cond_e

    :cond_d
    add-int/lit8 v1, v1, 0x1

    :cond_e
    if-lez v1, :cond_1b

    move-object/from16 p1, v9

    iget-boolean v9, v8, Ld/s/c;->K:Z

    if-nez v9, :cond_13

    move-object/from16 v9, v16

    invoke-static {v9, v6, v12, v14, v2}, Ld/s/c0;->d(Landroid/view/View;IIII)V

    const/4 v0, 0x2

    if-ne v1, v0, :cond_10

    if-ne v3, v7, :cond_f

    if-ne v10, v5, :cond_f

    .line 3
    iget-object v0, v8, Ld/s/k;->F:Ld/s/f;

    int-to-float v1, v6

    int-to-float v2, v12

    int-to-float v3, v11

    int-to-float v4, v13

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Ld/s/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Ld/s/c;->S:Landroid/util/Property;

    goto :goto_6

    :cond_f
    new-instance v0, Ld/s/c$k;

    invoke-direct {v0, v9}, Ld/s/c$k;-><init>(Landroid/view/View;)V

    .line 5
    iget-object v1, v8, Ld/s/k;->F:Ld/s/f;

    int-to-float v3, v6

    int-to-float v5, v12

    int-to-float v6, v11

    int-to-float v7, v13

    .line 6
    invoke-virtual {v1, v3, v5, v6, v7}, Ld/s/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Ld/s/c;->O:Landroid/util/Property;

    invoke-static {v0, v3, v1}, Ld/b/k/r;->X(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 7
    iget-object v3, v8, Ld/s/k;->F:Ld/s/f;

    int-to-float v5, v14

    int-to-float v2, v2

    int-to-float v6, v15

    int-to-float v4, v4

    .line 8
    invoke-virtual {v3, v5, v2, v6, v4}, Ld/s/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Ld/s/c;->P:Landroid/util/Property;

    invoke-static {v0, v3, v2}, Ld/b/k/r;->X(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Ld/s/c$h;

    invoke-direct {v1, v8, v0}, Ld/s/c$h;-><init>(Ld/s/c;Ld/s/c$k;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_c

    :cond_10
    if-ne v6, v11, :cond_12

    if-eq v12, v13, :cond_11

    goto :goto_5

    .line 9
    :cond_11
    iget-object v0, v8, Ld/s/k;->F:Ld/s/f;

    int-to-float v1, v14

    int-to-float v2, v2

    int-to-float v3, v15

    int-to-float v4, v4

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Ld/s/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Ld/s/c;->Q:Landroid/util/Property;

    goto :goto_6

    .line 11
    :cond_12
    :goto_5
    iget-object v0, v8, Ld/s/k;->F:Ld/s/f;

    int-to-float v1, v6

    int-to-float v2, v12

    int-to-float v3, v11

    int-to-float v4, v13

    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Ld/s/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Ld/s/c;->R:Landroid/util/Property;

    :goto_6
    invoke-static {v9, v1, v0}, Ld/b/k/r;->X(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto/16 :goto_c

    :cond_13
    move-object/from16 v9, v16

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v6

    add-int/2addr v2, v12

    invoke-static {v9, v6, v12, v1, v2}, Ld/s/c0;->d(Landroid/view/View;IIII)V

    if-ne v6, v11, :cond_15

    if-eq v12, v13, :cond_14

    goto :goto_7

    :cond_14
    const/4 v12, 0x0

    goto :goto_8

    .line 13
    :cond_15
    :goto_7
    iget-object v1, v8, Ld/s/k;->F:Ld/s/f;

    int-to-float v2, v6

    int-to-float v6, v12

    int-to-float v12, v11

    int-to-float v14, v13

    .line 14
    invoke-virtual {v1, v2, v6, v12, v14}, Ld/s/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Ld/s/c;->S:Landroid/util/Property;

    invoke-static {v9, v2, v1}, Ld/b/k/r;->X(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v12, v1

    :goto_8
    if-nez v0, :cond_16

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9

    :cond_16
    const/4 v1, 0x0

    :goto_9
    if-nez p1, :cond_17

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_a

    :cond_17
    move-object/from16 v2, p1

    :goto_a
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {v9, v0}, Ld/g/m/s;->P(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Ld/s/c;->T:Ld/s/i;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const-string v0, "clipBounds"

    invoke-static {v9, v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v14, Ld/s/c$i;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p1

    move v7, v4

    move v4, v11

    move v5, v13

    move v6, v15

    invoke-direct/range {v0 .. v7}, Ld/s/c$i;-><init>(Ld/s/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v3, v10

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    invoke-static {v12, v3}, Ld/s/r;->b(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v3

    :goto_c
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ld/b/k/r;->y0(Landroid/view/ViewGroup;Z)V

    new-instance v1, Ld/s/c$j;

    invoke-direct {v1, v8, v0}, Ld/s/c$j;-><init>(Ld/s/c;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v1}, Ld/s/k;->a(Ld/s/k$d;)Ld/s/k;

    :cond_19
    return-object v3

    :cond_1a
    iget-object v3, v0, Ld/s/s;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Ld/s/s;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, v1, Ld/s/s;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v1, Ld/s/s;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v4, :cond_1c

    if-eq v0, v1, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v0, 0x0

    return-object v0

    :cond_1c
    :goto_d
    iget-object v5, v8, Ld/s/c;->J:[I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v9}, Ld/s/c0;->b(Landroid/view/View;)F

    move-result v5

    const/4 v7, 0x0

    .line 15
    sget-object v10, Ld/s/c0;->a:Ld/s/g0;

    invoke-virtual {v10, v9, v7}, Ld/s/g0;->e(Landroid/view/View;F)V

    .line 16
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v7, v10, :cond_1d

    new-instance v7, Ld/s/a0;

    invoke-direct {v7, v2}, Ld/s/a0;-><init>(Landroid/view/View;)V

    goto :goto_e

    :cond_1d
    invoke-static/range {p1 .. p1}, Ld/s/z;->e(Landroid/view/View;)Ld/s/z;

    move-result-object v7

    .line 17
    :goto_e
    invoke-interface {v7, v6}, Ld/s/b0;->b(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v7, v8, Ld/s/k;->F:Ld/s/f;

    .line 19
    iget-object v10, v8, Ld/s/c;->J:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    sub-int/2addr v3, v12

    int-to-float v3, v3

    const/4 v12, 0x1

    aget v13, v10, v12

    sub-int/2addr v0, v13

    int-to-float v0, v0

    aget v13, v10, v11

    sub-int/2addr v4, v13

    int-to-float v4, v4

    aget v10, v10, v12

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v7, v3, v0, v4, v1}, Ld/s/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Ld/s/c;->N:Landroid/util/Property;

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1e

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_f

    :cond_1e
    new-instance v3, Ld/s/g;

    invoke-direct {v3, v1, v0}, Ld/s/g;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    :goto_f
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 21
    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v10, Ld/s/c$a;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Ld/s/c$a;-><init>(Ld/s/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v7

    :cond_1f
    :goto_10
    const/4 v0, 0x0

    return-object v0

    :cond_20
    :goto_11
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public p()[Ljava/lang/String;
    .locals 1

    sget-object v0, Ld/s/c;->M:[Ljava/lang/String;

    return-object v0
.end method
