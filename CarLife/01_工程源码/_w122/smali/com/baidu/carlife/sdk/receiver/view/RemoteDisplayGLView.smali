.class public final Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;
.super Landroid/opengl/GLSurfaceView;
.source ""

# interfaces
.implements La/a/a/a/m/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;,
        Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$b;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final c:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;-><init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;->c:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$b;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$b;-><init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, p0}, La/a/a/a/m/c;->H0(La/a/a/a/m/h;)V

    const-string p1, "RemoteDisplayGLView"

    const-string p2, "RemoteDisplayGLView init"

    invoke-static {p1, p2}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 1

    new-instance v0, La/a/a/a/m/n/b;

    invoke-direct {v0, p1, p2, p0}, La/a/a/a/m/n/b;-><init>(IILcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
