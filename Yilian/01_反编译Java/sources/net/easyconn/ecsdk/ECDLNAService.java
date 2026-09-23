package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECDLNAService {
    public static final java.lang.String TAG = "ecdlna";
    public static final net.easyconn.ecsdk.ECDLNAService outInstance = new net.easyconn.ecsdk.ECDLNAService();
    public boolean mInitialized = false;

    public static net.easyconn.ecsdk.ECDLNAService getInstance() {
        return outInstance;
    }

    public int initialize(net.easyconn.ecsdk.IECDLNACallback iECDLNACallback) {
        synchronized (outInstance) {
            if (this.mInitialized) {
                return -1;
            }
            this.mInitialized = true;
            return native_initialize(iECDLNACallback);
        }
    }

    public native int native_initialize(net.easyconn.ecsdk.IECDLNACallback iECDLNACallback);

    public native int native_playerDurationChanged(long j);

    public native int native_playerEndOfMedia();

    public native int native_playerPause();

    public native int native_playerPositionChanged(long j);

    public native int native_playerSetVolume(int i);

    public native int native_playerStart();

    public native int native_playerStop();

    public native void native_release();

    public native int native_startDlnaService(java.lang.String str, java.lang.String[] strArr);

    public native void native_stopDlnaService();

    public int playerDurationChanged(long j) {
        return native_playerDurationChanged(j);
    }

    public int playerEndOfMedia() {
        return native_playerEndOfMedia();
    }

    public int playerPause() {
        return native_playerPause();
    }

    public int playerPositionChanged(long j) {
        return native_playerPositionChanged(j);
    }

    public int playerSetVolume(int i) {
        return native_playerSetVolume(i);
    }

    public int playerStart() {
        return native_playerStart();
    }

    public int playerStop() {
        return native_playerStop();
    }

    public void release() {
        synchronized (outInstance) {
            if (this.mInitialized) {
                this.mInitialized = false;
                native_release();
            }
        }
    }

    public int startDlnaService(java.lang.String str) {
        synchronized (outInstance) {
            if (!this.mInitialized) {
                return -1;
            }
            if (str != null && "" != str) {
                return native_startDlnaService(str, null);
            }
            android.util.Log.e(TAG, "startDlnaService name error " + str);
            return -1;
        }
    }

    public int startDlnaService(java.lang.String str, java.lang.String str2) {
        synchronized (outInstance) {
            if (!this.mInitialized) {
                return -1;
            }
            if (str != null && "" != str) {
                java.lang.String[] strArrSplit = str2 == null ? null : str2.split("\\;");
                android.util.Log.d(TAG, "startDlnaService on interface=" + str2);
                return native_startDlnaService(str, strArrSplit);
            }
            android.util.Log.e(TAG, "startDlnaService name error " + str);
            return -1;
        }
    }

    public void stopDlnaService() {
        synchronized (outInstance) {
            if (this.mInitialized) {
                native_stopDlnaService();
            }
        }
    }
}
