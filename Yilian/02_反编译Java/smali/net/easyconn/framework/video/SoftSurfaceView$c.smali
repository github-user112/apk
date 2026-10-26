.class public Lnet/easyconn/framework/video/SoftSurfaceView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/video/SoftSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[I


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/video/SoftSurfaceView;IIIIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->a:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p1, v0, v2

    const/16 v2, 0x3022

    aput v2, v0, p1

    const/4 v2, 0x5

    aput p1, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x3040

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p1, v0, v2

    const/16 p1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, p1

    iput-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->b:[I

    new-array p1, v1, [I

    iput-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    iput p2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->c:I

    iput p3, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->d:I

    iput p4, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->e:I

    iput p5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->f:I

    iput p6, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->g:I

    iput p7, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->h:I

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v3, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->b:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v7, 0x0

    aget v8, v0, v7

    if-lez v8, :cond_9

    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->b:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v9

    move v5, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_8

    .line 1
    aget-object v1, v9, v0

    const/16 v2, 0x3025

    .line 2
    iget-object v3, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    invoke-interface {p1, p2, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    aget v2, v2, v7

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x3026

    iget-object v4, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    invoke-interface {p1, p2, v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    aget v3, v3, v7

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_2
    iget v4, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->g:I

    if-lt v2, v4, :cond_7

    iget v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->h:I

    if-ge v3, v2, :cond_2

    goto :goto_7

    :cond_2
    const/16 v2, 0x3024

    .line 4
    iget-object v3, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    invoke-interface {p1, p2, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    aget v2, v2, v7

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x3023

    iget-object v4, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    invoke-interface {p1, p2, v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    aget v3, v3, v7

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const/16 v4, 0x3022

    iget-object v5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    invoke-interface {p1, p2, v1, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    aget v4, v4, v7

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    const/16 v5, 0x3021

    iget-object v6, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    invoke-interface {p1, p2, v1, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->i:[I

    aget v5, v5, v7

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    .line 5
    :goto_6
    iget v6, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->c:I

    if-ne v2, v6, :cond_7

    iget v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->d:I

    if-ne v3, v2, :cond_7

    iget v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->e:I

    if-ne v4, v2, :cond_7

    iget v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$c;->f:I

    if-ne v5, v2, :cond_7

    goto :goto_8

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 6
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method
