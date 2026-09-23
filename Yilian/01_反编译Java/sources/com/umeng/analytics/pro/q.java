package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class q {
    public static final int a = 0;
    public static final int b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f1376c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f1377d = 3;

    /* renamed from: e, reason: collision with root package name */
    public final long f1378e;

    public static class a {
        public static final com.umeng.analytics.pro.q a = new com.umeng.analytics.pro.q();
    }

    public q() {
        this.f1378e = 60000L;
    }

    public static com.umeng.analytics.pro.q a() {
        return com.umeng.analytics.pro.q.a.a;
    }

    private void a(org.json.JSONObject jSONObject, boolean z) {
        if (!z && jSONObject.has(com.umeng.analytics.pro.c.n)) {
            jSONObject.remove(com.umeng.analytics.pro.c.n);
        }
        if (jSONObject.has(com.umeng.analytics.pro.c.L)) {
            jSONObject.remove(com.umeng.analytics.pro.c.L);
        }
        if (jSONObject.has(com.umeng.analytics.pro.c.O)) {
            jSONObject.remove(com.umeng.analytics.pro.c.O);
        }
        if (jSONObject.has("ekv")) {
            jSONObject.remove("ekv");
        }
        if (jSONObject.has(com.umeng.analytics.pro.c.T)) {
            jSONObject.remove(com.umeng.analytics.pro.c.T);
        }
        if (jSONObject.has(com.umeng.analytics.pro.c.L)) {
            jSONObject.remove(com.umeng.analytics.pro.c.L);
        }
        if (jSONObject.has("userlevel")) {
            jSONObject.remove("userlevel");
        }
    }

    private org.json.JSONArray b() throws org.json.JSONException {
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        try {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("id", com.umeng.analytics.pro.x.a().a(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(null)));
            jSONObject.put(com.umeng.analytics.pro.c.p, jCurrentTimeMillis);
            jSONObject.put(com.umeng.analytics.pro.c.q, jCurrentTimeMillis + 60000);
            jSONObject.put("duration", 60000L);
            jSONArray.put(jSONObject);
        } catch (org.json.JSONException unused) {
        }
        return jSONArray;
    }

    private org.json.JSONArray c() throws org.json.JSONException {
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        try {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("id", com.umeng.analytics.pro.x.a().d(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(null)));
            jSONObject.put(com.umeng.analytics.pro.c.p, jCurrentTimeMillis);
            jSONArray.put(jSONObject);
        } catch (org.json.JSONException unused) {
        }
        return jSONArray;
    }

    public int a(android.content.Context context) {
        return java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, "defcon", java.lang.String.valueOf(0))).intValue();
    }

    public void a(org.json.JSONObject jSONObject, android.content.Context context) throws org.json.JSONException {
        int iA = a(context);
        if (iA == 1) {
            a(jSONObject, true);
        } else if (iA == 2) {
            jSONObject.remove(com.umeng.analytics.pro.c.n);
            try {
                jSONObject.put(com.umeng.analytics.pro.c.n, b());
            } catch (java.lang.Exception unused) {
            }
            a(jSONObject, true);
        } else if (iA != 3) {
            return;
        } else {
            a(jSONObject, false);
        }
        com.umeng.analytics.pro.h.a(context).b(false, true);
    }

    public void b(org.json.JSONObject jSONObject, android.content.Context context) throws org.json.JSONException {
        int iA = a(context);
        if (iA == 1) {
            if (jSONObject.has(com.umeng.analytics.pro.c.L)) {
                jSONObject.remove(com.umeng.analytics.pro.c.L);
            }
            if (jSONObject.has(com.umeng.analytics.pro.c.n)) {
                try {
                    org.json.JSONArray jSONArray = jSONObject.getJSONArray(com.umeng.analytics.pro.c.n);
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        org.json.JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        if (jSONObject2.has(com.umeng.analytics.pro.c.au)) {
                            jSONObject2.remove(com.umeng.analytics.pro.c.au);
                        }
                        if (jSONObject2.has(com.umeng.analytics.pro.c.av)) {
                            jSONObject2.remove(com.umeng.analytics.pro.c.av);
                        }
                    }
                } catch (org.json.JSONException | java.lang.Exception unused) {
                }
            }
        } else if (iA == 2) {
            if (jSONObject.has(com.umeng.analytics.pro.c.L)) {
                jSONObject.remove(com.umeng.analytics.pro.c.L);
            }
            if (jSONObject.has(com.umeng.analytics.pro.c.n)) {
                jSONObject.remove(com.umeng.analytics.pro.c.n);
            }
            jSONObject.put(com.umeng.analytics.pro.c.n, c());
        } else {
            if (iA != 3) {
                return;
            }
            if (jSONObject.has(com.umeng.analytics.pro.c.L)) {
                jSONObject.remove(com.umeng.analytics.pro.c.L);
            }
            jSONObject.remove(com.umeng.analytics.pro.c.n);
        }
        com.umeng.analytics.pro.h.a(context).a(false, true);
    }
}
