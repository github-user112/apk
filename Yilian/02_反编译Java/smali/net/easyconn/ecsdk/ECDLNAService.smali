.class public Lnet/easyconn/ecsdk/ECDLNAService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ecdlna"

.field public static final outInstance:Lnet/easyconn/ecsdk/ECDLNAService;


# instance fields
.field public mInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/easyconn/ecsdk/ECDLNAService;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECDLNAService;-><init>()V

    sput-object v0, Lnet/easyconn/ecsdk/ECDLNAService;->outInstance:Lnet/easyconn/ecsdk/ECDLNAService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    return-void
.end method

.method public static getInstance()Lnet/easyconn/ecsdk/ECDLNAService;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECDLNAService;->outInstance:Lnet/easyconn/ecsdk/ECDLNAService;

    return-object v0
.end method


# virtual methods
.method public initialize(Lnet/easyconn/ecsdk/IECDLNACallback;)I
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECDLNAService;->outInstance:Lnet/easyconn/ecsdk/ECDLNAService;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    invoke-virtual {p0, p1}, Lnet/easyconn/ecsdk/ECDLNAService;->native_initialize(Lnet/easyconn/ecsdk/IECDLNACallback;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public native native_initialize(Lnet/easyconn/ecsdk/IECDLNACallback;)I
.end method

.method public native native_playerDurationChanged(J)I
.end method

.method public native native_playerEndOfMedia()I
.end method

.method public native native_playerPause()I
.end method

.method public native native_playerPositionChanged(J)I
.end method

.method public native native_playerSetVolume(I)I
.end method

.method public native native_playerStart()I
.end method

.method public native native_playerStop()I
.end method

.method public native native_release()V
.end method

.method public native native_startDlnaService(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public native native_stopDlnaService()V
.end method

.method public playerDurationChanged(J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/ecsdk/ECDLNAService;->native_playerDurationChanged(J)I

    move-result p1

    return p1
.end method

.method public playerEndOfMedia()I
    .locals 1

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECDLNAService;->native_playerEndOfMedia()I

    move-result v0

    return v0
.end method

.method public playerPause()I
    .locals 1

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECDLNAService;->native_playerPause()I

    move-result v0

    return v0
.end method

.method public playerPositionChanged(J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/ecsdk/ECDLNAService;->native_playerPositionChanged(J)I

    move-result p1

    return p1
.end method

.method public playerSetVolume(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/easyconn/ecsdk/ECDLNAService;->native_playerSetVolume(I)I

    move-result p1

    return p1
.end method

.method public playerStart()I
    .locals 1

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECDLNAService;->native_playerStart()I

    move-result v0

    return v0
.end method

.method public playerStop()I
    .locals 1

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECDLNAService;->native_playerStop()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECDLNAService;->outInstance:Lnet/easyconn/ecsdk/ECDLNAService;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECDLNAService;->native_release()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startDlnaService(Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lnet/easyconn/ecsdk/ECDLNAService;->outInstance:Lnet/easyconn/ecsdk/ECDLNAService;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    if-eqz p1, :cond_2

    const-string v1, ""

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lnet/easyconn/ecsdk/ECDLNAService;->native_startDlnaService(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string v1, "ecdlna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDlnaService name error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startDlnaService(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lnet/easyconn/ecsdk/ECDLNAService;->outInstance:Lnet/easyconn/ecsdk/ECDLNAService;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    const-string v1, ""

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "\\;"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "ecdlna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDlnaService on interface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1}, Lnet/easyconn/ecsdk/ECDLNAService;->native_startDlnaService(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_3
    :goto_1
    const-string p2, "ecdlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDlnaService name error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopDlnaService()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECDLNAService;->outInstance:Lnet/easyconn/ecsdk/ECDLNAService;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECDLNAService;->mInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECDLNAService;->native_stopDlnaService()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
