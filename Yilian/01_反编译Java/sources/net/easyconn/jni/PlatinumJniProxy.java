package net.easyconn.jni;

/* loaded from: classes.dex */
public class PlatinumJniProxy {
    static {
        java.lang.System.loadLibrary("mDNSEmbedded");
        if (new java.io.File(f.a.i.l.a.g()).exists()) {
            e.e.a.g.a("update so exists");
            java.lang.System.load(f.a.i.l.a.g());
        } else {
            e.e.a.g.a("update so noexists");
            java.lang.System.loadLibrary("mediaserver");
        }
    }

    public static native boolean enableLogPrint(boolean z);

    public static native int forceKeyFrame();

    public static boolean responseGenaEvent(int i, java.lang.String str, java.lang.String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        try {
            return responseGenaEvent(i, str.getBytes("utf-8"), str2.getBytes("utf-8"));
        } catch (java.io.UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static native boolean responseGenaEvent(int i, byte[] bArr, byte[] bArr2);

    public static native int startMediaRender(java.lang.String str, int i, int i2, int i3, int i4, int i5, android.content.Context context);

    public static int startMediaRender_Java(android.content.Context context, java.lang.String str, int i, int i2) {
        if (str == null) {
            str = "";
        }
        return startMediaRender(str, 1280, 720, i, i2, 11584, context);
    }

    public static native int stopMediaRender();
}
