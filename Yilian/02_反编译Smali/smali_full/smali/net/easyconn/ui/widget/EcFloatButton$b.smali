.class public Lnet/easyconn/ui/widget/EcFloatButton$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ui/widget/EcFloatButton;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ui/widget/EcFloatButton;


# direct methods
.method public constructor <init>(Lnet/easyconn/ui/widget/EcFloatButton;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$b;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$b;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/easyconn/ui/widget/EcFloatButton;->J:Z

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$b;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    iget-object p1, p1, Lnet/easyconn/ui/widget/EcFloatButton;->D:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x1220

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$b;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lnet/easyconn/ui/widget/EcFloatButton;->J:Z

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$b;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
