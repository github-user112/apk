.class public Lnet/easyconn/ui/widget/EcFloatButton$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ui/widget/EcFloatButton;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lnet/easyconn/ui/widget/EcFloatButton;


# direct methods
.method public constructor <init>(Lnet/easyconn/ui/widget/EcFloatButton;Z)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->b:Lnet/easyconn/ui/widget/EcFloatButton;

    iput-boolean p2, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->b:Lnet/easyconn/ui/widget/EcFloatButton;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/easyconn/ui/widget/EcFloatButton;->J:Z

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->b:Lnet/easyconn/ui/widget/EcFloatButton;

    iget-object p1, p1, Lnet/easyconn/ui/widget/EcFloatButton;->H:Lnet/easyconn/ui/widget/EcFloatMenu;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lnet/easyconn/ui/widget/EcFloatMenu;->setVisibility(I)V

    iget-boolean p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->b:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->b:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$c;->b:Lnet/easyconn/ui/widget/EcFloatButton;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lnet/easyconn/ui/widget/EcFloatButton;->J:Z

    return-void
.end method
