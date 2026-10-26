.class public Lf/a/i/n/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/o/a;


# instance fields
.field public a:Lnet/easyconn/framework/video/SoftSurfaceView;

.field public b:Lf/a/i/n/c;

.field public c:Landroid/content/Context;

.field public d:Landroid/os/Handler;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lf/a/i/n/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/n/a;->g:Z

    iput v0, p0, Lf/a/i/n/a;->h:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/i/n/a;->i:J

    instance-of v0, p1, Lnet/easyconn/framework/video/SoftSurfaceView;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/easyconn/framework/video/SoftSurfaceView;

    iput-object p1, p0, Lf/a/i/n/a;->a:Lnet/easyconn/framework/video/SoftSurfaceView;

    :cond_0
    iput-object p2, p0, Lf/a/i/n/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/Surface;)Z
    .locals 5

    new-instance p3, Lf/a/i/n/c;

    mul-int p1, p1, p2

    invoke-direct {p3, p1}, Lf/a/i/n/c;-><init>(I)V

    iput-object p3, p0, Lf/a/i/n/a;->b:Lf/a/i/n/c;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lf/a/i/n/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object p2, p0, Lf/a/i/n/a;->a:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-virtual {p2, p1}, Lnet/easyconn/framework/video/SoftSurfaceView;->setDataSource(Ljava/util/Queue;)V

    iget-object p1, p0, Lf/a/i/n/a;->a:Lnet/easyconn/framework/video/SoftSurfaceView;

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    const-string p3, "airplaytest SoftSurfaceView start"

    .line 1
    invoke-static {p3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget p3, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->j:I

    const-string v0, "m_stop="

    const-string v1, "start ==========>"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v3, :cond_6

    const/4 v4, 0x2

    if-eq p3, v4, :cond_2

    const/4 v4, 0x3

    if-eq p3, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast p1, Lnet/easyconn/framework/video/SoftSurfaceView$e;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v2, p1, Lnet/easyconn/framework/video/SoftSurfaceView$e;->d:Z

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView$e;->d:Z

    invoke-static {p2, p1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    :cond_1
    throw p2

    .line 3
    :cond_2
    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;

    if-eqz p1, :cond_5

    const-string p2, "ECdebug start ==========>"

    .line 4
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean p2, p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;->g:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-virtual {p2, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_3
    iput-boolean v2, p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    const-string p2, "AirplayRenderer start m_stop="

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    invoke-static {p2, p3}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    const-string p2, "h264_airplay.h264"

    iget-object p3, p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-boolean p3, p3, Lnet/easyconn/framework/video/SoftSurfaceView;->h:Z

    if-eqz p3, :cond_7

    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-static {}, Ld/s/y;->I()Ljava/io/File;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_4
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p3, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->i:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    throw p2

    .line 5
    :cond_6
    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast p1, Lnet/easyconn/framework/video/SoftSurfaceView$f;

    if-eqz p1, :cond_8

    .line 6
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v2, p1, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    invoke-static {p2, p1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    .line 7
    :catch_0
    :cond_7
    :goto_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "soft_control_thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    new-instance p1, Lf/a/i/n/a$a;

    invoke-direct {p1, p0}, Lf/a/i/n/a$a;-><init>(Lf/a/i/n/a;)V

    iput-object p1, p0, Lf/a/i/n/a;->e:Ljava/lang/Runnable;

    iget-object p2, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 8
    :cond_8
    throw p2

    .line 9
    :cond_9
    throw p2
.end method

.method public b([BII)V
    .locals 4

    iget-object v0, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/a/i/n/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    const-string v0, "has video data,remove close runnable "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lf/a/i/n/a;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    :goto_0
    iget-object v1, p0, Lf/a/i/n/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    :try_start_0
    const-string v0, "EcSoftVideoPlayer offer wait"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/i/n/a;->b:Lf/a/i/n/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lf/a/i/n/c;->a([BIII)Lf/a/i/n/c$b;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/n/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    const-string p1, "EcSoftVideoPlayer offer"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/n/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->S(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lf/a/i/n/a;->d()V

    :cond_2
    return-void
.end method

.method public c([BIIIII)V
    .locals 0

    iget-object p4, p0, Lf/a/i/n/a;->b:Lf/a/i/n/c;

    const/4 p5, 0x0

    invoke-virtual {p4, p1, p2, p3, p5}, Lf/a/i/n/c;->a([BIII)Lf/a/i/n/c$b;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/n/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf/a/i/n/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->S(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/a/i/n/a;->d()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 10

    iget-object v0, p0, Lf/a/i/n/a;->a:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 1
    iget v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView;->j:I

    const-string v2, "clearQueue end"

    const-string v3, "clearQueue"

    const-string v4, "m_stop="

    const-string v5, "stop==========>"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v1, v7, :cond_6

    const/4 v9, 0x2

    if-eq v1, v9, :cond_3

    const/4 v9, 0x3

    if-eq v1, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v7, v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;->d:Z

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;->d:Z

    invoke-static {v1, v4}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iput-boolean v6, v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;->a:Z

    .line 3
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;->b:Ljava/util/Queue;

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/n/c$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lf/a/i/n/c$b;->b()V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 4
    :cond_2
    throw v8

    .line 5
    :cond_3
    iget-object v0, v0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;

    if-eqz v0, :cond_5

    const-string v1, "ECdebug stop==========>"

    .line 6
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->g:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-virtual {v1, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_4
    iput-boolean v7, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    const-string v1, "AirplayRenderer stop m_stop="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    invoke-static {v1, v2}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iput-boolean v6, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->a:Z

    const-string v1, "ECdebug clearQueue"

    .line 7
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->b:Ljava/util/Queue;

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/n/c$b;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lf/a/i/n/c$b;->b()V

    goto :goto_1

    .line 8
    :cond_5
    throw v8

    .line 9
    :cond_6
    iget-object v0, v0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;

    if-eqz v0, :cond_a

    .line 10
    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v7, v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    invoke-static {v1, v4}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iput-boolean v6, v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->a:Z

    .line 11
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->b:Ljava/util/Queue;

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/n/c$b;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lf/a/i/n/c$b;->b()V

    goto :goto_2

    :cond_7
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 12
    :cond_8
    :goto_3
    iget-object v0, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lf/a/i/n/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v8, p0, Lf/a/i/n/a;->d:Landroid/os/Handler;

    :cond_9
    return-void

    .line 13
    :cond_a
    goto :goto_5

    :goto_4
    throw v8

    :goto_5
    goto :goto_4
.end method

.method public final d()V
    .locals 6

    iget v0, p0, Lf/a/i/n/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/a/i/n/a;->h:I

    iget-wide v0, p0, Lf/a/i/n/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lf/a/i/n/a;->i:J

    :cond_0
    iget v0, p0, Lf/a/i/n/a;->h:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    iget-wide v4, p0, Lf/a/i/n/a;->i:J

    sub-long v4, v0, v4

    div-long/2addr v2, v4

    iput-wide v0, p0, Lf/a/i/n/a;->i:J

    const/4 v0, 0x0

    iput v0, p0, Lf/a/i/n/a;->h:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v2, p0, Lf/a/i/n/a;->a:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-virtual {v2}, Lnet/easyconn/framework/video/SoftSurfaceView;->getFps()J

    move-result-wide v2

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " avgDecodeTimePer30 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
