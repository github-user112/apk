package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class ao {
    public short[] a;
    public int b = -1;

    public ao(int i) {
        this.a = new short[i];
    }

    private void d() {
        short[] sArr = this.a;
        short[] sArr2 = new short[sArr.length * 2];
        java.lang.System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        this.a = sArr2;
    }

    public short a() {
        short[] sArr = this.a;
        int i = this.b;
        this.b = i - 1;
        return sArr[i];
    }

    public void a(short s) {
        if (this.a.length == this.b + 1) {
            d();
        }
        short[] sArr = this.a;
        int i = this.b + 1;
        this.b = i;
        sArr[i] = s;
    }

    public short b() {
        return this.a[this.b];
    }

    public void c() {
        this.b = -1;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("<ShortStack vector:[");
        for (int i = 0; i < this.a.length; i++) {
            if (i != 0) {
                sbO.append(" ");
            }
            if (i == this.b) {
                sbO.append(">>");
            }
            sbO.append((int) this.a[i]);
            if (i == this.b) {
                sbO.append("<<");
            }
        }
        sbO.append("]>");
        return sbO.toString();
    }
}
