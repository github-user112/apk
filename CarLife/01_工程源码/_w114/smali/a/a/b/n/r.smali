.class public La/a/b/n/r;
.super La/a/b/n/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/n/r$b;
    }
.end annotation


# static fields
.field public static Z:La/a/b/n/r;


# instance fields
.field public a0:La/a/b/o/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La/a/b/n/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/n/r;->a0:La/a/b/o/a;

    new-instance v1, La/a/b/n/r$b;

    invoke-direct {v1, p0, v0}, La/a/b/n/r$b;-><init>(La/a/b/n/r;La/a/b/n/r$a;)V

    iput-object v1, p0, La/a/b/n/r;->a0:La/a/b/o/a;

    invoke-static {v1}, La/a/b/o/b;->d(La/a/b/o/a;)V

    return-void
.end method


# virtual methods
.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, La/a/b/n/g;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "onCreateView"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "LaunchFragment"

    invoke-static {p3, p2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c002c

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f090090

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f090091

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object p2

    .line 1
    iget-object p2, p2, La/a/b/r/d;->b:Landroid/content/SharedPreferences;

    const-string p3, "first_install_key"

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    # patchU: 启动页停留 2000ms -> 100ms (0x64); 留 100ms 让 Fragment 事务提交完
    const/16 p2, 0x64

    # patchT: 原为 if-eqz p1, :cond_2 (first_install_key==true 就去引导页)。
    #          改成无条件跳转 -> 永远走 :cond_2 (消息 2005 = 主界面), 跳过 UserGuideFragment。
    goto :cond_2

    const/16 p1, 0x7d9

    .line 2
    invoke-static {p1, p2}, La/a/b/o/b;->b(II)V

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object p1

    .line 3
    iget-object p2, p1, La/a/b/r/d;->c:Landroid/content/SharedPreferences$Editor;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p1, La/a/b/r/d;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_2
    const/16 p1, 0x7d5

    .line 4
    invoke-static {p1, p2}, La/a/b/o/b;->b(II)V

    :goto_1
    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    return-object p1
.end method

.method public Q()V
    .locals 3

    invoke-super {p0}, La/a/b/n/g;->Q()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "LaunchFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public R()V
    .locals 3

    invoke-super {p0}, La/a/b/n/g;->R()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDetach"

    aput-object v2, v0, v1

    const-string v1, "LaunchFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, La/a/b/n/r;->a0:La/a/b/o/a;

    invoke-static {v0}, La/a/b/o/b;->e(La/a/b/o/a;)V

    return-void
.end method
