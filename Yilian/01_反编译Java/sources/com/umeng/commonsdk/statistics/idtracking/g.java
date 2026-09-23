package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class g extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "mac";
    public android.content.Context b;

    public g(android.content.Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        try {
            return com.umeng.commonsdk.statistics.common.DeviceConfig.getMac(this.b);
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e2.printStackTrace();
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.b, e2);
            return null;
        }
    }
}
