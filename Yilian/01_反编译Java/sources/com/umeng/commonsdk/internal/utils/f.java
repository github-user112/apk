package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class f {
    public static final java.lang.String a = "info";
    public static final java.lang.String b = "a_dc";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1485c = "bssid";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1486d = "ssid";

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String f1487e = "a_fcy";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1488f = "a_hssid";

    /* renamed from: g, reason: collision with root package name */
    public static final java.lang.String f1489g = "a_ip";
    public static final java.lang.String h = "a_ls";
    public static final java.lang.String i = "a_mac";
    public static final java.lang.String j = "a_nid";
    public static final java.lang.String k = "rssi";
    public static final java.lang.String l = "sta";
    public static final java.lang.String m = "ts";
    public static final java.lang.String n = "wifiinfo";
    public static final java.lang.String o = "ua";

    public static org.json.JSONArray a(android.content.Context context) {
        java.lang.String string;
        try {
            android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
            if (sharedPreferences == null || (string = sharedPreferences.getString(n, null)) == null) {
                return null;
            }
            return new org.json.JSONArray(string);
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.statistics.common.ULog.e(e2.getMessage());
            return null;
        }
    }

    public static void a(android.content.Context context, com.umeng.commonsdk.internal.utils.a.b bVar) {
        try {
            android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
            java.lang.String string = null;
            if (sharedPreferences != null) {
                java.lang.String string2 = sharedPreferences.getString(n, null);
                org.json.JSONArray jSONArray = string2 == null ? new org.json.JSONArray() : new org.json.JSONArray(string2);
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                jSONObject.put(b, bVar.a);
                jSONObject.put(f1485c, bVar.b);
                jSONObject.put(f1486d, bVar.f1469c);
                jSONObject.put(f1487e, bVar.f1470d);
                jSONObject.put(f1488f, bVar.f1471e);
                jSONObject.put(f1489g, bVar.f1472f);
                jSONObject.put(h, bVar.f1473g);
                jSONObject.put(i, bVar.h);
                jSONObject.put(j, bVar.i);
                jSONObject.put(k, bVar.j);
                jSONObject.put(l, bVar.k);
                jSONObject.put("ts", bVar.l);
                jSONArray.put(jSONObject);
                string = jSONArray.toString();
            }
            if (string != null) {
                sharedPreferences.edit().putString(n, string).commit();
            }
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.statistics.common.ULog.e(e2.getMessage());
        }
    }

    public static void a(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(o, str).commit();
        }
    }

    public static void b(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove(n).commit();
        }
    }

    public static java.lang.String c(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString(o, null);
        }
        return null;
    }
}
