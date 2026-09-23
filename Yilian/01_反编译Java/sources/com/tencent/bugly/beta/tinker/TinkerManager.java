package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerManager {
    public static final java.lang.String MF_FILE = "YAPATCH.MF";
    public static final java.lang.String PATCH_DIR = "dex";
    public static final java.lang.String PATCH_NAME = "patch.apk";
    public static final java.lang.String TAG = "Tinker.TinkerManager";
    public static boolean isInstalled = false;
    public static com.tencent.bugly.beta.tinker.TinkerManager.TinkerPatchResultListener patchResultListener;
    public static java.lang.Thread.UncaughtExceptionHandler systemExceptionHandler;
    public static com.tencent.bugly.beta.tinker.TinkerReport tinkerReport;
    public static com.tencent.bugly.beta.tinker.TinkerUncaughtExceptionHandler uncaughtExceptionHandler;
    public static com.tencent.tinker.lib.reporter.LoadReporter userLoadReporter;
    public static com.tencent.tinker.lib.listener.PatchListener userPatchListener;
    public static com.tencent.tinker.lib.reporter.PatchReporter userPatchReporter;
    public static com.tencent.tinker.lib.patch.AbstractPatch userUpgradePatchProcessor;
    public android.app.Application application;
    public com.tencent.tinker.entry.ApplicationLike applicationLike;
    public com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener tinkerListener;
    public static com.tencent.bugly.beta.tinker.TinkerManager tinkerManager = new com.tencent.bugly.beta.tinker.TinkerManager();
    public static java.lang.String apkOriginalBuildNum = "";
    public static java.lang.String patchCurBuildNum = "";
    public static boolean patchRestartOnScreenOff = true;

    public interface TinkerListener {
        void onApplyFailure(java.lang.String str);

        void onApplySuccess(java.lang.String str);

        void onDownloadFailure(java.lang.String str);

        void onDownloadSuccess(java.lang.String str);

        void onPatchRollback();

        void onPatchStart();
    }

    public interface TinkerPatchResultListener {
        void onPatchResult(com.tencent.tinker.lib.service.PatchResult patchResult);
    }

    public class a implements com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b {
        public a(com.tencent.bugly.beta.tinker.TinkerManager tinkerManager) {
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b
        public void a() {
            com.tencent.bugly.beta.tinker.TinkerUtils.rollbackPatch(com.tencent.bugly.beta.tinker.TinkerManager.getApplication());
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.tencent.bugly.beta.tinker.TinkerManager.this.tinkerListener != null) {
                com.tencent.bugly.beta.tinker.TinkerManager.this.tinkerListener.onPatchRollback();
            }
        }
    }

    public static android.app.Application getApplication() {
        return getInstance().application;
    }

    public static com.tencent.bugly.beta.tinker.TinkerManager getInstance() {
        return tinkerManager;
    }

    public static java.lang.String getNewTinkerId() {
        java.util.HashMap<java.lang.String, java.lang.String> packageConfigs = com.tencent.tinker.lib.tinker.TinkerApplicationHelper.getPackageConfigs(getTinkerApplicationLike());
        return packageConfigs != null ? java.lang.String.valueOf(packageConfigs.get(com.tencent.tinker.loader.shareutil.ShareConstants.NEW_TINKER_ID)).replace("tinker_id_", "") : "";
    }

    public static com.tencent.tinker.entry.ApplicationLike getTinkerApplicationLike() {
        return getInstance().applicationLike;
    }

    public static java.lang.String getTinkerId() {
        if (com.tencent.tinker.lib.tinker.Tinker.with(getApplication()).isTinkerLoaded()) {
            java.util.HashMap<java.lang.String, java.lang.String> packageConfigs = com.tencent.tinker.lib.tinker.TinkerApplicationHelper.getPackageConfigs(getTinkerApplicationLike());
            return packageConfigs != null ? java.lang.String.valueOf(packageConfigs.get(com.tencent.tinker.loader.shareutil.ShareConstants.TINKER_ID)).replace("tinker_id_", "") : "";
        }
        java.lang.String manifestTinkerID = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getManifestTinkerID(getApplication());
        return !android.text.TextUtils.isEmpty(manifestTinkerID) ? manifestTinkerID.replace("tinker_id_", "") : "";
    }

    public static void installDefaultTinker(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (isInstalled) {
            com.tencent.tinker.lib.util.TinkerLog.w(TAG, "install tinker, but has installed, ignore", new java.lang.Object[0]);
            return;
        }
        if (applicationLike == null) {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "Tinker ApplicationLike is null", new java.lang.Object[0]);
            return;
        }
        getInstance().setTinkerApplicationLike(applicationLike);
        registJavaCrashHandler();
        setUpgradeRetryEnable(true);
        tinkerReport = new com.tencent.bugly.beta.tinker.TinkerReport();
        com.tencent.tinker.lib.util.TinkerLog.setTinkerLogImp(new com.tencent.bugly.beta.tinker.TinkerLogger());
        if (com.tencent.tinker.lib.tinker.TinkerInstaller.install(applicationLike, new com.tencent.bugly.beta.tinker.TinkerLoadReporter(applicationLike.getApplication()), new com.tencent.bugly.beta.tinker.TinkerPatchReporter(applicationLike.getApplication()), new com.tencent.bugly.beta.tinker.TinkerPatchListener(applicationLike.getApplication()), com.tencent.bugly.beta.tinker.TinkerResultService.class, new com.tencent.tinker.lib.patch.UpgradePatch()) != null) {
            isInstalled = true;
        }
    }

    public static void installTinker(java.lang.Object obj) {
        if (obj == null) {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "Tinker ApplicationLike is null", new java.lang.Object[0]);
        } else if (obj instanceof com.tencent.tinker.entry.ApplicationLike) {
            installDefaultTinker((com.tencent.tinker.entry.ApplicationLike) obj);
        } else {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "NOT tinker ApplicationLike object", new java.lang.Object[0]);
        }
    }

    public static void installTinker(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, java.lang.Object obj4, com.tencent.bugly.beta.tinker.TinkerManager.TinkerPatchResultListener tinkerPatchResultListener, java.lang.Object obj5) {
        if (obj2 != null) {
            if (!(obj2 instanceof com.tencent.tinker.lib.reporter.LoadReporter)) {
                com.tencent.tinker.lib.util.TinkerLog.e(TAG, "NOT LoadReporter object", new java.lang.Object[0]);
                return;
            }
            userLoadReporter = (com.tencent.tinker.lib.reporter.LoadReporter) obj2;
        }
        if (obj3 != null) {
            if (!(obj3 instanceof com.tencent.tinker.lib.reporter.PatchReporter)) {
                com.tencent.tinker.lib.util.TinkerLog.e(TAG, "NOT PatchReporter object", new java.lang.Object[0]);
                return;
            }
            userPatchReporter = (com.tencent.tinker.lib.reporter.PatchReporter) obj3;
        }
        if (obj4 != null) {
            if (!(obj4 instanceof com.tencent.tinker.lib.listener.PatchListener)) {
                com.tencent.tinker.lib.util.TinkerLog.e(TAG, "NOT PatchListener object", new java.lang.Object[0]);
                return;
            }
            userPatchListener = (com.tencent.tinker.lib.listener.PatchListener) obj4;
        }
        if (tinkerPatchResultListener != null) {
            patchResultListener = tinkerPatchResultListener;
        }
        if (obj5 != null) {
            if (!(obj5 instanceof com.tencent.tinker.lib.patch.AbstractPatch)) {
                com.tencent.tinker.lib.util.TinkerLog.e(TAG, "NOT AbstractPatch object", new java.lang.Object[0]);
                return;
            }
            userUpgradePatchProcessor = (com.tencent.tinker.lib.patch.AbstractPatch) obj5;
        }
        installTinker(obj);
    }

    public static boolean isPatchRestartOnScreenOff() {
        return patchRestartOnScreenOff;
    }

    public static boolean isTinkerManagerInstalled() {
        return isInstalled;
    }

    public static void loadArmLibrary(android.content.Context context, java.lang.String str) {
        com.tencent.tinker.lib.library.TinkerLoadLibrary.loadArmLibrary(context, str);
    }

    public static void loadArmV7Library(android.content.Context context, java.lang.String str) {
        com.tencent.tinker.lib.library.TinkerLoadLibrary.loadArmV7Library(context, str);
    }

    public static boolean loadLibraryFromTinker(android.content.Context context, java.lang.String str, java.lang.String str2) {
        return com.tencent.tinker.lib.library.TinkerLoadLibrary.loadLibraryFromTinker(context, str, str2);
    }

    public static void registJavaCrashHandler() {
        if (uncaughtExceptionHandler == null) {
            systemExceptionHandler = java.lang.Thread.getDefaultUncaughtExceptionHandler();
            com.tencent.bugly.beta.tinker.TinkerUncaughtExceptionHandler tinkerUncaughtExceptionHandler = new com.tencent.bugly.beta.tinker.TinkerUncaughtExceptionHandler();
            uncaughtExceptionHandler = tinkerUncaughtExceptionHandler;
            java.lang.Thread.setDefaultUncaughtExceptionHandler(tinkerUncaughtExceptionHandler);
        }
    }

    public static void setPatchRestartOnScreenOff(boolean z) {
        patchRestartOnScreenOff = z;
    }

    private void setTinkerApplicationLike(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        this.applicationLike = applicationLike;
        if (applicationLike != null) {
            this.application = applicationLike.getApplication();
        }
    }

    public static void setUpgradeRetryEnable(boolean z) {
        com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(getTinkerApplicationLike().getApplication()).setRetryEnable(z);
    }

    public static void unregistJavaCrashHandler() {
        java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = systemExceptionHandler;
        if (uncaughtExceptionHandler2 != null) {
            java.lang.Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler2);
        }
    }

    public void applyPatch(android.content.Context context, java.lang.String str) {
        if (!isInstalled) {
            com.tencent.tinker.lib.util.TinkerLog.w(TAG, "Tinker has not been installed.", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener tinkerListener = this.tinkerListener;
        if (tinkerListener != null) {
            tinkerListener.onPatchStart();
        }
        com.tencent.tinker.lib.tinker.TinkerInstaller.onReceiveUpgradePatch(context, str);
    }

    public void applyPatch(java.lang.String str, boolean z) {
        try {
            java.io.File file = new java.io.File(this.applicationLike.getApplication().getDir("dex", 0).getAbsolutePath(), "patch.apk");
            java.io.File file2 = null;
            if (checkNewPatch(str)) {
                com.tencent.tinker.lib.util.TinkerLog.d(TAG, "has new patch.", new java.lang.Object[0]);
                file2 = new java.io.File(str);
                com.tencent.bugly.beta.tinker.TinkerUtils.copy(file2, file);
            }
            if (!file.exists()) {
                com.tencent.tinker.lib.util.TinkerLog.d(TAG, "patch not exist, just return.", new java.lang.Object[0]);
            } else {
                if (file2 == null || !z) {
                    return;
                }
                com.tencent.tinker.lib.util.TinkerLog.d(TAG, "starting patch.", new java.lang.Object[0]);
                applyPatch(this.applicationLike.getApplication(), file2.getAbsolutePath());
            }
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, e2.getMessage(), new java.lang.Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkNewPatch(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "To"
            java.lang.String r1 = "From"
            r2 = 0
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.String r4 = "Tinker.TinkerManager"
            java.lang.String r5 = "check if has new patch."
            com.tencent.tinker.lib.util.TinkerLog.d(r4, r5, r3)
            java.lang.String r3 = getTinkerId()
            com.tencent.bugly.beta.tinker.TinkerManager.apkOriginalBuildNum = r3
            java.lang.String r3 = getNewTinkerId()
            com.tencent.bugly.beta.tinker.TinkerManager.patchCurBuildNum = r3
            boolean r3 = android.text.TextUtils.isEmpty(r7)
            r5 = 1
            if (r3 == 0) goto L23
            r7 = 0
            goto L2f
        L23:
            java.io.File r3 = new java.io.File
            r3.<init>(r7)
            boolean r7 = r3.exists()
            if (r7 != 0) goto L32
            r7 = r3
        L2f:
            r3 = r7
            r7 = 0
            goto L33
        L32:
            r7 = 1
        L33:
            if (r7 == 0) goto L90
            java.lang.String r7 = "YAPATCH.MF"
            byte[] r7 = com.tencent.bugly.beta.tinker.TinkerUtils.readJarEntry(r3, r7)
            if (r7 != 0) goto L3e
            return r2
        L3e:
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream
            r3.<init>(r7)
            java.util.Properties r7 = new java.util.Properties     // Catch: java.lang.Exception -> L88
            r7.<init>()     // Catch: java.lang.Exception -> L88
            r7.load(r3)     // Catch: java.lang.Exception -> L88
            java.lang.String r3 = r7.getProperty(r1)     // Catch: java.lang.Exception -> L88
            if (r3 == 0) goto L80
            java.lang.String r3 = r7.getProperty(r0)     // Catch: java.lang.Exception -> L88
            if (r3 != 0) goto L58
            goto L80
        L58:
            java.lang.String r3 = com.tencent.bugly.beta.tinker.TinkerManager.apkOriginalBuildNum     // Catch: java.lang.Exception -> L88
            if (r3 != 0) goto L64
            java.lang.String r7 = "patchCurBuildNum is null"
            java.lang.Object[] r0 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L88
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r7, r0)     // Catch: java.lang.Exception -> L88
            return r2
        L64:
            java.lang.String r3 = com.tencent.bugly.beta.tinker.TinkerManager.apkOriginalBuildNum     // Catch: java.lang.Exception -> L88
            java.lang.String r1 = r7.getProperty(r1)     // Catch: java.lang.Exception -> L88
            boolean r1 = r3.equalsIgnoreCase(r1)     // Catch: java.lang.Exception -> L88
            if (r1 == 0) goto L78
            java.lang.String r7 = r7.getProperty(r0)     // Catch: java.lang.Exception -> L88
            com.tencent.bugly.beta.tinker.TinkerManager.patchCurBuildNum = r7     // Catch: java.lang.Exception -> L88
            r2 = 1
            goto L91
        L78:
            java.lang.String r7 = "orign buildno invalid"
            java.lang.Object[] r0 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L88
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r7, r0)     // Catch: java.lang.Exception -> L88
            goto L91
        L80:
            java.lang.String r7 = "From/To is null"
            java.lang.Object[] r0 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L88
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r7, r0)     // Catch: java.lang.Exception -> L88
            return r2
        L88:
            java.lang.Object[] r7 = new java.lang.Object[r2]
            java.lang.String r0 = "get properties failed"
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r0, r7)
            goto L91
        L90:
            r2 = r7
        L91:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.tinker.TinkerManager.checkNewPatch(java.lang.String):boolean");
    }

    public void cleanPatch(boolean z) {
        onPatchRollback(z);
    }

    public java.io.File getPatchDirectory(android.content.Context context) {
        return com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context);
    }

    public com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener getTinkerListener() {
        return this.tinkerListener;
    }

    public void onApplyFailure(java.lang.String str) {
        com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener tinkerListener = this.tinkerListener;
        if (tinkerListener != null) {
            tinkerListener.onApplyFailure(str);
        }
    }

    public void onApplySuccess(java.lang.String str) {
        com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener tinkerListener = this.tinkerListener;
        if (tinkerListener != null) {
            tinkerListener.onApplySuccess(str);
        }
    }

    public void onDownloadFailure(java.lang.String str) {
        com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener tinkerListener = this.tinkerListener;
        if (tinkerListener != null) {
            tinkerListener.onDownloadFailure(str);
        }
    }

    public void onDownloadSuccess(java.lang.String str, boolean z) {
        try {
            com.tencent.tinker.lib.util.TinkerLog.d(TAG, "onDownloadSuccess.", new java.lang.Object[0]);
            if (this.tinkerListener != null) {
                this.tinkerListener.onDownloadSuccess(str);
            }
            applyPatch(str, z);
        } catch (java.lang.Exception unused) {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "apply patch failed", new java.lang.Object[0]);
        }
    }

    public void onPatchRollback(boolean z) {
        if (!com.tencent.tinker.lib.tinker.Tinker.with(getApplication()).isTinkerLoaded()) {
            com.tencent.tinker.lib.util.TinkerLog.w("Tinker.PatchRequestCallback", "TinkerPatchRequestCallback: onPatchRollback, tinker is not loaded, just return", new java.lang.Object[0]);
            return;
        }
        if (z) {
            com.tencent.tinker.lib.util.TinkerLog.i(TAG, "delete patch now", new java.lang.Object[0]);
            com.tencent.bugly.beta.tinker.TinkerUtils.rollbackPatch(getApplication());
        } else {
            com.tencent.tinker.lib.util.TinkerLog.i(TAG, "tinker wait screen to restart process", new java.lang.Object[0]);
            new com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState(getApplication(), new com.tencent.bugly.beta.tinker.TinkerManager.a(this));
        }
        new android.os.Handler(android.os.Looper.getMainLooper()).post(new com.tencent.bugly.beta.tinker.TinkerManager.b());
    }

    public void setTinkerListener(com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener tinkerListener) {
        this.tinkerListener = tinkerListener;
    }

    public void setTinkerReport(com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter) {
        com.tencent.bugly.beta.tinker.TinkerReport tinkerReport2 = tinkerReport;
        if (tinkerReport2 != null) {
            tinkerReport2.setReporter(reporter);
        }
    }
}
