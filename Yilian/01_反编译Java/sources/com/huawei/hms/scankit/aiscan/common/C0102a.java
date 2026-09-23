package com.huawei.hms.scankit.aiscan.common;

/* renamed from: com.huawei.hms.scankit.aiscan.common.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0102a extends java.lang.Exception {
    public static final boolean a;
    public static final java.lang.StackTraceElement[] b;

    /* renamed from: c, reason: collision with root package name */
    public static final com.huawei.hms.scankit.aiscan.common.C0102a f385c;

    static {
        a = java.lang.System.getProperty("surefire.test.class.path") != null;
        b = new java.lang.StackTraceElement[0];
        com.huawei.hms.scankit.aiscan.common.C0102a c0102a = new com.huawei.hms.scankit.aiscan.common.C0102a();
        f385c = c0102a;
        c0102a.setStackTrace(b);
    }

    public C0102a() {
    }

    public C0102a(java.lang.String str) {
        super(str);
    }

    public static com.huawei.hms.scankit.aiscan.common.C0102a a() {
        return a ? new com.huawei.hms.scankit.aiscan.common.C0102a() : f385c;
    }

    public static com.huawei.hms.scankit.aiscan.common.C0102a a(java.lang.String str) {
        return new com.huawei.hms.scankit.aiscan.common.C0102a(str);
    }
}
