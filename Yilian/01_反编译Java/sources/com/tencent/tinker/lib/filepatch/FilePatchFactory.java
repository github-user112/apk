package com.tencent.tinker.lib.filepatch;

/* loaded from: classes.dex */
public class FilePatchFactory {
    public static final java.lang.String TAG = "MicroMsg.FilePatchFactory";

    public static com.tencent.tinker.lib.filepatch.AbstractFilePatch getFilePatcher(android.content.Context context, boolean z) {
        if (com.tencent.tinker.lib.tinker.Tinker.with(context).getCustomPatcher() == null || !z) {
            android.util.Log.i(TAG, "BsFilePatch");
            return new com.tencent.tinker.lib.filepatch.BsFilePatch();
        }
        android.util.Log.i(TAG, "CustomPatcher");
        return com.tencent.tinker.lib.tinker.Tinker.with(context).getCustomPatcher();
    }
}
