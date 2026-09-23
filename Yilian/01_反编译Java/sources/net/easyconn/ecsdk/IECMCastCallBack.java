package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public interface IECMCastCallBack {
    void onAudioPlay(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2);

    @java.lang.Deprecated
    void onAudioReceived(byte[] bArr, int i, int i2, long j);

    void onAudioStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onAudioStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onMirrorVideoReceived(byte[] bArr, int i, int i2, long j, net.easyconn.ecsdk.ECTypes.ECVideoInfo eCVideoInfo);

    void onStatusMessage(int i);
}
