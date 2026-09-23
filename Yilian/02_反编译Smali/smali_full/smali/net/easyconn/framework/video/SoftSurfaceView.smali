.class public Lnet/easyconn/framework/video/SoftSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/framework/video/SoftSurfaceView$c;,
        Lnet/easyconn/framework/video/SoftSurfaceView$d;,
        Lnet/easyconn/framework/video/SoftSurfaceView$e;,
        Lnet/easyconn/framework/video/SoftSurfaceView$b;,
        Lnet/easyconn/framework/video/SoftSurfaceView$f;
    }
.end annotation


# instance fields
.field public a:Landroid/opengl/GLSurfaceView$Renderer;

.field public b:Landroid/view/SurfaceHolder$Callback;

.field public c:Z

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Ljava/io/BufferedOutputStream;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->c:Z

    iput p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->d:I

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->h:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->i:Ljava/io/BufferedOutputStream;

    const/4 p2, 0x1

    iput p2, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->j:I

    .line 1
    new-instance p2, Lnet/easyconn/framework/video/SoftSurfaceView$d;

    invoke-direct {p2, p0, p1}, Lnet/easyconn/framework/video/SoftSurfaceView$d;-><init>(Lnet/easyconn/framework/video/SoftSurfaceView;Lnet/easyconn/framework/video/SoftSurfaceView$a;)V

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance p1, Lnet/easyconn/framework/video/SoftSurfaceView$c;

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lnet/easyconn/framework/video/SoftSurfaceView$c;-><init>(Lnet/easyconn/framework/video/SoftSurfaceView;IIIIII)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public static a(Lnet/easyconn/framework/video/SoftSurfaceView;)V
    .locals 6

    .line 1
    iget v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->d:I

    iget-wide v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->e:J

    :cond_0
    iget v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->d:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    iget-wide v4, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->e:J

    sub-long v4, v0, v4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->f:J

    iput-wide v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->d:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getFps()J
    .locals 2

    iget-wide v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->f:J

    return-wide v0
.end method

.method public getParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getRenderer()Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method public setCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->b:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method public setDataSource(Ljava/util/Queue;)V
    .locals 3

    const-string v0, "airplaytest SoftSurfaceView setDataSource"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->j:I

    const/4 v1, 0x1

    const-string v2, "m_stop="

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;

    .line 1
    iput-object p1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;->b:Ljava/util/Queue;

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, v0, Lnet/easyconn/framework/video/SoftSurfaceView$e;->d:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;

    .line 3
    iput-object p1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->b:Ljava/util/Queue;

    .line 4
    sget-object p1, Lf/a/i/m/d;->c:Ljava/util/Properties;

    if-nez p1, :cond_2

    .line 5
    sget-boolean p1, Lf/a/i/m/g;->e:Z

    goto :goto_0

    :cond_2
    const-string v1, "enable_ios_decode_px3"

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 7
    :cond_3
    sget-boolean p1, Lf/a/i/m/g;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->g:Z

    const-string p1, "AirplayRenderer setH264Queue m_stop="

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, v0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    check-cast v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;

    .line 10
    iput-object p1, v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->b:Ljava/util/Queue;

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, v0, Lnet/easyconn/framework/video/SoftSurfaceView$f;->d:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    :goto_1
    return-void
.end method

.method public setParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    new-instance v0, Lnet/easyconn/framework/video/SoftSurfaceView$a;

    invoke-direct {v0, p0, p1}, Lnet/easyconn/framework/video/SoftSurfaceView$a;-><init>(Lnet/easyconn/framework/video/SoftSurfaceView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRenderer(I)V
    .locals 2

    iput p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->j:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lnet/easyconn/framework/video/SoftSurfaceView$e;

    invoke-direct {p1, p0, v1}, Lnet/easyconn/framework/video/SoftSurfaceView$e;-><init>(Lnet/easyconn/framework/video/SoftSurfaceView;Lnet/easyconn/framework/video/SoftSurfaceView$a;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/easyconn/framework/video/SoftSurfaceView$b;

    invoke-direct {p1, p0, v1}, Lnet/easyconn/framework/video/SoftSurfaceView$b;-><init>(Lnet/easyconn/framework/video/SoftSurfaceView;Lnet/easyconn/framework/video/SoftSurfaceView$a;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lnet/easyconn/framework/video/SoftSurfaceView$f;

    invoke-direct {p1, p0, v1}, Lnet/easyconn/framework/video/SoftSurfaceView$f;-><init>(Lnet/easyconn/framework/video/SoftSurfaceView;Lnet/easyconn/framework/video/SoftSurfaceView$a;)V

    :goto_0
    iput-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    :goto_1
    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->a:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ECdebug surfaceDestroyed"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView;->b:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
