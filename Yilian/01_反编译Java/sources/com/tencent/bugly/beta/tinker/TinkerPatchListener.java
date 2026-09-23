package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerPatchListener extends com.tencent.tinker.lib.listener.DefaultPatchListener {
    public static final long NEW_PATCH_RESTRICTION_SPACE_SIZE_MIN = 62914560;
    public static final java.lang.String TAG = "Tinker.TinkerPatchListener";
    public final int maxMemory;
    public final com.tencent.tinker.lib.listener.PatchListener userPatchListener;

    public TinkerPatchListener(android.content.Context context) {
        super(context);
        this.maxMemory = ((android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME)).getMemoryClass();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("application maxMemory:");
        sbO.append(this.maxMemory);
        com.tencent.tinker.lib.util.TinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
        this.userPatchListener = com.tencent.bugly.beta.tinker.TinkerManager.userPatchListener;
    }

    @Override // com.tencent.tinker.lib.listener.DefaultPatchListener
    public int patchCheck(java.lang.String str, java.lang.String str2) throws java.lang.Throwable {
        com.tencent.tinker.lib.listener.PatchListener patchListener = this.userPatchListener;
        if (patchListener != null) {
            patchListener.onPatchReceived(str);
            return super.patchCheck(str, str2);
        }
        java.io.File file = new java.io.File(str);
        com.tencent.tinker.lib.util.TinkerLog.i(TAG, "receive a patch file: %s, file size:%d", str, java.lang.Long.valueOf(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getFileOrDirectorySize(file)));
        int iPatchCheck = super.patchCheck(str, str2);
        if (iPatchCheck == 0) {
            iPatchCheck = com.tencent.bugly.beta.tinker.TinkerUtils.checkForPatchRecover(NEW_PATCH_RESTRICTION_SPACE_SIZE_MIN, this.maxMemory);
        }
        if (iPatchCheck == 0 && this.context.getSharedPreferences(com.tencent.tinker.loader.shareutil.ShareConstants.TINKER_SHARE_PREFERENCE_CONFIG, 0).getInt(str2, 0) >= 3) {
            iPatchCheck = -23;
        }
        if (iPatchCheck == 0) {
            java.util.Properties propertiesFastGetPatchPackageMeta = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.fastGetPatchPackageMeta(file);
            if (propertiesFastGetPatchPackageMeta == null) {
                iPatchCheck = -24;
            } else {
                com.tencent.tinker.lib.util.TinkerLog.i(TAG, e.a.c.a.a.e("get platform:", propertiesFastGetPatchPackageMeta.getProperty(com.tencent.bugly.beta.tinker.TinkerUtils.PLATFORM)), new java.lang.Object[0]);
            }
        }
        com.tencent.bugly.beta.tinker.TinkerReport.onTryApply(iPatchCheck == 0);
        return iPatchCheck;
    }
}
