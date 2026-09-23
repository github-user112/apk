package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class z {
    public static byte[] a = null;
    public static byte[] b = null;

    /* renamed from: c, reason: collision with root package name */
    public static float[] f883c = null;

    /* renamed from: d, reason: collision with root package name */
    public static int f884d = 8136;

    public static float a(byte[] bArr, int i) {
        return java.lang.Float.intBitsToFloat((int) ((bArr[i + 3] << 24) | (16777215 & ((int) ((65535 & ((int) ((bArr[i + 0] & 255) | (bArr[i + 1] << 8)))) | (bArr[i + 2] << 16))))));
    }

    public static int a() {
        return f884d;
    }

    public static void a(android.content.Context context, java.lang.String str) throws java.io.IOException {
        java.lang.String str2;
        com.huawei.hms.scankit.util.a.c("MsModel", "load angle model...." + str);
        if (b != null) {
            return;
        }
        try {
            java.io.InputStream inputStreamOpen = context.getAssets().open(str);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("3inputStream");
            sb.append(inputStreamOpen);
            com.huawei.hms.scankit.util.a.c("MsModel", sb.toString());
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            b = bArr;
        } catch (java.io.IOException unused) {
            str2 = "loadAngleModel IOException";
            com.huawei.hms.scankit.util.a.b("MsModel", str2);
        } catch (java.lang.Exception unused2) {
            str2 = "loadAngleModel Exception";
            com.huawei.hms.scankit.util.a.b("MsModel", str2);
        }
    }

    public static void b(android.content.Context context, java.lang.String str) throws java.io.IOException {
        java.lang.String str2;
        com.huawei.hms.scankit.util.a.c("MsModel", "load model...." + str);
        if (a != null) {
            return;
        }
        try {
            java.io.InputStream inputStreamOpen = context.getAssets().open(str);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("inputStream");
            sb.append(inputStreamOpen);
            com.huawei.hms.scankit.util.a.c("MsModel", sb.toString());
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            a = bArr;
        } catch (java.io.IOException unused) {
            str2 = "loadModel IOException";
            com.huawei.hms.scankit.util.a.b("MsModel", str2);
        } catch (java.lang.Exception unused2) {
            str2 = "loadModel Exception";
            com.huawei.hms.scankit.util.a.b("MsModel", str2);
        }
    }

    public static byte[] b() {
        return b;
    }

    public static void c(android.content.Context context, java.lang.String str) throws java.io.IOException {
        java.lang.String str2;
        com.huawei.hms.scankit.util.a.c("MsModel", "ms anrchos...." + str);
        if (f883c != null) {
            return;
        }
        try {
            java.io.InputStream inputStreamOpen = context.getAssets().open(str);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("2inputStream");
            sb.append(inputStreamOpen);
            com.huawei.hms.scankit.util.a.c("MsModel", sb.toString());
            int iAvailable = inputStreamOpen.available();
            byte[] bArr = new byte[iAvailable];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            f883c = new float[iAvailable / 4];
            for (int i = 0; i < f883c.length; i++) {
                f883c[i] = a(bArr, i * 4);
            }
        } catch (java.io.IOException unused) {
            str2 = "loadMsAnchors IOException";
            com.huawei.hms.scankit.util.a.b("MsModel", str2);
        } catch (java.lang.Exception unused2) {
            str2 = "loadMsAnchors Exception";
            com.huawei.hms.scankit.util.a.b("MsModel", str2);
        }
    }

    public static byte[] c() {
        return a;
    }

    public static float[] d() {
        return f883c;
    }
}
