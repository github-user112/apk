package com.umeng.analytics;

/* loaded from: classes.dex */
public class CoreProtocol implements com.umeng.commonsdk.framework.UMLogDataProtocol, com.umeng.commonsdk.framework.UMSenderStateNotify {
    public static android.content.Context a;

    public static class a {
        public static final com.umeng.analytics.CoreProtocol a = new com.umeng.analytics.CoreProtocol();
    }

    public CoreProtocol() {
    }

    public static com.umeng.analytics.CoreProtocol getInstance(android.content.Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return com.umeng.analytics.CoreProtocol.a.a;
    }

    @Override // com.umeng.commonsdk.framework.UMSenderStateNotify
    public void onConnectionAvailable() {
        com.umeng.analytics.pro.n.a(a).a();
    }

    @Override // com.umeng.commonsdk.framework.UMSenderStateNotify
    public void onSenderIdle() {
        com.umeng.analytics.pro.n.a(a).b();
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(java.lang.Object obj) {
        com.umeng.analytics.pro.n.a(a).a(obj);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public org.json.JSONObject setupReportData(long j) {
        return com.umeng.analytics.pro.n.a(a).a(j);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(java.lang.Object obj, int i) {
        com.umeng.analytics.pro.n.a(a).a(obj, i);
    }
}
