.class public La/a/b/n/s;
.super La/a/b/n/g;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/n/s$c;
    }
.end annotation


# static fields
.field public static Z:I = 0x4e20

.field public static a0:La/a/b/n/s;


# instance fields
.field public b0:Landroid/widget/ImageView;

.field public c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

.field public d0:Landroid/widget/TextView;

.field public e0:Landroid/widget/Button;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/ImageButton;

.field public h0:La/a/b/o/a;

.field public i0:I

.field public j0:Landroid/widget/RelativeLayout;

.field public k0:Landroid/widget/RelativeLayout$LayoutParams;

.field public l0:Landroid/widget/RelativeLayout$LayoutParams;

.field public m0:Z

.field public n0:Z

.field public o0:Landroid/widget/TextView;

.field public p0:Landroid/widget/TextView;

.field public q0:Ljava/lang/Runnable;

.field public r0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La/a/b/n/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    iput-object v0, p0, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    iput-object v0, p0, La/a/b/n/s;->d0:Landroid/widget/TextView;

    iput-object v0, p0, La/a/b/n/s;->e0:Landroid/widget/Button;

    iput-object v0, p0, La/a/b/n/s;->f0:Landroid/widget/TextView;

    iput-object v0, p0, La/a/b/n/s;->g0:Landroid/widget/ImageButton;

    iput-object v0, p0, La/a/b/n/s;->h0:La/a/b/o/a;

    const/4 v1, 0x0

    iput v1, p0, La/a/b/n/s;->i0:I

    iput-object v0, p0, La/a/b/n/s;->k0:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, La/a/b/n/s;->l0:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean v1, p0, La/a/b/n/s;->m0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, La/a/b/n/s;->n0:Z

    iput-object v0, p0, La/a/b/n/s;->o0:Landroid/widget/TextView;

    iput-object v0, p0, La/a/b/n/s;->p0:Landroid/widget/TextView;

    new-instance v1, La/a/b/n/s$a;

    invoke-direct {v1, p0}, La/a/b/n/s$a;-><init>(La/a/b/n/s;)V

    iput-object v1, p0, La/a/b/n/s;->q0:Ljava/lang/Runnable;

    new-instance v1, La/a/b/n/s$b;

    invoke-direct {v1, p0}, La/a/b/n/s$b;-><init>(La/a/b/n/s;)V

    iput-object v1, p0, La/a/b/n/s;->r0:Ljava/lang/Runnable;

    new-instance v1, La/a/b/n/s$c;

    invoke-direct {v1, p0, v0}, La/a/b/n/s$c;-><init>(La/a/b/n/s;La/a/b/n/s$a;)V

    iput-object v1, p0, La/a/b/n/s;->h0:La/a/b/o/a;

    invoke-static {v1}, La/a/b/o/b;->d(La/a/b/o/a;)V

    return-void
.end method

.method public static C0()La/a/b/n/s;
    .locals 1

    sget-object v0, La/a/b/n/s;->a0:La/a/b/n/s;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/s;

    invoke-direct {v0}, La/a/b/n/s;-><init>()V

    sput-object v0, La/a/b/n/s;->a0:La/a/b/n/s;

    :cond_0
    sget-object v0, La/a/b/n/s;->a0:La/a/b/n/s;

    return-object v0
.end method


# virtual methods
.method public D0(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, La/a/b/n/s;->m0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/b/n/s;->d0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, La/a/b/n/s;->d0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, La/a/b/n/g;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "onCreateView"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "MainFragment"

    invoke-static {p3, p2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900a6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    iput-object p2, p0, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900a7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, La/a/b/n/s;->d0:Landroid/widget/TextView;

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900aa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900ab

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, La/a/b/n/s;->e0:Landroid/widget/Button;

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900a3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, La/a/b/n/s;->f0:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f090071

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, La/a/b/n/s;->g0:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/s;->e0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, La/a/b/n/s;->o0:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, La/a/b/n/s;->p0:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p2, 0x7530

    sput p2, La/a/b/n/s;->Z:I

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    invoke-static {p2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->init(Landroid/view/View;)V

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "set timeout: 30000"

    aput-object p2, p1, v0

    invoke-static {p3, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    return-object p1
.end method

.method public Q()V
    .locals 3

    invoke-super {p0}, La/a/b/n/g;->Q()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public R()V
    .locals 3

    invoke-super {p0}, La/a/b/n/g;->R()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDetach"

    aput-object v2, v0, v1

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, La/a/b/n/s;->h0:La/a/b/o/a;

    invoke-static {v0}, La/a/b/o/b;->e(La/a/b/o/a;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->detach()V

    return-void
.end method

.method public S(Z)V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged, hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, La/a/b/n/s;->n0:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1}, La/a/a/a/m/c;->V()V

    sget-object v3, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v4, p0, La/a/b/n/s;->q0:Ljava/lang/Runnable;

    sget p1, La/a/b/n/s;->Z:I

    int-to-long v7, p1

    move-wide v5, v7

    invoke-virtual/range {v3 .. v8}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    .line 2
    iput-boolean v2, p0, La/a/b/n/s;->n0:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, La/a/b/n/s;->h0:La/a/b/o/a;

    const/16 v0, 0x7da

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, La/a/b/o/b;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    sget-object p1, La/a/b/o/b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/b/o/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, La/a/b/o/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public f0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public i0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p1, p0, La/a/b/n/s;->k0:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070060

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, La/a/b/n/s;->i0:I

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "connectStatusHeight="

    invoke-static {v1}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/a/b/n/s;->i0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, La/a/b/n/s;->k0:Landroid/widget/RelativeLayout$LayoutParams;

    new-array v0, p1, [Ljava/lang/Object;

    const-string v3, "screenHeigh=12,screenWidth=13"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, La/a/b/n/s;->k0:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, La/a/b/n/s;->i0:I

    rsub-int/lit8 v3, v3, 0xc

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "topMargin="

    invoke-static {v0}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, La/a/b/n/s;->k0:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",bottomMargin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La/a/b/n/s;->k0:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, La/a/b/n/s;->l0:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, La/a/b/n/s;->l0:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090141

    if-eq p1, v0, :cond_0

    const v0, 0x7f090142

    if-eq p1, v0, :cond_1

    const v0, 0x7f090143

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->selectMode(I)V

    return-void

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->selectMode(I)V

    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->selectMode(I)V

    return-void

    :goto_0
    const v0, 0x7f090071

    if-eq p1, v0, :cond_6

    const v0, 0x7f0900ab

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    .line 1
    sget-object v0, La/a/b/n/v;->Z:La/a/b/n/v;

    if-nez v0, :cond_3

    new-instance v0, La/a/b/n/v;

    invoke-direct {v0}, La/a/b/n/v;-><init>()V

    sput-object v0, La/a/b/n/v;->Z:La/a/b/n/v;

    :cond_3
    sget-object v0, La/a/b/n/v;->Z:La/a/b/n/v;

    goto :goto_1

    .line 2
    :pswitch_1
    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    invoke-static {}, La/a/b/n/q;->C0()La/a/b/n/q;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    invoke-static {}, La/a/b/n/h;->C0()La/a/b/n/h;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    goto :goto_2

    .line 3
    :cond_4
    iget-object p1, p0, La/a/b/n/s;->e0:Landroid/widget/Button;

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, La/a/b/n/s;->d0:Landroid/widget/TextView;

    const v0, 0x7f0e00b3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1}, La/a/a/a/m/c;->V()V

    sget-object v0, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v1, p0, La/a/b/n/s;->q0:Ljava/lang/Runnable;

    sget p1, La/a/b/n/s;->Z:I

    int-to-long v4, p1

    move-wide v2, v4

    invoke-virtual/range {v0 .. v5}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Retry connection when click retry button"

    aput-object v1, p1, v0

    const-string v0, "MainFragment"

    .line 5
    invoke-static {v0, p1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    sget-object p1, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->f1()V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900a2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
