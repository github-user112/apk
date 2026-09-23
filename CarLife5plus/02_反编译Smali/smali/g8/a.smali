.class public final synthetic Lg8/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Lg8/b;


# direct methods
.method public synthetic constructor <init>(Lg8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg8/a;->a:Lg8/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lg8/a;->a:Lg8/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
