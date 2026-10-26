.class public Lnet/easyconn/framework/video/SoftSurfaceView$b;
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
    name = "b"
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

.field public e:Landroid/graphics/Point;

.field public final f:[B

.field public g:Z

.field public h:Z

.field public final synthetic i:Lnet/easyconn/framework/video/SoftSurfaceView;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/video/SoftSurfaceView;Lnet/easyconn/framework/video/SoftSurfaceView$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->a:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->d:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->f:[B

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->g:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final a([B)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_6

    array-length v2, p1

    add-int/lit8 v3, v0, 0x4

    if-gt v2, v3, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    goto :goto_3

    :cond_1
    aget-byte v2, p1, v0

    if-nez v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_5

    add-int/lit8 v2, v0, 0x2

    aget-byte v4, p1, v2

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    :cond_3
    aget-byte v2, p1, v2

    if-nez v2, :cond_5

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v6, :cond_5

    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    const-string p1, "is IFrame:"

    invoke-static {p1, v1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    return v1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->b:Ljava/util/Queue;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    const-wide/16 v0, 0xa

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iget-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->b:Ljava/util/Queue;

    if-nez p1, :cond_2

    return-void

    .line 1
    :cond_2
    monitor-enter p0

    const/4 p1, 0x1

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->b:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_5

    :cond_3
    :goto_1
    monitor-exit p0

    :cond_4
    const/4 p1, 0x0

    goto/16 :goto_8

    :cond_5
    const/4 v5, 0x0

    :try_start_2
    iget-object v6, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->b:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/a/i/n/c$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-nez v5, :cond_6

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :try_start_5
    invoke-static {}, Lnet/easyconn/GL2JNILib;->render()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    if-ne v5, p1, :cond_4

    goto/16 :goto_8

    :cond_6
    :try_start_6
    invoke-virtual {v5}, Lf/a/i/n/c$b;->a()[B

    move-result-object v6

    .line 2
    iget v7, v5, Lf/a/i/n/c$b;->c:I

    if-nez v7, :cond_7

    .line 3
    :goto_3
    invoke-virtual {v5}, Lf/a/i/n/c$b;->b()V

    goto :goto_1

    :cond_7
    invoke-static {v6, v4, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget v8, v5, Lf/a/i/n/c$b;->a:I

    if-ne v8, p1, :cond_b

    const/4 v7, 0x6

    .line 5
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    new-array v10, v9, [B

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/2addr v9, v7

    const/16 v6, 0x8

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v11, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->f:[B

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-object v12, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->f:[B

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    iget-boolean v12, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->d:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    invoke-static {v10, v11, v12}, Lnet/easyconn/GL2JNILib;->decord([BII)I

    iget-object v11, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-boolean v11, v11, Lnet/easyconn/framework/video/SoftSurfaceView;->h:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-object v11, v11, Lnet/easyconn/framework/video/SoftSurfaceView;->i:Ljava/io/BufferedOutputStream;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-object v11, v11, Lnet/easyconn/framework/video/SoftSurfaceView;->i:Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v11, v10, v4, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    :cond_9
    invoke-virtual {v5}, Lf/a/i/n/c$b;->b()V

    new-instance v5, Lf/a/i/n/d;

    invoke-direct {v5}, Lf/a/i/n/d;-><init>()V

    add-int/lit8 v7, v7, -0x1

    new-array v9, v7, [B

    iput-object v9, v5, Lf/a/i/n/d;->a:[B

    invoke-static {v8, p1, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, v5, Lf/a/i/n/d;->c:I

    invoke-virtual {v5, v5}, Lf/a/i/n/d;->h(Lf/a/i/n/d;)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->e:Landroid/graphics/Point;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Dump Size : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->e:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->e:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->e:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->e:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_a

    iget-object v5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 6
    iput-boolean p1, v5, Lnet/easyconn/framework/video/SoftSurfaceView;->g:Z

    goto/16 :goto_1

    .line 7
    :cond_a
    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 8
    iput-boolean v4, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->g:Z

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v9, v7, -0x4

    if-ge v8, v9, :cond_d

    .line 9
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v9, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->f:[B

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-gtz v8, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    goto :goto_5

    :cond_d
    :goto_6
    invoke-virtual {v5}, Lf/a/i/n/c$b;->a()[B

    move-result-object v6

    iget-boolean v8, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->h:Z

    if-nez v8, :cond_e

    invoke-virtual {p0, v6}, Lnet/easyconn/framework/video/SoftSurfaceView$b;->a([B)Z

    move-result v8

    iput-boolean v8, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->h:Z

    if-nez v8, :cond_e

    goto/16 :goto_3

    :cond_e
    iget-boolean v8, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->d:Z

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    :goto_7
    invoke-static {v6, v7, v8}, Lnet/easyconn/GL2JNILib;->decord([BII)I

    move-result v8

    iget-object v9, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-boolean v9, v9, Lnet/easyconn/framework/video/SoftSurfaceView;->h:Z

    if-eqz v9, :cond_10

    iget-object v9, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-object v9, v9, Lnet/easyconn/framework/video/SoftSurfaceView;->i:Ljava/io/BufferedOutputStream;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-object v9, v9, Lnet/easyconn/framework/video/SoftSurfaceView;->i:Ljava/io/BufferedOutputStream;

    invoke-virtual {v9, v6, v4, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    :cond_10
    invoke-virtual {v5}, Lf/a/i/n/c$b;->b()V

    if-ne v8, p1, :cond_3

    iget-object v5, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-static {v5}, Lnet/easyconn/framework/video/SoftSurfaceView;->a(Lnet/easyconn/framework/video/SoftSurfaceView;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception p1

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :goto_8
    if-eqz p1, :cond_11

    goto :goto_9

    .line 10
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x64

    cmp-long p1, v4, v6

    if-lez p1, :cond_12

    goto :goto_9

    :cond_12
    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    nop

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit p0

    throw p1

    :cond_13
    :goto_9
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const-string p1, "ECdebug onSurfaceChanged "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->b:Landroid/view/SurfaceHolder$Callback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    iget-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->a:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->a:Z

    iput-boolean v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

    const-string p1, "onSurfaceChanged m_stop="

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->c:Z

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

    const-string p1, "ECdebug surfaceCreated "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$b;->i:Lnet/easyconn/framework/video/SoftSurfaceView;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/video/SoftSurfaceView;->b:Landroid/view/SurfaceHolder$Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
