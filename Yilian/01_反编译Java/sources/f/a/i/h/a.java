package f.a.i.h;

/* loaded from: classes.dex */
public interface a {
    int onCarMicRecord(boolean z, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2);

    void onInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onMusicInfo(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo);

    void onQtData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2);

    void onQtStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onQtStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onTalkieRecordStatus(boolean z);

    void onVRStatus(boolean z);

    void onVoiceCMD(net.easyconn.ecsdk.ECTypes.ECCarCmd eCCarCmd);

    void onVolume(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, float f2);
}
