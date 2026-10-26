.class public Lcom/tencent/bugly/beta/ui/BaseDialogFrag$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/beta/ui/BaseDialogFrag;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/bugly/beta/ui/BaseDialogFrag;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/beta/ui/BaseDialogFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/beta/ui/BaseDialogFrag$c;->a:Lcom/tencent/bugly/beta/ui/BaseDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/bugly/beta/ui/BaseDialogFrag$c;->a:Lcom/tencent/bugly/beta/ui/BaseDialogFrag;

    iget-object p1, p1, Lcom/tencent/bugly/beta/ui/BaseDialogFrag;->mLayoutContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/beta/ui/BaseDialogFrag$c;->a:Lcom/tencent/bugly/beta/ui/BaseDialogFrag;

    invoke-static {p1}, Lcom/tencent/bugly/beta/ui/BaseDialogFrag;->access$001(Lcom/tencent/bugly/beta/ui/BaseDialogFrag;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
