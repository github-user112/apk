.class public Lf/a/k/l0/c4;
.super Lf/a/k/l0/i3;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/a/k/l0/i3;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    check-cast p1, Lf/a/k/e0;

    invoke-interface {p1}, Lf/a/k/e0;->n()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0c0051

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1
    invoke-super {p0, p1}, Lf/a/k/l0/i3;->O(Landroid/view/View;)V

    const p2, 0x7f0900da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lf/a/k/l0/b3;

    invoke-direct {p3, p0}, Lf/a/k/l0/b3;-><init>(Lf/a/k/l0/c4;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0900dd

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0901ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901fc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v3

    invoke-static {v3}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v4

    invoke-static {v4}, Lf/a/i/m/g;->d(Landroid/content/Context;)Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v4

    invoke-static {v4}, Lf/a/i/m/g;->q(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v5

    invoke-static {v5}, Lf/a/i/m/g;->r(Landroid/content/Context;)Z

    move-result v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/16 v6, 0x8

    const v7, 0x7f0d006d

    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    const v1, 0x7f0d006b

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0d006d

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-static {v1}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v3

    invoke-static {v3}, Lf/a/i/m/g;->d(Landroid/content/Context;)Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v3

    invoke-static {v3}, Lf/a/i/m/g;->q(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v4

    invoke-static {v4}, Lf/a/i/m/g;->r(Landroid/content/Context;)Z

    move-result v4

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const v1, 0x7f0d006e

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    const v1, 0x7f0d006d

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_3
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    const p2, 0x7f0900de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-object p1
.end method
