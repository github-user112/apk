package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class ze {
    public static final java.security.SecureRandom a = new java.security.SecureRandom();

    public static float a(float f2) {
        return a.nextFloat() * f2;
    }

    public static int a(int i) {
        return a.nextInt(i);
    }
}
