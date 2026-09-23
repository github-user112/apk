package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.na, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0181na extends com.huawei.hms.scankit.p.I {

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f763f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f764g;
    public java.lang.String h;

    @Override // com.huawei.hms.scankit.p.L
    public org.json.JSONObject a() throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("_rom_ver", this.h);
        jSONObject.put("_emui_ver", this.a);
        jSONObject.put("_model", android.os.Build.MODEL);
        jSONObject.put("_mcc", this.f763f);
        jSONObject.put("_mnc", this.f764g);
        jSONObject.put("_package_name", this.b);
        jSONObject.put("_app_ver", this.f539c);
        jSONObject.put("_lib_ver", "2.2.0.304");
        jSONObject.put("_channel", this.f540d);
        jSONObject.put("_lib_name", "hianalytics");
        jSONObject.put("_oaid_tracking_flag", this.f541e);
        return jSONObject;
    }

    public void f(java.lang.String str) {
        this.f763f = str;
    }

    public void g(java.lang.String str) {
        this.f764g = str;
    }

    public void h(java.lang.String str) {
        this.h = str;
    }
}
