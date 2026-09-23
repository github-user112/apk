package com.tencent.bugly.beta.global;

/* loaded from: classes.dex */
public class b implements android.view.View.OnClickListener {
    public final int a;
    public final java.lang.Object[] b;

    public b(int i, java.lang.Object... objArr) {
        this.a = i;
        this.b = objArr;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        com.tencent.bugly.beta.ui.BaseDialogFrag baseDialogFrag;
        try {
            switch (this.a) {
                case 1:
                    if (((android.view.ViewGroup) this.b[1]).getChildCount() <= 0) {
                        ((android.app.Activity) this.b[0]).finish();
                        com.tencent.bugly.proguard.aa.c("BetaAct closed by empty view", new java.lang.Object[0]);
                        break;
                    }
                    break;
                case 2:
                    baseDialogFrag = (com.tencent.bugly.beta.ui.BaseDialogFrag) this.b[0];
                    baseDialogFrag.close();
                    break;
                case 3:
                    if (this.b[1] != null) {
                        ((com.tencent.bugly.beta.download.DownloadTask) this.b[1]).download();
                    }
                    baseDialogFrag = (com.tencent.bugly.beta.ui.BaseDialogFrag) this.b[0];
                    baseDialogFrag.close();
                    break;
                case 4:
                    try {
                        com.tencent.bugly.beta.ui.UpgradeDialog upgradeDialog = (com.tencent.bugly.beta.ui.UpgradeDialog) this.b[0];
                        com.tencent.bugly.beta.download.DownloadTask downloadTask = upgradeDialog.strategyTask;
                        com.tencent.bugly.proguard.B b = upgradeDialog.strategyDetail;
                        com.tencent.bugly.beta.download.BetaReceiver.addTask(downloadTask);
                        if (upgradeDialog.upgradeRunnable != null) {
                            upgradeDialog.upgradeRunnable.run();
                        }
                        if (downloadTask.getStatus() == 1 && com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v, downloadTask.getSaveFile(), b.k.b)) {
                            com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("install", java.lang.System.currentTimeMillis(), (byte) 0, 0L, b.j, b.r, b.u, null));
                        } else {
                            downloadTask.download();
                        }
                        if (b.l != 2) {
                            upgradeDialog.close();
                        }
                        upgradeDialog.updateBtn(downloadTask);
                        break;
                    } catch (java.lang.Exception e2) {
                        e = e2;
                        if (com.tencent.bugly.proguard.aa.a(e)) {
                            return;
                        }
                        e.printStackTrace();
                    }
                    break;
                case 5:
                    com.tencent.bugly.beta.ui.UpgradeDialog upgradeDialog2 = (com.tencent.bugly.beta.ui.UpgradeDialog) this.b[0];
                    com.tencent.bugly.beta.download.DownloadTask downloadTask2 = upgradeDialog2.strategyTask;
                    com.tencent.bugly.beta.download.BetaReceiver.netListeners.remove(downloadTask2.getDownloadUrl());
                    downloadTask2.stop();
                    upgradeDialog2.updateBtn(downloadTask2);
                    break;
                case 6:
                    com.tencent.bugly.beta.ui.UpgradeDialog upgradeDialog3 = (com.tencent.bugly.beta.ui.UpgradeDialog) this.b[0];
                    java.lang.Runnable runnable = upgradeDialog3.cancelRunnable;
                    baseDialogFrag = upgradeDialog3;
                    if (runnable != null) {
                        upgradeDialog3.cancelRunnable.run();
                        baseDialogFrag = upgradeDialog3;
                    }
                    baseDialogFrag.close();
                    break;
                case 7:
                    android.os.Process.killProcess(android.os.Process.myPid());
                    java.lang.System.exit(0);
                    break;
                case 8:
                    baseDialogFrag = (com.tencent.bugly.beta.ui.HotfixDialog) this.b[0];
                    baseDialogFrag.close();
                    break;
                case 9:
                    com.tencent.bugly.beta.Beta.installApk(com.tencent.bugly.beta.Beta.getStrategyTask().getSaveFile());
                    com.tencent.bugly.beta.Beta.saveInstallEvent(true);
                    break;
            }
        } catch (java.lang.Exception e3) {
            e = e3;
        }
    }
}
