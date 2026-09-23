package com.umeng.commonsdk.vchannel;

/* loaded from: classes.dex */
public class b {
    public java.lang.String b;
    public java.lang.String a = "_$unknown";

    /* renamed from: c, reason: collision with root package name */
    public long f1618c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f1619d = 0;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1620e = com.umeng.commonsdk.vchannel.a.j;

    /* renamed from: f, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.Object> f1621f = null;

    public b(android.content.Context context) {
        this.b = com.umeng.commonsdk.service.UMGlobalContext.getInstance(context).getProcessName(context);
    }

    public java.lang.String a() {
        return this.a;
    }

    public void a(long j) {
        this.f1618c = j;
    }

    public void a(java.lang.String str) {
        this.a = str;
    }

    public void a(java.util.Map<java.lang.String, java.lang.Object> map) {
        this.f1621f = map;
    }

    public long b() {
        return this.f1618c;
    }

    public java.util.Map<java.lang.String, java.lang.Object> c() {
        return this.f1621f;
    }

    public org.json.JSONObject d() {
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("id", this.a);
            jSONObject.put("pn", this.b);
            jSONObject.put("ds", this.f1619d);
            jSONObject.put("ts", this.f1618c);
            if (this.f1621f != null && this.f1621f.size() > 0) {
                for (java.lang.String str : this.f1621f.keySet()) {
                    jSONObject.put(str, this.f1621f.get(str));
                }
            }
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            jSONArray.put(jSONObject);
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            jSONObject2.put(this.f1620e, jSONArray);
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            jSONArray2.put(jSONObject2);
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            jSONObject3.put("ekv", jSONArray2);
            return jSONObject3;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public java.lang.String toString() {
        java.lang.String string;
        java.lang.StringBuilder sb = new java.lang.StringBuilder("[");
        java.lang.StringBuilder sbO = e.a.c.a.a.o("id:");
        sbO.append(this.a);
        sbO.append(",");
        sb.append(sbO.toString());
        sb.append("pn:" + this.b + ",");
        sb.append("ts:" + this.f1618c + ",");
        java.util.Map<java.lang.String, java.lang.Object> map = this.f1621f;
        if (map != null && map.size() > 0) {
            for (java.lang.String str : this.f1621f.keySet()) {
                java.lang.Object obj = this.f1621f.get(str);
                if (obj == null) {
                    string = e.a.c.a.a.f(str, ": null", ",");
                } else {
                    java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, ": ");
                    sbQ.append(obj.toString());
                    sbQ.append(",");
                    string = sbQ.toString();
                }
                sb.append(string);
            }
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("ds:");
        sbO2.append(this.f1619d);
        sbO2.append("]");
        sb.append(sbO2.toString());
        return sb.toString();
    }
}
