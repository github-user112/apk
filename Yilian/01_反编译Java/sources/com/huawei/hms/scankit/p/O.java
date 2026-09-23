package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class O {
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f602c;

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<com.huawei.hms.scankit.p.J> f603d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f604e;

    public O(java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.List<com.huawei.hms.scankit.p.J> list, java.lang.String str4) {
        this.a = str;
        this.b = str2;
        this.f602c = str3;
        this.f603d = list;
        this.f604e = str4;
    }

    private java.lang.String a(java.lang.String str, java.lang.String str2) {
        java.lang.String str3;
        java.lang.String strI = com.huawei.hms.scankit.p.AbstractC0125c.i(str, str2);
        if (android.text.TextUtils.isEmpty(strI)) {
            com.huawei.hms.scankit.p.T.a("DataReportHandler", "No report address,TAG : %s,TYPE: %s ", str, str2);
            return "";
        }
        if ("oper".equals(str2)) {
            str3 = "{url}/common/hmshioperqrt";
        } else if ("maint".equals(str2)) {
            str3 = "{url}/common/hmshimaintqrt";
        } else {
            if (!"diffprivacy".equals(str2)) {
                return "";
            }
            str3 = "{url}/common/common2";
        }
        return str3.replace("{url}", strI);
    }

    private byte[] a(com.huawei.hms.scankit.p.K k) throws java.io.IOException {
        java.lang.String str;
        try {
            org.json.JSONObject jSONObjectA = k.a();
            if (jSONObjectA != null) {
                return com.huawei.hms.scankit.p.C0175m.a(jSONObjectA.toString().getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
            }
            com.huawei.hms.scankit.p.T.c("DataReportHandler", "uploadEvents is null");
            return new byte[0];
        } catch (java.io.UnsupportedEncodingException unused) {
            str = "sendData(): getBytes - Unsupported coding format!!";
            com.huawei.hms.scankit.p.T.c("DataReportHandler", str);
            return new byte[0];
        } catch (org.json.JSONException unused2) {
            str = "uploadEvents to json error";
            com.huawei.hms.scankit.p.T.c("DataReportHandler", str);
            return new byte[0];
        }
    }

    private org.json.JSONArray b() {
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        java.util.Iterator<com.huawei.hms.scankit.p.J> it = this.f603d.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(it.next().d());
            } catch (org.json.JSONException unused) {
                com.huawei.hms.scankit.p.T.b("DataReportHandler", "handleEvents: json error,Abandon this data");
            }
        }
        return jSONArray;
    }

    private void c() {
        if (com.huawei.hms.scankit.p.C0165k.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "backup_event", 5242880)) {
            com.huawei.hms.scankit.p.T.b("DataReportHandler", "backup file reach max limited size, discard new event ");
            return;
        }
        org.json.JSONArray jSONArrayB = b();
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0180n.a(this.a, this.b, this.f604e);
        com.huawei.hms.scankit.p.T.b("DataReportHandler", "Update data cached into backup,spKey: " + strA);
        com.huawei.hms.scankit.p.C0131da.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "backup_event", strA, jSONArrayB.toString());
    }

    private com.huawei.hms.scankit.p.K d() {
        return com.huawei.hms.scankit.p.C0166ka.a(this.f603d, this.a, this.b, this.f604e, this.f602c);
    }

    public void a() throws java.io.IOException {
        com.huawei.hms.scankit.p.InterfaceRunnableC0155i c0150h;
        com.huawei.hms.scankit.p.C0160j c0160j;
        java.lang.String str;
        java.lang.String strA = a(this.a, this.b);
        if (!android.text.TextUtils.isEmpty(strA) || "preins".equals(this.b)) {
            if (!"_hms_config_tag".equals(this.a) && !"_openness_config_tag".equals(this.a)) {
                c();
            }
            com.huawei.hms.scankit.p.K kD = d();
            if (kD != null) {
                byte[] bArrA = a(kD);
                if (bArrA.length == 0) {
                    str = "request body is empty";
                } else {
                    c0150h = new com.huawei.hms.scankit.p.C0135e(bArrA, strA, this.a, this.b, this.f604e, this.f603d);
                    c0160j = com.huawei.hms.scankit.p.C0160j.b;
                }
            } else {
                c0150h = new com.huawei.hms.scankit.p.C0150h(this.f603d, this.a, this.f604e, this.b);
                c0160j = com.huawei.hms.scankit.p.C0160j.a;
            }
            c0160j.a(c0150h);
            return;
        }
        str = "collectUrl is empty";
        com.huawei.hms.scankit.p.T.c("DataReportHandler", str);
    }
}
