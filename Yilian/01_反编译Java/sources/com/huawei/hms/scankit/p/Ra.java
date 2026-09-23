package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Ra {
    public static volatile com.huawei.hms.scankit.p.Ra a = new com.huawei.hms.scankit.p.Ra();

    public void a() {
        com.huawei.hms.scankit.p.AbstractC0205sa.b();
    }

    public void a(int i, java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        com.huawei.hms.scankit.p.Qa.b("HaLogExecutor", "type " + i + " mapValue:" + linkedHashMap);
        com.huawei.hms.scankit.p.AbstractC0205sa.a(i, str, linkedHashMap);
    }

    public boolean a(android.content.Context context, java.util.List<java.lang.String> list) {
        if (context == null || list == null || list.isEmpty()) {
            com.huawei.hms.scankit.p.Qa.a("HaLogExecutor", "HianalyticsLogExecutor executeInitialize failed, context or haServiceUrls is empty.");
            return false;
        }
        com.huawei.hms.scankit.p.C0215ua.a(3);
        new com.huawei.hms.scankit.p.C0210ta(context).a(false).b(false).a(1, list.get(0)).a(0, list.get(0)).a();
        com.huawei.hms.scankit.p.Qa.b("HaLogExecutor", "HianalyticsLogExecutor executeInitialize init success");
        return true;
    }
}
