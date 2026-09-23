.class public Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final LOCK_WAIT_EACH_TIME:I = 0xa

.field public static final MAX_LOCK_ATTEMPTS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "Tinker.FileLockHelper"


# instance fields
.field public final fileLock:Ljava/nio/channels/FileLock;

.field public final outputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 8

    const-string v0, "Tinker.FileLockHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :catch_0
    move-exception v3

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "getInfoLock Thread failed time:10"

    invoke-static {v0, v7, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    const-string v6, "getInfoLock Thread sleep exception"

    invoke-static {v0, v6, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->fileLock:Ljava/nio/channels/FileLock;

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tinker Exception:FileLockHelper lock file failed: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static getFileLock(Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;
    .locals 1

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->fileLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->fileLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v0
.end method
