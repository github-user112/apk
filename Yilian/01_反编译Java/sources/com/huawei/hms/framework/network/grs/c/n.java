package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class n {
    public static java.lang.String a(java.lang.String str, java.lang.String str2) {
        return !str.equals(str2) ? b(str, str2) : str;
    }

    public static java.lang.String b(java.lang.String str, java.lang.String str2) throws org.json.JSONException {
        java.util.HashSet hashSet = new java.util.HashSet();
        if (!android.text.TextUtils.isEmpty(str)) {
            org.json.JSONArray jSONArray = new org.json.JSONObject(str).getJSONArray("services");
            for (int i = 0; i < jSONArray.length(); i++) {
                hashSet.add(jSONArray.getString(i));
            }
        }
        if (!android.text.TextUtils.isEmpty(str2)) {
            org.json.JSONArray jSONArray2 = new org.json.JSONObject(str2).getJSONArray("services");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                hashSet.add(jSONArray2.getString(i2));
            }
        }
        if (hashSet.isEmpty()) {
            return "";
        }
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        org.json.JSONArray jSONArray3 = new org.json.JSONArray();
        java.util.Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            jSONArray3.put((java.lang.String) it.next());
        }
        jSONObject.put("services", jSONArray3);
        return jSONObject.toString();
    }
}
