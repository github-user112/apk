package com.tencent.bugly.beta.download;

/* loaded from: classes.dex */
public class d {
    public final int a;
    public final java.lang.Object[] b;

    public d(int i, java.lang.Object... objArr) {
        this.a = i;
        this.b = objArr;
    }

    public synchronized void a(int i, int i2) {
        try {
            int i3 = this.a;
            if (i3 != 1) {
                if (i3 == 2) {
                    com.tencent.bugly.beta.download.DownloadTask downloadTask = (com.tencent.bugly.beta.download.DownloadTask) this.b[0];
                    com.tencent.bugly.beta.ui.NetNotifyDialog netNotifyDialog = (com.tencent.bugly.beta.ui.NetNotifyDialog) this.b[2];
                    if (i2 == 1) {
                        downloadTask.download();
                        com.tencent.bugly.proguard.aa.a("continue download", new java.lang.Object[0]);
                        this.b[1] = java.lang.Boolean.FALSE;
                        netNotifyDialog.close();
                    } else if ((i == 1 || ((java.lang.Boolean) this.b[1]).booleanValue()) && !com.tencent.bugly.beta.global.e.b.U && !com.tencent.bugly.beta.global.e.b.V) {
                        downloadTask.stop();
                        com.tencent.bugly.proguard.aa.a("wifi network change to mobile network, stop download", new java.lang.Object[0]);
                        this.b[1] = java.lang.Boolean.TRUE;
                        if (com.tencent.bugly.crashreport.common.info.d.b(com.tencent.bugly.beta.global.e.b.v) != null) {
                            com.tencent.bugly.beta.ui.UiManager.show(netNotifyDialog, true);
                            this.b[1] = java.lang.Boolean.FALSE;
                        }
                    }
                }
            } else if (i2 == 1 || i2 == 3 || i2 == 4) {
                java.util.ArrayList arrayList = (java.util.ArrayList) com.tencent.bugly.proguard.C0256p.a.b();
                if (arrayList != null && !arrayList.isEmpty()) {
                    com.tencent.bugly.beta.upgrade.b.a.a(new com.tencent.bugly.proguard.A(arrayList), true);
                }
            }
        } catch (java.lang.Exception e2) {
            if (!com.tencent.bugly.proguard.aa.a(e2)) {
                e2.printStackTrace();
            }
        }
    }
}
