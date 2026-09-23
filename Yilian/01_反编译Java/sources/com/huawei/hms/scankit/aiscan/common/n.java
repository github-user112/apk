package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class n {
    public static float a(float f2, float f3, float f4, float f5) {
        float f6 = f2 - f4;
        float f7 = f3 - f5;
        return (float) java.lang.Math.sqrt((f7 * f7) + (f6 * f6));
    }

    public static float a(int i, int i2, int i3, int i4) {
        int i5 = i - i3;
        int i6 = i2 - i4;
        return (float) java.lang.Math.sqrt((i6 * i6) + (i5 * i5));
    }

    public static int a(float f2) {
        return (int) (f2 + (f2 < 0.0f ? -0.5f : 0.5f));
    }

    public static int a(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        return i;
    }
}
