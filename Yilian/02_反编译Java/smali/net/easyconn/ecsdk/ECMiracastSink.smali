.class public Lnet/easyconn/ecsdk/ECMiracastSink;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/ECMiracastSink$ECMCastVideoConfig;,
        Lnet/easyconn/ecsdk/ECMiracastSink$ECMCastMode;,
        Lnet/easyconn/ecsdk/ECMiracastSink$ECMCastStatus;
    }
.end annotation


# static fields
.field public static final EC_MCAST_PORT:I = 0x1c44

.field public static final ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/easyconn/ecsdk/ECMiracastSink;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECMiracastSink;-><init>()V

    sput-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ecsdk:MCAST"

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    return-void
.end method

.method public static getInstance()Lnet/easyconn/ecsdk/ECMiracastSink;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    return-object v0
.end method

.method private native native_initialize(Lnet/easyconn/ecsdk/IECMCastCallBack;)I
.end method

.method private native native_pauseMirror()I
.end method

.method private native native_release()V
.end method

.method private native native_requestIDRFrame()I
.end method

.method private native native_resumeMirror()I
.end method

.method private native native_setVideoConfig(I)I
.end method

.method private native native_start(Ljava/lang/String;II)I
.end method

.method private native native_stop()V
.end method


# virtual methods
.method public initialize(Lnet/easyconn/ecsdk/IECMCastCallBack;)I
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_initialize(Lnet/easyconn/ecsdk/IECMCastCallBack;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pauseMirror()I
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_pauseMirror()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_release()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestIDRFrame()I
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_requestIDRFrame()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeMirror()I
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_resumeMirror()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVideoConfig(I)I
    .locals 1

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_setVideoConfig(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public start(Ljava/lang/String;II)I
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, ""

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_start(Ljava/lang/String;II)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    monitor-exit v0

    return p1

    :cond_2
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECMiracastSink;->ourInstance:Lnet/easyconn/ecsdk/ECMiracastSink;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECMiracastSink;->mInitialized:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECMiracastSink;->native_stop()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
