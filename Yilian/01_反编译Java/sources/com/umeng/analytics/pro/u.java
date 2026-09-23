package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class u {

    /* renamed from: c, reason: collision with root package name */
    public static final int f1389c = 5;

    /* renamed from: d, reason: collision with root package name */
    public static org.json.JSONArray f1390d = new org.json.JSONArray();

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.Object f1391e = new java.lang.Object();

    /* renamed from: f, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.Long> f1392f = new java.util.HashMap();
    public java.util.Stack<java.lang.String> a = new java.util.Stack<>();
    public com.umeng.analytics.vshelper.a b = com.umeng.analytics.vshelper.PageNameMonitor.getInstance();

    public static void a(android.content.Context context) {
        java.lang.String string;
        if (context != null) {
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                synchronized (f1391e) {
                    string = f1390d.toString();
                    f1390d = new org.json.JSONArray();
                }
                if (string.length() > 0) {
                    jSONObject.put("__a", new org.json.JSONArray(string));
                    if (jSONObject.length() > 0) {
                        com.umeng.analytics.pro.h.a(context).a(com.umeng.analytics.pro.t.a().c(), jSONObject, com.umeng.analytics.pro.h.a.PAGE);
                    }
                }
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public int a() {
        return 2;
    }

    public void a(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        if (com.umeng.commonsdk.UMConfigure.isDebugLog() && this.a.size() != 0) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.F, 0, "\\|", new java.lang.String[]{"@"}, new java.lang.String[]{this.a.peek()}, null, null);
        }
        this.b.customPageBegin(str);
        synchronized (this.f1392f) {
            this.f1392f.put(str, java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                this.a.push(str);
            }
        }
    }

    public void b() {
        java.lang.String key;
        synchronized (this.f1392f) {
            key = null;
            long j = 0;
            for (java.util.Map.Entry<java.lang.String, java.lang.Long> entry : this.f1392f.entrySet()) {
                if (entry.getValue().longValue() > j) {
                    long jLongValue = entry.getValue().longValue();
                    key = entry.getKey();
                    j = jLongValue;
                }
            }
        }
        if (key != null) {
            b(key);
        }
    }

    public void b(java.lang.String str) {
        java.lang.Long l;
        android.content.Context appContext;
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        if (!this.f1392f.containsKey(str)) {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog() && this.a.size() == 0) {
                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.G, 0, "\\|", new java.lang.String[]{"@"}, new java.lang.String[]{str}, null, null);
                return;
            }
            return;
        }
        synchronized (this.f1392f) {
            l = this.f1392f.get(str);
        }
        if (l == null) {
            return;
        }
        if (com.umeng.commonsdk.UMConfigure.isDebugLog() && this.a.size() > 0 && str.equals(this.a.peek())) {
            this.a.pop();
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis() - l.longValue();
        synchronized (f1391e) {
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                jSONObject.put(com.umeng.analytics.pro.c.v, str);
                jSONObject.put("duration", jCurrentTimeMillis);
                jSONObject.put(com.umeng.analytics.pro.c.x, l);
                jSONObject.put(com.umeng.analytics.pro.c.y, a());
                f1390d.put(jSONObject);
                if (f1390d.length() >= 5 && (appContext = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(null)) != null) {
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(appContext, 4099, com.umeng.analytics.CoreProtocol.getInstance(appContext), null);
                }
            } catch (java.lang.Throwable unused) {
            }
        }
        if (!com.umeng.commonsdk.UMConfigure.isDebugLog() || this.a.size() == 0) {
            return;
        }
        com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.E, 0, "\\|", new java.lang.String[]{"@"}, new java.lang.String[]{str}, null, null);
    }
}
