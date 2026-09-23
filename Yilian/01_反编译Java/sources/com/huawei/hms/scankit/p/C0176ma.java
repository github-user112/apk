package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ma, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0176ma extends com.huawei.hms.scankit.p.H {

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f761g = "";

    @Override // com.huawei.hms.scankit.p.L
    public org.json.JSONObject a() throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("protocol_version", "1");
        jSONObject.put("compress_mode", "1");
        jSONObject.put("serviceid", this.f528d);
        jSONObject.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, this.a);
        jSONObject.put("hmac", this.f761g);
        jSONObject.put("chifer", this.f530f);
        jSONObject.put("timestamp", this.b);
        jSONObject.put("servicetag", this.f527c);
        jSONObject.put("requestid", this.f529e);
        return jSONObject;
    }

    public void g(java.lang.String str) {
        this.f761g = str;
    }
}
