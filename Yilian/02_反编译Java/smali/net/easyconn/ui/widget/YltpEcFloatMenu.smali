.class public Lnet/easyconn/ui/widget/YltpEcFloatMenu;
.super Lnet/easyconn/ui/widget/EcFloatMenu;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;
    }
.end annotation


# instance fields
.field public m:Landroid/widget/ImageView;

.field public n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

.field public o:Lf/a/k/d0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ui/widget/EcFloatMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lnet/easyconn/ui/widget/YltpEcFloatMenu$a;

    const-wide/16 v0, 0x1f4

    invoke-direct {p2, p0, v0, v1}, Lnet/easyconn/ui/widget/YltpEcFloatMenu$a;-><init>(Lnet/easyconn/ui/widget/YltpEcFloatMenu;J)V

    iput-object p2, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->o:Lf/a/k/d0;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0036

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f0900c2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f0900c7

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->m:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f0900c6

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f0900c4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f0900c5

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f0900c3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    iget-object p2, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->o:Lf/a/k/d0;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->m:Landroid/widget/ImageView;

    new-instance p2, Lf/a/k/n0/g;

    invoke-direct {p2, p0}, Lf/a/k/n0/g;-><init>(Lnet/easyconn/ui/widget/YltpEcFloatMenu;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    new-instance p2, Lf/a/k/n0/h;

    invoke-direct {p2, p0}, Lf/a/k/n0/h;-><init>(Lnet/easyconn/ui/widget/YltpEcFloatMenu;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    new-instance p2, Lf/a/k/n0/f;

    invoke-direct {p2, p0}, Lf/a/k/n0/f;-><init>(Lnet/easyconn/ui/widget/YltpEcFloatMenu;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    new-instance p2, Lf/a/k/n0/i;

    invoke-direct {p2, p0}, Lf/a/k/n0/i;-><init>(Lnet/easyconn/ui/widget/YltpEcFloatMenu;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    new-instance p2, Lf/a/k/n0/e;

    invoke-direct {p2, p0}, Lf/a/k/n0/e;-><init>(Lnet/easyconn/ui/widget/YltpEcFloatMenu;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/easyconn/ui/widget/EcFloatMenu;->a(Z)V

    return-void
.end method


# virtual methods
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

    iget-boolean v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const v6, 0x7f0800af

    const v7, 0x7f0800ad

    const v8, 0x7f0800ae

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    if-eqz v3, :cond_8

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

    iget-object v3, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->m:Landroid/widget/ImageView;

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

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

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

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

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

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v10}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_5

    :cond_5
    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v8}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->l:Z

    if-eqz v7, :cond_6

    iget-object v6, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v6, v10}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_6

    :cond_6
    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v7, v6}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_6
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    if-eqz p1, :cond_7

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-static {v6}, Lf/a/i/m/g;->L(Landroid/content/Context;)I

    move-result v6

    iget-object v7, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0701f7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v7, v8}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_b

    :cond_7
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

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v1, v7

    goto/16 :goto_b

    :cond_8
    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v9, :cond_9

    const v9, 0x7f0800ae

    goto :goto_7

    :cond_9
    const v9, 0x7f0800af

    :goto_7
    invoke-static {v3, v9}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v9, :cond_a

    const v9, 0x7f0800ae

    goto :goto_8

    :cond_a
    const v9, 0x7f0800ad

    :goto_8
    invoke-static {v3, v9}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v9, :cond_b

    const v9, 0x7f0800ad

    goto :goto_9

    :cond_b
    const v9, 0x7f0800ae

    :goto_9
    invoke-static {v3, v9}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->m:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    iget-boolean v9, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz v9, :cond_c

    const v7, 0x7f0800ae

    :cond_c
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

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    const v6, 0x7f0800ae

    :goto_a
    invoke-static {v3, v6}, Ld/g/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->j:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v3, v6}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v1, p1

    const/4 p1, 0x1

    :goto_b
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_e
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_f

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->m:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_f
    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    iget-object v1, p0, Lnet/easyconn/ui/widget/EcFloatMenu;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->m:Landroid/widget/ImageView;

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

    if-eqz p1, :cond_10

    const/16 v3, 0x51

    :cond_10
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic j(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;->d()V

    :cond_0
    return-void
.end method

.method public synthetic k(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->f()V

    :cond_0
    return-void
.end method

.method public synthetic l(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->a()V

    :cond_0
    return-void
.end method

.method public synthetic m(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->b()V

    :cond_0
    return-void
.end method

.method public synthetic n(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->e()V

    :cond_0
    return-void
.end method

.method public setMenuButtonClickListener(Lnet/easyconn/ui/widget/EcFloatMenu$b;)V
    .locals 0

    check-cast p1, Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    iput-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    return-void
.end method
