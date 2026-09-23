.class public Lnet/easyconn/ecsdk/ebt/EBTSPPService;
.super Lnet/easyconn/ecsdk/ebt/EBTService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;
    }
.end annotation


# instance fields
.field public final mRfCommHandle:Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;

.field public mRfServiceStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ebt/EBTService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->mRfServiceStatus:Z

    new-instance p1, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;-><init>(Lnet/easyconn/ecsdk/ebt/EBTSPPService$1;)V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->mRfCommHandle:Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;

    return-void
.end method

.method private isBluetoothEnabled()Z
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ecsdk:ebtservice"

    const-string v1, "device doesn`t support bluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public startService(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;Ljava/lang/Boolean;)I
    .locals 2

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->isBluetoothEnabled()Z

    move-result p3

    const-string v0, "ecsdk:ebtservice"

    const/4 v1, -0x1

    if-nez p3, :cond_0

    const-string p1, "startService bluetooth is disenabled"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean p3, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->mRfServiceStatus:Z

    if-eqz p3, :cond_1

    const-string p1, "startService service is started"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lnet/easyconn/ecsdk/ebt/EBTService;->native_registerCallBack(Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;)I

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->mRfCommHandle:Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;

    invoke-virtual {p0, p2}, Lnet/easyconn/ecsdk/ebt/EBTService;->native_bindTransport(Lnet/easyconn/ecsdk/ebt/IEBTRfCommHandle;)I

    move-result p2

    if-eqz p2, :cond_3

    return v1

    :cond_3
    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->mRfServiceStatus:Z

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const/4 p1, 0x0

    return p1
.end method

.method public stopService()V
    .locals 2

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->mRfServiceStatus:Z

    if-nez v0, :cond_0

    const-string v0, "ecsdk:ebtservice"

    const-string v1, "startService service no started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/ECSDK;->unbindDirectTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;->mRfServiceStatus:Z

    return-void
.end method
