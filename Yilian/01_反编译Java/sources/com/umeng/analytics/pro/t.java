package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class t implements com.umeng.analytics.pro.x.a {
    public static final java.lang.String a = "session_start_time";
    public static final java.lang.String b = "session_end_time";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1384c = "session_id";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1385d = "pre_session_id";

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String f1386e = "a_start_time";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1387f = "a_end_time";

    /* renamed from: g, reason: collision with root package name */
    public static final java.lang.String f1388g = "fg_count";
    public static java.lang.String h = null;
    public static android.content.Context i = null;
    public static boolean j = false;
    public static long k = 0;
    public static boolean l = true;
    public static long m;

    public static class a {
        public static final com.umeng.analytics.pro.t a = new com.umeng.analytics.pro.t();
    }

    public t() {
        com.umeng.analytics.pro.x.a().a(this);
    }

    public static long a(android.content.Context context) {
        try {
            return com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).getLong(f1388g, 0L);
        } catch (java.lang.Throwable unused) {
            return 0L;
        }
    }

    public static com.umeng.analytics.pro.t a() {
        return com.umeng.analytics.pro.t.a.a;
    }

    private void a(android.content.Context context, java.lang.String str, long j2, long j3, long j4) throws org.json.JSONException {
        if (android.text.TextUtils.isEmpty(h)) {
            h = com.umeng.analytics.pro.x.a().a(i);
        }
        if (android.text.TextUtils.isEmpty(str) || str.equals(h)) {
            return;
        }
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.f1327g, j3);
            jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.h, j4);
            org.json.JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
            if (jSONObjectB != null && jSONObjectB.length() > 0) {
                jSONObject.put("__sp", jSONObjectB);
            }
            org.json.JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                jSONObject.put("__pp", jSONObjectC);
            }
            com.umeng.analytics.pro.h.a(context).a(h, jSONObject, com.umeng.analytics.pro.h.a.END);
        } catch (java.lang.Exception unused) {
        }
        try {
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            jSONObject2.put("__e", j2);
            com.umeng.analytics.pro.h.a(context).a(str, jSONObject2, com.umeng.analytics.pro.h.a.BEGIN);
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                m = j4;
                d(context);
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEventEx(i, com.umeng.analytics.pro.n.a.C, com.umeng.analytics.CoreProtocol.getInstance(i), null, 0L);
            }
        } catch (java.lang.Exception unused2) {
        }
        h = str;
    }

    private void a(java.lang.String str, long j2) {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(i);
        if (sharedPreferences == null) {
            return;
        }
        long j3 = sharedPreferences.getLong(b, 0L);
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("__ii", str);
            jSONObject.put("__e", j2);
            jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.f1327g, j3);
            double[] location = com.umeng.analytics.AnalyticsConfig.getLocation();
            if (location != null) {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put(com.umeng.analytics.pro.c.C, location[0]);
                jSONObject2.put(com.umeng.analytics.pro.c.D, location[1]);
                jSONObject2.put("ts", java.lang.System.currentTimeMillis());
                jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.f1325e, jSONObject2);
            }
            java.lang.Class<?> cls = java.lang.Class.forName("android.net.TrafficStats");
            java.lang.reflect.Method method = cls.getMethod("getUidRxBytes", java.lang.Integer.TYPE);
            java.lang.reflect.Method method2 = cls.getMethod("getUidTxBytes", java.lang.Integer.TYPE);
            int i2 = i.getApplicationInfo().uid;
            if (i2 == -1) {
                return;
            }
            long jLongValue = ((java.lang.Long) method.invoke(null, java.lang.Integer.valueOf(i2))).longValue();
            long jLongValue2 = ((java.lang.Long) method2.invoke(null, java.lang.Integer.valueOf(i2))).longValue();
            if (jLongValue > 0 && jLongValue2 > 0) {
                org.json.JSONObject jSONObject3 = new org.json.JSONObject();
                jSONObject3.put(com.umeng.analytics.pro.c.H, jLongValue);
                jSONObject3.put(com.umeng.analytics.pro.c.G, jLongValue2);
                jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.f1324d, jSONObject3);
            }
            com.umeng.analytics.pro.h.a(i).a(str, jSONObject, com.umeng.analytics.pro.h.a.NEWSESSION);
            com.umeng.analytics.pro.u.a(i);
            com.umeng.analytics.pro.k.c(i);
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void b(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(i);
        if (sharedPreferences != null) {
            long j2 = sharedPreferences.getLong(f1388g, 0L);
            android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (editorEdit != null) {
                editorEdit.putLong(f1388g, j2 + 1);
                editorEdit.commit();
            }
        }
    }

    private void d(android.content.Context context) {
        try {
            android.content.SharedPreferences.Editor editorEdit = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).edit();
            editorEdit.putLong(f1388g, 0L);
            editorEdit.commit();
        } catch (java.lang.Throwable unused) {
        }
    }

    private java.lang.String e(android.content.Context context) {
        if (i == null && context != null) {
            i = context.getApplicationContext();
        }
        java.lang.String strD = com.umeng.analytics.pro.x.a().d(i);
        try {
            f(context);
            com.umeng.analytics.pro.n.a(i).d((java.lang.Object) null);
        } catch (java.lang.Throwable unused) {
        }
        return strD;
    }

    private void f(android.content.Context context) {
        com.umeng.analytics.pro.n.a(context).b(context);
        com.umeng.analytics.pro.n.a(context).d();
    }

    public java.lang.String a(android.content.Context context, long j2, boolean z) {
        java.lang.String strB = com.umeng.analytics.pro.x.a().b(context);
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onInstantSessionInternal: current session id = " + strB);
        if (android.text.TextUtils.isEmpty(strB)) {
            return null;
        }
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("__e", j2);
            org.json.JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
            if (jSONObjectB != null && jSONObjectB.length() > 0) {
                jSONObject.put("__sp", jSONObjectB);
            }
            org.json.JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                jSONObject.put("__pp", jSONObjectC);
            }
            com.umeng.analytics.pro.h.a(context).a(strB, jSONObject, com.umeng.analytics.pro.h.a.INSTANTSESSIONBEGIN);
            com.umeng.analytics.pro.n.a(context).a(jSONObject, z);
        } catch (java.lang.Throwable unused) {
        }
        return strB;
    }

    public void a(android.content.Context context, long j2) {
        android.content.SharedPreferences.Editor editorEdit;
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(i);
        if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null) {
            return;
        }
        editorEdit.putLong(a, j2);
        editorEdit.commit();
    }

    public void a(android.content.Context context, java.lang.Object obj) {
        android.content.SharedPreferences.Editor editorEdit;
        try {
            if (i == null && context != null) {
                i = context.getApplicationContext();
            }
            long jLongValue = ((java.lang.Long) obj).longValue();
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(i);
            if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null) {
                return;
            }
            java.lang.String string = sharedPreferences.getString(com.umeng.analytics.pro.c.az, "");
            java.lang.String appVersionName = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(i);
            if (android.text.TextUtils.isEmpty(string)) {
                editorEdit.putInt("versioncode", java.lang.Integer.parseInt(com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(context)));
                editorEdit.putString(com.umeng.analytics.pro.c.az, appVersionName);
                editorEdit.commit();
            } else if (!string.equals(appVersionName)) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onStartSessionInternal: upgrade version: " + string + "-> " + appVersionName);
                int i2 = sharedPreferences.getInt("versioncode", 0);
                java.lang.String string2 = sharedPreferences.getString("pre_date", "");
                java.lang.String string3 = sharedPreferences.getString("pre_version", "");
                java.lang.String string4 = sharedPreferences.getString(com.umeng.analytics.pro.c.az, "");
                editorEdit.putInt("versioncode", java.lang.Integer.parseInt(com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(context)));
                editorEdit.putString(com.umeng.analytics.pro.c.az, appVersionName);
                editorEdit.putString("vers_date", string2);
                editorEdit.putString("vers_pre_version", string3);
                editorEdit.putString("cur_version", string4);
                editorEdit.putInt("vers_code", i2);
                editorEdit.putString("vers_name", string);
                editorEdit.commit();
                if (l) {
                    l = false;
                }
                if (j) {
                    j = false;
                    b(i, jLongValue, true);
                    b(i, jLongValue);
                    return;
                }
                return;
            }
            if (j) {
                j = false;
                if (l) {
                    l = false;
                }
                h = e(context);
                com.umeng.commonsdk.statistics.common.MLog.d("创建新会话: " + h);
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "mSessionChanged flag has been set, Start new session: " + h);
                return;
            }
            h = sharedPreferences.getString("session_id", null);
            editorEdit.putLong(f1386e, jLongValue);
            editorEdit.putLong(f1387f, 0L);
            editorEdit.commit();
            com.umeng.commonsdk.statistics.common.MLog.d("延续上一个会话: " + h);
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "Extend current session: " + h);
            if (l) {
                l = false;
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEventEx(i, com.umeng.analytics.pro.n.a.C, com.umeng.analytics.CoreProtocol.getInstance(i), null, 0L);
                }
            }
            f(context);
            com.umeng.analytics.pro.n.a(i).a(false);
        } catch (java.lang.Throwable unused) {
        }
    }

    @Override // com.umeng.analytics.pro.x.a
    public void a(java.lang.String str, long j2, long j3, long j4) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        a(str, j2);
    }

    @Override // com.umeng.analytics.pro.x.a
    public void a(java.lang.String str, java.lang.String str2, long j2, long j3, long j4) throws org.json.JSONException {
        a(i, str2, j2, j3, j4);
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "saveSessionToDB: complete");
        if (com.umeng.commonsdk.statistics.AnalyticsConstants.SUB_PROCESS_EVENT) {
            android.content.Context context = i;
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, 36945, com.umeng.analytics.process.UMProcessDBDatasSender.getInstance(context), java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
        }
    }

    public java.lang.String b() {
        return h;
    }

    public void b(android.content.Context context, long j2) {
        if (com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context) == null) {
            return;
        }
        try {
            com.umeng.analytics.pro.n.a(i).c((java.lang.Object) null);
        } catch (java.lang.Throwable unused) {
        }
    }

    public void b(android.content.Context context, java.lang.Object obj) {
        try {
            if (i == null) {
                i = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(context);
            }
            long jCurrentTimeMillis = obj == null ? java.lang.System.currentTimeMillis() : ((java.lang.Long) obj).longValue();
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(i);
            if (sharedPreferences == null) {
                return;
            }
            k = sharedPreferences.getLong(f1387f, 0L);
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime: " + k);
            java.lang.String string = sharedPreferences.getString(com.umeng.analytics.pro.c.az, "");
            java.lang.String appVersionName = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(i);
            android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (editorEdit == null) {
                return;
            }
            if (android.text.TextUtils.isEmpty(string) || string.equals(appVersionName)) {
                if (!com.umeng.analytics.pro.x.a().e(i)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> less then 30 sec from last session, do nothing.");
                    j = false;
                    return;
                }
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> More then 30 sec from last session.");
                j = true;
                editorEdit.putLong(a, jCurrentTimeMillis);
                editorEdit.commit();
                a(i, jCurrentTimeMillis, false);
                return;
            }
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> requestNewInstantSessionIf: version upgrade");
            editorEdit.putLong(a, jCurrentTimeMillis);
            editorEdit.commit();
            com.umeng.analytics.pro.n.a(i).a((java.lang.Object) null, true);
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> force generate new session: session id = " + com.umeng.analytics.pro.x.a().c(i));
            j = true;
            a(i, jCurrentTimeMillis, true);
        } catch (java.lang.Throwable unused) {
        }
    }

    public boolean b(android.content.Context context, long j2, boolean z) {
        android.content.SharedPreferences sharedPreferences;
        java.lang.String strA;
        long j3;
        boolean z2 = false;
        try {
            sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
        } catch (java.lang.Throwable unused) {
        }
        if (sharedPreferences == null || (strA = com.umeng.analytics.pro.x.a().a(i)) == null) {
            return false;
        }
        long j4 = sharedPreferences.getLong(f1386e, 0L);
        long j5 = sharedPreferences.getLong(f1387f, 0L);
        if (j4 > 0 && j5 == 0) {
            z2 = true;
            if (z) {
                if (k == 0) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime = 0, In-app upgrade, use currentTime: = " + j2);
                    j3 = j2;
                } else {
                    j3 = k;
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime != 0, app upgrade, use lastActivityEndTime: = " + k);
                }
                c(i, java.lang.Long.valueOf(j3));
            } else {
                c(i, java.lang.Long.valueOf(j2));
                j3 = j2;
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            if (z) {
                jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.f1327g, j3);
            } else {
                jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.f1327g, j2);
            }
            org.json.JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
            if (jSONObjectB != null && jSONObjectB.length() > 0) {
                jSONObject.put("__sp", jSONObjectB);
            }
            org.json.JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                jSONObject.put("__pp", jSONObjectC);
            }
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>*** foregroundCount = " + m);
                jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.h, m);
                m = 0L;
            } else {
                jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.h, 0L);
            }
            com.umeng.analytics.pro.h.a(context).a(strA, jSONObject, com.umeng.analytics.pro.h.a.END);
            com.umeng.analytics.pro.n.a(i).e();
        }
        return z2;
    }

    public java.lang.String c() {
        return c(i);
    }

    public java.lang.String c(android.content.Context context) {
        try {
            if (h == null) {
                return com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).getString("session_id", null);
            }
        } catch (java.lang.Throwable unused) {
        }
        return h;
    }

    public void c(android.content.Context context, java.lang.Object obj) {
        try {
            if (i == null && context != null) {
                i = context.getApplicationContext();
            }
            long jLongValue = ((java.lang.Long) obj).longValue();
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            if (sharedPreferences.getLong(f1386e, 0L) == 0) {
                com.umeng.commonsdk.statistics.common.MLog.e("onPause called before onResume");
                return;
            }
            android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onEndSessionInternal: write activity end time = " + jLongValue);
            editorEdit.putLong(f1387f, jLongValue);
            editorEdit.putLong(b, jLongValue);
            editorEdit.commit();
        } catch (java.lang.Throwable unused) {
        }
    }
}
