.class public Lnet/easyconn/ecsdk/ECCustomManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECCustomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;

    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;->onError(IILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceive(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)V
    .locals 4

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->getRspSeq()I

    move-result v0

    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;

    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;->onReceive(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTimeout(I)V
    .locals 4

    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;

    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;->onTimeout(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
