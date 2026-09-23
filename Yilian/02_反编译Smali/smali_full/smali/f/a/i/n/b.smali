.class public Lf/a/i/n/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/o/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/n/b$b;,
        Lf/a/i/n/b$a;
    }
.end annotation


# static fields
.field public static I:Z = false


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:F

.field public G:F

.field public H:F

.field public volatile a:Landroid/media/MediaCodec;

.field public b:Landroid/media/MediaCodec$BufferInfo;

.field public volatile c:Z

.field public d:Lf/a/i/n/b$b;

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;

.field public g:I

.field public h:I

.field public i:Z

.field public volatile j:Z

.field public k:Z

.field public l:Lf/a/i/n/b$a;

.field public volatile m:Z

.field public n:Z

.field public o:Ljava/io/BufferedOutputStream;

.field public p:Ljava/lang/String;

.field public q:Ljava/io/FileOutputStream;

.field public r:Z

.field public s:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile t:J

.field public volatile u:J

.field public volatile v:J

.field public volatile w:J

.field public volatile x:J

.field public volatile y:J

.field public z:I


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/n/b;->c:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lf/a/i/n/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v0, p0, Lf/a/i/n/b;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/a/i/n/b;->j:Z

    iput-boolean v0, p0, Lf/a/i/n/b;->k:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lf/a/i/n/b;->l:Lf/a/i/n/b$a;

    iput-boolean v1, p0, Lf/a/i/n/b;->m:Z

    iput-boolean v1, p0, Lf/a/i/n/b;->n:Z

    iput-object v2, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    const-string v1, "h264_debug.h264"

    iput-object v1, p0, Lf/a/i/n/b;->p:Ljava/lang/String;

    iput-object v2, p0, Lf/a/i/n/b;->q:Ljava/io/FileOutputStream;

    iput-boolean v0, p0, Lf/a/i/n/b;->r:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lf/a/i/n/b;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lf/a/i/n/b;->t:J

    iput-wide v1, p0, Lf/a/i/n/b;->u:J

    iput-wide v1, p0, Lf/a/i/n/b;->v:J

    iput-wide v1, p0, Lf/a/i/n/b;->w:J

    iput-wide v1, p0, Lf/a/i/n/b;->x:J

    iput-wide v1, p0, Lf/a/i/n/b;->y:J

    iput v0, p0, Lf/a/i/n/b;->z:I

    iput-wide v1, p0, Lf/a/i/n/b;->A:J

    iput-wide v1, p0, Lf/a/i/n/b;->B:J

    iput-wide v1, p0, Lf/a/i/n/b;->C:J

    iput-wide v1, p0, Lf/a/i/n/b;->D:J

    iput-wide v1, p0, Lf/a/i/n/b;->E:J

    const/4 v1, 0x0

    iput v1, p0, Lf/a/i/n/b;->F:F

    iput v1, p0, Lf/a/i/n/b;->G:F

    iput v1, p0, Lf/a/i/n/b;->H:F

    iput-boolean p1, p0, Lf/a/i/n/b;->i:Z

    invoke-static {}, Lnet/easyconn/FrameworkApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_print_decode_logcat_state"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2
    sput-boolean p1, Lf/a/i/n/b;->I:Z

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/Surface;)Z
    .locals 8

    const-string v0, "video/avc"

    const-string v1, "EcVideoPlayer open, end"

    iget-boolean v2, p0, Lf/a/i/n/b;->r:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, " DEBUG_H264 open File Error: "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v4}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ld/s/y;->I()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lf/a/i/n/b;->p:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lf/a/i/n/b;->q:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lf/a/i/n/b;->q:Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, " DEBUG_H264 File Error: "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    :try_start_2
    const-string v2, "EcVideoPlayer open, begin"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EcVideoPlayer open, mDecodeStarted is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf/a/i/n/b;->c:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lf/a/i/n/b;->c:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-object p1, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v4

    :cond_3
    :try_start_3
    iput p1, p0, Lf/a/i/n/b;->g:I

    iput p2, p0, Lf/a/i/n/b;->h:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "EcVideoPlayer open, mMirrorWidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lf/a/i/n/b;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mMirrorHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lf/a/i/n/b;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget p1, p0, Lf/a/i/n/b;->g:I

    iget p2, p0, Lf/a/i/n/b;->h:I

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 1
    sget-object p2, Lf/a/i/m/d;->c:Ljava/util/Properties;

    const/4 v2, 0x0

    if-nez p2, :cond_4

    move-object p2, v2

    goto :goto_2

    :cond_4
    const-string v5, "video_codec_name"

    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    goto :goto_3

    :cond_5
    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    :goto_3
    iput-object p2, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    .line 3
    sget-object p2, Lf/a/i/m/d;->c:Ljava/util/Properties;

    if-nez p2, :cond_6

    move-object p2, v2

    goto :goto_4

    :cond_6
    const-string v0, "codec_color_format"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "0x"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string p2, "color-format"

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    const-string p2, "EcVideoPlayer open, set MediaFormat custom config"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string p2, "MediaFormat custom parent config"

    .line 5
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 6
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p2, p0, Lf/a/i/n/b;->b:Landroid/media/MediaCodec$BufferInfo;

    iget-object p2, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, p3, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const-string p1, "EcVideoPlayer open, set MediaFormat custom config end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v4, p0, Lf/a/i/n/b;->j:Z

    iput-boolean v4, p0, Lf/a/i/n/b;->n:Z

    iput-boolean v4, p0, Lf/a/i/n/b;->c:Z

    .line 7
    sget-boolean p1, Lf/a/i/m/g;->b:Z

    if-eqz p1, :cond_9

    const-string p1, "**=>MediaCodec multi thread."

    .line 8
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lf/a/i/n/b$b;

    invoke-direct {p1, p0}, Lf/a/i/n/b$b;-><init>(Lf/a/i/n/b;)V

    .line 10
    iput-object p1, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;

    const-string p2, "render_thread"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_5

    :cond_9
    const-string p1, "**=>MediaCodec single thread."

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    iget-object p1, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "open EcVideoPlayer exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v3

    :goto_6
    iget-object p2, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public b([BII)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    const-string v10, "ecvideo play end"

    iget-boolean v0, v1, Lf/a/i/n/b;->r:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v2, v11, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    const-string v0, " DEBUG_H264 write Error: "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v0}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :try_start_1
    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_1

    const-string v0, "ecvideo play begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v1, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, v1, Lf/a/i/n/b;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-boolean v0, v1, Lf/a/i/n/b;->j:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lf/a/i/n/b;->i:Z

    if-eqz v0, :cond_6

    new-instance v0, Lf/a/i/n/d;

    invoke-direct {v0}, Lf/a/i/n/d;-><init>()V

    add-int/lit8 v3, v6, -0x1

    new-array v3, v3, [B

    iput-object v3, v0, Lf/a/i/n/d;->a:[B

    add-int/lit8 v4, v6, -0x5

    const/4 v5, 0x5

    invoke-static {v2, v5, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x8

    iput v3, v0, Lf/a/i/n/d;->c:I

    invoke-virtual {v0, v0}, Lf/a/i/n/d;->h(Lf/a/i/n/d;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Dump Size : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mMirrorWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lf/a/i/n/b;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mMirrorHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lf/a/i/n/b;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Lf/a/i/n/b;->g:I

    if-ne v3, v4, :cond_3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v1, Lf/a/i/n/b;->h:I

    if-eq v0, v3, :cond_6

    :cond_3
    const-string v0, "error: parse width & height is not match the configure width & height from phone"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v1, Lf/a/i/n/b;->l:Lf/a/i/n/b$a;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lf/a/i/n/b;->l:Lf/a/i/n/b$a;

    invoke-interface {v0}, Lf/a/i/n/b$a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    iget-object v0, v1, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_5

    invoke-static {v10}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :try_start_2
    iget-wide v3, v1, Lf/a/i/n/b;->v:J

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v12, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_7

    const-string v0, "decodeIndex is max value, reset it "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-wide v12, v1, Lf/a/i/n/b;->v:J

    :cond_7
    iget-wide v3, v1, Lf/a/i/n/b;->v:J

    cmp-long v0, v3, v12

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lf/a/i/n/b;->y:J

    :cond_8
    iget-wide v3, v1, Lf/a/i/n/b;->v:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v1, Lf/a/i/n/b;->v:J

    iget-boolean v0, v1, Lf/a/i/n/b;->k:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lf/a/i/n/b;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-wide v3, v1, Lf/a/i/n/b;->u:J

    int-to-long v7, v6

    add-long/2addr v3, v7

    iput-wide v3, v1, Lf/a/i/n/b;->u:J

    .line 1
    :cond_9
    sget-boolean v0, Lf/a/i/m/g;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "EC_DECODE"

    if-eqz v0, :cond_13

    .line 2
    :try_start_3
    iget-boolean v0, v1, Lf/a/i/n/b;->n:Z

    if-eqz v0, :cond_a

    const-string v0, "dequeueInputBuffer start "

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_b

    const-string v0, "innnnn dequeueInputBuffer inputBufferId begin"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v0, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v7, v15, v13

    const-wide/16 v17, 0x28

    cmp-long v0, v7, v17

    if-gtz v0, :cond_c

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "innnnn dequeueInputBuffer inputBufferId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-ltz v4, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_e

    iget-object v0, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_e
    iget-object v0, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, v4

    :goto_1
    move/from16 v5, p2

    invoke-virtual {v0, v2, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "innnnn dequeueInputBuffer start decodeIndex = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lf/a/i/n/b;->v:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-boolean v0, v1, Lf/a/i/n/b;->j:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lf/a/i/n/b;->i:Z

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lf/a/i/n/b;->d()I

    move-result v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EC_DECODE getQueueInputBufferFlagOfFirstFrame flag = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v11, v1, Lf/a/i/n/b;->j:Z

    goto :goto_2

    .line 3
    :cond_10
    iget-object v3, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v13

    cmp-long v0, v5, v17

    if-gtz v0, :cond_11

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_12

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "innnnn dequeueInputBuffer end decodeIndex = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lf/a/i/n/b;->v:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", cost time = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " inputTime = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v15

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-boolean v0, v1, Lf/a/i/n/b;->n:Z

    if-eqz v0, :cond_15

    iput-boolean v11, v1, Lf/a/i/n/b;->n:Z

    invoke-virtual/range {p0 .. p1}, Lf/a/i/n/b;->f([B)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeueInputBuffer data array firstFrameIsIDR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_13
    move/from16 v5, p2

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_14

    const-string v0, "innnnn dequeueInputBuffer start playSingleThread"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual/range {p0 .. p3}, Lf/a/i/n/b;->g([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_15
    :goto_3
    iget-object v0, v1, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_19

    goto :goto_5

    :cond_16
    :goto_4
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoder is null, mDecodeStarted is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lf/a/i/n/b;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; mDecoder is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_17

    invoke-static {v10}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EcVideoPlayer play exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, v1, Lf/a/i/n/b;->l:Lf/a/i/n/b$a;

    if-eqz v0, :cond_18

    iget-object v0, v1, Lf/a/i/n/b;->l:Lf/a/i/n/b$a;

    invoke-interface {v0}, Lf/a/i/n/b$a;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_18
    iget-object v0, v1, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_19

    :goto_5
    invoke-static {v10}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_19
    return-void

    :goto_6
    iget-object v2, v1, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v2, Lf/a/i/n/b;->I:Z

    if-eqz v2, :cond_1a

    invoke-static {v10}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1a
    throw v0
.end method

.method public c([BIIIII)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 7

    const-string v0, "close EcVideoPlayer end"

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lf/a/i/n/b;->v:J

    iput-wide v1, p0, Lf/a/i/n/b;->w:J

    iput-wide v1, p0, Lf/a/i/n/b;->x:J

    iput-wide v1, p0, Lf/a/i/n/b;->t:J

    iget-object v1, p0, Lf/a/i/n/b;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-boolean v1, p0, Lf/a/i/n/b;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iput-object v3, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " DEBUG_H264 close File Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v3, p0, Lf/a/i/n/b;->o:Ljava/io/BufferedOutputStream;

    throw v0

    :cond_1
    :goto_2
    const/4 v1, 0x1

    :try_start_2
    const-string v4, "close EcVideoPlayer begin"

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v4, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v4, "close EcVideoPlayer start"

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lf/a/i/n/b;->c:Z

    iget-object v4, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    :try_start_3
    iget-object v4, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;

    invoke-virtual {v4}, Lf/a/i/n/b$b;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EcVideoPlayer join exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_3
    :try_start_6
    iput-object v3, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close EcVideoPlayer mRenderThread close error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :goto_4
    :try_start_8
    iput-object v3, p0, Lf/a/i/n/b;->d:Lf/a/i/n/b$b;

    throw v4

    :cond_3
    :goto_5
    const-string v4, "close EcVideoPlayer mDecoder start release"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    iget-object v4, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    iput-object v3, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    :cond_4
    iput-boolean v1, p0, Lf/a/i/n/b;->j:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v3

    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close EcVideoPlayer error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_6
    iput-boolean v1, p0, Lf/a/i/n/b;->n:Z

    iget-object v1, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :goto_7
    iput-boolean v1, p0, Lf/a/i/n/b;->n:Z

    iget-object v1, p0, Lf/a/i/n/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    throw v2

    :goto_9
    goto :goto_8
.end method

.method public d()I
    .locals 3

    .line 1
    sget-object v0, Lf/a/i/m/d;->c:Ljava/util/Properties;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "flagIosInputBuffer"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getFlagIosInputBuffer value = "

    invoke-static {v2, v0}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getFlagIosInputBuffer Exception"

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public e(J)V
    .locals 7

    iget v0, p0, Lf/a/i/n/b;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/a/i/n/b;->z:I

    iget-wide v0, p0, Lf/a/i/n/b;->D:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf/a/i/n/b;->D:J

    iget-wide p1, p0, Lf/a/i/n/b;->A:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lf/a/i/n/b;->A:J

    :cond_0
    iget p1, p0, Lf/a/i/n/b;->z:I

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lf/a/i/n/b;->A:J

    sub-long v4, p1, v2

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    const-wide/16 v4, 0x7530

    sub-long v2, p1, v2

    div-long/2addr v4, v2

    iput-wide v4, p0, Lf/a/i/n/b;->B:J

    iget-wide v2, p0, Lf/a/i/n/b;->D:J

    const-wide/16 v4, 0x1e

    div-long/2addr v2, v4

    iput-wide v2, p0, Lf/a/i/n/b;->C:J

    iget-wide v2, p0, Lf/a/i/n/b;->E:J

    long-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v2, v3

    iput v2, p0, Lf/a/i/n/b;->H:F

    iget-wide v4, p0, Lf/a/i/n/b;->t:J

    long-to-float v2, v4

    div-float/2addr v2, v3

    iput v2, p0, Lf/a/i/n/b;->F:F

    iget-wide v2, p0, Lf/a/i/n/b;->u:J

    long-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    iget-wide v3, p0, Lf/a/i/n/b;->A:J

    sub-long v3, p1, v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lf/a/i/n/b;->G:F

    iput-wide p1, p0, Lf/a/i/n/b;->A:J

    const/4 p1, 0x0

    iput p1, p0, Lf/a/i/n/b;->z:I

    iput-wide v0, p0, Lf/a/i/n/b;->D:J

    iput-wide v0, p0, Lf/a/i/n/b;->E:J

    iput-wide v0, p0, Lf/a/i/n/b;->t:J

    iput-wide v0, p0, Lf/a/i/n/b;->u:J

    :cond_1
    return-void
.end method

.method public f([B)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_6

    array-length v3, p1

    add-int/lit8 v4, v1, 0x4

    if-gt v3, v4, :cond_0

    goto :goto_3

    :cond_0
    const/16 v3, 0x64

    if-le v1, v3, :cond_1

    goto :goto_3

    :cond_1
    aget-byte v3, p1, v1

    if-nez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    if-nez v3, :cond_5

    add-int/lit8 v3, v1, 0x2

    aget-byte v5, p1, v3

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    :cond_3
    aget-byte v3, p1, v3

    if-nez v3, :cond_5

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    if-ne v3, v7, :cond_5

    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x1f

    if-ne v2, v6, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v2
.end method

.method public g([BII)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, 0x0

    if-ltz v4, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-object v1, v1, v4

    :goto_0
    invoke-virtual {v1, p1, v0, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-boolean p1, p0, Lf/a/i/n/b;->j:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lf/a/i/n/b;->i:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lf/a/i/n/b;->d()I

    move-result v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EC_DECODE getQueueInputBufferFlagOfFirstFrame flag = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v0, p0, Lf/a/i/n/b;->j:Z

    goto :goto_1

    .line 1
    :cond_1
    iget-object v3, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dequeueInputBuffer"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    iget-object p2, p0, Lf/a/i/n/b;->b:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object p2, p0, Lf/a/i/n/b;->a:Landroid/media/MediaCodec;

    iget-boolean p3, p0, Lf/a/i/n/b;->m:Z

    invoke-virtual {p2, p1, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "releaseOutputBuffer "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " fps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1
    iget-wide v2, p0, Lf/a/i/n/b;->B:J

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " avgCacheSizePer30 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lf/a/i/n/b;->H:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " avgDecodeDelayPer30 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "%.0fms"

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lf/a/i/n/b;->F:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\navgBitratePer30 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "%,dKb"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lf/a/i/n/b;->G:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  avgDecodeTimePer30 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-wide v2, p0, Lf/a/i/n/b;->C:J

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
