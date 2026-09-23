package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ba, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0121ba {
    public static com.huawei.hms.scankit.p.C0121ba a;
    public volatile java.util.Map<java.lang.String, com.huawei.hms.scankit.p.C0126ca> b = new java.util.HashMap();

    public static com.huawei.hms.scankit.p.C0121ba a() {
        if (a == null) {
            b();
        }
        return a;
    }

    private com.huawei.hms.scankit.p.C0126ca a(java.lang.String str) {
        if (!this.b.containsKey(str)) {
            this.b.put(str, new com.huawei.hms.scankit.p.C0126ca());
        }
        return this.b.get(str);
    }

    public static synchronized void b() {
        if (a == null) {
            a = new com.huawei.hms.scankit.p.C0121ba();
        }
    }

    public com.huawei.hms.scankit.p.C0126ca a(java.lang.String str, long j) {
        com.huawei.hms.scankit.p.C0126ca c0126caA = a(str);
        c0126caA.a(j);
        return c0126caA;
    }
}
