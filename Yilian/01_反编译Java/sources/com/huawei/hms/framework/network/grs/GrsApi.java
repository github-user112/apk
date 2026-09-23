package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class GrsApi {
    public static final java.lang.String TAG = "GrsApi";
    public static com.huawei.hms.framework.network.grs.GrsClient grsClient;

    public static void ayncGetGrsUrl(java.lang.String str, java.lang.String str2, com.huawei.hms.framework.network.grs.IQueryUrlCallBack iQueryUrlCallBack) {
        if (iQueryUrlCallBack == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "IQueryUrlCallBack is must not null for process continue.");
            return;
        }
        com.huawei.hms.framework.network.grs.GrsClient grsClient2 = grsClient;
        if (grsClient2 == null || str == null || str2 == null) {
            iQueryUrlCallBack.onCallBackFail(-6);
        } else {
            grsClient2.ayncGetGrsUrl(str, str2, iQueryUrlCallBack);
        }
    }

    public static void ayncGetGrsUrls(java.lang.String str, com.huawei.hms.framework.network.grs.IQueryUrlsCallBack iQueryUrlsCallBack) {
        if (iQueryUrlsCallBack == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "IQueryUrlsCallBack is must not null for process continue.");
            return;
        }
        com.huawei.hms.framework.network.grs.GrsClient grsClient2 = grsClient;
        if (grsClient2 == null || str == null) {
            iQueryUrlsCallBack.onCallBackFail(-6);
        } else {
            grsClient2.ayncGetGrsUrls(str, iQueryUrlsCallBack);
        }
    }

    public static void clearSp() {
        com.huawei.hms.framework.network.grs.GrsClient grsClient2 = grsClient;
        if (grsClient2 == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "GrsApi.clearSp return because grsClient is null.");
        } else {
            grsClient2.clearSp();
        }
    }

    public static boolean forceExpire() {
        com.huawei.hms.framework.network.grs.GrsClient grsClient2 = grsClient;
        if (grsClient2 != null) {
            return grsClient2.forceExpire();
        }
        com.huawei.hms.framework.common.Logger.w(TAG, "GrsApi.forceExpire return false because grsClient is null.");
        return false;
    }

    @java.lang.Deprecated
    public static com.huawei.hms.framework.network.grs.local.model.CountryCodeBean getCountryCode(android.content.Context context, boolean z) {
        return com.huawei.hms.framework.network.grs.a.a(context, z);
    }

    public static int grsSdkInit(android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        grsClient = new com.huawei.hms.framework.network.grs.GrsClient(context, grsBaseInfo);
        return 0;
    }

    public static java.lang.String synGetGrsUrl(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.framework.network.grs.GrsClient grsClient2 = grsClient;
        if (grsClient2 != null && str != null && str2 != null) {
            return grsClient2.synGetGrsUrl(str, str2);
        }
        com.huawei.hms.framework.common.Logger.w(TAG, "GrsApi.synGetGrsUrl method maybe grsSdkInit has not completed and grsClient is null.");
        return null;
    }

    public static java.util.Map<java.lang.String, java.lang.String> synGetGrsUrls(java.lang.String str) {
        com.huawei.hms.framework.network.grs.GrsClient grsClient2 = grsClient;
        if (grsClient2 != null && str != null) {
            return grsClient2.synGetGrsUrls(str);
        }
        com.huawei.hms.framework.common.Logger.w(TAG, "GrsApi.synGetGrsUrls method maybe grsSdkInit has not completed and grsClient is null.");
        return new java.util.HashMap();
    }
}
