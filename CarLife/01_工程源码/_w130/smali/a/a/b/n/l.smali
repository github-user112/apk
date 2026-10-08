.class public La/a/b/n/l;
.super La/a/b/n/g;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static Z:La/a/b/n/l; = null

.field public static a0:Z = true


# instance fields
.field public b0:Landroid/widget/ImageView;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/Button;

.field public e0:Ljava/lang/String;

.field public f0:I

.field public g0:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La/a/b/n/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/n/l;->b0:Landroid/widget/ImageView;

    iput-object v0, p0, La/a/b/n/l;->c0:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/b/n/l;->g0:J

    return-void
.end method

.method public static E0()La/a/b/n/l;
    .locals 1

    sget-object v0, La/a/b/n/l;->Z:La/a/b/n/l;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/l;

    invoke-direct {v0}, La/a/b/n/l;-><init>()V

    sput-object v0, La/a/b/n/l;->Z:La/a/b/n/l;

    :cond_0
    sget-object v0, La/a/b/n/l;->Z:La/a/b/n/l;

    return-object v0
.end method


# virtual methods
.method public C0(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, La/a/b/n/l;->f0:I

    :cond_0
    iget-object p1, p0, La/a/b/n/l;->b0:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget v0, p0, La/a/b/n/l;->f0:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public D0(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, La/a/b/n/l;->e0:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, La/a/b/n/l;->c0:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, La/a/b/n/l;->e0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, La/a/b/n/g;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "onCreateView"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "ExceptionFragment"

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0027

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f09006e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, La/a/b/n/l;->b0:Landroid/widget/ImageView;

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f09006f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, La/a/b/n/l;->c0:Landroid/widget/TextView;

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f090070

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, La/a/b/n/l;->d0:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean p1, La/a/b/n/l;->a0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, La/a/b/n/l;->d0:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, La/a/b/n/l;->d0:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, La/a/b/n/l;->e0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, La/a/b/n/l;->c0:Landroid/widget/TextView;

    iget-object p2, p0, La/a/b/n/l;->e0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget p1, p0, La/a/b/n/l;->f0:I

    if-lez p1, :cond_2

    iget-object p2, p0, La/a/b/n/l;->b0:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
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

    const-string v1, "ExceptionFragment"

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

    const-string v1, "ExceptionFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, La/a/b/n/l;->g0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iput-wide v0, p0, La/a/b/n/l;->g0:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090070

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d4

    invoke-static {p1}, La/a/b/o/b;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
