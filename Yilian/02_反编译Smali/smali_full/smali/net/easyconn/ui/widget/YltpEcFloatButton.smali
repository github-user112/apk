.class public Lnet/easyconn/ui/widget/YltpEcFloatButton;
.super Lnet/easyconn/ui/widget/EcFloatButton;
.source ""


# instance fields
.field public K:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ui/widget/EcFloatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatButton;->K:Z

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-boolean v0, p0, Lnet/easyconn/ui/widget/YltpEcFloatButton;->K:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/easyconn/ui/widget/EcFloatButton;->k()V

    :goto_0
    return-void
.end method

.method public setJustEcHome(Z)V
    .locals 0

    return-void
.end method

.method public setJustStopMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatButton;->K:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0800b0

    iput p1, p0, Lnet/easyconn/ui/widget/EcFloatButton;->l:I

    const p1, 0x7f0800b1

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

    return-void
.end method
