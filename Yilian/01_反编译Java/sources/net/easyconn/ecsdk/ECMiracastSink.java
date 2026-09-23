package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECMiracastSink {
    public static final int EC_MCAST_PORT = 7236;
    public static final net.easyconn.ecsdk.ECMiracastSink ourInstance = new net.easyconn.ecsdk.ECMiracastSink();
    public final java.lang.String TAG = "ecsdk:MCAST";
    public boolean mInitialized = false;

    public static class ECMCastMode {
        public static final int EC_MCAST_MODE_DEFAULT = 0;
        public static final int EC_MCAST_MODE_ENABLE_AUDIO = 2;
        public static final int EC_MCAST_MODE_ENABLE_VIDEO = 1;
    }

    public static class ECMCastStatus {
        public static final int EC_MCAST_STATUS_CONNECT_FAIL = 5;
        public static final int EC_MCAST_STATUS_MESSAGE_MAX = 9999;
        public static final int EC_MCAST_STATUS_MESSAGE_NETWORK_BAD = 3;
        public static final int EC_MCAST_STATUS_MESSAGE_NETWORK_GOOD = 4;
        public static final int EC_MCAST_STATUS_MESSAGE_TRANSPORT_CONNECTED = 0;
        public static final int EC_MCAST_STATUS_MESSAGE_TRANSPORT_DISCONNECTED = 1;
        public static final int EC_MCAST_STATUS_MESSAGE_TRANSPORT_TEARDOWN = 2;
        public static final int EC_MCAST_STATUS_MESSAGE_TRANSPORT_UNKNOW_ERROR = 6;
    }

    public static class ECMCastVideoConfig {
        public static final int EC_MCAST_VIDEO_CONFIG_1280_720_30FPS = 5;
        public static final int EC_MCAST_VIDEO_CONFIG_1280_720_60FPS = 6;
        public static final int EC_MCAST_VIDEO_CONFIG_1920_1080_30FPS = 7;
        public static final int EC_MCAST_VIDEO_CONFIG_1920_1080_60FPS = 8;
        public static final int EC_MCAST_VIDEO_CONFIG_DEFAULT = 0;
    }

    public static net.easyconn.ecsdk.ECMiracastSink getInstance() {
        return ourInstance;
    }

    private native int native_initialize(net.easyconn.ecsdk.IECMCastCallBack iECMCastCallBack);

    private native int native_pauseMirror();

    private native void native_release();

    private native int native_requestIDRFrame();

    private native int native_resumeMirror();

    private native int native_setVideoConfig(int i);

    private native int native_start(java.lang.String str, int i, int i2);

    private native void native_stop();

    public int initialize(net.easyconn.ecsdk.IECMCastCallBack iECMCastCallBack) {
        synchronized (ourInstance) {
            if (this.mInitialized) {
                return -1;
            }
            this.mInitialized = true;
            return native_initialize(iECMCastCallBack);
        }
    }

    public int pauseMirror() {
        synchronized (ourInstance) {
            if (!this.mInitialized) {
                return -1;
            }
            return native_pauseMirror();
        }
    }

    public void release() {
        synchronized (ourInstance) {
            if (this.mInitialized) {
                this.mInitialized = false;
                native_release();
            }
        }
    }

    public int requestIDRFrame() {
        synchronized (ourInstance) {
            if (!this.mInitialized) {
                return -1;
            }
            return native_requestIDRFrame();
        }
    }

    public int resumeMirror() {
        synchronized (ourInstance) {
            if (!this.mInitialized) {
                return -1;
            }
            return native_resumeMirror();
        }
    }

    public int setVideoConfig(int i) {
        if (this.mInitialized) {
            return native_setVideoConfig(i);
        }
        return -1;
    }

    public int start(java.lang.String str, int i, int i2) {
        synchronized (ourInstance) {
            if (!this.mInitialized) {
                return -1;
            }
            if (str != null && str != "") {
                return native_start(str, i, i2);
            }
            return -2;
        }
    }

    public void stop() {
        synchronized (ourInstance) {
            if (this.mInitialized) {
                native_stop();
            }
        }
    }
}
