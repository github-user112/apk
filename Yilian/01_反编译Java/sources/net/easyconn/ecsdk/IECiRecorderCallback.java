package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public interface IECiRecorderCallback {
    void onMirrorDisconnected();

    void onMirrorVideoReceived(byte[] bArr, int i, int i2, int i3, int i4, int i5);

    void onPhoneAudioData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2);

    void onPhoneAudioStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onPhoneAudioStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);
}
