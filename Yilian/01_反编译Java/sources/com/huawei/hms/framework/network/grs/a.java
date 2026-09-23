package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class a {
    public static final java.lang.String a = "a";
    public com.huawei.hms.framework.network.grs.GrsBaseInfo b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.a.a f281c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.c.m f282d;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.a.c f283e;

    /* renamed from: com.huawei.hms.framework.network.grs.a$a, reason: collision with other inner class name */
    public static class C0004a implements com.huawei.hms.framework.network.grs.b {
        public java.lang.String a;
        public java.util.Map<java.lang.String, java.lang.String> b;

        /* renamed from: c, reason: collision with root package name */
        public com.huawei.hms.framework.network.grs.IQueryUrlsCallBack f288c;

        /* renamed from: d, reason: collision with root package name */
        public android.content.Context f289d;

        /* renamed from: e, reason: collision with root package name */
        public com.huawei.hms.framework.network.grs.GrsBaseInfo f290e;

        /* renamed from: f, reason: collision with root package name */
        public com.huawei.hms.framework.network.grs.a.a f291f;

        public C0004a(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map, com.huawei.hms.framework.network.grs.IQueryUrlsCallBack iQueryUrlsCallBack, android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.a.a aVar) {
            this.a = str;
            this.b = map;
            this.f288c = iQueryUrlsCallBack;
            this.f289d = context;
            this.f290e = grsBaseInfo;
            this.f291f = aVar;
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a() {
            java.util.Map<java.lang.String, java.lang.String> map = this.b;
            if (map != null && !map.isEmpty()) {
                this.f288c.onCallBackSuccess(this.b);
            } else {
                if (this.b != null) {
                    this.f288c.onCallBackFail(-3);
                    return;
                }
                com.huawei.hms.framework.common.Logger.i(com.huawei.hms.framework.network.grs.a.a, "access local config for return a domain.");
                this.f288c.onCallBackSuccess(com.huawei.hms.framework.network.grs.b.b.a(this.f289d.getPackageName(), this.f290e).a(this.f289d, this.f291f, this.f290e, this.a, true));
            }
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a(com.huawei.hms.framework.network.grs.c.f fVar) throws org.json.JSONException {
            java.util.Map<java.lang.String, java.lang.String> mapA = com.huawei.hms.framework.network.grs.a.a(fVar.i(), this.a);
            if (mapA.isEmpty()) {
                java.util.Map<java.lang.String, java.lang.String> map = this.b;
                if (map != null && !map.isEmpty()) {
                    this.f288c.onCallBackSuccess(this.b);
                    return;
                } else if (this.b != null) {
                    this.f288c.onCallBackFail(-5);
                    return;
                } else {
                    com.huawei.hms.framework.common.Logger.i(com.huawei.hms.framework.network.grs.a.a, "access local config for return a domain.");
                    mapA = com.huawei.hms.framework.network.grs.b.b.a(this.f289d.getPackageName(), this.f290e).a(this.f289d, this.f291f, this.f290e, this.a, true);
                }
            }
            this.f288c.onCallBackSuccess(mapA);
        }
    }

    public static class b implements com.huawei.hms.framework.network.grs.b {
        public java.lang.String a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public com.huawei.hms.framework.network.grs.IQueryUrlCallBack f292c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f293d;

        /* renamed from: e, reason: collision with root package name */
        public android.content.Context f294e;

        /* renamed from: f, reason: collision with root package name */
        public com.huawei.hms.framework.network.grs.GrsBaseInfo f295f;

        /* renamed from: g, reason: collision with root package name */
        public com.huawei.hms.framework.network.grs.a.a f296g;

        public b(java.lang.String str, java.lang.String str2, com.huawei.hms.framework.network.grs.IQueryUrlCallBack iQueryUrlCallBack, java.lang.String str3, android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.a.a aVar) {
            this.a = str;
            this.b = str2;
            this.f292c = iQueryUrlCallBack;
            this.f293d = str3;
            this.f294e = context;
            this.f295f = grsBaseInfo;
            this.f296g = aVar;
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a() {
            if (!android.text.TextUtils.isEmpty(this.f293d)) {
                this.f292c.onCallBackSuccess(this.f293d);
            } else {
                if (!android.text.TextUtils.isEmpty(this.f293d)) {
                    this.f292c.onCallBackFail(-3);
                    return;
                }
                com.huawei.hms.framework.common.Logger.i(com.huawei.hms.framework.network.grs.a.a, "access local config for return a domain.");
                this.f292c.onCallBackSuccess(com.huawei.hms.framework.network.grs.b.b.a(this.f294e.getPackageName(), this.f295f).a(this.f294e, this.f296g, this.f295f, this.a, this.b, true));
            }
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a(com.huawei.hms.framework.network.grs.c.f fVar) {
            java.lang.String strA = com.huawei.hms.framework.network.grs.a.a(fVar.i(), this.a, this.b);
            if (android.text.TextUtils.isEmpty(strA)) {
                if (!android.text.TextUtils.isEmpty(this.f293d)) {
                    this.f292c.onCallBackSuccess(this.f293d);
                    return;
                } else if (!android.text.TextUtils.isEmpty(this.f293d)) {
                    this.f292c.onCallBackFail(-5);
                    return;
                } else {
                    com.huawei.hms.framework.common.Logger.i(com.huawei.hms.framework.network.grs.a.a, "access local config for return a domain.");
                    strA = com.huawei.hms.framework.network.grs.b.b.a(this.f294e.getPackageName(), this.f295f).a(this.f294e, this.f296g, this.f295f, this.a, this.b, true);
                }
            }
            this.f292c.onCallBackSuccess(strA);
        }
    }

    public a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.a.a aVar, com.huawei.hms.framework.network.grs.c.m mVar, com.huawei.hms.framework.network.grs.a.c cVar) {
        this.b = grsBaseInfo;
        this.f281c = aVar;
        this.f282d = mVar;
        this.f283e = cVar;
    }

    public static com.huawei.hms.framework.network.grs.local.model.CountryCodeBean a(android.content.Context context, boolean z) {
        return new com.huawei.hms.framework.network.grs.local.model.CountryCodeBean(context, z);
    }

    private java.lang.String a(java.lang.String str, java.lang.String str2, com.huawei.hms.framework.network.grs.a.b bVar, android.content.Context context) {
        java.lang.String strA = this.f281c.a(this.b, str, str2, bVar, context);
        if (android.text.TextUtils.isEmpty(strA)) {
            return com.huawei.hms.framework.network.grs.b.b.a(context.getPackageName(), this.b).a(context, this.f281c, this.b, str, str2, false);
        }
        com.huawei.hms.framework.common.Logger.i(a, "get url from sp is not empty.");
        com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
        return strA;
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new org.json.JSONObject(str).getJSONObject(str2).getString(str3);
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "Method{getServiceNameUrl} query url from SP occur an JSONException", e2);
            return "";
        }
    }

    public static java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> a(java.lang.String str) {
        java.util.HashMap map = new java.util.HashMap(16);
        if (android.text.TextUtils.isEmpty(str)) {
            com.huawei.hms.framework.common.Logger.v(a, "isSpExpire jsonValue is null.");
            return map;
        }
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(str);
            java.util.Iterator<java.lang.String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                java.lang.String string = itKeys.next().toString();
                map.put(string, a(jSONObject.getJSONObject(string)));
            }
            return map;
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "getServicesUrlsMap occur a JSONException", e2);
            return map;
        }
    }

    private java.util.Map<java.lang.String, java.lang.String> a(java.lang.String str, com.huawei.hms.framework.network.grs.a.b bVar, android.content.Context context) {
        java.util.Map<java.lang.String, java.lang.String> mapA = this.f281c.a(this.b, str, bVar, context);
        if (mapA == null || mapA.isEmpty()) {
            return com.huawei.hms.framework.network.grs.b.b.a(context.getPackageName(), this.b).a(context, this.f281c, this.b, str, false);
        }
        com.huawei.hms.framework.common.Logger.i(a, "get url from sp is not empty.");
        com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
        return mapA;
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(java.lang.String str, java.lang.String str2) throws org.json.JSONException {
        java.util.HashMap map = new java.util.HashMap();
        if (android.text.TextUtils.isEmpty(str)) {
            com.huawei.hms.framework.common.Logger.v(a, "isSpExpire jsonValue is null.");
            return map;
        }
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(str).getJSONObject(str2);
            if (jSONObject == null) {
                com.huawei.hms.framework.common.Logger.v(a, "getServiceNameUrls jsObject null.");
                return map;
            }
            java.util.Iterator<java.lang.String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                java.lang.String string = itKeys.next().toString();
                map.put(string, jSONObject.get(string).toString());
            }
            return map;
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "Method{getServiceNameUrls} query url from SP occur an JSONException", e2);
            return map;
        }
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(org.json.JSONObject jSONObject) {
        java.util.HashMap map = new java.util.HashMap(16);
        try {
            java.util.Iterator<java.lang.String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                java.lang.String string = itKeys.next().toString();
                map.put(string, jSONObject.get(string).toString());
            }
            return map;
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "getServiceUrls occur a JSONException", e2);
            return map;
        }
    }

    private void a(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map, com.huawei.hms.framework.network.grs.IQueryUrlsCallBack iQueryUrlsCallBack, android.content.Context context) {
        this.f282d.a(new com.huawei.hms.framework.network.grs.c.b.c(this.b, context), new com.huawei.hms.framework.network.grs.a.C0004a(str, map, iQueryUrlsCallBack, context, this.b, this.f281c), str, this.f283e);
    }

    public java.lang.String a(android.content.Context context, java.lang.String str) {
        com.huawei.hms.framework.network.grs.c.f fVarA = this.f282d.a(new com.huawei.hms.framework.network.grs.c.b.c(this.b, context), str, this.f283e);
        return fVarA == null ? "" : fVarA.i();
    }

    public java.lang.String a(java.lang.String str, java.lang.String str2, android.content.Context context) {
        com.huawei.hms.framework.network.grs.a.b bVar = new com.huawei.hms.framework.network.grs.a.b();
        java.lang.String strA = a(str, str2, bVar, context);
        if (bVar.a() && !android.text.TextUtils.isEmpty(strA)) {
            com.huawei.hms.framework.common.Logger.v(a, "get unexpired cache localUrl{%s}", strA);
            com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
            return strA;
        }
        java.lang.String strA2 = a(a(context, str), str, str2);
        if (!android.text.TextUtils.isEmpty(strA2)) {
            com.huawei.hms.framework.common.Logger.i(a, "get url is from remote server");
            com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
            return strA2;
        }
        if (!android.text.TextUtils.isEmpty(strA)) {
            return strA;
        }
        com.huawei.hms.framework.common.Logger.i(a, "access local config for return a domain.");
        return com.huawei.hms.framework.network.grs.b.b.a(context.getPackageName(), this.b).a(context, this.f281c, this.b, str, str2, true);
    }

    public java.util.Map<java.lang.String, java.lang.String> a(java.lang.String str, android.content.Context context) throws org.json.JSONException {
        com.huawei.hms.framework.network.grs.a.b bVar = new com.huawei.hms.framework.network.grs.a.b();
        java.util.Map<java.lang.String, java.lang.String> mapA = a(str, bVar, context);
        if (bVar.a() && mapA != null && !mapA.isEmpty()) {
            com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
            return mapA;
        }
        java.util.Map<java.lang.String, java.lang.String> mapA2 = a(a(context, str), str);
        if (!mapA2.isEmpty()) {
            com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
            return mapA2;
        }
        if (mapA == null || !mapA.isEmpty()) {
            return mapA;
        }
        com.huawei.hms.framework.common.Logger.i(a, "access local config for return a domain.");
        return com.huawei.hms.framework.network.grs.b.b.a(context.getPackageName(), this.b).a(context, this.f281c, this.b, str, true);
    }

    public void a(java.lang.String str, com.huawei.hms.framework.network.grs.IQueryUrlsCallBack iQueryUrlsCallBack, android.content.Context context) {
        com.huawei.hms.framework.network.grs.a.b bVar = new com.huawei.hms.framework.network.grs.a.b();
        java.util.Map<java.lang.String, java.lang.String> mapA = a(str, bVar, context);
        if (!bVar.a()) {
            a(str, mapA, iQueryUrlsCallBack, context);
        } else if (mapA == null || mapA.isEmpty()) {
            iQueryUrlsCallBack.onCallBackFail(-5);
        } else {
            com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
            iQueryUrlsCallBack.onCallBackSuccess(mapA);
        }
    }

    public void a(java.lang.String str, java.lang.String str2, com.huawei.hms.framework.network.grs.IQueryUrlCallBack iQueryUrlCallBack, android.content.Context context) {
        com.huawei.hms.framework.network.grs.a.b bVar = new com.huawei.hms.framework.network.grs.a.b();
        java.lang.String strA = a(str, str2, bVar, context);
        if (!bVar.a()) {
            this.f282d.a(new com.huawei.hms.framework.network.grs.c.b.c(this.b, context), new com.huawei.hms.framework.network.grs.a.b(str, str2, iQueryUrlCallBack, strA, context, this.b, this.f281c), str, this.f283e);
        } else if (android.text.TextUtils.isEmpty(strA)) {
            iQueryUrlCallBack.onCallBackFail(-5);
        } else {
            com.huawei.hms.framework.network.grs.b.b.a(context, this.b);
            iQueryUrlCallBack.onCallBackSuccess(strA);
        }
    }
}
