.class public Lnet/easyconn/ecsdk/ECTypes$ECOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECOptions"
.end annotation


# instance fields
.field public bluetoothPolicy:I

.field public config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

.field public enableAndroidUsbForADB:Z

.field public enableAndroidUsbForAOA:Z

.field public enableIOSUsb:Z

.field public enableUsbBroadcastReceiver:Z

.field public enableWifiDirect:Z

.field public isAppMirrorForAdb:Z

.field public mirrorMode:I

.field public socketTimeoutPeriod:I

.field public supportBackDesktop:Z

.field public supportLandscapeAdaptive:Z

.field public supportOTAUpdate:Z

.field public supportPhoneSignal:Z

.field public supportRVForAdb:Z

.field public supportScreenMirroring:Z

.field public supportScreenTouch:Z

.field public supportThirdPartyApp:Z

.field public usbFilterPath:Ljava/lang/String;

.field public useBindTransport:Z

.field public useCarBtCallRecords:Z

.field public useDefaultMdnsPort:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public useJavaBindTransport:Z

.field public useSubProcess:Z

.field public workspace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableWifiDirect:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableUsbBroadcastReceiver:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForADB:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForAOA:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableIOSUsb:Z

    const-string v1, ""

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->usbFilterPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useBindTransport:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportRVForAdb:Z

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->isAppMirrorForAdb:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportScreenMirroring:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportThirdPartyApp:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportLandscapeAdaptive:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportScreenTouch:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportOTAUpdate:Z

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportBackDesktop:Z

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->mirrorMode:I

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useJavaBindTransport:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useDefaultMdnsPort:Z

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useSubProcess:Z

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useCarBtCallRecords:Z

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportPhoneSignal:Z

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->socketTimeoutPeriod:I

    return-void
.end method
