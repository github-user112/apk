.class public Lnet/easyconn/ecsdk/ECSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ecsdk"

.field public static final ourInstance:Lnet/easyconn/ecsdk/ECSDK;


# instance fields
.field public mBLEHIDDevice:Lnet/easyconn/ecsdk/b;

.field public mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

.field public mBindMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/easyconn/ecsdk/ECTypes$ECTransportType;",
            "Lnet/easyconn/ecsdk/c;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

.field public volatile mIsTransportOpened:Z

.field public mListener:Lnet/easyconn/ecsdk/IECCallback;

.field public volatile mTransportType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

.field public mUseBonjourMdnsClient:Z

.field public mWifiDirectManager:Lnet/easyconn/ecsdk/d;

.field public mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

.field public useJavaTransport:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/easyconn/ecsdk/ECSDK;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECSDK;-><init>()V

    sput-object v0, Lnet/easyconn/ecsdk/ECSDK;->ourInstance:Lnet/easyconn/ecsdk/ECSDK;

    const-string v0, "mediaserver"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ECSDK"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mIsTransportOpened:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mBindMap:Ljava/util/HashMap;

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->useJavaTransport:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mUseBonjourMdnsClient:Z

    return-void
.end method

.method public static synthetic access$000(Lnet/easyconn/ecsdk/ECSDK;)Lnet/easyconn/ecsdk/IECCallback;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    return-object p0
.end method

.method public static getInstance()Lnet/easyconn/ecsdk/ECSDK;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECSDK;->ourInstance:Lnet/easyconn/ecsdk/ECSDK;

    return-object v0
.end method

.method private judgetSupportMuxd(Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;Lnet/easyconn/ecsdk/ECTypes$ECOptions;)Z
    .locals 1

    iget-boolean p2, p2, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableIOSUsb:Z

    iget p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportConnect:I

    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_0

    and-int/lit16 p1, p1, 0x80

    if-lez p1, :cond_0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_isUsbmuxdExisted()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "judgetSupportMuxd enableIosUsb will be "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ecsdk"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p2
.end method

.method private native native_adbCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native native_audioRecord([B)I
.end method

.method private native native_bindBLEHidDeviceError()I
.end method

.method private native native_bindBlockTransportDevicePath(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;)I
.end method

.method private native native_bindHidDevice(ILnet/easyconn/ecsdk/IECHIDDevice;)I
.end method

.method private native native_bindProxyTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;I)I
.end method

.method private native native_bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I
.end method

.method private native native_bindTransportDevicePath(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;Z)I
.end method

.method private native native_bindTransportWiFiDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;)I
.end method

.method private native native_changeCarNavigatorName(Ljava/lang/String;)I
.end method

.method private native native_changeCarUuid(Ljava/lang/String;)I
.end method

.method private native native_checkLicense(Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;)I
.end method

.method private native native_checkLicenseThird(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/IECCallback$IAuthCallBack;Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;)I
.end method

.method private native native_checkOTAUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)I
.end method

.method private native native_checkPhoneNetwork()Z
.end method

.method private native native_closeAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I
.end method

.method private native native_closeAppPage2(II)I
.end method

.method private native native_closeAppPage3(I)I
.end method

.method private native native_closeAudioRecord()I
.end method

.method private native native_closeMirrorConnection()V
.end method

.method private native native_closeNetLinkService()V
.end method

.method private native native_closeTransport()V
.end method

.method private native native_closeWifiService()V
.end method

.method private native native_configSEParam(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_configTransportInfo(II)I
.end method

.method private native native_disableDownloadPhoneAppAudio()V
.end method

.method private native native_disableDownloadPhoneAppHud()V
.end method

.method private native native_disableDownloadSystemAudio()V
.end method

.method private native native_enableDownloadPhoneAppAudio(ZZZZZ)I
.end method

.method private native native_enableDownloadPhoneAppHud()I
.end method

.method private native native_enableDownloadPhoneAppHud(J)I
.end method

.method private native native_enableDownloadSystemAudio()I
.end method

.method private native native_enableSandbox()V
.end method

.method private native native_fillAudioData(I[BI)I
.end method

.method private native native_forwardToPhone(Lnet/easyconn/ecsdk/ECTypes$ECForwardInfo;)Lnet/easyconn/ecsdk/ECTypes$ECForwardInfo;
.end method

.method private native native_generateQRCodeUrl(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;
.end method

.method private native native_getPhoneAppNetworkingCapability()I
.end method

.method private native native_getRecordDataByteSize()I
.end method

.method private native native_getVersion()Ljava/lang/String;
.end method

.method private native native_initialize(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;Lnet/easyconn/ecsdk/ECTypes$ECOptions;Lnet/easyconn/ecsdk/IECCallback;)I
.end method

.method private native native_isUsbmuxdExisted()Z
.end method

.method private native native_openAppMainPage()I
.end method

.method private native native_openAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I
.end method

.method private native native_openAppPage2(II)I
.end method

.method private native native_openAppVirtualMachine(II)I
.end method

.method private native native_openAudioRecord([Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;IIIIIIII)I
.end method

.method private native native_openFtpSerer(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_openMirrorConnection(Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;)I
.end method

.method private native native_openNetLinkService()I
.end method

.method private native native_openTransport(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I
.end method

.method private native native_openWifiService()I
.end method

.method private native native_pauseMirror()I
.end method

.method private native native_ping(Ljava/lang/String;I)I
.end method

.method private native native_playCarTTS(Ljava/lang/String;I)I
.end method

.method private native native_queryDevices()[Lnet/easyconn/ecsdk/ECTypes$ECDevice;
.end method

.method private native native_queryGPS()Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;
.end method

.method private native native_queryPageIcon([I)I
.end method

.method private native native_queryPageList()I
.end method

.method private native native_queryTime()Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;
.end method

.method private native native_queryVRTips()I
.end method

.method private native native_queryWeather()I
.end method

.method private native native_registerCarCmds([Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;)I
.end method

.method private native native_registerSimilarSoundingWords(Ljava/lang/String;)I
.end method

.method private native native_release()V
.end method

.method private native native_requestAppStopService()I
.end method

.method private native native_requestInstallPage(I[I)I
.end method

.method private native native_requestPhoneNotification(Z)I
.end method

.method private native native_resumeMirror()I
.end method

.method private native native_sendAudioPlayEnd(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)I
.end method

.method private native native_sendBtnEvent(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)I
.end method

.method private native native_sendBtnEvent2(ILnet/easyconn/ecsdk/ECTypes$ECBtnEventType;I)I
.end method

.method private native native_sendBulkDataToPhone([BI)I
.end method

.method private native native_sendCarBluetooth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_sendCarStatus(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)I
.end method

.method private native native_sendInputAction(II)I
.end method

.method private native native_sendInputSelection(II)I
.end method

.method private native native_sendInputText(Ljava/lang/String;)I
.end method

.method private native native_sendPhoneControlCarResult(Ljava/lang/String;)I
.end method

.method private native native_sendSystemKeyEvent(Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;)I
.end method

.method private native native_sendTouchEvent(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)I
.end method

.method private native native_setConnectedBTAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_setLogInfo(Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;Ljava/lang/String;I)V
.end method

.method private native native_setWirelessDirectConnectPhoneIp(Ljava/lang/String;)I
.end method

.method private native native_startMirror()I
.end method

.method private native native_startOTAUpdate([Ljava/lang/String;I)I
.end method

.method private native native_stopMirror()V
.end method

.method private native native_stopOTAUpdate()V
.end method

.method private native native_stopPhoneNavigation()I
.end method

.method private native native_stopPhoneVR()I
.end method

.method private native native_unBindHidDevice()V
.end method

.method private native native_unbindAllTransporDevice()V
.end method

.method private native native_unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
.end method

.method private native native_uploadAccelerometerStatus(III)I
.end method

.method private native native_uploadAudioData([BI)I
.end method

.method private native native_uploadBTCallData(II[Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;)I
.end method

.method private native native_uploadCarTheme(I)I
.end method

.method private native native_uploadCompassBearing(FFF)I
.end method

.method private native native_uploadDoorStatus(ZZ[ZI)I
.end method

.method private native native_uploadDrivingStatus(Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;)I
.end method

.method private native native_uploadEngineRpm(F)I
.end method

.method private native native_uploadEnvironmentStatus(FFI)I
.end method

.method private native native_uploadFuelStatus(FIZ)I
.end method

.method private native native_uploadGPSInfo([BI)I
.end method

.method private native native_uploadGearStatus(Lnet/easyconn/ecsdk/ECTypes$ECGearType;)I
.end method

.method private native native_uploadGpsSatelliteStatus(II[II[II[ZI[FI[FI)I
.end method

.method private native native_uploadGyroscopeStatus(FFF)I
.end method

.method private native native_uploadLightStatus(Lnet/easyconn/ecsdk/ECTypes$ECHeadLightStatus;Lnet/easyconn/ecsdk/ECTypes$ECTurnIndicatorStatus;Z)I
.end method

.method private native native_uploadLocation(JFFFFFF)I
.end method

.method private native native_uploadNetLinkServiceInfo(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)I
.end method

.method private native native_uploadNightModeStatus(Z)I
.end method

.method private native native_uploadOdometer(FI)I
.end method

.method private native native_uploadParkingBrakeStatus(Z)I
.end method

.method private native native_uploadPassengerStatus(Z)I
.end method

.method private native native_uploadSensorError(Lnet/easyconn/ecsdk/ECTypes$ECSensorType;Lnet/easyconn/ecsdk/ECTypes$ECSensorErrorType;)I
.end method

.method private native native_uploadStatistics(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_uploadTirePressure([FI)I
.end method

.method private native native_uploadVehicleInfo([BI)I
.end method

.method private native native_uploadVehicleSpeed(FZF)I
.end method

.method private native natvie_getVersionCode()J
.end method

.method private native natvie_getWifiPhoneIp()Ljava/lang/String;
.end method


# virtual methods
.method public adbCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_adbCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public audioRecord([BI)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_audioRecord([B)I

    move-result p1

    return p1
.end method

.method public bindAoaHidDevice(Lnet/easyconn/ecsdk/AOAHIDDevice;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_bindHidDevice(ILnet/easyconn/ecsdk/IECHIDDevice;)I

    move-result p1

    return p1
.end method

.method public bindBLEHidDevice(Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;)I
    .locals 2

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mIsTransportOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mTransportType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_WIFI:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/easyconn/ecsdk/b;

    invoke-direct {v0, p1}, Lnet/easyconn/ecsdk/b;-><init>(Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;)V

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBLEHIDDevice:Lnet/easyconn/ecsdk/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lnet/easyconn/ecsdk/ECSDK;->native_bindHidDevice(ILnet/easyconn/ecsdk/IECHIDDevice;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "transport status: type["

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mTransportType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] open["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mIsTransportOpened:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] not allow bind ble hid device"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ecsdk"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public bindBLEHidDeviceError()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_bindBLEHidDeviceError()I

    return-void
.end method

.method public bindBlockTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_bindBlockTransportDevicePath(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bindDirectTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I

    move-result p1

    return p1
.end method

.method public bindProxyTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_bindProxyTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/easyconn/ecsdk/ECSDK$a;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/ecsdk/ECSDK$a;-><init>(Lnet/easyconn/ecsdk/ECSDK;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method public bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Landroid/hardware/usb/UsbDevice;)I
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lnet/easyconn/ecsdk/DeviceManager;->a(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Landroid/hardware/usb/UsbDevice;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x3

    :goto_0
    return p1

    :cond_1
    :goto_1
    const-string p1, "ecsdk"

    const-string p2, "bindTransportDevice, mDeviceManager or device is null\n"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;Z)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_bindTransportDevicePath(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I
    .locals 3

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->useJavaTransport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBindMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ecsdk"

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "this type="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has been bound"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v0, Lnet/easyconn/ecsdk/c;

    invoke-direct {v0, p1}, Lnet/easyconn/ecsdk/c;-><init>(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    invoke-virtual {v0, p2}, Lnet/easyconn/ecsdk/c;->a(Lnet/easyconn/ecsdk/IUsbDevice;)I

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "failed to open device"

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/easyconn/ecsdk/ECSDK;->mBindMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I

    move-result p1

    return p1
.end method

.method public bindTransportWifiDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_WIFI:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, p1, :cond_0

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_APP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, p1, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "the function only support wifi transport"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_bindTransportWiFiDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public changeCarNavigatorName(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_changeCarNavigatorName(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public changeCarUuid(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_changeCarUuid(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkLicense(Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_checkLicense(Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;)I

    move-result p1

    return p1
.end method

.method public checkLicenseThird(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/IECCallback$IAuthCallBack;Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;)I
    .locals 9

    move-object v2, p3

    move-object v0, p5

    const/4 v1, -0x2

    const-string v3, "ecsdk"

    if-eqz p1, :cond_5

    if-nez p8, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v4, v0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lnet/easyconn/ecsdk/ECSDK;->native_checkLicenseThird(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/IECCallback$IAuthCallBack;Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid uuid : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_2
    const-string v0, "context or authCallBack is null"

    goto :goto_1
.end method

.method public checkOTAUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)I
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/easyconn/ecsdk/ECSDK;->native_checkOTAUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "otaConfigPath or otaPackagePath is invalid parameter"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public checkPhoneNetwork()Z
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_checkPhoneNetwork()Z

    move-result v0

    return v0
.end method

.method public closeAppPage(I)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_closeAppPage3(I)I

    move-result p1

    return p1
.end method

.method public closeAppPage(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_closeAppPage2(II)I

    move-result p1

    return p1
.end method

.method public closeAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string v0, "closeAppPage: page cann\'t be null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_closeAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I

    move-result p1

    return p1
.end method

.method public closeAudioRecord()I
    .locals 2

    const-string v0, "ecsdk"

    const-string v1, "closeAudioRecord: call native_closeAudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_closeAudioRecord()I

    move-result v0

    return v0
.end method

.method public closeMirrorConnection()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_closeMirrorConnection()V

    return-void
.end method

.method public closeNetLinkService()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_closeNetLinkService()V

    return-void
.end method

.method public closeTransport()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mIsTransportOpened:Z

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_closeTransport()V

    return-void
.end method

.method public closeWiFiService()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mUseBonjourMdnsClient:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/WifiManager;->a()V

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiDirectManager:Lnet/easyconn/ecsdk/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/d;->c()V

    :cond_1
    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_closeWifiService()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public configSEParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_configSEParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public configTransportInfo(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_configTransportInfo(II)I

    move-result p1

    return p1
.end method

.method public disableDownloadPhoneAppAudio()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_disableDownloadPhoneAppAudio()V

    return-void
.end method

.method public disableDownloadPhoneAppHud()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_disableDownloadPhoneAppHud()V

    return-void
.end method

.method public disableDownloadSystemAudio()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_disableDownloadSystemAudio()V

    return-void
.end method

.method public enableDownloadPhoneAppAudio(ZZZZZ)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lnet/easyconn/ecsdk/ECSDK;->native_enableDownloadPhoneAppAudio(ZZZZZ)I

    move-result p1

    return p1
.end method

.method public enableDownloadPhoneAppHud()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_enableDownloadPhoneAppHud()I

    move-result v0

    return v0
.end method

.method public enableDownloadPhoneAppHud(J)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_enableDownloadPhoneAppHud(J)I

    move-result p1

    return p1
.end method

.method public enableDownloadSystemAudio()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_enableDownloadSystemAudio()I

    move-result v0

    return v0
.end method

.method public enableSandbox()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_enableSandbox()V

    return-void
.end method

.method public fillAudioData(I[BI)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_fillAudioData(I[BI)I

    move-result p1

    return p1
.end method

.method public forwardToPhone(Lnet/easyconn/ecsdk/ECTypes$ECForwardInfo;)Lnet/easyconn/ecsdk/ECTypes$ECForwardInfo;
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_forwardToPhone(Lnet/easyconn/ecsdk/ECTypes$ECForwardInfo;)Lnet/easyconn/ecsdk/ECTypes$ECForwardInfo;

    move-result-object p1

    return-object p1
.end method

.method public generateQRCodeUrl(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_generateQRCodeUrl(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCustomProtocol()Lnet/easyconn/ecsdk/ECCustomProtocol;
    .locals 1

    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->c()Lnet/easyconn/ecsdk/ECCustomManager;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAppNetworkingCapability()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_getPhoneAppNetworkingCapability()I

    move-result v0

    return v0
.end method

.method public getRecordDataByteSize()I
    .locals 2

    const-string v0, "ecsdk"

    const-string v1, "audioRecord: getRecordDataByteSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_getRecordDataByteSize()I

    move-result v0

    return v0
.end method

.method public getSockServerPwd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    if-nez v0, :cond_0

    const-string v0, "ecsdk"

    const-string v1, "ECSDK is not inited!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_getSockServerPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransportOpened()Z
    .locals 1

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mIsTransportOpened:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()J
    .locals 2

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->natvie_getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiPhoneIp()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->natvie_getWifiPhoneIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;Lnet/easyconn/ecsdk/ECTypes$ECOptions;Lnet/easyconn/ecsdk/IECCallback;)I
    .locals 4

    monitor-enter p0

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-eqz p4, :cond_9

    if-nez p5, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    iget-object v2, p2, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string p1, "ecsdk"

    const-string p2, "initialize: ECAuthentication\'s parameter is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_1
    :try_start_2
    iget-object v2, p3, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaLevel:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaOS:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaModel:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carBrand:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carModel:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->micType:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->wakeupWord:Ljava/lang/String;

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

    if-eqz v0, :cond_3

    const-string p1, "ecsdk"

    const-string p2, "initialize: already initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    :cond_3
    :try_start_4
    iget-object v0, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v2, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "ecsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new file options.workspace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    :cond_5
    const-string v0, "ecsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "options.workspace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECSDK;->useJavaTransport:Z

    invoke-direct/range {p0 .. p5}, Lnet/easyconn/ecsdk/ECSDK;->native_initialize(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;Lnet/easyconn/ecsdk/ECTypes$ECOptions;Lnet/easyconn/ecsdk/IECCallback;)I

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "ecsdk"

    const-string p2, "initialize: failed to native_initialize"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, -0x3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return p1

    :cond_6
    const-wide/16 v2, 0x1f4

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-direct {p0, p3, p4}, Lnet/easyconn/ecsdk/ECSDK;->judgetSupportMuxd(Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;Lnet/easyconn/ecsdk/ECTypes$ECOptions;)Z

    move-result p2

    iput-boolean p2, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableIOSUsb:Z

    new-instance p2, Lnet/easyconn/ecsdk/DeviceManager;

    invoke-direct {p2, p1, p5, p4, p3}, Lnet/easyconn/ecsdk/DeviceManager;-><init>(Landroid/content/Context;Lnet/easyconn/ecsdk/IECCallback;Lnet/easyconn/ecsdk/ECTypes$ECOptions;Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;)V

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECSDK;->mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

    iget-object p2, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    iget-object p2, p2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->bonjourMDNSServerPath:Ljava/lang/String;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/easyconn/ecsdk/ECSDK;->mUseBonjourMdnsClient:Z

    :cond_7
    new-instance p2, Lnet/easyconn/ecsdk/WifiManager;

    iget-boolean p3, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useDefaultMdnsPort:Z

    invoke-direct {p2, p1, p3}, Lnet/easyconn/ecsdk/WifiManager;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    iget-boolean p2, p4, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableWifiDirect:Z

    if-eqz p2, :cond_a

    new-instance p2, Lnet/easyconn/ecsdk/d;

    invoke-direct {p2, p1}, Lnet/easyconn/ecsdk/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiDirectManager:Lnet/easyconn/ecsdk/d;

    goto :goto_2

    :cond_8
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "initialize: carDesc parameter is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v0

    :cond_9
    :goto_1
    :try_start_8
    const-string p1, "ecsdk"

    const-string p2, "initialize: invalid parameters"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_2
    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public native native_getLocalServiceInfo()Ljava/lang/String;
.end method

.method public native native_getSockServerPwd()Ljava/lang/String;
.end method

.method public openAppMainPage()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_openAppMainPage()I

    move-result v0

    return v0
.end method

.method public openAppPage(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_openAppPage2(II)I

    move-result p1

    return p1
.end method

.method public openAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string v0, "switchAppPage: page cann\'t be null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_openAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I

    move-result p1

    return p1
.end method

.method public openAppVirtualMachine(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_openAppVirtualMachine(II)I

    move-result p1

    return p1
.end method

.method public openAudioRecord([Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;IIIII)I
    .locals 12

    const-string v0, "ecsdk"

    const-string v1, "audioRecord: openAudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x200

    const/4 v9, 0x2

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Lnet/easyconn/ecsdk/ECSDK;->native_openAudioRecord([Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;IIIIIIII)I

    move-result v0

    return v0
.end method

.method public openAudioRecord([Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;IIIIIII)I
    .locals 12

    const-string v0, "ecsdk"

    const-string v1, "audioRecord: openAudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v11}, Lnet/easyconn/ecsdk/ECSDK;->native_openAudioRecord([Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;IIIIIIII)I

    move-result v0

    return v0
.end method

.method public openAudioRecord([Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;IIIIIIII)I
    .locals 2

    const-string v0, "ecsdk"

    const-string v1, "audioRecord: openAudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p9}, Lnet/easyconn/ecsdk/ECSDK;->native_openAudioRecord([Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;IIIIIIII)I

    move-result p1

    return p1
.end method

.method public openFtpSerer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_openFtpSerer(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "openFtpSerer: user and pwd cann\'t be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public openMirrorConnection(Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_openMirrorConnection(Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "openMirrorConnection: config and mirrorSize cann\'t be null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public openNetLinkService()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_openNetLinkService()I

    move-result v0

    return v0
.end method

.method public openTransport(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string v0, "openTransport: type is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_openTransport(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mIsTransportOpened:Z

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECSDK;->mTransportType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    :cond_1
    return v0
.end method

.method public openWiFiService()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_openWifiService()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v0, "ecsdk"

    const-string v2, "openWiFiService: native_openWifiService failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    :cond_0
    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mUseBonjourMdnsClient:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    if-nez v0, :cond_1

    const-string v0, "ecsdk"

    const-string v2, "openWiFiService: not initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    :cond_1
    invoke-virtual {v0}, Lnet/easyconn/ecsdk/WifiManager;->b()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x3

    monitor-exit p0

    return v0

    :cond_2
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiDirectManager:Lnet/easyconn/ecsdk/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/d;->a(Lnet/easyconn/ecsdk/WifiManager;)V

    :cond_3
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openWiFiService(Ljava/lang/String;Z)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_openWifiService()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "openWiFiService: native_openWifiService failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    :cond_0
    iget-boolean v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mUseBonjourMdnsClient:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    if-nez v0, :cond_1

    const-string p1, "ecsdk"

    const-string p2, "openWiFiService: not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lnet/easyconn/ecsdk/WifiManager;->a(Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x3

    monitor-exit p0

    return p1

    :cond_2
    iget-object p1, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiDirectManager:Lnet/easyconn/ecsdk/d;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    invoke-virtual {p1, p2}, Lnet/easyconn/ecsdk/d;->a(Lnet/easyconn/ecsdk/WifiManager;)V

    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pauseMirror()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_pauseMirror()I

    move-result v0

    return v0
.end method

.method public ping(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_ping(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "dest is null or empty"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public playCarTTS(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_playCarTTS(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "playCarTTS: text is null or empty"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public queryDevices()[Lnet/easyconn/ecsdk/ECTypes$ECDevice;
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_queryDevices()[Lnet/easyconn/ecsdk/ECTypes$ECDevice;

    move-result-object v0

    return-object v0
.end method

.method public queryGPS()Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_queryGPS()Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryPageIcon([I)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_queryPageIcon([I)I

    move-result p1

    return p1
.end method

.method public queryPageList()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_queryPageList()I

    move-result v0

    return v0
.end method

.method public queryTime()Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_queryTime()Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryVRTips()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_queryVRTips()I

    move-result v0

    return v0
.end method

.method public queryWeather()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_queryWeather()I

    move-result v0

    return v0
.end method

.method public registerCarCmds([Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;)I
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_registerCarCmds([Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "registerCarCmds: parameters are not valid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public registerSimilarSoundingWords(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_registerSimilarSoundingWords(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/WifiManager;->e()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiManager:Lnet/easyconn/ecsdk/WifiManager;

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiDirectManager:Lnet/easyconn/ecsdk/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/d;->c()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mWifiDirectManager:Lnet/easyconn/ecsdk/d;

    :cond_1
    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_release()V

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_unbindAllTransporDevice()V

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/DeviceManager;->d()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

    :cond_2
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ebt/EBTService;->stopService()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    :cond_3
    invoke-static {}, Lnet/easyconn/ecsdk/ECCustomManager;->c()Lnet/easyconn/ecsdk/ECCustomManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECCustomManager;->b()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAppStopService()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_requestAppStopService()I

    move-result v0

    return v0
.end method

.method public requestInstallPage(I[I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_requestInstallPage(I[I)I

    move-result p1

    return p1
.end method

.method public requestPhoneNotification(Z)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_requestPhoneNotification(Z)I

    move-result p1

    return p1
.end method

.method public resetTransportDevice(Landroid/hardware/usb/UsbDevice;)I
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->e(Landroid/hardware/usb/UsbDevice;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x3

    :goto_0
    return p1

    :cond_1
    :goto_1
    const-string p1, "ecsdk"

    const-string v0, "resetTransportDevice, mDeviceManager or device is null\n"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public resumeMirror()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_resumeMirror()I

    move-result v0

    return v0
.end method

.method public sendAudioPlayEnd(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_sendAudioPlayEnd(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)I

    move-result p1

    return p1
.end method

.method public sendBtnEvent(ILnet/easyconn/ecsdk/ECTypes$ECBtnEventType;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_sendBtnEvent2(ILnet/easyconn/ecsdk/ECTypes$ECBtnEventType;I)I

    move-result p1

    return p1
.end method

.method public sendBtnEvent(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_sendBtnEvent(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "sendBtnEvent: btn and type cann\'t be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public sendBulkDataToPhone([BI)I
    .locals 0

    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_sendBulkDataToPhone([BI)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "sendBulkDataToPhone: data cann\'t be null and length must be greater than zero"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public sendCarBluetooth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "sendCarBluetooth: name, address and pin cann\'t be all null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_sendCarBluetooth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCarStatus(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "sendCarStatus: carStatusType and carStatusValue cannot be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_sendCarStatus(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)I

    move-result p1

    return p1
.end method

.method public sendInputAction(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_sendInputAction(II)I

    move-result p1

    return p1
.end method

.method public sendInputSelection(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_sendInputSelection(II)I

    move-result p1

    return p1
.end method

.method public sendInputText(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_sendInputText(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendPhoneControlCarResult(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_sendPhoneControlCarResult(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public sendSystemKeyEvent(Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_sendSystemKeyEvent(Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;)I

    move-result p1

    return p1
.end method

.method public sendTouchEvent(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_sendTouchEvent(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "sendTouchEvent: touch and type cann\'t be null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public setBTBuildNetCarIp(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/easyconn/ecsdk/ebt/EBTService;->setBTBuildNetCarIp(Ljava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBTRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I
    .locals 2

    const-string v0, "ecsdk"

    const-string v1, "setBTRequestBuildNetRly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lnet/easyconn/ecsdk/ebt/EBTService;->setRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "setBTRequestBuildNetRly failed, param is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    monitor-exit p0

    return p1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConnectedBTAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "setCarBluetooth: param cann\'t both be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/easyconn/ecsdk/ECSDK;->native_setConnectedBTAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLogInfo(Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;->EC_LOG_OUT_FILE:Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p2, "ecsdk"

    const-string p3, "setLogInfo logFile parameter is invalid"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;->EC_LOG_OUT_LOGCAT:Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;

    const-string p3, ""

    :cond_1
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lnet/easyconn/ecsdk/WifiManager;->a(Z)V

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->getValue()I

    move-result v0

    invoke-static {v0}, Lnet/easyconn/ecsdk/WifiManager;->a(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/easyconn/ecsdk/ECSDK;->native_setLogInfo(Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;Ljava/lang/String;I)V

    return-void
.end method

.method public setWirelessDirectConnectPhoneIp(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_setWirelessDirectConnectPhoneIp(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public startBTService(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;)I
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/easyconn/ecsdk/ECSDK;->startBTService(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public startBTService(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;Ljava/lang/Boolean;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBTService proxy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "startBTSPPService callback is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BTRFCOMM:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p2, v0, :cond_2

    new-instance v0, Lnet/easyconn/ecsdk/ebt/EBTSPPService;

    invoke-direct {v0, p1}, Lnet/easyconn/ecsdk/ebt/EBTSPPService;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq p2, v0, :cond_3

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE_ENCRYPT:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p2, v0, :cond_4

    :cond_3
    new-instance v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-direct {v0, p1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    :cond_4
    iget-object p1, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    if-nez p1, :cond_5

    monitor-exit p0

    return v1

    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lnet/easyconn/ecsdk/ebt/EBTService;->startService(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;Ljava/lang/Boolean;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ebt/EBTService;->stopService()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    goto :goto_1

    :cond_6
    move v1, p1

    :goto_1
    monitor-exit p0

    return v1

    :cond_7
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startMirror()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_startMirror()I

    move-result v0

    return v0
.end method

.method public startOTAUpdate([Ljava/lang/String;I)I
    .locals 0

    if-eqz p1, :cond_0

    if-lez p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-ltz p2, :cond_2

    :cond_1
    const-string p1, "ecsdk"

    const-string p2, "softwareIds or softwareNum is invalid parameter"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_startOTAUpdate([Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public stopBTService()V
    .locals 2

    const-string v0, "ecsdk"

    const-string v1, "stopBTService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mListener:Lnet/easyconn/ecsdk/IECCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ebt/EBTService;->stopService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBTService:Lnet/easyconn/ecsdk/ebt/EBTService;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopMirror()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_stopMirror()V

    return-void
.end method

.method public stopOTAUpdate()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_stopOTAUpdate()V

    return-void
.end method

.method public stopPhoneNavigation()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_stopPhoneNavigation()I

    move-result v0

    return v0
.end method

.method public stopPhoneVR()I
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_stopPhoneVR()I

    move-result v0

    return v0
.end method

.method public unbindDirectTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    return-void
.end method

.method public unbindHidDevice()V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ECSDK;->native_unBindHidDevice()V

    return-void
.end method

.method public unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mBindMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ecsdk"

    const-string v1, "begin to unbindTransportDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mBindMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/easyconn/ecsdk/c;

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/c;->a()V

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECSDK;->mBindMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end to unbindTransportDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK;->mDeviceManager:Lnet/easyconn/ecsdk/DeviceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->a(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    :cond_1
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    return-void
.end method

.method public uploadAccelerometerStatus(III)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadAccelerometerStatus(III)I

    move-result p1

    return p1
.end method

.method public uploadAudioData([BI)I
    .locals 0

    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadAudioData([BI)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "uploadAudioData: data cann\'t be null, length must be greater than 0"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public uploadBTCallData(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadBTCallData(II[Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;)I

    move-result p1

    return p1
.end method

.method public uploadBTCallData(II[Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;)I
    .locals 2

    if-eqz p3, :cond_0

    array-length v0, p3

    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    const-string p1, "ecsdk"

    const-string p2, "uploadBTCallData no allow upload too large data on once"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadBTCallData(II[Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;)I

    move-result p1

    return p1
.end method

.method public uploadCarTheme(I)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadCarTheme(I)I

    move-result p1

    return p1
.end method

.method public uploadCompassBearing(FFF)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadCompassBearing(FFF)I

    move-result p1

    return p1
.end method

.method public uploadDoorStatus(ZZ[ZI)I
    .locals 0

    if-eqz p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadDoorStatus(ZZ[ZI)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "uploadDoorStatus: doorsOpened cann\'t be null and nDoors must be greater than zero"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public uploadDrivingStatus(Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string v0, "uploadDrivingStatus: status is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadDrivingStatus(Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;)I

    move-result p1

    return p1
.end method

.method public uploadEngineRpm(F)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadEngineRpm(F)I

    move-result p1

    return p1
.end method

.method public uploadEnvironmentStatus(FFI)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadEnvironmentStatus(FFI)I

    move-result p1

    return p1
.end method

.method public uploadFuelStatus(FIZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadFuelStatus(FIZ)I

    move-result p1

    return p1
.end method

.method public uploadGPSInfo([BI)I
    .locals 0

    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadGPSInfo([BI)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "uploadGPSInfo: data cann\'t be null and length must be greater than zero"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public uploadGearStatus(Lnet/easyconn/ecsdk/ECTypes$ECGearType;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ecsdk"

    const-string v0, "uploadGearStatus: gear is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadGearStatus(Lnet/easyconn/ecsdk/ECTypes$ECGearType;)I

    move-result p1

    return p1
.end method

.method public uploadGpsSatelliteStatus(II[II[II[ZI[FI[FI)I
    .locals 0

    if-eqz p3, :cond_1

    if-eqz p5, :cond_1

    if-eqz p7, :cond_1

    if-eqz p9, :cond_1

    if-nez p11, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p12}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadGpsSatelliteStatus(II[II[II[ZI[FI[FI)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "uploadGpsSatelliteStatus: prnData, snrDBData, usedInFix, azimuthsData, elevationData cann\'t be null and nTires must be greater than zero"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public uploadGyroscopeStatus(FFF)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadGyroscopeStatus(FFF)I

    move-result p1

    return p1
.end method

.method public uploadLightStatus(Lnet/easyconn/ecsdk/ECTypes$ECHeadLightStatus;Lnet/easyconn/ecsdk/ECTypes$ECTurnIndicatorStatus;Z)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadLightStatus(Lnet/easyconn/ecsdk/ECTypes$ECHeadLightStatus;Lnet/easyconn/ecsdk/ECTypes$ECTurnIndicatorStatus;Z)I

    move-result p1

    return p1
.end method

.method public uploadLocation(JFFFFFF)I
    .locals 0

    invoke-direct/range {p0 .. p8}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadLocation(JFFFFFF)I

    move-result p1

    return p1
.end method

.method public uploadNetLinkServiceInfo(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadNetLinkServiceInfo(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)I

    move-result p1

    return p1
.end method

.method public uploadNightModeStatus(Z)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadNightModeStatus(Z)I

    move-result p1

    return p1
.end method

.method public uploadOdometer(FI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadOdometer(FI)I

    move-result p1

    return p1
.end method

.method public uploadParkingBrakeStatus(Z)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadParkingBrakeStatus(Z)I

    move-result p1

    return p1
.end method

.method public uploadPassengerStatus(Z)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadPassengerStatus(Z)I

    move-result p1

    return p1
.end method

.method public uploadSensorError(Lnet/easyconn/ecsdk/ECTypes$ECSensorType;Lnet/easyconn/ecsdk/ECTypes$ECSensorErrorType;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadSensorError(Lnet/easyconn/ecsdk/ECTypes$ECSensorType;Lnet/easyconn/ecsdk/ECTypes$ECSensorErrorType;)I

    move-result p1

    return p1
.end method

.method public uploadStatistics(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadStatistics(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public uploadTirePressure([FI)I
    .locals 0

    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadTirePressure([FI)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "uploadTirePressure: tirePressure cann\'t be null and nTires must be greater than zero"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public uploadVehicleInfo([BI)I
    .locals 0

    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadVehicleInfo([BI)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk"

    const-string p2, "uploadVehicleInfo: data cann\'t be null and length must be greater than zero"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public uploadVehicleSpeed(FZF)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/easyconn/ecsdk/ECSDK;->native_uploadVehicleSpeed(FZF)I

    move-result p1

    return p1
.end method
