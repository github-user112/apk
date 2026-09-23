package com.umeng.commonsdk.utils;

/* loaded from: classes.dex */
public class JSONArraySortUtil implements java.util.Comparator<org.json.JSONObject> {
    public java.lang.String mCompareKey;

    @Override // java.util.Comparator
    public int compare(org.json.JSONObject jSONObject, org.json.JSONObject jSONObject2) {
        try {
            return (int) (jSONObject.getLong(this.mCompareKey) - jSONObject2.getLong(this.mCompareKey));
        } catch (org.json.JSONException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public void setCompareKey(java.lang.String str) {
        this.mCompareKey = str;
    }
}
