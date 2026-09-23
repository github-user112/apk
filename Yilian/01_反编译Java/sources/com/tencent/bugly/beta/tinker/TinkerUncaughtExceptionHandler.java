package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerUncaughtExceptionHandler implements java.lang.Thread.UncaughtExceptionHandler {
    public static final java.lang.String DALVIK_XPOSED_CRASH = "Class ref in pre-verified class resolved to unexpected implementation";
    public static final int MAX_CRASH_COUNT = 3;
    public static final long QUICK_CRASH_ELAPSE = 10000;
    public static final java.lang.String TAG = "Tinker.TinkerUncaughtExceptionHandler";
    public final java.lang.Thread.UncaughtExceptionHandler ueh = java.lang.Thread.getDefaultUncaughtExceptionHandler();

    private boolean tinkerFastCrashProtect() {
        com.tencent.tinker.entry.ApplicationLike tinkerApplicationLike = com.tencent.bugly.beta.tinker.TinkerManager.getTinkerApplicationLike();
        if (tinkerApplicationLike != null && tinkerApplicationLike.getApplication() != null && com.tencent.tinker.lib.tinker.TinkerApplicationHelper.isTinkerLoadSuccess(tinkerApplicationLike) && android.os.SystemClock.elapsedRealtime() - tinkerApplicationLike.getApplicationStartElapsedTime() < 10000) {
            java.lang.String currentVersion = com.tencent.tinker.lib.tinker.TinkerApplicationHelper.getCurrentVersion(tinkerApplicationLike);
            if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(currentVersion)) {
                return false;
            }
            android.content.SharedPreferences sharedPreferences = tinkerApplicationLike.getApplication().getSharedPreferences(com.tencent.tinker.loader.shareutil.ShareConstants.TINKER_SHARE_PREFERENCE_CONFIG, 0);
            int i = sharedPreferences.getInt(currentVersion, 0) + 1;
            if (i >= 3) {
                com.tencent.bugly.beta.tinker.TinkerReport.onFastCrashProtect();
                com.tencent.tinker.lib.tinker.TinkerApplicationHelper.cleanPatch(tinkerApplicationLike);
                com.tencent.tinker.lib.util.TinkerLog.e(TAG, "tinker has fast crash more than %d, we just clean patch!", java.lang.Integer.valueOf(i));
                return true;
            }
            sharedPreferences.edit().putInt(currentVersion, i).apply();
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "tinker has fast crash %d times", java.lang.Integer.valueOf(i));
        }
        return false;
    }

    private void tinkerPreVerifiedCrashHandler(java.lang.Throwable th) {
        com.tencent.tinker.entry.ApplicationLike tinkerApplicationLike = com.tencent.bugly.beta.tinker.TinkerManager.getTinkerApplicationLike();
        if (tinkerApplicationLike == null || tinkerApplicationLike.getApplication() == null) {
            com.tencent.tinker.lib.util.TinkerLog.w(TAG, "applicationlike is null", new java.lang.Object[0]);
            return;
        }
        if (!com.tencent.tinker.lib.tinker.TinkerApplicationHelper.isTinkerLoadSuccess(tinkerApplicationLike)) {
            com.tencent.tinker.lib.util.TinkerLog.w(TAG, "tinker is not loaded", new java.lang.Object[0]);
            return;
        }
        boolean zIsXposedExists = false;
        while (th != null) {
            if (!zIsXposedExists) {
                zIsXposedExists = com.tencent.bugly.beta.tinker.TinkerUtils.isXposedExists(th);
            }
            if (zIsXposedExists) {
                if ((th instanceof java.lang.IllegalAccessError) && th.getMessage().contains(DALVIK_XPOSED_CRASH)) {
                    com.tencent.bugly.beta.tinker.TinkerReport.onXposedCrash();
                    com.tencent.tinker.lib.util.TinkerLog.e(TAG, "have xposed: just clean tinker", new java.lang.Object[0]);
                    com.tencent.tinker.loader.shareutil.ShareTinkerInternals.killAllOtherProcess(tinkerApplicationLike.getApplication());
                    com.tencent.tinker.lib.tinker.TinkerApplicationHelper.cleanPatch(tinkerApplicationLike);
                    com.tencent.tinker.loader.shareutil.ShareTinkerInternals.setTinkerDisableWithSharedPreferences(tinkerApplicationLike.getApplication());
                    return;
                }
            }
            th = th.getCause();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("uncaughtException:");
        sbO.append(th.getMessage());
        com.tencent.tinker.lib.util.TinkerLog.e(TAG, sbO.toString(), new java.lang.Object[0]);
        tinkerFastCrashProtect();
        tinkerPreVerifiedCrashHandler(th);
        this.ueh.uncaughtException(thread, th);
    }
}
