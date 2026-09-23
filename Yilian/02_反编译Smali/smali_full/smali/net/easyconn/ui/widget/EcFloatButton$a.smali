.class public Lnet/easyconn/ui/widget/EcFloatButton$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ui/widget/EcFloatButton;
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

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$a;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$a;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->f(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/easyconn/ui/widget/EcFloatButton$a;->a:Lnet/easyconn/ui/widget/EcFloatButton;

    .line 1
    iget-boolean v1, p1, Lnet/easyconn/ui/widget/EcFloatButton;->t:Z

    if-nez v1, :cond_2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x6e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method
