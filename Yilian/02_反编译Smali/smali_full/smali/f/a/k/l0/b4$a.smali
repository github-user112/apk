.class public Lf/a/k/l0/b4$a;
.super Lf/a/k/d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/k/l0/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lf/a/k/l0/b4;


# direct methods
.method public constructor <init>(Lf/a/k/l0/b4;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/b4$a;->c:Lf/a/k/l0/b4;

    invoke-direct {p0}, Lf/a/k/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09006f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f090076

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/b4$a;->c:Lf/a/k/l0/b4;

    if-eqz p1, :cond_1

    const-string v0, "TabStatusTipFragment performIosBtnClick"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf/a/k/l0/b4;->Z0(Z)V

    goto :goto_0

    :cond_1
    throw v1

    .line 2
    :cond_2
    iget-object p1, p0, Lf/a/k/l0/b4$a;->c:Lf/a/k/l0/b4;

    if-eqz p1, :cond_3

    const-string v0, "TabStatusTipFragment performAndroidBtnClick"

    .line 3
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf/a/k/l0/b4;->Z0(Z)V

    :goto_0
    return-void

    :cond_3
    throw v1
.end method
