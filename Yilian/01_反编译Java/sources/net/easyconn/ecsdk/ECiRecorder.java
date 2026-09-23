package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECiRecorder {
    public static final net.easyconn.ecsdk.ECiRecorder ourInstance = new net.easyconn.ecsdk.ECiRecorder();

    public static net.easyconn.ecsdk.ECiRecorder getInstance() {
        return ourInstance;
    }

    public native int initialize(net.easyconn.ecsdk.IECiRecorderCallback iECiRecorderCallback);

    public native int pauseMirror();

    public native void release();

    public native int resumeMirror();

    public native int startAudio();

    public native int startMirror(int i);

    public native void stopAudio();

    public native int stopMirror();
}
