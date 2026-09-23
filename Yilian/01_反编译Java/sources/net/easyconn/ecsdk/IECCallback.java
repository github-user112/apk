package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public interface IECCallback {

    public interface IAuthCallBack {
        void onLicenseAuthResult(int i, java.lang.String str);
    }

    public interface IEBTServiceCallBack {
        void onPhoneAPInfo(net.easyconn.ecsdk.ECTypes.EBTNetInfo eBTNetInfo);

        void onPhoneBuildNetFinish();

        void onRequestBuildNet(net.easyconn.ecsdk.ECTypes.EBTClientInfo eBTClientInfo);

        void onRequestBuildNetCancel();
    }

    void onBulkDataReceived(java.nio.ByteBuffer byteBuffer, int i);

    void onCallAction(net.easyconn.ecsdk.ECTypes.ECCallType eCCallType, java.lang.String str, java.lang.String str2);

    void onCarCmdNotified(net.easyconn.ecsdk.ECTypes.ECCarCmd eCCarCmd);

    void onECStatusMessage(net.easyconn.ecsdk.ECTypes.ECStatusMessage eCStatusMessage);

    void onInputCancel();

    void onInputSelection(int i, int i2);

    void onInputStart(net.easyconn.ecsdk.ECTypes.ECInputInfo eCInputInfo);

    void onInputText(java.lang.String str);

    void onLicenseAuthFail(int i, java.lang.String str);

    void onLicenseAuthSuccess(int i, java.lang.String str);

    void onMirrorDisconnected();

    void onMirrorRequestReconnect();

    void onMirrorVideoInfoChanged(int i, int i2, int i3);

    void onMirrorVideoReceived(byte[] bArr, int i, int i2, net.easyconn.ecsdk.ECTypes.ECVideoInfo eCVideoInfo);

    void onOTAUpdateCheckResult(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i, net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr2, int i2);

    void onOTAUpdateCompleted(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i);

    void onOTAUpdateError(int i, java.lang.String str);

    void onOTAUpdateProgress(java.lang.String str, float f2, int i, int i2);

    void onOTAUpdateRequestDownload(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i);

    void onPageIconReceived(net.easyconn.ecsdk.ECTypes.ECIconInfo[] eCIconInfoArr);

    void onPageInstallResult(net.easyconn.ecsdk.ECTypes.ECPageInstallResult[] eCPageInstallResultArr);

    void onPageListReceived(net.easyconn.ecsdk.ECTypes.ECPageInfo[] eCPageInfoArr);

    void onPageStatusChanged(int i, int i2, int i3);

    void onParallelWorldAudioSource(int i);

    void onParallelWorldCache(net.easyconn.ecsdk.ECTypes.ECParallelWorldCache eCParallelWorldCache);

    void onPhoneAppExited();

    void onPhoneAppHUD(net.easyconn.ecsdk.ECTypes.ECNavigationHudInfo eCNavigationHudInfo);

    void onPhoneAppHUDLaneGuidancePicture(net.easyconn.ecsdk.ECTypes.ECHudLaneGuidancePictureInfo eCHudLaneGuidancePictureInfo);

    void onPhoneAppHUDRoadJunctionPicture(net.easyconn.ecsdk.ECTypes.ECHudRoadJunctionPictureInfo eCHudRoadJunctionPictureInfo);

    void onPhoneAppInfo(java.lang.String str);

    void onPhoneAppMusicInfo(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo);

    void onPhoneAppMusicInfoCover(net.easyconn.ecsdk.ECTypes.ECMusicInfoCover eCMusicInfoCover);

    void onPhoneAudioData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2);

    void onPhoneAudioInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onPhoneAudioSetVolume(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, int i);

    void onPhoneAudioStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onPhoneAudioStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onPhoneBluetoothState(int i, java.lang.String str);

    void onPhoneConnected(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType);

    void onPhoneControlCarRequest(java.lang.String str);

    void onPhoneDisconnected(int i);

    void onPhoneNotification(net.easyconn.ecsdk.ECTypes.ECPhoneNotification eCPhoneNotification);

    int onStartCarMicRecord(net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onStopCarMicRecord();

    void onTransportStopedByApp();

    void onVRTextReceived(net.easyconn.ecsdk.ECTypes.ECVRTextInfo eCVRTextInfo);

    void onVRTipsReceived(java.lang.String str);

    void onVirtualInstStateChanged(net.easyconn.ecsdk.ECTypes.ECVirtualInstStateData eCVirtualInstStateData);

    void onWeatherReceived(java.lang.String str);
}
