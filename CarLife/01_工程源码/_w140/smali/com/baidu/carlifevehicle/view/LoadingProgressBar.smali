.class public Lcom/baidu/carlifevehicle/view/LoadingProgressBar;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/animation/AnimatorSet;

.field public h:Landroid/animation/AnimatorSet;

.field public i:Landroid/animation/AnimatorSet;

.field public j:Landroid/animation/AnimatorSet;

.field public k:Landroid/animation/ObjectAnimator;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->l:Z

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0035

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->b:Landroid/view/View;

    const p2, 0x7f0900c6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->e:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->b:Landroid/view/View;

    const p2, 0x7f0900c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->b:Landroid/view/View;

    const p2, 0x7f0900ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->f:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->b:Landroid/view/View;

    const p2, 0x7f0900c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleY"

    invoke-static {v2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v6, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x1f4

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    new-array v10, v1, [F

    fill-array-data v10, :array_3

    invoke-static {v6, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    new-array v8, v1, [F

    fill-array-data v8, :array_4

    const-string v9, "alpha"

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    new-array v10, v1, [F

    fill-array-data v10, :array_5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->g:Landroid/animation/AnimatorSet;

    new-array v8, v1, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v2, v8, v0

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->h:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v9

    aput-object v6, v5, v0

    aput-object v7, v5, v1

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;

    invoke-direct {v1, p0}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar$a;-><init>(Lcom/baidu/carlifevehicle/view/LoadingProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f400000    # 0.75f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f19999a    # 0.6f
    .end array-data

    :array_5
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "resetLoadingView"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RingProgressBar"

    invoke-static {v2, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->c()V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->f:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->e:Landroid/widget/ImageView;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const-string v5, "rotation"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->k:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v4, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->k:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "windMillRotation.start()"

    aput-object v1, v0, v3

    invoke-static {v2, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "stopAnimation()"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RingProgressBar"

    invoke-static {v2, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->k:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "windMillRotation.cancel()"

    aput-object v5, v1, v3

    invoke-static {v2, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v4, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->k:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->g:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v4, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->g:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->h:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v4, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->h:Landroid/animation/AnimatorSet;

    :cond_2
    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "animSet3.cancel()"

    aput-object v5, v1, v3

    invoke-static {v2, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-boolean v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->l:Z

    iput-object v4, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->i:Landroid/animation/AnimatorSet;

    :cond_3
    return-void
.end method

.method public d(I)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0081

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RingProgressBar"

    invoke-static {p1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
