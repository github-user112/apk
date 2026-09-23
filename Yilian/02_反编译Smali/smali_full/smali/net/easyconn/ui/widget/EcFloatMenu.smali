.class public Lnet/easyconn/ui/widget/EcFloatMenu;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ui/widget/EcFloatMenu$b;
    }
.end annotation


# instance fields
.field public a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:I

.field public i:Z

.field public j:Landroid/content/Context;

.field public k:Lf/a/k/d0;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    new-instance p2, Lnet/easyconn/ui/widget/EcFloatMenu$a;

    const-wide/16 v0, 0x1f4

    invoke-direct {p2, p0, v0, v1}, Lnet/easyconn/ui/widget/EcFloatMenu$a;-><init>(Lnet/easyconn/ui/widget/EcFloatMenu;J)V

    iput-object p2, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->k:Lf/a/k/d0;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c6

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c3

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->k:Lf/a/k/d0;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    new-instance v0, Lf/a/k/n0/d;

    invoke-direct {v0, p0}, Lf/a/k/n0/d;-><init>(Lnet/easyconn/ui/widget/EcFloatMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    new-instance v0, Lf/a/k/n0/a;

    invoke-direct {v0, p0}, Lf/a/k/n0/a;-><init>(Lnet/easyconn/ui/widget/EcFloatMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    new-instance v0, Lf/a/k/n0/c;

    invoke-direct {v0, p0}, Lf/a/k/n0/c;-><init>(Lnet/easyconn/ui/widget/EcFloatMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    new-instance v0, Lf/a/k/n0/b;

    invoke-direct {v0, p0}, Lf/a/k/n0/b;-><init>(Lnet/easyconn/ui/widget/EcFloatMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Lnet/easyconn/ui/widget/EcFloatMenu;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-ne v0, p1, :cond_0

    const-string p1, "EcFloatMenu return enableAoaStyle = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    const-string p1, "EcFloatMenu setEnableAoaStyle = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->f()V

    :cond_0
    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->a()V

    :cond_0
    return-void
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->b()V

    :cond_0
    return-void
.end method

.method public synthetic e(Landroid/view/View;)V
    .locals 1

    const-string p1, "EcFloatMenu menuButtonClickListener = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

    if-eqz p1, :cond_0

    const-string p1, "EcFloatMenu onCarHomeClick execute"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->e()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const v6, 0x7f0800af

    const v7, 0x7f0800ad

    const v8, 0x7f0800ae

    if-eqz v3, :cond_7

    iget-object v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    const v10, 0x7f0800fa

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v3, v10}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v3, v7}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v10}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v8}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v10}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v8}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v10}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v8}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_4
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    if-eqz v7, :cond_5

    iget-object v6, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v6, v10}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_5

    :cond_5
    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v6}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_5
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    if-eqz p1, :cond_6

    const/16 v1, 0x50

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7}, Lf/a/i/m/g;->L(Landroid/content/Context;)I

    move-result v7

    iget-object v8, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v8, v1}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v6, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_a

    :cond_6
    iget-object v6, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    .line 1
    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 2
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v6, v6, 0xc

    .line 3
    div-int/lit8 v6, v6, 0x64

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v8}, Lf/a/i/m/g;->K(Landroid/content/Context;)I

    move-result v8

    invoke-direct {v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v6, v7

    goto/16 :goto_a

    :cond_7
    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v9, :cond_8

    const v9, 0x7f0800ae

    goto :goto_6

    :cond_8
    const v9, 0x7f0800af

    :goto_6
    invoke-static {v3, v9}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v9, :cond_9

    const v9, 0x7f0800ae

    goto :goto_7

    :cond_9
    const v9, 0x7f0800ad

    :goto_7
    invoke-static {v3, v9}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v9, :cond_a

    goto :goto_8

    :cond_a
    const v7, 0x7f0800ae

    :goto_8
    invoke-static {v3, v7}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v3, v8}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v7, :cond_b

    goto :goto_9

    :cond_b
    const v6, 0x7f0800ae

    :goto_9
    invoke-static {v3, v6}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0701cd

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {p1, v3}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result p1

    iput p1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v1, p1

    const/4 p1, 0x1

    :goto_a
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_c
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_d

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_d
    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lnet/easyconn/ui/widget/EcFloatMenu;->setFocus(Z)V

    if-eqz p1, :cond_e

    const/16 v4, 0x51

    :cond_e
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getMenuCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMenuOrientation()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->h:I

    return v0
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    return-void
.end method

.method public setMenuButtonClickListener(Lnet/easyconn/ui/widget/EcFloatMenu$b;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->a:Lnet/easyconn/ui/widget/EcFloatMenu$b;

    return-void
.end method

.method public setMenuOrientation(I)V
    .locals 0

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->h:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const-string v0, "EcFloatMenu setVisibility = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->h:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget v0, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->h:I

    invoke-virtual {p0, v0}, Lnet/easyconn/ui/widget/EcFloatMenu;->f(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
