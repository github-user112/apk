.class public La/a/b/s/c;
.super La/a/b/s/a;
.source ""


# instance fields
.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, La/a/b/s/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La/a/b/s/c;->j:Landroid/widget/TextView;

    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, La/a/b/s/c;->k:Landroid/widget/EditText;

    .line 1
    iget-object v0, p0, La/a/b/s/a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, La/a/b/s/a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b/s/c;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, La/a/b/s/c;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)La/a/b/s/c;
    .locals 0

    invoke-super {p0, p1}, La/a/b/s/a;->b(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public g()La/a/b/s/c;
    .locals 2

    .line 1
    iget-object v0, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    const v1, -0xbc7b10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)La/a/b/s/c;
    .locals 2

    iget-object v0, p0, La/a/b/s/c;->k:Landroid/widget/EditText;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)La/a/b/s/c;
    .locals 0

    invoke-super {p0, p1}, La/a/b/s/a;->c(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method

.method public j(Ljava/lang/String;)La/a/b/s/c;
    .locals 0

    invoke-super {p0, p1}, La/a/b/s/a;->d(Ljava/lang/String;)La/a/b/s/a;

    return-object p0
.end method
