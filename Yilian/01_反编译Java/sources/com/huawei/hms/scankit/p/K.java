package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class K implements com.huawei.hms.scankit.p.L {
    public java.util.List<com.huawei.hms.scankit.p.J> a;
    public com.huawei.hms.scankit.p.H b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.I f553c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.p.L f554d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f555e = "";

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f556f;

    public K(java.lang.String str) {
        this.f556f = str;
    }

    @Override // com.huawei.hms.scankit.p.L
    public org.json.JSONObject a() throws org.json.JSONException, java.io.IOException {
        java.lang.String str;
        java.util.List<com.huawei.hms.scankit.p.J> list = this.a;
        if (list == null || list.size() == 0) {
            str = "Not have actionEvent to send";
        } else if (this.b == null || this.f553c == null || this.f554d == null) {
            str = "model in wrong format";
        } else {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("header", this.b.a());
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            org.json.JSONObject jSONObjectA = this.f554d.a();
            jSONObjectA.put("properties", this.f553c.a());
            try {
                jSONObjectA.put("events_global_properties", new org.json.JSONObject(this.f555e));
            } catch (org.json.JSONException unused) {
                jSONObjectA.put("events_global_properties", this.f555e);
            }
            jSONObject2.put("events_common", jSONObjectA);
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            java.util.Iterator<com.huawei.hms.scankit.p.J> it = this.a.iterator();
            while (it.hasNext()) {
                org.json.JSONObject jSONObjectA2 = it.next().a();
                if (jSONObjectA2 != null) {
                    jSONArray.put(jSONObjectA2);
                } else {
                    com.huawei.hms.scankit.p.T.c("EventUploadModel", "custom event is empty,delete this event");
                }
            }
            jSONObject2.put(com.umeng.analytics.pro.c.ar, jSONArray);
            try {
                java.lang.String strA = com.huawei.hms.scankit.p.C0204s.a().a(com.huawei.hms.scankit.p.C0204s.a.AES).a(this.f556f, com.huawei.hms.scankit.p.C0175m.a(jSONObject2.toString().getBytes(com.google.android.exoplayer2.C.UTF8_NAME)));
                if (android.text.TextUtils.isEmpty(strA)) {
                    com.huawei.hms.scankit.p.T.c("EventUploadModel", "eventInfo encrypt failed,report over!");
                    return null;
                }
                jSONObject.put("event", strA);
                return jSONObject;
            } catch (java.io.UnsupportedEncodingException unused2) {
                str = "getBitZip(): Unsupported coding : utf-8";
            }
        }
        com.huawei.hms.scankit.p.T.c("EventUploadModel", str);
        return null;
    }

    public void a(com.huawei.hms.scankit.p.H h) {
        this.b = h;
    }

    public void a(com.huawei.hms.scankit.p.I i) {
        this.f553c = i;
    }

    public void a(com.huawei.hms.scankit.p.C0171la c0171la) {
        this.f554d = c0171la;
    }

    public void a(java.lang.String str) {
        if (str != null) {
            this.f555e = str;
        }
    }

    public void a(java.util.List<com.huawei.hms.scankit.p.J> list) {
        this.a = list;
    }
}
