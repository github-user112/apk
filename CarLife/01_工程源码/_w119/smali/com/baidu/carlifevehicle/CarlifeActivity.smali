.class public final Lcom/baidu/carlifevehicle/CarlifeActivity;
.super Lb/b/c/j;
.source ""

# interfaces
.implements La/a/a/a/m/e;
.implements La/a/a/a/a/j/e;
.implements La/a/a/a/m/g;
.implements La/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/CarlifeActivity$a;
    }
.end annotation


# static fields
.field public static o:Lcom/baidu/carlifevehicle/CarlifeActivity;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field public C:Landroid/content/BroadcastReceiver;

.field public D:Ljava/lang/String;

.field public E:I

.field public p:Landroid/view/SurfaceView;

.field public q:Landroid/view/ViewGroup;

.field public r:La/a/a/a/a/j/e;

.field public s:La/a/a/a/d;

.field public t:La/a/a/a/d;

.field public u:La/a/a/a/d;

.field public v:La/a/a/a/d;

.field public w:La/a/b/n/k;

.field public x:La/a/b/s/b;

.field public y:La/a/b/o/a;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/b/c/j;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->A:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->E:I

    return-void
.end method

.method public static final Z0(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, La/a/b/s/b;

    invoke-direct {v0, p0}, La/a/b/s/b;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/b/s/b;->d(Ljava/lang/String;)La/a/b/s/a;

    const v1, 0x7f0e0041

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/b/s/b;->i(Ljava/lang/String;)La/a/b/s/b;

    .line 4
    new-instance v1, La/a/b/f;

    invoke-direct {v1, p0}, La/a/b/f;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    .line 5
    iput-object v1, v0, La/a/b/s/a;->f:La/a/b/s/a$c;

    const v1, 0x7f0e001e

    .line 6
    invoke-virtual {v0, v1}, La/a/b/s/b;->f(I)La/a/b/s/b;

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:La/a/b/s/b;

    new-instance v1, La/a/b/c;

    invoke-direct {v1, p0}, La/a/b/c;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:La/a/b/s/b;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:La/a/b/s/b;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3ea

    invoke-static {p1}, La/a/b/o/b;->a(I)V

    return-void
.end method

.method public L0(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const p1, 0x7f0e002c

    .line 1
    sget-object v0, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 2
    new-instance v1, La/a/b/r/b;

    invoke-direct {v1, p1}, La/a/b/r/b;-><init>(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0e002d

    .line 3
    sget-object v0, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 4
    new-instance v1, La/a/b/r/b;

    invoke-direct {v1, p1}, La/a/b/r/b;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public O(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3fc

    invoke-static {p1}, La/a/b/o/b;->a(I)V

    return-void
.end method

.method public Q(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a1()V
    .locals 5

    iget v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->E:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->E:I

    :cond_0
    sget v0, La/a/a/a/l/b;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    sget v0, La/a/a/a/l/b;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    sget v0, La/a/a/a/l/b;->e:I

    const/4 v1, 0x2

    const/16 v3, 0x13

    if-ne v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x1306

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    sget v0, La/a/a/a/l/b;->e:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    const/16 v0, 0x700

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    sget v0, La/a/a/a/l/b;->e:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    const/16 v0, 0x1706

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    sget v0, La/a/a/a/l/b;->e:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x104

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6
    sget v0, La/a/a/a/l/b;->e:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x302

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_7
    sget v0, La/a/a/a/l/b;->e:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x806

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_8
    sget v0, La/a/a/a/l/b;->e:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->E:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_9
    sget v0, La/a/a/a/l/b;->e:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x80e

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_a
    sget v0, La/a/a/a/l/b;->e:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->show(I)V

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_c
    :goto_0
    return-void
.end method

.method public b0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3f2

    invoke-static {p1}, La/a/b/o/b;->a(I)V

    return-void
.end method

.method public final b1()La/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->t:La/a/a/a/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mMusicModule"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-static {p1}, La/a/b/o/b;->a(I)V

    return-void
.end method

.method public final c1()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "++++++++++++++++++++Baidu Carlife Begin++++++++++++++++++++"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    .line 3
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v2, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    const-string v3, "VOICE_WAKEUP"

    invoke-virtual {v2, v3}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->G(Ljava/lang/String;I)V

    sget v2, La/a/a/a/l/b;->d:I

    const-string v3, "VOICE_MIC"

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->G(Ljava/lang/String;I)V

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    const-string v3, "BLUETOOTH_INTERNAL_UI"

    invoke-virtual {v2, v3}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->G(Ljava/lang/String;I)V

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    const-string v3, "FOCUS_UI"

    invoke-virtual {v2, v3}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->G(Ljava/lang/String;I)V

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v1

    const-string v2, "CONFIG_WIFI_DIRECT_NAME"

    invoke-virtual {v1, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v3

    invoke-virtual {v3, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstance().getStringFromMap(Configs.CONFIG_WIFI_DIRECT_NAME)"

    invoke-static {v3, v4}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v1

    const-string v2, "CONFIG_TARGET_BLUETOOTH_NAME"

    invoke-virtual {v1, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v3

    invoke-virtual {v3, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstance().getStringFromMap(Configs.CONFIG_TARGET_BLUETOOTH_NAME)"

    invoke-static {v3, v4}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v1

    const-string v2, "CONFIG_HU_BT_NAME"

    invoke-virtual {v1, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v3

    invoke-virtual {v3, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstance().getStringFromMap(Configs.CONFIG_HU_BT_NAME)"

    invoke-static {v3, v4}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v1

    const-string v2, "CONFIG_HU_BT_MAC"

    invoke-virtual {v1, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v3

    invoke-virtual {v3, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstance().getStringFromMap(Configs.CONFIG_HU_BT_MAC)"

    invoke-static {v3, v4}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    const-string v3, "CONFIG_LOG_LEVEL"

    invoke-virtual {v2, v3}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    const-string v3, "CONFIG_WIRLESS_TYPE"

    invoke-virtual {v2, v3}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    const-string v3, "CONFIG_WIRLESS_FREQUENCY"

    invoke-virtual {v2, v3}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, La/a/b/r/a;->B:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "CONFIG_SAVE_AUDIO_FILE"

    invoke-interface {v1, v3, v2}, La/a/a/a/c;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    sget-object v2, La/a/b/r/c;->a:Ljava/lang/String;

    const-string v3, "vehicleChannel"

    invoke-static {v2, v3}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "12345678"

    invoke-interface {v1, v2, v3}, La/a/a/a/m/c;->x(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->B:Z

    return-void
.end method

.method public final d1()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget v0, La/a/a/a/l/b;->a:I

    const-string v1, "android.intent.action.C3_HARDKEY"

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    goto :goto_1

    :pswitch_0
    new-instance v0, La/a/b/m/e;

    invoke-direct {v0}, La/a/b/m/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    const-string v0, "com.adayo.android.MCU_KEY_IND_ACTION"

    goto :goto_1

    :pswitch_1
    new-instance v0, La/a/b/m/f;

    invoke-direct {v0}, La/a/b/m/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    const-string v0, "com.nwd.action.ACTION_KEY_VALUE"

    goto :goto_1

    :pswitch_2
    new-instance v0, La/a/b/m/h;

    invoke-direct {v0}, La/a/b/m/h;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    const-string v0, "IKeyClick.KEY_CLICK"

    goto :goto_1

    :pswitch_3
    new-instance v0, La/a/b/m/d;

    invoke-direct {v0}, La/a/b/m/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    const-string v0, "com.spd.system.key"

    goto :goto_1

    :pswitch_4
    new-instance v0, La/a/b/m/g;

    invoke-direct {v0}, La/a/b/m/g;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, La/a/b/m/c;

    invoke-direct {v0}, La/a/b/m/c;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    new-instance v0, La/a/b/m/b;

    invoke-direct {v0}, La/a/b/m/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    const-string v0, "com.coagent.intent.action.KEY_CHANGED"

    goto :goto_1

    :pswitch_7
    new-instance v0, La/a/b/m/a;

    invoke-direct {v0}, La/a/b/m/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    const-string v0, "com.okl.android.MCU_KEY_IND_ACTION"

    :goto_1
    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e1(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/a/m/c;->q0(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->b1()La/a/a/a/d;

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->b1()La/a/a/a/d;

    move-result-object v0

    .line 1
    iget v0, v0, La/a/a/a/d;->c:I

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 v0, 0x20

    invoke-interface {p1, v0}, La/a/a/a/m/c;->q0(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->b1()La/a/a/a/d;

    move-result-object p1

    .line 3
    iget p1, p1, La/a/a/a/d;->c:I

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 v0, 0x1f

    invoke-interface {p1, v0}, La/a/a/a/m/c;->q0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f1()V
    .locals 3

    new-instance v0, La/a/b/s/b;

    invoke-direct {v0, p0}, La/a/b/s/b;-><init>(Landroid/app/Activity;)V

    .line 1
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/b/s/b;->d(Ljava/lang/String;)La/a/b/s/a;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/b/s/b;->i(Ljava/lang/String;)La/a/b/s/b;

    const v1, 0x7f0e001e

    .line 3
    invoke-virtual {v0, v1}, La/a/b/s/b;->f(I)La/a/b/s/b;

    invoke-virtual {v0}, La/a/b/s/b;->h()La/a/b/s/b;

    new-instance v1, La/a/b/e;

    invoke-direct {v1, p0}, La/a/b/e;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    .line 4
    iput-object v1, v0, La/a/b/s/a;->f:La/a/b/s/a$c;

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/b/s/b;->c(Ljava/lang/String;)La/a/b/s/a;

    .line 6
    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:La/a/b/s/b;

    new-instance v1, La/a/b/d;

    invoke-direct {v1, p0}, La/a/b/d;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:La/a/b/s/b;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:La/a/b/s/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    const v0, 0x10037

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeConnectExceptionProto$CarlifeConnectException;

    .line 1
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeConnectExceptionProto$CarlifeConnectException;->getExceptionType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lb/b/c/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e0040

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/b/c/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e003f

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/b/c/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e0029

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-static {}, La/a/b/n/s;->C0()La/a/b/n/s;

    move-result-object v0

    invoke-virtual {p2, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    :cond_4
    invoke-static {}, La/a/b/n/s;->C0()La/a/b/n/s;

    move-result-object p2

    invoke-virtual {p2, p1}, La/a/b/n/s;->D0(Ljava/lang/String;)V

    goto :goto_2

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeConnectExceptionProto.CarlifeConnectException"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final g1(Z)V
    .locals 5

    :try_start_0
    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v0

    const-string v1, "connect_status"

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, La/a/b/r/d;->e:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, v0, La/a/b/r/d;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "CarLife_SDK"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "save connect status error"

    aput-object v3, v1, v2

    const-string v2, "tag"

    .line 2
    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    .line 4
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public synthetic n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->b(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public o(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3ec

    invoke-static {p1}, La/a/b/o/b;->a(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    sget v0, La/a/a/a/l/b;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->f1()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, La/a/a/a/m/c;->q0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lb/h/b/p;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "<set-?>"

    .line 1
    invoke-static {p0, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    const v0, 0x7f0c001c

    .line 2
    invoke-virtual {p0, v0}, Lb/b/c/j;->setContentView(I)V

    const v0, 0x7f0900d5

    invoke-virtual {p0, v0}, Lb/b/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.root_view)"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->q:Landroid/view/ViewGroup;

    sget v1, La/a/a/a/l/b;->f:I

    const v2, 0x7f090130

    const v3, 0x7f090131

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    invoke-virtual {p0, v2}, Lb/b/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lb/b/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.sdk.receiver.view.RemoteDisplayView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, v3}, Lb/b/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lb/b/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    :goto_0
    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    new-instance v0, La/a/b/n/k;

    invoke-direct {v0, p0}, La/a/b/n/k;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    .line 3
    sput-object p0, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, La/a/b/n/g;->W:Landroid/content/Context;

    sget-object v0, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 4
    iget-object v0, v0, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    .line 5
    sput-object v0, La/a/b/n/g;->X:La/a/b/n/k;

    .line 6
    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 7
    sget-object v1, La/a/b/n/r;->Z:La/a/b/n/r;

    if-nez v1, :cond_2

    new-instance v1, La/a/b/n/r;

    invoke-direct {v1}, La/a/b/n/r;-><init>()V

    sput-object v1, La/a/b/n/r;->Z:La/a/b/n/r;

    :cond_2
    sget-object v1, La/a/b/n/r;->Z:La/a/b/n/r;

    .line 8
    invoke-virtual {v0, v1}, La/a/b/n/k;->a(La/a/b/n/g;)V

    new-instance v0, La/a/b/p/c;

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, La/a/b/p/c;-><init>(La/a/a/a/c;La/a/a/a/m/g;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->s:La/a/a/a/d;

    new-instance v0, La/a/b/p/a;

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/b/p/a;-><init>(La/a/a/a/c;)V

    .line 9
    invoke-static {v0, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->t:La/a/a/a/d;

    .line 10
    new-instance p1, La/a/b/p/b;

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-direct {p1, v0}, La/a/b/p/b;-><init>(La/a/a/a/c;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->u:La/a/a/a/d;

    new-instance p1, La/a/b/p/d;

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-direct {p1, v0}, La/a/b/p/d;-><init>(La/a/a/a/c;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->v:La/a/a/a/d;

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->s:La/a/a/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1, v0}, La/a/a/a/c;->B(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->b1()La/a/a/a/d;

    move-result-object v0

    invoke-interface {p1, v0}, La/a/a/a/c;->B(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->u:La/a/a/a/d;

    if-eqz v0, :cond_7

    invoke-interface {p1, v0}, La/a/a/a/c;->B(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->v:La/a/a/a/d;

    if-eqz v0, :cond_6

    invoke-interface {p1, v0}, La/a/a/a/c;->B(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, p0}, La/a/a/a/m/c;->t(La/a/a/a/m/e;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, p0}, La/a/a/a/c;->A(La/a/a/a/a/j/e;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, p0}, La/a/a/a/c;->j0(La/a/a/a/k;)V

    new-instance p1, La/a/b/k;

    invoke-direct {p1}, La/a/b/k;-><init>()V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->r:La/a/a/a/a/j/e;

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->r:La/a/a/a/a/j/e;

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, La/a/a/a/c;->A(La/a/a/a/a/j/e;)V

    .line 11
    new-instance p1, La/d/a/a;

    invoke-direct {p1, p0}, La/d/a/a;-><init>(Lb/h/b/p;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 12
    invoke-virtual {p1, v0}, La/d/a/a;->a([Ljava/lang/String;)La/d/a/f/i;

    move-result-object p1

    sget-object v0, La/a/b/b;->a:La/a/b/b;

    .line 13
    iput-object v0, p1, La/d/a/f/i;->p:La/d/a/c/a;

    .line 14
    new-instance v0, La/a/b/a;

    invoke-direct {v0, p0}, La/a/b/a;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    invoke-virtual {p1, v0}, La/d/a/f/i;->e(La/d/a/c/b;)V

    .line 15
    new-instance p1, Lcom/baidu/carlifevehicle/CarlifeActivity$a;

    invoke-direct {p1, p0}, Lcom/baidu/carlifevehicle/CarlifeActivity$a;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->y:La/a/b/o/a;

    invoke-static {p1}, La/a/b/o/b;->d(La/a/b/o/a;)V

    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->y:La/a/b/o/a;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/baidu/carlifevehicle/CarlifeActivity$a;

    const/16 v0, 0x3e8

    const-wide/16 v6, 0x1f4

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->d1()V

    sget p1, La/a/a/a/l/b;->s:I

    if-ne p1, v5, :cond_3

    invoke-static {}, La/a/b/i;->a()La/a/b/i;

    move-result-object p1

    .line 16
    iget-object v0, p1, La/a/b/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, La/a/b/i;->b:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "Starting log observer"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p1, La/a/b/i;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, La/a/b/i;->f:Ljava/util/concurrent/Future;

    .line 17
    iget-object v0, p1, La/a/b/i;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, La/a/b/h;

    invoke-direct {v1, p1}, La/a/b/h;-><init>(La/a/b/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 18
    iget-object v2, p1, La/a/b/i;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, La/a/b/g;

    invoke-direct {v3, p1}, La/a/b/g;-><init>(La/a/b/i;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x1f4

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    const-string p1, "CarlifeActivity"

    const-string v0, "CarlifeActivity\u521b\u5efa"

    .line 19
    invoke-static {p1, v0}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.baidu.carlifevehicle.CarlifeActivity.MsgMainActivityHandler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "mVehicleControlHandler"

    invoke-static {p1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "mVRModule"

    invoke-static {p1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p1, "mNavModule"

    invoke-static {p1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "mPhoneModule"

    invoke-static {p1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.sdk.receiver.view.RemoteDisplayGLView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 11

    invoke-super {p0}, Lb/b/c/j;->onDestroy()V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->p:Landroid/view/SurfaceView;

    const-string v1, "mSurfaceView"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    instance-of v3, v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    check-cast v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    .line 1
    iget-object v3, v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;->c:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    .line 2
    iget-object v5, v3, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:La/a/a/a/a/i/a;

    const-string v6, "RemoteDisplayGLView"

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v4}, La/a/a/a/a/i/a;->a(Z)V

    iput-object v2, v3, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:La/a/a/a/a/i/a;

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v3

    invoke-interface {v3, v2}, La/a/a/a/m/c;->e0(Landroid/view/Surface;)V

    const-string v3, "RemoteDisplayGLView destroy"

    invoke-static {v6, v3}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v3

    invoke-interface {v3, v0}, La/a/a/a/m/c;->S(La/a/a/a/m/h;)V

    const-string v0, "RemoteDisplayGLView onDestroy"

    invoke-static {v6, v0}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->p:Landroid/view/SurfaceView;

    if-eqz v0, :cond_e

    instance-of v3, v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView;

    const-string v5, "CarlifeActivity"

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    check-cast v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView;

    .line 5
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-interface {v1, v0}, La/a/a/a/m/c;->S(La/a/a/a/m/h;)V

    const-string v0, "RemoteDisplayView onDestroy"

    invoke-static {v5, v0}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {v1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_2
    const-string v0, "CarLife_SDK"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "MainActivity onDestroy"

    const/4 v6, 0x0

    aput-object v3, v1, v6

    const-string v3, "tag"

    .line 7
    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v1, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v8, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x3

    .line 9
    array-length v10, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v9, v0, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_3
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0, p0}, La/a/a/a/m/c;->G0(La/a/a/a/m/e;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0, p0}, La/a/a/a/c;->v0(La/a/a/a/a/j/e;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->r:La/a/a/a/a/j/e;

    if-eqz v1, :cond_d

    invoke-interface {v0, v1}, La/a/a/a/c;->v0(La/a/a/a/a/j/e;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0, v2}, La/a/a/a/m/c;->z(La/a/a/a/m/f;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->s:La/a/a/a/d;

    if-eqz v1, :cond_c

    invoke-interface {v0, v1}, La/a/a/a/c;->N(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->b1()La/a/a/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, La/a/a/a/c;->N(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->u:La/a/a/a/d;

    if-eqz v1, :cond_b

    invoke-interface {v0, v1}, La/a/a/a/c;->N(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->v:La/a/a/a/d;

    if-eqz v1, :cond_a

    invoke-interface {v0, v1}, La/a/a/a/c;->N(La/a/a/a/d;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0, p0}, La/a/a/a/c;->n(La/a/a/a/k;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->y:La/a/b/o/a;

    invoke-static {v0}, La/a/b/o/b;->e(La/a/b/o/a;)V

    sget v0, La/a/a/a/l/b;->s:I

    if-ne v0, v4, :cond_9

    invoke-static {}, La/a/b/i;->a()La/a/b/i;

    move-result-object v0

    .line 11
    iget-object v1, v0, La/a/b/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, La/a/b/i;->b:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v8, "Stopping log observer"

    aput-object v8, v2, v6

    invoke-static {v1, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, La/a/b/i;->f:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_6

    .line 12
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 13
    :cond_6
    iget-object v2, v0, La/a/b/i;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_8

    .line 14
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-wide/16 v8, 0x1f4

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v8, v9, v10}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v4, [Ljava/lang/Object;

    const-string v8, "Executor did not terminate"

    aput-object v8, v2, v6

    .line 15
    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x5

    .line 17
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v6, v1, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 18
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 19
    :cond_8
    :goto_4
    iget-object v0, v0, La/a/b/i;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_9
    const-string v0, "CarlifeActivity\u9500\u6bc1"

    .line 20
    invoke-static {v5, v0}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "mVRModule"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_b
    const-string v0, "mNavModule"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_c
    const-string v0, "mPhoneModule"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_d
    const-string v0, "mVehicleControlHandler"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lb/b/c/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, La/a/a/a/l/b;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v1

    invoke-virtual {v1, v0}, La/a/b/r/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lb/h/b/p;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const-string p1, "CarlifeActivity"

    const-string v0, "CarlifeActivity onNewIntent"

    invoke-static {p1, v0}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lb/h/b/p;->onPause()V

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, La/a/b/l/d/d;->c:Z

    sget v1, La/a/b/l/d/d;->b:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    invoke-virtual {v0}, La/a/b/l/d/f;->a()V

    .line 2
    :goto_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/m/c;->i0()V

    const-string v0, "CarlifeActivity"

    const-string v1, "CarlifeActivity Pause"

    invoke-static {v0, v1}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lb/h/b/p;->onResume()V

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, La/a/b/l/d/d;->c:Z

    sget v0, La/a/b/l/d/d;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    invoke-virtual {v0}, La/a/b/l/d/f;->b()V

    goto :goto_0

    :cond_1
    sget-object v0, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    invoke-virtual {v0}, La/a/b/l/d/f;->c()V

    .line 2
    :goto_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/m/c;->A0()V

    const-string v0, "CarlifeActivity"

    const-string v1, "CarlifeActivity Resume"

    invoke-static {v0, v1}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lb/b/c/j;->onStart()V

    const-string v0, "CarlifeActivity"

    const-string v1, "CarlifeActivity Start"

    invoke-static {v0, v1}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lb/b/c/j;->onStop()V

    const-string v0, "CarlifeActivity"

    const-string v1, "CarlifeActivity Stop"

    invoke-static {v0, v1}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->a1()V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 3

    const/16 v0, 0x3f6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, p1, v1, v2, v1}, La/a/b/o/b;->c(IIILjava/lang/Object;I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const p1, 0x18009

    .line 2
    invoke-static {p1}, La/a/b/o/b;->a(I)V

    :cond_0
    return-void
.end method
