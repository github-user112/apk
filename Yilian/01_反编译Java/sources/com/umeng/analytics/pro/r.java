package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class r {
    public static final java.lang.String a = "fs_lc_tl_uapp";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1379f = "-1";

    /* renamed from: g, reason: collision with root package name */
    public static android.content.Context f1380g;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1381c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1382d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1383e;
    public org.json.JSONObject h;

    public static class a {
        public static final com.umeng.analytics.pro.r a = new com.umeng.analytics.pro.r();
    }

    public r() {
        this.b = 128;
        this.f1381c = 256;
        this.f1382d = 1024;
        this.f1383e = 10;
        this.h = null;
        if (0 == 0) {
            try {
                b(f1380g);
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public static com.umeng.analytics.pro.r a(android.content.Context context) {
        if (f1380g == null && context != null) {
            f1380g = context.getApplicationContext();
        }
        return com.umeng.analytics.pro.r.a.a;
    }

    private org.json.JSONObject a(java.util.Map<java.lang.String, java.lang.Object> map) throws org.json.JSONException {
        org.json.JSONArray jSONArray;
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : map.entrySet()) {
                try {
                    java.lang.String key = entry.getKey();
                    if (key != null) {
                        java.lang.String strSubStr = com.umeng.commonsdk.statistics.common.HelperUtils.subStr(key, 128);
                        java.lang.Object value = entry.getValue();
                        if (value != null) {
                            int i = 0;
                            if (value.getClass().isArray()) {
                                if (value instanceof int[]) {
                                    int[] iArr = (int[]) value;
                                    jSONArray = new org.json.JSONArray();
                                    while (i < iArr.length) {
                                        jSONArray.put(iArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof double[]) {
                                    double[] dArr = (double[]) value;
                                    jSONArray = new org.json.JSONArray();
                                    while (i < dArr.length) {
                                        jSONArray.put(dArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof long[]) {
                                    long[] jArr = (long[]) value;
                                    jSONArray = new org.json.JSONArray();
                                    while (i < jArr.length) {
                                        jSONArray.put(jArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof float[]) {
                                    float[] fArr = (float[]) value;
                                    jSONArray = new org.json.JSONArray();
                                    while (i < fArr.length) {
                                        jSONArray.put(fArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof short[]) {
                                    short[] sArr = (short[]) value;
                                    jSONArray = new org.json.JSONArray();
                                    while (i < sArr.length) {
                                        jSONArray.put((int) sArr[i]);
                                        i++;
                                    }
                                }
                                jSONObject.put(strSubStr, jSONArray);
                            } else if (value instanceof java.util.List) {
                                java.util.List list = (java.util.List) value;
                                jSONArray = new org.json.JSONArray();
                                while (i < list.size()) {
                                    java.lang.Object obj = list.get(i);
                                    if ((obj instanceof java.lang.String) || (obj instanceof java.lang.Long) || (obj instanceof java.lang.Integer) || (obj instanceof java.lang.Float) || (obj instanceof java.lang.Double) || (obj instanceof java.lang.Short)) {
                                        jSONArray.put(list.get(i));
                                    }
                                    i++;
                                }
                                if (jSONArray.length() > 0) {
                                    jSONObject.put(strSubStr, jSONArray);
                                }
                            } else {
                                if (value instanceof java.lang.String) {
                                    value = com.umeng.commonsdk.statistics.common.HelperUtils.subStr(value.toString(), 256);
                                } else if (!(value instanceof java.lang.Long) && !(value instanceof java.lang.Integer) && !(value instanceof java.lang.Float) && !(value instanceof java.lang.Double) && !(value instanceof java.lang.Short)) {
                                    com.umeng.commonsdk.statistics.common.MLog.e("The param has not support type. please check !");
                                }
                                jSONObject.put(strSubStr, value);
                            }
                        }
                    }
                } catch (java.lang.Exception e2) {
                    com.umeng.commonsdk.statistics.common.MLog.e(e2);
                }
            }
        } catch (java.lang.Exception unused) {
        }
        return jSONObject;
    }

    private void a() throws org.json.JSONException {
        try {
            java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(f1380g, "track_list", "");
            if (android.text.TextUtils.isEmpty(strImprintProperty)) {
                return;
            }
            java.lang.String[] strArrSplit = strImprintProperty.split("!");
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            int i = 0;
            if (this.h != null) {
                for (java.lang.String str : strArrSplit) {
                    java.lang.String strSubStr = com.umeng.commonsdk.statistics.common.HelperUtils.subStr(str, 128);
                    if (this.h.has(strSubStr)) {
                        jSONObject.put(strSubStr, this.h.get(strSubStr));
                    }
                }
            }
            this.h = new org.json.JSONObject();
            if (strArrSplit.length >= 10) {
                while (i < 10) {
                    a(strArrSplit[i], jSONObject);
                    i++;
                }
            } else {
                while (i < strArrSplit.length) {
                    a(strArrSplit[i], jSONObject);
                    i++;
                }
            }
            c(f1380g);
        } catch (java.lang.Exception unused) {
        }
    }

    private void a(java.lang.String str, org.json.JSONObject jSONObject) throws org.json.JSONException {
        java.lang.String strSubStr = com.umeng.commonsdk.statistics.common.HelperUtils.subStr(str, 128);
        a(strSubStr, jSONObject.has(strSubStr) ? ((java.lang.Boolean) jSONObject.get(strSubStr)).booleanValue() : false);
    }

    private void a(java.lang.String str, boolean z) throws org.json.JSONException {
        try {
            if (com.umeng.analytics.pro.c.Y.equals(str) || com.umeng.analytics.pro.c.W.equals(str) || "id".equals(str) || "ts".equals(str) || this.h.has(str)) {
                return;
            }
            this.h.put(str, z);
        } catch (java.lang.Exception unused) {
        }
    }

    private boolean a(java.lang.String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length <= 128) {
                    return true;
                }
            } catch (java.lang.Exception unused) {
            }
        }
        com.umeng.commonsdk.statistics.common.MLog.e("key is " + str + ", please check key, illegal");
        return false;
    }

    private void b(android.content.Context context) {
        try {
            java.lang.String string = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).getString(a, null);
            if (!android.text.TextUtils.isEmpty(string)) {
                this.h = new org.json.JSONObject(string);
            }
            a();
        } catch (java.lang.Exception unused) {
        }
    }

    private boolean b(java.lang.String str) {
        if (str == null) {
            return true;
        }
        try {
            if (str.trim().getBytes().length <= 256) {
                return true;
            }
        } catch (java.lang.Exception unused) {
        }
        com.umeng.commonsdk.statistics.common.MLog.e("value is " + str + ", please check value, illegal");
        return false;
    }

    private boolean b(java.util.Map<java.lang.String, java.lang.Object> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : map.entrySet()) {
                        if (!a(entry.getKey())) {
                            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.h, 0, "\\|");
                            return false;
                        }
                        if (entry.getValue() == null) {
                            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.i, 0, "\\|");
                            return false;
                        }
                        if (entry.getValue() instanceof java.lang.String) {
                            if (com.umeng.analytics.pro.c.aE.equals(entry.getKey())) {
                                if (!c(entry.getValue().toString())) {
                                    com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.P, 0, "\\|");
                                    return false;
                                }
                            } else if ("_$!url".equals(entry.getKey())) {
                                if (!c(entry.getValue().toString())) {
                                    com.umeng.commonsdk.debug.UMLog.aq("url参数长度超过限制。|参数url长度不能超过1024字符。", 0, "\\|");
                                    return false;
                                }
                            } else if (!b(entry.getValue().toString())) {
                                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.j, 0, "\\|");
                                return false;
                            }
                        }
                    }
                    return true;
                }
            } catch (java.lang.Exception unused) {
                return true;
            }
        }
        com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.f1349g, 0, "\\|");
        return false;
    }

    private void c(android.content.Context context) {
        try {
            if (this.h != null) {
                com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(f1380g).edit().putString(a, this.h.toString()).commit();
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    private boolean c(java.lang.String str) {
        if (str == null) {
            return true;
        }
        try {
            return str.trim().getBytes().length <= 1024;
        } catch (java.lang.Exception unused) {
            return false;
        }
    }

    public void a(java.lang.String str, java.lang.String str2, long j, int i, java.lang.String str3) {
        try {
            if (a(str) && b(str2)) {
                if (java.util.Arrays.asList(com.umeng.analytics.pro.c.aG).contains(str)) {
                    com.umeng.commonsdk.statistics.common.MLog.e("key is " + str + ", please check key, illegal");
                    com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.m, 0, "\\|");
                    return;
                }
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", jCurrentTimeMillis);
                if (j > 0) {
                    jSONObject.put(com.umeng.analytics.pro.c.W, j);
                }
                jSONObject.put("__t", com.umeng.analytics.pro.h.a);
                if (!android.text.TextUtils.isEmpty(str2)) {
                    jSONObject.put(str, str2);
                }
                java.lang.String strD = com.umeng.commonsdk.utils.UMUtils.isMainProgress(f1380g) ? com.umeng.analytics.pro.x.a().d(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(f1380g)) : com.umeng.analytics.pro.x.a().a(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(f1380g), jCurrentTimeMillis);
                if (android.text.TextUtils.isEmpty(strD)) {
                    strD = "-1";
                }
                jSONObject.put("__i", strD);
                if (!android.text.TextUtils.isEmpty(str3)) {
                    try {
                        org.json.JSONObject jSONObject2 = new org.json.JSONObject(str3);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.c.au, jSONObject2);
                        }
                    } catch (org.json.JSONException unused) {
                    }
                }
                jSONObject.put("ds", 0);
                jSONObject.put("pn", com.umeng.commonsdk.service.UMGlobalContext.getInstance(f1380g).getProcessName(f1380g));
                a();
                if (this.h != null && this.h.has(str) && !((java.lang.Boolean) this.h.get(str)).booleanValue()) {
                    jSONObject.put(com.umeng.analytics.pro.c.Y, 1);
                    this.h.put(str, true);
                    c(f1380g);
                }
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(f1380g, 4097, com.umeng.analytics.CoreProtocol.getInstance(f1380g), jSONObject);
                return;
            }
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.l, 0, "\\|");
        } catch (java.lang.Throwable unused2) {
        }
    }

    public void a(java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map, long j, java.lang.String str2, boolean z) {
        android.content.Context context;
        int i;
        android.content.Context context2;
        org.json.JSONArray jSONArray;
        java.lang.String key;
        try {
            if (!a(str)) {
                com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.f1348f, 0, "\\|");
                return;
            }
            if (b(map)) {
                if (map.size() > 100) {
                    com.umeng.commonsdk.statistics.common.MLog.e("map size is " + map.size() + ", please check");
                    return;
                }
                if (java.util.Arrays.asList(com.umeng.analytics.pro.c.aG).contains(str)) {
                    com.umeng.commonsdk.statistics.common.MLog.e("key is " + str + ", please check key, illegal");
                    com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.b, 0, "\\|");
                    return;
                }
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", java.lang.System.currentTimeMillis());
                if (j > 0) {
                    jSONObject.put(com.umeng.analytics.pro.c.W, j);
                }
                jSONObject.put("__t", com.umeng.analytics.pro.h.a);
                com.umeng.commonsdk.statistics.common.ULog.i("befort ekv map, event is " + jSONObject.toString());
                for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : map.entrySet()) {
                    if (java.util.Arrays.asList(com.umeng.analytics.pro.c.aG).contains(entry.getKey())) {
                        com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.f1347e, 0, "\\|");
                        return;
                    }
                    java.lang.Object value = entry.getValue();
                    if ((value instanceof java.lang.String) || (value instanceof java.lang.Integer) || (value instanceof java.lang.Long) || (value instanceof java.lang.Short) || (value instanceof java.lang.Float) || (value instanceof java.lang.Double)) {
                        jSONObject.put(entry.getKey(), value);
                    } else {
                        if (!value.getClass().isArray()) {
                            com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, illegal type!");
                            return;
                        }
                        if (value instanceof int[]) {
                            int[] iArr = (int[]) value;
                            if (iArr.length > 10) {
                                com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, size overlength!");
                                return;
                            }
                            jSONArray = new org.json.JSONArray();
                            for (int i2 : iArr) {
                                jSONArray.put(i2);
                            }
                            key = entry.getKey();
                        } else if (value instanceof double[]) {
                            double[] dArr = (double[]) value;
                            if (dArr.length > 10) {
                                com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, size overlength!");
                                return;
                            }
                            jSONArray = new org.json.JSONArray();
                            for (double d2 : dArr) {
                                jSONArray.put(d2);
                            }
                            key = entry.getKey();
                        } else if (value instanceof long[]) {
                            long[] jArr = (long[]) value;
                            if (jArr.length > 10) {
                                com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, size overlength!");
                                return;
                            }
                            jSONArray = new org.json.JSONArray();
                            for (long j2 : jArr) {
                                jSONArray.put(j2);
                            }
                            key = entry.getKey();
                        } else if (value instanceof float[]) {
                            float[] fArr = (float[]) value;
                            if (fArr.length > 10) {
                                com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, size overlength!");
                                return;
                            }
                            jSONArray = new org.json.JSONArray();
                            for (float f2 : fArr) {
                                jSONArray.put(f2);
                            }
                            key = entry.getKey();
                        } else if (value instanceof short[]) {
                            short[] sArr = (short[]) value;
                            if (sArr.length > 10) {
                                com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, size overlength!");
                                return;
                            }
                            jSONArray = new org.json.JSONArray();
                            for (short s : sArr) {
                                jSONArray.put((int) s);
                            }
                            key = entry.getKey();
                        } else {
                            if (!(value instanceof java.lang.String[])) {
                                com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, illegal type!");
                                return;
                            }
                            java.lang.String[] strArr = (java.lang.String[]) value;
                            if (strArr.length > 10) {
                                com.umeng.commonsdk.statistics.common.MLog.e("please check key or value, size overlength!");
                                return;
                            }
                            jSONArray = new org.json.JSONArray();
                            for (int i3 = 0; i3 < strArr.length; i3++) {
                                if (strArr[i3] == null) {
                                    com.umeng.commonsdk.statistics.common.MLog.e("please check array, null item!");
                                    return;
                                } else {
                                    if (!b(strArr[i3])) {
                                        return;
                                    }
                                    jSONArray.put(strArr[i3]);
                                }
                            }
                            key = entry.getKey();
                        }
                        jSONObject.put(key, jSONArray);
                    }
                }
                java.lang.String strD = com.umeng.commonsdk.utils.UMUtils.isMainProgress(f1380g) ? com.umeng.analytics.pro.x.a().d(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(f1380g)) : com.umeng.analytics.pro.x.a().a(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(f1380g), jSONObject.getLong("ts"));
                if (android.text.TextUtils.isEmpty(strD)) {
                    strD = "-1";
                }
                jSONObject.put("__i", strD);
                if (!android.text.TextUtils.isEmpty(str2)) {
                    try {
                        org.json.JSONObject jSONObject2 = new org.json.JSONObject(str2);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.c.au, jSONObject2);
                        }
                    } catch (org.json.JSONException unused) {
                    }
                }
                jSONObject.put("ds", 0);
                jSONObject.put("pn", com.umeng.commonsdk.service.UMGlobalContext.getInstance(f1380g).getProcessName(f1380g));
                a();
                if (this.h != null && this.h.has(str) && !((java.lang.Boolean) this.h.get(str)).booleanValue()) {
                    jSONObject.put(com.umeng.analytics.pro.c.Y, 1);
                    this.h.put(str, true);
                    c(f1380g);
                }
                com.umeng.commonsdk.statistics.common.ULog.i("----->>>>>ekv event json is " + jSONObject.toString());
                if (z) {
                    context = f1380g;
                    i = com.umeng.analytics.pro.n.a.n;
                    context2 = f1380g;
                } else {
                    context = f1380g;
                    i = 4097;
                    context2 = f1380g;
                }
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, i, com.umeng.analytics.CoreProtocol.getInstance(context2), jSONObject);
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public void a(java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map, java.lang.String str2) {
        try {
            if (a(str)) {
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", java.lang.System.currentTimeMillis());
                jSONObject.put(com.umeng.analytics.pro.c.W, 0);
                jSONObject.put("__t", com.umeng.analytics.pro.h.b);
                com.umeng.commonsdk.statistics.common.ULog.i("befort gkv map, event is " + jSONObject.toString());
                java.util.Iterator<java.util.Map.Entry<java.lang.String, java.lang.Object>> it = map.entrySet().iterator();
                for (int i = 0; i < 10 && it.hasNext(); i++) {
                    java.util.Map.Entry<java.lang.String, java.lang.Object> next = it.next();
                    if (!com.umeng.analytics.pro.c.Y.equals(next.getKey()) && !com.umeng.analytics.pro.c.W.equals(next.getKey()) && !"id".equals(next.getKey()) && !"ts".equals(next.getKey())) {
                        java.lang.Object value = next.getValue();
                        if ((value instanceof java.lang.String) || (value instanceof java.lang.Integer) || (value instanceof java.lang.Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                java.lang.String strD = com.umeng.analytics.pro.x.a().d(com.umeng.commonsdk.service.UMGlobalContext.getAppContext(f1380g));
                if (android.text.TextUtils.isEmpty(strD)) {
                    strD = "-1";
                }
                jSONObject.put("__i", strD);
                if (!android.text.TextUtils.isEmpty(str2)) {
                    try {
                        org.json.JSONObject jSONObject2 = new org.json.JSONObject(str2);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.c.au, jSONObject2);
                        }
                    } catch (org.json.JSONException unused) {
                    }
                }
                jSONObject.put("ds", 0);
                jSONObject.put("pn", com.umeng.commonsdk.service.UMGlobalContext.getInstance(f1380g).getProcessName(f1380g));
                com.umeng.commonsdk.statistics.common.ULog.i("----->>>>>gkv event json is " + jSONObject.toString());
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(f1380g, 4098, com.umeng.analytics.CoreProtocol.getInstance(f1380g), jSONObject);
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public void a(java.util.List<java.lang.String> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    a();
                    if (this.h == null) {
                        this.h = new org.json.JSONObject();
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            if (this.h == null) {
                                this.h = new org.json.JSONObject();
                            } else if (this.h.length() >= 5) {
                                break;
                            }
                            java.lang.String str = list.get(i);
                            if (!android.text.TextUtils.isEmpty(str)) {
                                a(com.umeng.commonsdk.statistics.common.HelperUtils.subStr(str, 128), false);
                            }
                        }
                    } else {
                        if (this.h.length() >= 5) {
                            com.umeng.commonsdk.statistics.common.MLog.d("already setFistLaunchEvent, igone.");
                            return;
                        }
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            if (this.h.length() >= 5) {
                                com.umeng.commonsdk.statistics.common.MLog.d(" add setFistLaunchEvent over.");
                                return;
                            }
                            a(com.umeng.commonsdk.statistics.common.HelperUtils.subStr(list.get(i2), 128), false);
                        }
                    }
                    c(f1380g);
                    return;
                }
            } catch (java.lang.Exception unused) {
                return;
            }
        }
        com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.ak, 0, "\\|");
    }
}
