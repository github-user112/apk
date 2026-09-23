package com.huawei.hms.framework.network.grs.b;

/* loaded from: classes.dex */
public abstract class a {
    public com.huawei.hms.framework.network.grs.local.model.a a;
    public java.util.List<com.huawei.hms.framework.network.grs.local.model.b> b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.String> f297c = new java.util.concurrent.ConcurrentHashMap(16);

    /* renamed from: d, reason: collision with root package name */
    public boolean f298d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f299e = false;

    /* renamed from: f, reason: collision with root package name */
    public java.util.Set<java.lang.String> f300f = new java.util.HashSet(16);

    private int a(android.content.Context context) throws java.io.IOException {
        int i = -1;
        try {
            java.lang.String[] list = context.getAssets().list("");
            if (list != null && list.length > 0) {
                for (java.lang.String str : list) {
                    if (java.util.regex.Pattern.matches("^grs_sdk_global_route_config_[a-zA-Z]+\\.json$", str) && g(com.huawei.hms.framework.network.grs.d.c.a(str, context)) == 0) {
                        com.huawei.hms.framework.common.Logger.i("AbstractLocalManager", "load SDK_CONFIG_FILE sucess.");
                        i = 0;
                    }
                }
            }
        } catch (java.io.IOException unused) {
            com.huawei.hms.framework.common.Logger.w("AbstractLocalManager", "list assets files fail,please check if according to our standard config json files.");
        }
        return i;
    }

    private int a(java.lang.String str, android.content.Context context) {
        if (f(com.huawei.hms.framework.network.grs.d.c.a(str, context)) != 0) {
            return -1;
        }
        com.huawei.hms.framework.common.Logger.i("AbstractLocalManager", "load APP_CONFIG_FILE success.");
        return 0;
    }

    private java.util.Map<java.lang.String, java.lang.String> a(java.util.List<com.huawei.hms.framework.network.grs.local.model.b> list, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str) {
        java.util.concurrent.ConcurrentHashMap concurrentHashMap = new java.util.concurrent.ConcurrentHashMap(16);
        concurrentHashMap.put("no_route_country", "no-country");
        for (com.huawei.hms.framework.network.grs.local.model.b bVar : list) {
            if (bVar.a().contains(grsBaseInfo.getIssueCountry())) {
                concurrentHashMap.put(grsBaseInfo.getIssueCountry(), bVar.b());
            }
            if (bVar.a().contains(grsBaseInfo.getRegCountry())) {
                concurrentHashMap.put(grsBaseInfo.getRegCountry(), bVar.b());
            }
            if (bVar.a().contains(grsBaseInfo.getSerCountry())) {
                concurrentHashMap.put(grsBaseInfo.getSerCountry(), bVar.b());
            }
            if (bVar.a().contains(str)) {
                com.huawei.hms.framework.common.Logger.v("AbstractLocalManager", "get countryGroupID from geoIp");
                concurrentHashMap.put(str, bVar.b());
            }
        }
        return concurrentHashMap;
    }

    private int f(java.lang.String str) {
        int iB;
        if (android.text.TextUtils.isEmpty(str)) {
            return -1;
        }
        if (this.f299e && (iB = b(str)) != 0) {
            return iB;
        }
        int iA = a(str);
        return iA != 0 ? iA : e(str);
    }

    private int g(java.lang.String str) {
        java.util.List<com.huawei.hms.framework.network.grs.local.model.b> list;
        int iC;
        if (android.text.TextUtils.isEmpty(str)) {
            return -1;
        }
        return (!this.f299e || !((list = this.b) == null || list.isEmpty()) || (iC = c(str)) == 0) ? d(str) : iC;
    }

    public abstract int a(java.lang.String str);

    public int a(java.lang.String str, android.content.Context context, boolean z) throws java.io.IOException {
        if (a(str, context) != 0 && z) {
            return -1;
        }
        a(context);
        return 0;
    }

    public com.huawei.hms.framework.network.grs.local.model.a a() {
        return this.a;
    }

    public java.lang.String a(android.content.Context context, com.huawei.hms.framework.network.grs.a.a aVar, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str, java.lang.String str2, boolean z) {
        java.util.Map<java.lang.String, java.lang.String> mapA = a(context, aVar, grsBaseInfo, str, z);
        if (mapA != null) {
            return mapA.get(str2);
        }
        com.huawei.hms.framework.common.Logger.w("AbstractLocalManager", "addresses not found by routeby in local config{%s}", str);
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0071 A[Catch: JSONException -> 0x008d, LOOP:1: B:32:0x006b->B:34:0x0071, LOOP_END, TryCatch #0 {JSONException -> 0x008d, blocks: (B:7:0x000e, B:8:0x0017, B:10:0x001d, B:12:0x0028, B:14:0x0031, B:16:0x003a, B:22:0x0052, B:26:0x005c, B:28:0x0063, B:32:0x006b, B:34:0x0071, B:35:0x007d, B:36:0x0086, B:20:0x004c, B:25:0x0059), top: B:44:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.huawei.hms.framework.network.grs.local.model.b> a(org.json.JSONArray r12) throws org.json.JSONException {
        /*
            r11 = this;
            java.lang.String r0 = "countriesOrAreas"
            java.lang.String r1 = "AbstractLocalManager"
            if (r12 == 0) goto L99
            int r2 = r12.length()
            if (r2 != 0) goto Le
            goto L99
        Le:
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: org.json.JSONException -> L8d
            r3 = 16
            r2.<init>(r3)     // Catch: org.json.JSONException -> L8d
            r4 = 0
            r5 = 0
        L17:
            int r6 = r12.length()     // Catch: org.json.JSONException -> L8d
            if (r5 >= r6) goto L8c
            org.json.JSONObject r6 = r12.getJSONObject(r5)     // Catch: org.json.JSONException -> L8d
            com.huawei.hms.framework.network.grs.local.model.b r7 = new com.huawei.hms.framework.network.grs.local.model.b     // Catch: org.json.JSONException -> L8d
            r7.<init>()     // Catch: org.json.JSONException -> L8d
            java.lang.String r8 = "id"
            java.lang.String r8 = r6.getString(r8)     // Catch: org.json.JSONException -> L8d
            r7.b(r8)     // Catch: org.json.JSONException -> L8d
            java.lang.String r8 = "name"
            java.lang.String r8 = r6.getString(r8)     // Catch: org.json.JSONException -> L8d
            r7.c(r8)     // Catch: org.json.JSONException -> L8d
            java.lang.String r8 = "description"
            java.lang.String r8 = r6.getString(r8)     // Catch: org.json.JSONException -> L8d
            r7.a(r8)     // Catch: org.json.JSONException -> L8d
            r8 = 0
            boolean r9 = r6.has(r0)     // Catch: org.json.JSONException -> L8d
            java.lang.String r10 = "countries"
            if (r9 == 0) goto L4c
            r10 = r0
            goto L52
        L4c:
            boolean r9 = r6.has(r10)     // Catch: org.json.JSONException -> L8d
            if (r9 == 0) goto L57
        L52:
            org.json.JSONArray r8 = r6.getJSONArray(r10)     // Catch: org.json.JSONException -> L8d
            goto L5c
        L57:
            java.lang.String r6 = "current country or area group has not config countries or areas."
            com.huawei.hms.framework.common.Logger.w(r1, r6)     // Catch: org.json.JSONException -> L8d
        L5c:
            java.util.HashSet r6 = new java.util.HashSet     // Catch: org.json.JSONException -> L8d
            r6.<init>(r3)     // Catch: org.json.JSONException -> L8d
            if (r8 == 0) goto L86
            int r9 = r8.length()     // Catch: org.json.JSONException -> L8d
            if (r9 != 0) goto L6a
            goto L86
        L6a:
            r9 = 0
        L6b:
            int r10 = r8.length()     // Catch: org.json.JSONException -> L8d
            if (r9 >= r10) goto L7d
            java.lang.Object r10 = r8.get(r9)     // Catch: org.json.JSONException -> L8d
            java.lang.String r10 = (java.lang.String) r10     // Catch: org.json.JSONException -> L8d
            r6.add(r10)     // Catch: org.json.JSONException -> L8d
            int r9 = r9 + 1
            goto L6b
        L7d:
            r7.a(r6)     // Catch: org.json.JSONException -> L8d
            r2.add(r7)     // Catch: org.json.JSONException -> L8d
            int r5 = r5 + 1
            goto L17
        L86:
            java.util.ArrayList r12 = new java.util.ArrayList     // Catch: org.json.JSONException -> L8d
            r12.<init>()     // Catch: org.json.JSONException -> L8d
            return r12
        L8c:
            return r2
        L8d:
            r12 = move-exception
            java.lang.String r0 = "parse countrygroup failed maybe json style is wrong."
            com.huawei.hms.framework.common.Logger.w(r1, r0, r12)
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            return r12
        L99:
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.b.a.a(org.json.JSONArray):java.util.List");
    }

    public java.util.Map<java.lang.String, java.lang.String> a(android.content.Context context, com.huawei.hms.framework.network.grs.a.a aVar, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str, boolean z) {
        if (!this.f298d) {
            return null;
        }
        com.huawei.hms.framework.network.grs.local.model.a aVar2 = this.a;
        if (aVar2 == null) {
            com.huawei.hms.framework.common.Logger.w("AbstractLocalManager", "application data is null.");
            return null;
        }
        com.huawei.hms.framework.network.grs.local.model.c cVarA = aVar2.a(str);
        if (cVarA == null) {
            com.huawei.hms.framework.common.Logger.w("AbstractLocalManager", "service not found in local config{%s}", str);
            return null;
        }
        java.lang.String strA = com.huawei.hms.framework.network.grs.b.f.a(context, aVar, cVarA.b(), grsBaseInfo, z);
        if (strA == null) {
            com.huawei.hms.framework.common.Logger.w("AbstractLocalManager", "country not found by routeby in local config{%s}", cVarA.b());
            return null;
        }
        java.util.List<com.huawei.hms.framework.network.grs.local.model.b> listA = cVarA.a();
        com.huawei.hms.framework.network.grs.local.model.d dVarA = cVarA.a(((listA == null || listA.size() == 0) ? this.f297c : a(listA, grsBaseInfo, strA)).get(strA));
        if (dVarA == null) {
            return null;
        }
        return dVarA.a();
    }

    public void a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        this.f297c.put("no_route_country", "no-country");
        java.util.List<com.huawei.hms.framework.network.grs.local.model.b> list = this.b;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (com.huawei.hms.framework.network.grs.local.model.b bVar : this.b) {
            if (bVar.a().contains(grsBaseInfo.getIssueCountry())) {
                this.f297c.put(grsBaseInfo.getIssueCountry(), bVar.b());
            }
            if (bVar.a().contains(grsBaseInfo.getRegCountry())) {
                this.f297c.put(grsBaseInfo.getRegCountry(), bVar.b());
            }
            if (bVar.a().contains(grsBaseInfo.getSerCountry())) {
                this.f297c.put(grsBaseInfo.getSerCountry(), bVar.b());
            }
        }
        this.b = null;
    }

    public abstract int b(java.lang.String str);

    public java.util.Set<java.lang.String> b() {
        return this.f300f;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[PHI: r10
  0x0060: PHI (r10v5 java.lang.String) = (r10v0 java.lang.String), (r10v1 java.lang.String) binds: [B:17:0x005e, B:20:0x006b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3 A[PHI: r6
  0x00b3: PHI (r6v4 java.lang.String) = (r6v2 java.lang.String), (r6v3 java.lang.String) binds: [B:29:0x00b1, B:32:0x00c2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(org.json.JSONArray r14) throws org.json.JSONException {
        /*
            r13 = this;
            if (r14 == 0) goto Le1
            int r0 = r14.length()
            if (r0 != 0) goto La
            goto Le1
        La:
            r0 = 0
            r1 = 0
        Lc:
            int r2 = r14.length()
            if (r1 >= r2) goto Le1
            org.json.JSONObject r2 = r14.getJSONObject(r1)
            com.huawei.hms.framework.network.grs.local.model.c r3 = new com.huawei.hms.framework.network.grs.local.model.c
            r3.<init>()
            java.lang.String r4 = "name"
            java.lang.String r4 = r2.getString(r4)
            r3.b(r4)
            java.util.Set<java.lang.String> r5 = r13.f300f
            boolean r5 = r5.contains(r4)
            if (r5 != 0) goto Ldd
            java.util.Set<java.lang.String> r5 = r13.f300f
            r5.add(r4)
            boolean r5 = r13.f299e
            if (r5 == 0) goto Ldd
            java.lang.String r5 = "routeBy"
            java.lang.String r5 = r2.getString(r5)
            r3.c(r5)
            java.lang.String r5 = "servings"
            org.json.JSONArray r5 = r2.getJSONArray(r5)
            r6 = 0
        L45:
            int r7 = r5.length()
            java.lang.String r8 = "AbstractLocalManager"
            if (r6 >= r7) goto Laa
            java.lang.Object r7 = r5.get(r6)
            org.json.JSONObject r7 = (org.json.JSONObject) r7
            com.huawei.hms.framework.network.grs.local.model.d r9 = new com.huawei.hms.framework.network.grs.local.model.d
            r9.<init>()
            java.lang.String r10 = "countryOrAreaGroup"
            boolean r11 = r7.has(r10)
            if (r11 == 0) goto L65
        L60:
            java.lang.String r8 = r7.getString(r10)
            goto L75
        L65:
            java.lang.String r10 = "countryGroup"
            boolean r11 = r7.has(r10)
            if (r11 == 0) goto L6e
            goto L60
        L6e:
            java.lang.String r10 = "maybe this service routeBy is unconditional."
            com.huawei.hms.framework.common.Logger.v(r8, r10)
            java.lang.String r8 = "no-country"
        L75:
            r9.a(r8)
            java.lang.String r8 = "addresses"
            org.json.JSONObject r7 = r7.getJSONObject(r8)
            java.util.HashMap r8 = new java.util.HashMap
            r10 = 16
            r8.<init>(r10)
            java.util.Iterator r10 = r7.keys()
        L89:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto L9d
            java.lang.Object r11 = r10.next()
            java.lang.String r11 = (java.lang.String) r11
            java.lang.String r12 = r7.getString(r11)
            r8.put(r11, r12)
            goto L89
        L9d:
            r9.a(r8)
            java.lang.String r7 = r9.b()
            r3.a(r7, r9)
            int r6 = r6 + 1
            goto L45
        Laa:
            r5 = 0
            java.lang.String r6 = "countryOrAreaGroups"
            boolean r7 = r2.has(r6)
            if (r7 == 0) goto Lbc
        Lb3:
            org.json.JSONArray r2 = r2.getJSONArray(r6)
            java.util.List r5 = r13.a(r2)
            goto Lca
        Lbc:
            java.lang.String r6 = "countryGroups"
            boolean r7 = r2.has(r6)
            if (r7 == 0) goto Lc5
            goto Lb3
        Lc5:
            java.lang.String r2 = "service use default countryOrAreaGroup"
            com.huawei.hms.framework.common.Logger.i(r8, r2)
        Lca:
            r3.a(r5)
            com.huawei.hms.framework.network.grs.local.model.a r2 = r13.a
            if (r2 != 0) goto Ld8
            com.huawei.hms.framework.network.grs.local.model.a r2 = new com.huawei.hms.framework.network.grs.local.model.a
            r2.<init>()
            r13.a = r2
        Ld8:
            com.huawei.hms.framework.network.grs.local.model.a r2 = r13.a
            r2.a(r4, r3)
        Ldd:
            int r1 = r1 + 1
            goto Lc
        Le1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.b.a.b(org.json.JSONArray):void");
    }

    public int c(java.lang.String str) throws org.json.JSONException {
        java.lang.String str2 = "countryOrAreaGroups";
        this.b = new java.util.ArrayList(16);
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(str);
            org.json.JSONArray jSONArray = null;
            if (jSONObject.has("countryOrAreaGroups")) {
                jSONArray = jSONObject.getJSONArray(str2);
            } else if (jSONObject.has("countryGroups")) {
                str2 = "countryGroups";
                jSONArray = jSONObject.getJSONArray(str2);
            } else {
                com.huawei.hms.framework.common.Logger.e("AbstractLocalManager", "maybe local config json is wrong because the default countryOrAreaGroups isn't config.");
            }
            if (jSONArray == null) {
                return -1;
            }
            this.b.addAll(a(jSONArray));
            return 0;
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w("AbstractLocalManager", "parse countrygroup failed maybe json style is wrong.", e2);
            return -1;
        }
    }

    public boolean c() {
        return this.f298d;
    }

    public int d(java.lang.String str) {
        try {
            b(new org.json.JSONObject(str).getJSONArray("services"));
            return 0;
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w("AbstractLocalManager", "parse 2.0 services failed maybe because of json style.please check!", e2);
            return -1;
        }
    }

    public abstract int e(java.lang.String str);
}
