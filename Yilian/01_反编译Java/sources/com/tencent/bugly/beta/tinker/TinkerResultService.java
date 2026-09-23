package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerResultService extends com.tencent.tinker.lib.service.DefaultTinkerResultService {
    public static final java.lang.String TAG = "Tinker.TinkerResultService";

    public class a implements java.lang.Runnable {
        public final /* synthetic */ com.tencent.tinker.lib.service.PatchResult a;

        public a(com.tencent.bugly.beta.tinker.TinkerResultService tinkerResultService, com.tencent.tinker.lib.service.PatchResult patchResult) {
            this.a = patchResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a.isSuccess) {
                com.tencent.bugly.beta.tinker.TinkerManager.getInstance().onApplySuccess(this.a.toString());
            } else {
                com.tencent.bugly.beta.tinker.TinkerManager.getInstance().onApplyFailure(this.a.toString());
            }
        }
    }

    public class b implements com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b {
        public b() {
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b
        public void a() {
            com.tencent.bugly.beta.tinker.TinkerResultService.this.restartProcess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartProcess() {
        com.tencent.tinker.lib.util.TinkerLog.i(TAG, "app is background now, i can kill quietly", new java.lang.Object[0]);
        android.os.Process.killProcess(android.os.Process.myPid());
    }

    @Override // com.tencent.tinker.lib.service.DefaultTinkerResultService, com.tencent.tinker.lib.service.AbstractResultService
    public void onPatchResult(com.tencent.tinker.lib.service.PatchResult patchResult) {
        com.tencent.bugly.beta.tinker.TinkerManager.TinkerPatchResultListener tinkerPatchResultListener = com.tencent.bugly.beta.tinker.TinkerManager.patchResultListener;
        if (tinkerPatchResultListener != null) {
            tinkerPatchResultListener.onPatchResult(patchResult);
        }
        if (patchResult == null) {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "TinkerResultService received null result!!!!", new java.lang.Object[0]);
            return;
        }
        com.tencent.tinker.lib.util.TinkerLog.i(TAG, "TinkerResultService receive result: %s", patchResult.toString());
        com.tencent.tinker.lib.util.TinkerServiceInternals.killTinkerPatchServiceProcess(getApplicationContext());
        new android.os.Handler(android.os.Looper.getMainLooper()).post(new com.tencent.bugly.beta.tinker.TinkerResultService.a(this, patchResult));
        if (patchResult.isSuccess) {
            deleteRawPatchFile(new java.io.File(patchResult.rawPatchFilePath));
            if (!checkIfNeedKill(patchResult)) {
                com.tencent.tinker.lib.util.TinkerLog.i(TAG, "I have already install the newly patch version!", new java.lang.Object[0]);
                return;
            }
            if (com.tencent.bugly.beta.tinker.TinkerManager.isPatchRestartOnScreenOff()) {
                if (com.tencent.bugly.beta.tinker.TinkerUtils.isBackground()) {
                    com.tencent.tinker.lib.util.TinkerLog.i(TAG, "it is in background, just restart process", new java.lang.Object[0]);
                    restartProcess();
                } else {
                    com.tencent.tinker.lib.util.TinkerLog.i(TAG, "tinker wait screen to restart process", new java.lang.Object[0]);
                    new com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState(getApplicationContext(), new com.tencent.bugly.beta.tinker.TinkerResultService.b());
                }
            }
        }
    }
}
