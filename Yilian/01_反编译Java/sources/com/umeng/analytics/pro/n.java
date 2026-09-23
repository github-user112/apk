package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class n {
    public static android.content.Context a = null;
    public static final java.lang.String l = "first_activate_time";
    public static final java.lang.String m = "ana_is_f";
    public static final java.lang.String n = "thtstart";
    public static final java.lang.String o = "dstk_last_time";
    public static final java.lang.String p = "dstk_cnt";
    public static final java.lang.String q = "gkvc";
    public static final java.lang.String r = "ekvc";
    public static final java.lang.String t = "-1";
    public static final java.lang.String x = "com.umeng.umcrash.UMCrashUtils";
    public static java.lang.Class<?> y;
    public static java.lang.reflect.Method z;
    public com.umeng.analytics.pro.n.c b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.SharedPreferences f1360c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1361d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1362e;

    /* renamed from: f, reason: collision with root package name */
    public int f1363f;

    /* renamed from: g, reason: collision with root package name */
    public org.json.JSONArray f1364g;
    public final int h;
    public int i;
    public int j;
    public long k;
    public final long s;
    public boolean u;
    public boolean v;
    public java.lang.Object w;

    public static class a {
        public static final int A = 8211;
        public static final int B = 8212;
        public static final int C = 8213;
        public static final int a = 4097;
        public static final int b = 4098;

        /* renamed from: c, reason: collision with root package name */
        public static final int f1365c = 4099;

        /* renamed from: d, reason: collision with root package name */
        public static final int f1366d = 4100;

        /* renamed from: e, reason: collision with root package name */
        public static final int f1367e = 4101;

        /* renamed from: f, reason: collision with root package name */
        public static final int f1368f = 4102;

        /* renamed from: g, reason: collision with root package name */
        public static final int f1369g = 4103;
        public static final int h = 4104;
        public static final int i = 4105;
        public static final int j = 4106;
        public static final int k = 4352;
        public static final int l = 4353;
        public static final int m = 4354;
        public static final int n = 4355;
        public static final int o = 4356;
        public static final int p = 8193;
        public static final int q = 8194;
        public static final int r = 8195;
        public static final int s = 8196;
        public static final int t = 8197;
        public static final int u = 8199;
        public static final int v = 8200;
        public static final int w = 8201;
        public static final int x = 8208;
        public static final int y = 8209;
        public static final int z = 8210;
    }

    public static class b {
        public static final com.umeng.analytics.pro.n a = new com.umeng.analytics.pro.n();
    }

    public static class c {
        public com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy a = null;
        public int b = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f1370c = -1;

        /* renamed from: d, reason: collision with root package name */
        public int f1371d = -1;

        /* renamed from: e, reason: collision with root package name */
        public int f1372e = -1;

        /* renamed from: f, reason: collision with root package name */
        public com.umeng.commonsdk.statistics.noise.ABTest f1373f;

        public c() {
            this.f1373f = null;
            this.f1373f = com.umeng.commonsdk.statistics.noise.ABTest.getService(com.umeng.analytics.pro.n.a);
        }

        private com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy b(int i, int i2) {
            if (i == 0) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy = this.a;
                return reportStrategy instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportRealtime ? reportStrategy : new com.umeng.commonsdk.statistics.common.ReportPolicy.ReportRealtime();
            }
            if (i == 1) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy2 = this.a;
                return reportStrategy2 instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportAtLaunch ? reportStrategy2 : new com.umeng.commonsdk.statistics.common.ReportPolicy.ReportAtLaunch();
            }
            if (i == 4) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy3 = this.a;
                return reportStrategy3 instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportDaily ? reportStrategy3 : new com.umeng.commonsdk.statistics.common.ReportPolicy.ReportDaily(com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(com.umeng.analytics.pro.n.a));
            }
            if (i == 5) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy4 = this.a;
                return reportStrategy4 instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportWifiOnly ? reportStrategy4 : new com.umeng.commonsdk.statistics.common.ReportPolicy.ReportWifiOnly(com.umeng.analytics.pro.n.a);
            }
            if (i == 6) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy5 = this.a;
                if (!(reportStrategy5 instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportByInterval)) {
                    return new com.umeng.commonsdk.statistics.common.ReportPolicy.ReportByInterval(com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(com.umeng.analytics.pro.n.a), i2);
                }
                ((com.umeng.commonsdk.statistics.common.ReportPolicy.ReportByInterval) reportStrategy5).setReportInterval(i2);
                return reportStrategy5;
            }
            if (i == 8) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy6 = this.a;
                return reportStrategy6 instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.SmartPolicy ? reportStrategy6 : new com.umeng.commonsdk.statistics.common.ReportPolicy.SmartPolicy(com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(com.umeng.analytics.pro.n.a));
            }
            if (i != 11) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy7 = this.a;
                return reportStrategy7 instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportAtLaunch ? reportStrategy7 : new com.umeng.commonsdk.statistics.common.ReportPolicy.ReportAtLaunch();
            }
            com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy8 = this.a;
            if (reportStrategy8 instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime) {
                ((com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime) reportStrategy8).setReportInterval(i2);
                return reportStrategy8;
            }
            com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime reportQuasiRealtime = new com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime();
            reportQuasiRealtime.setReportInterval(i2);
            return reportQuasiRealtime;
        }

        public int a(int i) {
            int iIntValue = java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(com.umeng.analytics.pro.n.a, "test_report_interval", "-1")).intValue();
            return (iIntValue == -1 || iIntValue < 90 || iIntValue > 86400) ? i : iIntValue * 1000;
        }

        public void a() {
            try {
                int[] iArrA = a(-1, -1);
                this.b = iArrA[0];
                this.f1370c = iArrA[1];
            } catch (java.lang.Throwable unused) {
            }
        }

        public int[] a(int i, int i2) {
            int iIntValue = java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(com.umeng.analytics.pro.n.a, com.umeng.commonsdk.framework.a.q, "-1")).intValue();
            int iIntValue2 = java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(com.umeng.analytics.pro.n.a, com.umeng.commonsdk.framework.a.r, "-1")).intValue();
            if (iIntValue == -1 || !com.umeng.commonsdk.statistics.common.ReportPolicy.isValid(iIntValue)) {
                return new int[]{i, i2};
            }
            if (6 == iIntValue) {
                if (iIntValue2 == -1 || iIntValue2 < 90 || iIntValue2 > 86400) {
                    iIntValue2 = 90;
                }
                return new int[]{iIntValue, iIntValue2 * 1000};
            }
            if (11 != iIntValue) {
                return new int[]{i, i2};
            }
            if (iIntValue2 == -1 || iIntValue2 < 15 || iIntValue2 > 3600) {
                iIntValue2 = 15;
            }
            return new int[]{iIntValue, iIntValue2 * 1000};
        }

        public void b() {
            com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategyB;
            int iA;
            java.lang.String str;
            com.umeng.commonsdk.statistics.noise.Defcon service = com.umeng.commonsdk.statistics.noise.Defcon.getService(com.umeng.analytics.pro.n.a);
            if (service.isOpen()) {
                com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategy = this.a;
                reportStrategyB = (reportStrategy instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.DefconPolicy) && reportStrategy.isValid() ? this.a : new com.umeng.commonsdk.statistics.common.ReportPolicy.DefconPolicy(com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(com.umeng.analytics.pro.n.a), service);
            } else {
                boolean z = java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(com.umeng.analytics.pro.n.a, "integrated_test", "-1")).intValue() == 1;
                if (com.umeng.commonsdk.UMConfigure.isDebugLog() && z && !com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                    com.umeng.commonsdk.debug.UMLog.mutlInfo(com.umeng.analytics.pro.i.K, 3, "\\|", null, null);
                }
                if (com.umeng.commonsdk.statistics.common.MLog.DEBUG && z) {
                    reportStrategyB = new com.umeng.commonsdk.statistics.common.ReportPolicy.DebugPolicy(com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(com.umeng.analytics.pro.n.a));
                } else if (this.f1373f.isInTest() && "RPT".equals(this.f1373f.getTestName())) {
                    if (this.f1373f.getTestPolicy() == 6) {
                        if (java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(com.umeng.analytics.pro.n.a, "test_report_interval", "-1")).intValue() != -1) {
                            iA = a(90000);
                        } else {
                            iA = this.f1370c;
                            if (iA <= 0) {
                                iA = this.f1372e;
                            }
                        }
                    } else {
                        iA = 0;
                    }
                    reportStrategyB = b(this.f1373f.getTestPolicy(), iA);
                } else {
                    int i = this.f1371d;
                    int i2 = this.f1372e;
                    int i3 = this.b;
                    if (i3 != -1) {
                        i2 = this.f1370c;
                        i = i3;
                    }
                    reportStrategyB = b(i, i2);
                }
            }
            this.a = reportStrategyB;
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                try {
                    if (this.a instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportAtLaunch) {
                        str = com.umeng.analytics.pro.i.I;
                    } else {
                        if (this.a instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportByInterval) {
                            com.umeng.commonsdk.debug.UMLog.mutlInfo(com.umeng.analytics.pro.i.J, 3, "", new java.lang.String[]{"@"}, new java.lang.String[]{java.lang.String.valueOf(((com.umeng.commonsdk.statistics.common.ReportPolicy.ReportByInterval) this.a).getReportInterval() / 1000)});
                            return;
                        }
                        if (!(this.a instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.DebugPolicy)) {
                            if (!(this.a instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime)) {
                                boolean z2 = this.a instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.DefconPolicy;
                                return;
                            }
                            java.lang.String[] strArr = {java.lang.String.valueOf(((com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime) this.a).getReportInterval() / 1000)};
                            com.umeng.commonsdk.debug.UMLog uMLog = com.umeng.commonsdk.UMConfigure.umDebugLog;
                            com.umeng.commonsdk.debug.UMLog.mutlInfo(com.umeng.analytics.pro.i.M, 3, "", new java.lang.String[]{"@"}, strArr);
                            return;
                        }
                        str = com.umeng.analytics.pro.i.L;
                    }
                    com.umeng.commonsdk.debug.UMLog.mutlInfo(str, 3, "", null, null);
                } catch (java.lang.Throwable unused) {
                }
            }
        }

        public com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy c() {
            b();
            return this.a;
        }
    }

    public static class d {
        public java.util.Map<java.lang.String, java.lang.Object> a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f1374c;

        /* renamed from: d, reason: collision with root package name */
        public long f1375d;

        public d() {
            this.a = null;
            this.b = null;
            this.f1374c = null;
            this.f1375d = 0L;
        }

        public d(java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map, java.lang.String str2, long j) {
            this.a = null;
            this.b = null;
            this.f1374c = null;
            this.f1375d = 0L;
            this.a = map;
            this.b = str;
            this.f1375d = j;
            this.f1374c = str2;
        }

        public java.util.Map<java.lang.String, java.lang.Object> a() {
            return this.a;
        }

        public java.lang.String b() {
            return this.f1374c;
        }

        public java.lang.String c() {
            return this.b;
        }

        public long d() {
            return this.f1375d;
        }
    }

    static {
        h();
    }

    public n() {
        this.b = null;
        this.f1360c = null;
        this.f1361d = null;
        this.f1362e = null;
        this.f1363f = 10;
        this.f1364g = new org.json.JSONArray();
        this.h = 5000;
        this.i = 0;
        this.j = 0;
        this.k = 0L;
        this.s = com.umeng.commonsdk.statistics.noise.Defcon.MILLIS_8_HOURS;
        this.u = false;
        this.v = false;
        this.w = new java.lang.Object();
        try {
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a);
            this.k = sharedPreferences.getLong("thtstart", 0L);
            this.i = sharedPreferences.getInt("gkvc", 0);
            this.j = sharedPreferences.getInt("ekvc", 0);
            this.b = new com.umeng.analytics.pro.n.c();
        } catch (java.lang.Throwable unused) {
        }
    }

    public static com.umeng.analytics.pro.n a(android.content.Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return com.umeng.analytics.pro.n.b.a;
    }

    private org.json.JSONObject a(org.json.JSONObject jSONObject, long j) {
        try {
            if (com.umeng.analytics.pro.p.a(jSONObject) <= j) {
                return jSONObject;
            }
            org.json.JSONObject jSONObject2 = jSONObject.getJSONObject("header");
            jSONObject2.put(com.umeng.analytics.pro.c.aB, com.umeng.analytics.pro.p.a(jSONObject));
            jSONObject.put("header", jSONObject2);
            return com.umeng.analytics.pro.p.a(a, j, jSONObject);
        } catch (java.lang.Throwable unused) {
            return jSONObject;
        }
    }

    private void a(java.lang.String str, java.lang.String str2) {
        java.lang.reflect.Method method;
        java.lang.Class<?> cls = y;
        if (cls == null || (method = z) == null) {
            return;
        }
        try {
            method.invoke(cls, str, str2);
        } catch (java.lang.Throwable unused) {
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> reflect call setPuidAndProvider method of crash lib failed.");
        }
    }

    private boolean a(long j, int i) {
        if (j == 0) {
            return true;
        }
        if (java.lang.System.currentTimeMillis() - j <= com.umeng.commonsdk.statistics.noise.Defcon.MILLIS_8_HOURS) {
            return i < 5000;
        }
        o();
        return true;
    }

    private boolean a(org.json.JSONArray jSONArray) {
        int length = jSONArray.length();
        java.util.List listAsList = java.util.Arrays.asList("$$_onUMengEnterForeground", "$$_onUMengEnterBackground", "$$_onUMengEnterForegroundInitError");
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            try {
                org.json.JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && listAsList.contains(jSONObjectOptJSONObject.optString("id"))) {
                    i++;
                }
            } catch (java.lang.Throwable unused) {
            }
        }
        return i >= length;
    }

    private boolean a(org.json.JSONObject jSONObject) {
        org.json.JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ekv");
        int length = jSONArrayOptJSONArray.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            try {
                org.json.JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                java.util.Iterator<java.lang.String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    org.json.JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(itKeys.next());
                    if (jSONArrayOptJSONArray2 != null && a(jSONArrayOptJSONArray2)) {
                        i++;
                    }
                }
            } catch (java.lang.Throwable unused) {
            }
        }
        return i >= length;
    }

    private org.json.JSONObject b(org.json.JSONObject jSONObject, long j) {
        try {
            if (com.umeng.analytics.pro.p.a(jSONObject) <= j) {
                return jSONObject;
            }
            jSONObject = null;
            com.umeng.analytics.pro.h.a(a).a(true, false);
            com.umeng.analytics.pro.h.a(a).b();
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> Instant session packet overload !!! ");
            return null;
        } catch (java.lang.Throwable unused) {
            return jSONObject;
        }
    }

    private void b(org.json.JSONObject jSONObject) {
        org.json.JSONObject jSONObjectF;
        if (com.umeng.analytics.pro.h.a(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(a)).c() || (jSONObjectF = com.umeng.analytics.pro.h.a(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(a)).f()) == null) {
            return;
        }
        java.lang.String strOptString = jSONObjectF.optString("__av");
        java.lang.String strOptString2 = jSONObjectF.optString("__vc");
        try {
            if (android.text.TextUtils.isEmpty(strOptString)) {
                strOptString = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(a);
            }
            jSONObject.put("app_version", strOptString);
            if (android.text.TextUtils.isEmpty(strOptString2)) {
                strOptString2 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(a);
            }
            jSONObject.put("version_code", strOptString2);
        } catch (java.lang.Throwable unused) {
        }
    }

    private void c(org.json.JSONObject jSONObject) {
        android.content.Context context;
        java.lang.String appVersionCode;
        try {
            if (!com.umeng.analytics.pro.h.a(a).e()) {
                org.json.JSONObject jSONObjectG = com.umeng.analytics.pro.h.a(a).g();
                if (jSONObjectG != null) {
                    java.lang.String strOptString = jSONObjectG.optString("__av");
                    appVersionCode = jSONObjectG.optString("__vc");
                    if (android.text.TextUtils.isEmpty(strOptString)) {
                        strOptString = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(a);
                    }
                    jSONObject.put("app_version", strOptString);
                    if (android.text.TextUtils.isEmpty(appVersionCode)) {
                        context = a;
                    }
                    jSONObject.put("version_code", appVersionCode);
                }
                return;
            }
            jSONObject.put("app_version", com.umeng.commonsdk.utils.UMUtils.getAppVersionName(a));
            context = a;
            appVersionCode = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(context);
            jSONObject.put("version_code", appVersionCode);
        } catch (java.lang.Throwable unused) {
        }
    }

    private boolean c(boolean z2) {
        if (s()) {
            return true;
        }
        if (this.b == null) {
            this.b = new com.umeng.analytics.pro.n.c();
        }
        this.b.a();
        com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategyC = this.b.c();
        boolean zShouldSendMessage = reportStrategyC.shouldSendMessage(z2);
        if (zShouldSendMessage) {
            if (((reportStrategyC instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportByInterval) || (reportStrategyC instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.DebugPolicy) || (reportStrategyC instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime)) && p()) {
                d();
            }
            if ((reportStrategyC instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.DefconPolicy) && p()) {
                d();
            }
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("数据发送策略 : ");
                sbO.append(reportStrategyC.getClass().getSimpleName());
                com.umeng.commonsdk.statistics.common.MLog.d(sbO.toString());
            }
        }
        return zShouldSendMessage;
    }

    private void d(org.json.JSONObject jSONObject) {
        java.lang.String str;
        org.json.JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            if (jSONObject.has("analytics")) {
                org.json.JSONObject jSONObject4 = jSONObject.getJSONObject("analytics");
                if (jSONObject4.has("ekv")) {
                    str = "version_code";
                    jSONObject3.put("ekv", jSONObject4.getJSONArray("ekv"));
                    if (jSONObject3.length() > 0) {
                        com.umeng.commonsdk.statistics.common.MLog.d("事件:" + jSONObject3.toString());
                        jSONObject3 = new org.json.JSONObject();
                    }
                } else {
                    str = "version_code";
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.T)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.T, jSONObject4.getJSONArray(com.umeng.analytics.pro.c.T));
                    if (jSONObject3.length() > 0) {
                        com.umeng.commonsdk.statistics.common.MLog.d("游戏事件:" + jSONObject3.toString());
                        jSONObject3 = new org.json.JSONObject();
                    }
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.O)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.O, jSONObject4.getJSONArray(com.umeng.analytics.pro.c.O));
                    if (jSONObject3.length() > 0) {
                        com.umeng.commonsdk.statistics.common.MLog.d("错误:" + jSONObject3.toString());
                        jSONObject3 = new org.json.JSONObject();
                    }
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.n)) {
                    org.json.JSONArray jSONArray = jSONObject4.getJSONArray(com.umeng.analytics.pro.c.n);
                    org.json.JSONArray jSONArray2 = new org.json.JSONArray();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        org.json.JSONObject jSONObject5 = jSONArray.getJSONObject(i);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            if (jSONObject5.has(com.umeng.analytics.pro.c.u)) {
                                jSONObject5.remove(com.umeng.analytics.pro.c.u);
                            }
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(com.umeng.analytics.pro.c.n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        com.umeng.commonsdk.statistics.common.MLog.d("会话:" + jSONObject3.toString());
                        jSONObject3 = new org.json.JSONObject();
                    }
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.I)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.I, jSONObject4.getJSONObject(com.umeng.analytics.pro.c.I));
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.L)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.L, jSONObject4.getJSONObject(com.umeng.analytics.pro.c.L));
                    if (jSONObject3.length() > 0) {
                        com.umeng.commonsdk.statistics.common.MLog.d("账号:" + jSONObject3.toString());
                        jSONObject3 = new org.json.JSONObject();
                    }
                }
            } else {
                str = "version_code";
            }
            if (jSONObject.has("dplus")) {
                jSONObject3.put("dplus", jSONObject.getJSONObject("dplus"));
            }
            if (jSONObject.has("header") && jSONObject.has("header") && (jSONObject2 = jSONObject.getJSONObject("header")) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has("sdk_version")) {
                    jSONObject3.put("sdk_version", jSONObject2.getString("sdk_version"));
                }
                if (jSONObject2.has("device_id")) {
                    jSONObject3.put("device_id", jSONObject2.getString("device_id"));
                }
                if (jSONObject2.has("device_model")) {
                    jSONObject3.put("device_model", jSONObject2.getString("device_model"));
                }
                java.lang.String str2 = str;
                if (jSONObject2.has(str2)) {
                    jSONObject3.put(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, jSONObject2.getInt(str2));
                }
                if (jSONObject2.has("appkey")) {
                    jSONObject3.put("appkey", jSONObject2.getString("appkey"));
                }
                if (jSONObject2.has("channel")) {
                    jSONObject3.put("channel", jSONObject2.getString("channel"));
                }
                if (jSONObject3.length() > 0) {
                    com.umeng.commonsdk.statistics.common.MLog.d("基础信息:" + jSONObject3.toString());
                    jSONObject3 = new org.json.JSONObject();
                }
            }
            jSONObject3.length();
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.statistics.common.MLog.e(th);
        }
    }

    private boolean d(boolean z2) {
        if (this.b == null) {
            this.b = new com.umeng.analytics.pro.n.c();
        }
        com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy reportStrategyC = this.b.c();
        if (reportStrategyC instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.DefconPolicy) {
            return z2 ? ((com.umeng.commonsdk.statistics.common.ReportPolicy.DefconPolicy) reportStrategyC).shouldSendMessageByInstant() : reportStrategyC.shouldSendMessage(false);
        }
        return true;
    }

    private void e(java.lang.Object obj) {
        try {
            org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (!a(this.k, this.i)) {
                    return;
                } else {
                    this.i++;
                }
            } else if (2049 == jSONObject.getInt("__t")) {
                if (!a(this.k, this.j)) {
                    return;
                } else {
                    this.j++;
                }
            }
            if (this.f1364g.length() >= this.f1363f) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>*** 超过10个事件，事件落库。");
                com.umeng.analytics.pro.h.a(a).a(this.f1364g);
                this.f1364g = new org.json.JSONArray();
            }
            if (this.k == 0) {
                this.k = java.lang.System.currentTimeMillis();
            }
            this.f1364g.put(jSONObject);
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.statistics.common.MLog.e(th);
        }
    }

    private void e(org.json.JSONObject jSONObject) {
        org.json.JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            if (jSONObject.has("analytics")) {
                org.json.JSONObject jSONObject4 = jSONObject.getJSONObject("analytics");
                if (jSONObject4.has(com.umeng.analytics.pro.c.n)) {
                    org.json.JSONArray jSONArray = jSONObject4.getJSONArray(com.umeng.analytics.pro.c.n);
                    org.json.JSONArray jSONArray2 = new org.json.JSONArray();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        org.json.JSONObject jSONObject5 = jSONArray.getJSONObject(i);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(com.umeng.analytics.pro.c.n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        com.umeng.commonsdk.statistics.common.MLog.d("本次启动会话:" + jSONObject3.toString());
                        jSONObject3 = new org.json.JSONObject();
                    }
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.L)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.L, jSONObject4.getJSONObject(com.umeng.analytics.pro.c.L));
                    if (jSONObject3.length() > 0) {
                        com.umeng.commonsdk.statistics.common.MLog.d("本次启动账号:" + jSONObject3.toString());
                        jSONObject3 = new org.json.JSONObject();
                    }
                }
            }
            if (jSONObject.has("header") && jSONObject.has("header") && (jSONObject2 = jSONObject.getJSONObject("header")) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has("sdk_version")) {
                    jSONObject3.put("sdk_version", jSONObject2.getString("sdk_version"));
                }
                if (jSONObject2.has("device_id")) {
                    jSONObject3.put("device_id", jSONObject2.getString("device_id"));
                }
                if (jSONObject2.has("device_model")) {
                    jSONObject3.put("device_model", jSONObject2.getString("device_model"));
                }
                if (jSONObject2.has("version_code")) {
                    jSONObject3.put(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, jSONObject2.getInt("version_code"));
                }
                if (jSONObject2.has("appkey")) {
                    jSONObject3.put("appkey", jSONObject2.getString("appkey"));
                }
                if (jSONObject2.has("channel")) {
                    jSONObject3.put("channel", jSONObject2.getString("channel"));
                }
                if (jSONObject3.length() > 0) {
                    com.umeng.commonsdk.statistics.common.MLog.d("本次启动基础信息:" + jSONObject3.toString());
                    jSONObject3 = new org.json.JSONObject();
                }
            }
            jSONObject3.length();
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.statistics.common.MLog.e(th);
        }
    }

    private void f(java.lang.Object obj) {
        try {
            org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                long j = jSONObject.getLong("ts");
                b(a);
                d();
                java.lang.String[] strArrA = com.umeng.analytics.c.a(a);
                if (strArrA == null || android.text.TextUtils.isEmpty(strArrA[0]) || android.text.TextUtils.isEmpty(strArrA[1])) {
                    return;
                }
                com.umeng.analytics.pro.t.a().a(a, j);
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + com.umeng.analytics.pro.x.a().c(a));
                boolean zB = com.umeng.analytics.pro.t.a().b(a, j, false);
                com.umeng.analytics.c.b(a);
                com.umeng.analytics.pro.t.a().a(a, j, true);
                if (zB) {
                    com.umeng.analytics.pro.t.a().b(a, j);
                }
            }
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.common.MLog.DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    private void f(org.json.JSONObject jSONObject) throws org.json.JSONException {
        org.json.JSONObject jSONObjectOptJSONObject;
        org.json.JSONObject jSONObjectOptJSONObject2;
        try {
            if (!jSONObject.getJSONObject("header").has(com.umeng.analytics.pro.c.aB)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("analytics")) != null && jSONObjectOptJSONObject.length() > 0 && jSONObjectOptJSONObject.has(com.umeng.analytics.pro.c.n)) {
                    com.umeng.analytics.pro.h.a(a).a(true, false);
                }
                com.umeng.analytics.pro.h.a(a).b();
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has("analytics")) {
                org.json.JSONObject jSONObject2 = jSONObject.getJSONObject("analytics");
                if (jSONObject2.has(com.umeng.analytics.pro.c.n) && (jSONObjectOptJSONObject2 = jSONObject2.getJSONArray(com.umeng.analytics.pro.c.n).optJSONObject(0)) != null) {
                    java.lang.String strOptString = jSONObjectOptJSONObject2.optString("id");
                    if (!android.text.TextUtils.isEmpty(strOptString)) {
                        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: really delete instant session data");
                        com.umeng.analytics.pro.h.a(a).b(strOptString);
                    }
                }
            }
            com.umeng.analytics.pro.h.a(a).b();
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE.");
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.l, com.umeng.analytics.CoreProtocol.getInstance(a), null);
        } catch (java.lang.Exception unused) {
        }
    }

    private void g(java.lang.Object obj) {
        try {
            b(a);
            d();
            org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                java.lang.String string = jSONObject.getString(com.umeng.analytics.pro.c.M);
                java.lang.String string2 = jSONObject.getString("uid");
                long j = jSONObject.getLong("ts");
                java.lang.String[] strArrA = com.umeng.analytics.c.a(a);
                if (strArrA != null && string.equals(strArrA[0]) && string2.equals(strArrA[1])) {
                    return;
                }
                com.umeng.analytics.pro.t.a().a(a, j);
                java.lang.String strC = com.umeng.analytics.pro.x.a().c(a);
                boolean zB = com.umeng.analytics.pro.t.a().b(a, j, false);
                com.umeng.analytics.c.a(a, string, string2);
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + strC);
                com.umeng.analytics.pro.t.a().a(a, j, true);
                if (zB) {
                    com.umeng.analytics.pro.t.a().b(a, j);
                }
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    private void g(org.json.JSONObject jSONObject) throws org.json.JSONException {
        android.content.Context context;
        org.json.JSONObject jSONObjectOptJSONObject;
        try {
            if (jSONObject.getJSONObject("header").has(com.umeng.analytics.pro.c.aB)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (!jSONObject.has("analytics")) {
                    return;
                }
                if (!jSONObject.getJSONObject("analytics").has(com.umeng.analytics.pro.c.n)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> Error, Should not go to this branch.");
                    return;
                }
                com.umeng.analytics.pro.h.a(a).i();
                com.umeng.analytics.pro.h.a(a).h();
                com.umeng.analytics.pro.h.a(a).b(true, false);
                context = a;
            } else {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("analytics")) != null && jSONObjectOptJSONObject.length() > 0) {
                    if (jSONObjectOptJSONObject.has(com.umeng.analytics.pro.c.n)) {
                        com.umeng.analytics.pro.h.a(a).b(true, false);
                    }
                    if (jSONObjectOptJSONObject.has("ekv") || jSONObjectOptJSONObject.has(com.umeng.analytics.pro.c.T)) {
                        com.umeng.analytics.pro.h.a(a).h();
                    }
                    if (jSONObjectOptJSONObject.has(com.umeng.analytics.pro.c.O)) {
                        com.umeng.analytics.pro.h.a(a).i();
                    }
                }
                context = a;
            }
            com.umeng.analytics.pro.h.a(context).a();
        } catch (java.lang.Exception unused) {
        }
    }

    public static void h() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName(x);
            y = cls;
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("setPuidAndProvider", java.lang.String.class, java.lang.String.class);
            if (declaredMethod != null) {
                z = declaredMethod;
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    private void h(java.lang.Object obj) {
        try {
            org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0 || !jSONObject.has("__ii")) {
                return;
            }
            java.lang.String strOptString = jSONObject.optString("__ii");
            jSONObject.remove("__ii");
            if (android.text.TextUtils.isEmpty(strOptString)) {
                return;
            }
            com.umeng.analytics.pro.h.a(a).a(strOptString, obj.toString(), 2);
        } catch (java.lang.Throwable unused) {
        }
    }

    private void i() throws org.json.JSONException {
        org.json.JSONObject jSONObjectB = b(com.umeng.commonsdk.framework.UMEnvelopeBuild.maxDataSpace(a));
        if (jSONObjectB == null || jSONObjectB.length() < 1) {
            return;
        }
        org.json.JSONObject jSONObject = (org.json.JSONObject) jSONObjectB.opt("header");
        org.json.JSONObject jSONObject2 = (org.json.JSONObject) jSONObjectB.opt("content");
        if (a == null || jSONObject == null || jSONObject2 == null) {
            return;
        }
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> constructInstantMessage: request build envelope.");
        org.json.JSONObject jSONObjectBuildEnvelopeWithExtHeader = com.umeng.commonsdk.framework.UMEnvelopeBuild.buildEnvelopeWithExtHeader(a, jSONObject, jSONObject2);
        if (jSONObjectBuildEnvelopeWithExtHeader != null) {
            try {
                if (jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "Build envelope error code: " + jSONObjectBuildEnvelopeWithExtHeader.getInt("exception"));
                }
            } catch (java.lang.Throwable unused) {
            }
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                e(jSONObjectBuildEnvelopeWithExtHeader);
            }
            b((java.lang.Object) jSONObjectBuildEnvelopeWithExtHeader);
        }
    }

    private void j() {
        org.json.JSONObject jSONObjectBuildEnvelopeWithExtHeader;
        org.json.JSONObject jSONObjectA = a(com.umeng.commonsdk.framework.UMEnvelopeBuild.maxDataSpace(a));
        if (jSONObjectA == null || jSONObjectA.length() < 1) {
            return;
        }
        org.json.JSONObject jSONObject = (org.json.JSONObject) jSONObjectA.opt("header");
        org.json.JSONObject jSONObject2 = (org.json.JSONObject) jSONObjectA.opt("content");
        android.content.Context context = a;
        if (context == null || jSONObject == null || jSONObject2 == null || (jSONObjectBuildEnvelopeWithExtHeader = com.umeng.commonsdk.framework.UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, jSONObject2)) == null) {
            return;
        }
        try {
            if (jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "Build envelope error code: " + jSONObjectBuildEnvelopeWithExtHeader.getInt("exception"));
            }
        } catch (java.lang.Throwable unused) {
        }
        if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
            d(jSONObjectBuildEnvelopeWithExtHeader);
        }
        a((java.lang.Object) jSONObjectBuildEnvelopeWithExtHeader);
    }

    private org.json.JSONObject k() {
        org.json.JSONObject jSONObjectL = l();
        if (jSONObjectL != null) {
            try {
                jSONObjectL.put("st", "1");
            } catch (java.lang.Throwable unused) {
            }
        }
        return jSONObjectL;
    }

    private org.json.JSONObject l() {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            if (com.umeng.analytics.AnalyticsConfig.mWrapperType != null && com.umeng.analytics.AnalyticsConfig.mWrapperVersion != null) {
                jSONObject.put("wrapper_version", com.umeng.analytics.AnalyticsConfig.mWrapperVersion);
                jSONObject.put("wrapper_type", com.umeng.analytics.AnalyticsConfig.mWrapperType);
            }
            int verticalType = com.umeng.analytics.AnalyticsConfig.getVerticalType(a);
            jSONObject.put(com.umeng.analytics.pro.c.i, verticalType);
            java.lang.String str = "9.3.8";
            if (verticalType == 1) {
                java.lang.String gameSdkVersion = com.umeng.analytics.AnalyticsConfig.getGameSdkVersion(a);
                if (!android.text.TextUtils.isEmpty(gameSdkVersion)) {
                    str = gameSdkVersion;
                }
            }
            jSONObject.put("sdk_version", str);
            java.lang.String strMD5 = com.umeng.commonsdk.statistics.common.HelperUtils.MD5(com.umeng.analytics.AnalyticsConfig.getSecretKey(a));
            if (!android.text.TextUtils.isEmpty(strMD5)) {
                jSONObject.put("secret", strMD5);
            }
            java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a);
            java.lang.String strImprintProperty2 = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(a, "ekv_bl_ver", "");
            if (!android.text.TextUtils.isEmpty(strImprintProperty2)) {
                if (com.umeng.analytics.AnalyticsConfig.CLEAR_EKV_BL) {
                    jSONObject.put(com.umeng.analytics.pro.c.ap, "");
                } else {
                    jSONObject.put(com.umeng.analytics.pro.c.ap, strImprintProperty2);
                }
            }
            java.lang.String strImprintProperty3 = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(a, "ekv_wl_ver", "");
            if (!android.text.TextUtils.isEmpty(strImprintProperty3)) {
                if (com.umeng.analytics.AnalyticsConfig.CLEAR_EKV_WL) {
                    jSONObject.put(com.umeng.analytics.pro.c.aq, "");
                } else {
                    jSONObject.put(com.umeng.analytics.pro.c.aq, strImprintProperty3);
                }
            }
            jSONObject.put(com.umeng.analytics.pro.c.ah, "1.0.0");
            if (s()) {
                jSONObject.put(com.umeng.analytics.pro.c.aj, "1");
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putLong(m, 0L).commit();
                }
            }
            jSONObject.put(com.umeng.analytics.pro.c.l, m());
            jSONObject.put(com.umeng.analytics.pro.c.m, n());
            if (sharedPreferences != null) {
                java.lang.String string = sharedPreferences.getString("vers_name", "");
                if (!android.text.TextUtils.isEmpty(string)) {
                    java.lang.String str2 = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.getDefault()).format(new java.util.Date(java.lang.System.currentTimeMillis()));
                    if (android.text.TextUtils.isEmpty(strImprintProperty)) {
                        jSONObject.put(com.umeng.analytics.pro.c.l, sharedPreferences.getString("vers_pre_version", "0"));
                        jSONObject.put(com.umeng.analytics.pro.c.m, sharedPreferences.getString("vers_date", str2));
                    }
                    sharedPreferences.edit().putString("pre_version", string).putString("cur_version", com.umeng.commonsdk.statistics.common.DeviceConfig.getAppVersionName(a)).putString("pre_date", str2).remove("vers_name").remove("vers_code").remove("vers_date").remove("vers_pre_version").commit();
                }
            }
        } catch (java.lang.Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private java.lang.String m() {
        java.lang.String strImprintProperty = null;
        try {
            strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
            if (android.text.TextUtils.isEmpty(strImprintProperty)) {
                if (!android.text.TextUtils.isEmpty(this.f1361d)) {
                    return this.f1361d;
                }
                if (this.f1360c == null) {
                    this.f1360c = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a);
                }
                java.lang.String string = this.f1360c.getString("pre_version", "");
                java.lang.String appVersionName = com.umeng.commonsdk.statistics.common.DeviceConfig.getAppVersionName(a);
                if (android.text.TextUtils.isEmpty(string)) {
                    this.f1360c.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
                    strImprintProperty = "0";
                } else {
                    java.lang.String string2 = this.f1360c.getString("cur_version", "");
                    if (appVersionName.equals(string2)) {
                        strImprintProperty = string;
                    } else {
                        this.f1360c.edit().putString("pre_version", string2).putString("cur_version", appVersionName).commit();
                        strImprintProperty = string2;
                    }
                }
            }
        } catch (java.lang.Throwable unused) {
        }
        this.f1361d = strImprintProperty;
        return strImprintProperty;
    }

    private java.lang.String n() {
        java.lang.String strImprintProperty = null;
        try {
            strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(a, "ud_da", null);
            if (android.text.TextUtils.isEmpty(strImprintProperty)) {
                if (!android.text.TextUtils.isEmpty(this.f1362e)) {
                    return this.f1362e;
                }
                if (this.f1360c == null) {
                    this.f1360c = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a);
                }
                java.lang.String string = this.f1360c.getString("pre_date", "");
                if (android.text.TextUtils.isEmpty(string)) {
                    string = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.getDefault()).format(new java.util.Date(java.lang.System.currentTimeMillis()));
                    this.f1360c.edit().putString("pre_date", string).commit();
                } else {
                    java.lang.String str = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.getDefault()).format(new java.util.Date(java.lang.System.currentTimeMillis()));
                    if (!string.equals(str)) {
                        this.f1360c.edit().putString("pre_date", str).commit();
                        strImprintProperty = str;
                    }
                }
                strImprintProperty = string;
            }
        } catch (java.lang.Throwable unused) {
        }
        this.f1362e = strImprintProperty;
        return strImprintProperty;
    }

    private void o() {
        try {
            this.i = 0;
            this.j = 0;
            this.k = java.lang.System.currentTimeMillis();
            com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit().putLong(o, java.lang.System.currentTimeMillis()).putInt(p, 0).commit();
        } catch (java.lang.Throwable unused) {
        }
    }

    private boolean p() {
        try {
            if (!android.text.TextUtils.isEmpty(com.umeng.analytics.pro.t.a().b())) {
                b(a);
            }
            if (this.f1364g.length() <= 0) {
                return false;
            }
            for (int i = 0; i < this.f1364g.length(); i++) {
                org.json.JSONObject jSONObjectOptJSONObject = this.f1364g.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                    java.lang.String strOptString = jSONObjectOptJSONObject.optString("__i");
                    if (android.text.TextUtils.isEmpty(strOptString) || "-1".equals(strOptString)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (java.lang.Throwable unused) {
            return true;
        }
    }

    private void q() {
        if (this.f1364g.length() > 0) {
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            for (int i = 0; i < this.f1364g.length(); i++) {
                try {
                    org.json.JSONObject jSONObject = this.f1364g.getJSONObject(i);
                    if (jSONObject != null && jSONObject.length() > 0) {
                        java.lang.String strOptString = jSONObject.optString("__i");
                        java.lang.String str = "-1";
                        if (android.text.TextUtils.isEmpty(strOptString) || "-1".equals(strOptString)) {
                            java.lang.String strB = com.umeng.analytics.pro.t.a().b();
                            if (!android.text.TextUtils.isEmpty(strB)) {
                                str = strB;
                            }
                            jSONObject.put("__i", str);
                        }
                    }
                    jSONArray.put(jSONObject);
                } catch (java.lang.Throwable unused) {
                }
            }
            this.f1364g = jSONArray;
        }
    }

    private void r() {
        android.content.SharedPreferences sharedPreferences;
        try {
            if (!s() || a == null || (sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a)) == null || sharedPreferences.getLong("first_activate_time", 0L) != 0) {
                return;
            }
            sharedPreferences.edit().putLong("first_activate_time", java.lang.System.currentTimeMillis()).commit();
        } catch (java.lang.Throwable unused) {
        }
    }

    private boolean s() {
        android.content.SharedPreferences sharedPreferences;
        try {
            if (a == null || (sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a)) == null) {
                return false;
            }
            return sharedPreferences.getLong(m, -1L) != 0;
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00cb A[Catch: all -> 0x00d4, TryCatch #0 {all -> 0x00d4, blocks: (B:40:0x009f, B:43:0x00a8, B:44:0x00ad, B:49:0x00ba, B:51:0x00c0, B:52:0x00c5, B:54:0x00cb, B:55:0x00d0, B:45:0x00b1), top: B:58:0x009f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject a(long r9) {
        /*
            r8 = this;
            com.umeng.analytics.pro.x r0 = com.umeng.analytics.pro.x.a()
            android.content.Context r1 = com.umeng.analytics.pro.n.a
            java.lang.String r0 = r0.d(r1)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 == 0) goto L12
            return r1
        L12:
            r0 = 0
            org.json.JSONObject r0 = r8.b(r0)
            com.umeng.analytics.pro.q r2 = com.umeng.analytics.pro.q.a()
            android.content.Context r3 = com.umeng.analytics.pro.n.a
            int r2 = r2.a(r3)
            int r3 = r0.length()
            r4 = 3
            if (r3 > 0) goto L2b
            if (r2 == r4) goto L91
            return r1
        L2b:
            int r3 = r0.length()
            r5 = 1
            java.lang.String r6 = "userlevel"
            java.lang.String r7 = "active_user"
            if (r3 != r5) goto L4c
            org.json.JSONObject r3 = r0.optJSONObject(r7)
            if (r3 == 0) goto L3f
            if (r2 == r4) goto L3f
            return r1
        L3f:
            java.lang.String r3 = r0.optString(r6)
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L66
            if (r2 == r4) goto L66
            return r1
        L4c:
            int r3 = r0.length()
            r5 = 2
            if (r3 != r5) goto L66
            org.json.JSONObject r3 = r0.optJSONObject(r7)
            if (r3 == 0) goto L66
            java.lang.String r3 = r0.optString(r6)
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L66
            if (r2 == r4) goto L66
            return r1
        L66:
            java.lang.String r3 = "sessions"
            java.lang.String r3 = r0.optString(r3)
            java.lang.String r5 = "gkv"
            java.lang.String r5 = r0.optString(r5)
            java.lang.String r6 = "ekv"
            java.lang.String r6 = r0.optString(r6)
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L91
            boolean r3 = android.text.TextUtils.isEmpty(r5)
            if (r3 == 0) goto L91
            boolean r3 = android.text.TextUtils.isEmpty(r6)
            if (r3 != 0) goto L91
            boolean r3 = r8.a(r0)
            if (r3 == 0) goto L91
            return r1
        L91:
            org.json.JSONObject r1 = r8.l()
            if (r1 == 0) goto L9a
            r8.c(r1)
        L9a:
            org.json.JSONObject r3 = new org.json.JSONObject
            r3.<init>()
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Ld4
            r5.<init>()     // Catch: java.lang.Throwable -> Ld4
            java.lang.String r6 = "analytics"
            if (r2 != r4) goto Lb1
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Ld4
            r0.<init>()     // Catch: java.lang.Throwable -> Ld4
        Lad:
            r5.put(r6, r0)     // Catch: java.lang.Throwable -> Ld4
            goto Lb8
        Lb1:
            int r2 = r0.length()     // Catch: java.lang.Throwable -> Ld4
            if (r2 <= 0) goto Lb8
            goto Lad
        Lb8:
            if (r1 == 0) goto Lc5
            int r0 = r1.length()     // Catch: java.lang.Throwable -> Ld4
            if (r0 <= 0) goto Lc5
            java.lang.String r0 = "header"
            r3.put(r0, r1)     // Catch: java.lang.Throwable -> Ld4
        Lc5:
            int r0 = r5.length()     // Catch: java.lang.Throwable -> Ld4
            if (r0 <= 0) goto Ld0
            java.lang.String r0 = "content"
            r3.put(r0, r5)     // Catch: java.lang.Throwable -> Ld4
        Ld0:
            org.json.JSONObject r3 = r8.a(r3, r9)     // Catch: java.lang.Throwable -> Ld4
        Ld4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.n.a(long):org.json.JSONObject");
    }

    public void a() {
        if (a != null) {
            synchronized (this.w) {
                if (this.u) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> network is now available, rebuild instant session data packet.");
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.l, com.umeng.analytics.CoreProtocol.getInstance(a), null);
                }
            }
            synchronized (this.w) {
                if (this.v) {
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(a, com.umeng.analytics.pro.n.a.m, com.umeng.analytics.CoreProtocol.getInstance(a), null);
                }
            }
        }
    }

    public void a(java.lang.Object obj) {
        if (obj != null) {
            try {
                org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has("exception") && 101 == jSONObject.getInt("exception")) {
                        return;
                    }
                    g(jSONObject);
                }
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public void a(java.lang.Object obj, int i) {
        com.umeng.analytics.process.UMProcessDBHelper uMProcessDBHelper;
        java.lang.String subProcessName;
        org.json.JSONArray jSONArray;
        if (com.umeng.analytics.AnalyticsConfig.enable) {
            if (i == 8213) {
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                    if (com.umeng.commonsdk.statistics.common.DeviceConfig.getGlobleActivity(a) != null) {
                        com.umeng.analytics.pro.t.b(a);
                    }
                    android.content.Context context = a;
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEventEx(context, com.umeng.analytics.pro.n.a.C, com.umeng.analytics.CoreProtocol.getInstance(context), null, 5000L);
                    return;
                }
                return;
            }
            try {
                switch (i) {
                    case 4097:
                        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                            uMProcessDBHelper = com.umeng.analytics.process.UMProcessDBHelper.getInstance(a);
                            subProcessName = com.umeng.commonsdk.framework.UMFrUtils.getSubProcessName(a);
                            jSONArray = new org.json.JSONArray();
                            uMProcessDBHelper.insertEventsInSubProcess(subProcessName, jSONArray.put(obj));
                            return;
                        }
                        if (obj != null) {
                            e(obj);
                        }
                        if ("-1".equals(((org.json.JSONObject) obj).optString("__i"))) {
                            return;
                        }
                        a(false);
                        return;
                    case 4098:
                        if (obj != null) {
                            e(obj);
                        }
                        if ("-1".equals(((org.json.JSONObject) obj).optString("__i"))) {
                            return;
                        }
                        a(false);
                        return;
                    case 4099:
                        com.umeng.analytics.pro.u.a(a);
                        return;
                    case com.umeng.analytics.pro.n.a.f1366d /* 4100 */:
                        com.umeng.analytics.pro.k.c(a);
                        return;
                    case com.umeng.analytics.pro.n.a.f1367e /* 4101 */:
                        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNIN");
                        a((java.lang.Object) null, true);
                        g(obj);
                        return;
                    case com.umeng.analytics.pro.n.a.f1368f /* 4102 */:
                        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNOFF");
                        a((java.lang.Object) null, true);
                        f(obj);
                        return;
                    case com.umeng.analytics.pro.n.a.f1369g /* 4103 */:
                        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> START_SESSION");
                        com.umeng.analytics.pro.t.a().a(a, obj);
                        synchronized (this.w) {
                            this.v = true;
                        }
                        return;
                    case com.umeng.analytics.pro.n.a.h /* 4104 */:
                        com.umeng.analytics.pro.t.a().c(a, obj);
                        return;
                    case com.umeng.analytics.pro.n.a.i /* 4105 */:
                        d();
                        return;
                    case com.umeng.analytics.pro.n.a.j /* 4106 */:
                        h(obj);
                        return;
                    default:
                        switch (i) {
                            case com.umeng.analytics.pro.n.a.k /* 4352 */:
                                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> INSTANT_SESSION_START");
                                com.umeng.analytics.pro.t.a().b(a, obj);
                                synchronized (this.w) {
                                    this.u = true;
                                }
                                return;
                            case com.umeng.analytics.pro.n.a.l /* 4353 */:
                                a(obj, true);
                                return;
                            case com.umeng.analytics.pro.n.a.m /* 4354 */:
                                c();
                                return;
                            case com.umeng.analytics.pro.n.a.n /* 4355 */:
                                if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a)) {
                                    uMProcessDBHelper = com.umeng.analytics.process.UMProcessDBHelper.getInstance(a);
                                    subProcessName = com.umeng.commonsdk.framework.UMFrUtils.getSubProcessName(a);
                                    jSONArray = new org.json.JSONArray();
                                    break;
                                } else {
                                    if (obj != null) {
                                        e(obj);
                                        d();
                                        return;
                                    }
                                    return;
                                }
                            case com.umeng.analytics.pro.n.a.o /* 4356 */:
                                if (obj == null || y == null || z == null) {
                                    return;
                                }
                                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> PROFILE_CHANGE_NOTIFY");
                                java.lang.String string = "";
                                java.lang.String string2 = "";
                                if (obj instanceof org.json.JSONObject) {
                                    org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
                                    if (jSONObject.has("uid") && jSONObject.has(com.umeng.analytics.pro.c.M)) {
                                        string = jSONObject.getString(com.umeng.analytics.pro.c.M);
                                        string2 = jSONObject.getString("uid");
                                    }
                                    a(string2, string);
                                    return;
                                }
                                return;
                            default:
                                switch (i) {
                                    case com.umeng.analytics.pro.n.a.r /* 8195 */:
                                        com.umeng.analytics.b.a().a(obj);
                                        return;
                                    case com.umeng.analytics.pro.n.a.s /* 8196 */:
                                        com.umeng.analytics.b.a().m();
                                        return;
                                    case com.umeng.analytics.pro.n.a.t /* 8197 */:
                                        com.umeng.analytics.b.a().k();
                                        return;
                                    default:
                                        switch (i) {
                                            case com.umeng.analytics.pro.n.a.u /* 8199 */:
                                            case com.umeng.analytics.pro.n.a.v /* 8200 */:
                                                com.umeng.analytics.b.a().b(obj);
                                                return;
                                            case com.umeng.analytics.pro.n.a.w /* 8201 */:
                                                com.umeng.analytics.b.a().b((java.lang.Object) null);
                                                return;
                                            default:
                                                switch (i) {
                                                    case 8208:
                                                        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> receive DELAY_BUILD_ENVELOPE event.");
                                                        android.content.Context context2 = a;
                                                        com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context2, com.umeng.analytics.pro.n.a.y, com.umeng.analytics.CoreProtocol.getInstance(context2), null);
                                                        android.content.Context context3 = a;
                                                        com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context3, com.umeng.analytics.pro.n.a.m, com.umeng.analytics.CoreProtocol.getInstance(context3), null);
                                                        return;
                                                    case com.umeng.analytics.pro.n.a.y /* 8209 */:
                                                        a(obj, false);
                                                        return;
                                                    case com.umeng.analytics.pro.n.a.z /* 8210 */:
                                                        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY.");
                                                        if (!com.umeng.commonsdk.utils.UMUtils.isMainProgress(a) || (this.b.c() instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime)) {
                                                            return;
                                                        }
                                                        a(true);
                                                        return;
                                                    default:
                                                        return;
                                                }
                                        }
                                }
                        }
                        uMProcessDBHelper.insertEventsInSubProcess(subProcessName, jSONArray.put(obj));
                        return;
                }
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public void a(java.lang.Object obj, boolean z2) throws org.json.JSONException {
        if (z2) {
            if (!d(true)) {
                return;
            }
        } else if (!com.umeng.commonsdk.framework.UMEnvelopeBuild.isOnline(a) || !d(true)) {
            return;
        }
        i();
    }

    public void a(boolean z2) {
        java.lang.String str;
        if (c(z2)) {
            if (this.b.c() instanceof com.umeng.commonsdk.statistics.common.ReportPolicy.ReportQuasiRealtime) {
                if (z2) {
                    if (!com.umeng.commonsdk.framework.UMEnvelopeBuild.isOnline(a)) {
                        return;
                    } else {
                        str = "--->>> send session start in policy ReportQuasiRealtime.";
                    }
                } else if (!com.umeng.commonsdk.framework.UMEnvelopeBuild.isReadyBuild(a, com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType.U_APP)) {
                    return;
                } else {
                    str = "--->>> send normal data in policy ReportQuasiRealtime.";
                }
            } else if (!com.umeng.commonsdk.framework.UMEnvelopeBuild.isReadyBuild(a, com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType.U_APP)) {
                return;
            } else {
                str = "--->>> constructMessage()";
            }
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, str);
            j();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c4 A[Catch: all -> 0x00cd, TryCatch #0 {all -> 0x00cd, blocks: (B:32:0x00a1, B:33:0x00a6, B:38:0x00b3, B:40:0x00b9, B:41:0x00be, B:43:0x00c4, B:44:0x00c9, B:34:0x00aa), top: B:47:0x009f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject b(long r9) throws org.json.JSONException {
        /*
            r8 = this;
            com.umeng.analytics.pro.x r0 = com.umeng.analytics.pro.x.a()
            android.content.Context r1 = com.umeng.analytics.pro.n.a
            android.content.Context r1 = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(r1)
            java.lang.String r0 = r0.d(r1)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 == 0) goto L16
            return r1
        L16:
            android.content.Context r0 = com.umeng.analytics.pro.n.a
            android.content.Context r0 = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(r0)
            com.umeng.analytics.pro.h r0 = com.umeng.analytics.pro.h.a(r0)
            r2 = 0
            org.json.JSONObject r0 = r0.b(r2)
            android.content.Context r3 = com.umeng.analytics.pro.n.a
            java.lang.String[] r3 = com.umeng.analytics.c.a(r3)
            java.lang.String r4 = "active_user"
            r5 = 1
            if (r3 == 0) goto L5e
            r6 = r3[r2]
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 != 0) goto L5e
            r6 = r3[r5]
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 != 0) goto L5e
            org.json.JSONObject r6 = new org.json.JSONObject
            r6.<init>()
            java.lang.String r7 = "provider"
            r2 = r3[r2]     // Catch: java.lang.Throwable -> L5d
            r6.put(r7, r2)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r2 = "puid"
            r3 = r3[r5]     // Catch: java.lang.Throwable -> L5d
            r6.put(r2, r3)     // Catch: java.lang.Throwable -> L5d
            int r2 = r6.length()     // Catch: java.lang.Throwable -> L5d
            if (r2 <= 0) goto L5e
            r0.put(r4, r6)     // Catch: java.lang.Throwable -> L5d
            goto L5e
        L5d:
        L5e:
            com.umeng.analytics.pro.q r2 = com.umeng.analytics.pro.q.a()
            android.content.Context r3 = com.umeng.analytics.pro.n.a
            int r2 = r2.a(r3)
            int r3 = r0.length()
            r6 = 3
            if (r3 != r5) goto L78
            org.json.JSONObject r3 = r0.optJSONObject(r4)
            if (r3 == 0) goto L78
            if (r2 == r6) goto L78
            return r1
        L78:
            com.umeng.analytics.pro.q r3 = com.umeng.analytics.pro.q.a()
            android.content.Context r4 = com.umeng.analytics.pro.n.a
            r3.b(r0, r4)
            int r3 = r0.length()
            if (r3 > 0) goto L8a
            if (r2 == r6) goto L8a
            return r1
        L8a:
            org.json.JSONObject r1 = r8.k()
            if (r1 == 0) goto L93
            r8.b(r1)
        L93:
            org.json.JSONObject r3 = new org.json.JSONObject
            r3.<init>()
            org.json.JSONObject r4 = new org.json.JSONObject
            r4.<init>()
            java.lang.String r5 = "analytics"
            if (r2 != r6) goto Laa
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Lcd
            r0.<init>()     // Catch: java.lang.Throwable -> Lcd
        La6:
            r4.put(r5, r0)     // Catch: java.lang.Throwable -> Lcd
            goto Lb1
        Laa:
            int r2 = r0.length()     // Catch: java.lang.Throwable -> Lcd
            if (r2 <= 0) goto Lb1
            goto La6
        Lb1:
            if (r1 == 0) goto Lbe
            int r0 = r1.length()     // Catch: java.lang.Throwable -> Lcd
            if (r0 <= 0) goto Lbe
            java.lang.String r0 = "header"
            r3.put(r0, r1)     // Catch: java.lang.Throwable -> Lcd
        Lbe:
            int r0 = r4.length()     // Catch: java.lang.Throwable -> Lcd
            if (r0 <= 0) goto Lc9
            java.lang.String r0 = "content"
            r3.put(r0, r4)     // Catch: java.lang.Throwable -> Lcd
        Lc9:
            org.json.JSONObject r3 = r8.b(r3, r9)     // Catch: java.lang.Throwable -> Lcd
        Lcd:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.n.b(long):org.json.JSONObject");
    }

    public org.json.JSONObject b(boolean z2) {
        org.json.JSONArray jSONArray;
        int length;
        org.json.JSONArray jSONArray2;
        org.json.JSONObject jSONObjectA = null;
        try {
            jSONObjectA = com.umeng.analytics.pro.h.a(a).a(z2);
            if (jSONObjectA == null) {
                jSONObjectA = new org.json.JSONObject();
            } else {
                try {
                    boolean zHas = jSONObjectA.has(com.umeng.analytics.pro.c.n);
                    jSONObjectA = jSONObjectA;
                    if (zHas) {
                        org.json.JSONArray jSONArray3 = jSONObjectA.getJSONArray(com.umeng.analytics.pro.c.n);
                        org.json.JSONArray jSONArray4 = new org.json.JSONArray();
                        int i = 0;
                        while (i < jSONArray3.length()) {
                            org.json.JSONObject jSONObject = (org.json.JSONObject) jSONArray3.get(i);
                            org.json.JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(com.umeng.analytics.pro.c.t);
                            org.json.JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(com.umeng.analytics.pro.c.u);
                            if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 != null) {
                                jSONObject.put(com.umeng.analytics.pro.c.t, jSONArrayOptJSONArray2);
                                jSONObject.remove(com.umeng.analytics.pro.c.u);
                            }
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null) {
                                java.util.ArrayList arrayList = new java.util.ArrayList();
                                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                    arrayList.add((org.json.JSONObject) jSONArrayOptJSONArray.get(i2));
                                }
                                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                                    arrayList.add((org.json.JSONObject) jSONArrayOptJSONArray2.get(i3));
                                }
                                com.umeng.commonsdk.utils.JSONArraySortUtil jSONArraySortUtil = new com.umeng.commonsdk.utils.JSONArraySortUtil();
                                jSONArraySortUtil.setCompareKey(com.umeng.analytics.pro.c.x);
                                java.util.Collections.sort(arrayList, jSONArraySortUtil);
                                org.json.JSONArray jSONArray5 = new org.json.JSONArray();
                                java.util.Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    jSONArray5.put((org.json.JSONObject) it.next());
                                }
                                jSONObject.put(com.umeng.analytics.pro.c.t, jSONArray5);
                                jSONObject.remove(com.umeng.analytics.pro.c.u);
                            }
                            if (jSONObject.has(com.umeng.analytics.pro.c.t)) {
                                org.json.JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(com.umeng.analytics.pro.c.t);
                                int i4 = 0;
                                while (i4 < jSONArrayOptJSONArray3.length()) {
                                    org.json.JSONObject jSONObject2 = jSONArrayOptJSONArray3.getJSONObject(i4);
                                    if (jSONObject2.has(com.umeng.analytics.pro.c.x)) {
                                        jSONArray2 = jSONArray3;
                                        jSONObject2.put("ts", jSONObject2.getLong(com.umeng.analytics.pro.c.x));
                                        jSONObject2.remove(com.umeng.analytics.pro.c.x);
                                    } else {
                                        jSONArray2 = jSONArray3;
                                    }
                                    i4++;
                                    jSONArray3 = jSONArray2;
                                }
                                jSONArray = jSONArray3;
                                jSONObject.put(com.umeng.analytics.pro.c.t, jSONArrayOptJSONArray3);
                                length = jSONArrayOptJSONArray3.length();
                            } else {
                                jSONArray = jSONArray3;
                                length = 0;
                            }
                            jSONObject.put(com.umeng.analytics.pro.c.z, length);
                            jSONArray4.put(jSONObject);
                            i++;
                            jSONArray3 = jSONArray;
                        }
                        jSONObjectA.put(com.umeng.analytics.pro.c.n, jSONArray4);
                        jSONObjectA = jSONObjectA;
                    }
                } catch (java.lang.Exception e2) {
                    com.umeng.commonsdk.statistics.common.MLog.e("merge pages error");
                    e2.printStackTrace();
                    jSONObjectA = jSONObjectA;
                }
            }
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a);
            if (sharedPreferences != null) {
                java.lang.String string = sharedPreferences.getString("userlevel", "");
                if (!android.text.TextUtils.isEmpty(string)) {
                    jSONObjectA.put("userlevel", string);
                }
            }
            java.lang.String[] strArrA = com.umeng.analytics.c.a(a);
            if (strArrA != null && !android.text.TextUtils.isEmpty(strArrA[0]) && !android.text.TextUtils.isEmpty(strArrA[1])) {
                org.json.JSONObject jSONObject3 = new org.json.JSONObject();
                jSONObject3.put(com.umeng.analytics.pro.c.M, strArrA[0]);
                jSONObject3.put(com.umeng.analytics.pro.c.N, strArrA[1]);
                if (jSONObject3.length() > 0) {
                    jSONObjectA.put(com.umeng.analytics.pro.c.L, jSONObject3);
                }
            }
            if (com.umeng.commonsdk.statistics.noise.ABTest.getService(a).isInTest()) {
                org.json.JSONObject jSONObject4 = new org.json.JSONObject();
                jSONObject4.put(com.umeng.commonsdk.statistics.noise.ABTest.getService(a).getTestName(), com.umeng.commonsdk.statistics.noise.ABTest.getService(a).getGroupInfo());
                jSONObjectA.put(com.umeng.analytics.pro.c.K, jSONObject4);
            }
            com.umeng.analytics.pro.q.a().a(jSONObjectA, a);
        } catch (java.lang.Throwable unused) {
        }
        return jSONObjectA;
    }

    public void b() {
    }

    public void b(android.content.Context context) {
        try {
            com.umeng.analytics.pro.h.a(context).d();
            q();
        } catch (java.lang.Throwable unused) {
        }
    }

    public void b(java.lang.Object obj) {
        if (obj != null) {
            try {
                org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has("exception") && 101 == jSONObject.getInt("exception")) {
                        return;
                    }
                    f(jSONObject);
                }
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public void c() {
        b(a);
        d();
        a(true);
    }

    public void c(java.lang.Object obj) {
        b(a);
        d();
        if (d(false)) {
            j();
        }
    }

    public void d() {
        try {
            if (this.f1364g.length() > 0) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>*** flushMemoryData: 事件落库。");
                com.umeng.analytics.pro.h.a(a).a(this.f1364g);
                this.f1364g = new org.json.JSONArray();
            }
            com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a).edit().putLong("thtstart", this.k).putInt("gkvc", this.i).putInt("ekvc", this.j).commit();
        } catch (java.lang.Throwable unused) {
        }
    }

    public void d(java.lang.Object obj) {
        r();
        m();
        n();
        a(true);
    }

    public void e() {
        if (d(false)) {
            j();
        }
    }

    public long f() {
        android.content.SharedPreferences sharedPreferences;
        long jCurrentTimeMillis = 0;
        try {
            if (a == null || (sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(a)) == null) {
                return 0L;
            }
            long j = sharedPreferences.getLong("first_activate_time", 0L);
            if (j == 0) {
                try {
                    jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                    sharedPreferences.edit().putLong("first_activate_time", jCurrentTimeMillis).commit();
                    return jCurrentTimeMillis;
                } catch (java.lang.Throwable unused) {
                }
            }
            return j;
        } catch (java.lang.Throwable unused2) {
            return jCurrentTimeMillis;
        }
    }
}
