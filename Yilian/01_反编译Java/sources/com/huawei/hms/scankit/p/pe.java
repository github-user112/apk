package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class pe {
    public com.huawei.hms.scankit.p.EnumC0227wc a;
    public com.huawei.hms.scankit.p.EnumC0198qc b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.C0242zc f781c;

    /* renamed from: d, reason: collision with root package name */
    public int f782d = -1;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.scankit.p.je f783e;

    public static boolean a(int i) {
        return i >= 0 && i < 8;
    }

    public com.huawei.hms.scankit.p.je a() {
        return this.f783e;
    }

    public void a(com.huawei.hms.scankit.p.je jeVar) {
        this.f783e = jeVar;
    }

    public void a(com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc) {
        this.b = enumC0198qc;
    }

    public void a(com.huawei.hms.scankit.p.EnumC0227wc enumC0227wc) {
        this.a = enumC0227wc;
    }

    public void a(com.huawei.hms.scankit.p.C0242zc c0242zc) {
        this.f781c = c0242zc;
    }

    public void b(int i) {
        this.f782d = i;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.a);
        sb.append("\n ecLevel: ");
        sb.append(this.b);
        sb.append("\n version: ");
        sb.append(this.f781c);
        sb.append("\n maskPattern: ");
        return e.a.c.a.a.i(sb, this.f782d, ">>\n");
    }
}
