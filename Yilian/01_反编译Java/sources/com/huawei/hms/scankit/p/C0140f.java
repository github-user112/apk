package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0140f implements com.huawei.hms.scankit.p.InterfaceRunnableC0155i {
    public android.content.Context a = com.huawei.hms.scankit.p.AbstractC0120b.a();
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public org.json.JSONObject f710c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f711d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f712e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f713f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f714g;
    public java.lang.Boolean h;

    public C0140f(java.lang.String str, org.json.JSONObject jSONObject, java.lang.String str2, java.lang.String str3, long j) {
        this.b = str;
        this.f710c = jSONObject;
        this.f711d = str2;
        this.f712e = str3;
        this.f713f = java.lang.String.valueOf(j);
        if (com.huawei.hms.scankit.p.AbstractC0115a.g(str2, "oper")) {
            com.huawei.hms.scankit.p.C0126ca c0126caA = com.huawei.hms.scankit.p.C0121ba.a().a(str2, j);
            this.f714g = c0126caA.a();
            this.h = java.lang.Boolean.valueOf(c0126caA.b());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        org.json.JSONArray jSONArray;
        com.huawei.hms.scankit.p.T.b("EventRecordTask", "Begin to run EventRecordTask...");
        int iH = com.huawei.hms.scankit.p.AbstractC0120b.h();
        int iN = com.huawei.hms.scankit.p.AbstractC0125c.n(this.f711d, this.f712e);
        if (com.huawei.hms.scankit.p.C0165k.a(this.a, "stat_v2_1", iH * com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES)) {
            com.huawei.hms.scankit.p.T.b("hmsSdk", "stat sp file reach max limited size, discard new event");
            com.huawei.hms.scankit.p.C0130d.a().a("", "alltype");
            return;
        }
        com.huawei.hms.scankit.p.J j = new com.huawei.hms.scankit.p.J();
        j.b(this.b);
        j.c(this.f710c.toString());
        j.a(this.f712e);
        j.d(this.f713f);
        j.e(this.f714g);
        java.lang.Boolean bool = this.h;
        j.f(bool == null ? null : java.lang.String.valueOf(bool));
        try {
            org.json.JSONObject jSONObjectD = j.d();
            java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0180n.a(this.f711d, this.f712e);
            try {
                jSONArray = new org.json.JSONArray(com.huawei.hms.scankit.p.C0131da.b(this.a, "stat_v2_1", strA, ""));
            } catch (org.json.JSONException unused) {
                com.huawei.hms.scankit.p.T.b("EventRecordTask", "Cached data corrupted: stat_v2_1");
                jSONArray = new org.json.JSONArray();
            }
            jSONArray.put(jSONObjectD);
            com.huawei.hms.scankit.p.C0131da.a(this.a, "stat_v2_1", strA, jSONArray.toString());
            if (jSONArray.toString().length() > iN * 1024) {
                com.huawei.hms.scankit.p.C0130d.a().a(this.f711d, this.f712e);
            }
        } catch (org.json.JSONException unused2) {
            com.huawei.hms.scankit.p.T.c("EventRecordTask", "eventRecord toJson error! The record failed.");
        }
    }
}
