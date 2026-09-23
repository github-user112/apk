package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class GrsApp {
    public static com.huawei.hms.framework.network.grs.GrsApp instance = new com.huawei.hms.framework.network.grs.GrsApp();
    public java.lang.String appConfigName;

    public static com.huawei.hms.framework.network.grs.GrsApp getInstance() {
        return instance;
    }

    public java.lang.String getAppConfigName() {
        return this.appConfigName;
    }

    public java.lang.String getIssueCountryCode(android.content.Context context) {
        return com.huawei.hms.framework.network.grs.a.a(context, false).getCountryCode();
    }

    public void setAppConfigName(java.lang.String str) {
        this.appConfigName = str;
    }
}
