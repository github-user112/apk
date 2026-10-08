.class public La/a/b/s/b;
.super La/a/b/s/a;
.source ""


# instance fields
.field public j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, La/a/b/s/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La/a/b/s/b;->j:Landroid/widget/TextView;

    .line 1
    iget-object v0, p0, La/a/b/s/a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, La/a/b/s/a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)La/a/b/s/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/a/b/s/a;->b(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public c(Ljava/lang/String;)La/a/b/s/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/a/b/s/a;->c(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public d(Ljava/lang/String;)La/a/b/s/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/a/b/s/a;->d(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b/s/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, La/a/b/s/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(I)La/a/b/s/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/a/b/s/b;->b(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)La/a/b/s/b;
    .locals 0

    invoke-super {p0, p1}, La/a/b/s/a;->b(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public h()La/a/b/s/b;
    .locals 2

    .line 1
    iget-object v0, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    const v1, -0xbc7b10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)La/a/b/s/b;
    .locals 2

    iget-object v0, p0, La/a/b/s/b;->j:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-object p0
.end method

.method public j(Ljava/lang/String;)La/a/b/s/b;
    .locals 0

    invoke-super {p0, p1}, La/a/b/s/a;->c(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public k(Ljava/lang/String;)La/a/b/s/b;
    .locals 0

    invoke-super {p0, p1}, La/a/b/s/a;->d(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method
