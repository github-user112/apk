package net.easyconn.netlink.service;

/* loaded from: classes.dex */
public class JniHelper {
    static {
        java.lang.System.loadLibrary("jni-helper");
    }

    public static native int sendFd(int i, java.lang.String str);
}
