.class public Lf/a/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/e/a$a;,
        Lf/a/e/a$b;
    }
.end annotation


# static fields
.field public static d:Z = true


# instance fields
.field public a:Landroid/media/AudioTrack;

.field public b:Lf/a/e/a$b;

.field public c:Lnet/easyconn/airplay/MediaRenderService$a;


# direct methods
.method public constructor <init>(Lnet/easyconn/airplay/MediaRenderService$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/e/a;->c:Lnet/easyconn/airplay/MediaRenderService$a;

    return-void
.end method


# virtual methods
.method public audio_destroy()V
    .locals 3

    iget-object v0, p0, Lf/a/e/a;->b:Lf/a/e/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v0, Lf/a/e/a$b;->d:Z

    .line 2
    iput-object v1, p0, Lf/a/e/a;->b:Lf/a/e/a$b;

    :cond_0
    iget-object v0, p0, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    :cond_1
    return-void
.end method

.method public audio_init(IIII)V
    .locals 7

    const-string p1, "audio_init"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    if-nez p1, :cond_1

    const-string p1, "audio_init track is null"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/e/a;->b:Lf/a/e/a$b;

    if-eqz p1, :cond_0

    const-string p1, "mAudioPlayer call stop"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/e/a;->b:Lf/a/e/a$b;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lf/a/e/a$b;->d:Z

    :cond_0
    const/16 p1, 0xc

    const/4 p2, 0x2

    .line 2
    invoke-static {p3, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "minBufferSize\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance p1, Lf/a/e/a$b;

    invoke-direct {p1, p0}, Lf/a/e/a$b;-><init>(Lf/a/e/a;)V

    iput-object p1, p0, Lf/a/e/a;->b:Lf/a/e/a$b;

    new-instance p1, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object v0, p1

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lf/a/e/a;->b:Lf/a/e/a$b;

    const-string p3, "Audio player"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const-string p1, "audio_init track is not null"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public audio_process([BII)V
    .locals 5

    iget-object p2, p0, Lf/a/e/a;->b:Lf/a/e/a$b;

    if-eqz p2, :cond_1

    sget-boolean p3, Lf/a/e/a;->d:Z

    if-eqz p3, :cond_1

    .line 1
    iget-boolean p3, p2, Lf/a/e/a$b;->e:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    iput v1, p2, Lf/a/e/a$b;->c:I

    iput v1, p2, Lf/a/e/a$b;->b:I

    iput-boolean v0, p2, Lf/a/e/a$b;->e:Z

    :cond_0
    iget-object p3, p2, Lf/a/e/a$b;->a:[Lf/a/e/a$a;

    monitor-enter p3

    :try_start_0
    iget-object v2, p2, Lf/a/e/a$b;->a:[Lf/a/e/a$a;

    iget v3, p2, Lf/a/e/a$b;->c:I

    rem-int/lit16 v3, v3, 0x400

    aget-object v2, v2, v3

    iget-object v3, v2, Lf/a/e/a$a;->a:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    iput p1, v2, Lf/a/e/a$a;->b:I

    iput-boolean v0, v2, Lf/a/e/a$a;->c:Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p2, Lf/a/e/a$b;->c:I

    add-int/2addr p1, v0

    iput p1, p2, Lf/a/e/a$b;->c:I

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onActionInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionInvoke, cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/e/a;->c:Lnet/easyconn/airplay/MediaRenderService$a;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.carbit.airplay_ctr"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "value"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v0, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    invoke-virtual {p1, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public onActionInvoke(ILjava/lang/String;[BLjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionInvoke, cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/e/a;->c:Lnet/easyconn/airplay/MediaRenderService$a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.carbit.airplay_ctr"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "value"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "title"

    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v0, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    invoke-virtual {p1, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
