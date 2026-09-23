.class public abstract Lf/a/i/c/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Landroid/media/AudioTrack;

.field public f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/media/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

.field public j:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/io/FileOutputStream;

.field public final l:Ljava/lang/String;

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/i/c/b;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/c/b;->c:Z

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/b;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/b;->g:Ljava/util/Hashtable;

    const/4 v0, 0x3

    iput v0, p0, Lf/a/i/c/b;->h:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/b;->j:Ljava/util/Hashtable;

    const-string v0, "AEcAudioTrack."

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/a/i/c/b;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Landroid/media/AudioAttributes;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lf/a/i/c/b;->g:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_1

    :cond_1
    const/16 v3, 0xc

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lf/a/i/c/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", stand getAudioAttributes "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " setUsage = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " setContentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/c/b;->g:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lf/a/i/c/b;->g:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioAttributes;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :cond_1
    :goto_0
    return v0
.end method

.method public c(Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_0
    return v0
.end method

.method public d(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;I)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lf/a/i/c/b;->a:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v5, "key_ec_save_pcm_state"

    const/4 v10, 0x0

    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    iput-boolean v0, v1, Lf/a/i/c/b;->d:Z

    iget-boolean v5, v1, Lf/a/i/c/b;->c:Z

    const/4 v11, 0x1

    if-nez v5, :cond_0

    if-eqz v0, :cond_3

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/sdcard/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".pcm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_1
    iget-object v6, v1, Lf/a/i/c/b;->j:Ljava/util/Hashtable;

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iget-object v5, v1, Lf/a/i/c/b;->j:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lf/a/i/c/b;->k:Ljava/io/FileOutputStream;

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lf/a/i/c/b;->j:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    iput-object v0, v1, Lf/a/i/c/b;->k:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lf/a/i/c/b;->l:Ljava/lang/String;

    const-string v6, ", initAudioTrack : audioInfo = %s, streamType = %d , audioType = %s"

    invoke-static {v0, v5, v6}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v4, v1, Lf/a/i/c/b;->h:I

    iput-object v3, v1, Lf/a/i/c/b;->i:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v5, v1, Lf/a/i/c/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, v1, Lf/a/i/c/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    iput-object v0, v1, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    goto/16 :goto_2

    :cond_4
    move-object v5, v1

    check-cast v5, Lf/a/i/d/a;

    const-string v6, "ECAudioInfo = (sampleRate:"

    .line 9
    invoke-static {v6}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",channel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_5

    .line 10
    iget-boolean v6, v5, Lf/a/i/d/a;->n:Z

    if-eqz v6, :cond_5

    const-string v4, "Build.VERSION.SDK_INT >= Build.VERSION_CODES.O"

    .line 11
    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    iget-object v6, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v5, v6}, Lf/a/i/c/b;->b(Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;)I

    move-result v6

    iget-object v7, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v5, v7}, Lf/a/i/c/b;->c(Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;)I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v4

    new-instance v6, Landroid/media/AudioTrack$Builder;

    invoke-direct {v6}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v5, v2}, Lf/a/i/c/b;->a(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v6

    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget-object v8, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v5, v8}, Lf/a/i/c/b;->c(Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    iget-object v8, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v5, v8}, Lf/a/i/c/b;->b(Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    iget v3, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    invoke-virtual {v5, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget v6, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    iget-object v7, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v5, v7}, Lf/a/i/c/b;->b(Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;)I

    move-result v7

    iget-object v8, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v5, v8}, Lf/a/i/c/b;->c(Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new AudioTrack-streamType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v13, Landroid/media/AudioTrack;

    iget v6, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    iget-object v7, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v5, v7}, Lf/a/i/c/b;->b(Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;)I

    move-result v7

    iget-object v3, v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v5, v3}, Lf/a/i/c/b;->c(Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;)I

    move-result v9

    const/4 v14, 0x1

    move-object v3, v13

    move/from16 v4, p4

    move v5, v6

    move v6, v7

    move v7, v9

    move v9, v14

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 12
    :goto_1
    iput-object v3, v1, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    iget-object v4, v1, Lf/a/i/c/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iput-boolean v11, v1, Lf/a/i/c/b;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/c/b;->l:Ljava/lang/String;

    const-string v4, ", initAudioTrack play start , audioType = %s"

    invoke-static {v0, v3, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-static {v0, v3}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v12, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/c/b;->l:Ljava/lang/String;

    const-string v4, ", initAudioTrack play"

    invoke-static {v0, v3, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/c/b;->l:Ljava/lang/String;

    const-string v4, ", initAudioTrack play end , audioType = %s"

    invoke-static {v0, v3, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-static {v0, v3}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e([BII)V
    .locals 8

    iget-object v0, p0, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 1
    iget-boolean v0, p0, Lf/a/i/c/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf/a/i/c/b;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lf/a/i/c/b;->k:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lf/a/i/c/b;->m:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lf/a/i/c/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", AudioTrack play write length = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_2
    iput-wide v2, p0, Lf/a/i/c/b;->m:J

    iget-boolean v0, p0, Lf/a/i/c/b;->b:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lf/a/i/c/b;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/a/i/c/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AudioTrack play write streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/a/i/c/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dataLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    :cond_4
    return-void
.end method
