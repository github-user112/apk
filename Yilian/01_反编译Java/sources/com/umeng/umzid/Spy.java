package com.umeng.umzid;

/* loaded from: classes.dex */
public class Spy {
    public static boolean initSuccess = false;

    static {
        try {
            java.lang.System.loadLibrary("umeng-spy");
            initSuccess = true;
        } catch (java.lang.Throwable th) {
            th.printStackTrace();
        }
    }

    public static java.lang.String getID() {
        if (initSuccess) {
            return getNativeID();
        }
        return null;
    }

    public static native java.lang.String getNativeID();

    public static native java.lang.String getNativeLibraryVersion();

    public static java.lang.String getVersion() {
        if (initSuccess) {
            return getNativeLibraryVersion();
        }
        return null;
    }
}
