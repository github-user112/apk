.class public Lcom/huawei/hms/scankit/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/y;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/y;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/y;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/q;->g()V

    iget-object p1, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-static {p1}, Lcom/huawei/hms/scankit/y;->a(Lcom/huawei/hms/scankit/y;)V

    iget-object p1, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-static {p1}, Lcom/huawei/hms/scankit/y;->b(Lcom/huawei/hms/scankit/y;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-static {v0}, Lcom/huawei/hms/scankit/y;->b(Lcom/huawei/hms/scankit/y;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/huawei/hms/scankit/R$string;->scankit_light:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/q;->h()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-static {p1}, Lcom/huawei/hms/scankit/y;->c(Lcom/huawei/hms/scankit/y;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/huawei/hms/scankit/R$string;->scankit_light_off:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-static {p1}, Lcom/huawei/hms/scankit/y;->b(Lcom/huawei/hms/scankit/y;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/scankit/x;->a:Lcom/huawei/hms/scankit/y;

    invoke-static {v0}, Lcom/huawei/hms/scankit/y;->b(Lcom/huawei/hms/scankit/y;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/huawei/hms/scankit/R$string;->scankit_light_off:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
