package com.umeng.commonsdk;

/* loaded from: classes.dex */
public class UMInnerImpl {
    public static boolean isInternal = false;

    public static synchronized void initAndSendInternal(final android.content.Context context) {
        if (context != null) {
            try {
                if (!isInternal) {
                    new java.lang.Thread(new java.lang.Runnable() { // from class: com.umeng.commonsdk.UMInnerImpl.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                java.lang.String currentProcessName = com.umeng.commonsdk.framework.UMFrUtils.getCurrentProcessName(context);
                                java.lang.String packageName = context.getPackageName();
                                if (android.text.TextUtils.isEmpty(currentProcessName) || android.text.TextUtils.isEmpty(packageName) || !currentProcessName.equals(packageName)) {
                                    return;
                                }
                                try {
                                    if (!com.umeng.commonsdk.internal.utils.c.a(context).a()) {
                                        com.umeng.commonsdk.internal.utils.c.a(context).b();
                                    }
                                } catch (java.lang.Throwable th) {
                                    com.umeng.commonsdk.statistics.common.ULog.e(com.umeng.commonsdk.framework.UMModuleRegister.INNER, "e is " + th);
                                }
                                try {
                                    com.umeng.commonsdk.internal.utils.k.b(context);
                                } catch (java.lang.Throwable th2) {
                                    com.umeng.commonsdk.statistics.common.ULog.e(com.umeng.commonsdk.framework.UMModuleRegister.INNER, "e is " + th2);
                                }
                                try {
                                    com.umeng.commonsdk.internal.utils.a.c(context);
                                } catch (java.lang.Throwable th3) {
                                    com.umeng.commonsdk.statistics.common.ULog.e(com.umeng.commonsdk.framework.UMModuleRegister.INNER, "e is " + th3);
                                }
                                try {
                                    if (com.umeng.commonsdk.internal.utils.b.a(context).a()) {
                                        return;
                                    }
                                    com.umeng.commonsdk.internal.utils.b.a(context).b();
                                } catch (java.lang.Throwable unused) {
                                    com.umeng.commonsdk.statistics.common.ULog.e(com.umeng.commonsdk.framework.UMModuleRegister.INNER, "get station is null ");
                                }
                            } catch (java.lang.Throwable th4) {
                                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th4);
                            }
                        }
                    }).start();
                    isInternal = true;
                    sendInternal(context);
                }
            } finally {
            }
        }
    }

    public static synchronized void sendInternal(final android.content.Context context) {
        if (context != null) {
            try {
                new java.lang.Thread(new java.lang.Runnable() { // from class: com.umeng.commonsdk.UMInnerImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            java.lang.String currentProcessName = com.umeng.commonsdk.framework.UMFrUtils.getCurrentProcessName(context);
                            java.lang.String packageName = context.getPackageName();
                            if (!android.text.TextUtils.isEmpty(currentProcessName) && !android.text.TextUtils.isEmpty(packageName) && currentProcessName.equals(packageName)) {
                                try {
                                    com.umeng.commonsdk.internal.d.b(context);
                                } catch (java.lang.Throwable th) {
                                    com.umeng.commonsdk.statistics.common.ULog.e(com.umeng.commonsdk.framework.UMModuleRegister.INNER, "e is " + th);
                                }
                            }
                        } catch (java.lang.Throwable th2) {
                            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th2);
                        }
                    }
                }).start();
                isInternal = true;
            } finally {
            }
        }
    }
}
