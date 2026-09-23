package com.tencent.tinker.lib.util;

/* loaded from: classes.dex */
public class TinkerServiceInternals extends com.tencent.tinker.loader.shareutil.ShareTinkerInternals {
    public static final java.lang.String TAG = "Tinker.ServiceInternals";
    public static java.lang.String patchServiceProcessName;

    public static java.lang.String getServiceProcessName(android.content.Context context, java.lang.Class<? extends android.app.Service> cls) {
        try {
            return context.getPackageManager().getServiceInfo(new android.content.ComponentName(context, cls), 0).processName;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getTinkerPatchServiceName(android.content.Context context) {
        java.lang.String str = patchServiceProcessName;
        if (str != null) {
            return str;
        }
        java.lang.String serviceProcessName = getServiceProcessName(context, com.tencent.tinker.lib.service.TinkerPatchService.class);
        if (serviceProcessName == null) {
            return null;
        }
        patchServiceProcessName = serviceProcessName;
        return serviceProcessName;
    }

    public static boolean isInTinkerPatchServiceProcess(android.content.Context context) {
        java.lang.String processName = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getProcessName(context);
        java.lang.String tinkerPatchServiceName = getTinkerPatchServiceName(context);
        if (tinkerPatchServiceName == null || tinkerPatchServiceName.length() == 0) {
            return false;
        }
        return processName.equals(tinkerPatchServiceName);
    }

    public static boolean isTinkerPatchServiceRunning(android.content.Context context) {
        return com.tencent.tinker.lib.service.TinkerPatchService.isRunning(context);
    }

    public static void killTinkerPatchServiceProcess(android.content.Context context) {
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        java.lang.String tinkerPatchServiceName = getTinkerPatchServiceName(context);
        if (tinkerPatchServiceName == null || (runningAppProcesses = ((android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME)).getRunningAppProcesses()) == null) {
            return;
        }
        for (android.app.ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(tinkerPatchServiceName)) {
                android.os.Process.killProcess(runningAppProcessInfo.pid);
            }
        }
    }
}
