.class public Lnet/easyconn/framework/video/SoftSurfaceView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/video/SoftSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/video/SoftSurfaceView;Lnet/easyconn/framework/video/SoftSurfaceView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    iput p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$d;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 4

    :goto_0
    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "%s: EGL error: 0x%x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Le/e/a/g;->a:Le/e/a/h;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const-string v5, "creating OpenGL ES 2.0 context"

    .line 2
    invoke-virtual {v2, v3, v4, v5, v1}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "Before eglCreateContext"

    .line 3
    invoke-virtual {p0, v1, p1}, Lnet/easyconn/framework/video/SoftSurfaceView$d;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$d;->a:I

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x2

    aput v2, v1, v0

    const/16 v0, 0x3038

    aput v0, v1, v2

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    const-string p3, "After eglCreateContext"

    invoke-virtual {p0, p3, p1}, Lnet/easyconn/framework/video/SoftSurfaceView$d;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-object p2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
