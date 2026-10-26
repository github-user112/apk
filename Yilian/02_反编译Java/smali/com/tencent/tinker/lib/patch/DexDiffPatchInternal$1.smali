.class public Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->dexOptimizeDexFiles(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public startTime:J

.field public final synthetic val$anyOatNotGenerated:[Z

.field public final synthetic val$failOptDexFile:Ljava/util/List;

.field public final synthetic val$throwable:[Ljava/lang/Throwable;


# direct methods
.method public constructor <init>([ZLjava/util/List;[Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$anyOatNotGenerated:[Z

    iput-object p2, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$failOptDexFile:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$throwable:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 6

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const-string v0, "Tinker.DexDiffPatchInternal"

    const-string v2, "fail to parallel optimize dex %s use time %d"

    invoke-static {v0, v2, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$failOptDexFile:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$throwable:[Ljava/lang/Throwable;

    aput-object p3, p1, v1

    return-void
.end method

.method public onStart(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->startTime:J

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "Tinker.DexDiffPatchInternal"

    const-string v0, "start to parallel optimize dex %s, size: %d"

    invoke-static {p1, v0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 8

    const-string p2, "Tinker.DexDiffPatchInternal"

    const-string v0, "success to parallel optimize dex %s, opt file:%s, opt file size: %d, use time %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->startTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v1, v4

    invoke-static {p2, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$anyOatNotGenerated:[Z

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$anyOatNotGenerated:[Z

    aput-boolean v3, p2, v2

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
