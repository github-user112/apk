package com.umeng.commonsdk;

/* loaded from: classes.dex */
public class UMConfigureInternation {
    public static boolean isInternal = false;

    public static void doSelfCheck(android.content.Context context) {
        try {
            java.lang.String currentProcessName = com.umeng.commonsdk.framework.UMFrUtils.getCurrentProcessName(context);
            java.lang.String packageName = context.getPackageName();
            if (android.text.TextUtils.isEmpty(currentProcessName) || android.text.TextUtils.isEmpty(packageName) || !currentProcessName.equals(packageName)) {
                return;
            }
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.z, com.umeng.commonsdk.internal.b.a(context).a(), null);
        } catch (java.lang.Throwable unused) {
        }
    }

    public static synchronized void sendInternal(final android.content.Context context) {
        if (context != null) {
            try {
                if (!isInternal) {
                    new java.lang.Thread(new java.lang.Runnable() { // from class: com.umeng.commonsdk.UMConfigureInternation.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                java.lang.String currentProcessName = com.umeng.commonsdk.framework.UMFrUtils.getCurrentProcessName(context);
                                java.lang.String packageName = context.getPackageName();
                                if (android.text.TextUtils.isEmpty(currentProcessName) || android.text.TextUtils.isEmpty(packageName) || !currentProcessName.equals(packageName) || !com.umeng.commonsdk.framework.UMEnvelopeBuild.isReadyBuild(context, com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                                    return;
                                }
                                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.n, com.umeng.commonsdk.internal.b.a(context).a(), null);
                            } catch (java.lang.Throwable unused) {
                            }
                        }
                    }).start();
                    isInternal = true;
                }
            } finally {
            }
        }
    }
}
