.class public La/a/b/n/u$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/p/a/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/u;->i0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/b/n/u;


# direct methods
.method public constructor <init>(La/a/b/n/u;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/u$a;->a:La/a/b/n/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 1

    iget-object p2, p0, La/a/b/n/u$a;->a:La/a/b/n/u;

    .line 1
    iget-object p2, p2, La/a/b/n/u;->e0:La/a/b/n/u$b;

    .line 2
    invoke-virtual {p2}, La/a/b/n/u$b;->b()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, La/a/b/n/u$a;->a:La/a/b/n/u;

    .line 3
    iget-object p1, p1, La/a/b/n/u;->a0:Lcom/baidu/carlifevehicle/view/DirectionViewPager;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "toLeft="

    invoke-static {p3}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p1, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->e0:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "MultiViewPager"

    invoke-static {p3, p2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->e0:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, La/a/b/n/u$a;->a:La/a/b/n/u;

    .line 6
    iget-boolean p1, p1, La/a/b/n/u;->f0:Z

    if-nez p1, :cond_0

    const/16 p1, 0x7d5

    const/16 p2, 0xc8

    .line 7
    invoke-static {p1, p2}, La/a/b/o/b;->b(II)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, La/a/b/n/u$a;->a:La/a/b/n/u;

    .line 1
    :goto_0
    iput-boolean v0, p1, La/a/b/n/u;->f0:Z

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, La/a/b/n/u$a;->a:La/a/b/n/u;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method
