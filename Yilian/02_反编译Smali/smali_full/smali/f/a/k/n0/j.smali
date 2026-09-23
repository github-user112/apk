.class public Lf/a/k/n0/j;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/k/n0/j$d;,
        Lf/a/k/n0/j$c;,
        Lf/a/k/n0/j$b;,
        Lf/a/k/n0/j$a;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public F:I

.field public G:Landroid/content/Context;

.field public H:Landroid/view/LayoutInflater;

.field public I:Landroid/widget/FrameLayout;

.field public J:Z

.field public K:Landroid/widget/LinearLayout;

.field public L:F

.field public M:F

.field public N:I

.field public a:I

.field public b:I

.field public c:Landroid/widget/FrameLayout;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/FrameLayout;

.field public o:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/Button;

.field public r:Landroid/widget/Button;

.field public s:Landroid/widget/Button;

.field public t:Lf/a/k/n0/j$d;

.field public u:Lf/a/k/n0/j$c;

.field public v:Lf/a/k/n0/j$b;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v2, 0x64

    iput v2, p0, Lf/a/k/n0/j;->a:I

    const/16 v2, 0xc8

    iput v2, p0, Lf/a/k/n0/j;->b:I

    iput-object v0, p0, Lf/a/k/n0/j;->t:Lf/a/k/n0/j$d;

    iput-object v0, p0, Lf/a/k/n0/j;->u:Lf/a/k/n0/j$c;

    iput-object v0, p0, Lf/a/k/n0/j;->v:Lf/a/k/n0/j$b;

    iput-boolean v1, p0, Lf/a/k/n0/j;->y:Z

    iput v1, p0, Lf/a/k/n0/j;->F:I

    iput-object v0, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/n0/j;->J:Z

    .line 2
    iput-object p1, p0, Lf/a/k/n0/j;->G:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lf/a/k/n0/j;->H:Landroid/view/LayoutInflater;

    const v0, 0x7f0c006c

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v0, 0x7f09008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f09010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f09010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f090112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f09010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->n:Landroid/widget/FrameLayout;

    const v0, 0x7f090115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f090110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lf/a/k/n0/j;->q:Landroid/widget/Button;

    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lf/a/k/n0/j;->r:Landroid/widget/Button;

    const v0, 0x7f09006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lf/a/k/n0/j;->s:Landroid/widget/Button;

    iget-object v0, p0, Lf/a/k/n0/j;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lf/a/k/n0/j;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lf/a/k/n0/j;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lf/a/k/n0/j;->K:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lf/a/k/n0/j;->v:Lf/a/k/n0/j$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf/a/k/n0/j$b;->a()V

    :cond_1
    return-void
.end method

.method public final b(FF)Z
    .locals 10

    iget-object v0, p0, Lf/a/k/n0/j;->G:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iget-object v1, p0, Lf/a/k/n0/j;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lf/a/k/n0/j;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x3

    aput-object v0, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x4

    aput-object v0, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x5

    aput-object v0, v5, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x6

    aput-object v0, v5, v9

    const-string v0, "isOutOfBounds: x = %f, y = %f, slop = %d, popWidth = %d, popHeight = %d, activityWidth = %d, activityHeight = %d"

    invoke-static {v0, v5}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    div-int/2addr v3, v6

    div-int/2addr v1, v6

    sub-int v0, v3, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    div-int/2addr v4, v6

    div-int/2addr v2, v6

    sub-int v0, v4, v2

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    add-int/2addr v3, v1

    int-to-float v0, v3

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_0

    add-int/2addr v4, v2

    int-to-float p1, v4

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    :cond_0
    const/4 v7, 0x1

    :cond_1
    return v7
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    return v1
.end method

.method public d()Lf/a/k/n0/j;
    .locals 6

    .line 1
    iget v0, p0, Lf/a/k/n0/j;->a:I

    const v1, 0x7f090085

    const v2, 0x7f0901ee

    const v3, 0x7f0901ed

    const-string v4, ""

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget v0, p0, Lf/a/k/n0/j;->F:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lf/a/k/n0/j;->c:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lf/a/k/n0/j;->H:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lf/a/k/n0/j;->F:I

    const v1, 0x7f0c0064

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lf/a/k/n0/j;->c:Landroid/widget/FrameLayout;

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->x:Ljava/lang/String;

    if-nez v1, :cond_8

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lf/a/k/n0/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/n0/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/n0/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lf/a/k/n0/j;->k:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v0, p0, Lf/a/k/n0/j;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->w:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->x:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->k:Landroidx/appcompat/widget/AppCompatCheckBox;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lf/a/k/n0/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/n0/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/n0/j;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->w:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v4

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->x:Ljava/lang/String;

    if-nez v1, :cond_8

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lf/a/k/n0/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/n0/j;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lf/a/k/n0/j;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->w:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v4

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->z:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lf/a/k/n0/j;->A:Ljava/lang/String;

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lf/a/k/n0/j;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f090157

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lf/a/k/n0/j;->l:Landroid/widget/TextView;

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/n0/j;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->z:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v1, v4

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->A:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lf/a/k/n0/j;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/n0/j;->x:Ljava/lang/String;

    if-nez v2, :cond_7

    move-object v2, v4

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lf/a/k/n0/j;->k:Landroidx/appcompat/widget/AppCompatCheckBox;

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->k:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-boolean v1, p0, Lf/a/k/n0/j;->y:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lf/a/k/n0/j;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/n0/j;->x:Ljava/lang/String;

    if-nez v1, :cond_8

    :goto_1
    move-object v1, v4

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lf/a/k/n0/j;->j:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_a
    iget v0, p0, Lf/a/k/n0/j;->N:I

    if-lez v0, :cond_b

    iget-object v1, p0, Lf/a/k/n0/j;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2
    :cond_b
    iget v0, p0, Lf/a/k/n0/j;->b:I

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lf/a/k/n0/j;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->q:Landroid/widget/Button;

    iget-object v1, p0, Lf/a/k/n0/j;->B:Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lf/a/k/n0/j;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    :pswitch_7
    iget-object v0, p0, Lf/a/k/n0/j;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->r:Landroid/widget/Button;

    iget-object v1, p0, Lf/a/k/n0/j;->D:Ljava/lang/String;

    if-nez v1, :cond_c

    move-object v1, v4

    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/n0/j;->s:Landroid/widget/Button;

    iget-object v1, p0, Lf/a/k/n0/j;->C:Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lf/a/k/n0/j;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/n0/j;->q:Landroid/widget/Button;

    iget-object v1, p0, Lf/a/k/n0/j;->B:Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    move-object v4, v1

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :goto_4
    iget-object v0, p0, Lf/a/k/n0/j;->G:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lf/a/k/n0/j;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p1, p0, Lf/a/k/n0/j;->t:Lf/a/k/n0/j$d;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lf/a/k/n0/j;->k:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lf/a/k/n0/j$d;->a(Z)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lf/a/k/n0/j;->u:Lf/a/k/n0/j$c;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lf/a/k/n0/j;->k:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_1
    invoke-interface {p1, v0}, Lf/a/k/n0/j$c;->a(Z)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lf/a/k/n0/j;->t:Lf/a/k/n0/j$d;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lf/a/k/n0/j$d;->b()V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lf/a/k/n0/j;->a()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090068
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lf/a/k/n0/j;->J:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lf/a/k/n0/j;->L:F

    iget v3, p0, Lf/a/k/n0/j;->M:F

    invoke-virtual {p0, v0, v3}, Lf/a/k/n0/j;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lf/a/k/n0/j;->b(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lf/a/k/n0/j;->a()V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lf/a/k/n0/j;->L:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lf/a/k/n0/j;->M:F

    :cond_3
    :goto_0
    return v1
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setPercentText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
