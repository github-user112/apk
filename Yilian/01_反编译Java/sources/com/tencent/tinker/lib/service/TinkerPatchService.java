package com.tencent.tinker.lib.service;

/* loaded from: classes.dex */
public class TinkerPatchService extends android.app.IntentService {
    public static final java.lang.String PATCH_PATH_EXTRA = "patch_path_extra";
    public static final java.lang.String PATCH_USE_EMERGENCY_MODE = "patch_use_emergency_mode";
    public static final java.lang.String RESULT_CLASS_EXTRA = "patch_result_class";
    public static final java.lang.String RUNNING_MARKER_FILE_RELPATH_PREFIX = "patch_service_status/running_";
    public static final java.lang.String TAG = "Tinker.TinkerPatchService";
    public static int notificationId = -1119860829;
    public static java.lang.Class<? extends com.tencent.tinker.lib.service.AbstractResultService> resultServiceClass;
    public static java.util.concurrent.atomic.AtomicBoolean sIsPatchApplying = new java.util.concurrent.atomic.AtomicBoolean(false);
    public static com.tencent.tinker.lib.patch.AbstractPatch upgradePatchProcessor;

    public static class InnerService extends android.app.Service {
        @Override // android.app.Service
        public android.os.IBinder onBind(android.content.Intent intent) {
            return null;
        }

        @Override // android.app.Service
        public void onCreate() {
            super.onCreate();
            try {
                startForeground(com.tencent.tinker.lib.service.TinkerPatchService.notificationId, new android.app.Notification());
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.lib.service.TinkerPatchService.TAG, "InnerService set service for push exception:%s.", th);
            }
            stopSelf();
        }

        @Override // android.app.Service
        public void onDestroy() {
            stopForeground(true);
            super.onDestroy();
        }
    }

    public TinkerPatchService() {
        super("TinkerPatchService");
        setIntentRedelivery(true);
    }

    public static void doApplyPatch(android.content.Context context, android.content.Intent intent) {
        boolean zTryPatch;
        if (!sIsPatchApplying.compareAndSet(false, true)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "TinkerPatchService doApplyPatch is running by another runner.", new java.lang.Object[0]);
            return;
        }
        try {
            markRunning(context);
            com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
            tinkerWith.getPatchReporter().onPatchServiceStart(intent);
            if (intent == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "TinkerPatchService received a null intent, ignoring.", new java.lang.Object[0]);
                return;
            }
            java.lang.String patchPathExtra = getPatchPathExtra(intent);
            if (patchPathExtra == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "TinkerPatchService can't get the path extra, ignoring.", new java.lang.Object[0]);
                return;
            }
            java.io.File file = new java.io.File(patchPathExtra);
            boolean patchUseEmergencyMode = getPatchUseEmergencyMode(intent);
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            java.lang.Throwable th = null;
            com.tencent.tinker.lib.service.PatchResult patchResult = new com.tencent.tinker.lib.service.PatchResult();
            try {
            } catch (java.lang.Throwable th2) {
                th = th2;
                tinkerWith.getPatchReporter().onPatchException(file, th);
                zTryPatch = false;
            }
            if (upgradePatchProcessor == null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("upgradePatchProcessor is null.");
            }
            zTryPatch = upgradePatchProcessor.tryPatch(context, patchPathExtra, patchUseEmergencyMode, patchResult);
            long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime() - jElapsedRealtime;
            tinkerWith.getPatchReporter().onPatchResult(file, zTryPatch, jElapsedRealtime2);
            patchResult.isSuccess = zTryPatch;
            patchResult.rawPatchFilePath = patchPathExtra;
            patchResult.useEmergencyMode = patchUseEmergencyMode;
            patchResult.totalCostTime = jElapsedRealtime2;
            patchResult.type = tinkerWith.getCustomPatcher() == null ? 0 : 1;
            patchResult.f1192e = th;
            unmarkRunning(context);
            sIsPatchApplying.set(false);
            com.tencent.tinker.lib.service.AbstractResultService.runResultService(context, patchResult, getPatchResultExtra(intent));
        } finally {
            unmarkRunning(context);
        }
    }

    public static java.lang.String getPatchPathExtra(android.content.Intent intent) {
        if (intent != null) {
            return com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, PATCH_PATH_EXTRA);
        }
        throw new com.tencent.tinker.loader.TinkerRuntimeException("getPatchPathExtra, but intent is null");
    }

    public static java.lang.String getPatchResultExtra(android.content.Intent intent) {
        if (intent != null) {
            return com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, RESULT_CLASS_EXTRA);
        }
        throw new com.tencent.tinker.loader.TinkerRuntimeException("getPatchResultExtra, but intent is null");
    }

    public static boolean getPatchUseEmergencyMode(android.content.Intent intent) {
        if (intent != null) {
            return com.tencent.tinker.loader.shareutil.ShareIntentUtil.getBooleanExtra(intent, PATCH_USE_EMERGENCY_MODE, false);
        }
        throw new com.tencent.tinker.loader.TinkerRuntimeException("getPatchUseEmergencyMode, but intent is null");
    }

    private void increasingPriority() {
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "for system version >= Android O, we just ignore increasingPriority job to avoid crash or toasts.", new java.lang.Object[0]);
            return;
        }
        if ("ZUK".equals(android.os.Build.MANUFACTURER)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "for ZUK device, we just ignore increasingPriority job to avoid crash.", new java.lang.Object[0]);
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "try to increase patch process priority", new java.lang.Object[0]);
        try {
            android.app.Notification notification = new android.app.Notification();
            if (android.os.Build.VERSION.SDK_INT < 18) {
                startForeground(notificationId, notification);
            } else {
                startForeground(notificationId, notification);
                startService(new android.content.Intent(this, (java.lang.Class<?>) com.tencent.tinker.lib.service.TinkerPatchService.InnerService.class));
            }
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "try to increase patch process priority error:" + th, new java.lang.Object[0]);
        }
    }

    public static boolean isRunning(android.content.Context context) {
        android.app.ActivityManager activityManager;
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int i;
        try {
            java.lang.String tinkerPatchServiceName = com.tencent.tinker.lib.util.TinkerServiceInternals.getTinkerPatchServiceName(context);
            if (tinkerPatchServiceName != null && (activityManager = (android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME)) != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() != 0) {
                java.util.Iterator<android.app.ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        i = 0;
                        break;
                    }
                    android.app.ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.processName.equals(tinkerPatchServiceName)) {
                        i = next.pid;
                        break;
                    }
                }
                if (i == 0) {
                    return false;
                }
                return new java.io.File(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context), RUNNING_MARKER_FILE_RELPATH_PREFIX + i).exists();
            }
        } catch (java.lang.Throwable unused) {
        }
        return false;
    }

    public static void markRunning(android.content.Context context) {
        java.io.File patchDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context);
        java.lang.StringBuilder sbO = e.a.c.a.a.o(RUNNING_MARKER_FILE_RELPATH_PREFIX);
        sbO.append(android.os.Process.myPid());
        java.io.File file = new java.io.File(patchDirectory, sbO.toString());
        if (file.exists()) {
            return;
        }
        java.io.File parentFile = file.getParentFile();
        if (parentFile.exists()) {
            java.io.File[] fileArrListFiles = parentFile.listFiles();
            if (fileArrListFiles != null) {
                for (java.io.File file2 : fileArrListFiles) {
                    file2.delete();
                }
            }
        } else {
            parentFile.mkdirs();
        }
        try {
            if (!file.createNewFile()) {
                throw new java.lang.IllegalStateException();
            }
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "Fail to create running marker file.", new java.lang.Object[0]);
        }
    }

    public static void runPatchService(android.content.Context context, java.lang.String str) {
        runPatchService(context, str, false);
    }

    public static void runPatchService(android.content.Context context, java.lang.String str, boolean z) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "run patch service...", new java.lang.Object[0]);
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) com.tencent.tinker.lib.service.TinkerPatchService.class);
        intent.putExtra(PATCH_PATH_EXTRA, str);
        intent.putExtra(PATCH_USE_EMERGENCY_MODE, z);
        intent.putExtra(RESULT_CLASS_EXTRA, resultServiceClass.getName());
        try {
            context.startService(intent);
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "run patch service fail, exception:" + th, new java.lang.Object[0]);
        }
    }

    public static void setPatchProcessor(com.tencent.tinker.lib.patch.AbstractPatch abstractPatch, java.lang.Class<? extends com.tencent.tinker.lib.service.AbstractResultService> cls) throws java.lang.ClassNotFoundException {
        upgradePatchProcessor = abstractPatch;
        resultServiceClass = cls;
        try {
            java.lang.Class.forName(cls.getName());
        } catch (java.lang.ClassNotFoundException e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, e2, "patch processor class not found.", new java.lang.Object[0]);
        }
    }

    public static void setTinkerNotificationId(int i) {
        notificationId = i;
    }

    public static void unmarkRunning(android.content.Context context) {
        java.io.File patchDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context);
        java.lang.StringBuilder sbO = e.a.c.a.a.o(RUNNING_MARKER_FILE_RELPATH_PREFIX);
        sbO.append(android.os.Process.myPid());
        java.io.File file = new java.io.File(patchDirectory, sbO.toString());
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // android.app.IntentService
    public void onHandleIntent(android.content.Intent intent) {
        increasingPriority();
        doApplyPatch(this, intent);
    }
}
