package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public interface IECDLNACallback {
    void onDlnaNext();

    void onDlnaPause();

    void onDlnaPlay();

    void onDlnaPrevious();

    void onDlnaSeekto(long j);

    void onDlnaSetMute(boolean z);

    void onDlnaSetSource(java.lang.String str, java.lang.String str2);

    void onDlnaSetVolume(int i);

    void onDlnaStop();
}
