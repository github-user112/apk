package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public class Arrays {
    public static void checkOffsetAndCount(int i, int i2, int i3) {
        if ((i2 | i3) < 0 || i2 > i || i - i2 < i3) {
            throw new java.lang.ArrayIndexOutOfBoundsException(i2);
        }
    }
}
