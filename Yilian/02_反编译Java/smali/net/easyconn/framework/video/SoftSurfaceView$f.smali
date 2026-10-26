.class public Lnet/easyconn/framework/video/SoftSurfaceView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/video/SoftSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lf/a/i/n/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public final synthetic e:Lnet/easyconn/framework/video/SoftSurfaceView;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/video/SoftSurfaceView;Lnet/easyconn/framework/video/SoftSurfaceView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->e:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->a:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->c:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->e:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 1
    iget-boolean v0, v0, Lnet/easyconn/framework/video/SoftSurfaceView;->c:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    :cond_0
    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->b:Ljava/util/Queue;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x64

    :goto_0
    iget-boolean v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_4

    move p1, v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/i/n/c$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lf/a/i/n/c$b;->a()[B

    move-result-object p1

    .line 3
    iget v1, v0, Lf/a/i/n/c$b;->c:I

    .line 4
    iget-boolean v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->c:Z

    invoke-static {p1, v1, v2}, Lnet/easyconn/GL2JNILib;->decord([BII)I

    move-result p1

    invoke-virtual {v0}, Lf/a/i/n/c$b;->b()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->e:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-static {p1}, Lnet/easyconn/framework/video/SoftSurfaceView;->a(Lnet/easyconn/framework/video/SoftSurfaceView;)V

    :cond_4
    return-void

    :catch_1
    move-exception p1

    const-string v0, "onDrawFrame: Exception "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const-string p1, "SoftSurfaceView onSurfaceChanged "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SoftSurfaceView onSurfaceChanged width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , height = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->e:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->b:Landroid/view/SurfaceHolder$Callback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    iget-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->a:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->a:Z

    iput-boolean v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    const-string p1, "m_stop="

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    move v0, p2

    move v1, p3

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lnet/easyconn/GL2JNILib;->init(IIIIII)V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const-string p1, "SoftSurfaceView surfaceCreated "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->e:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->b:Landroid/view/SurfaceHolder$Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
