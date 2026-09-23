package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class f {
    public static final java.lang.String a = "f";
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f321c;

    /* renamed from: d, reason: collision with root package name */
    public int f322d;

    /* renamed from: e, reason: collision with root package name */
    public long f323e;

    /* renamed from: f, reason: collision with root package name */
    public long f324f;

    /* renamed from: g, reason: collision with root package name */
    public long f325g;
    public java.lang.String h;
    public int i;
    public int j;
    public java.lang.String k;
    public java.lang.String l;
    public java.lang.String m;
    public long n;
    public java.lang.Exception o;
    public java.lang.String p;
    public int q;

    public f(int i, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, byte[] bArr, long j) throws org.json.JSONException, java.lang.NumberFormatException {
        this.f322d = 0;
        this.i = 2;
        this.j = 9001;
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = 0L;
        this.f322d = i;
        this.b = map;
        this.f321c = java.nio.ByteBuffer.wrap(bArr).array();
        this.f323e = j;
        q();
    }

    public f(java.lang.Exception exc, long j) {
        this.f322d = 0;
        this.i = 2;
        this.j = 9001;
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = 0L;
        this.o = exc;
        this.f323e = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.Map<java.lang.String, java.lang.String> r12) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.c.f.a(java.util.Map):void");
    }

    private void b(int i) {
        this.j = i;
    }

    private void b(java.lang.String str) {
        this.m = str;
    }

    private void b(java.util.Map<java.lang.String, java.lang.String> map) throws java.lang.NumberFormatException {
        if (map == null || map.size() <= 0) {
            com.huawei.hms.framework.common.Logger.w(a, "getExpireTime {headers == null} or {headers.size() <= 0}");
            return;
        }
        long j = 0;
        if (map.containsKey("Retry-After")) {
            java.lang.String str = map.get("Retry-After");
            if (!android.text.TextUtils.isEmpty(str)) {
                try {
                    j = java.lang.Long.parseLong(str);
                } catch (java.lang.NumberFormatException e2) {
                    com.huawei.hms.framework.common.Logger.w(a, "getRetryAfter addHeadersToResult NumberFormatException", e2);
                }
            }
        }
        long j2 = j * 1000;
        com.huawei.hms.framework.common.Logger.v(a, "convert retry-afterTime{%s}", java.lang.Long.valueOf(j2));
        c(j2);
    }

    private void c(int i) {
        this.i = i;
    }

    private void c(long j) {
        this.n = j;
    }

    private void c(java.lang.String str) {
        this.k = str;
    }

    private void d(java.lang.String str) {
        this.l = str;
    }

    private void e(java.lang.String str) {
        this.h = str;
    }

    private void n() throws org.json.JSONException {
        java.lang.String str = "isSuccess";
        if (!m()) {
            com.huawei.hms.framework.common.Logger.i(a, "GRSSDK parse server body all failed.");
            c(2);
            return;
        }
        try {
            java.lang.String strByte2Str = com.huawei.hms.framework.common.StringUtils.byte2Str(this.f321c);
            org.json.JSONObject jSONObject = new org.json.JSONObject(strByte2Str);
            int i = -1;
            if (jSONObject.has("isSuccess")) {
                i = jSONObject.getInt(str);
            } else if (jSONObject.has("resultCode")) {
                str = "resultCode";
                i = jSONObject.getInt(str);
            } else {
                com.huawei.hms.framework.common.Logger.e(a, "sth. wrong because server errorcode's key.");
            }
            c(i);
            boolean z = i == 0 && strByte2Str.contains("services");
            if (i != 1 && !z) {
                c(2);
                b(jSONObject.has("errorCode") ? jSONObject.getInt("errorCode") : 9001);
                c(jSONObject.has("errorDesc") ? jSONObject.getString("errorDesc") : "");
            } else {
                e(jSONObject.getJSONObject("services").toString());
                if (z) {
                    d(jSONObject.has("errorList") ? jSONObject.getString("errorList") : "");
                }
            }
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "GrsResponse GrsResponse(String result) JSONException", e2);
            c(2);
        }
    }

    private void o() throws java.lang.NumberFormatException {
        if (m() || l()) {
            java.util.Map<java.lang.String, java.lang.String> mapP = p();
            try {
                if (m()) {
                    a(mapP);
                }
                if (l()) {
                    b(mapP);
                }
            } catch (org.json.JSONException e2) {
                com.huawei.hms.framework.common.Logger.w(a, "parseHeader catch JSONException", e2);
            }
        }
    }

    private java.util.Map<java.lang.String, java.lang.String> p() {
        java.util.HashMap map = new java.util.HashMap(16);
        java.util.Map<java.lang.String, java.util.List<java.lang.String>> map2 = this.b;
        if (map2 == null || map2.size() <= 0) {
            com.huawei.hms.framework.common.Logger.v(a, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}");
            return map;
        }
        for (java.util.Map.Entry<java.lang.String, java.util.List<java.lang.String>> entry : this.b.entrySet()) {
            map.put(entry.getKey(), entry.getValue().get(0));
        }
        return map;
    }

    private void q() throws org.json.JSONException, java.lang.NumberFormatException {
        o();
        n();
    }

    public java.lang.String a() {
        return this.m;
    }

    public void a(int i) {
        this.q = i;
    }

    public void a(long j) {
        this.f325g = j;
    }

    public void a(java.lang.String str) {
        this.p = str;
    }

    public int b() {
        return this.f322d;
    }

    public void b(long j) {
        this.f324f = j;
    }

    public int c() {
        return this.j;
    }

    public java.lang.Exception d() {
        return this.o;
    }

    public int e() {
        return this.i;
    }

    public long f() {
        return this.f325g;
    }

    public long g() {
        return this.f324f;
    }

    public long h() {
        return this.f323e;
    }

    public java.lang.String i() {
        return this.h;
    }

    public long j() {
        return this.n;
    }

    public java.lang.String k() {
        return this.p;
    }

    public boolean l() {
        return this.f322d == 503;
    }

    public boolean m() {
        return this.f322d == 200;
    }
}
