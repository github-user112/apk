package com.tencent.tinker.lib.tinker;

/* loaded from: classes.dex */
public class TinkerInstaller {
    public static final java.lang.String TAG = "Tinker.TinkerInstaller";

    public static void cleanPatch(android.content.Context context) {
        com.tencent.tinker.lib.tinker.Tinker.with(context).cleanPatch();
    }

    public static com.tencent.tinker.lib.tinker.Tinker install(com.tencent.tinker.entry.ApplicationLike applicationLike) throws java.lang.ClassNotFoundException {
        com.tencent.tinker.lib.tinker.Tinker tinkerBuild = new com.tencent.tinker.lib.tinker.Tinker.Builder(applicationLike.getApplication()).build();
        com.tencent.tinker.lib.tinker.Tinker.create(tinkerBuild);
        tinkerBuild.install(applicationLike.getTinkerResultIntent());
        return tinkerBuild;
    }

    public static com.tencent.tinker.lib.tinker.Tinker install(com.tencent.tinker.entry.ApplicationLike applicationLike, com.tencent.tinker.lib.reporter.LoadReporter loadReporter, com.tencent.tinker.lib.reporter.PatchReporter patchReporter, com.tencent.tinker.lib.listener.PatchListener patchListener, java.lang.Class<? extends com.tencent.tinker.lib.service.AbstractResultService> cls, com.tencent.tinker.lib.patch.AbstractPatch abstractPatch) throws java.lang.ClassNotFoundException {
        com.tencent.tinker.lib.tinker.Tinker tinkerBuild = new com.tencent.tinker.lib.tinker.Tinker.Builder(applicationLike.getApplication()).tinkerFlags(applicationLike.getTinkerFlags()).loadReport(loadReporter).listener(patchListener).patchReporter(patchReporter).tinkerLoadVerifyFlag(java.lang.Boolean.valueOf(applicationLike.getTinkerLoadVerifyFlag())).build();
        com.tencent.tinker.lib.tinker.Tinker.create(tinkerBuild);
        tinkerBuild.install(applicationLike.getTinkerResultIntent(), cls, abstractPatch);
        return tinkerBuild;
    }

    public static com.tencent.tinker.lib.tinker.Tinker install(com.tencent.tinker.entry.ApplicationLike applicationLike, com.tencent.tinker.lib.reporter.LoadReporter loadReporter, com.tencent.tinker.lib.reporter.PatchReporter patchReporter, com.tencent.tinker.lib.listener.PatchListener patchListener, java.lang.Class<? extends com.tencent.tinker.lib.service.AbstractResultService> cls, com.tencent.tinker.lib.patch.AbstractPatch abstractPatch, com.tencent.tinker.lib.filepatch.AbstractFilePatch abstractFilePatch) throws java.lang.ClassNotFoundException {
        com.tencent.tinker.lib.tinker.Tinker tinkerBuild = new com.tencent.tinker.lib.tinker.Tinker.Builder(applicationLike.getApplication()).tinkerFlags(applicationLike.getTinkerFlags()).loadReport(loadReporter).listener(patchListener).patchReporter(patchReporter).customPatcher(abstractFilePatch).tinkerLoadVerifyFlag(java.lang.Boolean.valueOf(applicationLike.getTinkerLoadVerifyFlag())).build();
        com.tencent.tinker.lib.tinker.Tinker.create(tinkerBuild);
        tinkerBuild.install(applicationLike.getTinkerResultIntent(), cls, abstractPatch);
        return tinkerBuild;
    }

    public static void onReceiveUpgradePatch(android.content.Context context, java.lang.String str) {
        com.tencent.tinker.lib.tinker.Tinker.with(context).getPatchListener().onPatchReceived(str);
    }

    public static void setLogIml(com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.setTinkerLogImp(tinkerLogImp);
    }
}
