package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public abstract class m {
    public final int a;
    public final int b;

    public m(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final int a() {
        return this.b;
    }

    public abstract com.huawei.hms.scankit.aiscan.common.m a(int i, int i2, int i3, int i4);

    public abstract byte[] a(int i, byte[] bArr);

    public abstract com.huawei.hms.scankit.aiscan.common.m b(int i, int i2, int i3, int i4);

    public abstract byte[] b();

    public final int c() {
        return this.a;
    }

    public final java.lang.String toString() {
        int i = this.a;
        byte[] bArrA = new byte[i];
        java.lang.StringBuilder sb = new java.lang.StringBuilder((i + 1) * this.b);
        for (int i2 = 0; i2 < this.b; i2++) {
            bArrA = a(i2, bArrA);
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = bArrA[i3] & 255;
                sb.append(i4 < 64 ? '#' : i4 < 128 ? '+' : i4 < 192 ? '.' : com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
