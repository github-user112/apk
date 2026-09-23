package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Hd {
    public final java.lang.String a;
    public com.huawei.hms.scankit.p.Ld b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.C0184nd f534c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.p.C0184nd f535d;

    /* renamed from: e, reason: collision with root package name */
    public final java.lang.StringBuilder f536e;

    /* renamed from: f, reason: collision with root package name */
    public int f537f;

    /* renamed from: g, reason: collision with root package name */
    public int f538g;
    public com.huawei.hms.scankit.p.Kd h;
    public int i;

    public Hd(java.lang.String str) throws java.lang.Exception {
        byte[] bytes = str.getBytes(java.nio.charset.StandardCharsets.ISO_8859_1);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c2 = (char) (bytes[i] & 255);
            if (c2 == '?' && str.charAt(i) != '?') {
                try {
                    throw new java.lang.IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
                } catch (java.lang.Exception e2) {
                    throw e2;
                }
            }
            sb.append(c2);
        }
        this.a = sb.toString();
        this.b = com.huawei.hms.scankit.p.Ld.FORCE_NONE;
        this.f536e = new java.lang.StringBuilder(str.length());
        this.f538g = -1;
    }

    private int l() {
        return this.a.length() - this.i;
    }

    public int a() {
        return this.f536e.length();
    }

    public void a(char c2) {
        this.f536e.append(c2);
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(com.huawei.hms.scankit.p.Ld ld) {
        this.b = ld;
    }

    public void a(com.huawei.hms.scankit.p.C0184nd c0184nd, com.huawei.hms.scankit.p.C0184nd c0184nd2) {
        this.f534c = c0184nd;
        this.f535d = c0184nd2;
    }

    public void a(java.lang.String str) {
        this.f536e.append(str);
    }

    public java.lang.StringBuilder b() {
        return this.f536e;
    }

    public void b(int i) {
        this.f538g = i;
    }

    public char c() {
        return this.a.charAt(this.f537f);
    }

    public void c(int i) {
        com.huawei.hms.scankit.p.Kd kd = this.h;
        if (kd == null || i > kd.a()) {
            this.h = com.huawei.hms.scankit.p.Kd.a(i, this.b, this.f534c, this.f535d, true);
        }
    }

    public java.lang.String d() {
        return this.a;
    }

    public int e() {
        return this.f538g;
    }

    public int f() {
        return l() - this.f537f;
    }

    public com.huawei.hms.scankit.p.Kd g() {
        return this.h;
    }

    public boolean h() {
        return this.f537f < l();
    }

    public void i() {
        this.f538g = -1;
    }

    public void j() {
        this.h = null;
    }

    public void k() {
        c(a());
    }
}
