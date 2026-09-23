.class public Lnet/easyconn/ecsdk/ECCustomManager;
.super Lnet/easyconn/ecsdk/ECCustomProtocol;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/ECCustomManager$a;
    }
.end annotation


# static fields
.field public static final a:Lnet/easyconn/ecsdk/ECCustomManager;

.field public static final b:Lnet/easyconn/ecsdk/ECCustomManager$a;

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/easyconn/ecsdk/ECCustomManager;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECCustomManager;-><init>()V

    sput-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->a:Lnet/easyconn/ecsdk/ECCustomManager;

    new-instance v0, Lnet/easyconn/ecsdk/ECCustomManager$a;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECCustomManager$a;-><init>()V

    sput-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->b:Lnet/easyconn/ecsdk/ECCustomManager$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lnet/easyconn/ecsdk/ECCustomManager;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECCustomProtocol;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public static c()Lnet/easyconn/ecsdk/ECCustomManager;
    .locals 2

    sget-boolean v0, Lnet/easyconn/ecsdk/ECCustomManager;->d:Z

    if-nez v0, :cond_1

    sget-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->a:Lnet/easyconn/ecsdk/ECCustomManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lnet/easyconn/ecsdk/ECCustomManager;->d:Z

    if-nez v1, :cond_0

    sget-object v1, Lnet/easyconn/ecsdk/ECCustomManager;->b:Lnet/easyconn/ecsdk/ECCustomManager$a;

    invoke-direct {v0, v1}, Lnet/easyconn/ecsdk/ECCustomManager;->native_setCustomDataResponse(Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;)V

    const/4 v1, 0x1

    sput-boolean v1, Lnet/easyconn/ecsdk/ECCustomManager;->d:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->a:Lnet/easyconn/ecsdk/ECCustomManager;

    return-object v0
.end method

.method private native native_registerCustomDataReceiver(Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataReceiver;)I
.end method

.method private native native_replyCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;I)I
.end method

.method private native native_sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)I
.end method

.method private native native_sendCustomData2(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;ILnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;)I
.end method

.method private native native_setCustomDataResponse(Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;)V
.end method


# virtual methods
.method public b()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerCustomDataReceiver(Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataReceiver;)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECCustomManager;->native_registerCustomDataReceiver(Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataReceiver;)I

    move-result p1

    return p1
.end method

.method public replyCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;I)I
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "replyCustomData data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECCustomManager;->native_replyCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;I)I

    move-result p1

    return p1
.end method

.method public sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string v0, "sendCustomData data is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECCustomManager;->native_sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)I

    move-result p1

    return p1
.end method

.method public sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;ILnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "sendCustomData data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECCustomManager;->native_sendCustomData2(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;ILnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;)I

    move-result p2

    if-eqz p3, :cond_1

    sget-object v0, Lnet/easyconn/ecsdk/ECCustomManager;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->getReqSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return p2
.end method
