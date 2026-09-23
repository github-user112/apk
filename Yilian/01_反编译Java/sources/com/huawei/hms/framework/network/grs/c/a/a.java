package com.huawei.hms.framework.network.grs.c.a;

/* loaded from: classes.dex */
public class a {
    public static final java.lang.String a = "a";
    public static com.huawei.hms.framework.network.grs.c.b.d b;

    public static synchronized com.huawei.hms.framework.network.grs.c.b.d a(android.content.Context context) {
        com.huawei.hms.framework.network.grs.c.b.d dVar = b;
        if (dVar != null) {
            return dVar;
        }
        java.lang.String strA = com.huawei.hms.framework.network.grs.d.c.a("grs_sdk_server_config.json", context);
        java.util.ArrayList arrayList = null;
        if (android.text.TextUtils.isEmpty(strA)) {
            return null;
        }
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(strA).getJSONObject("grs_server");
            org.json.JSONArray jSONArray = jSONObject.getJSONArray("grs_base_url");
            if (jSONArray != null && jSONArray.length() > 0) {
                arrayList = new java.util.ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.get(i).toString());
                }
            }
            com.huawei.hms.framework.network.grs.c.b.d dVar2 = new com.huawei.hms.framework.network.grs.c.b.d();
            b = dVar2;
            dVar2.a(arrayList);
            b.b(jSONObject.getString("grs_query_endpoint_1.0"));
            b.a(jSONObject.getString("grs_query_endpoint_2.0"));
            b.a(jSONObject.getInt("grs_query_timeout"));
        } catch (org.json.JSONException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "getGrsServerBean catch JSONException", e2);
        }
        return b;
    }
}
