.class public final Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements La/a/a/a/m/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView$a;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView$a;-><init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView;)V

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, p0}, La/a/a/a/m/c;->H0(La/a/a/a/m/h;)V

    const-string p1, "CarlifeActivity"

    const-string p2, "RemoteDisplayView init"

    invoke-static {p1, p2}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 0

    new-instance p1, La/a/a/a/m/n/c;

    invoke-direct {p1, p0}, La/a/a/a/m/n/c;-><init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayView;)V

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, p3, p4}, La/a/a/a/m/c;->E(II)V

    const-string p1, "RemoteDisplayView"

    const-string p2, "RemoteDisplayView surfaceChanged"

    invoke-static {p1, p2}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, La/a/a/a/m/c;->e0(Landroid/view/Surface;)V

    const-string p1, "RemoteDisplayView"

    const-string v0, "RemoteDisplayView surfaceCreated"

    invoke-static {p1, v0}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, La/a/a/a/m/c;->e0(Landroid/view/Surface;)V

    const-string p1, "RemoteDisplayView"

    const-string v0, "RemoteDisplayView surfaceDestroyed"

    invoke-static {p1, v0}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
