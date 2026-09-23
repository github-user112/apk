package com.umeng.analytics;

/* loaded from: classes.dex */
public class b implements com.umeng.analytics.pro.m, com.umeng.analytics.pro.s {
    public static final java.lang.String A = "umsp_2";
    public static final java.lang.String B = "umsp_3";
    public static final java.lang.String C = "umsp_4";
    public static final java.lang.String D = "umsp_5";
    public static android.content.Context a = null;
    public static final java.lang.String h = "sp_uapp";
    public static final java.lang.String i = "prepp_uapp";
    public static final int o = 128;
    public static final int p = 256;
    public static java.lang.String q = "";
    public static java.lang.String r = "";
    public static final java.lang.String s = "ekv_bl";
    public static final java.lang.String t = "ekv_bl_ver";
    public static final java.lang.String v = "ekv_wl";
    public static final java.lang.String w = "ekv_wl_ver";
    public static final java.lang.String z = "umsp_1";
    public com.umeng.common.ISysListener b;

    /* renamed from: c, reason: collision with root package name */
    public com.umeng.analytics.pro.o f1201c;

    /* renamed from: d, reason: collision with root package name */
    public com.umeng.analytics.pro.u f1202d;

    /* renamed from: e, reason: collision with root package name */
    public com.umeng.analytics.pro.j f1203e;

    /* renamed from: f, reason: collision with root package name */
    public com.umeng.analytics.pro.t f1204f;

    /* renamed from: g, reason: collision with root package name */
    public com.umeng.analytics.pro.k f1205g;
    public boolean j;
    public volatile org.json.JSONObject k;
    public volatile org.json.JSONObject l;
    public volatile org.json.JSONObject m;
    public boolean n;
    public com.umeng.analytics.filter.a u;
    public com.umeng.analytics.filter.b x;
    public com.umeng.analytics.pro.l y;

    public static class a {
        public static final com.umeng.analytics.b a = new com.umeng.analytics.b();
    }

    static {
        android.content.Context appContext = com.umeng.commonsdk.service.UMGlobalContext.getAppContext();
        if (appContext != null) {
            a = appContext.getApplicationContext();
        }
    }

    public b() {
        this.f1201c = new com.umeng.analytics.pro.o();
        this.f1202d = new com.umeng.analytics.pro.u();
        this.f1203e = new com.umeng.analytics.pro.j();
        this.f1204f = com.umeng.analytics.pro.t.a();
        this.f1205g = null;
        this.j = false;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = false;
        this.u = null;
        this.x = null;
        this.y = null;
        this.f1201c.a(this);
    }

    public static com.umeng.analytics.b a() {
        return com.umeng.analytics.b.a.a;
    }

    private void a(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map, long j, boolean z2) {
        try {
            if (context == null) {
                com.umeng.commonsdk.statistics.common.MLog.e("context is null in onEventNoCheck, please check!");
                return;
            }
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (!this.j || !this.n) {
                a(a);
            }
            if (c(str)) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            java.lang.String string = "";
            if (this.k == null) {
                this.k = new org.json.JSONObject();
            } else {
                string = this.k.toString();
            }
            com.umeng.analytics.pro.r.a(a).a(str, map, j, string, z2);
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(th);
            }
        }
    }

    private void a(java.lang.String str, java.lang.Object obj) {
        org.json.JSONArray jSONArray;
        try {
            if (this.k == null) {
                this.k = new org.json.JSONObject();
            }
            int i2 = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof java.lang.String[]) {
                    java.lang.String[] strArr = (java.lang.String[]) obj;
                    if (strArr.length > 10) {
                        return;
                    }
                    jSONArray = new org.json.JSONArray();
                    while (i2 < strArr.length) {
                        if (strArr[i2] != null && !com.umeng.commonsdk.statistics.common.HelperUtils.checkStrLen(strArr[i2], 256)) {
                            jSONArray.put(strArr[i2]);
                        }
                        i2++;
                    }
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    jSONArray = new org.json.JSONArray();
                    while (i2 < jArr.length) {
                        jSONArray.put(jArr[i2]);
                        i2++;
                    }
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    jSONArray = new org.json.JSONArray();
                    while (i2 < iArr.length) {
                        jSONArray.put(iArr[i2]);
                        i2++;
                    }
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    jSONArray = new org.json.JSONArray();
                    while (i2 < fArr.length) {
                        jSONArray.put(fArr[i2]);
                        i2++;
                    }
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    jSONArray = new org.json.JSONArray();
                    while (i2 < dArr.length) {
                        jSONArray.put(dArr[i2]);
                        i2++;
                    }
                } else {
                    if (!(obj instanceof short[])) {
                        return;
                    }
                    short[] sArr = (short[]) obj;
                    jSONArray = new org.json.JSONArray();
                    while (i2 < sArr.length) {
                        jSONArray.put((int) sArr[i2]);
                        i2++;
                    }
                }
            } else {
                if (!(obj instanceof java.util.List)) {
                    if ((obj instanceof java.lang.String) || (obj instanceof java.lang.Long) || (obj instanceof java.lang.Integer) || (obj instanceof java.lang.Float) || (obj instanceof java.lang.Double) || (obj instanceof java.lang.Short)) {
                        this.k.put(str, obj);
                        return;
                    }
                    return;
                }
                java.util.List list = (java.util.List) obj;
                jSONArray = new org.json.JSONArray();
                while (i2 < list.size()) {
                    java.lang.Object obj2 = list.get(i2);
                    if ((obj2 instanceof java.lang.String) || (obj2 instanceof java.lang.Long) || (obj2 instanceof java.lang.Integer) || (obj2 instanceof java.lang.Float) || (obj2 instanceof java.lang.Double) || (obj2 instanceof java.lang.Short)) {
                        jSONArray.put(list.get(i2));
                    }
                    i2++;
                }
            }
            this.k.put(str, jSONArray);
        } catch (java.lang.Throwable unused) {
        }
    }

    private boolean b(java.lang.String str, java.lang.Object obj) {
        int length;
        if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.commonsdk.statistics.common.MLog.e("key is " + str + ", please check key, illegal");
            return false;
        }
        try {
            length = str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME).length;
        } catch (java.io.UnsupportedEncodingException unused) {
            length = 0;
        }
        if (length > 128) {
            com.umeng.commonsdk.statistics.common.MLog.e("key length is " + length + ", please check key, illegal");
            return false;
        }
        if (obj instanceof java.lang.String) {
            if (((java.lang.String) obj).getBytes(com.google.android.exoplayer2.C.UTF8_NAME).length <= 256) {
                return true;
            }
            com.umeng.commonsdk.statistics.common.MLog.e("value length is " + ((java.lang.String) obj).getBytes(com.google.android.exoplayer2.C.UTF8_NAME).length + ", please check value, illegal");
            return false;
        }
        if ((obj instanceof java.lang.Integer) || (obj instanceof java.lang.Long) || (obj instanceof java.lang.Double) || (obj instanceof java.lang.Float)) {
            return true;
        }
        com.umeng.commonsdk.statistics.common.MLog.e("value is " + obj + ", please check value, type illegal");
        return false;
    }

    private boolean c(java.lang.String str) {
        if (this.u.enabled() && this.u.matchHit(str)) {
            return true;
        }
        if (!this.x.enabled()) {
            return false;
        }
        if (!this.x.matchHit(str)) {
            return true;
        }
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> white list match! id = " + str);
        return false;
    }

    private void i(android.content.Context context) {
        try {
            if (context == null) {
                com.umeng.commonsdk.statistics.common.MLog.e("unexpected null context in getNativeSuperProperties");
                return;
            }
            if (a == null) {
                a = context.getApplicationContext();
            }
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
            if (this.k == null) {
                this.k = new org.json.JSONObject();
            }
            if (this.l == null) {
                this.l = new org.json.JSONObject();
            }
            java.lang.String string = sharedPreferences.getString(i, null);
            if (!android.text.TextUtils.isEmpty(string)) {
                try {
                    this.m = new org.json.JSONObject(string);
                } catch (org.json.JSONException unused) {
                }
            }
            if (this.m == null) {
                this.m = new org.json.JSONObject();
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public void a(double d2, double d3) {
        android.content.Context context = a;
        if (context == null) {
            return;
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(context)) {
            com.umeng.commonsdk.statistics.common.MLog.e("setLocation can not be called in child process");
            return;
        }
        if (com.umeng.analytics.AnalyticsConfig.a == null) {
            com.umeng.analytics.AnalyticsConfig.a = new double[2];
        }
        double[] dArr = com.umeng.analytics.AnalyticsConfig.a;
        dArr[0] = d2;
        dArr[1] = d3;
    }

    public void a(long j) {
        android.content.Context context = a;
        if (context == null) {
            return;
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(context)) {
            com.umeng.commonsdk.statistics.common.MLog.e("setSessionContinueMillis can not be called in child process");
        } else {
            com.umeng.analytics.AnalyticsConfig.kContinueSessionMillis = j;
            com.umeng.analytics.pro.x.a().a(com.umeng.analytics.AnalyticsConfig.kContinueSessionMillis);
        }
    }

    public void a(android.content.Context context) {
        if (context == null) {
            return;
        }
        try {
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (this.u == null) {
                com.umeng.analytics.filter.a aVar = new com.umeng.analytics.filter.a("ekv_bl", "ekv_bl_ver");
                this.u = aVar;
                aVar.register(a);
            }
            if (this.x == null) {
                com.umeng.analytics.filter.b bVar = new com.umeng.analytics.filter.b("ekv_wl", "ekv_wl_ver");
                this.x = bVar;
                bVar.register(a);
            }
            if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                if (!this.j) {
                    this.j = true;
                    i(a);
                }
                synchronized (this) {
                    if (!this.n) {
                        com.umeng.analytics.pro.k kVarA = com.umeng.analytics.pro.k.a(context);
                        this.f1205g = kVarA;
                        if (kVarA.a()) {
                            this.n = true;
                        }
                        this.y = com.umeng.analytics.pro.l.a();
                        try {
                            com.umeng.analytics.pro.l.a(context);
                            this.y.a(this);
                        } catch (java.lang.Throwable unused) {
                        }
                    }
                }
                if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                    com.umeng.commonsdk.debug.UMLog.mutlInfo(com.umeng.analytics.pro.i.B, 3, "", null, null);
                }
                com.umeng.commonsdk.framework.UMWorkDispatch.registerConnStateObserver(com.umeng.analytics.CoreProtocol.getInstance(a));
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public void a(android.content.Context context, int i2) {
        if (context == null) {
            com.umeng.commonsdk.statistics.common.MLog.e("unexpected null context in setVerticalType");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("setVerticalType can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        com.umeng.analytics.AnalyticsConfig.a(a, i2);
    }

    public void a(android.content.Context context, com.umeng.analytics.MobclickAgent.EScenarioType eScenarioType) {
        java.lang.String str;
        if (context == null) {
            str = "unexpected null context in setScenarioType";
        } else {
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                if (eScenarioType != null) {
                    a(a, eScenarioType.toValue());
                }
                if (this.j && this.n) {
                    return;
                }
                a(a);
                return;
            }
            str = "setScenarioType can not be called in child process";
        }
        com.umeng.commonsdk.statistics.common.MLog.e(str);
    }

    public void a(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.w, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("reportError can not be called in child process");
            return;
        }
        if (android.text.TextUtils.isEmpty(str)) {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.x, 0, "\\|");
                return;
            }
            return;
        }
        try {
            if (!this.j || !this.n) {
                a(a);
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("ts", java.lang.System.currentTimeMillis());
            jSONObject.put(com.umeng.analytics.pro.c.Q, 2);
            jSONObject.put(com.umeng.analytics.pro.c.R, str);
            jSONObject.put("__ii", this.f1204f.c());
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.j, com.umeng.analytics.CoreProtocol.getInstance(a), jSONObject);
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(th);
            }
        }
    }

    public synchronized void a(android.content.Context context, java.lang.String str, java.lang.Object obj) {
        org.json.JSONArray jSONArray;
        int i2 = 0;
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.af, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("registerSuperProperty can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        if (!android.text.TextUtils.isEmpty(str) && obj != null) {
            if (!str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
                com.umeng.commonsdk.statistics.common.MLog.e("property name is " + str + ", please check key, must be correct!");
                return;
            }
            if ((obj instanceof java.lang.String) && !com.umeng.commonsdk.statistics.common.HelperUtils.checkStrLen(obj.toString(), 256)) {
                com.umeng.commonsdk.statistics.common.MLog.e("property value is " + obj + ", please check value, lawless!");
                return;
            }
            try {
                if (this.k == null) {
                    this.k = new org.json.JSONObject();
                }
                if (obj.getClass().isArray()) {
                    if (obj instanceof java.lang.String[]) {
                        java.lang.String[] strArr = (java.lang.String[]) obj;
                        if (strArr.length > 10) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, size is " + strArr.length + ", overstep 10!");
                            return;
                        }
                        jSONArray = new org.json.JSONArray();
                        while (i2 < strArr.length) {
                            if (strArr[i2] != null && com.umeng.commonsdk.statistics.common.HelperUtils.checkStrLen(strArr[i2], 256)) {
                                jSONArray.put(strArr[i2]);
                                i2++;
                            }
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, length is " + strArr[i2].length() + ", overlength 256!");
                            return;
                        }
                    }
                    if (obj instanceof long[]) {
                        long[] jArr = (long[]) obj;
                        if (jArr.length > 10) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, size is " + jArr.length + ", overstep 10!");
                            return;
                        }
                        jSONArray = new org.json.JSONArray();
                        while (i2 < jArr.length) {
                            jSONArray.put(jArr[i2]);
                            i2++;
                        }
                    } else if (obj instanceof int[]) {
                        int[] iArr = (int[]) obj;
                        if (iArr.length > 10) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, size is " + iArr.length + ", overstep 10!");
                            return;
                        }
                        jSONArray = new org.json.JSONArray();
                        while (i2 < iArr.length) {
                            jSONArray.put(iArr[i2]);
                            i2++;
                        }
                    } else if (obj instanceof float[]) {
                        float[] fArr = (float[]) obj;
                        if (fArr.length > 10) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, size is " + fArr.length + ", overstep 10!");
                            return;
                        }
                        jSONArray = new org.json.JSONArray();
                        while (i2 < fArr.length) {
                            jSONArray.put(fArr[i2]);
                            i2++;
                        }
                    } else if (obj instanceof double[]) {
                        double[] dArr = (double[]) obj;
                        if (dArr.length > 10) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, size is " + dArr.length + ", overstep 10!");
                            return;
                        }
                        jSONArray = new org.json.JSONArray();
                        while (i2 < dArr.length) {
                            jSONArray.put(dArr[i2]);
                            i2++;
                        }
                    } else {
                        if (!(obj instanceof short[])) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, illegal type!");
                            return;
                        }
                        short[] sArr = (short[]) obj;
                        if (sArr.length > 10) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check value, size is " + sArr.length + ", overstep 10!");
                            return;
                        }
                        jSONArray = new org.json.JSONArray();
                        while (i2 < sArr.length) {
                            jSONArray.put((int) sArr[i2]);
                            i2++;
                        }
                    }
                    this.k.put(str, jSONArray);
                } else {
                    if (!(obj instanceof java.lang.String) && !(obj instanceof java.lang.Long) && !(obj instanceof java.lang.Integer) && !(obj instanceof java.lang.Float) && !(obj instanceof java.lang.Double) && !(obj instanceof java.lang.Short)) {
                        com.umeng.commonsdk.statistics.common.MLog.e("please check value, illegal type!");
                        return;
                    }
                    this.k.put(str, obj);
                }
            } catch (java.lang.Throwable unused) {
            }
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.r, com.umeng.analytics.CoreProtocol.getInstance(a), this.k.toString());
            return;
        }
        com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ag, 0, "\\|");
    }

    public void a(android.content.Context context, java.lang.String str, java.lang.String str2, long j, int i2) {
        if (context == null) {
            return;
        }
        try {
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (!this.j || !this.n) {
                a(a);
            }
            if (c(str)) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            java.lang.String string = "";
            if (this.k == null) {
                this.k = new org.json.JSONObject();
            } else {
                string = this.k.toString();
            }
            com.umeng.analytics.pro.r.a(a).a(str, str2, j, i2, string);
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(th);
            }
        }
    }

    public void a(android.content.Context context, java.lang.String str, java.util.HashMap<java.lang.String, java.lang.Object> map) {
        if (context == null) {
            return;
        }
        try {
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                com.umeng.commonsdk.statistics.common.MLog.e("onGKVEvent can not be called in child process");
                return;
            }
            if (!this.j || !this.n) {
                a(a);
            }
            java.lang.String string = "";
            if (this.k == null) {
                this.k = new org.json.JSONObject();
            } else {
                string = this.k.toString();
            }
            com.umeng.analytics.pro.r.a(a).a(str, map, string);
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(th);
            }
        }
    }

    public void a(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map) {
        a(context, str, map, -1L, true);
    }

    public void a(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map, long j) {
        try {
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(th);
            }
        }
        if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.f1345c, 0, "\\|");
            return;
        }
        if (java.util.Arrays.asList(com.umeng.analytics.pro.c.aF).contains(str)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.b, 0, "\\|");
            return;
        }
        if (map.isEmpty()) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.f1346d, 0, "\\|");
            return;
        }
        java.util.Iterator<java.util.Map.Entry<java.lang.String, java.lang.Object>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (java.util.Arrays.asList(com.umeng.analytics.pro.c.aF).contains(it.next().getKey())) {
                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.f1347e, 0, "\\|");
                return;
            }
        }
        a(context, str, map, j, false);
    }

    public void a(android.content.Context context, java.lang.Throwable th) {
        if (context == null || th == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.y, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("reportError can not be called in child process");
            return;
        }
        try {
            if (!this.j || !this.n) {
                a(a);
            }
            a(a, com.umeng.commonsdk.statistics.common.DataHelper.convertExceptionToString(th));
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(e2);
            }
        }
    }

    public synchronized void a(android.content.Context context, java.util.List<java.lang.String> list) {
        try {
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.statistics.common.MLog.e(th);
        }
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.aj, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("setFirstLaunchEvent can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        com.umeng.analytics.pro.r.a(a).a(list);
    }

    public synchronized void a(android.content.Context context, org.json.JSONObject jSONObject) {
        java.lang.String string;
        java.lang.Object obj;
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.al, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("registerPreProperties can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        if (this.m == null) {
            this.m = new org.json.JSONObject();
        }
        if (jSONObject == null || jSONObject.length() <= 0) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.am, 0, "\\|");
            return;
        }
        org.json.JSONObject jSONObject2 = null;
        try {
            jSONObject2 = new org.json.JSONObject(this.m.toString());
        } catch (java.lang.Exception unused) {
        }
        if (jSONObject2 == null) {
            jSONObject2 = new org.json.JSONObject();
        }
        java.util.Iterator<java.lang.String> itKeys = jSONObject.keys();
        if (itKeys != null) {
            while (itKeys.hasNext()) {
                try {
                    string = itKeys.next().toString();
                    obj = jSONObject.get(string);
                } catch (java.lang.Exception unused2) {
                }
                if (b(string, obj)) {
                    jSONObject2.put(string, obj);
                    if (jSONObject2.length() > 10) {
                        com.umeng.commonsdk.statistics.common.MLog.e("please check propertics, size overlength!");
                        return;
                    }
                    continue;
                } else {
                    return;
                }
            }
        }
        this.m = jSONObject2;
        if (this.m.length() > 0) {
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.u, com.umeng.analytics.CoreProtocol.getInstance(a), this.m.toString());
        }
    }

    public void a(com.umeng.analytics.MobclickAgent.PageMode pageMode) {
        android.content.Context context = a;
        if (context == null) {
            return;
        }
        if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(context)) {
            com.umeng.analytics.pro.k.b = pageMode;
        } else {
            com.umeng.commonsdk.statistics.common.MLog.e("setPageCollectionMode can not be called in child process");
        }
    }

    public void a(com.umeng.common.ISysListener iSysListener) {
        if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            this.b = iSysListener;
        } else {
            com.umeng.commonsdk.statistics.common.MLog.e("setSysListener can not be called in child process");
        }
    }

    public synchronized void a(java.lang.Object obj) {
        if (a == null) {
            return;
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("registerSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (obj != null) {
            java.lang.String str = (java.lang.String) obj;
            android.content.SharedPreferences.Editor editorEdit = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit();
            if (editorEdit != null && !android.text.TextUtils.isEmpty(str)) {
                editorEdit.putString(h, this.k.toString()).commit();
            }
        }
    }

    public void a(java.lang.String str) {
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("onPageStart can not be called in child process");
            return;
        }
        try {
            if (com.umeng.analytics.pro.k.b != com.umeng.analytics.MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f1202d.a(str);
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public void a(java.lang.String str, java.lang.String str2) {
        try {
            if (a == null) {
                return;
            }
            if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                com.umeng.commonsdk.statistics.common.MLog.e("onProfileSignIn can not be called in child process");
                return;
            }
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put(com.umeng.analytics.pro.c.M, str);
            jSONObject.put("uid", str2);
            jSONObject.put("ts", jCurrentTimeMillis);
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.f1367e, com.umeng.analytics.CoreProtocol.getInstance(a), jSONObject);
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.o, com.umeng.analytics.CoreProtocol.getInstance(a), jSONObject);
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    @Override // com.umeng.analytics.pro.s
    public void a(java.lang.Throwable th) throws org.json.JSONException {
        try {
            if (a == null) {
                return;
            }
            if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                com.umeng.commonsdk.statistics.common.MLog.e("onAppCrash can not be called in child process");
                return;
            }
            if (com.umeng.analytics.AnalyticsConfig.enable) {
                if (this.f1202d != null) {
                    this.f1202d.b();
                }
                com.umeng.analytics.pro.k.a(a, "onAppCrash");
                if (this.f1203e != null) {
                    this.f1203e.b();
                }
                if (this.f1205g != null) {
                    this.f1205g.c();
                }
                if (this.f1204f != null) {
                    this.f1204f.c(a, java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
                }
                if (th != null) {
                    org.json.JSONObject jSONObject = new org.json.JSONObject();
                    jSONObject.put("ts", java.lang.System.currentTimeMillis());
                    jSONObject.put(com.umeng.analytics.pro.c.Q, 1);
                    jSONObject.put(com.umeng.analytics.pro.c.R, com.umeng.commonsdk.statistics.common.DataHelper.convertExceptionToString(th));
                    com.umeng.analytics.pro.h.a(a).a(this.f1204f.c(), jSONObject.toString(), 1);
                }
                com.umeng.analytics.pro.n.a(a).d();
                com.umeng.analytics.pro.u.a(a);
                if (com.umeng.analytics.pro.k.b == com.umeng.analytics.MobclickAgent.PageMode.AUTO) {
                    com.umeng.analytics.pro.k.c(a);
                }
                com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit().commit();
            }
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e("Exception in onAppCrash", e2);
            }
        }
    }

    public void a(javax.microedition.khronos.opengles.GL10 gl10) {
        java.lang.String[] gpu = com.umeng.commonsdk.utils.UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            com.umeng.analytics.AnalyticsConfig.GPU_VENDER = gpu[0];
            com.umeng.analytics.AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    public void a(boolean z2) {
        android.content.Context context = a;
        if (context == null) {
            return;
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(context)) {
            com.umeng.commonsdk.statistics.common.MLog.e("setCatchUncaughtExceptions can not be called in child process");
        } else {
            if (com.umeng.analytics.AnalyticsConfig.CHANGE_CATCH_EXCEPTION_NOTALLOW) {
                return;
            }
            com.umeng.analytics.AnalyticsConfig.CATCH_EXCEPTION = z2;
        }
    }

    public org.json.JSONObject b() {
        return this.k;
    }

    public void b(android.content.Context context) {
        java.lang.String str;
        if (context == null) {
            str = "unexpected null context in onResume";
        } else {
            if (com.umeng.analytics.pro.k.b == com.umeng.analytics.MobclickAgent.PageMode.AUTO) {
                return;
            }
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                if (com.umeng.commonsdk.UMConfigure.isDebugLog() && !(context instanceof android.app.Activity)) {
                    com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.o, 2, "\\|");
                }
                try {
                    if (!this.j || !this.n) {
                        a(context);
                    }
                    if (com.umeng.analytics.pro.k.b != com.umeng.analytics.MobclickAgent.PageMode.LEGACY_MANUAL) {
                        this.f1203e.a(context.getClass().getName());
                    }
                    h();
                    if (com.umeng.commonsdk.UMConfigure.isDebugLog() && (context instanceof android.app.Activity)) {
                        q = context.getClass().getName();
                        return;
                    }
                    return;
                } catch (java.lang.Throwable th) {
                    com.umeng.commonsdk.statistics.common.MLog.e("Exception occurred in Mobclick.onResume(). ", th);
                    return;
                }
            }
            str = "onResume can not be called in child process";
        }
        com.umeng.commonsdk.statistics.common.MLog.e(str);
    }

    public void b(android.content.Context context, java.lang.String str) {
        try {
            if (context == null) {
                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.N, 0, "\\|");
                return;
            }
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                com.umeng.commonsdk.statistics.common.MLog.e("onDeepLinkReceived can not be called in child process");
                return;
            }
            if (!this.j || !this.n) {
                a(a);
            }
            if (android.text.TextUtils.isEmpty(str)) {
                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.O, 0, "\\|");
                return;
            }
            java.util.HashMap map = new java.util.HashMap();
            map.put(com.umeng.analytics.pro.c.aE, str);
            a(a, com.umeng.analytics.pro.c.aD, (java.util.Map<java.lang.String, java.lang.Object>) map, -1L, false);
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(th);
            }
        }
    }

    public synchronized void b(java.lang.Object obj) {
        android.content.SharedPreferences.Editor editorRemove;
        if (a == null) {
            return;
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("updateNativePrePropertiesByCoreProtocol can not be called in child process");
            return;
        }
        android.content.SharedPreferences.Editor editorEdit = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit();
        if (obj != null) {
            java.lang.String str = (java.lang.String) obj;
            if (editorEdit != null && !android.text.TextUtils.isEmpty(str)) {
                editorRemove = editorEdit.putString(i, str);
                editorRemove.commit();
            }
        } else if (editorEdit != null) {
            editorRemove = editorEdit.remove(i);
            editorRemove.commit();
        }
    }

    public void b(java.lang.String str) {
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("onPageEnd can not be called in child process");
            return;
        }
        try {
            if (com.umeng.analytics.pro.k.b != com.umeng.analytics.MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f1202d.b(str);
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public org.json.JSONObject c() {
        return this.m;
    }

    public void c(android.content.Context context) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.p, 0, "\\|");
            return;
        }
        if (com.umeng.analytics.pro.k.b == com.umeng.analytics.MobclickAgent.PageMode.AUTO) {
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("onPause can not be called in child process");
            return;
        }
        if (com.umeng.commonsdk.UMConfigure.isDebugLog() && !(context instanceof android.app.Activity)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.q, 2, "\\|");
        }
        try {
            if (!this.j || !this.n) {
                a(context);
            }
            if (com.umeng.analytics.pro.k.b != com.umeng.analytics.MobclickAgent.PageMode.LEGACY_MANUAL) {
                this.f1203e.b(context.getClass().getName());
            }
            i();
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e("Exception occurred in Mobclick.onRause(). ", th);
            }
        }
        if (com.umeng.commonsdk.UMConfigure.isDebugLog() && (context instanceof android.app.Activity)) {
            r = context.getClass().getName();
        }
    }

    public void c(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.z, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("setSecret can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        com.umeng.analytics.AnalyticsConfig.a(a, str);
    }

    public org.json.JSONObject d() {
        return this.l;
    }

    public void d(android.content.Context context) {
        if (context == null) {
            return;
        }
        try {
            if (a == null) {
                a = context.getApplicationContext();
            }
            if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                com.umeng.commonsdk.statistics.common.MLog.e("onKillProcess can not be called in child process");
                return;
            }
            if (this.f1205g != null) {
                this.f1205g.c();
            }
            com.umeng.analytics.pro.k.a(context, "onKillProcess");
            if (this.f1203e != null) {
                this.f1203e.b();
            }
            if (this.f1202d != null) {
                this.f1202d.b();
            }
            if (a != null) {
                if (this.f1204f != null) {
                    this.f1204f.c(a, java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
                }
                com.umeng.analytics.pro.n.a(a).d();
                com.umeng.analytics.pro.u.a(a);
                if (com.umeng.analytics.pro.k.b == com.umeng.analytics.MobclickAgent.PageMode.AUTO) {
                    com.umeng.analytics.pro.k.c(a);
                }
                com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit().commit();
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public synchronized void d(android.content.Context context, java.lang.String str) {
        try {
        } catch (java.lang.Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ah, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("unregisterSuperProperty can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ag, 0, "\\|");
            return;
        }
        if (!str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
            com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, must be correct!");
            return;
        }
        if (this.k == null) {
            this.k = new org.json.JSONObject();
        }
        if (this.k.has(str)) {
            this.k.remove(str);
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.t, com.umeng.analytics.CoreProtocol.getInstance(a), str);
        }
    }

    public synchronized java.lang.Object e(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ai, 0, "\\|");
            return null;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("getSuperProperty can not be called in child process");
            return null;
        }
        if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ag, 0, "\\|");
            return null;
        }
        if (!str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
            com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, must be correct!");
            return null;
        }
        if (this.k == null) {
            this.k = new org.json.JSONObject();
        } else if (this.k.has(str)) {
            return this.k.opt(str);
        }
        return null;
    }

    public synchronized java.lang.String e(android.content.Context context) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ai, 0, "\\|");
            return null;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("getSuperProperties can not be called in child process");
            return null;
        }
        if (this.k != null) {
            return this.k.toString();
        }
        this.k = new org.json.JSONObject();
        return null;
    }

    public void e() {
        this.l = null;
    }

    public java.lang.String f() {
        if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            return q;
        }
        com.umeng.commonsdk.statistics.common.MLog.e("getOnResumedActivityName can not be called in child process");
        return null;
    }

    public synchronized void f(android.content.Context context) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ah, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("clearSuperProperties can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        this.k = new org.json.JSONObject();
        com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.s, com.umeng.analytics.CoreProtocol.getInstance(a), null);
    }

    public synchronized void f(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.an, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("unregisterPreProperty can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        if (this.m == null) {
            this.m = new org.json.JSONObject();
        }
        if (str != null && str.length() > 0) {
            if (this.m.has(str)) {
                this.m.remove(str);
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.v, com.umeng.analytics.CoreProtocol.getInstance(a), this.m.toString());
            } else if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ao, 0, "\\|");
            }
            return;
        }
        com.umeng.commonsdk.statistics.common.MLog.e("please check propertics, property is null!");
    }

    public java.lang.String g() {
        if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            return r;
        }
        com.umeng.commonsdk.statistics.common.MLog.e("getOnPausedActivityName can not be called in child process");
        return null;
    }

    public synchronized void g(android.content.Context context) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ap, 0, "\\|");
            return;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("clearPreProperties can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        if (this.m.length() > 0) {
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.w, com.umeng.analytics.CoreProtocol.getInstance(a), null);
        }
        this.m = new org.json.JSONObject();
    }

    public synchronized org.json.JSONObject h(android.content.Context context) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.aq, 0, "\\|");
            return null;
        }
        if (a == null) {
            a = context.getApplicationContext();
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("getPreProperties can not be called in child process");
            return null;
        }
        if (!this.j || !this.n) {
            a(a);
        }
        if (this.m == null) {
            this.m = new org.json.JSONObject();
        }
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        if (this.m.length() > 0) {
            try {
                jSONObject = new org.json.JSONObject(this.m.toString());
            } catch (org.json.JSONException unused) {
            }
        }
        return jSONObject;
    }

    public void h() {
        try {
            if (a != null) {
                if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                    com.umeng.commonsdk.statistics.common.MLog.e("onStartSessionInternal can not be called in child process");
                    return;
                }
                if (com.umeng.commonsdk.UMConfigure.isDebugLog() && !com.umeng.commonsdk.UMConfigure.getInitStatus()) {
                    com.umeng.commonsdk.debug.UMLog.mutlInfo(com.umeng.analytics.pro.i.H, 3, "", null, null);
                }
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.k, com.umeng.analytics.CoreProtocol.getInstance(a), java.lang.Long.valueOf(jCurrentTimeMillis));
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.f1369g, com.umeng.analytics.CoreProtocol.getInstance(a), java.lang.Long.valueOf(jCurrentTimeMillis));
            }
            if (this.b != null) {
                this.b.onAppResume();
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public void i() {
        try {
            if (a != null) {
                if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                    com.umeng.commonsdk.statistics.common.MLog.e("onEndSessionInternal can not be called in child process");
                    return;
                }
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.h, com.umeng.analytics.CoreProtocol.getInstance(a), java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.f1366d, com.umeng.analytics.CoreProtocol.getInstance(a), null);
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, 4099, com.umeng.analytics.CoreProtocol.getInstance(a), null);
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.i, com.umeng.analytics.CoreProtocol.getInstance(a), null);
            }
        } catch (java.lang.Throwable unused) {
        }
        com.umeng.common.ISysListener iSysListener = this.b;
        if (iSysListener != null) {
            iSysListener.onAppPause();
        }
    }

    public void j() {
        try {
            if (a == null) {
                return;
            }
            if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                com.umeng.commonsdk.statistics.common.MLog.e("onProfileSignOff can not be called in child process");
                return;
            }
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("ts", jCurrentTimeMillis);
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.f1368f, com.umeng.analytics.CoreProtocol.getInstance(a), jSONObject);
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.o, com.umeng.analytics.CoreProtocol.getInstance(a), jSONObject);
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    public synchronized void k() {
        if (a == null) {
            return;
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("unregisterSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (this.k != null) {
            android.content.SharedPreferences.Editor editorEdit = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit();
            editorEdit.putString(h, this.k.toString());
            editorEdit.commit();
        } else {
            this.k = new org.json.JSONObject();
        }
    }

    public synchronized org.json.JSONObject l() {
        if (a == null) {
            return null;
        }
        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
            com.umeng.commonsdk.statistics.common.MLog.e("getSuperPropertiesJSONObject can not be called in child process");
            return null;
        }
        if (this.k == null) {
            this.k = new org.json.JSONObject();
        }
        return this.k;
    }

    public synchronized void m() {
        try {
            if (a != null) {
                if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                    com.umeng.commonsdk.statistics.common.MLog.e("clearSuperPropertiesByCoreProtocol can not be called in child process");
                } else {
                    android.content.SharedPreferences.Editor editorEdit = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit();
                    editorEdit.remove(h);
                    editorEdit.commit();
                }
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    @Override // com.umeng.analytics.pro.m
    public void n() {
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onIntoBackground triggered.");
        if (com.umeng.analytics.AnalyticsConfig.enable && com.umeng.commonsdk.config.FieldManager.b()) {
            if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.D)) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 退出发送策略: 云控控制字关闭。功能不生效");
            } else {
                if (com.umeng.commonsdk.framework.UMWorkDispatch.eventHasExist(com.umeng.analytics.pro.n.a.z)) {
                    return;
                }
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 退出时发送策略 被触发！");
                android.content.Context context = a;
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, com.umeng.analytics.pro.n.a.z, com.umeng.analytics.CoreProtocol.getInstance(context), null);
            }
        }
    }
}
