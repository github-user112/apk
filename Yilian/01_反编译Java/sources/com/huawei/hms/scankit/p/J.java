package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class J implements com.huawei.hms.scankit.p.L {
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f544c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f545d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f546e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f547f;

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:69)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:179)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:132)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:69)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:179)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:132)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:69)
     */
    @Override // com.huawei.hms.scankit.p.L
    public org.json.JSONObject a() throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put(com.umeng.analytics.pro.c.y, this.a);
        jSONObject.put("eventtime", this.f545d);
        jSONObject.put("event", this.b);
        jSONObject.put("event_session_name", this.f546e);
        jSONObject.put("first_session_event", this.f547f);
        if (android.text.TextUtils.isEmpty(this.f544c)) {
            return null;
        }
        jSONObject.put("properties", new org.json.JSONObject(this.f544c));
        return jSONObject;
    }

    public void a(java.lang.String str) {
        this.a = str;
    }

    public void a(org.json.JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.b = jSONObject.optString("event");
        this.f544c = jSONObject.optString("properties");
        this.f544c = com.huawei.hms.scankit.p.C0204s.a().a(com.huawei.hms.scankit.p.C0204s.a.AES).a(com.huawei.hms.scankit.p.C0116aa.a().c(), this.f544c);
        this.a = jSONObject.optString(com.umeng.analytics.pro.c.y);
        this.f545d = jSONObject.optString("eventtime");
        this.f546e = jSONObject.optString("event_session_name");
        this.f547f = jSONObject.optString("first_session_event");
    }

    public java.lang.String b() {
        return this.a;
    }

    public void b(java.lang.String str) {
        this.b = str;
    }

    public java.lang.String c() {
        return this.f545d;
    }

    public void c(java.lang.String str) {
        this.f544c = str;
    }

    public org.json.JSONObject d() throws org.json.JSONException {
        org.json.JSONObject jSONObjectA = a();
        jSONObjectA.put("properties", com.huawei.hms.scankit.p.C0204s.a().a(com.huawei.hms.scankit.p.C0204s.a.AES).b(com.huawei.hms.scankit.p.C0116aa.a().c(), this.f544c));
        return jSONObjectA;
    }

    public void d(java.lang.String str) {
        this.f545d = str;
    }

    public void e(java.lang.String str) {
        this.f546e = str;
    }

    public void f(java.lang.String str) {
        this.f547f = str;
    }
}
