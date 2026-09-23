package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECSDK {
    public static final java.lang.String TAG = "ecsdk";
    public static final net.easyconn.ecsdk.ECSDK ourInstance = new net.easyconn.ecsdk.ECSDK();
    public net.easyconn.ecsdk.b mBLEHIDDevice;
    public net.easyconn.ecsdk.ebt.EBTService mBTService;
    public net.easyconn.ecsdk.DeviceManager mDeviceManager;
    public net.easyconn.ecsdk.IECCallback mListener;
    public volatile net.easyconn.ecsdk.ECTypes.ECTransportType mTransportType;
    public net.easyconn.ecsdk.d mWifiDirectManager;
    public net.easyconn.ecsdk.WifiManager mWifiManager;
    public volatile boolean mIsTransportOpened = false;
    public java.util.HashMap<net.easyconn.ecsdk.ECTypes.ECTransportType, net.easyconn.ecsdk.c> mBindMap = new java.util.HashMap<>();
    public boolean useJavaTransport = false;
    public boolean mUseBonjourMdnsClient = false;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ net.easyconn.ecsdk.ECTypes.ECTransportType a;

        public a(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
            this.a = eCTransportType;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (net.easyconn.ecsdk.ECSDK.this.mListener != null) {
                    net.easyconn.ecsdk.ECSDK.this.mListener.onPhoneConnected(this.a);
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    static {
        java.lang.System.loadLibrary("mediaserver");
        java.lang.System.loadLibrary("ECSDK");
    }

    public static net.easyconn.ecsdk.ECSDK getInstance() {
        return ourInstance;
    }

    private boolean judgetSupportMuxd(net.easyconn.ecsdk.ECTypes.ECCarDescription eCCarDescription, net.easyconn.ecsdk.ECTypes.ECOptions eCOptions) {
        boolean z = eCOptions.enableIOSUsb;
        int i = eCCarDescription.supportConnect;
        if ((i & 64) != 0 || (i & 128) <= 0) {
            return z;
        }
        boolean z2 = !native_isUsbmuxdExisted();
        android.util.Log.d("ecsdk", "judgetSupportMuxd enableIosUsb will be " + z2);
        return z2;
    }

    private native java.lang.String native_adbCommand(java.lang.String str);

    private native int native_audioRecord(byte[] bArr);

    private native int native_bindBLEHidDeviceError();

    private native int native_bindBlockTransportDevicePath(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str);

    private native int native_bindHidDevice(int i, net.easyconn.ecsdk.IECHIDDevice iECHIDDevice);

    private native int native_bindProxyTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str, int i);

    private native int native_bindTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IUsbDevice iUsbDevice);

    private native int native_bindTransportDevicePath(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str, boolean z);

    private native int native_bindTransportWiFiDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str);

    private native int native_changeCarNavigatorName(java.lang.String str);

    private native int native_changeCarUuid(java.lang.String str);

    private native int native_checkLicense(net.easyconn.ecsdk.ECTypes.ECCarAuthType eCCarAuthType, net.easyconn.ecsdk.ECTypes.ECCarAuthQueryType eCCarAuthQueryType);

    private native int native_checkLicenseThird(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, net.easyconn.ecsdk.IECCallback.IAuthCallBack iAuthCallBack, net.easyconn.ecsdk.ECTypes.ECCarAuthQueryType eCCarAuthQueryType);

    private native int native_checkOTAUpdate(java.lang.String str, java.lang.String str2, java.lang.String str3, net.easyconn.ecsdk.ECTypes.ECOTAUpdateCheckMode eCOTAUpdateCheckMode);

    private native boolean native_checkPhoneNetwork();

    private native int native_closeAppPage(net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage);

    private native int native_closeAppPage2(int i, int i2);

    private native int native_closeAppPage3(int i);

    private native int native_closeAudioRecord();

    private native void native_closeMirrorConnection();

    private native void native_closeNetLinkService();

    private native void native_closeTransport();

    private native void native_closeWifiService();

    private native int native_configSEParam(java.lang.String str, java.lang.String str2);

    private native int native_configTransportInfo(int i, int i2);

    private native void native_disableDownloadPhoneAppAudio();

    private native void native_disableDownloadPhoneAppHud();

    private native void native_disableDownloadSystemAudio();

    private native int native_enableDownloadPhoneAppAudio(boolean z, boolean z2, boolean z3, boolean z4, boolean z5);

    private native int native_enableDownloadPhoneAppHud();

    private native int native_enableDownloadPhoneAppHud(long j);

    private native int native_enableDownloadSystemAudio();

    private native void native_enableSandbox();

    private native int native_fillAudioData(int i, byte[] bArr, int i2);

    private native net.easyconn.ecsdk.ECTypes.ECForwardInfo native_forwardToPhone(net.easyconn.ecsdk.ECTypes.ECForwardInfo eCForwardInfo);

    private native java.lang.String native_generateQRCodeUrl(net.easyconn.ecsdk.ECTypes.ECQRInfo eCQRInfo);

    private native int native_getPhoneAppNetworkingCapability();

    private native int native_getRecordDataByteSize();

    private native java.lang.String native_getVersion();

    private native int native_initialize(android.content.Context context, net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication, net.easyconn.ecsdk.ECTypes.ECCarDescription eCCarDescription, net.easyconn.ecsdk.ECTypes.ECOptions eCOptions, net.easyconn.ecsdk.IECCallback iECCallback);

    private native boolean native_isUsbmuxdExisted();

    private native int native_openAppMainPage();

    private native int native_openAppPage(net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage);

    private native int native_openAppPage2(int i, int i2);

    private native int native_openAppVirtualMachine(int i, int i2);

    private native int native_openAudioRecord(net.easyconn.ecsdk.ECTypes.ECAudioCardDevice[] eCAudioCardDeviceArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    private native int native_openFtpSerer(java.lang.String str, java.lang.String str2);

    private native int native_openMirrorConnection(net.easyconn.ecsdk.ECTypes.ECMirrorConfig eCMirrorConfig, net.easyconn.ecsdk.ECTypes.ECMirrorSize eCMirrorSize);

    private native int native_openNetLinkService();

    private native int native_openTransport(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType);

    private native int native_openWifiService();

    private native int native_pauseMirror();

    private native int native_ping(java.lang.String str, int i);

    private native int native_playCarTTS(java.lang.String str, int i);

    private native net.easyconn.ecsdk.ECTypes.ECDevice[] native_queryDevices();

    private native net.easyconn.ecsdk.ECTypes.ECGPSInfo native_queryGPS();

    private native int native_queryPageIcon(int[] iArr);

    private native int native_queryPageList();

    private native net.easyconn.ecsdk.ECTypes.ECTimeInfo native_queryTime();

    private native int native_queryVRTips();

    private native int native_queryWeather();

    private native int native_registerCarCmds(net.easyconn.ecsdk.ECTypes.ECCarCmd[] eCCarCmdArr, net.easyconn.ecsdk.ECTypes.ECCarCmdEFFECTType eCCarCmdEFFECTType);

    private native int native_registerSimilarSoundingWords(java.lang.String str);

    private native void native_release();

    private native int native_requestAppStopService();

    private native int native_requestInstallPage(int i, int[] iArr);

    private native int native_requestPhoneNotification(boolean z);

    private native int native_resumeMirror();

    private native int native_sendAudioPlayEnd(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    private native int native_sendBtnEvent(net.easyconn.ecsdk.ECTypes.ECBtnCode eCBtnCode, net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType);

    private native int native_sendBtnEvent2(int i, net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType, int i2);

    private native int native_sendBulkDataToPhone(byte[] bArr, int i);

    private native int native_sendCarBluetooth(java.lang.String str, java.lang.String str2, java.lang.String str3);

    private native int native_sendCarStatus(net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType, net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue);

    private native int native_sendInputAction(int i, int i2);

    private native int native_sendInputSelection(int i, int i2);

    private native int native_sendInputText(java.lang.String str);

    private native int native_sendPhoneControlCarResult(java.lang.String str);

    private native int native_sendSystemKeyEvent(net.easyconn.ecsdk.ECTypes.ECSystemKeyCode eCSystemKeyCode);

    private native int native_sendTouchEvent(net.easyconn.ecsdk.ECTypes.ECTouchEventData eCTouchEventData, net.easyconn.ecsdk.ECTypes.ECTouchEventType eCTouchEventType);

    private native int native_setConnectedBTAddress(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4);

    private native void native_setLogInfo(net.easyconn.ecsdk.ECTypes.ECLogLevel eCLogLevel, net.easyconn.ecsdk.ECTypes.ECLogOutputType eCLogOutputType, java.lang.String str, int i);

    private native int native_setWirelessDirectConnectPhoneIp(java.lang.String str);

    private native int native_startMirror();

    private native int native_startOTAUpdate(java.lang.String[] strArr, int i);

    private native void native_stopMirror();

    private native void native_stopOTAUpdate();

    private native int native_stopPhoneNavigation();

    private native int native_stopPhoneVR();

    private native void native_unBindHidDevice();

    private native void native_unbindAllTransporDevice();

    private native void native_unbindTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType);

    private native int native_uploadAccelerometerStatus(int i, int i2, int i3);

    private native int native_uploadAudioData(byte[] bArr, int i);

    private native int native_uploadBTCallData(int i, int i2, net.easyconn.ecsdk.ECTypes.ECBTCallData[] eCBTCallDataArr);

    private native int native_uploadCarTheme(int i);

    private native int native_uploadCompassBearing(float f2, float f3, float f4);

    private native int native_uploadDoorStatus(boolean z, boolean z2, boolean[] zArr, int i);

    private native int native_uploadDrivingStatus(net.easyconn.ecsdk.ECTypes.ECDrivingStatus eCDrivingStatus);

    private native int native_uploadEngineRpm(float f2);

    private native int native_uploadEnvironmentStatus(float f2, float f3, int i);

    private native int native_uploadFuelStatus(float f2, int i, boolean z);

    private native int native_uploadGPSInfo(byte[] bArr, int i);

    private native int native_uploadGearStatus(net.easyconn.ecsdk.ECTypes.ECGearType eCGearType);

    private native int native_uploadGpsSatelliteStatus(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4, boolean[] zArr, int i5, float[] fArr, int i6, float[] fArr2, int i7);

    private native int native_uploadGyroscopeStatus(float f2, float f3, float f4);

    private native int native_uploadLightStatus(net.easyconn.ecsdk.ECTypes.ECHeadLightStatus eCHeadLightStatus, net.easyconn.ecsdk.ECTypes.ECTurnIndicatorStatus eCTurnIndicatorStatus, boolean z);

    private native int native_uploadLocation(long j, float f2, float f3, float f4, float f5, float f6, float f7);

    private native int native_uploadNetLinkServiceInfo(net.easyconn.ecsdk.ECTypes.ECNetLinkInfo eCNetLinkInfo);

    private native int native_uploadNightModeStatus(boolean z);

    private native int native_uploadOdometer(float f2, int i);

    private native int native_uploadParkingBrakeStatus(boolean z);

    private native int native_uploadPassengerStatus(boolean z);

    private native int native_uploadSensorError(net.easyconn.ecsdk.ECTypes.ECSensorType eCSensorType, net.easyconn.ecsdk.ECTypes.ECSensorErrorType eCSensorErrorType);

    private native int native_uploadStatistics(java.lang.String str, java.lang.String str2);

    private native int native_uploadTirePressure(float[] fArr, int i);

    private native int native_uploadVehicleInfo(byte[] bArr, int i);

    private native int native_uploadVehicleSpeed(float f2, boolean z, float f3);

    private native long natvie_getVersionCode();

    private native java.lang.String natvie_getWifiPhoneIp();

    public java.lang.String adbCommand(java.lang.String str) {
        return native_adbCommand(str);
    }

    public int audioRecord(byte[] bArr, int i) {
        return native_audioRecord(bArr);
    }

    public int bindAoaHidDevice(net.easyconn.ecsdk.AOAHIDDevice aOAHIDDevice) {
        return native_bindHidDevice(0, aOAHIDDevice);
    }

    public int bindBLEHidDevice(net.easyconn.ecsdk.ebt.IEBTHIDHandle iEBTHIDHandle) {
        if (this.mIsTransportOpened && this.mTransportType == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_WIFI) {
            net.easyconn.ecsdk.b bVar = new net.easyconn.ecsdk.b(iEBTHIDHandle);
            this.mBLEHIDDevice = bVar;
            return native_bindHidDevice(1, bVar);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("transport status: type[");
        sbO.append(this.mTransportType);
        sbO.append("] open[");
        sbO.append(this.mIsTransportOpened);
        sbO.append("] not allow bind ble hid device");
        android.util.Log.w("ecsdk", sbO.toString());
        return -1;
    }

    public void bindBLEHidDeviceError() {
        native_bindBLEHidDeviceError();
    }

    public int bindBlockTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str) {
        return native_bindBlockTransportDevicePath(eCTransportType, str);
    }

    public int bindDirectTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IUsbDevice iUsbDevice) {
        return native_bindTransportDevice(eCTransportType, iUsbDevice);
    }

    public int bindProxyTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str, int i) {
        return native_bindProxyTransportDevice(eCTransportType, str, i);
    }

    public int bindTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        new java.lang.Thread(new net.easyconn.ecsdk.ECSDK.a(eCTransportType)).start();
        return 0;
    }

    public int bindTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, android.hardware.usb.UsbDevice usbDevice) {
        net.easyconn.ecsdk.DeviceManager deviceManager = this.mDeviceManager;
        if (deviceManager == null || usbDevice == null) {
            android.util.Log.e("ecsdk", "bindTransportDevice, mDeviceManager or device is null\n");
            return -2;
        }
        try {
            return deviceManager.a(eCTransportType, usbDevice);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return -3;
        }
    }

    public int bindTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str, boolean z) {
        return native_bindTransportDevicePath(eCTransportType, str, z);
    }

    public int bindTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IUsbDevice iUsbDevice) {
        java.lang.String str;
        if (!this.useJavaTransport) {
            return native_bindTransportDevice(eCTransportType, iUsbDevice);
        }
        if (this.mBindMap.containsKey(eCTransportType)) {
            str = "this type=" + eCTransportType + " has been bound";
        } else {
            net.easyconn.ecsdk.c cVar = new net.easyconn.ecsdk.c(eCTransportType);
            if (cVar.a(iUsbDevice) == 0) {
                this.mBindMap.put(eCTransportType, cVar);
                return 0;
            }
            str = "failed to open device";
        }
        android.util.Log.e("ecsdk", str);
        return -1;
    }

    public int bindTransportWifiDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str) {
        if (net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_WIFI == eCTransportType || net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_APP == eCTransportType) {
            return native_bindTransportWiFiDevice(eCTransportType, str);
        }
        android.util.Log.e("ecsdk", "the function only support wifi transport");
        return -2;
    }

    public int changeCarNavigatorName(java.lang.String str) {
        return native_changeCarNavigatorName(str);
    }

    public int changeCarUuid(java.lang.String str) {
        return native_changeCarUuid(str);
    }

    public int checkLicense(net.easyconn.ecsdk.ECTypes.ECCarAuthType eCCarAuthType, net.easyconn.ecsdk.ECTypes.ECCarAuthQueryType eCCarAuthQueryType) {
        return native_checkLicense(eCCarAuthType, eCCarAuthQueryType);
    }

    public int checkLicenseThird(android.content.Context context, int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, net.easyconn.ecsdk.IECCallback.IAuthCallBack iAuthCallBack, net.easyconn.ecsdk.ECTypes.ECCarAuthQueryType eCCarAuthQueryType) {
        java.lang.String str6;
        java.lang.String absolutePath = str3;
        if (context == null || iAuthCallBack == null) {
            str6 = "context or authCallBack is null";
        } else {
            if (str != null && !str.isEmpty()) {
                if (absolutePath == null || str3.isEmpty() || !new java.io.File(str3).exists()) {
                    absolutePath = context.getFilesDir().getAbsolutePath();
                }
                return native_checkLicenseThird(i, str, str2, absolutePath, str4, str5, iAuthCallBack, eCCarAuthQueryType);
            }
            str6 = "invalid uuid : " + str;
        }
        android.util.Log.e("ecsdk", str6);
        return -2;
    }

    public int checkOTAUpdate(java.lang.String str, java.lang.String str2, java.lang.String str3, net.easyconn.ecsdk.ECTypes.ECOTAUpdateCheckMode eCOTAUpdateCheckMode) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            android.util.Log.e("ecsdk", "otaConfigPath or otaPackagePath is invalid parameter");
            return -2;
        }
        if (str3 == null) {
            str3 = "";
        }
        return native_checkOTAUpdate(str, str2, str3, eCOTAUpdateCheckMode);
    }

    public boolean checkPhoneNetwork() {
        return native_checkPhoneNetwork();
    }

    public int closeAppPage(int i) {
        return native_closeAppPage3(i);
    }

    public int closeAppPage(int i, int i2) {
        return native_closeAppPage2(i, i2);
    }

    public int closeAppPage(net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage) {
        if (eCAppPage != null) {
            return native_closeAppPage(eCAppPage);
        }
        android.util.Log.e("ecsdk", "closeAppPage: page cann't be null");
        return -2;
    }

    public int closeAudioRecord() {
        android.util.Log.d("ecsdk", "closeAudioRecord: call native_closeAudioRecord");
        return native_closeAudioRecord();
    }

    public void closeMirrorConnection() {
        native_closeMirrorConnection();
    }

    public void closeNetLinkService() {
        native_closeNetLinkService();
    }

    public void closeTransport() {
        this.mIsTransportOpened = false;
        native_closeTransport();
    }

    public void closeWiFiService() {
        net.easyconn.ecsdk.WifiManager wifiManager;
        synchronized (this) {
            if (!this.mUseBonjourMdnsClient && (wifiManager = this.mWifiManager) != null) {
                wifiManager.a();
            }
            net.easyconn.ecsdk.d dVar = this.mWifiDirectManager;
            if (dVar != null) {
                dVar.c();
            }
            native_closeWifiService();
        }
    }

    public int configSEParam(java.lang.String str, java.lang.String str2) {
        return native_configSEParam(str, str2);
    }

    public int configTransportInfo(int i, int i2) {
        return native_configTransportInfo(i, i2);
    }

    public void disableDownloadPhoneAppAudio() {
        native_disableDownloadPhoneAppAudio();
    }

    public void disableDownloadPhoneAppHud() {
        native_disableDownloadPhoneAppHud();
    }

    public void disableDownloadSystemAudio() {
        native_disableDownloadSystemAudio();
    }

    public int enableDownloadPhoneAppAudio(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return native_enableDownloadPhoneAppAudio(z, z2, z3, z4, z5);
    }

    public int enableDownloadPhoneAppHud() {
        return native_enableDownloadPhoneAppHud();
    }

    public int enableDownloadPhoneAppHud(long j) {
        return native_enableDownloadPhoneAppHud(j);
    }

    public int enableDownloadSystemAudio() {
        return native_enableDownloadSystemAudio();
    }

    public void enableSandbox() {
        native_enableSandbox();
    }

    public int fillAudioData(int i, byte[] bArr, int i2) {
        return native_fillAudioData(i, bArr, i2);
    }

    public net.easyconn.ecsdk.ECTypes.ECForwardInfo forwardToPhone(net.easyconn.ecsdk.ECTypes.ECForwardInfo eCForwardInfo) {
        return native_forwardToPhone(eCForwardInfo);
    }

    public java.lang.String generateQRCodeUrl(net.easyconn.ecsdk.ECTypes.ECQRInfo eCQRInfo) {
        return eCQRInfo == null ? "" : native_generateQRCodeUrl(eCQRInfo);
    }

    public net.easyconn.ecsdk.ECCustomProtocol getCustomProtocol() {
        return net.easyconn.ecsdk.ECCustomManager.c();
    }

    public int getPhoneAppNetworkingCapability() {
        return native_getPhoneAppNetworkingCapability();
    }

    public int getRecordDataByteSize() {
        android.util.Log.d("ecsdk", "audioRecord: getRecordDataByteSize");
        return native_getRecordDataByteSize();
    }

    public java.lang.String getSockServerPwd() {
        if (this.mListener != null) {
            return native_getSockServerPwd();
        }
        android.util.Log.d("ecsdk", "ECSDK is not inited!");
        return null;
    }

    public boolean getTransportOpened() {
        return this.mIsTransportOpened;
    }

    public java.lang.String getVersion() {
        return native_getVersion();
    }

    public long getVersionCode() {
        return natvie_getVersionCode();
    }

    public java.lang.String getWifiPhoneIp() {
        return natvie_getWifiPhoneIp();
    }

    public int initialize(android.content.Context context, net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication, net.easyconn.ecsdk.ECTypes.ECCarDescription eCCarDescription, net.easyconn.ecsdk.ECTypes.ECOptions eCOptions, net.easyconn.ecsdk.IECCallback iECCallback) {
        synchronized (this) {
            try {
                try {
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                }
                if (context == null || eCAuthentication == null || eCCarDescription == null || eCOptions == null || iECCallback == null) {
                    android.util.Log.e("ecsdk", "initialize: invalid parameters");
                    return -2;
                }
                if (eCAuthentication.uuid == null) {
                    android.util.Log.e("ecsdk", "initialize: ECAuthentication's parameter is invalid");
                    return -2;
                }
                if (eCCarDescription.mediaLevel != null && eCCarDescription.mediaOS != null && eCCarDescription.mediaModel != null && eCCarDescription.carBrand != null && eCCarDescription.carModel != null && eCCarDescription.micType != null && eCCarDescription.wakeupWord != null) {
                    if (this.mDeviceManager != null) {
                        android.util.Log.w("ecsdk", "initialize: already initialized");
                        return 0;
                    }
                    java.lang.String str = eCOptions.workspace;
                    if (str == null || str.isEmpty() || !new java.io.File(eCOptions.workspace).exists()) {
                        android.util.Log.w("ecsdk", "new file options.workspace=" + eCOptions.workspace + " error");
                        eCOptions.workspace = context.getFilesDir().getAbsolutePath();
                    }
                    android.util.Log.d("ecsdk", "options.workspace=" + eCOptions.workspace);
                    this.mListener = iECCallback;
                    this.useJavaTransport = false;
                    if (native_initialize(context, eCAuthentication, eCCarDescription, eCOptions, iECCallback) != 0) {
                        android.util.Log.e("ecsdk", "initialize: failed to native_initialize");
                        return -3;
                    }
                    java.lang.Thread.sleep(500L);
                    eCOptions.enableIOSUsb = judgetSupportMuxd(eCCarDescription, eCOptions);
                    this.mDeviceManager = new net.easyconn.ecsdk.DeviceManager(context, iECCallback, eCOptions, eCCarDescription);
                    java.lang.String str2 = eCOptions.config.bonjourMDNSServerPath;
                    if (str2 != null && !str2.isEmpty()) {
                        this.mUseBonjourMdnsClient = true;
                    }
                    this.mWifiManager = new net.easyconn.ecsdk.WifiManager(context, eCOptions.useDefaultMdnsPort);
                    if (eCOptions.enableWifiDirect) {
                        this.mWifiDirectManager = new net.easyconn.ecsdk.d(context);
                    }
                    return 0;
                }
                android.util.Log.e("ecsdk", "initialize: carDesc parameter is invalid");
                return -2;
            } catch (java.lang.Throwable th) {
                throw th;
            }
        }
    }

    public native java.lang.String native_getLocalServiceInfo();

    public native java.lang.String native_getSockServerPwd();

    public int openAppMainPage() {
        return native_openAppMainPage();
    }

    public int openAppPage(int i, int i2) {
        return native_openAppPage2(i, i2);
    }

    public int openAppPage(net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage) {
        if (eCAppPage != null) {
            return native_openAppPage(eCAppPage);
        }
        android.util.Log.e("ecsdk", "switchAppPage: page cann't be null");
        return -2;
    }

    public int openAppVirtualMachine(int i, int i2) {
        return native_openAppVirtualMachine(i, i2);
    }

    public int openAudioRecord(net.easyconn.ecsdk.ECTypes.ECAudioCardDevice[] eCAudioCardDeviceArr, int i, int i2, int i3, int i4, int i5) {
        android.util.Log.d("ecsdk", "audioRecord: openAudioRecord");
        return native_openAudioRecord(eCAudioCardDeviceArr, i, i2, i3, i4, 512, 2, i5, 0);
    }

    public int openAudioRecord(net.easyconn.ecsdk.ECTypes.ECAudioCardDevice[] eCAudioCardDeviceArr, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        android.util.Log.d("ecsdk", "audioRecord: openAudioRecord");
        return native_openAudioRecord(eCAudioCardDeviceArr, i, i2, i3, i4, i5, i6, i7, 0);
    }

    public int openAudioRecord(net.easyconn.ecsdk.ECTypes.ECAudioCardDevice[] eCAudioCardDeviceArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        android.util.Log.d("ecsdk", "audioRecord: openAudioRecord");
        return native_openAudioRecord(eCAudioCardDeviceArr, i, i2, i3, i4, i5, i6, i7, i8);
    }

    public int openFtpSerer(java.lang.String str, java.lang.String str2) {
        if (str != null && str2 != null) {
            return native_openFtpSerer(str, str2);
        }
        android.util.Log.e("ecsdk", "openFtpSerer: user and pwd cann't be null");
        return -2;
    }

    public int openMirrorConnection(net.easyconn.ecsdk.ECTypes.ECMirrorConfig eCMirrorConfig, net.easyconn.ecsdk.ECTypes.ECMirrorSize eCMirrorSize) {
        if (eCMirrorConfig != null && eCMirrorSize != null) {
            return native_openMirrorConnection(eCMirrorConfig, eCMirrorSize);
        }
        android.util.Log.d("ecsdk", "openMirrorConnection: config and mirrorSize cann't be null");
        return -2;
    }

    public int openNetLinkService() {
        return native_openNetLinkService();
    }

    public int openTransport(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        if (eCTransportType == null) {
            android.util.Log.e("ecsdk", "openTransport: type is null");
            return -2;
        }
        int iNative_openTransport = native_openTransport(eCTransportType);
        if (iNative_openTransport == 0) {
            this.mIsTransportOpened = true;
            this.mTransportType = eCTransportType;
        }
        return iNative_openTransport;
    }

    public int openWiFiService() {
        synchronized (this) {
            if (native_openWifiService() != 0) {
                android.util.Log.e("ecsdk", "openWiFiService: native_openWifiService failed");
                return -1;
            }
            if (!this.mUseBonjourMdnsClient) {
                net.easyconn.ecsdk.WifiManager wifiManager = this.mWifiManager;
                if (wifiManager == null) {
                    android.util.Log.e("ecsdk", "openWiFiService: not initialized");
                    return -1;
                }
                if (wifiManager.b() != 0) {
                    return -3;
                }
            }
            net.easyconn.ecsdk.d dVar = this.mWifiDirectManager;
            if (dVar != null) {
                dVar.a(this.mWifiManager);
            }
            return 0;
        }
    }

    public int openWiFiService(java.lang.String str, boolean z) {
        synchronized (this) {
            if (native_openWifiService() != 0) {
                android.util.Log.e("ecsdk", "openWiFiService: native_openWifiService failed");
                return -1;
            }
            if (!this.mUseBonjourMdnsClient) {
                net.easyconn.ecsdk.WifiManager wifiManager = this.mWifiManager;
                if (wifiManager == null) {
                    android.util.Log.e("ecsdk", "openWiFiService: not initialized");
                    return -1;
                }
                if (wifiManager.a(str, z) != 0) {
                    return -3;
                }
            }
            net.easyconn.ecsdk.d dVar = this.mWifiDirectManager;
            if (dVar != null) {
                dVar.a(this.mWifiManager);
            }
            return 0;
        }
    }

    public int pauseMirror() {
        return native_pauseMirror();
    }

    public int ping(java.lang.String str, int i) {
        if (str != null && !str.isEmpty()) {
            return native_ping(str, i);
        }
        android.util.Log.e("ecsdk", "dest is null or empty");
        return -2;
    }

    public int playCarTTS(java.lang.String str, int i) {
        if (str != null && str.length() != 0) {
            return native_playCarTTS(str, i);
        }
        android.util.Log.e("ecsdk", "playCarTTS: text is null or empty");
        return -2;
    }

    public net.easyconn.ecsdk.ECTypes.ECDevice[] queryDevices() {
        return native_queryDevices();
    }

    public net.easyconn.ecsdk.ECTypes.ECGPSInfo queryGPS() {
        return native_queryGPS();
    }

    public int queryPageIcon(int[] iArr) {
        return native_queryPageIcon(iArr);
    }

    public int queryPageList() {
        return native_queryPageList();
    }

    public net.easyconn.ecsdk.ECTypes.ECTimeInfo queryTime() {
        return native_queryTime();
    }

    public int queryVRTips() {
        return native_queryVRTips();
    }

    public int queryWeather() {
        return native_queryWeather();
    }

    public int registerCarCmds(net.easyconn.ecsdk.ECTypes.ECCarCmd[] eCCarCmdArr, net.easyconn.ecsdk.ECTypes.ECCarCmdEFFECTType eCCarCmdEFFECTType) {
        if (eCCarCmdArr != null && eCCarCmdArr.length > 0) {
            return native_registerCarCmds(eCCarCmdArr, eCCarCmdEFFECTType);
        }
        android.util.Log.e("ecsdk", "registerCarCmds: parameters are not valid");
        return -2;
    }

    public int registerSimilarSoundingWords(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return -2;
        }
        return native_registerSimilarSoundingWords(str);
    }

    public void release() {
        synchronized (this) {
            net.easyconn.ecsdk.WifiManager wifiManager = this.mWifiManager;
            if (wifiManager != null) {
                wifiManager.e();
                this.mWifiManager = null;
            }
            net.easyconn.ecsdk.d dVar = this.mWifiDirectManager;
            if (dVar != null) {
                dVar.c();
                this.mWifiDirectManager = null;
            }
            native_release();
            native_unbindAllTransporDevice();
            net.easyconn.ecsdk.DeviceManager deviceManager = this.mDeviceManager;
            if (deviceManager != null) {
                deviceManager.d();
                this.mDeviceManager = null;
            }
            net.easyconn.ecsdk.ebt.EBTService eBTService = this.mBTService;
            if (eBTService != null) {
                eBTService.stopService();
                this.mBTService = null;
            }
            net.easyconn.ecsdk.ECCustomManager.c().b();
            this.mListener = null;
        }
    }

    public int requestAppStopService() {
        return native_requestAppStopService();
    }

    public int requestInstallPage(int i, int[] iArr) {
        return native_requestInstallPage(i, iArr);
    }

    public int requestPhoneNotification(boolean z) {
        return native_requestPhoneNotification(z);
    }

    public int resetTransportDevice(android.hardware.usb.UsbDevice usbDevice) {
        net.easyconn.ecsdk.DeviceManager deviceManager = this.mDeviceManager;
        if (deviceManager == null || usbDevice == null) {
            android.util.Log.e("ecsdk", "resetTransportDevice, mDeviceManager or device is null\n");
            return -2;
        }
        try {
            return deviceManager.e(usbDevice);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return -3;
        }
    }

    public int resumeMirror() {
        return native_resumeMirror();
    }

    public int sendAudioPlayEnd(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        return native_sendAudioPlayEnd(eCAudioType);
    }

    public int sendBtnEvent(int i, net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType, int i2) {
        return native_sendBtnEvent2(i, eCBtnEventType, i2);
    }

    public int sendBtnEvent(net.easyconn.ecsdk.ECTypes.ECBtnCode eCBtnCode, net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType) {
        if (eCBtnCode != null && eCBtnEventType != null) {
            return native_sendBtnEvent(eCBtnCode, eCBtnEventType);
        }
        android.util.Log.e("ecsdk", "sendBtnEvent: btn and type cann't be null");
        return -2;
    }

    public int sendBulkDataToPhone(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            return native_sendBulkDataToPhone(bArr, i);
        }
        android.util.Log.e("ecsdk", "sendBulkDataToPhone: data cann't be null and length must be greater than zero");
        return -2;
    }

    public int sendCarBluetooth(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (str != null || str2 != null || str3 != null) {
            return native_sendCarBluetooth(str, str2, str3);
        }
        android.util.Log.e("ecsdk", "sendCarBluetooth: name, address and pin cann't be all null");
        return -2;
    }

    public int sendCarStatus(net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType, net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue) {
        if (eCCarStatusType != null || eCCarStatusValue != null) {
            return native_sendCarStatus(eCCarStatusType, eCCarStatusValue);
        }
        android.util.Log.e("ecsdk", "sendCarStatus: carStatusType and carStatusValue cannot be null");
        return -2;
    }

    public int sendInputAction(int i, int i2) {
        return native_sendInputAction(i, i2);
    }

    public int sendInputSelection(int i, int i2) {
        return native_sendInputSelection(i, i2);
    }

    public int sendInputText(java.lang.String str) {
        return native_sendInputText(str);
    }

    public int sendPhoneControlCarResult(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return -2;
        }
        return native_sendPhoneControlCarResult(str);
    }

    public int sendSystemKeyEvent(net.easyconn.ecsdk.ECTypes.ECSystemKeyCode eCSystemKeyCode) {
        return native_sendSystemKeyEvent(eCSystemKeyCode);
    }

    public int sendTouchEvent(net.easyconn.ecsdk.ECTypes.ECTouchEventData eCTouchEventData, net.easyconn.ecsdk.ECTypes.ECTouchEventType eCTouchEventType) {
        if (eCTouchEventData != null && eCTouchEventType != null) {
            return native_sendTouchEvent(eCTouchEventData, eCTouchEventType);
        }
        android.util.Log.d("ecsdk", "sendTouchEvent: touch and type cann't be null");
        return -2;
    }

    public int setBTBuildNetCarIp(java.lang.String str) {
        net.easyconn.ecsdk.ebt.EBTService eBTService;
        synchronized (this) {
            if (this.mListener != null && (eBTService = this.mBTService) != null) {
                return eBTService.setBTBuildNetCarIp(str);
            }
            return -1;
        }
    }

    public int setBTRequestBuildNetRly(java.lang.String str, net.easyconn.ecsdk.ECTypes.EBTRequestBuildNetRly eBTRequestBuildNetRly) {
        net.easyconn.ecsdk.ebt.EBTService eBTService;
        android.util.Log.d("ecsdk", "setBTRequestBuildNetRly");
        synchronized (this) {
            if (this.mListener != null && (eBTService = this.mBTService) != null) {
                if (str != null && eBTRequestBuildNetRly != null) {
                    return eBTService.setRequestBuildNetRly(str, eBTRequestBuildNetRly);
                }
                android.util.Log.e("ecsdk", "setBTRequestBuildNetRly failed, param is null");
                return -2;
            }
            return -1;
        }
    }

    public int setConnectedBTAddress(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        if (str != null || str2 != null || str3 != null || str4 != null) {
            return native_setConnectedBTAddress(str, str2, str3, str4);
        }
        android.util.Log.e("ecsdk", "setCarBluetooth: param cann't both be null");
        return -2;
    }

    public void setLogInfo(net.easyconn.ecsdk.ECTypes.ECLogLevel eCLogLevel, net.easyconn.ecsdk.ECTypes.ECLogOutputType eCLogOutputType, java.lang.String str, int i) {
        if (eCLogOutputType == net.easyconn.ecsdk.ECTypes.ECLogOutputType.EC_LOG_OUT_FILE && (str == null || str.isEmpty())) {
            android.util.Log.e("ecsdk", "setLogInfo logFile parameter is invalid");
            eCLogOutputType = net.easyconn.ecsdk.ECTypes.ECLogOutputType.EC_LOG_OUT_LOGCAT;
            str = "";
        }
        net.easyconn.ecsdk.WifiManager.a((i & 32) != 0);
        net.easyconn.ecsdk.WifiManager.a(eCLogLevel.getValue());
        native_setLogInfo(eCLogLevel, eCLogOutputType, str, i);
    }

    public int setWirelessDirectConnectPhoneIp(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return -2;
        }
        return native_setWirelessDirectConnectPhoneIp(str);
    }

    public int startBTService(android.content.Context context, net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack iEBTServiceCallBack) {
        return startBTService(context, eCTransportType, iEBTServiceCallBack, java.lang.Boolean.FALSE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0049 A[Catch: all -> 0x005f, DONT_GENERATE, TryCatch #0 {, blocks: (B:7:0x0022, B:9:0x0027, B:12:0x002c, B:14:0x0030, B:20:0x0043, B:21:0x0045, B:23:0x0049, B:25:0x004b, B:27:0x0051, B:29:0x005b, B:15:0x0036, B:17:0x003a, B:19:0x003e, B:31:0x005d), top: B:36:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004b A[Catch: all -> 0x005f, TryCatch #0 {, blocks: (B:7:0x0022, B:9:0x0027, B:12:0x002c, B:14:0x0030, B:20:0x0043, B:21:0x0045, B:23:0x0049, B:25:0x004b, B:27:0x0051, B:29:0x005b, B:15:0x0036, B:17:0x003a, B:19:0x003e, B:31:0x005d), top: B:36:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int startBTService(android.content.Context r3, net.easyconn.ecsdk.ECTypes.ECTransportType r4, net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack r5, java.lang.Boolean r6) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "startBTService proxy = "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "ecsdk"
            android.util.Log.d(r1, r0)
            if (r5 != 0) goto L21
            java.lang.String r3 = "ecsdk"
            java.lang.String r4 = "startBTSPPService callback is null"
            android.util.Log.e(r3, r4)
            r3 = -2
            return r3
        L21:
            monitor-enter(r2)
            net.easyconn.ecsdk.IECCallback r0 = r2.mListener     // Catch: java.lang.Throwable -> L5f
            r1 = -1
            if (r0 == 0) goto L5d
            net.easyconn.ecsdk.ebt.EBTService r0 = r2.mBTService     // Catch: java.lang.Throwable -> L5f
            if (r0 == 0) goto L2c
            goto L5d
        L2c:
            net.easyconn.ecsdk.ECTypes$ECTransportType r0 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_BTRFCOMM     // Catch: java.lang.Throwable -> L5f
            if (r4 != r0) goto L36
            net.easyconn.ecsdk.ebt.EBTSPPService r0 = new net.easyconn.ecsdk.ebt.EBTSPPService     // Catch: java.lang.Throwable -> L5f
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L5f
            goto L43
        L36:
            net.easyconn.ecsdk.ECTypes$ECTransportType r0 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_BLE     // Catch: java.lang.Throwable -> L5f
            if (r4 == r0) goto L3e
            net.easyconn.ecsdk.ECTypes$ECTransportType r0 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_BLE_ENCRYPT     // Catch: java.lang.Throwable -> L5f
            if (r4 != r0) goto L45
        L3e:
            net.easyconn.ecsdk.ebt.EBTBLEService r0 = new net.easyconn.ecsdk.ebt.EBTBLEService     // Catch: java.lang.Throwable -> L5f
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L5f
        L43:
            r2.mBTService = r0     // Catch: java.lang.Throwable -> L5f
        L45:
            net.easyconn.ecsdk.ebt.EBTService r3 = r2.mBTService     // Catch: java.lang.Throwable -> L5f
            if (r3 != 0) goto L4b
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5f
            return r1
        L4b:
            int r3 = r3.startService(r4, r5, r6)     // Catch: java.lang.Throwable -> L5f
            if (r3 == 0) goto L5a
            net.easyconn.ecsdk.ebt.EBTService r3 = r2.mBTService     // Catch: java.lang.Throwable -> L5f
            r3.stopService()     // Catch: java.lang.Throwable -> L5f
            r3 = 0
            r2.mBTService = r3     // Catch: java.lang.Throwable -> L5f
            goto L5b
        L5a:
            r1 = r3
        L5b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5f
            return r1
        L5d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5f
            return r1
        L5f:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5f
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.ecsdk.ECSDK.startBTService(android.content.Context, net.easyconn.ecsdk.ECTypes$ECTransportType, net.easyconn.ecsdk.IECCallback$IEBTServiceCallBack, java.lang.Boolean):int");
    }

    public int startMirror() {
        return native_startMirror();
    }

    public int startOTAUpdate(java.lang.String[] strArr, int i) {
        if ((strArr == null || i > 0) && (strArr != null || i < 0)) {
            return native_startOTAUpdate(strArr, i);
        }
        android.util.Log.e("ecsdk", "softwareIds or softwareNum is invalid parameter");
        return -2;
    }

    public void stopBTService() {
        net.easyconn.ecsdk.ebt.EBTService eBTService;
        android.util.Log.d("ecsdk", "stopBTService");
        synchronized (this) {
            if (this.mListener != null && (eBTService = this.mBTService) != null) {
                eBTService.stopService();
                this.mBTService = null;
            }
        }
    }

    public void stopMirror() {
        native_stopMirror();
    }

    public void stopOTAUpdate() {
        native_stopOTAUpdate();
    }

    public int stopPhoneNavigation() {
        return native_stopPhoneNavigation();
    }

    public int stopPhoneVR() {
        return native_stopPhoneVR();
    }

    public void unbindDirectTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        native_unbindTransportDevice(eCTransportType);
    }

    public void unbindHidDevice() {
        native_unBindHidDevice();
    }

    public void unbindTransportDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        if (this.mBindMap.containsKey(eCTransportType)) {
            android.util.Log.d("ecsdk", "begin to unbindTransportDevice");
            this.mBindMap.get(eCTransportType).a();
            this.mBindMap.remove(eCTransportType);
            android.util.Log.d("ecsdk", "end to unbindTransportDevice");
        }
        net.easyconn.ecsdk.DeviceManager deviceManager = this.mDeviceManager;
        if (deviceManager != null) {
            deviceManager.a(eCTransportType);
        }
        native_unbindTransportDevice(eCTransportType);
    }

    public int uploadAccelerometerStatus(int i, int i2, int i3) {
        return native_uploadAccelerometerStatus(i, i2, i3);
    }

    public int uploadAudioData(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            return native_uploadAudioData(bArr, i);
        }
        android.util.Log.e("ecsdk", "uploadAudioData: data cann't be null, length must be greater than 0");
        return -2;
    }

    public int uploadBTCallData(int i, int i2) {
        if (i2 == 1) {
            return -2;
        }
        return native_uploadBTCallData(i, i2, null);
    }

    public int uploadBTCallData(int i, int i2, net.easyconn.ecsdk.ECTypes.ECBTCallData[] eCBTCallDataArr) {
        if (eCBTCallDataArr == null || eCBTCallDataArr.length < 255) {
            return native_uploadBTCallData(i, i2, eCBTCallDataArr);
        }
        android.util.Log.e("ecsdk", "uploadBTCallData no allow upload too large data on once");
        return -1;
    }

    public int uploadCarTheme(int i) {
        return native_uploadCarTheme(i);
    }

    public int uploadCompassBearing(float f2, float f3, float f4) {
        return native_uploadCompassBearing(f2, f3, f4);
    }

    public int uploadDoorStatus(boolean z, boolean z2, boolean[] zArr, int i) {
        if (zArr != null && i > 0) {
            return native_uploadDoorStatus(z, z2, zArr, i);
        }
        android.util.Log.e("ecsdk", "uploadDoorStatus: doorsOpened cann't be null and nDoors must be greater than zero");
        return -2;
    }

    public int uploadDrivingStatus(net.easyconn.ecsdk.ECTypes.ECDrivingStatus eCDrivingStatus) {
        if (eCDrivingStatus != null) {
            return native_uploadDrivingStatus(eCDrivingStatus);
        }
        android.util.Log.e("ecsdk", "uploadDrivingStatus: status is null");
        return -2;
    }

    public int uploadEngineRpm(float f2) {
        return native_uploadEngineRpm(f2);
    }

    public int uploadEnvironmentStatus(float f2, float f3, int i) {
        return native_uploadEnvironmentStatus(f2, f3, i);
    }

    public int uploadFuelStatus(float f2, int i, boolean z) {
        return native_uploadFuelStatus(f2, i, z);
    }

    public int uploadGPSInfo(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            return native_uploadGPSInfo(bArr, i);
        }
        android.util.Log.e("ecsdk", "uploadGPSInfo: data cann't be null and length must be greater than zero");
        return -2;
    }

    public int uploadGearStatus(net.easyconn.ecsdk.ECTypes.ECGearType eCGearType) {
        if (eCGearType != null) {
            return native_uploadGearStatus(eCGearType);
        }
        android.util.Log.e("ecsdk", "uploadGearStatus: gear is null");
        return -2;
    }

    public int uploadGpsSatelliteStatus(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4, boolean[] zArr, int i5, float[] fArr, int i6, float[] fArr2, int i7) {
        if (iArr != null && iArr2 != null && zArr != null && fArr != null && fArr2 != null) {
            return native_uploadGpsSatelliteStatus(i, i2, iArr, i3, iArr2, i4, zArr, i5, fArr, i6, fArr2, i7);
        }
        android.util.Log.e("ecsdk", "uploadGpsSatelliteStatus: prnData, snrDBData, usedInFix, azimuthsData, elevationData cann't be null and nTires must be greater than zero");
        return -2;
    }

    public int uploadGyroscopeStatus(float f2, float f3, float f4) {
        return native_uploadGyroscopeStatus(f2, f3, f4);
    }

    public int uploadLightStatus(net.easyconn.ecsdk.ECTypes.ECHeadLightStatus eCHeadLightStatus, net.easyconn.ecsdk.ECTypes.ECTurnIndicatorStatus eCTurnIndicatorStatus, boolean z) {
        return native_uploadLightStatus(eCHeadLightStatus, eCTurnIndicatorStatus, z);
    }

    public int uploadLocation(long j, float f2, float f3, float f4, float f5, float f6, float f7) {
        return native_uploadLocation(j, f2, f3, f4, f5, f6, f7);
    }

    public int uploadNetLinkServiceInfo(net.easyconn.ecsdk.ECTypes.ECNetLinkInfo eCNetLinkInfo) {
        if (eCNetLinkInfo == null) {
            return -2;
        }
        return native_uploadNetLinkServiceInfo(eCNetLinkInfo);
    }

    public int uploadNightModeStatus(boolean z) {
        return native_uploadNightModeStatus(z);
    }

    public int uploadOdometer(float f2, int i) {
        return native_uploadOdometer(f2, i);
    }

    public int uploadParkingBrakeStatus(boolean z) {
        return native_uploadParkingBrakeStatus(z);
    }

    public int uploadPassengerStatus(boolean z) {
        return native_uploadPassengerStatus(z);
    }

    public int uploadSensorError(net.easyconn.ecsdk.ECTypes.ECSensorType eCSensorType, net.easyconn.ecsdk.ECTypes.ECSensorErrorType eCSensorErrorType) {
        return native_uploadSensorError(eCSensorType, eCSensorErrorType);
    }

    public int uploadStatistics(java.lang.String str, java.lang.String str2) {
        return native_uploadStatistics(str, str2);
    }

    public int uploadTirePressure(float[] fArr, int i) {
        if (fArr != null && i > 0) {
            return native_uploadTirePressure(fArr, i);
        }
        android.util.Log.e("ecsdk", "uploadTirePressure: tirePressure cann't be null and nTires must be greater than zero");
        return -2;
    }

    public int uploadVehicleInfo(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            return native_uploadVehicleInfo(bArr, i);
        }
        android.util.Log.e("ecsdk", "uploadVehicleInfo: data cann't be null and length must be greater than zero");
        return -2;
    }

    public int uploadVehicleSpeed(float f2, boolean z, float f3) {
        return native_uploadVehicleSpeed(f2, z, f3);
    }
}
