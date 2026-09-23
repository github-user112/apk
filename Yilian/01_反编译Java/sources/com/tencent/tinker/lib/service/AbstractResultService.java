package com.tencent.tinker.lib.service;

/* loaded from: classes.dex */
public abstract class AbstractResultService extends android.app.IntentService {
    public static final java.lang.String RESULT_EXTRA = "result_extra";
    public static final java.lang.String TAG = "Tinker.AbstractResultService";

    public AbstractResultService() {
        super("TinkerResultService");
    }

    public static void runResultService(android.content.Context context, com.tencent.tinker.lib.service.PatchResult patchResult, java.lang.String str) {
        if (str == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("resultServiceClass is null.");
        }
        try {
            android.content.Intent intent = new android.content.Intent();
            intent.setClassName(context, str);
            intent.putExtra(RESULT_EXTRA, patchResult);
            context.startService(intent);
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "run result service fail, exception:" + th, new java.lang.Object[0]);
        }
    }

    @Override // android.app.IntentService
    public void onHandleIntent(android.content.Intent intent) {
        if (intent == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "AbstractResultService received a null intent, ignoring.", new java.lang.Object[0]);
        } else {
            onPatchResult((com.tencent.tinker.lib.service.PatchResult) com.tencent.tinker.loader.shareutil.ShareIntentUtil.getSerializableExtra(intent, RESULT_EXTRA));
        }
    }

    public abstract void onPatchResult(com.tencent.tinker.lib.service.PatchResult patchResult);

    @Override // android.app.IntentService, android.app.Service
    public int onStartCommand(android.content.Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        return 2;
    }
}
