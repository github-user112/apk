package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Q {
    public static java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> a(android.content.Context context, java.lang.String str) {
        if (context == null) {
            return null;
        }
        java.util.Map<java.lang.String, ?> all = com.huawei.hms.scankit.p.C0131da.b(context, str).getAll();
        a(all);
        return b(all);
    }

    public static java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> a(android.content.Context context, java.lang.String str, java.lang.String str2) {
        java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> mapA;
        java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> mapA2;
        if ("alltype".equals(str2) || android.text.TextUtils.isEmpty(str)) {
            com.huawei.hms.scankit.p.T.b("EventManager", "read all event records");
            mapA = a(context, "stat_v2_1");
            mapA2 = a(context, "cached_v2_1");
        } else {
            java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0180n.a(str, str2);
            mapA = b(context, "stat_v2_1", strA);
            mapA2 = b(context, "cached_v2_1", strA);
        }
        return a(mapA, mapA2);
    }

    public static java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> a(java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> map, java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> map2) {
        if (map.size() == 0 && map2.size() == 0) {
            return new java.util.HashMap();
        }
        if (map.size() == 0) {
            return map2;
        }
        if (map2.size() == 0) {
            return map;
        }
        java.util.HashMap map3 = new java.util.HashMap();
        for (java.util.Map.Entry<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> entry : map.entrySet()) {
            java.lang.String key = entry.getKey();
            java.util.List<com.huawei.hms.scankit.p.J> value = entry.getValue();
            value.addAll(map2.get(key));
            map3.put(key, value);
        }
        return map3;
    }

    public static void a(java.lang.String str, java.lang.String str2, java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> map) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            if (android.text.TextUtils.isEmpty(str2)) {
                return;
            }
            org.json.JSONArray jSONArray = new org.json.JSONArray(str2);
            if (jSONArray.length() == 0) {
                return;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                com.huawei.hms.scankit.p.J j = new com.huawei.hms.scankit.p.J();
                try {
                    j.a(jSONArray.getJSONObject(i));
                    arrayList.add(j);
                } catch (org.json.JSONException unused) {
                    com.huawei.hms.scankit.p.T.c("EventManager", "JSON Exception happened when create data for report - readDataToRecord");
                }
            }
            map.put(str, arrayList);
        } catch (org.json.JSONException unused2) {
            com.huawei.hms.scankit.p.T.c("EventManager", "When events turn to JSONArray,JSON Exception has happened");
        }
    }

    public static void a(java.util.Map<java.lang.String, ?> map) {
        java.util.Iterator<java.util.Map.Entry<java.lang.String, ?>> it = map.entrySet().iterator();
        java.util.Set<java.lang.String> setA = com.huawei.hms.scankit.p.AbstractC0180n.a(com.huawei.hms.scankit.p.B.a().b());
        while (it.hasNext()) {
            if (!setA.contains(it.next().getKey())) {
                it.remove();
            }
        }
    }

    public static java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> b(android.content.Context context, java.lang.String str, java.lang.String str2) {
        java.lang.String strB = com.huawei.hms.scankit.p.C0131da.b(context, str, str2, "");
        java.util.HashMap map = new java.util.HashMap();
        a(str2, strB, map);
        return map;
    }

    public static java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> b(java.util.Map<java.lang.String, ?> map) {
        java.util.HashMap map2 = new java.util.HashMap();
        for (java.util.Map.Entry<java.lang.String, ?> entry : map.entrySet()) {
            java.lang.String key = entry.getKey();
            if (entry.getValue() instanceof java.lang.String) {
                a(key, (java.lang.String) entry.getValue(), map2);
            }
        }
        return map2;
    }
}
