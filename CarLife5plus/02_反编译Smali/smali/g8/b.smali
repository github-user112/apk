.class public final Lg8/b;
.super Landroid/opengl/GLSurfaceView;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public a:Landroid/graphics/SurfaceTexture;

.field public b:I

.field public c:Le7/l;


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lg8/b;->a:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/16 p1, 0x4000

    .line 9
    .line 10
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lg8/b;->c:Le7/l;

    .line 14
    .line 15
    if-eqz p1, :cond_5

    .line 16
    .line 17
    iget v0, p0, Lg8/b;->b:I

    .line 18
    .line 19
    iget v1, p1, Le7/l;->b:I

    .line 20
    .line 21
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 22
    .line 23
    .line 24
    const-string v2, "aPosition"

    .line 25
    .line 26
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const-string v2, "aTexCoord"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v4, "sTexture"

    .line 37
    .line 38
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ltz v3, :cond_1

    .line 43
    .line 44
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p1, Le7/l;->c:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v8, v4

    .line 50
    check-cast v8, Ljava/nio/FloatBuffer;

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    const/16 v5, 0x1406

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    if-ltz v2, :cond_2

    .line 61
    .line 62
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Le7/l;->d:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v9, p1

    .line 68
    check-cast v9, Ljava/nio/FloatBuffer;

    .line 69
    .line 70
    const/4 v5, 0x2

    .line 71
    const/16 v6, 0x1406

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    move v4, v2

    .line 76
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v4, v2

    .line 81
    :goto_0
    const p1, 0x84c0

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 85
    .line 86
    .line 87
    const p1, 0x8d65

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x5

    .line 98
    const/4 v1, 0x4

    .line 99
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 100
    .line 101
    .line 102
    if-ltz v3, :cond_3

    .line 103
    .line 104
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    if-ltz v4, :cond_4

    .line 108
    .line 109
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void

    .line 113
    :cond_5
    const-string p1, "shader"

    .line 114
    .line 115
    invoke-static {p1}, Lg9/l;->j(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    throw p1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf8/c;->a:Lf8/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lf8/b;->h()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p2, p1, [I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 6
    .line 7
    .line 8
    aget p2, p2, v0

    .line 9
    .line 10
    iput p2, p0, Lg8/b;->b:I

    .line 11
    .line 12
    const v0, 0x8d65

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    .line 17
    .line 18
    const/16 p2, 0x2801

    .line 19
    .line 20
    const v1, 0x46180400    # 9729.0f

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 24
    .line 25
    .line 26
    const/16 p2, 0x2800

    .line 27
    .line 28
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 29
    .line 30
    .line 31
    const/16 p2, 0x2802

    .line 32
    .line 33
    const v1, 0x812f

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x2803

    .line 40
    .line 41
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Landroid/graphics/SurfaceTexture;

    .line 45
    .line 46
    iget v0, p0, Lg8/b;->b:I

    .line 47
    .line 48
    invoke-direct {p2, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lg8/a;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lg8/a;-><init>(Lg8/b;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lg8/b;->a:Landroid/graphics/SurfaceTexture;

    .line 60
    .line 61
    sget-object p2, Lf8/c;->a:Lf8/b;

    .line 62
    .line 63
    new-instance p2, Landroid/view/Surface;

    .line 64
    .line 65
    iget-object v0, p0, Lg8/b;->a:Landroid/graphics/SurfaceTexture;

    .line 66
    .line 67
    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lf8/c;->a:Lf8/b;

    .line 71
    .line 72
    invoke-virtual {v0, p2}, Lf8/b;->a(Landroid/view/Surface;)V

    .line 73
    .line 74
    .line 75
    new-instance p2, Le7/l;

    .line 76
    .line 77
    invoke-direct {p2, p1}, Le7/l;-><init>(I)V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Lg8/b;->c:Le7/l;

    .line 81
    .line 82
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lf8/c;->a:Lf8/b;

    .line 7
    .line 8
    iget-object v0, v0, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Lf8/c;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method
