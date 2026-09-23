package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class x {

    /* renamed from: c, reason: collision with root package name */
    public static volatile com.umeng.analytics.pro.x f1393c;
    public com.umeng.analytics.pro.v a = new com.umeng.analytics.pro.w();
    public java.lang.String b;

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<com.umeng.analytics.pro.x.a> f1394d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1395e;

    public interface a {
        void a(java.lang.String str, long j, long j2, long j3);

        void a(java.lang.String str, java.lang.String str2, long j, long j2, long j3);
    }

    private long a(android.content.Context context, java.lang.String str) {
        long j;
        try {
            j = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).getLong(str, 0L);
        } catch (java.lang.Exception unused) {
            j = 0;
        }
        return j <= 0 ? java.lang.System.currentTimeMillis() : j;
    }

    public static com.umeng.analytics.pro.x a() {
        if (f1393c == null) {
            synchronized (com.umeng.analytics.pro.x.class) {
                if (f1393c == null) {
                    f1393c = new com.umeng.analytics.pro.x();
                }
            }
        }
        return f1393c;
    }

    private void a(long j, long j2, long j3, java.lang.String str, boolean z) {
        java.util.List<com.umeng.analytics.pro.x.a> list = this.f1394d;
        if (list != null) {
            for (com.umeng.analytics.pro.x.a aVar : list) {
                if (z) {
                    try {
                        aVar.a(str, this.b, j, j2, j3);
                    } catch (java.lang.Exception unused) {
                    }
                } else {
                    aVar.a(this.b, j, j2, j3);
                }
            }
        }
    }

    private java.lang.String f(android.content.Context context) {
        java.lang.String str;
        try {
            android.content.SharedPreferences.Editor editorEdit = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).edit();
            editorEdit.putString(com.umeng.analytics.pro.t.f1385d, d(context));
            editorEdit.commit();
        } catch (java.lang.Exception unused) {
        }
        long jH = h(context);
        long jI = i(context);
        java.lang.String str2 = this.b;
        long jA = com.umeng.analytics.pro.t.a(context);
        long j = jA * 5000;
        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count 值完成，count次数：" + jA);
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
            str = "--->>>*** foreground count druation云控参数关闭。";
        } else {
            if (com.umeng.commonsdk.framework.UMWorkDispatch.eventHasExist()) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，终止checker timer.");
                com.umeng.commonsdk.framework.UMWorkDispatch.removeEvent();
                a(jI, jH, j, str2, false);
                this.b = this.a.a(context);
                a(jI, jH, j, str2, true);
                this.a.a(context, this.b);
                return this.b;
            }
            str = "--->>>*** 读取 foreground count druation值完成，无未处理check timer事件。";
        }
        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, str);
        a(jI, jH, j, str2, false);
        this.b = this.a.a(context);
        a(jI, jH, j, str2, true);
        this.a.a(context, this.b);
        return this.b;
    }

    private boolean g(android.content.Context context) {
        return !android.text.TextUtils.isEmpty(this.b) && com.umeng.analytics.pro.h.a(context).a(this.b) > 0;
    }

    private long h(android.content.Context context) {
        return a(context, com.umeng.analytics.pro.t.f1387f);
    }

    private long i(android.content.Context context) {
        return a(context, com.umeng.analytics.pro.t.a);
    }

    private boolean j(android.content.Context context) {
        android.content.Context appContext = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(context);
        try {
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(appContext);
            long j = sharedPreferences.getLong(com.umeng.analytics.pro.t.f1386e, 0L);
            long j2 = sharedPreferences.getLong(com.umeng.analytics.pro.t.f1387f, 0L);
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.E) && j > 0 && j2 == 0) {
                long jA = com.umeng.analytics.pro.t.a(appContext);
                if (jA > 0) {
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> last session end time stamp = 0, reconstruct it by foreground count value.");
                    j2 = j + (jA * 5000);
                }
            }
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> interval of last session is: " + (j2 - j));
            return this.a.a(j, j2);
        } catch (java.lang.Exception unused) {
            return false;
        }
    }

    public java.lang.String a(android.content.Context context) {
        android.content.Context appContext = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        java.lang.String string = "";
        try {
            synchronized (com.umeng.analytics.pro.x.class) {
                string = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(appContext).getString(com.umeng.analytics.pro.t.f1385d, "");
            }
        } catch (java.lang.Exception unused) {
        }
        return string;
    }

    public java.lang.String a(android.content.Context context, long j) {
        if (android.text.TextUtils.isEmpty(this.f1395e)) {
            java.lang.String str = "SUB" + j;
            java.lang.StringBuilder sbO = e.a.c.a.a.o(str);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("%0");
            sbO2.append(32 - str.length());
            sbO2.append(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_DURATION);
            sbO.append(java.lang.String.format(sbO2.toString(), 0));
            this.f1395e = sbO.toString();
        }
        return this.f1395e;
    }

    public void a(long j) {
        this.a.a(j);
    }

    public void a(com.umeng.analytics.pro.x.a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f1394d == null) {
            this.f1394d = new java.util.ArrayList();
        }
        if (this.f1394d.contains(aVar)) {
            return;
        }
        this.f1394d.add(aVar);
    }

    public long b() {
        return this.a.a();
    }

    public synchronized java.lang.String b(android.content.Context context) {
        android.content.Context appContext = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        this.b = d(appContext);
        if (e(appContext)) {
            try {
                this.b = f(appContext);
            } catch (java.lang.Exception unused) {
            }
        }
        return this.b;
    }

    public void b(com.umeng.analytics.pro.x.a aVar) {
        java.util.List<com.umeng.analytics.pro.x.a> list;
        if (aVar == null || (list = this.f1394d) == null || list.size() == 0) {
            return;
        }
        this.f1394d.remove(aVar);
    }

    public java.lang.String c(android.content.Context context) {
        android.content.Context appContext = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        try {
            this.b = f(appContext);
        } catch (java.lang.Exception unused) {
        }
        return this.b;
    }

    public java.lang.String d(android.content.Context context) {
        if (android.text.TextUtils.isEmpty(this.b)) {
            try {
                this.b = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).getString("session_id", null);
            } catch (java.lang.Exception unused) {
            }
        }
        return this.b;
    }

    public boolean e(android.content.Context context) {
        if (android.text.TextUtils.isEmpty(this.b)) {
            this.b = d(context);
        }
        return android.text.TextUtils.isEmpty(this.b) || j(context) || g(context);
    }
}
