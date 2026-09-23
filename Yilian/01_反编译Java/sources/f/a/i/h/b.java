package f.a.i.h;

/* loaded from: classes.dex */
public interface b {
    void notifyPhoneDisconnect(int i);

    void onA2dpAcquire(boolean z, boolean z2);

    void onAcquire2BluePhoneView();

    void onAppMusicStatus(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo);

    void onAppNaviStatus(boolean z);

    void onAppVRStatus(boolean z);

    void onCustomVrShow(boolean z);

    void onLicenseAuthSuccess();

    void onNavigationInfo(net.easyconn.ecsdk.ECTypes.ECNavigationHudInfo eCNavigationHudInfo);

    void onOpenBluetoothSetting();

    void onPhoneAudioStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onPhoneAudioStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onPhoneCallAction(net.easyconn.ecsdk.ECTypes.ECCallType eCCallType, java.lang.String str, java.lang.String str2);

    void onPhoneVRText(net.easyconn.ecsdk.ECTypes.ECVRTextInfo eCVRTextInfo);

    boolean onPullToFront();

    void onShortcutListReceived(java.lang.String str);

    void onTalkieRecordStatus(boolean z);

    void onVRTips(java.lang.String str);

    void onWeatherInfo(java.lang.String str);
}
