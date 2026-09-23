package com.tencent.bugly.beta.download;

/* loaded from: classes.dex */
public class a implements com.tencent.bugly.beta.download.DownloadListener {
    public final int a;
    public final java.lang.Object[] b;

    public a(int i, java.lang.Object... objArr) {
        this.a = i;
        this.b = objArr;
    }

    @Override // com.tencent.bugly.beta.download.DownloadListener
    public void onCompleted(com.tencent.bugly.beta.download.DownloadTask downloadTask) {
        com.tencent.bugly.beta.download.DownloadTask downloadTask2;
        com.tencent.bugly.beta.tinker.TinkerManager tinkerManager;
        java.lang.String str;
        try {
            int i = this.a;
            if (i == 1) {
                synchronized (this.b[0]) {
                    java.util.Map map = (java.util.Map) this.b[1];
                    if (map.size() == 0) {
                        return;
                    }
                    java.util.Iterator it = map.values().iterator();
                    int i2 = 0;
                    while (it.hasNext()) {
                        if (((com.tencent.bugly.beta.download.DownloadTask) it.next()).getStatus() == 1) {
                            i2++;
                        }
                    }
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append(i2);
                    sb.append(" has completed");
                    com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
                    if (i2 < map.size()) {
                        return;
                    }
                    for (java.lang.String str2 : map.keySet()) {
                        if (((com.tencent.bugly.beta.download.DownloadTask) map.get(str2)).getSaveFile() != null && ((com.tencent.bugly.beta.download.DownloadTask) map.get(str2)).getSaveFile().exists()) {
                            com.tencent.bugly.beta.global.ResBean.a.a(str2, ((com.tencent.bugly.beta.download.DownloadTask) map.get(str2)).getSaveFile().getAbsolutePath());
                        }
                    }
                    com.tencent.bugly.beta.global.a.a("rb.bch", com.tencent.bugly.beta.global.ResBean.a);
                    com.tencent.bugly.beta.global.f fVar = (com.tencent.bugly.beta.global.f) this.b[0];
                    fVar.a();
                    fVar.b();
                    return;
                }
            }
            if (i == 2) {
                ((com.tencent.bugly.beta.ui.UpgradeDialog) this.b[0]).updateBtn(downloadTask);
                return;
            }
            if (i == 3) {
                com.tencent.bugly.beta.upgrade.d dVar = (com.tencent.bugly.beta.upgrade.d) this.b[0];
                com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = dVar.b;
                if (betaGrayStrategy != null && betaGrayStrategy.a != null) {
                    if (dVar.f922f != null) {
                        com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(18, dVar.f922f, 3, java.lang.Boolean.valueOf(dVar.f923g)));
                    }
                    com.tencent.bugly.proguard.aa.c("apk download completed", new java.lang.Object[0]);
                    com.tencent.bugly.proguard.C0260z c0260z = new com.tencent.bugly.proguard.C0260z("download", java.lang.System.currentTimeMillis(), (byte) 0, downloadTask.getCostTime(), betaGrayStrategy.a.j, betaGrayStrategy.a.r, betaGrayStrategy.a.u, null);
                    if (com.tencent.bugly.proguard.C0256p.a.a(c0260z)) {
                        com.tencent.bugly.beta.upgrade.b.a.a(c0260z, true);
                    }
                    if (!com.tencent.bugly.beta.global.e.b.fa) {
                        return;
                    }
                    java.io.File saveFile = downloadTask.getSaveFile();
                    java.lang.Integer num = (java.lang.Integer) this.b[1];
                    if (com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v, saveFile, betaGrayStrategy.a.k.b)) {
                        this.b[1] = 0;
                        com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("install", java.lang.System.currentTimeMillis(), (byte) 0, 0L, betaGrayStrategy.a.j, betaGrayStrategy.a.r, betaGrayStrategy.a.u, null));
                        return;
                    }
                    if (num.intValue() >= 2) {
                        this.b[1] = 0;
                        onFailed(downloadTask, 2080, "file md5 verify fail");
                        downloadTask.delete(true);
                        return;
                    } else {
                        if (android.os.Build.VERSION.SDK_INT >= 24) {
                            this.b[1] = 0;
                            onFailed(downloadTask, 2080, "安装失败，请检查您的App是否兼容7.0设备");
                            downloadTask.delete(true);
                            return;
                        }
                        this.b[1] = java.lang.Integer.valueOf(num.intValue() + 1);
                        downloadTask.delete(true);
                        com.tencent.bugly.beta.download.DownloadTask downloadTaskA = com.tencent.bugly.beta.global.e.b.s.a(betaGrayStrategy.a.k.f1165c, com.tencent.bugly.beta.global.e.b.w.getAbsolutePath(), null, betaGrayStrategy.a.k.f1165c);
                        dVar.f919c = downloadTaskA;
                        downloadTaskA.setDownloadType(1);
                        com.tencent.bugly.beta.ui.UpgradeDialog.instance.setUpgradeInfo(betaGrayStrategy.a, dVar.f919c);
                        dVar.f919c.addListener(this);
                        com.tencent.bugly.beta.download.BetaReceiver.addTask(dVar.f919c);
                        downloadTask2 = dVar.f919c;
                    }
                }
                return;
            }
            if (i != 4) {
                return;
            }
            com.tencent.bugly.proguard.r rVar = (com.tencent.bugly.proguard.r) this.b[0];
            java.lang.Integer num2 = (java.lang.Integer) this.b[1];
            com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy2 = rVar.b;
            if (betaGrayStrategy2 == null || betaGrayStrategy2.a == null) {
                return;
            }
            com.tencent.bugly.proguard.aa.c("patch download success !!!", new java.lang.Object[0]);
            java.io.File saveFile2 = downloadTask.getSaveFile();
            if (com.tencent.bugly.beta.global.a.a(saveFile2, betaGrayStrategy2.a.k.b, "SHA")) {
                this.b[1] = 0;
                if (com.tencent.bugly.beta.global.a.a(saveFile2, com.tencent.bugly.beta.global.e.b.J)) {
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    sb2.append("copy ");
                    sb2.append(saveFile2.getAbsolutePath());
                    sb2.append(" to ");
                    sb2.append(com.tencent.bugly.beta.global.e.b.J.getAbsolutePath());
                    sb2.append(" success!");
                    com.tencent.bugly.proguard.aa.a(sb2.toString(), new java.lang.Object[0]);
                    if (rVar.f1139c != null) {
                        com.tencent.bugly.proguard.aa.a("delete temp file", new java.lang.Object[0]);
                        rVar.f1139c.delete(true);
                    }
                    com.tencent.bugly.beta.global.a.b("UPLOAD_PATCH_RESULT", false);
                    com.tencent.bugly.beta.tinker.TinkerManager.getInstance().onDownloadSuccess(com.tencent.bugly.beta.global.e.b.J.getAbsolutePath(), com.tencent.bugly.beta.global.e.b.X);
                    return;
                }
                com.tencent.bugly.proguard.aa.c("copy file failed", new java.lang.Object[0]);
                tinkerManager = com.tencent.bugly.beta.tinker.TinkerManager.getInstance();
                str = "copy file failure.";
            } else if (num2.intValue() < 2) {
                this.b[1] = java.lang.Integer.valueOf(num2.intValue() + 1);
                downloadTask.delete(true);
                com.tencent.bugly.beta.download.DownloadTask downloadTaskA2 = com.tencent.bugly.beta.global.e.b.s.a(betaGrayStrategy2.a.k.f1165c, com.tencent.bugly.beta.global.e.b.w.getAbsolutePath(), null, betaGrayStrategy2.a.k.f1165c);
                rVar.f1139c = downloadTaskA2;
                downloadTaskA2.setDownloadType(3);
                rVar.f1139c.setNeededNotify(false);
                rVar.f1139c.addListener(this);
                com.tencent.bugly.beta.download.BetaReceiver.addTask(rVar.f1139c);
                downloadTask2 = rVar.f1139c;
            } else {
                this.b[1] = 0;
                onFailed(downloadTask, 2080, "file sha1 verify fail");
                downloadTask.delete(true);
                tinkerManager = com.tencent.bugly.beta.tinker.TinkerManager.getInstance();
                str = "retry download patch too many times.";
            }
            tinkerManager.onDownloadFailure(str);
            return;
            downloadTask2.download();
        } catch (java.lang.Exception e2) {
            if (com.tencent.bugly.proguard.aa.a(e2)) {
                return;
            }
            e2.printStackTrace();
        }
    }

    @Override // com.tencent.bugly.beta.download.DownloadListener
    public void onFailed(com.tencent.bugly.beta.download.DownloadTask downloadTask, int i, java.lang.String str) {
        try {
            int i2 = this.a;
            if (i2 == 1) {
                synchronized (this.b[0]) {
                    com.tencent.bugly.beta.global.f fVar = (com.tencent.bugly.beta.global.f) this.b[0];
                    fVar.a();
                    fVar.b();
                }
                return;
            }
            if (i2 == 2) {
                ((com.tencent.bugly.beta.ui.UpgradeDialog) this.b[0]).updateBtn(downloadTask);
                return;
            }
            if (i2 == 3) {
                com.tencent.bugly.beta.upgrade.d dVar = (com.tencent.bugly.beta.upgrade.d) this.b[0];
                if (downloadTask != null) {
                    com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("download", java.lang.System.currentTimeMillis(), (byte) 1, downloadTask.getCostTime(), dVar.b.a.j, dVar.b.a.r, dVar.b.a.u, null));
                }
                com.tencent.bugly.proguard.aa.b("upgrade failed：(%d)%s", java.lang.Integer.valueOf(i), str);
                android.util.Log.e(com.tencent.bugly.proguard.aa.b, "download fail, please try later");
                return;
            }
            if (i2 != 4) {
                return;
            }
            com.tencent.bugly.proguard.r rVar = (com.tencent.bugly.proguard.r) this.b[0];
            if (downloadTask != null) {
                com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("download", java.lang.System.currentTimeMillis(), (byte) 1, downloadTask.getCostTime(), rVar.b.a.j, rVar.b.a.r, rVar.b.a.u, null));
            }
            com.tencent.bugly.proguard.aa.b("hotfix download failed：(%d)%s", java.lang.Integer.valueOf(i), str);
            com.tencent.bugly.beta.tinker.TinkerManager.getInstance().onDownloadFailure(str);
        } catch (java.lang.Exception e2) {
            if (com.tencent.bugly.proguard.aa.a(e2)) {
                return;
            }
            e2.printStackTrace();
        }
    }

    @Override // com.tencent.bugly.beta.download.DownloadListener
    public void onReceive(com.tencent.bugly.beta.download.DownloadTask downloadTask) {
        if (this.a != 2) {
            return;
        }
        ((com.tencent.bugly.beta.ui.UpgradeDialog) this.b[0]).updateBtn(downloadTask);
    }
}
