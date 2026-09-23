package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.pa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0191pa {
    public static com.huawei.hms.scankit.p.C0191pa a;
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.Object f780c = new java.lang.Object();

    public static com.huawei.hms.scankit.p.C0191pa a() {
        if (a == null) {
            b();
        }
        return a;
    }

    private org.json.JSONObject a(java.util.Map<java.lang.String, java.lang.String> map) throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        if (map != null) {
            try {
                for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (org.json.JSONException unused) {
                com.huawei.hms.scankit.p.T.d("HiAnalyticsEventManager", "Exception occured when transferring bundle to json");
            }
        }
        return jSONObject;
    }

    public static synchronized void b() {
        if (a == null) {
            a = new com.huawei.hms.scankit.p.C0191pa();
        }
    }

    public void a(android.content.Context context) {
        synchronized (this.f780c) {
            if (this.b != null) {
                return;
            }
            this.b = context;
            com.huawei.hms.scankit.p.C0130d.a().a(context);
        }
    }

    public void a(java.lang.String str, int i) {
        com.huawei.hms.scankit.p.C0130d.a().a(str, i);
    }

    public void a(java.lang.String str, int i, java.lang.String str2, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) throws org.json.JSONException {
        com.huawei.hms.scankit.p.C0130d.a().a(str, i, str2, a(linkedHashMap));
    }
}
