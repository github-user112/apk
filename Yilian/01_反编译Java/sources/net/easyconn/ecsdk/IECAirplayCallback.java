package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public interface IECAirplayCallback {
    void onAirPlayPlaybackOpen(java.lang.String str, float f2);

    void onAirPlayPlaybackPause();

    void onAirPlayPlaybackPlay();

    void onAirPlayPlaybackSeek(long j);

    void onAirPlayPlaybackStop();

    void onAirplayVideoReceived(byte[] bArr, int i, int i2);

    void onLockScreenStatus(boolean z);

    void onMirrorDisconnected();

    void onPhoneAudioData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr);

    void onPhoneAudioFlush(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    void onPhoneAudioSetVolume(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, int i);

    void onPhoneAudioStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo);

    void onPhoneAudioStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);
}
