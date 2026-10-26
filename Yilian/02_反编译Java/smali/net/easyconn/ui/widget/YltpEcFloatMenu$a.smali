.class public Lnet/easyconn/ui/widget/YltpEcFloatMenu$a;
.super Lf/a/k/d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ui/widget/YltpEcFloatMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lnet/easyconn/ui/widget/YltpEcFloatMenu;


# direct methods
.method public constructor <init>(Lnet/easyconn/ui/widget/YltpEcFloatMenu;J)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu$a;->c:Lnet/easyconn/ui/widget/YltpEcFloatMenu;

    invoke-direct {p0, p2, p3}, Lf/a/k/d0;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/easyconn/ui/widget/YltpEcFloatMenu$a;->c:Lnet/easyconn/ui/widget/YltpEcFloatMenu;

    iget-object p1, p1, Lnet/easyconn/ui/widget/YltpEcFloatMenu;->n:Lnet/easyconn/ui/widget/YltpEcFloatMenu$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/easyconn/ui/widget/EcFloatMenu$b;->c()V

    :cond_0
    return-void
.end method
