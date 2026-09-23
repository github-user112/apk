package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class h {
    public static void a(java.util.ArrayList<com.huawei.hms.framework.network.grs.c.f> arrayList, long j, org.json.JSONArray jSONArray, android.content.Context context) {
        if (context == null || arrayList == null || arrayList.size() <= 0 || !com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.getInstance().isEnableReportNoSeed(context)) {
            return;
        }
        com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.getInstance().getReportExecutor().submit(new com.huawei.hms.framework.network.grs.c.g(j, context, arrayList, jSONArray));
    }

    public static java.util.LinkedHashMap<java.lang.String, java.lang.String> b(com.huawei.hms.framework.network.grs.c.f fVar) {
        com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack linkedHashMapPack = new com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack();
        java.lang.Exception excD = fVar.d();
        if (excD != null) {
            linkedHashMapPack.put("error_code", com.huawei.hms.framework.common.ExceptionCode.getErrorCodeFromException(excD));
            linkedHashMapPack.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.EXCEPTION_NAME, excD.getClass().getSimpleName());
            linkedHashMapPack.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.MESSAGE, com.huawei.hms.framework.common.StringUtils.anonymizeMessage(excD.getMessage()));
        } else {
            linkedHashMapPack.put("error_code", fVar.b());
            linkedHashMapPack.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.EXCEPTION_NAME, fVar.c());
        }
        try {
            linkedHashMapPack.put("domain", new java.net.URL(fVar.k()).getHost());
        } catch (java.net.MalformedURLException e2) {
            com.huawei.hms.framework.common.Logger.w("HaReportHelper", "report host MalformedURLException", e2);
        }
        linkedHashMapPack.put("req_start_time", fVar.g());
        linkedHashMapPack.put("req_end_time", fVar.f());
        linkedHashMapPack.put("req_total_time", fVar.h());
        return linkedHashMapPack.getAll();
    }
}
