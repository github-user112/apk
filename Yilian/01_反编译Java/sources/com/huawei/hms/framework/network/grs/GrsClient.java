package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class GrsClient {
    public com.huawei.hms.framework.network.grs.d grsClientGlobal;

    public GrsClient(android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        if (context == null || grsBaseInfo == null) {
            throw new java.lang.NullPointerException("invalid init params for context is null or GrsBaseInfo instance is null Object.");
        }
        this.grsClientGlobal = com.huawei.hms.framework.network.grs.e.a(grsBaseInfo, context);
    }

    public void ayncGetGrsUrl(java.lang.String str, java.lang.String str2, com.huawei.hms.framework.network.grs.IQueryUrlCallBack iQueryUrlCallBack) {
        this.grsClientGlobal.a(str, str2, iQueryUrlCallBack);
    }

    public void ayncGetGrsUrls(java.lang.String str, com.huawei.hms.framework.network.grs.IQueryUrlsCallBack iQueryUrlsCallBack) {
        this.grsClientGlobal.a(str, iQueryUrlsCallBack);
    }

    public void clearSp() {
        this.grsClientGlobal.b();
    }

    public boolean forceExpire() {
        return this.grsClientGlobal.c();
    }

    public java.lang.String synGetGrsUrl(java.lang.String str, java.lang.String str2) {
        return this.grsClientGlobal.a(str, str2);
    }

    public java.util.Map<java.lang.String, java.lang.String> synGetGrsUrls(java.lang.String str) {
        return this.grsClientGlobal.a(str);
    }
}
