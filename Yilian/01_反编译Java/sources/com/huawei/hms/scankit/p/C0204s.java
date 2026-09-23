package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0204s {
    public static final java.nio.charset.Charset a = java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME);
    public static com.huawei.hms.scankit.p.C0204s b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.InterfaceC0224w f807c;

    /* renamed from: com.huawei.hms.scankit.p.s$a */
    public enum a {
        AES(16),
        RSA(128),
        HMCSHA256(16),
        OTHER(0);


        /* renamed from: f, reason: collision with root package name */
        public int f811f;

        a(int i) {
            this.f811f = i;
        }

        public int a() {
            return this.f811f;
        }
    }

    public static com.huawei.hms.scankit.p.C0204s a() {
        if (b == null) {
            b();
        }
        return b;
    }

    public static synchronized void b() {
        if (b == null) {
            b = new com.huawei.hms.scankit.p.C0204s();
        }
    }

    public com.huawei.hms.scankit.p.InterfaceC0224w a(com.huawei.hms.scankit.p.C0204s.a aVar) {
        com.huawei.hms.scankit.p.InterfaceC0224w c0195q;
        int i = com.huawei.hms.scankit.p.r.a[aVar.ordinal()];
        if (i == 1) {
            c0195q = new com.huawei.hms.scankit.p.C0195q();
        } else if (i == 2) {
            c0195q = new com.huawei.hms.scankit.p.C0219v();
        } else {
            if (i != 3) {
                com.huawei.hms.scankit.p.T.b("CryptFactory", "crypt type is other");
                return this.f807c;
            }
            c0195q = new com.huawei.hms.scankit.p.C0229x();
        }
        this.f807c = c0195q;
        return this.f807c;
    }

    public java.lang.String a(java.lang.String str) {
        return com.huawei.hms.scankit.p.C0209t.a(str);
    }

    public java.lang.String a(char[] cArr, byte[] bArr) {
        return com.huawei.hms.scankit.p.C0209t.a(cArr, bArr);
    }

    public java.lang.String b(com.huawei.hms.scankit.p.C0204s.a aVar) {
        return com.huawei.hms.scankit.p.AbstractC0214u.a(aVar.a());
    }

    public byte[] b(java.lang.String str) {
        return com.huawei.hms.scankit.p.AbstractC0214u.a(str);
    }
}
