package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public class C {
    public static float a = 2.51f;
    public static float b = 0.03f;

    /* renamed from: c, reason: collision with root package name */
    public static float f376c = 2.43f;

    /* renamed from: d, reason: collision with root package name */
    public static float f377d = 0.59f;

    /* renamed from: e, reason: collision with root package name */
    public static float f378e = 0.14f;

    /* renamed from: f, reason: collision with root package name */
    public static java.util.HashMap<java.lang.Integer, java.lang.Integer> f379f = new java.util.HashMap<>(255);

    public static int a(int i, float f2) {
        if (f379f.containsKey(java.lang.Integer.valueOf(i))) {
            return f379f.get(java.lang.Integer.valueOf(i)).intValue();
        }
        float f3 = i / f2;
        int i2 = (int) (((((a * f3) + b) * f3) * f2) / ((((f376c * f3) + f377d) * f3) + f378e));
        f379f.put(java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2));
        return i2;
    }

    public static com.huawei.hms.scankit.aiscan.common.m a(com.huawei.hms.scankit.aiscan.common.m mVar) {
        int iB = b(mVar);
        int iC = mVar.c();
        int iA = mVar.a();
        byte[] bArrB = mVar.b();
        byte[] bArr = new byte[iA * iC];
        for (int i = 0; i < iA; i++) {
            for (int i2 = 0; i2 < iC; i2++) {
                int i3 = (i * iC) + i2;
                bArr[i3] = (byte) (a(bArrB[i3] & 255, iB) & 255);
            }
        }
        f379f = new java.util.HashMap<>(255);
        return new com.huawei.hms.scankit.aiscan.common.r(bArr, iC, iA, 0, 0, iC, iA, false);
    }

    public static int b(com.huawei.hms.scankit.aiscan.common.m mVar) {
        if (mVar.b() == null) {
            return 1;
        }
        long j = 0;
        int iC = mVar.c();
        int iA = mVar.a();
        for (int i = iA / 4; i < (iA * 3) / 4; i++) {
            for (int i2 = iC / 4; i2 < (iC * 3) / 4; i2++) {
                j += r0[(i * iC) + i2] & 255;
            }
        }
        return (int) ((j / r0.length) * 4);
    }
}
