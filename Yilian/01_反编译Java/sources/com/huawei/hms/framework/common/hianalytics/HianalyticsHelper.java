package com.huawei.hms.framework.common.hianalytics;

/* loaded from: classes.dex */
public class HianalyticsHelper {
    public static final java.lang.String EVENT_ID = "networkkit_restclient";
    public static final java.lang.String HWID_HA_SERVICE_TAG = "hms_hwid";
    public static final java.lang.String TAG = "HianalyticsHelper";
    public static final int TYPE_MAINTF = 1;
    public static final java.lang.String USER_EXPERIENCE_INVOLVED = "user_experience_involved";
    public static final int USER_EXPERIENCE_ON = 1;

    @android.annotation.SuppressLint({"StaticFieldLeak"})
    public static volatile com.huawei.hms.framework.common.hianalytics.HianalyticsHelper instance;
    public boolean hasHianalytics;
    public java.lang.String haTag = HWID_HA_SERVICE_TAG;
    public com.huawei.hianalytics.process.HiAnalyticsInstance hInstance = null;
    public java.util.concurrent.ExecutorService reportExecutor = com.huawei.hms.framework.common.ExecutorsUtils.newSingleThreadExecutor("report_ha");

    public HianalyticsHelper() {
        try {
            com.huawei.hianalytics.v2.HiAnalytics.getInitFlag();
            this.hasHianalytics = true;
        } catch (java.lang.Throwable unused) {
            com.huawei.hms.framework.common.Logger.w(TAG, "maybe you need add Hianalytics sdk");
            this.hasHianalytics = false;
        }
    }

    public static com.huawei.hms.framework.common.hianalytics.HianalyticsHelper getInstance() {
        if (instance == null) {
            synchronized (com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.class) {
                if (instance == null) {
                    instance = new com.huawei.hms.framework.common.hianalytics.HianalyticsHelper();
                }
            }
        }
        return instance;
    }

    public java.util.concurrent.ExecutorService getReportExecutor() {
        return this.reportExecutor;
    }

    public boolean isEnableReport(android.content.Context context) {
        if (this.hasHianalytics) {
            return isEnableReportNoSeed(context);
        }
        return false;
    }

    public boolean isEnableReportNoSeed(android.content.Context context) {
        java.lang.String str;
        if (!this.hasHianalytics) {
            str = "Hianalytics sdk need to be initialized";
        } else if (context == null) {
            str = "HianalyticsHelper context can't be null";
        } else {
            if (android.provider.Settings.Secure.getInt(context.getContentResolver(), USER_EXPERIENCE_INVOLVED, -1) == 1) {
                if (com.huawei.hianalytics.v2.HiAnalytics.getInitFlag()) {
                    return true;
                }
                if (this.hInstance == null) {
                    this.hInstance = com.huawei.hianalytics.process.HiAnalyticsManager.getInstanceByTag(this.haTag);
                }
                return this.hInstance != null;
            }
            str = "user experience involved needs to be opened";
        }
        com.huawei.hms.framework.common.Logger.i(TAG, str);
        return false;
    }

    public void onEvent(java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        onEvent(linkedHashMap, EVENT_ID);
    }

    public void onEvent(java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap, java.lang.String str) {
        if (this.hasHianalytics && linkedHashMap != null) {
            com.huawei.hms.framework.common.Logger.v(TAG, "data = %s", linkedHashMap);
            if (com.huawei.hianalytics.v2.HiAnalytics.getInitFlag()) {
                com.huawei.hianalytics.v2.HiAnalytics.onEvent(1, str, linkedHashMap);
                return;
            }
            com.huawei.hianalytics.process.HiAnalyticsInstance hiAnalyticsInstance = this.hInstance;
            if (hiAnalyticsInstance != null) {
                hiAnalyticsInstance.onEvent(1, str, linkedHashMap);
            }
        }
    }

    public void reportException(final java.lang.Throwable th, final java.lang.String str) {
        final java.lang.String name = java.lang.Thread.currentThread().getName();
        try {
            this.reportExecutor.submit(new java.lang.Runnable() { // from class: com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData crashHianalyticsData = new com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData();
                    crashHianalyticsData.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.THREAD_NAME, name);
                    crashHianalyticsData.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.EXCEPTION_NAME, th.getClass().getName());
                    crashHianalyticsData.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.MESSAGE, com.huawei.hms.framework.common.StringUtils.anonymizeMessage(th.getMessage()));
                    crashHianalyticsData.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.STACK_TRACE, com.huawei.hms.framework.common.StringUtils.getTraceInfo(th));
                    com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.getInstance().onEvent(crashHianalyticsData.get(), str);
                }
            });
        } catch (java.util.concurrent.RejectedExecutionException unused) {
            com.huawei.hms.framework.common.Logger.i(TAG, "reportException error RejectedExecutionException");
        } catch (java.lang.Exception unused2) {
            com.huawei.hms.framework.common.Logger.i(TAG, "reportException error!", th);
        }
    }

    public void setHaTag(java.lang.String str) {
        this.haTag = str;
    }
}
