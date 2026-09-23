package com.huawei.hms.framework.network.grs.c.b;

/* loaded from: classes.dex */
public class c {
    public com.huawei.hms.framework.network.grs.GrsBaseInfo a;
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Set<java.lang.String> f310c = new java.util.HashSet();

    public c(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, android.content.Context context) {
        this.a = grsBaseInfo;
        this.b = context;
    }

    private java.lang.String e() throws org.json.JSONException {
        java.util.Set<java.lang.String> setB = com.huawei.hms.framework.network.grs.b.b.a(this.b.getPackageName(), this.a).b();
        if (setB.isEmpty()) {
            return "";
        }
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        java.util.Iterator<java.lang.String> it = setB.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        try {
            jSONObject.put("services", jSONArray);
            com.huawei.hms.framework.common.Logger.i("GrsRequestInfo", "post service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (org.json.JSONException unused) {
            return "";
        }
    }

    private java.lang.String f() throws org.json.JSONException {
        com.huawei.hms.framework.common.Logger.v("GrsRequestInfo", "getGeoipService enter");
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        java.util.Iterator<java.lang.String> it = this.f310c.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        try {
            jSONObject.put("services", jSONArray);
            com.huawei.hms.framework.common.Logger.v("GrsRequestInfo", "post query service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (org.json.JSONException unused) {
            return "";
        }
    }

    public android.content.Context a() {
        return this.b;
    }

    public void a(java.lang.String str) {
        this.f310c.add(str);
    }

    public com.huawei.hms.framework.network.grs.GrsBaseInfo b() {
        return this.a;
    }

    public java.lang.String c() {
        return this.f310c.size() == 0 ? e() : f();
    }

    public java.util.Set<java.lang.String> d() {
        return this.f310c;
    }
}
