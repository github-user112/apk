.class public Lf/a/i/c/a$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:I

.field public f:J

.field public final synthetic g:Lf/a/i/c/a;


# direct methods
.method public constructor <init>(Lf/a/i/c/a;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 2

    iput-object p1, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/a/i/c/a$g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lf/a/i/c/a$g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/i/c/a$g;->f:J

    iput-object p2, p0, Lf/a/i/c/a$g;->c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lf/a/i/c/a;->getPreCacheTime()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lf/a/i/c/a$g;->e:I

    return-void
.end method

.method public constructor <init>(Lf/a/i/c/a;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Z)V
    .locals 2

    iput-object p1, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lf/a/i/c/a$g;->a:Ljava/lang/Object;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lf/a/i/c/a$g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/i/c/a$g;->f:J

    iput-object p2, p0, Lf/a/i/c/a$g;->c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lf/a/i/c/a;->getPreCacheTime()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lf/a/i/c/a$g;->e:I

    return-void
.end method


# virtual methods
.method public final a(ILf/a/i/c/b;)J
    .locals 9

    .line 1
    iget-object v0, p2, Lf/a/i/c/b;->i:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

    iget-object v0, v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/16 v5, 0xe

    if-eq v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    const-wide/16 v5, 0x3e8

    int-to-long v7, p1

    mul-long v7, v7, v5

    .line 2
    iget-object p1, p2, Lf/a/i/c/b;->i:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

    .line 3
    iget p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    int-to-long v5, p2

    div-long/2addr v7, v5

    .line 4
    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0xc

    :cond_5
    :goto_1
    int-to-long p1, v1

    .line 5
    div-long/2addr v7, p1

    int-to-long p1, v3

    div-long/2addr v7, p1

    return-wide v7
.end method

.method public final b()V
    .locals 3

    const-string v0, "AudioPlayer release audioType = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a$g;->c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lf/a/i/c/a$g;->f:J

    .line 2
    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-boolean v1, v0, Lf/a/i/c/a;->isVrStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v0, v0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/a/i/c/a$g;->c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/i/c/b;

    .line 3
    iget-object v1, v0, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 4
    :cond_1
    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    invoke-static {v0}, Lf/a/i/c/a;->access$100(Lf/a/i/c/a;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    invoke-static {v0}, Lf/a/i/c/a;->access$100(Lf/a/i/c/a;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_2
    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(I)V
    .locals 4

    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v1, p0, Lf/a/i/c/a$g;->c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v1}, Lf/a/i/c/a;->isPreCacheEnabled(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p0, Lf/a/i/c/a$g;->f:J

    iget-object v2, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v2, v2, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    iget-object v3, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/a/i/c/b;

    invoke-virtual {p0, p1, v2}, Lf/a/i/c/a$g;->a(ILf/a/i/c/b;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lf/a/i/c/a$g;->f:J

    return-void
.end method

.method public run()V
    .locals 12

    const-string v0, "AudioPlayer start ecAudioString = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a$g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    invoke-static {v0}, Lf/a/i/c/a;->access$100(Lf/a/i/c/a;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lf/a/i/c/a$g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v2, v2, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v2, v2, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    iget-object v3, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v3, p0, Lf/a/i/c/a$g;->c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v2, v3}, Lf/a/i/c/a;->isPreCacheEnabled(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caching.....ecAudioString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", maxWaitRound = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf/a/i/c/a$g;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_1
    iget-wide v7, p0, Lf/a/i/c/a$g;->f:J

    iget-object v9, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    invoke-virtual {v9}, Lf/a/i/c/a;->getPreCacheTime()I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_2

    iget v7, p0, Lf/a/i/c/a$g;->e:I

    if-ge v4, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caching...wait, ecAudioString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", cacheTimeSpanTotal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lf/a/i/c/a$g;->f:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-wide v7, p0, Lf/a/i/c/a$g;->f:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    iget-wide v5, p0, Lf/a/i/c/a$g;->f:J

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    iget-wide v5, p0, Lf/a/i/c/a$g;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v7, 0x64

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_4

    iget-object v3, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v3, v3, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    iget-object v4, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v3, v3, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    iget-object v4, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v3, v3, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    iget-object v4, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/i/c/b;

    array-length v4, v2

    invoke-virtual {v3, v2, v1, v4}, Lf/a/i/c/b;->e([BII)V

    :cond_3
    iget-wide v3, p0, Lf/a/i/c/a$g;->f:J

    array-length v2, v2

    iget-object v5, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v5, v5, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    iget-object v6, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/a/i/c/b;

    invoke-virtual {p0, v2, v5}, Lf/a/i/c/a$g;->a(ILf/a/i/c/b;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lf/a/i/c/a$g;->f:J

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v2, v2, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v3, p0, Lf/a/i/c/a$g;->c:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v2, v3}, Lf/a/i/c/a;->sendAudioPlayEnd(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    invoke-virtual {p0}, Lf/a/i/c/a$g;->b()V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lf/a/i/c/a$g;->g:Lf/a/i/c/a;

    iget-object v2, v2, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lf/a/i/c/a$g;->b:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v2, p0, Lf/a/i/c/a$g;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Lf/a/i/c/a$g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lf/a/i/c/a$g;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    const-string v0, "AudioPlayer end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/i/c/a$g;->b()V

    return-void

    :goto_4
    const-string v1, "AudioPlayer end"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/i/c/a$g;->b()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
