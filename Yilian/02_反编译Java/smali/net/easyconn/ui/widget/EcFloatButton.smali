.class public Lnet/easyconn/ui/widget/EcFloatButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public F:F

.field public G:F

.field public H:Lnet/easyconn/ui/widget/EcFloatMenu;

.field public I:Z

.field public volatile J:Z

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->g:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->h:I

    const/16 p2, 0x400

    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    const/16 p2, 0x258

    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    const p2, 0x7f080085

    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    const p2, 0x7f080087

    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->m:I

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->n:Z

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->o:Z

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->p:Z

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->q:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->r:I

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->t:Z

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    new-instance p2, Lnet/easyconn/ui/widget/EcFloatButton$a;

    invoke-direct {p2, p0}, Lnet/easyconn/ui/widget/EcFloatButton$a;-><init>(Lnet/easyconn/ui/widget/EcFloatButton;)V

    iput-object p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->I:Z

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2
    sget p2, Lf/a/i/m/g;->q:I

    .line 3
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->s:I

    invoke-static {}, Lf/a/i/m/g;->i0()Z

    move-result p2

    iput-boolean p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-nez v1, :cond_0

    const-string v1, "key_ec_float_systemui_width"

    goto :goto_0

    :cond_0
    const-string v1, "key_ec_float_portrait_systemui_width"

    .line 4
    :goto_0
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 5
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->q:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-nez v1, :cond_1

    const-string v1, "key_ec_float_systemui_height"

    goto :goto_1

    :cond_1
    const-string v1, "key_ec_float_portrait_systemui_height"

    .line 6
    :goto_1
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 7
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->r:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_margin_left"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 9
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 10
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_systemui_right"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 11
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_systemui_top"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 13
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 14
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_systemui_bottom"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 15
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 16
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_portrait_margin_left"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 17
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 18
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_portrait_systemui_right"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 19
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 20
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_portrait_systemui_top"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 21
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 22
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_portrait_systemui_bottom"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 23
    iput p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-nez v1, :cond_2

    iget p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    if-nez p2, :cond_4

    iget p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    if-nez p2, :cond_4

    iget p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    if-nez p2, :cond_4

    iget p2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_2
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    if-nez v1, :cond_4

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    if-nez v1, :cond_4

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    const-string p2, "zhoujian systemUiWidth = "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->q:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,systemUiHeight = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->r:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    const v0, 0x3f19999a    # 0.6f

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final d(I)I
    .locals 3

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    :cond_1
    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    :goto_1
    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    return p1
.end method

.method public final e(I)I
    .locals 3

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    :cond_1
    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_1
    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    return p1
.end method

.method public f(Z)V
    .locals 14

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    div-int/2addr v2, v1

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget v3, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    div-int/2addr v3, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    div-int/2addr v5, v1

    int-to-float v1, v5

    sub-float/2addr v0, v1

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-direct {v4, v1, v0, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x168

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    new-instance v0, Lnet/easyconn/ui/widget/EcFloatButton$c;

    invoke-direct {v0, p0, p1}, Lnet/easyconn/ui/widget/EcFloatButton$c;-><init>(Lnet/easyconn/ui/widget/EcFloatButton;Z)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->k()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    :goto_1
    return-void
.end method

.method public final h(FFFFFFFFF)I
    .locals 13

    move v0, p2

    move/from16 v1, p3

    move/from16 v2, p7

    move/from16 v3, p8

    float-to-double v4, v1

    sub-float v6, p1, v0

    float-to-double v7, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    cmpg-double v11, v4, v7

    if-gez v11, :cond_1

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    cmpl-float v4, v1, p4

    if-nez v4, :cond_2

    :cond_0
    float-to-int v0, v3

    return v0

    :cond_1
    sub-float v6, v6, p5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v4, v1, v6

    if-nez v4, :cond_2

    sub-float v0, p6, v2

    sub-float v0, v0, p9

    float-to-int v0, v0

    return v0

    :cond_2
    sub-float v4, p1, p5

    sub-float v4, v4, p4

    sub-float v5, p6, p9

    sub-float/2addr v5, v3

    sub-float v6, v1, p4

    float-to-double v6, v6

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v9

    sub-double/2addr v11, v4

    float-to-double v0, v1

    sub-float v2, p6, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v9

    cmpg-double v6, v0, v4

    if-gez v6, :cond_3

    float-to-double v0, v3

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_3
    sub-float v2, v2, p9

    float-to-double v0, v2

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public i(IIZ)V
    .locals 12

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    :goto_0
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    :goto_1
    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_2
    iget v3, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_3

    :cond_3
    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_3
    sub-int/2addr v3, v4

    const-string v4, "width = "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "tLeft = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tRight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tTop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tBottom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    const/4 v4, 0x0

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    shr-int/lit8 v5, v4, 0x1

    iget v6, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    shr-int/lit8 v7, v6, 0x1

    iget v8, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v8, p1

    int-to-float v8, v8

    iget v9, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/lit8 v10, v9, 0x1

    add-int/2addr v10, p2

    int-to-float v10, v10

    int-to-float v5, v5

    cmpl-float v11, v8, v5

    if-lez v11, :cond_a

    int-to-float v0, v7

    cmpl-float v7, v10, v0

    if-lez v7, :cond_7

    int-to-float v2, v6

    sub-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    int-to-float v0, v0

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v5

    cmpl-float v0, v2, v0

    if-lez v0, :cond_c

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr p1, v10

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_5

    :cond_6
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_5
    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    move p1, v1

    goto :goto_8

    :cond_7
    div-float v0, v10, v0

    int-to-float v3, v4

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    sub-float/2addr v10, p1

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_6

    :cond_8
    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_6
    int-to-float p1, p1

    cmpg-float p1, v10, p1

    if-gez p1, :cond_9

    move p1, v1

    goto :goto_a

    :cond_9
    move p1, v1

    goto :goto_b

    :cond_a
    int-to-float v1, v7

    cmpl-float v4, v10, v1

    if-lez v4, :cond_d

    int-to-float v2, v6

    sub-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    div-float/2addr v8, v5

    cmpl-float v1, v2, v8

    if-lez v1, :cond_c

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz p1, :cond_f

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr p1, v10

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_7

    :cond_b
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_7
    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_f

    move p1, v0

    :cond_c
    :goto_8
    move p2, v3

    goto :goto_b

    :cond_d
    div-float v1, v10, v1

    div-float/2addr v8, v5

    cmpl-float v1, v1, v8

    if-lez v1, :cond_10

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz p1, :cond_f

    shr-int/lit8 p1, v9, 0x1

    int-to-float p1, p1

    sub-float/2addr v10, p1

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_9

    :cond_e
    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_9
    int-to-float p1, p1

    cmpg-float p1, v10, p1

    if-gez p1, :cond_f

    move p1, v0

    goto :goto_a

    :cond_f
    move p1, v0

    goto :goto_b

    :cond_10
    :goto_a
    move p2, v2

    :cond_11
    :goto_b
    const-string v0, "saveLocation:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nowLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nowTop\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " invalidate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ec_float_button_top"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ec_float_button_left"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p3, :cond_12

    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_12
    return-void
.end method

.method public j(II)V
    .locals 16

    move-object/from16 v10, p0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 v1, 0x0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    move/from16 v11, p1

    :goto_0
    if-gez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move/from16 v1, p2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v2

    .line 1
    iget-object v2, v2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "key_ec_float_systemui_orientation"

    const/4 v4, -0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2
    iget v5, v10, Lnet/easyconn/ui/widget/EcFloatButton;->s:I

    const/4 v6, 0x1

    if-eq v2, v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u65b9\u5411\u53d8\u66f4->oldOrientation:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " oldLeft:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " oldTop\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v5

    iget v7, v10, Lnet/easyconn/ui/widget/EcFloatButton;->s:I

    .line 3
    iget-object v5, v5, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eq v2, v4, :cond_18

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    sget v3, Lf/a/i/m/g;->l:I

    .line 6
    sget v4, Lf/a/i/m/g;->q:I

    const/4 v12, -0x1

    if-eq v3, v4, :cond_2

    .line 7
    sput v12, Lf/a/i/m/g;->k:I

    sput v4, Lf/a/i/m/g;->l:I

    :cond_2
    const-string v3, "getOldPropertyMirrorHeight height = "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lf/a/i/m/g;->k:I

    invoke-static {v3, v4}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v3, Lf/a/i/m/g;->k:I

    const-string v13, "Screen width is %d, height is %d"

    const/4 v4, 0x2

    const/16 v5, 0x11

    const-string v14, "window"

    if-eq v3, v12, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-static {}, Lf/a/i/m/d;->c()I

    move-result v3

    if-lez v3, :cond_4

    sput v3, Lf/a/i/m/g;->k:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOldPropertyMirrorHeight confHeight = "

    goto :goto_5

    :cond_4
    invoke-static {v2}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    :cond_5
    invoke-static {}, Lf/a/i/m/g;->i0()Z

    move-result v3

    sget-object v7, Lf/a/i/m/g;->c:Ljava/util/Properties;

    if-eqz v3, :cond_6

    const-string v3, "MIRROR_HEIGHT"

    goto :goto_2

    :cond_6
    const-string v3, "MIRROR_PORTRAIT_HEIGHT"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_7

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_3

    :cond_7
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_3
    iget v2, v3, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->x:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v13, v4}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sput v3, Lf/a/i/m/g;->k:I

    goto :goto_4

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lf/a/i/m/g;->k:I

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOldPropertyMirrorHeight PropertyHeight = "

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lf/a/i/m/g;->k:I

    invoke-static {v0, v2}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v3, Lf/a/i/m/g;->k:I

    :goto_6
    int-to-float v2, v3

    .line 8
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    int-to-float v3, v0

    int-to-float v4, v1

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_9

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    goto :goto_7

    :cond_9
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    :goto_7
    int-to-float v5, v0

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_a

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    goto :goto_8

    :cond_a
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    :goto_8
    int-to-float v6, v0

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    int-to-float v7, v0

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    int-to-float v8, v0

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_b

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_9

    :cond_b
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_9
    int-to-float v9, v0

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_c

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_a

    :cond_c
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_a
    int-to-float v15, v0

    const/16 v1, 0x11

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Lnet/easyconn/ui/widget/EcFloatButton;->h(FFFFFFFFF)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    sget v1, Lf/a/i/m/g;->j:I

    .line 10
    sget v2, Lf/a/i/m/g;->q:I

    if-eq v1, v2, :cond_d

    .line 11
    sput v12, Lf/a/i/m/g;->i:I

    sput v2, Lf/a/i/m/g;->j:I

    :cond_d
    const-string v1, "getOldPropertyMirrorWidth width = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lf/a/i/m/g;->i:I

    invoke-static {v1, v2}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v1, Lf/a/i/m/g;->i:I

    if-eq v1, v12, :cond_e

    goto/16 :goto_f

    :cond_e
    invoke-static {}, Lf/a/i/m/d;->d()I

    move-result v1

    if-lez v1, :cond_f

    sput v1, Lf/a/i/m/g;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOldPropertyMirrorWidth confWidth = "

    goto :goto_e

    :cond_f
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_f

    :cond_10
    invoke-static {}, Lf/a/i/m/g;->i0()Z

    move-result v1

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    if-eqz v1, :cond_11

    const-string v1, "MIRROR_WIDTH"

    goto :goto_b

    :cond_11
    const-string v1, "MIRROR_PORTRAIT_WIDTH"

    :goto_b
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_12

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_c

    :cond_12
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_c
    iget v0, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v13, v2}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_d
    sput v0, Lf/a/i/m/g;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOldPropertyMirrorWidth PropertyWidth = "

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lf/a/i/m/g;->i:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v1, Lf/a/i/m/g;->i:I

    :goto_f
    int-to-float v1, v1

    .line 12
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    int-to-float v2, v0

    int-to-float v3, v11

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_14

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    goto :goto_10

    :cond_14
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    :goto_10
    int-to-float v4, v0

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_15

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    goto :goto_11

    :cond_15
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    :goto_11
    int-to-float v5, v0

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    int-to-float v6, v0

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    int-to-float v7, v0

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_16

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    goto :goto_12

    :cond_16
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    :goto_12
    int-to-float v8, v0

    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_17

    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    goto :goto_13

    :cond_17
    iget v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    :goto_13
    int-to-float v9, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lnet/easyconn/ui/widget/EcFloatButton;->h(FFFFFFFFF)I

    move-result v11

    move v1, v15

    goto :goto_15

    :cond_18
    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v0, :cond_1a

    goto :goto_14

    :cond_19
    iget-boolean v0, v10, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v0, :cond_1a

    :goto_14
    invoke-virtual {v10, v11}, Lnet/easyconn/ui/widget/EcFloatButton;->d(I)I

    move-result v11

    invoke-virtual {v10, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->e(I)I

    move-result v1

    :cond_1a
    :goto_15
    const/4 v0, 0x1

    invoke-virtual {v10, v11, v1, v0}, Lnet/easyconn/ui/widget/EcFloatButton;->i(IIZ)V

    return-void
.end method

.method public k()V
    .locals 14

    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x168

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    new-instance v1, Lnet/easyconn/ui/widget/EcFloatButton$b;

    invoke-direct {v1, p0}, Lnet/easyconn/ui/widget/EcFloatButton$b;-><init>(Lnet/easyconn/ui/widget/EcFloatButton;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {v1, v0}, Lnet/easyconn/ui/widget/EcFloatMenu;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public l(Z)V
    .locals 1

    const-string v0, "EcFloatButton set showMenuDirect = "

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->p:Z

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    .line 1
    iput-boolean p1, v0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    return-void
.end method

.method public final m()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final n()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    neg-int v1, v1

    iget-boolean v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    :goto_0
    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "translationX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final o()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "translationX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "EcFloatButton onKeyUp keyCode = "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->k()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 1
    invoke-static {}, Lnet/easyconn/FrameworkApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "FLOAT_SIZE"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "getPropertyFloatSize NumberFormatException, e = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    const-string v0, "getFloatSize propFloatSize = "

    .line 3
    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    sget-object v0, Lf/a/i/m/d;->c:Ljava/util/Properties;

    if-nez v0, :cond_1

    const-string p2, "getFloatSize mProperties == null, return"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    move p2, p1

    goto :goto_2

    :cond_1
    const-string p1, "float_size"

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getFloatSize size = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_2
    :goto_2
    if-lez p2, :cond_3

    .line 4
    invoke-virtual {p0, p2, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->f:F

    sub-float/2addr v0, v1

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->h:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->r:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->e:F

    sub-float/2addr v1, v4

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->g:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->q:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    int-to-float v5, v4

    add-float/2addr v5, v1

    iget v6, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    int-to-float v7, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    sub-int/2addr v6, v4

    int-to-float v1, v6

    :cond_2
    :goto_0
    cmpg-float v4, v0, v3

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    iget v3, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    int-to-float v4, v3

    add-float/2addr v4, v0

    iget v5, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    int-to-float v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    sub-int/2addr v5, v3

    int-to-float v3, v5

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setY(F)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 1
    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->I:Z

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->F:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_7

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->G:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->I:Z

    .line 2
    :goto_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return v2

    .line 3
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    shr-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    shr-int/lit8 v5, v4, 0x1

    iget v6, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    shr-int/lit8 v7, v6, 0x1

    int-to-float v5, v5

    cmpl-float v8, v0, v5

    if-lez v8, :cond_10

    int-to-float v7, v7

    cmpl-float v8, v1, v7

    if-lez v8, :cond_c

    int-to-float v4, v6

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v7

    iget v6, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    int-to-float v6, v6

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_a

    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->o()V

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/2addr v4, v2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_5

    :cond_9
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_5
    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    goto/16 :goto_b

    :cond_a
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->m()V

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    shr-int/2addr v4, v2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    goto :goto_6

    :cond_b
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    :goto_6
    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_18

    goto :goto_9

    :cond_c
    div-float v6, v1, v7

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v5

    cmpl-float v4, v6, v4

    if-lez v4, :cond_e

    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->o()V

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_7

    :cond_d
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_7
    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_18

    goto/16 :goto_e

    :cond_e
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->p()V

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    shr-int/2addr v4, v2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    goto :goto_8

    :cond_f
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    :goto_8
    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_18

    :goto_9
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->o()V

    goto/16 :goto_11

    :cond_10
    int-to-float v4, v7

    cmpl-float v7, v1, v4

    if-lez v7, :cond_14

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v4

    div-float v4, v0, v5

    cmpl-float v4, v6, v4

    if-lez v4, :cond_12

    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->n()V

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    iget v4, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/2addr v4, v2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->C:I

    goto :goto_a

    :cond_11
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->x:I

    :goto_a
    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    :goto_b
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->m()V

    goto :goto_11

    :cond_12
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->m()V

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    shr-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v1, :cond_13

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->A:I

    goto :goto_c

    :cond_13
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->v:I

    :goto_c
    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    goto :goto_10

    :cond_14
    div-float v4, v1, v4

    div-float v5, v0, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->n()V

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->d:I

    shr-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_d

    :cond_15
    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_d
    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_18

    :goto_e
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->p()V

    goto :goto_11

    :cond_16
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->p()V

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->y:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->c:I

    shr-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->z:I

    goto :goto_f

    :cond_17
    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->u:I

    :goto_f
    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    :goto_10
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->n()V

    .line 4
    :cond_18
    :goto_11
    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lnet/easyconn/ui/widget/EcFloatButton;->e:F

    iput v3, p0, Lnet/easyconn/ui/widget/EcFloatButton;->f:F

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->J:Z

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->I:Z

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->g()V

    :cond_19
    return v2

    :cond_1a
    iput-boolean v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->I:Z

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lnet/easyconn/ui/widget/EcFloatButton;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->G:F

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->t:Z

    if-eqz p1, :cond_1b

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    goto :goto_12

    :cond_1b
    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->m:I

    :goto_12
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return v2
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    const-string p1, "EcFloatButton visibility = "

    invoke-static {p1, p2}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    neg-int v1, v1

    iget-boolean v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->i:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->B:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/easyconn/ui/widget/EcFloatButton;->w:I

    :goto_0
    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setEcFloatMenu(Lnet/easyconn/ui/widget/EcFloatMenu;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    return-void
.end method

.method public setJustEcHome(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->o:Z

    if-eqz p1, :cond_0

    const p1, 0x7f08014c

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    const p1, 0x7f08014d

    goto :goto_0

    :cond_0
    const p1, 0x7f080085

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    const p1, 0x7f080087

    :goto_0
    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->m:I

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setJustSystemHome(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->n:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0800b4

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    const p1, 0x7f0800b7

    goto :goto_0

    :cond_0
    const p1, 0x7f080085

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    const p1, 0x7f080087

    :goto_0
    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->m:I

    iget p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->k:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_screen_width"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 2
    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->j:I

    return-void
.end method

.method public setxCorrection(I)V
    .locals 0

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->g:I

    return-void
.end method

.method public setyCorrection(I)V
    .locals 0

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->h:I

    return-void
.end method
