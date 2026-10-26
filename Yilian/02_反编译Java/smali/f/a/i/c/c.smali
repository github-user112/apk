.class public Lf/a/i/c/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/c/c$c;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public a:Landroid/media/AudioRecord;

.field public b:I

.field public c:Lf/a/i/c/c$c;

.field public volatile d:Z

.field public e:[B

.field public f:Ljava/io/File;

.field public g:Ljava/io/FileOutputStream;

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lf/a/i/c/c$a;

    invoke-direct {v1}, Lf/a/i/c/c$a;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lf/a/i/c/c;->k:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;Lf/a/i/c/c$c;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/c/c;->h:Z

    new-instance v1, Lf/a/i/c/c$b;

    invoke-direct {v1, p0}, Lf/a/i/c/c$b;-><init>(Lf/a/i/c/c;)V

    iput-object v1, p0, Lf/a/i/c/c;->j:Ljava/lang/Runnable;

    iput-object p2, p0, Lf/a/i/c/c;->c:Lf/a/i/c/c$c;

    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/16 p2, 0x10

    const/16 v5, 0x10

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    const/16 v5, 0xc

    .line 2
    :goto_0
    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v2, 0x3

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/16 v2, 0xe

    if-eq p2, v2, :cond_1

    const/4 p2, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x4

    const/4 v6, 0x4

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    const/4 v6, 0x3

    .line 4
    :goto_1
    iget p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    .line 5
    invoke-static {p2, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p2

    .line 6
    iput p2, p0, Lf/a/i/c/c;->b:I

    new-array p2, p2, [B

    iput-object p2, p0, Lf/a/i/c/c;->e:[B

    const-string p2, "EaseAudioRecord  audioSource = "

    const-string v2, ", audioInfo.sampleRate = "

    invoke-static {p2, v1, v2}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,channel = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance p2, Landroid/media/AudioRecord;

    iget v4, p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    iget v7, p0, Lf/a/i/c/c;->b:I

    const/4 v3, 0x1

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p2, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-static {}, Lnet/easyconn/FrameworkApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string p2, "key_ec_save_record_pcm_state"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 8
    iput-boolean p1, p0, Lf/a/i/c/c;->i:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lf/a/i/c/c;->h:Z

    if-eqz p1, :cond_5

    :cond_4
    new-instance p1, Ljava/io/File;

    const-string p2, "/mnt/sdcard/ecAudioRecord.pcm"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_5
    const-string p1, "mAudioRecord init, state = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "EaseAudioRecord startRecord start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/i/c/c;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf/a/i/c/c;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/mnt/sdcard/ecAudioRecord.pcm"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lf/a/i/c/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/i/c/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    iget-object v0, p0, Lf/a/i/c/c;->g:Ljava/io/FileOutputStream;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lf/a/i/c/c;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lf/a/i/c/c;->g:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lf/a/i/c/c;->d:Z

    iget-object v0, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    :cond_3
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lf/a/i/c/c;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    if-ge v0, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioRecord startRecord, recordingState1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioRecord startRecord, recordingState2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eq v1, v2, :cond_3

    const-wide/16 v1, 0x1f4

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "startRecord Exception msg = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    :cond_4
    sget-object v0, Lf/a/i/c/c;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lf/a/i/c/c;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    const-string v0, "EaseAudioRecord startRecord end"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    const-string v0, "EaseAudioRecord stopRecord : mAudioRecord is null ,return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "EaseAudioRecord stopRecord : getState="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getRecordingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/c/c;->d:Z

    iget-object v0, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "EaseAudioRecord stopRecord1 = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EaseAudioRecord stopRecord2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lf/a/i/c/c;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lf/a/i/c/c;->h:Z

    if-eqz v0, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lf/a/i/c/c;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/i/c/c;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/c/c;->g:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
