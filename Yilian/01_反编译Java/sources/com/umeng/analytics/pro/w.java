package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class w implements com.umeng.analytics.pro.v {
    public long a = com.umeng.analytics.AnalyticsConfig.kContinueSessionMillis;

    @Override // com.umeng.analytics.pro.v
    public long a() {
        return this.a;
    }

    @Override // com.umeng.analytics.pro.v
    public java.lang.String a(android.content.Context context) {
        java.lang.String appkey = com.umeng.commonsdk.utils.UMUtils.getAppkey(context);
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        if (appkey == null) {
            throw new java.lang.RuntimeException("Appkey is null or empty, Please check!");
        }
        return com.umeng.commonsdk.utils.UMUtils.MD5(jCurrentTimeMillis + appkey + com.umeng.commonsdk.statistics.idtracking.Envelope.dummyID2);
    }

    @Override // com.umeng.analytics.pro.v
    public void a(long j) {
        this.a = j;
    }

    @Override // com.umeng.analytics.pro.v
    public void a(android.content.Context context, java.lang.String str) {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        try {
            android.content.SharedPreferences.Editor editorEdit = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).edit();
            editorEdit.putString("session_id", str);
            editorEdit.putLong(com.umeng.analytics.pro.t.b, 0L);
            editorEdit.putLong(com.umeng.analytics.pro.t.f1386e, jCurrentTimeMillis);
            editorEdit.putLong(com.umeng.analytics.pro.t.f1387f, 0L);
            editorEdit.commit();
        } catch (java.lang.Exception unused) {
        }
    }

    @Override // com.umeng.analytics.pro.v
    public boolean a(long j, long j2) {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        return (j == 0 || jCurrentTimeMillis - j >= this.a) && j2 > 0 && jCurrentTimeMillis - j2 > this.a;
    }
}
