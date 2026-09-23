package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.la, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0171la extends com.huawei.hms.scankit.p.G {
    public java.lang.String b = "";

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f751c = "";

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f752d = "";

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f753e = "";

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f754f = "";

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f755g;

    @Override // com.huawei.hms.scankit.p.L
    public org.json.JSONObject a() throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("androidid", this.a);
        jSONObject.put(com.umeng.commonsdk.statistics.idtracking.i.f1538d, this.f755g);
        jSONObject.put("uuid", this.f754f);
        jSONObject.put("upid", this.f753e);
        jSONObject.put(com.umeng.commonsdk.statistics.idtracking.f.a, this.b);
        jSONObject.put("sn", this.f751c);
        jSONObject.put("udid", this.f752d);
        return jSONObject;
    }

    public void b(java.lang.String str) {
        this.b = str;
    }

    public void c(java.lang.String str) {
        this.f751c = str;
    }

    public void d(java.lang.String str) {
        this.f753e = str;
    }

    public void e(java.lang.String str) {
        this.f752d = str;
    }

    public void f(java.lang.String str) {
        this.f754f = str;
    }

    public void g(java.lang.String str) {
        this.f755g = str;
    }
}
