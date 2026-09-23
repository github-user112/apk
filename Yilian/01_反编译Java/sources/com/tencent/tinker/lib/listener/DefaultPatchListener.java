package com.tencent.tinker.lib.listener;

/* loaded from: classes.dex */
public class DefaultPatchListener implements com.tencent.tinker.lib.listener.PatchListener {
    public android.content.ServiceConnection connection;
    public final android.content.Context context;

    public DefaultPatchListener(android.content.Context context) {
        this.context = context;
    }

    private void runForgService() {
        try {
            this.connection = new android.content.ServiceConnection() { // from class: com.tencent.tinker.lib.listener.DefaultPatchListener.1
                @Override // android.content.ServiceConnection
                public void onBindingDied(android.content.ComponentName componentName) {
                }

                @Override // android.content.ServiceConnection
                public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(android.content.ComponentName componentName) {
                    com.tencent.tinker.lib.listener.DefaultPatchListener defaultPatchListener = com.tencent.tinker.lib.listener.DefaultPatchListener.this;
                    if (defaultPatchListener.context == null || defaultPatchListener.connection == null) {
                        return;
                    }
                    try {
                        com.tencent.tinker.lib.listener.DefaultPatchListener.this.context.unbindService(com.tencent.tinker.lib.listener.DefaultPatchListener.this.connection);
                    } catch (java.lang.Throwable unused) {
                    }
                }
            };
            this.context.bindService(new android.content.Intent(this.context, (java.lang.Class<?>) com.tencent.tinker.lib.service.TinkerPatchForeService.class), this.connection, 1);
        } catch (java.lang.Throwable unused) {
        }
    }

    public int checkPackageAndRunPatchService(java.lang.String str, boolean z) {
        int iPatchCheck = patchCheck(str, com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(new java.io.File(str)));
        if (iPatchCheck == 0) {
            runForgService();
            com.tencent.tinker.lib.service.TinkerPatchService.runPatchService(this.context, str, z);
        } else {
            com.tencent.tinker.lib.tinker.Tinker.with(this.context).getLoadReporter().onLoadPatchListenerReceiveFail(new java.io.File(str), iPatchCheck);
        }
        return iPatchCheck;
    }

    @Override // com.tencent.tinker.lib.listener.PatchListener
    public int onPatchReceived(java.lang.String str) {
        return checkPackageAndRunPatchService(str, false);
    }

    public int patchCheck(java.lang.String str, java.lang.String str2) {
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(this.context);
        if (!tinkerWith.isTinkerEnabled() || !com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnableWithSharedPreferences(this.context)) {
            return -1;
        }
        if (android.text.TextUtils.isEmpty(str2) || !com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(new java.io.File(str))) {
            return -2;
        }
        if (tinkerWith.isPatchProcess()) {
            return -4;
        }
        if (com.tencent.tinker.lib.util.TinkerServiceInternals.isTinkerPatchServiceRunning(this.context)) {
            return -3;
        }
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isVmJit()) {
            return -5;
        }
        com.tencent.tinker.lib.tinker.TinkerLoadResult tinkerLoadResultIfPresent = tinkerWith.getTinkerLoadResultIfPresent();
        if (!(tinkerWith.isMainProcess() && tinkerLoadResultIfPresent != null && tinkerLoadResultIfPresent.useInterpretMode)) {
            java.lang.String absolutePath = tinkerWith.getPatchDirectory().getAbsolutePath();
            try {
                com.tencent.tinker.loader.shareutil.SharePatchInfo andCheckPropertyWithLock = com.tencent.tinker.loader.shareutil.SharePatchInfo.readAndCheckPropertyWithLock(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoFile(absolutePath), com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoLockFile(absolutePath));
                if (andCheckPropertyWithLock != null && !com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(andCheckPropertyWithLock.newVersion) && !andCheckPropertyWithLock.newVersion.equals(andCheckPropertyWithLock.versionToRemove)) {
                    if (str2.equals(andCheckPropertyWithLock.newVersion)) {
                        return -6;
                    }
                }
            } catch (java.lang.Throwable unused) {
            }
        }
        return !com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchListenerCheck(str2) ? -7 : 0;
    }
}
