package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.nd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0184nd {
    public final int a;
    public final int b;

    public int a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.huawei.hms.scankit.p.C0184nd)) {
            return false;
        }
        com.huawei.hms.scankit.p.C0184nd c0184nd = (com.huawei.hms.scankit.p.C0184nd) obj;
        return this.a == c0184nd.a && this.b == c0184nd.b;
    }

    public int hashCode() {
        return (this.a * 32713) + this.b;
    }

    public java.lang.String toString() {
        return this.a + "x" + this.b;
    }
}
