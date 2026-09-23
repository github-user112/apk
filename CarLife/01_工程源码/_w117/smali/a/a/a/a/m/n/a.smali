.class public final synthetic La/a/a/a/m/n/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;


# direct methods
.method public synthetic constructor <init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/n/a;->a:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, La/a/a/a/m/n/a;->a:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    const-string v0, "this$0"

    .line 1
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :goto_0
    return-void
.end method
