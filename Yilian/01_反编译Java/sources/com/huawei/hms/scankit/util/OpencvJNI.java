package com.huawei.hms.scankit.util;

/* loaded from: classes.dex */
public class OpencvJNI {
    static {
        com.huawei.hms.scankit.util.a.c("OpencvJNI", "start load method");
        try {
            java.lang.System.loadLibrary("scannative");
        } catch (java.lang.UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            com.huawei.hms.scankit.util.a.b("OpencvJNI", "UnsatisfiedLinkError");
            com.huawei.hms.scankit.k.a(false);
        }
    }

    public static native float[] QuadFitting(float[] fArr, int i, float[] fArr2);

    public static native byte[] adaptiveBinary(byte[] bArr, int i, int i2, int i3);

    public static native byte[] imageResize(byte[] bArr, int i, int i2, int i3, int i4);

    public static native byte[] imageRotate(byte[] bArr, int i, int i2, int i3, int i4, float f2, double d2);

    public static void init() {
        com.huawei.hms.scankit.util.a.c("OpencvJNI", "init()");
    }

    public static native float[] multiBarcodeDetect(byte[] bArr, int i, int i2, int i3, boolean z);

    public static native void setModel(byte[] bArr, int i, float[] fArr, int i2, byte[] bArr2, int i3);
}
