package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.sa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0205sa {
    public static com.huawei.hms.scankit.p.C0196qa a;

    public static synchronized com.huawei.hms.scankit.p.C0196qa a() {
        if (a == null) {
            a = com.huawei.hms.scankit.p.C0220va.a.a();
        }
        return a;
    }

    public static void a(int i, java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        if (a() == null || !com.huawei.hms.scankit.p.C0190p.a.a()) {
            return;
        }
        if (i == 1 || i == 0) {
            a.a(i, str, linkedHashMap);
            return;
        }
        com.huawei.hms.scankit.p.T.b("hmsSdk", "Data type no longer collects range.type: " + i);
    }

    public static void b() {
        if (a() == null || !com.huawei.hms.scankit.p.C0190p.a.a()) {
            return;
        }
        a.a(-1);
    }
}
