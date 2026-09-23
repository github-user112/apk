package com.huawei.hms.framework.common.hianalytics;

/* loaded from: classes.dex */
public class CrashHianalyticsData extends com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData {
    public static final java.lang.String EXCEPTION_NAME = "exception_name";
    public static final java.lang.String MESSAGE = "message";
    public static final java.lang.String PROCESS_ID = "process_id";
    public static final java.lang.String STACK_TRACE = "stack_trace";
    public static final java.lang.String THREAD_ID = "thread_id";
    public static final java.lang.String THREAD_NAME = "thread_name";
    public static final java.lang.String TIME = "time";

    public CrashHianalyticsData() {
        put(com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData.SDK_NAME, "Restclient_Crash");
        put(TIME, "" + java.lang.System.currentTimeMillis());
        put(PROCESS_ID, "" + android.os.Process.myPid());
        put(THREAD_ID, "" + android.os.Process.myTid());
    }
}
