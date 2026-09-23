package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class bk {
    public final java.lang.String a;
    public final byte b;

    /* renamed from: c, reason: collision with root package name */
    public final short f1271c;

    public bk() {
        this("", (byte) 0, (short) 0);
    }

    public bk(java.lang.String str, byte b, short s) {
        this.a = str;
        this.b = b;
        this.f1271c = s;
    }

    public boolean a(com.umeng.analytics.pro.bk bkVar) {
        return this.b == bkVar.b && this.f1271c == bkVar.f1271c;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("<TField name:'");
        sbO.append(this.a);
        sbO.append("' type:");
        sbO.append((int) this.b);
        sbO.append(" field-id:");
        return e.a.c.a.a.i(sbO, this.f1271c, ">");
    }
}
