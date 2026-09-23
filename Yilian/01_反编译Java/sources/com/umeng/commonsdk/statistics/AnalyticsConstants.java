package com.umeng.commonsdk.statistics;

/* loaded from: classes.dex */
public class AnalyticsConstants {
    public static final java.lang.String CFG_FIELD_KEY = "cfgfd";
    public static boolean CHECK_DEVICE = true;
    public static final java.lang.String LOG_TAG = "MobclickAgent";
    public static final java.lang.String OS = "Android";
    public static final java.lang.String SDK_TYPE = "Android";
    public static boolean SUB_PROCESS_EVENT = false;
    public static final java.lang.String ZERO_RESPONSE_FLAG = "iscfg";
    public static int commonDeviceType = 1;
    public static java.lang.String[] APPLOG_URL_LIST = {com.umeng.commonsdk.statistics.UMServerURL.DEFAULT_URL, com.umeng.commonsdk.statistics.UMServerURL.SECONDARY_URL};
    public static final boolean UM_DEBUG = com.umeng.commonsdk.statistics.common.ULog.DEBUG;

    public static synchronized int getDeviceType() {
        return commonDeviceType;
    }

    public static void setDeviceType(int i) {
        commonDeviceType = i;
    }
}
