.class public final Lcom/baidu/carlifevehicle/logxfer/SessionLog;
.super Ljava/lang/Object;
.source "SessionLog.java"


# static fields
.field private static final MAX_BYTES:J = 0x7800L

.field private static final MAX_FILES:I = 0x28

.field private static final MAX_PARTS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "CarLifeLogXfer"

.field private static sInst:Lcom/baidu/carlifevehicle/logxfer/SessionLog;


# instance fields
.field private mBase:Ljava/lang/String;

.field private mCur:Ljava/io/File;

.field private mDir:Ljava/io/File;

.field private mEnabled:Z

.field private mOut:Ljava/io/Writer;

.field private mPart:I

.field private mWritten:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static declared-synchronized append(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->get()Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    move-result-object v1

    .line 108
    iget-boolean v2, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    if-nez p0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    :try_start_1
    invoke-direct {v1, p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->writeLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_2
    invoke-direct {v1, p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->enabledOffLocked(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    :goto_0
    monitor-exit v0

    return-void

    .line 109
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 106
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private cleanupLocked()V
    .locals 11

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_7

    array-length v1, v0

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    goto :goto_5

    .line 200
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 201
    const/4 v4, 0x0

    :goto_1
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_2

    .line 202
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    add-int/lit8 v7, v4, 0x1

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-lez v10, :cond_1

    .line 203
    aget-object v5, v0, v4

    .line 204
    aget-object v6, v0, v7

    aput-object v6, v0, v4

    .line 205
    aput-object v5, v0, v7

    .line 201
    :cond_1
    move v4, v7

    goto :goto_1

    .line 200
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_3
    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v3, v2

    .line 210
    nop

    :goto_2
    if-ge v1, v3, :cond_6

    .line 212
    :try_start_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    if-nez v4, :cond_4

    const-string v4, ""

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 213
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_5
    goto :goto_4

    .line 215
    :catchall_0
    move-exception v2

    .line 210
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 219
    :cond_6
    goto :goto_6

    .line 197
    :cond_7
    :goto_5
    return-void

    .line 218
    :catchall_1
    move-exception v0

    .line 220
    :goto_6
    return-void
.end method

.method private closeLocked()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    .line 188
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    .line 190
    :cond_0
    return-void
.end method

.method private enabledOffLocked(Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionLog write failed, disabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLifeLogXfer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mEnabled:Z

    .line 121
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->closeLocked()V

    .line 122
    return-void
.end method

.method private static get()Lcom/baidu/carlifevehicle/logxfer/SessionLog;
    .locals 1

    .line 57
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->sInst:Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;-><init>()V

    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->sInst:Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    .line 60
    :cond_0
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->sInst:Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->get()Lcom/baidu/carlifevehicle/logxfer/SessionLog;

    move-result-object v1

    .line 69
    iget-boolean v2, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 70
    monitor-exit v0

    return-void

    .line 73
    :cond_0
    if-nez p0, :cond_1

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_1
    nop

    .line 78
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v3

    .line 81
    :goto_0
    if-eqz v2, :cond_2

    .line 82
    :try_start_2
    new-instance p0, Ljava/io/File;

    const-string v3, "log/session"

    invoke-direct {p0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    goto :goto_1

    .line 84
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "log/session"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    .line 86
    :goto_1
    iget-object p0, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_3

    .line 87
    const-string p0, "CarLifeLogXfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionLog mkdir failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    monitor-exit v0

    return-void

    .line 90
    :cond_3
    :try_start_3
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mBase:Ljava/lang/String;

    .line 91
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mEnabled:Z

    .line 92
    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->openLocked()V

    .line 93
    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->cleanupLocked()V

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========== CarLife \u4f1a\u8bdd\u65e5\u5fd7 "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 95
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " =========="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-direct {v1, p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->writeLocked(Ljava/lang/String;)V

    .line 98
    const-string p0, "CarLifeLogXfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionLog started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    if-nez v3, :cond_4

    const-string v3, "null"

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    goto :goto_3

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    :try_start_4
    const-string v2, "CarLifeLogXfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionLog init failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mEnabled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 103
    :goto_3
    monitor-exit v0

    return-void

    .line 67
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private openLocked()V
    .locals 4

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mPart:I

    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mBase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mWritten:J

    .line 129
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionLog open failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLifeLogXfer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    .line 133
    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    .line 135
    :goto_0
    return-void
.end method

.method private rotateLocked()V
    .locals 5

    .line 165
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->closeLocked()V

    .line 166
    iget v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mPart:I

    const/16 v1, 0x1e

    const-string v2, "CarLifeLogXfer"

    if-lt v0, v1, :cond_0

    .line 167
    const-string v0, "SessionLog part limit reached"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 170
    :cond_0
    iget v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mPart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mPart:I

    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mBase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".part"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mPart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mWritten:J

    .line 174
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionLog rotate failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    .line 178
    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mCur:Ljava/io/File;

    .line 180
    :goto_0
    return-void
.end method

.method private writeLocked(Ljava/lang/String;)V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 149
    :goto_0
    :try_start_1
    iget-wide v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mWritten:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x7800

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-wide v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mWritten:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->rotateLocked()V

    .line 151
    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 152
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mOut:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 157
    iget-wide v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mWritten:J

    array-length p1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->mWritten:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    goto :goto_1

    .line 158
    :catchall_1
    move-exception p1

    .line 159
    invoke-direct {p0, p1}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->enabledOffLocked(Ljava/lang/Throwable;)V

    .line 161
    :goto_1
    return-void
.end method
