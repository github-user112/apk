package com.tencent.bugly.crashreport.crash.anr;

/* loaded from: classes.dex */
public class h {
    public static android.app.ActivityManager.ProcessErrorStateInfo a(android.app.ActivityManager activityManager, long j) throws java.lang.InterruptedException {
        if (activityManager == null) {
            com.tencent.bugly.proguard.aa.a("get anr state, ActivityManager is null", new java.lang.Object[0]);
            return null;
        }
        com.tencent.bugly.proguard.aa.a("get anr state, timeout:%d", java.lang.Long.valueOf(j));
        long j2 = j / 500;
        int i = 0;
        while (true) {
            android.app.ActivityManager.ProcessErrorStateInfo processErrorStateInfoA = a(activityManager.getProcessesInErrorState());
            if (processErrorStateInfoA == null) {
                com.tencent.bugly.proguard.aa.a("found proc state is null", new java.lang.Object[0]);
            } else {
                int i2 = processErrorStateInfoA.condition;
                if (i2 == 2) {
                    com.tencent.bugly.proguard.aa.a("found proc state is anr! proc:%s", processErrorStateInfoA.processName);
                    return processErrorStateInfoA;
                }
                if (i2 == 1) {
                    com.tencent.bugly.proguard.aa.a("found proc state is crashed!", new java.lang.Object[0]);
                    return null;
                }
            }
            int i3 = i + 1;
            if (i >= j2) {
                return a("Find process anr, but unable to get anr message.");
            }
            com.tencent.bugly.proguard.aa.a("try the %s times:", java.lang.Integer.valueOf(i3));
            com.tencent.bugly.proguard.ha.c(500L);
            i = i3;
        }
    }

    public static android.app.ActivityManager.ProcessErrorStateInfo a(java.lang.String str) {
        android.app.ActivityManager.ProcessErrorStateInfo processErrorStateInfo = new android.app.ActivityManager.ProcessErrorStateInfo();
        processErrorStateInfo.pid = android.os.Process.myPid();
        processErrorStateInfo.processName = com.tencent.bugly.crashreport.common.info.AppInfo.a(android.os.Process.myPid());
        processErrorStateInfo.shortMsg = str;
        return processErrorStateInfo;
    }

    public static android.app.ActivityManager.ProcessErrorStateInfo a(java.util.List<android.app.ActivityManager.ProcessErrorStateInfo> list) {
        if (list == null || list.isEmpty()) {
            com.tencent.bugly.proguard.aa.a("error state info list is null", new java.lang.Object[0]);
            return null;
        }
        int iMyPid = android.os.Process.myPid();
        for (android.app.ActivityManager.ProcessErrorStateInfo processErrorStateInfo : list) {
            if (processErrorStateInfo.pid == iMyPid) {
                if (android.text.TextUtils.isEmpty(processErrorStateInfo.longMsg)) {
                    return null;
                }
                com.tencent.bugly.proguard.aa.a("found current proc in the error state", new java.lang.Object[0]);
                return processErrorStateInfo;
            }
        }
        com.tencent.bugly.proguard.aa.a("current proc not in the error state", new java.lang.Object[0]);
        return null;
    }

    public static boolean a(android.app.ActivityManager activityManager) {
        return (com.tencent.bugly.crashreport.common.info.AppInfo.a(activityManager) || a(activityManager, 0L) == null) ? false : true;
    }

    public static boolean a(android.content.Context context) {
        boolean z = com.tencent.bugly.crashreport.common.info.d.d(context) || com.tencent.bugly.crashreport.common.info.d.e(context);
        com.tencent.bugly.proguard.aa.a("isAnrCrashDevice:%s", java.lang.Boolean.valueOf(z));
        return z;
    }
}
