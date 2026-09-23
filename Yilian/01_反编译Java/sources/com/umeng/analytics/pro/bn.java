package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public final class bn {
    public final java.lang.String a;
    public final byte b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1273c;

    public bn() {
        this("", (byte) 0, 0);
    }

    public bn(java.lang.String str, byte b, int i) {
        this.a = str;
        this.b = b;
        this.f1273c = i;
    }

    public boolean a(com.umeng.analytics.pro.bn bnVar) {
        return this.a.equals(bnVar.a) && this.b == bnVar.b && this.f1273c == bnVar.f1273c;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof com.umeng.analytics.pro.bn) {
            return a((com.umeng.analytics.pro.bn) obj);
        }
        return false;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("<TMessage name:'");
        sbO.append(this.a);
        sbO.append("' type: ");
        sbO.append((int) this.b);
        sbO.append(" seqid:");
        return e.a.c.a.a.i(sbO, this.f1273c, ">");
    }
}
